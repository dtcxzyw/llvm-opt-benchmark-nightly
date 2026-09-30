Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5checksum?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@H5_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@H5_crc_table_computed = internal unnamed_addr global i1 false, align 1
@H5_crc_table = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@.crctable = private unnamed_addr constant [256 x i32] [i32 0, i32 102971031, i32 96753217, i32 65495254, i32 34248685, i32 69837178, i32 130990508, i32 32372539, i32 68497370, i32 37099853, i32 30505371, i32 133320460, i32 102742071, i32 3968672, i32 64745078, i32 100194529, i32 27813083, i32 126571084, i32 74199706, i32 38732813, i32 61010742, i32 92390817, i32 107390327, i32 4559840, i32 96291585, i32 60718486, i32 7937344, i32 106572759, i32 129490156, i32 26536571, i32 41126573, i32 72399930, i32 55626166, i32 91488033, i32 110403575, i32 12036448, i32 22699611, i32 125397196, i32 77465626, i32 45956749, i32 122021484, i32 23515387, i32 42053677, i32 77760186, i32 89092481, i32 57427734, i32 9119680, i32 111677783, i32 49851757, i32 81501178, i32 121436972, i32 18861499, i32 15874688, i32 114363415, i32 87452865, i32 51731030, i32 116228791, i32 13546528, i32 53073142, i32 84599393, i32 82253146, i32 46408653, i32 19088155, i32 117470604, i32 111252332, i32 8562171, i32 57001261, i32 88535994, i32 78316673, i32 42480150, i32 24072896, i32 122446935, i32 45399222, i32 77040161, i32 124840695, i32 22273120, i32 12462939, i32 110960076, i32 91913498, i32 56183693, i32 118093751, i32 19579168, i32 47030774, i32 82745185, i32 84107354, i32 52451021, i32 13055515, i32 115605644, i32 52222061, i32 88076026, i32 114855468, i32 16496827, i32 18239360, i32 120944919, i32 80878017, i32 49360726, i32 99703514, i32 64121933, i32 3476635, i32 102119948, i32 133942583, i32 30997408, i32 37722998, i32 68988385, i32 31749376, i32 130499479, i32 69215041, i32 33756630, i32 65987309, i32 97375354, i32 103462060, i32 623163, i32 72957441, i32 41552022, i32 27093056, i32 129916631, i32 106146284, i32 7380859, i32 60293037, i32 95734074, i32 4985307, i32 107947852, i32 92817306, i32 61567245, i32 38176310, i32 73773217, i32 126013559, i32 27387616, i32 79764919, i32 48376608, i32 17124342, i32 119962977, i32 114002522, i32 15252685, i32 51371035, i32 86829708, i32 13906541, i32 116851962, i32 84960300, i32 53695163, i32 48145792, i32 83727127, i32 119206849, i32 20563286, i32 90798444, i32 55201787, i32 11349805, i32 109975994, i32 123989633, i32 21026838, i32 44546240, i32 75796055, i32 24925878, i32 123691041, i32 79167735, i32 43726432, i32 58114395, i32 89520076, i32 112367386, i32 9544077, i32 126997505, i32 28500630, i32 39158336, i32 74888407, i32 94061548, i32 62420347, i32 6231469, i32 108798778, i32 59046875, i32 94883148, i32 104902042, i32 6527757, i32 26111030, i32 128801441, i32 71973495, i32 40439008, i32 104444122, i32 1738317, i32 66971291, i32 98488332, i32 70461239, i32 34607520, i32 32993654, i32 131352545, i32 36478720, i32 68135319, i32 132696385, i32 30146518, i32 2492653, i32 101006970, i32 98721452, i32 63006779, i32 39882459, i32 71546956, i32 128243866, i32 25685517, i32 6953270, i32 105459617, i32 95309687, i32 59603424, i32 108372225, i32 5674902, i32 61994816, i32 93503959, i32 75445996, i32 39583867, i32 29057197, i32 127424058, i32 63498752, i32 99343511, i32 101497921, i32 3115734, i32 29523437, i32 132205434, i32 67513260, i32 35986747, i32 131974618, i32 33485645, i32 35230619, i32 70952204, i32 97997367, i32 66348192, i32 1246326, i32 103822049, i32 19941229, i32 118714874, i32 83104044, i32 47654843, i32 54186112, i32 85583383, i32 117343937, i32 14528598, i32 86337719, i32 50748960, i32 14761718, i32 113379425, i32 120586074, i32 17615309, i32 48998683, i32 80256908, i32 9970614, i32 112923937, i32 89945591, i32 58671968, i32 43168859, i32 78742220, i32 123134490, i32 24499341, i32 76352620, i32 44972795, i32 21584429, i32 124415162, i32 109550465, i32 10792214, i32 54775232, i32 90241879]

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5_checksum_fletcher32(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %bb.d, !prof !12

.preheader:                                       ; preds = %bb.a
  %i.g = lshr i64 %1, 1                           ; 2 uses
  %.not44 = icmp eq i64 %i.g, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.unr-lcssa
  %.03248 = phi i32 [ %i.ae, %.unr-lcssa ], [ 0, %.preheader ] ; 2 uses
  %.03347 = phi i32 [ %i.ab, %.unr-lcssa ], [ 0, %.preheader ] ; 2 uses
  %.03746 = phi i64 [ %i.x, %.unr-lcssa ], [ %i.g, %.preheader ] ; 3 uses
  %.03845 = phi ptr [ %scevgep, %.unr-lcssa ], [ %0, %.preheader ] ; 3 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %.03746, i64 360) ; 5 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph, %.prol.loopexit.unr-lcssa
  %.139.prol = phi ptr [ %i.j, %.prol.loopexit.unr-lcssa ], [ %.03845, %.lr.ph ] ; 2 uses
  %.134.prol = phi i32 [ %i.i, %.prol.loopexit.unr-lcssa ], [ %.03347, %.lr.ph ]
  %.1.prol = phi i32 [ %i.k, %.prol.loopexit.unr-lcssa ], [ %.03248, %.lr.ph ]
  %.0.prol = phi i64 [ %5, %.prol.loopexit.unr-lcssa ], [ %i.h, %.lr.ph ]
  %prol.iter = phi i64 [ %i.l, %.prol.loopexit.unr-lcssa ], [ 0, %.lr.ph ]
  %2 = load i16, ptr %.139.prol, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = zext i16 %3 to i32
  %i.i = add i32 %.134.prol, %4                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.139.prol, i64 2 ; 2 uses
  %i.k = add i32 %i.i, %.1.prol                   ; 3 uses
  %5 = add i64 %.0.prol, -1                       ; 2 uses
  %i.l = add i64 %prol.iter, 1                    ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %i.l, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa, !llvm.loop !15

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa63.unr = phi i32 [ poison, %.lr.ph ], [ %i.i, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.139.unr = phi ptr [ %.03845, %.lr.ph ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.134.unr = phi i32 [ %.03347, %.lr.ph ], [ %i.i, %.prol.loopexit.unr-lcssa ]
  %.1.unr = phi i32 [ %.03248, %.lr.ph ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.0.unr = phi i64 [ %i.h, %.lr.ph ], [ %5, %.prol.loopexit.unr-lcssa ]
  %6 = icmp ult i64 %.03746, 4
  br i1 %6, label %.unr-lcssa, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.139 = phi ptr [ %i.u, %.lr.ph.new ], [ %.139.unr, %.prol.loopexit ] ; 5 uses
  %.134 = phi i32 [ %i.t, %.lr.ph.new ], [ %.134.unr, %.prol.loopexit ]
  %.1 = phi i32 [ %i.v, %.lr.ph.new ], [ %.1.unr, %.prol.loopexit ]
  %.0 = phi i64 [ %i.w, %.lr.ph.new ], [ %.0.unr, %.prol.loopexit ]
  %7 = load i16, ptr %.139, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %i.m = zext i16 %8 to i32
  %9 = add i32 %.134, %i.m                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.139, i64 2
  %10 = add i32 %9, %.1
  %11 = load i16, ptr %i.n, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = zext i16 %12 to i32
  %i.o = add i32 %9, %13                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.139, i64 4
  %i.q = add i32 %i.o, %10
  %14 = load i16, ptr %i.p, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %i.r = zext i16 %15 to i32
  %16 = add i32 %i.o, %i.r                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.139, i64 6
  %17 = add i32 %16, %i.q
  %18 = load i16, ptr %i.s, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = zext i16 %19 to i32
  %i.t = add i32 %16, %20                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.139, i64 8
  %i.v = add i32 %i.t, %17                        ; 2 uses
  %i.w = add i64 %.0, -4                          ; 2 uses
  %.not41.1 = icmp eq i64 %i.w, 0
  br i1 %.not41.1, label %.unr-lcssa, label %.lr.ph.new, !llvm.loop !16

.unr-lcssa:                                       ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa63 = phi i32 [ %.lcssa63.unr, %.prol.loopexit ], [ %i.t, %.lr.ph.new ] ; 2 uses
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.v, %.lr.ph.new ] ; 2 uses
  %i.x = sub nuw nsw i64 %.03746, %i.h            ; 2 uses
  %i.y = shl nuw nsw i64 %i.h, 1
  %scevgep = getelementptr i8, ptr %.03845, i64 %i.y ; 2 uses
  %i.z = and i32 %.lcssa63, 65535
  %i.aa = lshr i32 %.lcssa63, 16
  %i.ab = add nuw nsw i32 %i.z, %i.aa             ; 2 uses
  %i.ac = and i32 %.lcssa, 65535
  %i.ad = lshr i32 %.lcssa, 16
  %i.ae = add nuw nsw i32 %i.ac, %i.ad            ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.unr-lcssa, %.preheader
  %.038.lcssa = phi ptr [ %0, %.preheader ], [ %scevgep, %.unr-lcssa ]
  %.033.lcssa = phi i32 [ 0, %.preheader ], [ %i.ab, %.unr-lcssa ] ; 2 uses
  %.032.lcssa = phi i32 [ 0, %.preheader ], [ %i.ae, %.unr-lcssa ] ; 2 uses
  %i.af = and i64 %1, 1
  %.not40 = icmp eq i64 %i.af, 0
  br i1 %.not40, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ag = load i8, ptr %.038.lcssa, align 1, !tbaa !14
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = add nuw nsw i32 %i.ai, %.033.lcssa      ; 3 uses
  %i.ak = add nuw nsw i32 %i.aj, %.032.lcssa      ; 2 uses
  %i.al = and i32 %i.aj, 65535
  %i.am = lshr i32 %i.aj, 16
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = and i32 %i.ak, 65535
  %i.ap = lshr i32 %i.ak, 16
  %i.aq = add nuw nsw i32 %i.ao, %i.ap
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.235 = phi i32 [ %i.an, %bb.b ], [ %.033.lcssa, %._crit_edge ] ; 2 uses
  %.2 = phi i32 [ %i.aq, %bb.b ], [ %.032.lcssa, %._crit_edge ]
  %i.ar = and i32 %.235, 65535
  %i.as = lshr i32 %.235, 16
  %i.at = add nuw nsw i32 %i.ar, %i.as
  %i.au = mul i32 %.2, 65537
  %i.av = and i32 %i.au, -65536
  %i.aw = or i32 %i.av, %i.at
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.ax = phi i32 [ %i.aw, %bb.c ], [ 0, %bb.a ]
  ret i32 %i.ax
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5_checksum_crc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5__checksum_crc_update.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @H5_crc_table_computed, align 1
  br i1 %.b.i, label %bb.c, label %vector.body

vector.body:                                      ; preds = %bb.b, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.b ] ; 4 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.b ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.g = lshr <4 x i32> %vec.ind, splat (i32 8)
  %i.h = lshr <4 x i32> %step.add, splat (i32 8)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 16
  %wide.load1 = load <4 x i32>, ptr %i.j, align 16
  %i.k = xor <4 x i32> %i.g, %wide.load
  %i.l = xor <4 x i32> %i.h, %wide.load1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @H5_crc_table, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %i.k, ptr %i.m, align 16, !tbaa !21
  store <4 x i32> %i.l, ptr %i.n, align 16, !tbaa !21
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.1 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.o = lshr <4 x i32> %vec.ind.next, splat (i32 8)
  %i.p = lshr <4 x i32> %step.add.1, splat (i32 8)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %index.next ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.q, align 16
  %wide.load1.1 = load <4 x i32>, ptr %i.r, align 16
  %i.s = xor <4 x i32> %i.o, %wide.load.1
  %i.t = xor <4 x i32> %i.p, %wide.load1.1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @H5_crc_table, i64 %index.next ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.s, ptr %i.u, align 16, !tbaa !21
  store <4 x i32> %i.t, ptr %i.v, align 16, !tbaa !21
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %i.w = icmp eq i64 %index.next.1, 256
  br i1 %i.w, label %H5__checksum_crc_make_table.exit.i, label %vector.body, !llvm.loop !19

H5__checksum_crc_make_table.exit.i:               ; preds = %vector.body
  store i1 true, ptr @H5_crc_table_computed, align 1
  br label %bb.c

bb.c:                                             ; preds = %H5__checksum_crc_make_table.exit.i, %bb.b
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %H5__checksum_crc_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %1, 1
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %.078.i = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %.07.tr.i = trunc i32 %.078.i to i8
  %.narrow.i = xor i8 %i.z, %.07.tr.i
  %i.aa = zext i8 %.narrow.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @H5_crc_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = lshr i32 %.078.i, 8
  %i.ae = xor i32 %i.ac, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %.07.tr.i.1 = trunc i32 %i.ae to i8
  %.narrow.i.1 = xor i8 %i.ah, %.07.tr.i.1
  %i.ai = zext i8 %.narrow.i.1 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @H5_crc_table, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.al = lshr i32 %i.ae, 8
  %i.am = xor i32 %i.ak, %i.al                    ; 3 uses
  %i.an = add nuw i64 %.09.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %H5__checksum_crc_update.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !20

H5__checksum_crc_update.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5__checksum_crc_update.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %H5__checksum_crc_update.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %H5__checksum_crc_update.exit.loopexit.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %i.am, %H5__checksum_crc_update.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.epil.init
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %.07.tr.i.epil = trunc i32 %.078.i.epil.init to i8
  %.narrow.i.epil = xor i8 %i.ap, %.07.tr.i.epil
  %i.aq = zext i8 %.narrow.i.epil to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @H5_crc_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = lshr i32 %.078.i.epil.init, 8
  %i.au = xor i32 %i.as, %i.at
  br label %H5__checksum_crc_update.exit.loopexit

H5__checksum_crc_update.exit.loopexit:            ; preds = %H5__checksum_crc_update.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.am, %H5__checksum_crc_update.exit.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.i.epil.preheader ]
  %i.av = xor i32 %.lcssa, -1
  br label %H5__checksum_crc_update.exit

H5__checksum_crc_update.exit:                     ; preds = %H5__checksum_crc_update.exit.loopexit, %bb.a, %bb.c
  %.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.av, %H5__checksum_crc_update.exit.loopexit ]
  ret i32 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5_checksum_lookup3(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.o, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %1 to i32
  %i.h = add i32 %i.g, -559038737
  %i.i = add i32 %i.h, %2                         ; 6 uses
  %i.j = icmp ugt i64 %1, 12
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0152 = phi i32 [ %i.ck, %.lr.ph ], [ %i.i, %bb.b ]
  %.0132151 = phi i32 [ %i.cl, %.lr.ph ], [ %i.i, %bb.b ]
  %.0141150 = phi i32 [ %i.ch, %.lr.ph ], [ %i.i, %bb.b ]
  %.0146149 = phi ptr [ %i.cn, %.lr.ph ], [ %0, %bb.b ] ; 13 uses
  %.0147148 = phi i64 [ %i.cm, %.lr.ph ], [ %1, %bb.b ]
  %i.k = load i8, ptr %.0146149, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.0141150, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.0146149, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = add i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0146149, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 16
  %i.w = add i32 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.0146149, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 24
  %i.ab = add i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.0146149, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = add i32 %.0132151, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.0146149, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = add i32 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.0146149, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = add i32 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.0146149, i64 7
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 24
  %i.au = add i32 %i.ap, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0146149, i64 8
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %.0152, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.0146149, i64 9
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = add i32 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0146149, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 16
  %i.bi = add i32 %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.0146149, i64 11
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw i32 %i.bl, 24
  %i.bn = add i32 %i.bi, %i.bm                    ; 4 uses
  %i.bo = sub i32 %i.ab, %i.bn
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 4)
  %i.bq = xor i32 %i.bo, %i.bp                    ; 4 uses
  %i.br = add i32 %i.bn, %i.au                    ; 2 uses
  %i.bs = sub i32 %i.au, %i.bq
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 6)
  %i.bu = xor i32 %i.bs, %i.bt                    ; 4 uses
  %i.bv = add i32 %i.bq, %i.br                    ; 2 uses
  %i.bw = sub i32 %i.br, %i.bu
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 8)
  %i.by = xor i32 %i.bw, %i.bx                    ; 4 uses
  %i.bz = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.ca = sub i32 %i.bv, %i.by
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 16)
  %i.cc = xor i32 %i.ca, %i.cb                    ; 4 uses
  %i.cd = add i32 %i.by, %i.bz                    ; 2 uses
  %i.ce = sub i32 %i.bz, %i.cc
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 19)
  %i.cg = xor i32 %i.ce, %i.cf                    ; 4 uses
  %i.ch = add i32 %i.cc, %i.cd                    ; 3 uses
  %i.ci = sub i32 %i.cd, %i.cg
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 4)
  %i.ck = xor i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = add i32 %i.cg, %i.ch                    ; 2 uses
  %i.cm = add i64 %.0147148, -12                  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0146149, i64 12 ; 2 uses
  %i.co = icmp ugt i64 %i.cm, 12
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0147.lcssa = phi i64 [ %1, %bb.b ], [ %i.cm, %.lr.ph ]
  %.0146.lcssa = phi ptr [ %0, %bb.b ], [ %i.cn, %.lr.ph ] ; 12 uses
  %.0141.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.ch, %.lr.ph ] ; 4 uses
  %.0132.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.cl, %.lr.ph ] ; 8 uses
  %.0.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.ck, %.lr.ph ] ; 13 uses
  switch i64 %.0147.lcssa, label %default.unreachable163 [
    i64 12, label %bb.c
    i64 11, label %bb.d
    i64 10, label %bb.e
    i64 9, label %bb.f
    i64 8, label %bb.g
    i64 7, label %bb.h
    i64 6, label %bb.i
    i64 5, label %bb.j
    i64 4, label %bb.k
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %bb.n
    i64 0, label %bb.o
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 11
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw i32 %i.cr, 24
  %i.ct = add i32 %i.cs, %.0.lcssa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i32 [ %i.ct, %bb.c ], [ %.0.lcssa, %._crit_edge ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 10
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 16
  %i.cy = add i32 %i.cx, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i32 [ %i.cy, %bb.d ], [ %.0.lcssa, %._crit_edge ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 9
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = add i32 %i.dc, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i32 [ %i.dd, %bb.e ], [ %.0.lcssa, %._crit_edge ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 8
  %i.df = load i8, ptr %i.de, align 1, !tbaa !14
  %i.dg = zext i8 %i.df to i32
  %i.dh = add i32 %.3, %i.dg
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i32 [ %i.dh, %bb.f ], [ %.0.lcssa, %._crit_edge ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw i32 %i.dk, 24
  %i.dm = add i32 %i.dl, %.0132.lcssa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.1133 = phi i32 [ %i.dm, %bb.g ], [ %.0132.lcssa, %._crit_edge ]
  %.5 = phi i32 [ %.4, %bb.g ], [ %.0.lcssa, %._crit_edge ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 6
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = add i32 %i.dq, %.1133
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.2134 = phi i32 [ %i.dr, %bb.h ], [ %.0132.lcssa, %._crit_edge ]
  %.6 = phi i32 [ %.5, %bb.h ], [ %.0.lcssa, %._crit_edge ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 5
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !14
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 8
  %i.dw = add i32 %i.dv, %.2134
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.3135 = phi i32 [ %i.dw, %bb.i ], [ %.0132.lcssa, %._crit_edge ]
  %.7 = phi i32 [ %.6, %bb.i ], [ %.0.lcssa, %._crit_edge ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 4
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.3135, %i.dz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.4136 = phi i32 [ %i.ea, %bb.j ], [ %.0132.lcssa, %._crit_edge ]
  %.8 = phi i32 [ %.7, %bb.j ], [ %.0.lcssa, %._crit_edge ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw i32 %i.ed, 24
  %i.ef = add i32 %i.ee, %.0141.lcssa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.1142 = phi i32 [ %i.ef, %bb.k ], [ %.0141.lcssa, %._crit_edge ]
  %.5137 = phi i32 [ %.4136, %bb.k ], [ %.0132.lcssa, %._crit_edge ]
  %.9 = phi i32 [ %.8, %bb.k ], [ %.0.lcssa, %._crit_edge ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 16
  %i.ek = add i32 %i.ej, %.1142
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.2143 = phi i32 [ %i.ek, %bb.l ], [ %.0141.lcssa, %._crit_edge ]
  %.6138 = phi i32 [ %.5137, %bb.l ], [ %.0132.lcssa, %._crit_edge ]
  %.10 = phi i32 [ %.9, %bb.l ], [ %.0.lcssa, %._crit_edge ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0146.lcssa, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !14
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = add i32 %i.eo, %.2143
  br label %bb.n

default.unreachable163:                           ; preds = %._crit_edge
  unreachable

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.3144 = phi i32 [ %i.ep, %bb.m ], [ %.0141.lcssa, %._crit_edge ]
  %.7139 = phi i32 [ %.6138, %bb.m ], [ %.0132.lcssa, %._crit_edge ] ; 4 uses
  %.11 = phi i32 [ %.10, %bb.m ], [ %.0.lcssa, %._crit_edge ]
  %i.eq = load i8, ptr %.0146.lcssa, align 1, !tbaa !14
  %i.er = zext i8 %i.eq to i32
  %i.es = add i32 %.3144, %i.er
  %i.et = xor i32 %.11, %.7139
  %i.eu = tail call i32 @llvm.fshl.i32(i32 %.7139, i32 %.7139, i32 14)
  %i.ev = sub i32 %i.et, %i.eu                    ; 4 uses
  %i.ew = xor i32 %i.es, %i.ev
  %i.ex = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 11)
  %i.ey = sub i32 %i.ew, %i.ex                    ; 4 uses
  %i.ez = xor i32 %i.ey, %.7139
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 25)
  %i.fb = sub i32 %i.ez, %i.fa                    ; 4 uses
  %i.fc = xor i32 %i.fb, %i.ev
  %i.fd = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 16)
  %i.fe = sub i32 %i.fc, %i.fd                    ; 4 uses
  %i.ff = xor i32 %i.fe, %i.ey
  %i.fg = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 4)
  %i.fh = sub i32 %i.ff, %i.fg                    ; 3 uses
  %i.fi = xor i32 %i.fh, %i.fb
  %i.fj = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 14)
  %i.fk = sub i32 %i.fi, %i.fj                    ; 3 uses
  %i.fl = xor i32 %i.fk, %i.fe
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 24)
  %i.fn = sub i32 %i.fl, %i.fm
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge, %bb.a
  %.13 = phi i32 [ %i.fn, %bb.n ], [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5_checksum_metadata(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @H5_checksum_lookup3(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5_hash_string(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %.loopexit, !prof !12

.preheader:                                       ; preds = %bb.a
  %i.g = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %.not6 = icmp eq i8 %i.g, 0
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi i8 [ %i.m, %.lr.ph ], [ %i.g, %.preheader ]
  %.08 = phi i32 [ %i.l, %.lr.ph ], [ 5381, %.preheader ]
  %.047 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.preheader ]
  %i.i = sext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 2 uses
  %i.k = mul i32 %.08, 33
  %i.l = add i32 %i.k, %i.i                       ; 2 uses
  %i.m = load i8, ptr %i.j, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i32 [ 5381, %bb.a ], [ 5381, %.preheader ], [ %i.l, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!4, !4, i64 0}
!15 = distinct !{!15, !18}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !13, !22, !23}
!20 = distinct !{!20, !13}
!21 = !{!5, !5, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
end_hunk_0
