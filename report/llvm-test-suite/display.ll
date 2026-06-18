inline.NumInlined: 26
inline.NumDeleted: 3
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
  %i.a = load i32, ptr @g_board_size, align 4, !tbaa !4 ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_board_size, i64 4), align 4, !tbaa !4 ; 8 uses
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
  %i.l = mul nsw i32 %i.k, %i.b                   ; 4 uses
  %i.m = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.n = trunc nuw i64 %i.h to i32                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.m
  %.048220 = phi i32 [ 0, %.preheader ], [ %i.p, %bb.m ] ; 8 uses
  %i.o = load i32, ptr %i.g, align 4, !tbaa !4
  %i.p = add nuw nsw i32 %.048220, 1              ; 2 uses
  %i.q = shl nuw i32 2, %.048220
  %i.r = and i32 %i.o, %i.q
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw nsw i32 %.048220, %i.m           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false)
  %i.t = lshr i32 %i.s, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.d, label %check_hashkey_bit_set.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.s) ; 0 uses
  %i.ab = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ac = icmp sgt i32 %i.ab, -2
  br i1 %i.ac, label %.lr.ph.i.i, label %print_bitboard.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ae) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ag = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ah = sext i32 %i.ag to i64
  %.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.ah
  br i1 %.not.i.i, label %print_bitboard.exit.i, label %.lr.ph.i.i, !llvm.loop !8

print_bitboard.exit.i:                            ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.0.copyload.i = load i32, ptr %11, align 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %.sroa.4.0.copyload.i, i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.6.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit

check_hashkey_bit_set.exit:                       ; preds = %print_bitboard.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aj = xor i32 %.048220, -1
  %i.ak = add nsw i32 %i.b, %i.aj                 ; 2 uses
  %i.al = add nsw i32 %i.ak, %i.m                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false)
  %i.am = sdiv i32 %i.al, 32
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %10, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = and i32 %i.al, 31
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.ap, %i.ar
  %.not.i51 = icmp eq i32 %i.as, 0
  br i1 %.not.i51, label %bb.e, label %check_hashkey_bit_set.exit66

bb.e:                                             ; preds = %check_hashkey_bit_set.exit
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.al) ; 0 uses
  %i.au = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.av = icmp sgt i32 %i.au, -2
  br i1 %i.av, label %.lr.ph.i.i62, label %print_bitboard.exit.i52

.lr.ph.i.i62:                                     ; preds = %bb.e, %.lr.ph.i.i62
  %indvars.iv.i.i63 = phi i64 [ %indvars.iv.next.i.i64, %.lr.ph.i.i62 ], [ 0, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i63
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ax) ; 0 uses
  %indvars.iv.next.i.i64 = add nuw nsw i64 %indvars.iv.i.i63, 1
  %i.az = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64
  %.not.i.i65 = icmp sgt i64 %indvars.iv.i.i63, %i.ba
  br i1 %.not.i.i65, label %print_bitboard.exit.i52, label %.lr.ph.i.i62, !llvm.loop !8

print_bitboard.exit.i52:                          ; preds = %.lr.ph.i.i62, %bb.e
  %.sroa.0.0.copyload.i53 = load i32, ptr %10, align 8
  %.sroa.4.0.copyload.i55 = load i32, ptr %.sroa.4.0..sroa_idx.i54, align 4
  %.sroa.5.0.copyload.i57 = load i32, ptr %.sroa.5.0..sroa_idx.i56, align 8
  %.sroa.6.0.copyload.i59 = load i32, ptr %.sroa.6.0..sroa_idx.i58, align 4
  %.sroa.7.0.copyload.i61 = load i32, ptr %.sroa.7.0..sroa_idx.i60, align 8
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i53, i32 noundef %.sroa.4.0.copyload.i55, i32 noundef %.sroa.5.0.copyload.i57, i32 noundef %.sroa.6.0.copyload.i59, i32 noundef %.sroa.7.0.copyload.i61) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit66

check_hashkey_bit_set.exit66:                     ; preds = %print_bitboard.exit.i52, %check_hashkey_bit_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bc = add nsw i32 %.048220, %i.l              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) @g_flipH_hashkey, i64 20, i1 false)
  %i.bd = sdiv i32 %i.bc, 32
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %9, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = and i32 %i.bc, 31
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = and i32 %i.bg, %i.bi
  %.not.i67 = icmp eq i32 %i.bj, 0
  br i1 %.not.i67, label %bb.f, label %check_hashkey_bit_set.exit82

bb.f:                                             ; preds = %check_hashkey_bit_set.exit66
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.bc) ; 0 uses
  %i.bl = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.bm = icmp sgt i32 %i.bl, -2
  br i1 %i.bm, label %.lr.ph.i.i78, label %print_bitboard.exit.i68

.lr.ph.i.i78:                                     ; preds = %bb.f, %.lr.ph.i.i78
  %indvars.iv.i.i79 = phi i64 [ %indvars.iv.next.i.i80, %.lr.ph.i.i78 ], [ 0, %bb.f ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i79
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.bo) ; 0 uses
  %indvars.iv.next.i.i80 = add nuw nsw i64 %indvars.iv.i.i79, 1
  %i.bq = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64
  %.not.i.i81 = icmp sgt i64 %indvars.iv.i.i79, %i.br
  br i1 %.not.i.i81, label %print_bitboard.exit.i68, label %.lr.ph.i.i78, !llvm.loop !8

print_bitboard.exit.i68:                          ; preds = %.lr.ph.i.i78, %bb.f
  %.sroa.0.0.copyload.i69 = load i32, ptr %9, align 8
  %.sroa.4.0.copyload.i71 = load i32, ptr %.sroa.4.0..sroa_idx.i70, align 4
  %.sroa.5.0.copyload.i73 = load i32, ptr %.sroa.5.0..sroa_idx.i72, align 8
  %.sroa.6.0.copyload.i75 = load i32, ptr %.sroa.6.0..sroa_idx.i74, align 4
  %.sroa.7.0.copyload.i77 = load i32, ptr %.sroa.7.0..sroa_idx.i76, align 8
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i69, i32 noundef %.sroa.4.0.copyload.i71, i32 noundef %.sroa.5.0.copyload.i73, i32 noundef %.sroa.6.0.copyload.i75, i32 noundef %.sroa.7.0.copyload.i77) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit82

check_hashkey_bit_set.exit82:                     ; preds = %print_bitboard.exit.i68, %check_hashkey_bit_set.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bt = add nsw i32 %i.ak, %i.l                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) @g_flipVH_hashkey, i64 20, i1 false)
  %i.bu = sdiv i32 %i.bt, 32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = and i32 %i.bt, 31
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = and i32 %i.bx, %i.bz
  %.not.i83 = icmp eq i32 %i.ca, 0
  br i1 %.not.i83, label %bb.g, label %check_hashkey_bit_set.exit98

bb.g:                                             ; preds = %check_hashkey_bit_set.exit82
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.bt) ; 0 uses
  %i.cc = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.cd = icmp sgt i32 %i.cc, -2
  br i1 %i.cd, label %.lr.ph.i.i94, label %print_bitboard.exit.i84

.lr.ph.i.i94:                                     ; preds = %bb.g, %.lr.ph.i.i94
  %indvars.iv.i.i95 = phi i64 [ %indvars.iv.next.i.i96, %.lr.ph.i.i94 ], [ 0, %bb.g ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i95
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.cf) ; 0 uses
  %indvars.iv.next.i.i96 = add nuw nsw i64 %indvars.iv.i.i95, 1
  %i.ch = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ci = sext i32 %i.ch to i64
  %.not.i.i97 = icmp sgt i64 %indvars.iv.i.i95, %i.ci
  br i1 %.not.i.i97, label %print_bitboard.exit.i84, label %.lr.ph.i.i94, !llvm.loop !8

print_bitboard.exit.i84:                          ; preds = %.lr.ph.i.i94, %bb.g
  %.sroa.0.0.copyload.i85 = load i32, ptr %8, align 8
  %.sroa.4.0.copyload.i87 = load i32, ptr %.sroa.4.0..sroa_idx.i86, align 4
  %.sroa.5.0.copyload.i89 = load i32, ptr %.sroa.5.0..sroa_idx.i88, align 8
  %.sroa.6.0.copyload.i91 = load i32, ptr %.sroa.6.0..sroa_idx.i90, align 4
  %.sroa.7.0.copyload.i93 = load i32, ptr %.sroa.7.0..sroa_idx.i92, align 8
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i85, i32 noundef %.sroa.4.0.copyload.i87, i32 noundef %.sroa.5.0.copyload.i89, i32 noundef %.sroa.6.0.copyload.i91, i32 noundef %.sroa.7.0.copyload.i93) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_set.exit98

check_hashkey_bit_set.exit98:                     ; preds = %print_bitboard.exit.i84, %check_hashkey_bit_set.exit82
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ck = add nuw nsw i32 %.048220, %i.n          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false)
  %i.cl = lshr i32 %i.ck, 5
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = and i32 %i.ck, 31
  %i.cq = shl nuw i32 1, %i.cp
  %i.cr = and i32 %i.co, %i.cq
  %.not.i99 = icmp eq i32 %i.cr, 0
  br i1 %.not.i99, label %check_hashkey_bit_not_set.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ck) ; 0 uses
  %i.ct = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.cu = icmp sgt i32 %i.ct, -2
  br i1 %i.cu, label %.lr.ph.i.i110, label %print_bitboard.exit.i100

.lr.ph.i.i110:                                    ; preds = %bb.i, %.lr.ph.i.i110
  %indvars.iv.i.i111 = phi i64 [ %indvars.iv.next.i.i112, %.lr.ph.i.i110 ], [ 0, %bb.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i111
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.cw) ; 0 uses
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i111, 1
  %i.cy = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.cz = sext i32 %i.cy to i64
  %.not.i.i113 = icmp sgt i64 %indvars.iv.i.i111, %i.cz
  br i1 %.not.i.i113, label %print_bitboard.exit.i100, label %.lr.ph.i.i110, !llvm.loop !8

print_bitboard.exit.i100:                         ; preds = %.lr.ph.i.i110, %bb.i
  %.sroa.0.0.copyload.i101 = load i32, ptr %7, align 8
  %.sroa.4.0.copyload.i103 = load i32, ptr %.sroa.4.0..sroa_idx.i102, align 4
  %.sroa.5.0.copyload.i105 = load i32, ptr %.sroa.5.0..sroa_idx.i104, align 8
  %.sroa.6.0.copyload.i107 = load i32, ptr %.sroa.6.0..sroa_idx.i106, align 4
  %.sroa.7.0.copyload.i109 = load i32, ptr %.sroa.7.0..sroa_idx.i108, align 8
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i101, i32 noundef %.sroa.4.0.copyload.i103, i32 noundef %.sroa.5.0.copyload.i105, i32 noundef %.sroa.6.0.copyload.i107, i32 noundef %.sroa.7.0.copyload.i109) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_not_set.exit

check_hashkey_bit_not_set.exit:                   ; preds = %print_bitboard.exit.i100, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.db = xor i32 %.048220, -1
  %i.dc = add nsw i32 %i.b, %i.db                 ; 2 uses
  %i.dd = add nsw i32 %i.dc, %i.n                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false)
  %i.de = sdiv i32 %i.dd, 32
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %6, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = and i32 %i.dd, 31
  %i.dj = shl nuw i32 1, %i.di
  %i.dk = and i32 %i.dh, %i.dj
  %.not.i114 = icmp eq i32 %i.dk, 0
  br i1 %.not.i114, label %check_hashkey_bit_not_set.exit129, label %bb.j

bb.j:                                             ; preds = %check_hashkey_bit_not_set.exit
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dd) ; 0 uses
  %i.dm = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.dn = icmp sgt i32 %i.dm, -2
  br i1 %i.dn, label %.lr.ph.i.i125, label %print_bitboard.exit.i115

.lr.ph.i.i125:                                    ; preds = %bb.j, %.lr.ph.i.i125
  %indvars.iv.i.i126 = phi i64 [ %indvars.iv.next.i.i127, %.lr.ph.i.i125 ], [ 0, %bb.j ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i126
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.dp) ; 0 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i126, 1
  %i.dr = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ds = sext i32 %i.dr to i64
  %.not.i.i128 = icmp sgt i64 %indvars.iv.i.i126, %i.ds
  br i1 %.not.i.i128, label %print_bitboard.exit.i115, label %.lr.ph.i.i125, !llvm.loop !8

print_bitboard.exit.i115:                         ; preds = %.lr.ph.i.i125, %bb.j
  %.sroa.0.0.copyload.i116 = load i32, ptr %6, align 8
  %.sroa.4.0.copyload.i118 = load i32, ptr %.sroa.4.0..sroa_idx.i117, align 4
  %.sroa.5.0.copyload.i120 = load i32, ptr %.sroa.5.0..sroa_idx.i119, align 8
  %.sroa.6.0.copyload.i122 = load i32, ptr %.sroa.6.0..sroa_idx.i121, align 4
  %.sroa.7.0.copyload.i124 = load i32, ptr %.sroa.7.0..sroa_idx.i123, align 8
  %i.dt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i116, i32 noundef %.sroa.4.0.copyload.i118, i32 noundef %.sroa.5.0.copyload.i120, i32 noundef %.sroa.6.0.copyload.i122, i32 noundef %.sroa.7.0.copyload.i124) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_not_set.exit129

check_hashkey_bit_not_set.exit129:                ; preds = %print_bitboard.exit.i115, %check_hashkey_bit_not_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.du = add nsw i32 %.048220, %i.l              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @g_flipH_hashkey, i64 20, i1 false)
  %i.dv = sdiv i32 %i.du, 32
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = and i32 %i.du, 31
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = and i32 %i.dy, %i.ea
  %.not.i130 = icmp eq i32 %i.eb, 0
  br i1 %.not.i130, label %check_hashkey_bit_not_set.exit145, label %bb.k

bb.k:                                             ; preds = %check_hashkey_bit_not_set.exit129
  %i.ec = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.du) ; 0 uses
  %i.ed = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ee = icmp sgt i32 %i.ed, -2
  br i1 %i.ee, label %.lr.ph.i.i141, label %print_bitboard.exit.i131

.lr.ph.i.i141:                                    ; preds = %bb.k, %.lr.ph.i.i141
  %indvars.iv.i.i142 = phi i64 [ %indvars.iv.next.i.i143, %.lr.ph.i.i141 ], [ 0, %bb.k ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i142
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.eg) ; 0 uses
  %indvars.iv.next.i.i143 = add nuw nsw i64 %indvars.iv.i.i142, 1
  %i.ei = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ej = sext i32 %i.ei to i64
  %.not.i.i144 = icmp sgt i64 %indvars.iv.i.i142, %i.ej
  br i1 %.not.i.i144, label %print_bitboard.exit.i131, label %.lr.ph.i.i141, !llvm.loop !8

print_bitboard.exit.i131:                         ; preds = %.lr.ph.i.i141, %bb.k
  %.sroa.0.0.copyload.i132 = load i32, ptr %5, align 8
  %.sroa.4.0.copyload.i134 = load i32, ptr %.sroa.4.0..sroa_idx.i133, align 4
  %.sroa.5.0.copyload.i136 = load i32, ptr %.sroa.5.0..sroa_idx.i135, align 8
  %.sroa.6.0.copyload.i138 = load i32, ptr %.sroa.6.0..sroa_idx.i137, align 4
  %.sroa.7.0.copyload.i140 = load i32, ptr %.sroa.7.0..sroa_idx.i139, align 8
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i132, i32 noundef %.sroa.4.0.copyload.i134, i32 noundef %.sroa.5.0.copyload.i136, i32 noundef %.sroa.6.0.copyload.i138, i32 noundef %.sroa.7.0.copyload.i140) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_not_set.exit145

check_hashkey_bit_not_set.exit145:                ; preds = %print_bitboard.exit.i131, %check_hashkey_bit_not_set.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.el = add nsw i32 %i.dc, %i.l                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @g_flipVH_hashkey, i64 20, i1 false)
  %i.em = sdiv i32 %i.el, 32
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %4, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = and i32 %i.el, 31
  %i.er = shl nuw i32 1, %i.eq
  %i.es = and i32 %i.ep, %i.er
  %.not.i146 = icmp eq i32 %i.es, 0
  br i1 %.not.i146, label %check_hashkey_bit_not_set.exit161, label %bb.l

bb.l:                                             ; preds = %check_hashkey_bit_not_set.exit145
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.el) ; 0 uses
  %i.eu = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.ev = icmp sgt i32 %i.eu, -2
  br i1 %i.ev, label %.lr.ph.i.i157, label %print_bitboard.exit.i147

.lr.ph.i.i157:                                    ; preds = %bb.l, %.lr.ph.i.i157
  %indvars.iv.i.i158 = phi i64 [ %indvars.iv.next.i.i159, %.lr.ph.i.i157 ], [ 0, %bb.l ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.i.i158
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ex) ; 0 uses
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i158, 1
  %i.ez = load i32, ptr @g_board_size, align 4, !tbaa !4
  %i.fa = sext i32 %i.ez to i64
  %.not.i.i160 = icmp sgt i64 %indvars.iv.i.i158, %i.fa
  br i1 %.not.i.i160, label %print_bitboard.exit.i147, label %.lr.ph.i.i157, !llvm.loop !8

print_bitboard.exit.i147:                         ; preds = %.lr.ph.i.i157, %bb.l
  %.sroa.0.0.copyload.i148 = load i32, ptr %4, align 8
  %.sroa.4.0.copyload.i150 = load i32, ptr %.sroa.4.0..sroa_idx.i149, align 4
  %.sroa.5.0.copyload.i152 = load i32, ptr %.sroa.5.0..sroa_idx.i151, align 8
  %.sroa.6.0.copyload.i154 = load i32, ptr %.sroa.6.0..sroa_idx.i153, align 4
  %.sroa.7.0.copyload.i156 = load i32, ptr %.sroa.7.0..sroa_idx.i155, align 8
  %i.fb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.sroa.0.0.copyload.i148, i32 noundef %.sroa.4.0.copyload.i150, i32 noundef %.sroa.5.0.copyload.i152, i32 noundef %.sroa.6.0.copyload.i154, i32 noundef %.sroa.7.0.copyload.i156) ; 0 uses
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %check_hashkey_bit_not_set.exit161

check_hashkey_bit_not_set.exit161:                ; preds = %print_bitboard.exit.i147, %check_hashkey_bit_not_set.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.m

bb.m:                                             ; preds = %check_hashkey_bit_not_set.exit161, %check_hashkey_bit_set.exit98
  %exitcond.not = icmp eq i32 %i.p, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond224.not, label %._crit_edge222.split.loopexit, label %.preheader, !llvm.loop !11

._crit_edge222.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load i32, ptr @g_board_size, align 4, !tbaa !4
  %.pre225 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_board_size, i64 4), align 4, !tbaa !4
  br label %._crit_edge222.split

._crit_edge222.split:                             ; preds = %.preheader.lr.ph, %._crit_edge222.split.loopexit, %bb.a
  %i.fc = phi i32 [ %i.b, %bb.a ], [ %.pre225, %._crit_edge222.split.loopexit ], [ %i.b, %.preheader.lr.ph ] ; 5 uses
  %i.fd = phi i32 [ %i.a, %bb.a ], [ %.pre, %._crit_edge222.split.loopexit ], [ %i.a, %.preheader.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !12 ; 2 uses
  %i.fg = icmp sgt i32 %i.fd, 0
  %i.fh = icmp sgt i32 %i.fc, 0
  %or.cond.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %._crit_edge23.i

.preheader.us.preheader.i:                        ; preds = %._crit_edge222.split
  %i.fi = zext nneg i32 %i.fc to i64              ; 3 uses
  %wide.trip.count30.i = zext nneg i32 %i.fd to i64
  %xtraiter = and i64 %i.fi, 1
  %i.fj = icmp eq i32 %i.fc, 1
  %unroll_iter = and i64 %i.fi, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod244 = trunc i32 %i.fc to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge.us.i ] ; 3 uses
  %.022.us.i = phi i32 [ %i.ff, %.preheader.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.fk = mul nuw nsw i64 %indvars.iv27.i, %i.fi  ; 3 uses
  %i.fl = getelementptr inbounds nuw [128 x i8], ptr @g_zobrist, i64 %indvars.iv27.i ; 3 uses
  br i1 %i.fj, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.q ], [ 0, %.preheader.us.i ] ; 4 uses
  %.120.us.i = phi i32 [ %.2.us.i.1, %bb.q ], [ %.022.us.i, %.preheader.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.q ], [ 0, %.preheader.us.i ]
  %i.fm = add nuw nsw i64 %indvars.iv.i, %i.fk    ; 2 uses
  %i.fn = trunc nuw i64 %i.fm to i32
  %i.fo = lshr i64 %i.fm, 5
  %i.fp = and i64 %i.fo, 134217727
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = and i32 %i.fn, 31
  %i.ft = shl nuw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not18.us.i = icmp eq i32 %i.fu, 0
  br i1 %.not18.us.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader.us.i.new
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 132
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.fy = xor i32 %i.fx, %.120.us.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader.us.i.new
  %.2.us.i = phi i32 [ %i.fy, %bb.n ], [ %.120.us.i, %.preheader.us.i.new ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fz = add nuw nsw i64 %indvars.iv.next.i, %i.fk ; 2 uses
  %i.ga = trunc nuw i64 %i.fz to i32
  %i.gb = lshr i64 %i.fz, 5
  %i.gc = and i64 %i.gb, 134217727
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = and i32 %i.ga, 31
  %i.gg = shl nuw i32 1, %i.gf
  %i.gh = and i32 %i.gg, %i.ge
  %.not18.us.i.1 = icmp eq i32 %i.gh, 0
  br i1 %.not18.us.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 132
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !4
  %i.gl = xor i32 %i.gk, %.2.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.us.i.1 = phi i32 [ %i.gl, %bb.p ], [ %.2.us.i, %bb.o ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !14

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.q
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.120.us.i.epil.init = phi i32 [ %.022.us.i, %.preheader.us.i ], [ %.2.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod244)
  %i.gm = add nuw nsw i64 %indvars.iv.i.epil.init, %i.fk ; 2 uses
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = lshr i64 %i.gm, 5
  %i.gp = and i64 %i.go, 134217727
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  %i.gs = and i32 %i.gn, 31
  %i.gt = shl nuw i32 1, %i.gs
  %i.gu = and i32 %i.gt, %i.gr
  %.not18.us.i.epil = icmp eq i32 %i.gu, 0
  br i1 %.not18.us.i.epil, label %._crit_edge.us.i, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.i.epil.init
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 132
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !4
  %i.gy = xor i32 %i.gx, %.120.us.i.epil.init
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.epil.preheader, %bb.r, %._crit_edge.us.i.unr-lcssa
  %.2.us.i.lcssa = phi i32 [ %.2.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %i.gy, %bb.r ], [ %.120.us.i.epil.init, %.epil.preheader ] ; 2 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %._crit_edge23.i, label %.preheader.us.i, !llvm.loop !15

._crit_edge23.i:                                  ; preds = %._crit_edge.us.i, %._crit_edge222.split
  %.0.lcssa.i = phi i32 [ %i.ff, %._crit_edge222.split ], [ %.2.us.i.lcssa, %._crit_edge.us.i ]
  %.not.i162 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i162, label %check_hashkey_code.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge23.i
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef 1, ptr noundef nonnull @.str.29) #9
  %.pre226 = load i32, ptr @g_board_size, align 4, !tbaa !4
  %.pre227 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_board_size, i64 4), align 4, !tbaa !4
  br label %check_hashkey_code.exit

check_hashkey_code.exit:                          ; preds = %._crit_edge23.i, %bb.s
  %i.gz = phi i32 [ %i.fc, %._crit_edge23.i ], [ %.pre227, %bb.s ] ; 5 uses
  %i.ha = phi i32 [ %i.fd, %._crit_edge23.i ], [ %.pre226, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !12 ; 2 uses
  %i.hd = icmp sgt i32 %i.ha, 0
  %i.he = icmp sgt i32 %i.gz, 0
  %or.cond.i163 = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond.i163, label %.preheader.us.preheader.i167, label %._crit_edge23.i164

.preheader.us.preheader.i167:                     ; preds = %check_hashkey_code.exit
  %i.hf = zext nneg i32 %i.gz to i64              ; 3 uses
  %wide.trip.count30.i168 = zext nneg i32 %i.ha to i64
  %xtraiter246 = and i64 %i.hf, 1
  %i.hg = icmp eq i32 %i.gz, 1
  %unroll_iter250 = and i64 %i.hf, 2147483646
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  %lcmp.mod249 = trunc i32 %i.gz to i1
  br label %.preheader.us.i169

.preheader.us.i169:                               ; preds = %._crit_edge.us.i178, %.preheader.us.preheader.i167
  %indvars.iv27.i170 = phi i64 [ 0, %.preheader.us.preheader.i167 ], [ %indvars.iv.next28.i179, %._crit_edge.us.i178 ] ; 3 uses
  %.022.us.i171 = phi i32 [ %i.hc, %.preheader.us.preheader.i167 ], [ %.2.us.i175.lcssa, %._crit_edge.us.i178 ] ; 2 uses
  %i.hh = mul nuw nsw i64 %indvars.iv27.i170, %i.hf ; 3 uses
  %i.hi = getelementptr inbounds nuw [128 x i8], ptr @g_zobrist, i64 %indvars.iv27.i170 ; 3 uses
  br i1 %i.hg, label %.epil.preheader245, label %.preheader.us.i169.new

.preheader.us.i169.new:                           ; preds = %.preheader.us.i169, %bb.w
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i176.1, %bb.w ], [ 0, %.preheader.us.i169 ] ; 4 uses
  %.120.us.i173 = phi i32 [ %.2.us.i175.1, %bb.w ], [ %.022.us.i171, %.preheader.us.i169 ] ; 2 uses
  %niter251 = phi i64 [ %niter251.next.1, %bb.w ], [ 0, %.preheader.us.i169 ]
  %i.hj = add nuw nsw i64 %indvars.iv.i172, %i.hh ; 2 uses
  %i.hk = trunc nuw i64 %i.hj to i32
  %i.hl = lshr i64 %i.hj, 5
  %i.hm = and i64 %i.hl, 134217727
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = and i32 %i.hk, 31
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = and i32 %i.hq, %i.ho
  %.not18.us.i174 = icmp eq i32 %i.hr, 0
  br i1 %.not18.us.i174, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader.us.i169.new
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i172
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 132
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.hv = xor i32 %i.hu, %.120.us.i173
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.us.i169.new
  %.2.us.i175 = phi i32 [ %i.hv, %bb.t ], [ %.120.us.i173, %.preheader.us.i169.new ] ; 2 uses
  %indvars.iv.next.i176 = or disjoint i64 %indvars.iv.i172, 1 ; 2 uses
  %i.hw = add nuw nsw i64 %indvars.iv.next.i176, %i.hh ; 2 uses
  %i.hx = trunc nuw i64 %i.hw to i32
  %i.hy = lshr i64 %i.hw, 5
  %i.hz = and i64 %i.hy, 134217727
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = and i32 %i.hx, 31
  %i.id = shl nuw i32 1, %i.ic
  %i.ie = and i32 %i.id, %i.ib
  %.not18.us.i174.1 = icmp eq i32 %i.ie, 0
  br i1 %.not18.us.i174.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next.i176
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 132
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !4
  %i.ii = xor i32 %i.ih, %.2.us.i175
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.us.i175.1 = phi i32 [ %i.ii, %bb.v ], [ %.2.us.i175, %bb.u ] ; 3 uses
  %indvars.iv.next.i176.1 = add nuw nsw i64 %indvars.iv.i172, 2 ; 2 uses
  %niter251.next.1 = add i64 %niter251, 2         ; 2 uses
end_hunk_0
