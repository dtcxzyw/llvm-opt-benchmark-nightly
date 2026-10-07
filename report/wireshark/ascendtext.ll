Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ascendtext?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.supported_block_type = type { i32, i32, i64, ptr }
%struct.ascend_state_t = type { ptr, ptr, i32, ptr, ptr, ptr, i8, i64, i64, i32, i32, i64, i32, %struct.ascend_token_t }
%struct.ascend_token_t = type { i32, i32, i16, i8, [64 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.wtap_rec = type { i32, i32, i32, %struct.nstime_t, i32, ptr, %union.anon, ptr, i8, %struct.Buffer, %struct.Buffer }
%struct.nstime_t = type { i64, i32 }
%union.anon = type { %struct.wtap_packet_header }
%struct.wtap_packet_header = type { i32, i32, i32, i32, %union.wtap_pseudo_header }
%union.wtap_pseudo_header = type { %struct.erf_mc_phdr }
%struct.erf_mc_phdr = type { %struct.erf_phdr, [16 x %struct.erf_ehdr], %union.anon.1 }
%struct.erf_phdr = type { i64, i8, i8, i16, i16, i16 }
%struct.erf_ehdr = type { i64 }
%union.anon.1 = type { i32 }
%struct.Buffer = type { ptr, i64, i64, i64 }

@ascend_file_type_subtype = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [7 x i8] c"ASCEND\00", align 1
@ascend_find_next_packet.ascend_date = internal unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PRI-XMIT-\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PRI-RCV-\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"XMIT-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RECV-\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"XMIT:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"RECV:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"PPP-OUT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"PPP-IN\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"WD_DIALOUT_DISP:\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ETHER\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"no data returned by parse\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Lucent/Ascend access server trace\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ascend\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@ascend_blocks_supported = internal constant [1 x %struct.supported_block_type] [%struct.supported_block_type { i32 5, i32 2, i64 0, ptr null }], align 16
@ascend_info = internal constant { ptr, ptr, ptr, ptr, i8, [7 x i8], i64, ptr, ptr, ptr, ptr } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, i8 0, [7 x i8] zeroinitializer, i64 1, ptr @ascend_blocks_supported, ptr null, ptr null, ptr null }, align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 -1, 2) i32 @ascend_open(ptr noundef initializes((120, 128)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  %3 = alloca %struct.ascend_state_t, align 8     ; 7 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %5 = alloca %struct.wtap_rec, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.c = getelementptr i8, ptr %0, i64 120        ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = tail call fastcc i64 @ascend_find_next_packet(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4                ; 2 uses
  %switch.selectcmp.case1 = icmp ne i32 %i.f, 0
  %switch.selectcmp.case2 = icmp ne i32 %i.f, -12
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.g = sext i1 %switch.selectcmp.not to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8
  store ptr %i.h, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.i, ptr %i.j, align 8
  %i.k = call zeroext i1 @run_ascend_parser(ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2)
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr @ascend_file_type_subtype, align 4
  %i.q = getelementptr i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %0, i64 168
  store i32 16, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 24
  store i32 128, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 136
  store ptr @ascend_read, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 144
  store ptr @ascend_seek_read, ptr %i.u, align 8
  %i.v = call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #6 ; 4 uses
  store ptr %i.v, ptr %i.c, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store i64 %i.d, ptr %i.w, align 8
  %i.x = call i32 @wtap_fstat(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1)
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.v, align 8
  %i.ab = getelementptr i8, ptr %i.v, i64 8
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 172
  store i32 6, ptr %i.ac, align 4
  call void @wtap_add_generated_idb(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ %i.g, %bb.b ], [ -1, %bb.f ], [ -1, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i64 @ascend_find_next_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @file_getc(ptr noundef %i.a) ; 2 uses
  %.not74 = icmp eq i32 %i.b, -1
  br i1 %.not74, label %._crit_edge, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.s
  %i.c = add nsw i32 %i.d, -1                     ; 2 uses
  %.not62 = icmp eq i32 %i.c, 0
  br i1 %.not62, label %bb.b, label %.preheader.preheader, !llvm.loop !6

.preheader.preheader:                             ; preds = %bb.a, %.lr.ph
  %i.d = phi i32 [ %i.c, %.lr.ph ], [ 262143, %bb.a ]
  %.04975114 = phi i64 [ %.150, %.lr.ph ], [ -1, %bb.a ] ; 4 uses
  %.04576113 = phi i64 [ %.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.e = phi i32 [ %i.bv, %.lr.ph ], [ %i.b, %bb.a ] ; 11 uses
  %.sroa.30.0112 = phi i64 [ %.sroa.30.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.27.0111 = phi i64 [ %.sroa.27.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.24.0110 = phi i64 [ %.sroa.24.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.21.0109 = phi i64 [ %.sroa.21.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.18.0108 = phi i64 [ %.sroa.18.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.15.0107 = phi i64 [ %.sroa.15.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.12.0106 = phi i64 [ %.sroa.12.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.9.0105 = phi i64 [ %.sroa.9.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0104 = phi i64 [ %.sroa.6.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0103 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr @.str.1, i64 %.sroa.0.0103
  %i.g = load i8, ptr %i.f, align 1
  %i.h = sext i8 %i.g to i32
  %i.i = icmp eq i32 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %.preheader.1

bb.b:                                             ; preds = %.lr.ph
  store i32 0, ptr %1, align 4
  br label %bb.u

bb.c:                                             ; preds = %.preheader.preheader
  %i.j = add i64 %.sroa.0.0103, 1                 ; 2 uses
  %.not63 = icmp ult i64 %i.j, 9
  br i1 %.not63, label %.preheader.1, label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.lcssa.neg = phi i64 [ -9, %bb.c ], [ -8, %bb.e ], [ -5, %bb.f ], [ -5, %bb.g ], [ -5, %bb.h ], [ -5, %bb.i ], [ -7, %bb.j ], [ -6, %bb.k ], [ -16, %bb.l ], [ -5, %bb.m ]
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call i64 @file_tell(ptr noundef %i.k) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %.thread67, label %bb.t

.thread67:                                        ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8
  %i.o = tail call i32 @file_error(ptr noundef %i.n, ptr noundef %2)
  store i32 %i.o, ptr %1, align 4
  br label %bb.u

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.c
  %.sroa.0.1 = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader.preheader ]
  %i.p = getelementptr i8, ptr @.str.2, i64 %.sroa.6.0104
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %i.e, %i.r
  br i1 %i.s, label %bb.e, label %.preheader.2

bb.e:                                             ; preds = %.preheader.1
  %i.t = add i64 %.sroa.6.0104, 1                 ; 2 uses
  %.not63.1 = icmp ult i64 %i.t, 8
  br i1 %.not63.1, label %.preheader.2, label %bb.d

.preheader.2:                                     ; preds = %.preheader.1, %bb.e
  %.sroa.6.1 = phi i64 [ %i.t, %bb.e ], [ 0, %.preheader.1 ]
  %i.u = getelementptr i8, ptr @.str.3, i64 %.sroa.9.0105
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = icmp eq i32 %i.e, %i.w
  br i1 %i.x, label %bb.f, label %.preheader.3

bb.f:                                             ; preds = %.preheader.2
  %i.y = add i64 %.sroa.9.0105, 1                 ; 2 uses
  %.not63.2 = icmp ult i64 %i.y, 5
  br i1 %.not63.2, label %.preheader.3, label %bb.d

.preheader.3:                                     ; preds = %.preheader.2, %bb.f
  %.sroa.9.1 = phi i64 [ %i.y, %bb.f ], [ 0, %.preheader.2 ]
  %i.z = getelementptr i8, ptr @.str.4, i64 %.sroa.12.0106
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = sext i8 %i.aa to i32
  %i.ac = icmp eq i32 %i.e, %i.ab
  br i1 %i.ac, label %bb.g, label %.preheader.4

bb.g:                                             ; preds = %.preheader.3
  %i.ad = add i64 %.sroa.12.0106, 1               ; 2 uses
  %.not63.3 = icmp ult i64 %i.ad, 5
  br i1 %.not63.3, label %.preheader.4, label %bb.d

.preheader.4:                                     ; preds = %.preheader.3, %bb.g
  %.sroa.12.1 = phi i64 [ %i.ad, %bb.g ], [ 0, %.preheader.3 ]
  %i.ae = getelementptr i8, ptr @.str.5, i64 %.sroa.15.0107
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i32
  %i.ah = icmp eq i32 %i.e, %i.ag
  br i1 %i.ah, label %bb.h, label %.preheader.5

bb.h:                                             ; preds = %.preheader.4
  %i.ai = add i64 %.sroa.15.0107, 1               ; 2 uses
  %.not63.4 = icmp ult i64 %i.ai, 5
  br i1 %.not63.4, label %.preheader.5, label %bb.d

.preheader.5:                                     ; preds = %.preheader.4, %bb.h
  %.sroa.15.1 = phi i64 [ %i.ai, %bb.h ], [ 0, %.preheader.4 ]
  %i.aj = getelementptr i8, ptr @.str.6, i64 %.sroa.18.0108
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = icmp eq i32 %i.e, %i.al
  br i1 %i.am, label %bb.i, label %.preheader.6

bb.i:                                             ; preds = %.preheader.5
  %i.an = add i64 %.sroa.18.0108, 1               ; 2 uses
  %.not63.5 = icmp ult i64 %i.an, 5
  br i1 %.not63.5, label %.preheader.6, label %bb.d

.preheader.6:                                     ; preds = %.preheader.5, %bb.i
  %.sroa.18.1 = phi i64 [ %i.an, %bb.i ], [ 0, %.preheader.5 ]
  %i.ao = getelementptr i8, ptr @.str.7, i64 %.sroa.21.0109
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %i.ar = icmp eq i32 %i.e, %i.aq
  br i1 %i.ar, label %bb.j, label %.preheader.7

bb.j:                                             ; preds = %.preheader.6
  %i.as = add i64 %.sroa.21.0109, 1               ; 2 uses
  %.not63.6 = icmp ult i64 %i.as, 7
  br i1 %.not63.6, label %.preheader.7, label %bb.d

.preheader.7:                                     ; preds = %.preheader.6, %bb.j
  %.sroa.21.1 = phi i64 [ %i.as, %bb.j ], [ 0, %.preheader.6 ]
  %i.at = getelementptr i8, ptr @.str.8, i64 %.sroa.24.0110
  %i.au = load i8, ptr %i.at, align 1
  %i.av = sext i8 %i.au to i32
  %i.aw = icmp eq i32 %i.e, %i.av
  br i1 %i.aw, label %bb.k, label %.preheader.8

bb.k:                                             ; preds = %.preheader.7
  %i.ax = add i64 %.sroa.24.0110, 1               ; 2 uses
  %.not63.7 = icmp ult i64 %i.ax, 6
  br i1 %.not63.7, label %.preheader.8, label %bb.d

.preheader.8:                                     ; preds = %.preheader.7, %bb.k
  %.sroa.24.1 = phi i64 [ %i.ax, %bb.k ], [ 0, %.preheader.7 ]
  %i.ay = getelementptr i8, ptr @.str.9, i64 %.sroa.27.0111
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i32
  %i.bb = icmp eq i32 %i.e, %i.ba
  br i1 %i.bb, label %bb.l, label %.preheader.9

bb.l:                                             ; preds = %.preheader.8
  %i.bc = add i64 %.sroa.27.0111, 1               ; 2 uses
  %.not63.8 = icmp ult i64 %i.bc, 16
  br i1 %.not63.8, label %.preheader.9, label %bb.d

.preheader.9:                                     ; preds = %.preheader.8, %bb.l
  %.sroa.27.1 = phi i64 [ %i.bc, %bb.l ], [ 0, %.preheader.8 ]
  %i.bd = getelementptr i8, ptr @.str.10, i64 %.sroa.30.0112
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i32
  %i.bg = icmp eq i32 %i.e, %i.bf
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.9
  %i.bh = add i64 %.sroa.30.0112, 1               ; 2 uses
  %.not63.9 = icmp ult i64 %i.bh, 5
  br i1 %.not63.9, label %bb.n, label %bb.d

bb.n:                                             ; preds = %.preheader.9, %bb.m
  %.sroa.30.1 = phi i64 [ %i.bh, %bb.m ], [ 0, %.preheader.9 ]
  %i.bi = getelementptr i8, ptr @ascend_find_next_packet.ascend_date, i64 %.04576113
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = sext i8 %i.bj to i32
  %i.bl = icmp eq i32 %i.e, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %.04576113, 1                   ; 2 uses
  %i.bn = icmp ugt i64 %i.bm, 4
  br i1 %i.bn, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = tail call i64 @file_tell(ptr noundef %i.bo) ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %0, align 8
  %i.bs = tail call i32 @file_error(ptr noundef %i.br, ptr noundef %2)
  store i32 %i.bs, ptr %1, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bt = add i64 %i.bp, -5
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.r
  %.150 = phi i64 [ %i.bt, %bb.r ], [ %.04975114, %bb.o ], [ %.04975114, %bb.n ]
  %.1 = phi i64 [ 0, %bb.r ], [ %i.bm, %bb.o ], [ 0, %bb.n ]
  %i.bu = load ptr, ptr %0, align 8
  %i.bv = tail call i32 @file_getc(ptr noundef %i.bu) ; 2 uses
  %.not = icmp eq i32 %i.bv, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = tail call i32 @file_error(ptr noundef %i.bw, ptr noundef %2)
  store i32 %i.bx, ptr %1, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.d
  %i.by = icmp eq i64 %.04975114, -1
  %i.bz = add i64 %.lcssa.neg, %i.l
  %.2 = select i1 %i.by, i64 %i.bz, i64 %.04975114 ; 2 uses
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = tail call i64 @file_seek(ptr noundef %i.ca, i64 noundef %.2, i32 noundef 0, ptr noundef %1)
  %i.cc = icmp eq i64 %i.cb, -1
  %..3 = select i1 %i.cc, i64 -1, i64 %.2
  br label %bb.u

bb.u:                                             ; preds = %.thread67, %bb.t, %._crit_edge, %bb.q, %bb.b
  %.354 = phi i64 [ -1, %.thread67 ], [ %..3, %bb.t ], [ -1, %._crit_edge ], [ -1, %bb.q ], [ -1, %bb.b ]
  ret i64 %.354
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @run_ascend_parser(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @ascend_read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i64 @file_seek(ptr noundef %i.c, i64 noundef %i.e, i32 noundef 0, ptr noundef %2)
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i64 @ascend_find_next_packet(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call fastcc zeroext i1 @parse_ascend(ptr noundef %i.b, ptr noundef %0, ptr noundef %i.j, ptr noundef %1, ptr noundef %i.d, ptr noundef %2, ptr noundef %3)
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4
  %i.l = load ptr, ptr %3, align 8                ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_free(ptr noundef nonnull %i.l)
  store ptr null, ptr %3, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.h, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @ascend_seek_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @file_seek(ptr noundef %i.d, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = tail call fastcc zeroext i1 @parse_ascend(ptr noundef %i.b, ptr noundef %0, ptr noundef %i.g, ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4)
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 4
  %i.i = load ptr, ptr %4, align 8                ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_free(ptr noundef nonnull %i.i)
  store ptr null, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_fstat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_generated_idb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_ascend() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @ascend_info) ; 2 uses
  store i32 %i.a, ptr @ascend_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @file_getc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @file_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @parse_ascend(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ascend_state_t, align 8     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i8 0, i64 160, i1 false)
  %i.b = getelementptr i8, ptr %3, i64 264        ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  tail call void @ws_buffer_assure_space(ptr noundef %i.b, i64 noundef %i.e)
  store ptr %2, ptr %7, align 8
  %i.f = getelementptr i8, ptr %3, i64 48
  %i.g = getelementptr i8, ptr %3, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.g, ptr %i.h, align 8
  %.val = load ptr, ptr %i.b, align 8
  %i.i = getelementptr i8, ptr %3, i64 280
  %.val45 = load i64, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val, i64 %.val45
  %i.k = call zeroext i1 @run_ascend_parser(ptr noundef %i.j, ptr noundef nonnull %7, ptr noundef %5, ptr noundef %6) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  %.not39 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not39, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i64 @file_tell(ptr noundef %2)
end_hunk_0
