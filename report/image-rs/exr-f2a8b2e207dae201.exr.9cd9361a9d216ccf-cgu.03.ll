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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4, !noalias !7, !noundef !9 ; 2 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4, !noalias !7, !noundef !9 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !11 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.j, label %bb.f, !prof !10

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
  br i1 %or.cond10.i.i, label %bb.h, label %bb.g, !prof !17

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
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !18

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !19
  %i.aj = tail call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !19 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !19
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread

bb.i:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !19
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.an = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !24
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ao, i8 -1, i64 %i.af, i1 false), !noalias !24
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.aq = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 6 uses
  %i.ar = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.as ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !15
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.ao, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  %i.at = load i64, ptr %i.d, align 8, !alias.scope !25, !noalias !26, !noundef !9 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit
  %i.av = load ptr, ptr %0, align 8, !alias.scope !25, !noalias !26, !nonnull !9, !noundef !9 ; 2 uses
  %.val337 = load <16 x i8>, ptr %i.av, align 16
  %i.aw = icmp sgt <16 x i8> %.val337, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.al, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
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
  %.pre67 = load i64, ptr %i.d, align 8, !alias.scope !25, !noalias !26
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit
  %i.bd = phi i64 [ %.pre67, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit ] ; 2 uses
  %i.be = sub i64 %.sroa.07.0.i.i, %i.bd
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  store i64 %i.bd, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdsTQD3x2eOp_3exr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge54
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !33 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !33 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !33, !noundef !9 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !33
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
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !noalias !33
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1z_:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ef, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dw, align 16, !noalias !44
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dx = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dy = or <2 x i64> %i.dx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dy, ptr %i.dw, align 16, !noalias !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.eb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  store ptr null, ptr %i.dz, align 8, !noalias !44
  store i64 8, ptr %i.ea, align 8, !noalias !44
  store ptr %0, ptr %i.a, align 8, !noalias !44
  br label %.lr.ph.i13

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ef, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ec, align 16, !noalias !44
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ed = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ee = or <2 x i64> %i.ed, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ee, ptr %i.ec, align 16, !noalias !44
  %i.ef = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.eh, align 16, !noalias !44
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ei = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ej = or <2 x i64> %i.ei, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ej, ptr %i.eh, align 16, !noalias !44
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i13:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ek, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ek = add nuw i64 %.sroa.0.06.i, 1
  %i.el = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !9, !noundef !9 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.0.06.i
  %i.en = load i8, ptr %i.em, align 1, !noundef !9
  %.not.i14 = icmp eq i8 %i.en, -128
  br i1 %.not.i14, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %.neg11.i ; 2 uses
  %i.ep = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
  %i.eq = load ptr, ptr %0, align 8, !alias.scope !47, !noalias !50, !nonnull !9, !noundef !9
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
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !9, !noundef !9 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !44, !noundef !9 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.et      ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ev, align 1, !noalias !52
  %i.ew = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !42

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ex, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit.i ], [ %i.fo, %.lr.ph.i16.i ]
  %i.ey = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = add i64 %.sroa.0.0.lcssa.i.i, %i.ez
  %i.fb = and i64 %i.fa, %.val12.i                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !noundef !9
  %i.fe = icmp sgt i8 %i.fd, -1
  br i1 %i.fe, label %bb.s, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !10

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
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fm, align 1, !noalias !52
  %i.fn = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fo = bitcast <16 x i1> %i.fn to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fo, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !43

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fi, %bb.s ], [ %i.fb, %._crit_edge.i15.i ] ; 4 uses
  %i.fp = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fq = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fr = xor i64 %i.fq, %i.fp
  %.unshifted.i = and i64 %i.fr, %.val12.i
  %i.fs = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fs, label %bb.u, label %bb.t, !prof !55

bb.t:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ft = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.fu = sub nuw nsw i64 -8, %i.ft
  %i.fv = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !noundef !9
  %i.fy = lshr i64 %i.et, 57
  %i.fz = trunc nuw nsw i64 %i.fy to i8           ; 2 uses
  %i.ga = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gb = and i64 %i.ga, %.val12.i
  store i8 %i.fz, ptr %i.fw, align 1
  %i.gc = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !9, !noundef !9
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
  %i.gl = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !9, !noundef !9
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gj
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store i8 %i.gh, ptr %i.gn, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.go = add i64 %.sroa.0.06.i, -16
  %i.gp = load i64, ptr %i.h, align 8, !alias.scope !44, !noundef !9
  %i.gq = and i64 %i.gp, %i.go
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !9, !noundef !9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gs, align 1
  %i.gt = load ptr, ptr %0, align 8, !alias.scope !44, !nonnull !9, !noundef !9
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
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !44
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gy = lshr i64 %.pre13.i, 3
  %i.gz = mul nuw i64 %i.gy, 7
  %i.ha = icmp ult i64 %.pre.i.fr, 8
  br i1 %i.ha, label %4, label %bb.z

4:                                                ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %4
  %5 = phi i64 [ %.pre.i.fr, %4 ], [ %i.gz, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ]
  %6 = load i64, ptr %i.d, align 8, !alias.scope !44, !noundef !9
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = sub i64 %5, %6
  store i64 %i.hc, ptr %i.hb, align 8, !alias.scope !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.033, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.034, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit ]
  %i.hd = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.he = insertvalue { i64, i64 } %i.hd, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.he
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !10

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
  %i.b = load i16, ptr %i.a, align 8, !noundef !9 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !56 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !56, !noundef !9 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #23, !noalias !56
  br label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !59
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !9, !align !62, !noundef !9 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !59, !noundef !9 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !59, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !59, !noundef !9
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !59, !noundef !9
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !59
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !59, !nonnull !9, !noundef !9
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !59
  %i.q = load i64, ptr %i.e, align 8, !noalias !59, !noundef !9
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !59, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !59, !noundef !9
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !59, !noundef !9
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !59
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !59, !nonnull !9, !noundef !9
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !59
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !59, !nonnull !9, !noundef !9
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !59, !inline_history !63
  %i.af = load i64, ptr %i.e, align 8, !noalias !59, !noundef !9
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !59
  br label %bb.d

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !59, !noundef !9 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr:bb.a
  br i1 %i.k, label %._crit_edge21, label %.lr.ph20

.body:                                            ; preds = %bb.b, %bb.c
  %i.l = icmp eq i64 %i.c, %1
  br i1 %i.l, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body, %bb.f
  %.sroa.0.119 = phi i64 [ %i.j, %bb.f ], [ %i.c, %.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.0.119
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #24
          to label %bb.f unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.d

bb.g:                                             ; preds = %.lr.ph20
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !64, !alias.scope !176, !noundef !9 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !183, !nonnull !9, !noundef !9
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !184
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !range !64, !alias.scope !176, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !183, !nonnull !9, !noundef !9
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !187
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsdsTQD3x2eOp_3exr.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringAINtNtB1f_6option6OptionjEj3_EENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0EAjB3l_EB3y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 20 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !201, !noalias !199, !nonnull !9, !noundef !9 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !201, !noalias !199, !nonnull !9, !noundef !9 ; 3 uses
  %.not17.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not17.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.body:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i.i.i, %bb.x ], [ %i.cc, %bb.aa ], [ %i.cc, %bb.z ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtB1u_6string6StringAINtNtB4_6option6OptionjEj3_EENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0EEB3a_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #24
          to label %common.resume unwind label %bb.ab

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.val.i.pre21.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !202, !noalias !203 ; 3 uses
  %.val4.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !202, !noalias !203 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.pre21.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.pre21.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i, %.lr.ph.i.i.i
  %i.q = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.r, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i ] ; 2 uses
  %.sroa.4.018.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.pn15.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !noalias !207
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !201, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !207
  store ptr %i.e, ptr %i.b, align 8, !noalias !206
  store ptr %.sroa.4.018.i.i.i, ptr %i.k, align 8, !noalias !206
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !208, !noalias !211
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !208, !noalias !211 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !208, !noalias !211 ; 5 uses
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !208, !noalias !211
  %.sroa.11.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !208, !noalias !211 ; 5 uses
  %i.s = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i.i to i1
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !208, !noalias !211
  %i.t = trunc nuw i64 %.sroa.7.0.copyload.i.i.i.i.i to i1
  %or.cond7.i.i.i.i.i = select i1 %i.s, i1 %i.t, i1 false
  %i.u = trunc nuw i64 %.sroa.10.0.copyload.i.i.i.i.i to i1
  %or.cond8.i.i.i.i.i = select i1 %or.cond7.i.i.i.i.i, i1 %i.u, i1 false
  br i1 %or.cond8.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.e unwind label %bb.d, !noalias !211

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !64, !alias.scope !213, !noalias !211, !noundef !9 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %bb.x, label %common.resume.sink.split.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !64, !alias.scope !213, !noalias !211, !noundef !9 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i: ; preds = %bb.e
  %.val1.i.i.i13.i26.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !208, !noalias !211, !nonnull !9, !noundef !9
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13.i26.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !206
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !206
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

common.resume.sink.split.i.i.i.i.i:               ; preds = %bb.t, %bb.d
  %.val2.i.i.i9.sink.i.i.i.i.i = phi i64 [ %.val2.i.i.i9.i.i.i.i.i, %bb.t ], [ %.val2.i.i.i.i.i.i.i.i, %bb.d ]
  %common.resume.op.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.t ], [ %i.v, %bb.d ]
  %.val3.i.i.i10.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !208, !noalias !211, !nonnull !9, !noundef !9
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i10.i.i.i.i.i, i64 noundef %.val2.i.i.i9.sink.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !211
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.pre21.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.y = load i64, ptr %i.o, align 8, !alias.scope !222, !noalias !225 ; 4 uses
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !222, !noalias !225, !nonnull !9 ; 3 uses
  %i.aa = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %i.y
  br i1 %i.aa, label %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.val2.i.lcssa.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.f ], [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.h ], [ %.sroa.11.0.copyload.i.i.i.i.i, %bb.i ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.lcssa.i.i.i.i.i, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !227

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.5.0.copyload.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !228, !noalias !229, !noundef !9
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i
  %i.af = icmp ult i64 %.sroa.8.0.copyload.i.i.i.i.i, %i.y
  br i1 %i.af, label %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i, label %bb.g

_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i: ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.8.0.copyload.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !range !228, !noalias !229, !noundef !9
  %i.aj = icmp eq i8 %i.ai, 1
  br i1 %i.aj, label %bb.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i
  %i.ak = icmp ult i64 %.sroa.11.0.copyload.i.i.i.i.i, %i.y
  br i1 %i.ak, label %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i, label %bb.g

_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.11.0.copyload.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i8, ptr %i.am, align 8, !range !228, !noalias !229, !noundef !9
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %2, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

2:                                                ; preds = %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %bb.k, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i.i.i:                         ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #24
          to label %bb.x unwind label %bb.v, !noalias !211

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i: ; preds = %2, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i = phi i1 [ false, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.i.i.i.i.i ], [ false, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.2.i.i.i.i.i ], [ true, %2 ], [ false, %_RNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00B9_.exit.i.1.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i) ]
  %i.ap = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !227, !nonnull !9, !align !62, !noundef !9
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ap, i64 noundef %.sroa.5.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.k unwind label %.loopexit.i.i.i, !noalias !227 ; 2 uses

bb.k:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_00EB1L_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !227, !nonnull !9, !align !62, !noundef !9
  %i.as = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ar, i64 noundef %.sroa.8.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.l unwind label %.loopexit.i.i.i, !noalias !227 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noalias !227, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !227, !noundef !9
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !noalias !227, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !227, !noundef !9
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !227, !nonnull !9, !align !62, !noundef !9
  %i.be = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.bd, i64 noundef %.sroa.5.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.o unwind label %.loopexit.i.i.i, !noalias !227 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %.val4.i.i.i.i, align 8, !noalias !227, !nonnull !9, !align !62, !noundef !9
  %i.bg = invoke noundef nonnull align 8 ptr @_RNvXso_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_EINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.bf, i64 noundef %.sroa.11.0.copyload.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.p unwind label %.loopexit.i.i.i, !noalias !227 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !227, !noundef !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !227, !noundef !9
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !227, !noundef !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !227, !noundef !9
  %i.bq = icmp eq i64 %i.bn, %i.bp
  %or.cond.i.i.i.i.i = and i1 %.lcssa.i.i.i.i.i, %i.bq
  br i1 %or.cond.i.i.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m, %bb.l
  %.sroa.8.0.i.i.i.i = phi i64 [ %.sroa.11.0.copyload.i.i.i.i.i, %bb.r ], [ undef, %bb.q ], [ undef, %bb.p ], [ undef, %bb.m ], [ undef, %bb.l ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.r ], [ undef, %bb.q ], [ undef, %bb.p ], [ undef, %bb.m ], [ undef, %bb.l ]
  %storemerge.i.i.i.i.i = phi i1 [ true, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.u unwind label %bb.t, !noalias !211

bb.t:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i9.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !64, !alias.scope !230, !noalias !211, !noundef !9 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i.i.i9.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.x, label %common.resume.sink.split.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %.val.i.i.i12.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !64, !alias.scope !230, !noalias !211, !noundef !9 ; 2 uses
  %i.bt = icmp eq i64 %.val.i.i.i12.i.i.i.i.i, 0
  br i1 %i.bt, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i: ; preds = %bb.u
  %.val1.i.i.i13.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !208, !noalias !211, !nonnull !9, !noundef !9
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13.i.i.i.i.i, i64 noundef %.val.i.i.i12.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !206
  br i1 %storemerge.i.i.i.i.i, label %bb.w, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

bb.v:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !211
  unreachable

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !206
  br i1 %storemerge.i.i.i.i.i, label %bb.w, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

bb.w:                                             ; preds = %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.4.018.i.i.i, align 8, !noalias !206
  %.sroa.6.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i, i64 8
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.6.16..sroa_idx.i.i.i.i, align 8, !noalias !206
  %.sroa.75.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i, i64 16
  store i64 %.sroa.8.0.i.i.i.i, ptr %.sroa.75.16..sroa_idx.i.i.i.i, align 8, !noalias !206
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i, i64 24
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i

bb.x:                                             ; preds = %bb.t, %bb.j, %common.resume.sink.split.i.i.i.i.i, %bb.d
  %eh.lpad-body.ph.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.ph.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i ], [ %lpad.phi.i.i.i, %bb.j ], [ %i.v, %bb.d ], [ %i.br, %bb.t ]
  %i.bw = invoke noundef i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropAjj3_E3lenCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.y, !noalias !206 ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !206
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i: ; preds = %bb.w, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i
  %.pn15.i.i.i.i = phi ptr [ %i.bv, %bb.w ], [ %.sroa.4.018.i.i.i, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.thread.i.i.i.i ], [ %.sroa.4.018.i.i.i, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0B7_.exit.i.i.i.i ], [ %.sroa.4.018.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.i.i.i.i ], [ %.sroa.4.018.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr.exit.sink.split.i.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !207
  %.not.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map19filter_map_try_foldTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBa_6option6OptionjEj3_EAjB2g_INtNtNtB1j_3vec13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2q_zENCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channelss_0NCINvNtB2v_16in_place_collect24write_in_place_with_dropB2k_E0E0B3M_.exit.i.i.i
  %.val.i.pre = load ptr, ptr %i.g, align 8, !alias.scope !239
  %.val1.i.pre = load ptr, ptr %i.f, align 8, !alias.scope !239
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val1.i = phi ptr [ %i.h, %bb.a ], [ %.val1.i.pre, %.loopexit.loopexit ]
  %.val.i = phi ptr [ %i.i, %bb.a ], [ %.val.i.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.pn15.i.i.i.i, %.loopexit.loopexit ]
  %i.by = ptrtoint ptr %.val1.i to i64
  %i.bz = ptrtoint ptr %.val.i to i64
  %i.ca = sub nuw i64 %i.by, %i.bz
  %i.cb = udiv exact i64 %i.ca, 72
  store i64 0, ptr %i.c, align 8, !alias.scope !239
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !239
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !239
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !239
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.cb)
          to label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit unwind label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = icmp eq i64 %i.d, 0
  br i1 %i.cd, label %.body, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = mul nuw i64 %i.d, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !242
  br label %.body

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE32forget_allocation_drop_remainingCsdsTQD3x2eOp_3exr.exit: ; preds = %.loopexit
  %i.cf = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i to i64
  %i.cg = ptrtoint ptr %i.e to i64
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = udiv exact i64 %i.ch, 24
  %i.cj = mul nuw i64 %i.d, 3
  store i64 %i.cj, ptr %0, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ci, ptr %i.cl, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0), !noalias !245
  ret void

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %.pn

bb.ab:                                            ; preds = %.body
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4wP2HXfJTCR_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1b_3zip3ZipINtNtB4_9into_iter8IntoIterINtB4_3VechEEINtNtNtB1f_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB3i_10decompresss_0EB2C_EB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !9
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1i_3VechEEINtNtNtBc_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2H_10decompresss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropB21_ENCINvNtB1i_16in_place_collect24write_in_place_with_dropB21_E0INtNtBc_6result6ResultB4E_zEEB2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1u_3VechEEINtNtNtB4_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEENCNvB2T_10decompresss_0EEB2X_(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #24
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
end_hunk_2
