Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.03?download=true
inline.NumInlined: 257
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/exr-1.74.2/src/compression/dwa/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\83\00\00\004\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\84\00\00\00.\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\84\00\00\00K\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\85\00\00\00!\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\85\00\00\00>\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !39, !noalias !40, !noundef !4 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !39, !noalias !40, !noundef !4 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !41 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.j, label %bb.f, !prof !5

.thread.i:                                        ; preds = %bb.d
  %i.u = icmp samesign ult i64 %..i, 4
  %i.v = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.v, 8
  %.sroa.03.0.i.i = select i1 %i.u, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %..i, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z                       ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %or.cond10.i.i = icmp samesign ugt i64 %i.aa, 2305843009213693949
  br i1 %or.cond10.i.i, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.ab, %bb.f ] ; 5 uses
  %i.ac = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.ad = add nuw i64 %i.ac, 8
  %i.ae = and i64 %i.ad, -16                      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !7

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !44
  %i.aj = tail call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !44 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !44
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread

bb.i:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !44
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.an = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !45
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ao, i8 -1, i64 %i.af, i1 false), !noalias !45
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 6 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !43
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !43
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !43
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.ao, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !43
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43
  %i.at = load i64, ptr %i.d, align 8, !alias.scope !46, !noalias !47, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit
  %i.av = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !4, !noundef !4 ; 2 uses
  %.val337 = load <16 x i8>, ptr %i.av, align 16
  %i.aw = icmp sgt <16 x i8> %.val337, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.al, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #24
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.053 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre67 = load i64, ptr %i.d, align 8, !alias.scope !46, !noalias !47
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit
  %i.bd = phi i64 [ %.pre67, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit ] ; 2 uses
  %i.be = sub i64 %.sroa.07.0.i.i, %i.bd
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43
  store i64 %i.bd, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdsTQD3x2eOp_3exr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge54
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !50 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !50 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !50, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !50
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl)
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 4 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bu = icmp eq i64 %i.bp, 0
  br i1 %i.bu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bv = sub nsw i64 0, %i.bn
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !noalias !50
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.az, %.noexc2 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.051, -1                ; 2 uses
  %i.cd = load ptr, ptr %0, align 8, !alias.scope !51, !noalias !52, !nonnull !4, !noundef !4
  %i.ce = sub nsw i64 0, %i.cb
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRRINtNtBU_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEB28_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.aq, %i.ch            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !53
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !54

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ck, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %i.db, %.lr.ph.i ]
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cm
  %i.co = and i64 %i.cn, %i.aq                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !4
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.n, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.ao, align 16
  %i.cs = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ct, 0
  %i.cu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ct, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit ]
  %i.cw = phi i64 [ %i.cx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit ]
  %i.cx = add i64 %i.cw, 16                       ; 2 uses
  %i.cy = add i64 %i.cx, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cy, %i.aq           ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !53
  %i.da = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !55

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cv, %bb.n ], [ %i.co, %._crit_edge.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i5.i
  %i.dd = lshr i64 %i.ch, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %i.aq
  store i8 %i.de, ptr %i.dc, align 1
  %i.dh = getelementptr i8, ptr %i.ao, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store i8 %i.de, ptr %i.di, align 1
  %i.dj = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !4, !noundef !4
  %i.dk = shl i64 %i.cb, 3
  %i.dl = sub nuw nsw i64 -8, %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %i.dl
  %i.dn = shl i64 %.sroa.0.0.i5.i, 3
  %i.do = sub nuw nsw i64 -8, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %i.ao, i64 %i.do
  %i.dq = load i64, ptr %i.dm, align 1
  store i64 %i.dq, ptr %i.dp, align 8
  %i.dr = icmp eq i64 %i.cc, 0
  br i1 %i.dr, label %._crit_edge54.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.eu, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !56 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ds = lshr i64 %i.k, 4
  %i.dt = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dt, 0
  %i.du = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.ds, %i.du ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dv = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ef, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dw, align 16, !noalias !56
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dx = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dy = or <2 x i64> %i.dx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dy, ptr %i.dw, align 16, !noalias !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.eb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !56
  store ptr null, ptr %i.dz, align 8, !noalias !56
  store i64 8, ptr %i.ea, align 8, !noalias !56
  store ptr %0, ptr %i.a, align 8, !noalias !56
  br label %.lr.ph.i13

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ef, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ec, align 16, !noalias !56
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ed = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ee = or <2 x i64> %i.ed, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ee, ptr %i.ec, align 16, !noalias !56
  %i.ef = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.eh, align 16, !noalias !56
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ei = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ej = or <2 x i64> %i.ei, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ej, ptr %i.eh, align 16, !noalias !56
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i13:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ek, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ek = add nuw i64 %.sroa.0.06.i, 1
  %i.el = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !4, !noundef !4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.0.06.i
  %i.en = load i8, ptr %i.em, align 1, !noundef !4
  %.not.i14 = icmp eq i8 %i.en, -128
  br i1 %.not.i14, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %.neg11.i ; 2 uses
  %i.ep = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eq = load ptr, ptr %0, align 8, !alias.scope !57, !noalias !58, !nonnull !4, !noundef !4
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ep
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.et = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRRINtNtBU_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEB28_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.es)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.w, %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i: ; preds = %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !4, !noundef !4 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !56, !noundef !4 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.et      ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ev, align 1, !noalias !59
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !54

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ex, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i ], [ %i.fo, %.lr.ph.i16.i ]
  %i.ey = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = add i64 %.sroa.0.0.lcssa.i.i, %i.ez
  %i.fb = and i64 %i.fa, %.val12.i                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !noundef !4
  %i.fe = icmp sgt i8 %i.fd, -1
  br i1 %i.fe, label %bb.s, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !5

bb.s:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i17, align 16
  %i.ff = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fg = bitcast <16 x i1> %i.ff to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fg, 0
  %i.fh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fg, i1 true)
  %i.fi = zext nneg i16 %i.fh to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i ]
  %i.fj = phi i64 [ %i.fk, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i ]
  %i.fk = add i64 %i.fj, 16                       ; 2 uses
  %i.fl = add i64 %i.fk, %.sroa.0.010.i.i
  %.sroa.0.0.i.i18 = and i64 %i.fl, %.val12.i     ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fm, align 1, !noalias !59
  %i.fn = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fo = bitcast <16 x i1> %i.fn to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fo, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !55

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fi, %bb.s ], [ %i.fb, %._crit_edge.i15.i ] ; 4 uses
  %i.fp = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fq = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fr = xor i64 %i.fq, %i.fp
  %.unshifted.i = and i64 %i.fr, %.val12.i
  %i.fs = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fs, label %bb.u, label %bb.t, !prof !8

bb.t:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ft = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.fu = sub nuw nsw i64 -8, %i.ft
  %i.fv = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !noundef !4
  %i.fy = lshr i64 %i.et, 57
  %i.fz = trunc nuw nsw i64 %i.fy to i8           ; 2 uses
  %i.ga = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gb = and i64 %i.ga, %.val12.i
  store i8 %i.fz, ptr %i.fw, align 1
  %i.gc = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !4, !noundef !4
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.gb
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  store i8 %i.fz, ptr %i.ge, align 1
  %i.gf = icmp eq i8 %i.fx, -1
  br i1 %i.gf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gg = lshr i64 %i.et, 57
  %i.gh = trunc nuw nsw i64 %i.gg to i8           ; 2 uses
  %i.gi = add i64 %.sroa.0.06.i, -16
  %i.gj = and i64 %.val12.i, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i
  store i8 %i.gh, ptr %i.gk, align 1
  %i.gl = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !4, !noundef !4
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gj
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store i8 %i.gh, ptr %i.gn, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.go = add i64 %.sroa.0.06.i, -16
  %i.gp = load i64, ptr %i.h, align 8, !alias.scope !56, !noundef !4
  %i.gq = and i64 %i.gp, %i.go
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gs, align 1
  %i.gt = load ptr, ptr %0, align 8, !alias.scope !56, !nonnull !4, !noundef !4
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gq
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  store i8 -1, ptr %i.gv, align 1
  %i.gw = load i64, ptr %i.eo, align 1
  store i64 %i.gw, ptr %i.fv, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdsTQD3x2eOp_3exr(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.fv, i64 noundef 1)
          to label %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

bb.y:                                             ; preds = %bb.r
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !56
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gy = lshr i64 %.pre13.i, 3
  %i.gz = mul nuw i64 %i.gy, 7
  %i.ha = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.ha, i64 %.pre.i.fr, i64 %i.gz
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !56
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.hb = phi i64 [ %i.e, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.hc = phi i64 [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.he = sub i64 %i.hc, %i.hb
  store i64 %i.he, ptr %i.hd, align 8, !alias.scope !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.033, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.034, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit ]
  %i.hf = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hg = insertvalue { i64, i64 } %i.hf, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBX_14AttributeValueEE9next_implKb0_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [392 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -6272 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !62 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !62 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !62, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !62
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #23, !noalias !62
  br label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !66
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !66, !nonnull !4, !align !9, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !66, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !66, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !66, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !66, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !66
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !66, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !66
  %i.q = load i64, ptr %i.e, align 8, !noalias !66, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !66, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !66, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !66, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !66
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !66, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !66
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !66, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !66, !inline_history !65
  %i.af = load i64, ptr %i.e, align 8, !noalias !66, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !66
  br label %bb.d

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !66, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !66, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !66
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !10, !alias.scope !73, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !74
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !10, !alias.scope !73, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !75
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !10, !alias.scope !82, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val2, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 2) #23, !noalias !83
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !10, !alias.scope !82, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = shl nuw i64 %.val, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 2) #23, !noalias !84
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtBG_3VechEB1L_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !91, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !91, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !91, !noundef !4
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef %i.e)
          to label %bb.d unwind label %bb.b, !noalias !91

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsdsTQD3x2eOp_3exr.exit.i, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3b4411ChannelDataE8grow_oneBS_:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !281, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !281
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !281
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !281
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !284
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !284
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !284, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !284, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !284, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !284
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !284
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleE8grow_oneBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !287
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !287
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !287
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !287, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !287, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !287
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !287, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !287
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !287
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !287
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8grow_oneBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !290
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !290
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !290
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !290, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !290, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !290, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !290
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !290
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !293
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !293
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 72), !noalias !293
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !293, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !293, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !293
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !293, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !293
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !293
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !293
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !296
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !296
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 2, i64 noundef 2), !noalias !296
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !296, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !12, !noalias !296, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !296, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !296
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !296
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %bb.h

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE16with_capacity_inB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.h, label %bb.d, !prof !5

.thread.i:                                        ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4
  %i.e = and i64 %1, 8
  %..i.i = add nuw nsw i64 %i.e, 8
  %.sroa.03.0.i.i = select i1 %i.d, i64 4, i64 %..i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %1, 3
  %i.g = udiv i64 %i.f, 7
  %i.h = add nsw i64 %i.g, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %or.cond10.i.i = icmp samesign ugt i64 %i.j, 2305843009213693949
  br i1 %or.cond10.i.i, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16   ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %bb.f, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !7

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !301
  %i.s = tail call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !301 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !301
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !301
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i

bb.h:                                             ; preds = %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !302 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i: ; preds = %bb.g, %bb.f
  %.pn.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.12.012.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.013.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.aa = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 2 uses
  %i.ab = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.ac = mul nuw nsw i64 %i.ab, 7
  %.sroa.07.0.i.i = select i1 %i.z, i64 %i.aa, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ad, i8 -1, i64 %i.o, i1 false), !noalias !302
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.h, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i
  %.sroa.10.0 = phi i64 [ %i.y, %bb.h ], [ %.sroa.12.012.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i ], [ %.sroa.07.0.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.x, %bb.h ], [ %.sroa.7.013.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.aa, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.ad, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i ], [ @0, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VectEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr:bb.a
  %i.u = shl nuw i64 %.val.i.i, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 2) #23, !noalias !330
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.f, %bb.e
  %i.v = icmp eq i64 %i.n, %i.f
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.w = add i64 %.sroa.0.1.i19, 1                ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f
  br i1 %i.x, label %.body, label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.c
  %i.y = icmp eq i64 %i.n, %i.f
  br i1 %i.y, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i19 = phi i64 [ %i.w, %bb.g ], [ %i.n, %.body.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i19
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #24
          to label %bb.g unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VectENtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit4, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit
  %i.ae = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.af = mul nuw i64 %i.ac, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !331
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VectENtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VectENtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit4: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsdsTQD3x2eOp_3exr.exit, %bb.i
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VectENtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesNtNtBO_5alloc6GlobalEEB2k_.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = mul nuw i64 %i.b, 48
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !334
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesNtNtBO_5alloc6GlobalEEB2k_.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesNtNtBO_5alloc6GlobalEEB2k_.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardtNtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = shl nuw i64 %i.b, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 2) #23, !noalias !337
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardtNtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardtNtNtBO_5alloc6GlobalEECsdsTQD3x2eOp_3exr.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBR_14AttributeValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !346, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1f_14AttributeValueENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1j_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !348, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1c_14AttributeValueEEB1g_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !348, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !349
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBX_14AttributeValueEE9next_implKb0_EB11_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !350
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -6272 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBX_14AttributeValueEE9next_implKb0_EB11_.exit.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBX_14AttributeValueEE9next_implKb0_EB11_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [392 x i8], ptr %.sroa.05.1.i.i, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -392
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.t)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i unwind label %bb.e, !noalias !348

bb.e:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBX_14AttributeValueEE9next_implKb0_EB11_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -352
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(352) %i.v) #24
          to label %bb.g unwind label %bb.f, !noalias !348

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !348
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i: ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBX_14AttributeValueEE9next_implKb0_EB11_.exit.i.i
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = add i16 %.lcssa.i.i.i, -1
  %i.z = and i16 %i.y, %.lcssa.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -352
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(352) %i.aa), !noalias !348
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1c_14AttributeValueEEB1g_.exit.i, label %bb.d

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1c_14AttributeValueEEB1g_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEEBI_.exit.i.i, %bb.b
  %i.ac = mul i64 %i.b, 392
  %i.ad = icmp slt i64 %i.b, 47058020596197835
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %i.ac, -16                      ; 2 uses
  %i.af = add i64 %i.ae, 400                      ; 2 uses
  %i.ag = add nsw i64 %i.b, 17
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %i.ai = icmp uge i64 %i.ah, %i.af
  %i.aj = icmp ult i64 %i.ah, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1f_14AttributeValueENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1j_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1c_14AttributeValueEEB1g_.exit.i
  %i.al = load ptr, ptr %0, align 8, !alias.scope !346, !nonnull !4, !noundef !4
  %i.am = sub i64 -400, %i.ae
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !346
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1f_14AttributeValueENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1j_.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1f_14AttributeValueENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1j_.exit: ; preds = %bb.a, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1c_14AttributeValueEEB1g_.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEENtNtNtBV_3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1W_.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1W_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #23
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1W_.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuENtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalEB1W_.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(336)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecaENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRRINtNtBU_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEB28_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(336), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdsTQD3x2eOp_3exr(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1i_3VechEEINtNtNtBc_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2H_10decompresss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropB21_ENCINvNtB1i_16in_place_collect24write_in_place_with_dropB21_E0INtNtBc_6result6ResultB4E_zEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropAjj3_E3lenCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { noinline }
attributes #27 = { noinline noreturn }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 4292820, i32 2143190828}
!7 = !{!"branch_weights", i32 2002, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i64 8}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i64 0, i64 2}
!12 = !{i64 0, i64 -9223372036854775807}
!13 = distinct !{!13, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr"}
!14 = distinct !{!14, !13, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr: argument 0"}
!15 = distinct !{!15, !13, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr: argument 1"}
!16 = distinct !{!16, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr"}
!17 = distinct !{!17, !16, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr: argument 0"}
!18 = distinct !{!18, !16, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr: argument 1"}
!19 = distinct !{!19, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr"}
!20 = distinct !{!20, !19, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr: argument 0"}
!21 = distinct !{!21, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr"}
!22 = distinct !{!22, !21, !"_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr: argument 0"}
!23 = distinct !{!23, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr"}
!24 = distinct !{!24, !23, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr: argument 0"}
!25 = distinct !{!25, !"_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr"}
!26 = distinct !{!26, !25, !"_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr: argument 0"}
!27 = distinct !{!27, !"_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_"}
!28 = distinct !{!28, !27, !"_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_: argument 1"}
!29 = distinct !{!29, !27, !"_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_: argument 0"}
!30 = distinct !{!30, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!31 = distinct !{!31, !30, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!32 = distinct !{!32, !"_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!33 = distinct !{!33, !32, !"_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!34 = distinct !{!34, !"_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_"}
!35 = distinct !{!35, !34, !"_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_: argument 1"}
!36 = distinct !{!36, !34, !"_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_: argument 0"}
!37 = distinct !{!37, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!38 = distinct !{!38, !37, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!39 = !{!14}
!40 = !{!15}
!41 = !{!14, !15}
!42 = !{!17}
end_hunk_2
