Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/display?download=true
inline.NumInlined: 26
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hash_Key = type { [4 x i32], i32 }
%struct.Basic_Info = type { i32, i32, i32 }
%struct.KeyInfo = type { %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s }
%struct.KeyInfo_s = type { i32, i32, i32 }

@g_board_size = external local_unnamed_addr global [2 x i32], align 4
@g_board = external local_unnamed_addr global [2 x [32 x i32]], align 16
@g_norm_hashkey = external local_unnamed_addr global %struct.Hash_Key, align 4
@g_flipV_hashkey = external local_unnamed_addr global %struct.Hash_Key, align 4
@g_flipH_hashkey = external local_unnamed_addr global %struct.Hash_Key, align 4
@g_flipVH_hashkey = external local_unnamed_addr global %struct.Hash_Key, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d %d - %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/obsequi/display.c\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Board is inconsistent.\0A\00", align 1
@g_trans_table = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Hash entry: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c" Key:%8X:%8X:%8X:%8X, n:%u, d:%d, w:%d, v:%d, t:%d, int:%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Number of rows    = %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Number of columns = %d\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%7s %15s %15s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%7s %7s %7s %7s %7s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Real\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Safe\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"%6d) %7d %7d %7d %7d  %s\0A\00", align 1
@g_info = external local_unnamed_addr global [2 x [32 x %struct.Basic_Info]], align 16
@.str.17 = private unnamed_addr constant [25 x i8] c"Totals: %7d %7d %7d %7d\0A\00", align 1
@g_info_totals = external local_unnamed_addr global [2 x %struct.Basic_Info], align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"%X\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Key: %8X:%8X:%8X:%8X, Code: %8X.\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Too large???\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c",%3d\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"bit1_index equal to -1\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"%3d:%3d %8X \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%3d:%3d \00", align 1
@g_keyinfo = external local_unnamed_addr global [2 x [32 x [32 x %struct.KeyInfo]]], align 16
@.str.26 = private unnamed_addr constant [14 x i8] c"(%2d,%2d)>>  \00", align 1
@g_print = external local_unnamed_addr global i32, align 4
@current_search_state.str = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"Nodes: %s.\0A%d %d %d %d %d %d %d %d %d.\00", align 1
@g_num_nodes = external local_unnamed_addr global i64, align 8
@g_move_number = external local_unnamed_addr global [128 x i32], align 16
@.str.28 = private unnamed_addr constant [20 x i8] c"HashKey Incorrect.\0A\00", align 1
@g_zobrist = external local_unnamed_addr global [32 x [32 x i32]], align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"Invalid hash code.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @check_hash_code_sanity() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.Hash_Key, align 8           ; 7 uses
  %1 = alloca %struct.Hash_Key, align 8           ; 7 uses
  %2 = alloca %struct.Hash_Key, align 8           ; 7 uses
  %3 = alloca %struct.Hash_Key, align 8           ; 7 uses
  %4 = alloca %struct.Hash_Key, align 8           ; 9 uses
  %5 = alloca %struct.Hash_Key, align 8           ; 9 uses
  %6 = alloca %struct.Hash_Key, align 8           ; 9 uses
  %7 = alloca %struct.Hash_Key, align 8           ; 9 uses
  %8 = alloca %struct.Hash_Key, align 8           ; 9 uses
  %9 = alloca %struct.Hash_Key, align 8           ; 9 uses
  %10 = alloca %struct.Hash_Key, align 8          ; 9 uses
  %11 = alloca %struct.Hash_Key, align 8          ; 9 uses
  %i.a = load i32, ptr @g_board_size, align 4, !tbaa !11 ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_board_size, i64 4), align 4, !tbaa !11 ; 8 uses
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge222.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.4.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.5.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.6.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.7.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.4.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.5.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.6.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.7.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.5.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.6.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.7.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.4.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.5.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.7.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.4.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.5.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.7.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.5.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.7.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.7.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge222.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.e = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = mul nuw nsw i64 %indvars.iv, %i.e        ; 2 uses
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = xor i32 %i.i, -1
  %i.k = add nsw i32 %i.a, %i.j
  %i.l = mul nuw nsw i32 %i.k, %i.b               ; 4 uses
  %i.m = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.n = trunc nuw i64 %i.h to i32                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.m
  %.0220 = phi i32 [ 0, %.preheader ], [ %i.p, %bb.m ] ; 8 uses
  %i.o = load i32, ptr %i.g, align 4, !tbaa !11
  %i.p = add nuw nsw i32 %.0220, 1                ; 2 uses
  %i.q = shl nuw i32 2, %.0220
  %i.r = and i32 %i.o, %i.q
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw nsw i32 %.0220, %i.m             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false)
  %i.t = lshr i32 %i.s, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.d, label %check_hashkey_bit_set.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.s) ; 0 uses
  %i.ab = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.ac = icmp sgt i32 %i.ab, -2
  br i1 %i.ac, label %.lr.ph.i.i, label %print_bitboard.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ae) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ag = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.ah = sext i32 %i.ag to i64
  %.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.ah
  br i1 %.not.i.i, label %print_bitboard.exit.i, label %.lr.ph.i.i, !llvm.loop !0

print_bitboard.exit.i:                            ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.0.copyload.i = load i32, ptr %11, align 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %.sroa.4.0.copyload.i, i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.6.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit

check_hashkey_bit_set.exit:                       ; preds = %bb.c, %print_bitboard.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aj = xor i32 %.0220, -1
  %i.ak = add nsw i32 %i.b, %i.aj                 ; 2 uses
  %i.al = add nsw i32 %i.ak, %i.m                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false)
  %i.am = sdiv i32 %i.al, 32
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %10, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11
  %i.aq = and i32 %i.al, 31
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.ap, %i.ar
  %.not.i51 = icmp eq i32 %i.as, 0
  br i1 %.not.i51, label %bb.e, label %check_hashkey_bit_set.exit66

bb.e:                                             ; preds = %check_hashkey_bit_set.exit
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.al) ; 0 uses
  %i.au = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.av = icmp sgt i32 %i.au, -2
  br i1 %i.av, label %.lr.ph.i.i62, label %print_bitboard.exit.i52

.lr.ph.i.i62:                                     ; preds = %bb.e, %.lr.ph.i.i62
  %indvars.iv.i.i63 = phi i64 [ %indvars.iv.next.i.i64, %.lr.ph.i.i62 ], [ 0, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i63
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ax) ; 0 uses
  %indvars.iv.next.i.i64 = add nuw nsw i64 %indvars.iv.i.i63, 1
  %i.az = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.ba = sext i32 %i.az to i64
  %.not.i.i65 = icmp sgt i64 %indvars.iv.i.i63, %i.ba
  br i1 %.not.i.i65, label %print_bitboard.exit.i52, label %.lr.ph.i.i62, !llvm.loop !0

print_bitboard.exit.i52:                          ; preds = %.lr.ph.i.i62, %bb.e
  %.sroa.0.0.copyload.i53 = load i32, ptr %10, align 8
  %.sroa.4.0.copyload.i55 = load i32, ptr %.sroa.4.0..sroa_idx.i54, align 4
  %.sroa.5.0.copyload.i57 = load i32, ptr %.sroa.5.0..sroa_idx.i56, align 8
  %.sroa.6.0.copyload.i59 = load i32, ptr %.sroa.6.0..sroa_idx.i58, align 4
  %.sroa.7.0.copyload.i61 = load i32, ptr %.sroa.7.0..sroa_idx.i60, align 8
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i53, i32 noundef %.sroa.4.0.copyload.i55, i32 noundef %.sroa.5.0.copyload.i57, i32 noundef %.sroa.6.0.copyload.i59, i32 noundef %.sroa.7.0.copyload.i61) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit66

check_hashkey_bit_set.exit66:                     ; preds = %check_hashkey_bit_set.exit, %print_bitboard.exit.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bc = add nsw i32 %.0220, %i.l                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) @g_flipH_hashkey, i64 20, i1 false)
  %i.bd = sdiv i32 %i.bc, 32
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %9, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11
  %i.bh = and i32 %i.bc, 31
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = and i32 %i.bg, %i.bi
  %.not.i67 = icmp eq i32 %i.bj, 0
  br i1 %.not.i67, label %bb.f, label %check_hashkey_bit_set.exit82

bb.f:                                             ; preds = %check_hashkey_bit_set.exit66
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.bc) ; 0 uses
  %i.bl = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.bm = icmp sgt i32 %i.bl, -2
  br i1 %i.bm, label %.lr.ph.i.i78, label %print_bitboard.exit.i68

.lr.ph.i.i78:                                     ; preds = %bb.f, %.lr.ph.i.i78
  %indvars.iv.i.i79 = phi i64 [ %indvars.iv.next.i.i80, %.lr.ph.i.i78 ], [ 0, %bb.f ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i79
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.bo) ; 0 uses
  %indvars.iv.next.i.i80 = add nuw nsw i64 %indvars.iv.i.i79, 1
  %i.bq = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.br = sext i32 %i.bq to i64
  %.not.i.i81 = icmp sgt i64 %indvars.iv.i.i79, %i.br
  br i1 %.not.i.i81, label %print_bitboard.exit.i68, label %.lr.ph.i.i78, !llvm.loop !0

print_bitboard.exit.i68:                          ; preds = %.lr.ph.i.i78, %bb.f
  %.sroa.0.0.copyload.i69 = load i32, ptr %9, align 8
  %.sroa.4.0.copyload.i71 = load i32, ptr %.sroa.4.0..sroa_idx.i70, align 4
  %.sroa.5.0.copyload.i73 = load i32, ptr %.sroa.5.0..sroa_idx.i72, align 8
  %.sroa.6.0.copyload.i75 = load i32, ptr %.sroa.6.0..sroa_idx.i74, align 4
  %.sroa.7.0.copyload.i77 = load i32, ptr %.sroa.7.0..sroa_idx.i76, align 8
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i69, i32 noundef %.sroa.4.0.copyload.i71, i32 noundef %.sroa.5.0.copyload.i73, i32 noundef %.sroa.6.0.copyload.i75, i32 noundef %.sroa.7.0.copyload.i77) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit82

check_hashkey_bit_set.exit82:                     ; preds = %check_hashkey_bit_set.exit66, %print_bitboard.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bt = add nsw i32 %i.ak, %i.l                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) @g_flipVH_hashkey, i64 20, i1 false)
  %i.bu = sdiv i32 %i.bt, 32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !11
  %i.by = and i32 %i.bt, 31
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = and i32 %i.bx, %i.bz
  %.not.i83 = icmp eq i32 %i.ca, 0
  br i1 %.not.i83, label %bb.g, label %check_hashkey_bit_set.exit98

bb.g:                                             ; preds = %check_hashkey_bit_set.exit82
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.bt) ; 0 uses
  %i.cc = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.cd = icmp sgt i32 %i.cc, -2
  br i1 %i.cd, label %.lr.ph.i.i94, label %print_bitboard.exit.i84

.lr.ph.i.i94:                                     ; preds = %bb.g, %.lr.ph.i.i94
  %indvars.iv.i.i95 = phi i64 [ %indvars.iv.next.i.i96, %.lr.ph.i.i94 ], [ 0, %bb.g ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i95
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.cf) ; 0 uses
  %indvars.iv.next.i.i96 = add nuw nsw i64 %indvars.iv.i.i95, 1
  %i.ch = load i32, ptr @g_board_size, align 4, !tbaa !11
  %i.ci = sext i32 %i.ch to i64
  %.not.i.i97 = icmp sgt i64 %indvars.iv.i.i95, %i.ci
  br i1 %.not.i.i97, label %print_bitboard.exit.i84, label %.lr.ph.i.i94, !llvm.loop !0

print_bitboard.exit.i84:                          ; preds = %.lr.ph.i.i94, %bb.g
  %.sroa.0.0.copyload.i85 = load i32, ptr %8, align 8
  %.sroa.4.0.copyload.i87 = load i32, ptr %.sroa.4.0..sroa_idx.i86, align 4
  %.sroa.5.0.copyload.i89 = load i32, ptr %.sroa.5.0..sroa_idx.i88, align 8
  %.sroa.6.0.copyload.i91 = load i32, ptr %.sroa.6.0..sroa_idx.i90, align 4
  %.sroa.7.0.copyload.i93 = load i32, ptr %.sroa.7.0..sroa_idx.i92, align 8
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i85, i32 noundef %.sroa.4.0.copyload.i87, i32 noundef %.sroa.5.0.copyload.i89, i32 noundef %.sroa.6.0.copyload.i91, i32 noundef %.sroa.7.0.copyload.i93) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit98

check_hashkey_bit_set.exit98:                     ; preds = %check_hashkey_bit_set.exit82, %print_bitboard.exit.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ck = add nuw nsw i32 %.0220, %i.n            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false)
  %i.cl = lshr i32 %i.ck, 5
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !11
  %i.cp = and i32 %i.ck, 31
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = and i32 %i.co, %i.cq
  %.not.i99 = icmp eq i32 %i.cr, 0
  br i1 %.not.i99, label %check_hashkey_bit_not_set.exit, label %bb.i

end_hunk_0
