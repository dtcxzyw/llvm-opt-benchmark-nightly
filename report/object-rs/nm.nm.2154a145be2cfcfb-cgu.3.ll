Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/nm.nm.2154a145be2cfcfb-cgu.3?download=true
inline.NumInlined: 105
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [26 x i8] c"Invalid XCOFF symbol index", align 1
@1 = private unnamed_addr constant [33 x i8] c"Invalid XCOFF string table length", align 1
@2 = private unnamed_addr constant [26 x i8] c"Missing XCOFF string table", align 1
@3 = private unnamed_addr constant [41 x i8] c"Invalid XCOFF symbol table offset or size", align 1
@4 = private unnamed_addr constant [40 x i8] c"Invalid index for file auxiliary symbol.", align 1
@5 = private unnamed_addr constant [48 x i8] c"Invalid index/offset for csect auxiliary symbol.", align 1
@6 = private unnamed_addr constant [27 x i8] c"Non UTF-8 XCOFF symbol name", align 1
@switch.table._RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol4kindCs2RpUvwn4Ihr_2nm = private unnamed_addr constant [22 x i8] c"\01\02\00\02\00\02\01\00\00\02\02\00\00\00\00\02\02\00\00\00\06\06", align 1
@switch.table._RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol7sectionCs2RpUvwn4Ihr_2nm = private unnamed_addr constant [3 x i8] c"\01\03\02", align 8

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBU_6common11SectionKindEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !34, !noundef !5 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !34, !noundef !5 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !35
  %i.p = extractvalue { i64, i64 } %i.o, 0
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit

bb.d:                                             ; preds = %bb.b
  %i.q = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.q, i64 range(i64 1, 0) %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  %i.r = icmp ult i64 %..i, 15
  br i1 %i.r, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.s, label %bb.j, label %bb.f, !prof !6

.thread.i:                                        ; preds = %bb.d
  %i.t = icmp samesign ult i64 %..i, 4
  %i.u = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.u, 8
  %.sroa.03.0.i.i = select i1 %i.t, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %..i, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y                        ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = icmp samesign ugt i64 %i.z, 1152921504606846974
  br i1 %i.ab, label %bb.h, label %bb.g, !prof !38

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph7.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.aa, %bb.f ] ; 5 uses
  %i.ac = shl nuw i64 %.sroa.4.0.i.ph7.i, 4       ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16  ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !39

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !40
  %i.ah = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !40 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !40
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit.thread

bb.i:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ak = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ae), !noalias !40
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !41
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit.thread

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.am, i8 -1, i64 %i.ad, i1 false), !noalias !41
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !37
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !37
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !37
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.am, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !37
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !42, !noundef !5 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit
  %i.at = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !5, !noundef !5 ; 2 uses
  %.val337 = load <16 x i8>, ptr %i.at, align 16
  %i.au = icmp sgt <16 x i8> %.val337, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  br label %.preheader

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.j ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ]
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit

bb.k:                                             ; preds = %._crit_edge
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #17
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.053 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.ar, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.av, %.preheader.lr.ph ], [ %i.by, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.ax, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.ba, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.az, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre67 = load i64, ptr %i.d, align 8, !alias.scope !42
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit
  %i.bb = phi i64 [ %.pre67, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit ] ; 2 uses
  %i.bc = sub i64 %.sroa.07.0.i.i, %i.bb
  store i64 %i.bc, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37
  store i64 %i.bb, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2RpUvwn4Ihr_2nm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2RpUvwn4Ihr_2nm.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge54
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2RpUvwn4Ihr_2nm.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !45 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !45 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !45, !noundef !5 ; 3 uses
  %i.be = icmp eq i64 %.val3.i.i, 0
  br i1 %i.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2RpUvwn4Ihr_2nm.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !45
  %i.bf = add i64 %.val3.i.i, 1
  %i.bg = mul nuw i64 %.val.i.i, %i.bf            ; 2 uses
  %i.bh = add i64 %.val1.i.i, -1
  %i.bi = add i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = icmp uge i64 %i.bi, %i.bg
  call void @llvm.assume(i1 %i.bj)
  %i.bk = sub i64 0, %.val1.i.i
  %i.bl = and i64 %i.bi, %i.bk                    ; 3 uses
  %i.bm = add i64 %.val3.i.i, 17
  %i.bn = add i64 %i.bm, %i.bl                    ; 4 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl
  %i.bp = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bq = icmp ule i64 %i.bn, %i.bp
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp eq i64 %i.bn, 0
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bt = sub nsw i64 0, %i.bl
  %i.bu = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bt
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #16, !noalias !45
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2RpUvwn4Ihr_2nm.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.az, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.ba, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.ax, %.noexc2 ]
  %i.bv = add i16 %.sroa.13.1.lcssa, -1
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.sroa.13.1.lcssa
  %i.bz = add i64 %.sroa.5.1.lcssa, %i.bx         ; 2 uses
  %i.ca = add i64 %.sroa.9.051, -1                ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !alias.scope !46, !nonnull !5, !noundef !5
  %i.cc = sub nsw i64 0, %i.bz
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -16
  %i.cf = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCseHTIzroA4w0_6object4read12SectionIndexECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.ao, %i.cf            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !47
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !48

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ci, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit ], [ %i.cz, %.lr.ph.i ]
  %i.cj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ck
  %i.cm = and i64 %i.cl, %i.ao                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = icmp sgt i8 %i.co, -1
  br i1 %i.cp, label %bb.n, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.am, align 16
  %i.cq = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cw, %i.ao           ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !47
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !49

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cm, %._crit_edge.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.0.i5.i
  %i.db = lshr i64 %i.cf, 57
  %i.dc = trunc nuw nsw i64 %i.db to i8           ; 2 uses
  %i.dd = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.de = and i64 %i.dd, %i.ao
  store i8 %i.dc, ptr %i.da, align 1
  %i.df = getelementptr i8, ptr %i.am, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.dc, ptr %i.dg, align 1
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !42, !nonnull !5, !noundef !5
  %i.di = shl i64 %i.bz, 4
  %i.dj = sub nuw nsw i64 -16, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj
  %i.dl = shl i64 %.sroa.0.0.i5.i, 4
  %i.dm = sub nuw nsw i64 -16, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.am, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dn, ptr noundef nonnull align 1 dereferenceable(16) %i.dk, i64 16, i1 false)
  %i.do = icmp eq i64 %i.ca, 0
  br i1 %i.do, label %._crit_edge54.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.er, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dp = lshr i64 %i.k, 4
  %i.dq = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dq, 0
  %i.dr = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dp, %i.dr ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.ds = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.ds, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ec, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.dt = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dt, align 16, !noalias !50
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.du = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dv = or <2 x i64> %i.du, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dv, ptr %i.dt, align 16, !noalias !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  store ptr null, ptr %i.dw, align 8, !noalias !50
  store i64 16, ptr %i.dx, align 8, !noalias !50
  store ptr %0, ptr %i.a, align 8, !noalias !50
  br label %.lr.ph.i13

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ec, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dz, align 16, !noalias !50
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ea = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eb = or <2 x i64> %i.ea, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eb, ptr %i.dz, align 16, !noalias !50
  %i.ec = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ee, align 16, !noalias !50
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ef = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eg = or <2 x i64> %i.ef, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eg, ptr %i.ee, align 16, !noalias !50
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i13:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.eh, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.eh = add nuw i64 %.sroa.0.06.i, 1
  %i.ei = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.06.i
  %i.ek = load i8, ptr %i.ej, align 1, !noundef !5
  %.not.i14 = icmp eq i8 %i.ek, -128
  br i1 %.not.i14, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 4
  %i.el = getelementptr inbounds i8, ptr %i.ei, i64 %.neg11.i ; 2 uses
  %i.em = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.en = load ptr, ptr %0, align 8, !alias.scope !51, !nonnull !5, !noundef !5
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.en, i64 %i.em
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -16
  %i.eq = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCseHTIzroA4w0_6object4read12SectionIndexECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ep)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #17
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !50, !noundef !5 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.eq      ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.es, align 1, !noalias !52
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !48

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.eu, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i ], [ %i.fl, %.lr.ph.i16.i ]
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  %i.ex = add i64 %.sroa.0.0.lcssa.i.i, %i.ew
  %i.ey = and i64 %i.ex, %.val12.i                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noundef !5
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.s, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !6

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i17, align 16
  %i.fc = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fd, 0
  %i.fe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fd, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i ]
  %i.fg = phi i64 [ %i.fh, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm.exit.i ]
  %i.fh = add i64 %i.fg, 16                       ; 2 uses
  %i.fi = add i64 %i.fh, %.sroa.0.010.i.i
  %.sroa.0.0.i.i18 = and i64 %i.fi, %.val12.i     ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fj, align 1, !noalias !52
  %i.fk = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !49

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ff, %bb.s ], [ %i.ey, %._crit_edge.i15.i ] ; 4 uses
  %i.fm = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fn = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fo = xor i64 %i.fn, %i.fm
  %.unshifted.i = and i64 %i.fo, %.val12.i
  %i.fp = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fp, label %bb.u, label %bb.t, !prof !53

bb.t:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fq = shl i64 %.sroa.0.0.i5.i.i, 4
  %i.fr = sub nuw nsw i64 -16, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !noundef !5
  %i.fv = lshr i64 %i.eq, 57
  %i.fw = trunc nuw nsw i64 %i.fv to i8           ; 2 uses
  %i.fx = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fy = and i64 %i.fx, %.val12.i
  store i8 %i.fw, ptr %i.ft, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fy
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i8 %i.fw, ptr %i.gb, align 1
  %i.gc = icmp eq i8 %i.fu, -1
  br i1 %i.gc, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gd = lshr i64 %i.eq, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.06.i, -16
  %i.gg = and i64 %.val12.i, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i
  store i8 %i.ge, ptr %i.gh, align 1
  %i.gi = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.ge, ptr %i.gk, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gl = add i64 %.sroa.0.06.i, -16
  %i.gm = load i64, ptr %i.h, align 8, !alias.scope !50, !noundef !5
  %i.gn = and i64 %i.gm, %i.gl
  %i.go = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !50, !nonnull !5, !noundef !5
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 -1, ptr %i.gs, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fs, ptr noundef nonnull align 1 dereferenceable(16) %i.el, i64 16, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2RpUvwn4Ihr_2nm(ptr noundef nonnull %i.el, ptr noundef nonnull %i.fs, i64 noundef 2)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

bb.y:                                             ; preds = %bb.r
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !50
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gu = lshr i64 %.pre13.i, 3
  %i.gv = mul nuw i64 %i.gu, 7
  %i.gw = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gw, i64 %.pre.i.fr, i64 %i.gv
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !50
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gx = phi i64 [ %i.e, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gy = phi i64 [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = sub i64 %i.gy, %i.gx
  store i64 %i.ha, ptr %i.gz, align 8, !alias.scope !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm.exit, %bb.c, %bb.z
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.034, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm.exit ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBU_6common11SectionKindEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBU_6common11SectionKindEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !56 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !56, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !56
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #16, !noalias !56
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !60
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !60, !nonnull !5, !align !7, !noundef !5 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !60, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !noalias !60
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %i.f = phi ptr [ %i.s, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %i.g = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !60, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !60, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !60
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !60, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !60
  %i.q = load i64, ptr %i.e, align 8, !noalias !60, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !60
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %i.s = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.t, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.t = add nuw i64 %.sroa.0.03.i.i, 1
  %i.u = load ptr, ptr %.val2.i, align 8, !noalias !60, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.03.i.i ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !60, !noundef !5
  %i.x = icmp eq i8 %i.w, -128
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.y = add i64 %.sroa.0.03.i.i, -16
  %i.z = load i64, ptr %i.c, align 8, !noalias !60, !noundef !5
  %i.aa = and i64 %i.z, %i.y
  store i8 -1, ptr %i.v, align 1, !noalias !60
  %i.ab = load ptr, ptr %.val2.i, align 8, !noalias !60, !nonnull !5, !noundef !5
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i8 -1, ptr %i.ad, align 1, !noalias !60
  %i.ae = load ptr, ptr %.val2.i, align 8, !noalias !60, !nonnull !5, !noundef !5
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.af), !noalias !60, !inline_history !59
  %i.ag = load i64, ptr %i.e, align 8, !noalias !60, !noundef !5
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.e, align 8, !noalias !60
  br label %bb.d

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ai = load i64, ptr %i.c, align 8, !noalias !60, !noundef !5 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 8
  %i.ak = add i64 %i.ai, 1
  %i.al = lshr i64 %i.ak, 3
  %i.am = mul nuw i64 %i.al, 7
  %.sroa.04.0.i.i = select i1 %i.aj, i64 %i.ai, i64 %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !60, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.aq = sub i64 %.sroa.04.0.i.i, %i.ao
  store i64 %i.aq, ptr %i.ap, align 8, !noalias !60
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB4_11SymbolTableNtNtBa_5xcoff12FileHeader32E5parseCs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(20) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i32, ptr %i.b, align 1             ; 2 uses
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %.val)
  %i.d = zext i32 %i.c to i64
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp eq i32 %.val, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val35 = load i32, ptr %i.f, align 1
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.val35)
  %i.h = zext i32 %i.g to i64
  %i.i = call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_5xcoff11SymbolBytesECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.h) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %.sroa.7.0 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.e ]
  %.sroa.527.0 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.e ]
  %.sroa.025.0 = phi ptr [ null, %bb.a ], [ %2, %bb.e ]
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.e ]
  %.sroa.011.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.j, %bb.e ]
  store ptr %.sroa.011.0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.025.0, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.527.0, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.a, align 8, !noundef !5
  %i.n = call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_6endian3U32NtB14_9BigEndianEECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.m) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.033.0.copyload = load i32, ptr %i.n, align 1
  %i.p = call i32 @llvm.bswap.i32(i32 %.sroa.033.0.copyload)
  %i.q = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.r = zext i32 %i.p to i64
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.g, label %bb.c, !prof !6

bb.f:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sink40 = phi ptr [ @3, %bb.b ], [ @2, %bb.d ], [ @1, %bb.e ]
  %.sink = phi i64 [ 41, %bb.b ], [ 26, %bb.d ], [ 33, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink40, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.v, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB4_11SymbolTableNtNtBa_5xcoff12FileHeader32E9aux_csectCs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
_RINvMs_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11SymbolTableNtNtBb_5xcoff12FileHeader32E3getNtB19_10CsectAux32ECs2RpUvwn4Ihr_2nm.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.a, align 8
  %i.b = add i64 %3, %2                           ; 3 uses
  %i.c = icmp uge i64 %i.b, %2
  %i.d = icmp ult i64 %i.b, %.val4
  %or.cond.i = select i1 %i.c, i1 %i.d, i1 false, !prof !8 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5
  %i.e = getelementptr inbounds nuw [18 x i8], ptr %.val, i64 %i.b
  %i.f = ptrtoint ptr %i.e to i64
  %.sink9 = select i1 %or.cond.i, i64 %i.f, i64 26, !prof !8
  %.sink = select i1 %or.cond.i, ptr null, ptr @0, !prof !8
end_hunk_0
begin_hunk_1_@_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol4kindCs2RpUvwn4Ihr_2nm:bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = getelementptr i8, ptr %i.b, i64 17
  %.val = load i8, ptr %i.i, align 1, !noundef !5
  %i.j = zext i8 %.val to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val5.i = load i64, ptr %i.k, align 8, !alias.scope !79
  %i.l = add i64 %i.h, %i.j                       ; 3 uses
  %i.m = icmp uge i64 %i.l, %i.h
  %i.n = icmp ult i64 %i.l, %.val5.i
  %or.cond.i.i = select i1 %i.m, i1 %i.n, i1 false, !prof !8
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val.i = load ptr, ptr %i.o, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [18 x i8], ptr %.val.i, i64 %i.l ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 17
  %.val6.i = load i8, ptr %i.q, align 1, !noalias !80, !noundef !5
  %.not4.i = icmp eq i8 %.val6.i, -5
  br i1 %.not4.i, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef i8 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff10CsectAux64NtNtNtNtB6_4read5xcoff6symbol8CsectAux8sym_typeCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %i.p)
  switch i8 %i.r, label %bb.b [
    i8 1, label %bb.f
    i8 3, label %bb.f
    i8 2, label %bb.h
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 11
  %.val2 = load i8, ptr %i.s, align 1, !noundef !5 ; 2 uses
  %i.t = icmp ult i8 %.val2, 22
  br i1 %i.t, label %switch.lookup, label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

switch.lookup:                                    ; preds = %bb.f
  %i.u = zext nneg i8 %.val2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol4kindCs2RpUvwn4Ihr_2nm, i64 %i.u
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.f, %bb.g, %bb.e, %bb.b
  %.sroa.0.1 = phi i8 [ %., %bb.b ], [ 0, %bb.g ], [ %switch.load, %switch.lookup ], [ 1, %bb.e ], [ 0, %bb.f ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol4nameCs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !87, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol64NtNtNtNtB6_4read5xcoff6symbol6Symbol12has_aux_fileCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %i.f), !noalias !88
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !87, !nonnull !5, !align !7, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !88
  call void @_RINvXs9_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolNtNtBc_5xcoff8Symbol64NtB6_6Symbol4nameRShECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88
  br label %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !87, !nonnull !5, !align !7, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !87, !noundef !5 ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val1.i = load i64, ptr %i.o, align 8, !noalias !88
  %i.p = add i64 %i.n, 1                          ; 2 uses
  %i.q = icmp ne i64 %i.n, -1
  %i.r = icmp ult i64 %i.p, %.val1.i
  %or.cond.i.i.i = select i1 %i.q, i1 %i.r, i1 false, !prof !8
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !88, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [18 x i8], ptr %.val.i, i64 %i.p ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 17
  %.val6.i.i = load i8, ptr %i.t, align 1, !noalias !89, !noundef !5
  %.not4.i.i = icmp eq i8 %.val6.i.i, -4
  br i1 %.not4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.7.0.ph.i = phi i64 [ 40, %bb.d ], [ 26, %bb.c ]
  %.sroa.0.0.ph.i = phi ptr [ @4, %bb.d ], [ @0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.0.0.ph.i, ptr %i.u, align 8, !alias.scope !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.7.0.ph.i, ptr %i.v, align 8, !alias.scope !86
  store i64 1, ptr %i.d, align 8, !alias.scope !86
  br label %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !88
  call void @_RINvYNtNtCseHTIzroA4w0_6object5xcoff9FileAux64NtNtNtNtB7_4read5xcoff6symbol7FileAux5fnameRShECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88
  br label %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit

_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.x = load i64, ptr %i.d, align 8, !range !9, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.y, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac)
  %i.ad = load i64, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %i.ae = trunc nuw i64 %i.ad to i1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %.sink6.ph = select i1 %i.ae, ptr @6, ptr %i.ag
  %.sink.ph = select i1 %i.ae, i64 27, i64 %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit
  %.sink6 = phi ptr [ %i.aa, %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit ], [ %.sink6.ph, %.sink.split ]
  %.sink = phi i64 [ %i.ac, %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit ], [ %.sink.ph, %.sink.split ]
  %storemerge4 = phi i64 [ 1, %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol10name_bytesCs2RpUvwn4Ihr_2nm.exit ], [ %i.ad, %.sink.split ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink6, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.ak, align 8
  store i64 %storemerge4, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol7sectionCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.b, i64 12
  %.val = load i16, ptr %i.c, align 1
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %.val) ; 3 uses
  %switch.tableidx = add i16 %i.d, 2              ; 2 uses
  %i.e = icmp ult i16 %switch.tableidx, 3
  br i1 %i.e, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i16 %i.d, 0                     ; 2 uses
  %i.g = zext nneg i16 %i.d to i64
  %spec.select = select i1 %i.f, i64 %i.g, i64 undef
  %spec.select2 = select i1 %i.f, i64 5, i64 0
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader64ENtNtB9_6traits12ObjectSymbol7sectionCs2RpUvwn4Ihr_2nm, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.sroa.6.0 = phi i64 [ %spec.select, %bb.b ], [ undef, %switch.lookup ]
  %.sroa.0.0 = phi i64 [ %spec.select2, %bb.b ], [ %switch.ext, %switch.lookup ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.6.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBT_6common11SectionKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtB1h_6common11SectionKindENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtB1h_6common11SectionKindENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #16
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtB1h_6common11SectionKindENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtB1h_6common11SectionKindENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCseHTIzroA4w0_6object4read12SectionIndexECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_5xcoff11SymbolBytesECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef7read_atINtNtBc_6endian3U32NtB14_9BigEndianEECs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2RpUvwn4Ihr_2nm(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol32NtNtNtNtB6_4read5xcoff6symbol6Symbol12has_aux_fileCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsb_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolNtNtBc_5xcoff8Symbol32NtB6_6Symbol4nameRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCseHTIzroA4w0_6object5xcoff9FileAux32NtNtNtNtB7_4read5xcoff6symbol7FileAux5fnameRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol32NtNtNtNtB6_4read5xcoff6symbol6Symbol13has_aux_csectCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff10CsectAux32NtNtNtNtB6_4read5xcoff6symbol8CsectAux8sym_typeCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol64NtNtNtNtB6_4read5xcoff6symbol6Symbol12has_aux_fileCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolNtNtBc_5xcoff8Symbol64NtB6_6Symbol4nameRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCseHTIzroA4w0_6object5xcoff9FileAux64NtNtNtNtB7_4read5xcoff6symbol7FileAux5fnameRShECs2RpUvwn4Ihr_2nm(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol64NtNtNtNtB6_4read5xcoff6symbol6Symbol13has_aux_csectCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff10CsectAux64NtNtNtNtB6_4read5xcoff6symbol8CsectAux8sym_typeCs2RpUvwn4Ihr_2nm(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 2000, i32 2002}
!9 = !{i64 0, i64 2}
!10 = distinct !{!10, i1 true, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm"}
!11 = distinct !{!11, !10, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm: argument 0"}
!12 = distinct !{!12, !10, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm: argument 1"}
!13 = distinct !{!13, i1 true, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm"}
!14 = distinct !{!14, !13, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm: argument 0"}
!15 = distinct !{!15, !13, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm: argument 1"}
!16 = distinct !{!16, i1 true, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm"}
!17 = distinct !{!17, !16, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm"}
!19 = distinct !{!19, !18, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2RpUvwn4Ihr_2nm: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm"}
!21 = distinct !{!21, !20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2RpUvwn4Ihr_2nm: argument 0"}
!22 = distinct !{!22, i1 true, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm"}
!23 = distinct !{!23, !22, !"_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2RpUvwn4Ihr_2nm: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm"}
!25 = distinct !{!25, !24, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm: argument 1"}
!26 = distinct !{!26, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!27 = distinct !{!27, !26, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!29 = distinct !{!29, !28, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm"}
!31 = distinct !{!31, !30, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCseHTIzroA4w0_6object4read12SectionIndexNtNtBW_6common11SectionKindEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2RpUvwn4Ihr_2nm: argument 1"}
!32 = distinct !{!32, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!33 = distinct !{!33, !32, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!34 = !{!11}
!35 = !{!11, !12}
!36 = !{!14}
!37 = !{!14, !15, !11, !12}
!38 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!39 = !{!"branch_weights", i32 2002, i32 2000}
!40 = !{!19, !17}
!41 = !{!17}
!42 = !{!14, !11}
!43 = !{!21}
!44 = !{!23}
!45 = !{!23, !21}
!46 = !{!25}
!47 = !{!27}
!48 = !{!"branch_weights", i32 1, i32 1999}
!49 = !{!"branch_weights", i32 0, i32 1}
!50 = !{!29}
!51 = !{!31, !29}
end_hunk_1
