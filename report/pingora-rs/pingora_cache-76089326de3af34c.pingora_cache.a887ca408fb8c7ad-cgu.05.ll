Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.05?download=true
inline.NumInlined: 305
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bstr-1.13.1/src/utf8.rs\00", align 1
@1 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@2 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-1.9.3/src/map/core.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"c\00\00\00\00\00\00\00\22\00\00\00\0F\00\00\00" }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@4 = private unnamed_addr constant [37 x i8] c"WaitTimeout is not stored in LockCore", align 1
@5 = private unnamed_addr constant [26 x i8] c"pingora-cache/src/lock.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00\F1\00\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\19\00\00\00\00\00\00\00\E3\00\00\00\13\00\00\00" }>, align 8
@8 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lru-0.16.4/src/lib.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"Z\00\00\00\00\00\00\00\8D\06\00\006\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"Z\00\00\00\00\00\00\00\94\01\00\006\00\00\00" }>, align 8
@11 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@12 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08", align 1
@13 = private unnamed_addr constant [108 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\18$<`T\00\00\000H\00\0C\00\00\00\00\00\0C\00\0C\00\00\00\18\00\00\00\00\00\18\00\18\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\18\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00$\00$\00\00\00$\00\00\00\00\00$\00$\00\00\00$\00\00\00\00\00\00\00\00\00\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\\\00\00\00\00\00\00\00O\03\00\00\0E\00\00\00" }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNtNtCs2CMyvXgshDu_8foldhash4seed6global19GLOBAL_SEED_STORAGE = external local_unnamed_addr global { { { [6 x i64] } }, { { { i8 } } }, [7 x i8] }
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\\\00\00\00\00\00\00\00\E2\00\00\00\1B\00\00\00" }>, align 8
@16 = private unnamed_addr constant [1 x i8] c"\22", align 1
@17 = private unnamed_addr constant [2 x i8] c"\\0", align 1
@18 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@19 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bstr-1.13.1/src/impls.rs\00", align 1
@20 = private unnamed_addr constant [11 x i8] c"\02\\x\C3 \00\00i\02\00\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"]\00\00\00\00\00\00\00\14\02\00\00)\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs5_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB6_8RawTablejE14reserve_rehashNCINvNtNtCs3n24CldWWBu_8indexmap3map4core8get_hashNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCset5b41vfmiv_13pingora_cache13cache_control14DirectiveValueEE0EB3l_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !38, !noundef !4 ; 5 uses
  %i.e = add i64 %i.d, %1                         ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !38, !noundef !4 ; 4 uses
  %i.i = icmp ult i64 %i.h, 8
  %i.j = add i64 %i.h, 1                          ; 6 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %.sroa.03.0.i = select i1 %i.i, i64 %i.h, i64 %i.l ; 2 uses
  %i.m = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.e, %i.m
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_RNvMNtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !38 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE20reserve_rehash_innerCset5b41vfmiv_13pingora_cache.exit

bb.d:                                             ; preds = %bb.b
  %i.q = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.q, i64 range(i64 1, 0) %i.e) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40
  %i.r = icmp ult i64 %..i, 8
  br i1 %i.r, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.s, label %bb.k, label %bb.f, !prof !5

.thread:                                          ; preds = %bb.d
  %i.t = and i64 %..i, 4
  %..i.i.i = add nuw nsw i64 %i.t, 4
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %..i, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x                        ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = icmp ugt i64 %i.y, 2305843009213693949
  br i1 %i.aa, label %bb.i, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.4.0.i.ph33.i.i83 = phi i64 [ %..i.i.i, %.thread ], [ %i.z, %bb.f ] ; 5 uses
  %i.ab = shl nuw i64 %.sroa.4.0.i.ph33.i.i83, 3
  %i.ac = add nuw i64 %i.ab, 8
  %i.ad = and i64 %i.ac, -16                      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph33.i.i83, 16 ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !41
  %i.ah = tail call noalias noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !41 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_RNvMNtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !41
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %4, i64 noundef 16, i64 noundef %i.af), !noalias !41
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit.thread

bb.k:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_RNvMNtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %4), !noalias !42
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit.thread

_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit.thread: ; preds = %bb.i, %bb.j, %bb.k
  %.pn.i = phi { i64, i64 } [ %i.al, %bb.k ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.sroa.8.06.i = extractvalue { i64, i64 } %.pn.i, 0
  %.sroa.14.07.i = extractvalue { i64, i64 } %.pn.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE20reserve_rehash_innerCset5b41vfmiv_13pingora_cache.exit

_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.am, i8 -1, i64 %i.ae, i1 false), !noalias !42
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph33.i.i83, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph33.i.i83, -1 ; 2 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph33.i.i83, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.03.0.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = sub i64 %.sroa.03.0.i.i.i, %i.d
  store ptr %i.am, ptr %i.b, align 8, !noalias !40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 %i.ao, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !noalias !40
  %.sroa.69.i.i.sroa.4.0..sroa.69.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 8, ptr %.sroa.69.i.i.sroa.4.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !40
  %.sroa.69.i.i.sroa.5.0..sroa.69.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 16, ptr %.sroa.69.i.i.sroa.5.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !40
  %i.as = load i64, ptr %i.g, align 8, !alias.scope !40, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.as, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit
  %.pre67 = load ptr, ptr %0, align 8, !alias.scope !40
  br label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE14prepare_resizeCset5b41vfmiv_13pingora_cache.exit
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECset5b41vfmiv_13pingora_cache(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit: ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.val3.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !45, !noundef !4 ; 3 uses
  %i.au = icmp eq i64 %.val3.i.i, 0
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache.exit, label %_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !45, !nonnull !4, !noundef !4
  %.val1.i.i = load i64, ptr %.sroa.69.i.i.sroa.5.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !45 ; 4 uses
  %.val.i.i = load i64, ptr %.sroa.69.i.i.sroa.4.0..sroa.69.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !45
  %i.av = add i64 %.val3.i.i, 1
  %i.aw = mul nuw i64 %.val.i.i, %i.av            ; 2 uses
  %i.ax = add i64 %.val1.i.i, -1
  %i.ay = add i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = icmp uge i64 %i.ay, %i.aw
  call void @llvm.assume(i1 %i.az)
  %i.ba = sub i64 0, %.val1.i.i
  %i.bb = and i64 %i.ay, %i.ba                    ; 3 uses
  %i.bc = add i64 %.val3.i.i, 17
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = icmp uge i64 %i.bd, %i.bb
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = sub nsw i64 0, %i.bb
  %i.bh = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #25, !noalias !45
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCsfjHlcakrArn_9hashbrown3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalEECset5b41vfmiv_13pingora_cache.exit, %_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE20reserve_rehash_innerCset5b41vfmiv_13pingora_cache.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.val1 = phi ptr [ %.val168, %.backedge ], [ %i.am, %.lr.ph.preheader ] ; 7 uses
  %i.bi = phi ptr [ %i.bn, %.backedge ], [ %.pre67, %.lr.ph.preheader ] ; 3 uses
  %.sroa.016.0.i.i49 = phi i64 [ %i.bj, %.backedge ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.neg.i.i = xor i64 %.sroa.016.0.i.i49, -1
  %i.bj = add nuw i64 %.sroa.016.0.i.i49, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.016.0.i.i49
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !4
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.m, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.r
  %.val168 = phi ptr [ %.val1, %.lr.ph ], [ %i.da, %bb.r ]
  %i.bn = phi ptr [ %i.bi, %.lr.ph ], [ %.pre66, %bb.r ]
  %exitcond.not = icmp eq i64 %.sroa.016.0.i.i49, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.bo = sub nsw i64 0, %.sroa.016.0.i.i49
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %.val3.i = load i64, ptr %i.bq, align 8, !noalias !46, !noundef !4 ; 3 uses
  %i.br = icmp ult i64 %.val3.i, %3
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #28
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.val3.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !46, !noundef !4 ; 2 uses
  %.val2 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noundef !4 ; 4 uses
  %.sroa.02.06.i.i = and i64 %.val2, %i.bv        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1, i64 %.sroa.02.06.i.i
  %.sroa.0.0.copyload.i47.i.i = load <16 x i8>, ptr %i.bw, align 1, !noalias !47
  %i.bx = icmp slt <16 x i8> %.sroa.0.0.copyload.i47.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.02.09.i.i = phi i64 [ %.sroa.02.0.i.i, %.lr.ph.i.i ], [ %.sroa.02.06.i.i, %bb.p ]
  %.sroa.9.08.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ 0, %bb.p ]
  %i.ca = add i64 %.sroa.9.08.i.i, 16             ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.02.09.i.i
  %.sroa.02.0.i.i = and i64 %i.cb, %.val2         ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1, i64 %.sroa.02.0.i.i
  %.sroa.0.0.copyload.i4.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !47
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i4.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.p
  %.sroa.02.0.lcssa.i.i = phi i64 [ %.sroa.02.06.i.i, %bb.p ], [ %.sroa.02.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.by, %bb.p ], [ %i.ce, %.lr.ph.i.i ]
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = add i64 %.sroa.02.0.lcssa.i.i, %i.ch
  %i.cj = and i64 %i.ci, %.val2                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !4
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.q, label %bb.r, !prof !5

bb.q:                                             ; preds = %._crit_edge.i.i
  %.val95.i.i = load <16 x i8>, ptr %.val1, align 16
  %i.cn = icmp slt <16 x i8> %.val95.i.i, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.co, i1 false)
  %i.cq = zext nneg i16 %i.cp to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %.sroa.0.0.i.i4 = phi i64 [ %i.cq, %bb.q ], [ %i.cj, %._crit_edge.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1, i64 %.sroa.0.0.i.i4
  %i.cs = lshr i64 %i.bv, 57
  %i.ct = trunc nuw nsw i64 %i.cs to i8           ; 2 uses
  %i.cu = add i64 %.sroa.0.0.i.i4, -16
  %i.cv = and i64 %i.cu, %.val2
  store i8 %i.ct, ptr %i.cr, align 1
  %i.cw = getelementptr i8, ptr %.val1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store i8 %i.ct, ptr %i.cx, align 1
  %i.cy = load ptr, ptr %0, align 8, !alias.scope !40, !nonnull !4, !noundef !4
  %.neg21.i.i = shl i64 %.neg.i.i, 3
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %.neg21.i.i
  %i.da = load ptr, ptr %i.b, align 8, !noalias !40, !nonnull !4, !noundef !4 ; 2 uses
  %i.db = shl i64 %.sroa.0.0.i.i4, 3
  %i.dc = sub nuw nsw i64 -8, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.dc
  %i.de = load i64, ptr %i.cz, align 1
  store i64 %i.de, ptr %i.dd, align 1
  %.pre66 = load ptr, ptr %0, align 8, !alias.scope !40
  br label %.backedge

common.resume:                                    ; preds = %bb.x, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %lpad.phi.i, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %.val12.i = load ptr, ptr %0, align 8, !alias.scope !48, !nonnull !4, !noundef !4 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.j, 0
  br i1 %.not6.i.i, label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE15rehash_in_placeCset5b41vfmiv_13pingora_cache.exit.thread, label %.lr.ph.i.i5

_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE15rehash_in_placeCset5b41vfmiv_13pingora_cache.exit.thread: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48
  br label %bb.ag

.lr.ph.i.i5:                                      ; preds = %bb.s
  %i.df = lshr i64 %i.j, 4
  %i.dg = and i64 %i.j, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dg, 0
  %i.dh = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.df, %i.dh ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.di = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.di, label %.epil.preheader, label %.lr.ph.i.i5.new

.lr.ph.i.i5.new:                                  ; preds = %.lr.ph.i.i5
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.t

._crit_edge.i.i6.unr-lcssa:                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i6, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i6.unr-lcssa, %.lr.ph.i.i5
  %.sroa.01.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i5 ], [ %i.ds, %._crit_edge.i.i6.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dj, align 16, !noalias !48
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dk = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !noalias !48
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %._crit_edge.i.i6.unr-lcssa, %.epil.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i7 = tail call i64 @llvm.umax.i64(i64 %i.j, i64 16)
  %.65.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %i.do = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %..i7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %.val12.i, i64 %.65.i, i1 false), !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48
  store ptr null, ptr %i.dm, align 8, !noalias !48
  store i64 8, ptr %i.dn, align 8, !noalias !48
  store ptr %0, ptr %i.a, align 8, !noalias !48
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i5.new
  %.sroa.01.08.i.i = phi i64 [ 0, %.lr.ph.i.i5.new ], [ %i.ds, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i5.new ], [ %niter.next.1, %bb.t ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dp, align 16, !noalias !48
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dq = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dr = or <2 x i64> %i.dq, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dr, ptr %i.dp, align 16, !noalias !48
  %i.ds = add i64 %.sroa.01.08.i.i, 32            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.du, align 16, !noalias !48
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !noalias !48
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i6.unr-lcssa, label %bb.t

bb.u:                                             ; preds = %bb.ae, %._crit_edge.i.i6
  %.sroa.04.019.i = phi i64 [ 0, %._crit_edge.i.i6 ], [ %i.dx, %bb.ae ] ; 10 uses
  %i.dx = add nuw i64 %.sroa.04.019.i, 1
  %i.dy = load ptr, ptr %0, align 8, !alias.scope !48, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.04.019.i
  %i.ea = load i8, ptr %i.dz, align 1, !noundef !4
  %i.eb = icmp eq i8 %i.ea, -128
  br i1 %i.eb, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %.neg.i = xor i64 %.sroa.04.019.i, -1
  %.neg10.i = shl i64 %.neg.i, 3
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %.neg10.i ; 2 uses
  %i.ed = sub nsw i64 0, %.sroa.04.019.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.ac, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.ee = load ptr, ptr %0, align 8, !alias.scope !50, !noalias !51, !nonnull !4, !noundef !4 ; 8 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %.val3.i.i10 = load i64, ptr %i.eg, align 8, !noalias !52, !noundef !4 ; 3 uses
  %i.eh = icmp ult i64 %.val3.i.i10, %3
  br i1 %i.eh, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i.i10, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.w
  unreachable

.loopexit.i:                                      ; preds = %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardQINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1w_5alloc5inner6GlobalENCNvMs9_B1w_B1t_15rehash_in_place0EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %common.resume unwind label %bb.af

bb.y:                                             ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.val3.i.i10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !52, !noundef !4 ; 3 uses
  %.val11.i = load i64, ptr %i.g, align 8, !alias.scope !48, !noundef !4 ; 6 uses
  %.sroa.02.06.i.i12 = and i64 %.val11.i, %i.ek   ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.02.06.i.i12
  %.sroa.0.0.copyload.i47.i.i13 = load <16 x i8>, ptr %i.el, align 1, !noalias !53
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i47.i.i13, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %i.eo = icmp eq i16 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i15.i, label %._crit_edge.i14.i

.lr.ph.i15.i:                                     ; preds = %bb.y, %.lr.ph.i15.i
  %.sroa.02.09.i.i18 = phi i64 [ %.sroa.02.0.i.i20, %.lr.ph.i15.i ], [ %.sroa.02.06.i.i12, %bb.y ]
  %.sroa.9.08.i.i19 = phi i64 [ %i.ep, %.lr.ph.i15.i ], [ 0, %bb.y ]
  %i.ep = add i64 %.sroa.9.08.i.i19, 16           ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.02.09.i.i18
  %.sroa.02.0.i.i20 = and i64 %i.eq, %.val11.i    ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.02.0.i.i20
  %.sroa.0.0.copyload.i4.i.i21 = load <16 x i8>, ptr %i.er, align 1, !noalias !53
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i4.i.i21, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i15.i, label %._crit_edge.i14.i

._crit_edge.i14.i:                                ; preds = %.lr.ph.i15.i, %bb.y
  %.sroa.02.0.lcssa.i.i14 = phi i64 [ %.sroa.02.06.i.i12, %bb.y ], [ %.sroa.02.0.i.i20, %.lr.ph.i15.i ]
  %.lcssa.i.i15 = phi i16 [ %i.en, %bb.y ], [ %i.et, %.lr.ph.i15.i ]
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i15, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  %i.ex = add i64 %.sroa.02.0.lcssa.i.i14, %i.ew
  %i.ey = and i64 %i.ex, %.val11.i                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noundef !4
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.z, label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i, !prof !5

bb.z:                                             ; preds = %._crit_edge.i14.i
  %.val95.i.i17 = load <16 x i8>, ptr %i.ee, align 16
  %i.fc = icmp slt <16 x i8> %.val95.i.i17, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16
  %i.fe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fd, i1 false)
  %i.ff = zext nneg i16 %i.fe to i64
  br label %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i

_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.z, %._crit_edge.i14.i
  %.sroa.0.0.i.i16 = phi i64 [ %i.ff, %bb.z ], [ %i.ey, %._crit_edge.i14.i ] ; 4 uses
  %i.fg = shl i64 %.sroa.0.0.i.i16, 3
  %i.fh = sub nuw nsw i64 -8, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.ee, i64 %i.fh ; 2 uses
  %i.fj = sub i64 %.sroa.04.019.i, %.sroa.02.06.i.i12
  %i.fk = sub i64 %.sroa.0.0.i.i16, %.sroa.02.06.i.i12
  %i.fl = xor i64 %i.fk, %i.fj
  %.unshifted.i = and i64 %i.fl, %.val11.i
  %i.fm = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fm, label %bb.ad, label %bb.aa, !prof !7

bb.aa:                                            ; preds = %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.0.0.i.i16 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !noundef !4
  %i.fp = lshr i64 %i.ek, 57
  %i.fq = trunc nuw nsw i64 %i.fp to i8           ; 2 uses
  %i.fr = add i64 %.sroa.0.0.i.i16, -16
  %i.fs = and i64 %i.fr, %.val11.i
  store i8 %i.fq, ptr %i.fn, align 1
  %i.ft = load ptr, ptr %0, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 %i.fq, ptr %i.fv, align 1
  %i.fw = icmp eq i8 %i.fo, -1
  br i1 %i.fw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fx = add i64 %.sroa.04.019.i, -16
  %i.fy = load i64, ptr %i.g, align 8, !alias.scope !48, !noundef !4
  %i.fz = and i64 %i.fy, %i.fx
  %i.ga = load ptr, ptr %0, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.sroa.04.019.i
  store i8 -1, ptr %i.gb, align 1
  %i.gc = load ptr, ptr %0, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.fz
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  store i8 -1, ptr %i.ge, align 1
  %i.gf = load i64, ptr %i.ec, align 1
  store i64 %i.gf, ptr %i.fi, align 1
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECset5b41vfmiv_13pingora_cache(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.fi, i64 noundef 1)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %.loopexit.i

bb.ad:                                            ; preds = %_RNvMs9_NtNtCsfjHlcakrArn_9hashbrown3raw5innerINtB5_13RawTableInnerNtNtNtB5_5alloc5inner6GlobalE16find_insert_slotCset5b41vfmiv_13pingora_cache.exit.i
  %i.gg = lshr i64 %i.ek, 57
  %i.gh = trunc nuw nsw i64 %i.gg to i8           ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs9_CskD7i0qFYELX_3lruINtB6_8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeE4peekyEBK_:bb.a

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE3getINtBR_10KeyWrapperyEEB2p_.exit.thread, !prof !5

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = add i16 %.sroa.05.0.i31.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aj = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i.i.i, %i.aj
  br label %bb.c

_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE3getINtBR_10KeyWrapperyEEB2p_.exit: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  br label %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE3getINtBR_10KeyWrapperyEEB2p_.exit.thread

_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE3getINtBR_10KeyWrapperyEEB2p_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE3getINtBR_10KeyWrapperyEEB2p_.exit
  %.sroa.0.0 = phi ptr [ %i.am, %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE3getINtBR_10KeyWrapperyEEB2p_.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs9_CskD7i0qFYELX_3lruINtB6_8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeE6demoteyEBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !212, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !213, !noalias !214, !noundef !4
  %i.e = xor i64 %.val.i, %.val
  %i.f = load i64, ptr @_RNvNtNtCs2CMyvXgshDu_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !215, !noundef !4
  %i.g = zext i64 %i.e to i128
  %i.h = zext i64 %i.f to i128
  %i.i = mul nuw i128 %i.h, %i.g                  ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = xor i128 %i.j, %i.i
  %i.l = trunc i128 %i.k to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.m = lshr i64 %i.l, 57
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !218, !noalias !219, !noundef !4 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !alias.scope !218, !noalias !219, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.aj, %bb.e ]
  %.pn.i.i = phi i64 [ %i.l, %bb.b ], [ %i.ak, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.p      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !220 ; 2 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.s
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i = phi i16 [ %i.ai, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.01.0.i.i.i, %i.x
  %i.z = and i64 %i.y, %i.p
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !221, !noundef !4
  %.val2.val.i.i.i = load i64, ptr %.val2.i.i.i, align 8, !noalias !221, !noundef !4
  %i.ad = icmp eq i64 %.val, %.val2.val.i.i.i
  br i1 %i.ad, label %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit, label %bb.d, !prof !7

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit.thread, !prof !5

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = add i16 %.sroa.05.0.i31.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.05.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aj = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i.i.i, %i.aj
  br label %bb.c

_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr %i.ao, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.ap, align 8, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !noundef !4 ; 2 uses
  store ptr %i.av, ptr %i.an, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !4
  store ptr %i.ax, ptr %i.ap, align 8
  store ptr %i.am, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr %i.am, ptr %i.az, align 8
  br label %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit.thread

_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit
  %.not5 = phi i1 [ true, %_RINvMs3_NtCsaHowi4STlW6_9hashbrown3mapINtB6_7HashMapINtCskD7i0qFYELX_3lru6KeyRefyEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntryyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEE7get_mutINtBR_10KeyWrapperyEEB2p_.exit ], [ false, %bb.a ], [ false, %._crit_edge.i.i ]
  ret i1 %.not5
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEEB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEBJ_.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEBJ_.exit: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EEECset5b41vfmiv_13pingora_cache.exit.i.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !231, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %.val.i.i.i, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EEECset5b41vfmiv_13pingora_cache.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 16, i64 noundef 1) #25, !noalias !231
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EEECset5b41vfmiv_13pingora_cache.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EEECset5b41vfmiv_13pingora_cache.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !231, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEBJ_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj10_EEECset5b41vfmiv_13pingora_cache.exit.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 0) %.val2.i.i.i, i64 noundef 1) #25, !noalias !231
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEBJ_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1i_(ptr %.88.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.88.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.88.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.88.val, i64 noundef 32, i64 noundef 8) #25
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.88.val, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEBF_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1v_5alloc5inner6GlobalENCNvMs9_B1v_B1s_14prepare_resize0EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !234, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB12_5alloc5inner6GlobalENCNvMs9_B12_BZ_14prepare_resize0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit, label %_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !234, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !234 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !234
  %i.e = add i64 %.val3.i, 1
  %i.f = mul nuw i64 %.val.i, %i.e                ; 2 uses
  %i.g = add i64 %.val1.i, -1
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i)
  %i.j = sub i64 0, %.val1.i
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %.val3.i, 17
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %i.n = icmp uge i64 %i.m, %i.k
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nsw i64 0, %i.k
  %i.q = getelementptr inbounds i8, ptr %.val2.i, i64 %i.p
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #25, !noalias !234
  br label %_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB12_5alloc5inner6GlobalENCNvMs9_B12_BZ_14prepare_resize0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit

_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB12_5alloc5inner6GlobalENCNvMs9_B12_BZ_14prepare_resize0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.a, %_RNvMs0_NtNtCsfjHlcakrArn_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfjHlcakrArn_9hashbrown10scopeguard10ScopeGuardQINtNtNtBG_3raw5inner13RawTableInnerNtNtNtB1w_5alloc5inner6GlobalENCNvMs9_B1w_B1t_15rehash_in_place0EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !238, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !238
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !238 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardQINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalENCNvMs9_B13_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !238, !noundef !4 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardQINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalENCNvMs9_B13_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !238, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !238, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !238
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !238
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !238, !nonnull !4, !noundef !4
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !238, !inline_history !237
  %i.s = load i64, ptr %i.e, align 8, !noalias !238, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !238
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardQINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalENCNvMs9_B13_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit, label %bb.c

_RNvXs1_NtCsfjHlcakrArn_9hashbrown10scopeguardINtB5_10ScopeGuardQINtNtNtB7_3raw5inner13RawTableInnerNtNtNtB13_5alloc5inner6GlobalENCNvMs9_B13_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !238, !noundef !4 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !238, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !238
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECset5b41vfmiv_13pingora_cache(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECset5b41vfmiv_13pingora_cache.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #25
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBY_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3x_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2P_8IdHasherEEEEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECset5b41vfmiv_13pingora_cache.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock11WritePermitEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !8, !alias.scope !251, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  store i8 1, ptr %i.a, align 8, !alias.scope !253
  %i.d = load ptr, ptr %0, align 8, !alias.scope !253, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 97
  store atomic i8 4, ptr %i.e seq_cst, align 1, !noalias !253
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke void @_RNvMNtNtCs2awuzAz5vY4_5tokio4sync9semaphoreNtB2_9Semaphore11add_permits(ptr noundef nonnull align 8 %i.f, i64 noundef 10)
          to label %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !256, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !256
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit unwind label %bb.f

_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !259, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !259
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit2

bb.e:                                             ; preds = %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit2: ; preds = %_RNvXs6_NtCset5b41vfmiv_13pingora_cache4lockNtB5_11WritePermitNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCset5b41vfmiv_13pingora_cache4lock8LockCoreEEB1d_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4lock9CacheLockEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(912) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 736
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 848
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.15 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.15: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i: ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i2, 1     ; 2 uses
  %i.r = icmp eq i64 %i.q, 16
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13 ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14 ]
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i ], [ 3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.1 ], [ 4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.2 ], [ 5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.3 ], [ 6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.4 ], [ 7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.5 ], [ 8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.6 ], [ 9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.7 ], [ 10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.8 ], [ 11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.9 ], [ 12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.10 ], [ 13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.11 ], [ 14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.12 ], [ 15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.13 ], [ 16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit.i.i.i.14 ]
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i ], [ %.lcssa, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.0.1.i.i.i2
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableToNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapoNtNtCset5b41vfmiv_13pingora_cache4lock8LockStubEEEB37_.exit7.i.i.i, %bb.b
  resume { ptr, i32 } %i.t

bb.c:                                             ; preds = %.lr.ph
end_hunk_1
