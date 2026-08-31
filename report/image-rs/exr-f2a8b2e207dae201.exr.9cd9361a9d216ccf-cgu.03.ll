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
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4, !noalias !7, !noundef !9 ; 3 uses
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
  %4 = ptrtoint ptr %i.ao to i64
  %5 = ptrtoint ptr %i.c to i64
  store i64 %5, ptr %i.b, align 8, !noalias !15
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i64 %4, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !15
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
  %6 = ptrtoint ptr %i.av to i64
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
  %.sroa.019.053 = phi i64 [ %6, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.noexc2.preheader, label %._crit_edge

.noexc2.preheader:                                ; preds = %.preheader
  %.sroa.019.053.ptr = inttoptr i64 %.sroa.019.053 to ptr
  br label %.noexc2

.noexc2:                                          ; preds = %.noexc2.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.019.053.ptr, %.noexc2.preheader ]
  %.sroa.5.146 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.052, %.noexc2.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge.loopexit

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
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsdsTQD3x2eOp_3exr.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsdsTQD3x2eOp_3exr.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

._crit_edge.loopexit:                             ; preds = %.noexc2
  %7 = ptrtoint ptr %i.az to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.bb, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.bc, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.019.1.lcssa = phi i64 [ %.sroa.019.053, %.preheader ], [ %7, %._crit_edge.loopexit ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.051, -1                ; 2 uses
  %i.cd = load ptr, ptr %0, align 8, !alias.scope !34, !noalias !37, !nonnull !9, !noundef !9
  %i.ce = sub nsw i64 0, %i.cb
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRRINtNtBU_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEB28_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit unwind label %bb.k ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.aq, %i.ch            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !39
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !42

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ck, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1B_.exit ], [ %i.db, %.lr.ph.i ]
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cm
  %i.co = and i64 %i.cn, %i.aq                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !9
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.n, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !10

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
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !39
  %i.da = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !43

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
  %i.dj = load ptr, ptr %0, align 8, !alias.scope !25, !noalias !26, !nonnull !9, !noundef !9
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !44 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
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

end_hunk_0
begin_hunk_1_@_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsTQD3x2eOp_3exr:bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !18
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.k = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
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
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !18
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !18

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
  br i1 %i.c, label %bb.h, label %bb.d, !prof !10

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
  br i1 %or.cond10.i.i, label %bb.f, label %bb.e, !prof !17

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
  br i1 %or.cond.i.i, label %bb.f, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !18

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !297
  %i.s = tail call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !297 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !297
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !297
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
  %2 = ptrtoint ptr %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ad, i8 -1, i64 %i.o, i1 false), !noalias !302
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.h, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i
  %.sroa.10.0 = phi i64 [ %i.y, %bb.h ], [ %.sroa.12.012.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i ], [ %.sroa.07.0.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.x, %bb.h ], [ %.sroa.7.013.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i ], [ %i.aa, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.h ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.thread.i ], [ %2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsdsTQD3x2eOp_3exr.exit.i ], [ ptrtoint (ptr @0 to i64), %bb.a ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE3popB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1                     ; 8 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i64, ptr %1, align 8, !range !64, !noundef !9
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 14 uses
  %i.i = icmp ult i64 %i.b, 576460752303423489
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !9 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !9 ; 7 uses
  %i.n = icmp eq i64 %i.d, 0
  br i1 %i.n, label %_RNCNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE3pop0B1n_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i64 %i.k, ptr %i.h, align 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.o = add nsw i64 %i.b, -3
  %.not.not9.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.13.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.ar, %.lr.ph.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i = phi i64 [ 1, %bb.c ], [ %i.av, %.lr.ph.i.i ] ; 4 uses
  %i.p = add nsw i64 %i.b, -2
  %i.q = icmp eq i64 %.sroa.05.0.lcssa.i.i, %i.p
  br i1 %i.q, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  store i64 %i.k, ptr %i.r, align 8
  %.sroa.7.16..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.m, ptr %.sroa.7.16..sroa_idx17.i.i, align 8
  %i.t = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  tail call void @llvm.assume(i1 %i.t)
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.0.lcssa.i.i ; 2 uses
  store i64 %i.k, ptr %i.u, align 8
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.m, ptr %.sroa.7.16..sroa_idx.i.i, align 8
  %i.v = icmp samesign ult i64 %.sroa.13.0.lcssa.i.i, %i.d
  tail call void @llvm.assume(i1 %i.v)
  %.not10.i.i.i = icmp eq i64 %.sroa.13.0.lcssa.i.i, 0
  br i1 %.not10.i.i.i, label %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i.i
  %storemerge11.i.i.i.ph = phi i64 [ %.sroa.13.0.lcssa.i.i, %bb.d ], [ %.sroa.05.0.lcssa.i.i, %.thread.i.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %storemerge11.i.i.i = phi i64 [ %i.x, %bb.e ], [ %storemerge11.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.w = add nsw i64 %storemerge11.i.i.i, -1
  %i.x = lshr i64 %i.w, 1                         ; 4 uses
  %i.y = icmp samesign ult i64 %i.x, %i.d
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.x ; 3 uses
  %.val2.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val3.i.i.i = load i64, ptr %i.aa, align 8, !noundef !9 ; 2 uses
  %i.ab = icmp eq i64 %.val3.i.i.i, %i.m
  %i.ac = icmp ule i64 %.val2.i.i.i, %i.k
  %i.ad = icmp ule i64 %.val3.i.i.i, %i.m
  %i.ae = select i1 %i.ab, i1 %i.ac, i1 %i.ad
  br i1 %i.ae, label %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %storemerge11.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.05.011.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.13.010.i.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ 0, %bb.c ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.05.011.i.i ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.05.011.i.i, 1    ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, %i.d
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ah ; 2 uses
  %.val.i.i = load i64, ptr %i.ag, align 8
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.val16.i.i = load i64, ptr %i.ak, align 8, !noundef !9 ; 2 uses
  %.val17.i.i = load i64, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val18.i.i = load i64, ptr %i.al, align 8, !noundef !9 ; 2 uses
  %i.am = icmp eq i64 %.val18.i.i, %.val16.i.i
  %i.an = icmp ule i64 %.val17.i.i, %.val.i.i
  %i.ao = icmp ule i64 %.val18.i.i, %.val16.i.i
  %i.ap = select i1 %i.am, i1 %i.an, i1 %i.ao
  %i.aq = zext i1 %i.ap to i64
  %i.ar = add nuw nsw i64 %.sroa.05.011.i.i, %i.aq ; 4 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ar
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.010.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.au = shl nuw nsw i64 %i.ar, 1                ; 2 uses
  %i.av = or disjoint i64 %i.au, 1                ; 2 uses
  %.not.not.not.i.i = icmp samesign ult i64 %i.au, %i.o
  br i1 %.not.not.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i, %bb.d
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %storemerge11.i.i.i, %.lr.ph.i.i.i ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %storemerge.lcssa.i.i.i ; 2 uses
  store i64 %i.k, ptr %i.aw, align 8
  %.sroa.13.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.m, ptr %.sroa.13.16..sroa_idx.i.i.i, align 8
  br label %_RNCNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE3pop0B1n_.exit

_RNCNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE3pop0B1n_.exit: ; preds = %bb.b, %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i
  %.sroa.4.0.i = phi i64 [ %i.m, %bb.b ], [ %.sroa.4.0.copyload.i, %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.0.0.copyload.i, %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE19sift_down_to_bottomB1l_.exit.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNCNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE3pop0B1n_.exit
  %storemerge = phi i64 [ 1, %_RNCNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB7_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE3pop0B1n_.exit ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE4pushB1l_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 7 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.d = load i64, ptr %0, align 8, !range !64, !alias.scope !303, !noundef !9
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8push_mutBP_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #26
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8push_mutBP_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8push_mutBP_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !303, !nonnull !9, !noundef !9 ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.b ; 2 uses
  store i64 %1, ptr %i.h, align 8, !noalias !303
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %2, ptr %i.i, align 8, !noalias !303
  %i.j = add nuw nsw i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !303
  %.not10.i = icmp eq i64 %i.b, 0
  br i1 %.not10.i, label %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE7sift_upB1l_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8push_mutBP_.exit, %bb.c
  %storemerge11.i = phi i64 [ %i.l, %bb.c ], [ %i.b, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8push_mutBP_.exit ] ; 3 uses
  %i.k = add nsw i64 %storemerge11.i, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = icmp samesign ule i64 %i.l, %i.b
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %.val2.i = load i64, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val3.i = load i64, ptr %i.o, align 8, !noundef !9 ; 2 uses
  %i.p = icmp eq i64 %.val3.i, %2
  %i.q = icmp ule i64 %.val2.i, %1
  %i.r = icmp ule i64 %.val3.i, %2
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r
  br i1 %i.s, label %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE7sift_upB1l_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %storemerge11.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE7sift_upB1l_.exit, label %.lr.ph.i

_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE7sift_upB1l_.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman20build_encoding_table13HeapFrequencyE8push_mutBP_.exit
end_hunk_1
