Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qoadec?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"qoa\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"QOA (Quite OK Audio)\00", align 1
@ff_qoa_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86121, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 8192, ptr null, ptr null, ptr null, ptr @qoa_decode_init, %union.anon { ptr @qoa_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@qoa_dequant_tab = internal unnamed_addr constant [16 x [8 x i16]] [[8 x i16] [i16 1, i16 -1, i16 3, i16 -3, i16 5, i16 -5, i16 7, i16 -7], [8 x i16] [i16 5, i16 -5, i16 18, i16 -18, i16 32, i16 -32, i16 49, i16 -49], [8 x i16] [i16 16, i16 -16, i16 53, i16 -53, i16 95, i16 -95, i16 147, i16 -147], [8 x i16] [i16 34, i16 -34, i16 113, i16 -113, i16 203, i16 -203, i16 315, i16 -315], [8 x i16] [i16 63, i16 -63, i16 210, i16 -210, i16 378, i16 -378, i16 588, i16 -588], [8 x i16] [i16 104, i16 -104, i16 345, i16 -345, i16 621, i16 -621, i16 966, i16 -966], [8 x i16] [i16 158, i16 -158, i16 528, i16 -528, i16 950, i16 -950, i16 1477, i16 -1477], [8 x i16] [i16 228, i16 -228, i16 760, i16 -760, i16 1368, i16 -1368, i16 2128, i16 -2128], [8 x i16] [i16 316, i16 -316, i16 1053, i16 -1053, i16 1895, i16 -1895, i16 2947, i16 -2947], [8 x i16] [i16 422, i16 -422, i16 1405, i16 -1405, i16 2529, i16 -2529, i16 3934, i16 -3934], [8 x i16] [i16 548, i16 -548, i16 1828, i16 -1828, i16 3290, i16 -3290, i16 5117, i16 -5117], [8 x i16] [i16 696, i16 -696, i16 2320, i16 -2320, i16 4176, i16 -4176, i16 6496, i16 -6496], [8 x i16] [i16 868, i16 -868, i16 2893, i16 -2893, i16 5207, i16 -5207, i16 8099, i16 -8099], [8 x i16] [i16 1064, i16 -1064, i16 3548, i16 -3548, i16 6386, i16 -6386, i16 9933, i16 -9933], [8 x i16] [i16 1286, i16 -1286, i16 4288, i16 -4288, i16 7718, i16 -7718, i16 12005, i16 -12005], [8 x i16] [i16 1536, i16 -1536, i16 5120, i16 -5120, i16 9216, i16 -9216, i16 14336, i16 -14336]], align 16
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal noundef i32 @qoa_decode_init(ptr nofree noundef writeonly captures(none) initializes((348, 352)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.a, align 4, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @qoa_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp sgt i32 %i.f, -1
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 141) #6
  tail call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.l = icmp eq i32 %i.f, 0
  br i1 %i.l, label %bytestream2_get_byte.exit, label %bb.c

bb.c:                                             ; preds = %bytestream2_init.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.d, align 1, !tbaa !37
  %i.o = zext i8 %i.n to i32
  %.pre = ptrtoint ptr %i.m to i64
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bytestream2_init.exit, %bb.c
  %.pre-phi = phi i64 [ %i.k, %bytestream2_init.exit ], [ %.pre, %bb.c ]
  %.sroa.0.5 = phi ptr [ %i.j, %bytestream2_init.exit ], [ %i.m, %bb.c ] ; 5 uses
  %.0.i = phi i32 [ 0, %bytestream2_init.exit ], [ %i.o, %bb.c ] ; 8 uses
  %i.p = sub i64 %i.k, %.pre-phi
  %i.q = icmp slt i64 %i.p, 3
  br i1 %i.q, label %bytestream2_get_be24.exit.thread, label %bytestream2_get_be24.exit

bytestream2_get_be24.exit:                        ; preds = %bytestream2_get_byte.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 3 ; 2 uses
  %i.s = load i8, ptr %.sroa.0.5, align 1, !tbaa !37
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = or disjoint i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac             ; 3 uses
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = icmp ne i32 %.0.i, 0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.d, label %bytestream2_get_be24.exit.thread

bb.d:                                             ; preds = %bytestream2_get_be24.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %.not = icmp eq i32 %.0.i, %i.ah
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.ai) #6
  tail call void @av_channel_layout_default(ptr noundef nonnull %i.ai, i32 noundef %.0.i) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ak = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ai) #6 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bytestream2_get_be24.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.ad, ptr %i.am, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 %i.ad, ptr %i.an, align 4, !tbaa !44
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = sub i64 %i.k, %i.ao
  %i.aq = icmp slt i64 %i.ap, 2
  br i1 %i.aq, label %bytestream2_get_be16.exit92, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 5 ; 2 uses
  %i.as = load i16, ptr %i.r, align 1, !tbaa !37
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32
  %.pre155 = ptrtoint ptr %i.ar to i64
  br label %bytestream2_get_be16.exit92

bytestream2_get_be16.exit92:                      ; preds = %bb.f, %bb.g
  %.pre-phi156 = phi i64 [ %i.k, %bb.f ], [ %.pre155, %bb.g ]
  %.sroa.0.8 = phi ptr [ %i.j, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %.0.i91 = phi i32 [ 0, %bb.f ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  store i32 %.0.i91, ptr %i.av, align 8, !tbaa !45
  %i.aw = sub i64 %i.k, %.pre-phi156
  %i.ax = icmp slt i64 %i.aw, 2
  br i1 %i.ax, label %bytestream2_get_be16.exit, label %bb.h

bb.h:                                             ; preds = %bytestream2_get_be16.exit92
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 2
  %i.az = load i16, ptr %.sroa.0.8, align 1, !tbaa !37
  %i.ba = tail call i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = zext i16 %i.ba to i32
  br label %bytestream2_get_be16.exit

bytestream2_get_be16.exit:                        ; preds = %bytestream2_get_be16.exit92, %bb.h
  %.sroa.0.7 = phi ptr [ %i.ay, %bb.h ], [ %i.j, %bytestream2_get_be16.exit92 ]
  %.0.i90 = phi i32 [ %i.bb, %bb.h ], [ 0, %bytestream2_get_be16.exit92 ]
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !36  ; 2 uses
  %i.bd = icmp sgt i32 %.0.i90, %i.bc
  br i1 %i.bd, label %bytestream2_get_be24.exit.thread, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_be16.exit
  %i.be = shl nuw nsw i32 %.0.i, 4
  %i.bf = or disjoint i32 %i.be, 8
  %i.bg = add nuw nsw i32 %.0.i91, 19
  %i.bh = udiv i32 %i.bg, 20
  %i.bi = shl nuw nsw i32 %.0.i, 3
  %narrow = mul nuw nsw i32 %i.bi, %i.bh
  %narrow111 = add nuw nsw i32 %i.bf, %narrow
  %i.bj = icmp samesign ugt i32 %narrow111, %i.bc
  br i1 %i.bj, label %bytestream2_get_be24.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #6 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bytestream2_get_be24.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %1, align 8, !tbaa !46
  %wide.trip.count = zext nneg i32 %.0.i to i64   ; 3 uses
  br label %.preheader113

.preheader112:                                    ; preds = %.preheader113
  %i.bn = load i32, ptr %i.av, align 8, !tbaa !45
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.preheader.preheader, label %._crit_edge133

.preheader.preheader:                             ; preds = %.preheader112
  %4 = mul nuw nsw i32 %.0.i, 20
  br label %.preheader

.preheader113:                                    ; preds = %bb.k, %.preheader113
  %indvars.iv = phi i64 [ 0, %bb.k ], [ %indvars.iv.next, %.preheader113 ] ; 2 uses
  %.sroa.0.0118 = phi ptr [ %.sroa.0.7, %bb.k ], [ %i.cy, %.preheader113 ] ; 9 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 2
  %i.br = load i16, ptr %.sroa.0.0118, align 1, !tbaa !37
  %i.bs = tail call i16 @llvm.bswap.i16(i16 %i.br)
  %i.bt = sext i16 %i.bs to i32
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 4
  %i.bv = load i16, ptr %i.bq, align 1, !tbaa !37
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %i.bv)
  %i.bx = sext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 6
  %i.ca = load i16, ptr %i.bu, align 1, !tbaa !37
  %i.cb = tail call i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 8
  %i.cf = load i16, ptr %i.bz, align 1, !tbaa !37
  %i.cg = tail call i16 @llvm.bswap.i16(i16 %i.cf)
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 10
  %i.cl = load i16, ptr %i.ce, align 1, !tbaa !37
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %i.cl)
  %i.cn = sext i16 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !47
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 12
  %i.cp = load i16, ptr %i.ck, align 1, !tbaa !37
  %i.cq = tail call i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = sext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 14
  %i.cu = load i16, ptr %i.co, align 1, !tbaa !37
  %i.cv = tail call i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = sext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 16 ; 2 uses
  %i.cz = load i16, ptr %i.ct, align 1, !tbaa !37
  %i.da = tail call i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = sext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader112, label %.preheader113, !llvm.loop !29

.preheader:                                       ; preds = %.preheader.preheader, %bb.l
  %indvars.iv143 = phi i32 [ 0, %.preheader.preheader ], [ %indvars.iv.next144, %bb.l ] ; 2 uses
  %.080132 = phi i32 [ 0, %.preheader.preheader ], [ %i.dd, %bb.l ] ; 2 uses
  %.sroa.0.3131 = phi ptr [ %i.cy, %.preheader.preheader ], [ %i.di, %bb.l ]
  %i.dd = add nuw nsw i32 %.080132, 20            ; 3 uses
  br label %bb.m

._crit_edge133:                                   ; preds = %bb.l, %.preheader112
  store i32 1, ptr %2, align 4, !tbaa !47
  %i.de = load i32, ptr %i.e, align 8, !tbaa !36
  br label %bytestream2_get_be24.exit.thread

bb.l:                                             ; preds = %bb.n
  %i.df = load i32, ptr %i.av, align 8, !tbaa !45
  %i.dg = icmp slt i32 %i.dd, %i.df
  %indvars.iv.next144 = add i32 %indvars.iv143, %4
  br i1 %i.dg, label %.preheader, label %._crit_edge133, !llvm.loop !30

bb.m:                                             ; preds = %.preheader, %bb.n
  %indvars.iv150 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next151, %bb.n ] ; 3 uses
  %indvars.iv145 = phi i32 [ %indvars.iv143, %.preheader ], [ %indvars.iv.next146, %bb.n ] ; 2 uses
  %.sroa.0.4129 = phi ptr [ %.sroa.0.3131, %.preheader ], [ %i.di, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv150 ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.4129, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.dj)
  %i.dk = mul nsw i32 %..i, %.0.i
  %i.dl = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.dm = add nsw i32 %i.dk, %i.dl
  %5 = icmp sgt i32 %i.dj, %.080132
  br i1 %5, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.m
  %6 = zext i32 %indvars.iv145 to i64
  %i.dn = load i64, ptr %.sroa.0.4129, align 1, !tbaa !37
  %i.do = tail call noundef i64 @llvm.bswap.i64(i64 %i.dn) ; 2 uses
  %i.dp = lshr i64 %i.do, 60
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 20 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 28 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 12 ; 2 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr @qoa_dequant_tab, i64 %i.dp
  %.promoted = load i32, ptr %i.dq, align 4, !tbaa !47
  %.promoted122 = load i32, ptr %i.dr, align 4, !tbaa !47
  %.promoted124 = load i32, ptr %i.dt, align 4, !tbaa !47
  %.promoted126 = load i32, ptr %i.dv, align 4, !tbaa !47
  %.promoted128 = load i32, ptr %i.dw, align 4, !tbaa !47
  br label %bb.o

._crit_edge:                                      ; preds = %bb.o
  store i32 %i.fc, ptr %i.dq, align 4, !tbaa !47
  store i32 %i.ff, ptr %i.dr, align 4, !tbaa !47
  store i32 %i.fi, ptr %i.dt, align 4, !tbaa !47
  store i32 %i.fl, ptr %i.dv, align 4, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %indvars.iv.next146 = add i32 %indvars.iv145, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond154.not, label %bb.l, label %bb.m, !llvm.loop !31

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv147 = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next148, %bb.o ] ; 2 uses
  %i.dy = phi i32 [ %.promoted128, %.lr.ph ], [ %i.ev, %bb.o ] ; 2 uses
  %i.dz = phi i32 [ %.promoted126, %.lr.ph ], [ %i.fl, %bb.o ] ; 2 uses
  %i.ea = phi i32 [ %.promoted124, %.lr.ph ], [ %i.fi, %bb.o ] ; 2 uses
  %i.eb = phi i32 [ %.promoted122, %.lr.ph ], [ %i.ff, %bb.o ] ; 2 uses
  %i.ec = phi i32 [ %.promoted, %.lr.ph ], [ %i.fc, %bb.o ] ; 2 uses
  %.078120 = phi i64 [ %i.do, %.lr.ph ], [ %i.ex, %bb.o ] ; 2 uses
  %i.ed = load i32, ptr %i.dh, align 4, !tbaa !47 ; 2 uses
  %i.ee = mul i32 %i.ed, %i.ec
  %i.ef = load i32, ptr %i.ds, align 4, !tbaa !47 ; 2 uses
  %i.eg = mul i32 %i.ef, %i.eb
  %i.eh = add i32 %i.eg, %i.ee
  %i.ei = load i32, ptr %i.du, align 4, !tbaa !47 ; 2 uses
  %i.ej = mul i32 %i.ei, %i.ea
  %i.ek = add i32 %i.eh, %i.ej
  %i.el = mul i32 %i.dy, %i.dz
  %i.em = add i32 %i.ek, %i.el
  %i.en = ashr i32 %i.em, 13
  %i.eo = lshr i64 %.078120, 57
  %i.ep = and i64 %i.eo, 7
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !50
  %i.es = sext i16 %i.er to i32                   ; 2 uses
  %i.et = add nsw i32 %i.en, %i.es
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.et, i32 -32768)
  %i.ev = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 32767) ; 3 uses
  %.0.i94 = trunc nsw i32 %i.ev to i16
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv147
  store i16 %.0.i94, ptr %i.ew, align 2, !tbaa !50
  %i.ex = shl i64 %.078120, 3
  %i.ey = ashr i32 %i.es, 4                       ; 5 uses
  %i.ez = sub nsw i32 0, %i.ey                    ; 4 uses
  %i.fa = icmp slt i32 %i.ed, 0
  %i.fb = select i1 %i.fa, i32 %i.ez, i32 %i.ey
  %i.fc = add nsw i32 %i.fb, %i.ec                ; 2 uses
  %i.fd = icmp slt i32 %i.ef, 0
  %i.fe = select i1 %i.fd, i32 %i.ez, i32 %i.ey
  %i.ff = add nsw i32 %i.fe, %i.eb                ; 2 uses
  %i.fg = icmp slt i32 %i.ei, 0
  %i.fh = select i1 %i.fg, i32 %i.ez, i32 %i.ey
  %i.fi = add nsw i32 %i.fh, %i.ea                ; 2 uses
  %i.fj = icmp slt i32 %i.dy, 0
  %i.fk = select i1 %i.fj, i32 %i.ez, i32 %i.ey
  %i.fl = add nsw i32 %i.fk, %i.dz                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dh, ptr noundef nonnull align 4 dereferenceable(12) %i.ds, i64 12, i1 false), !tbaa !47
  store i32 %i.ev, ptr %i.dw, align 4, !tbaa !47
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, %wide.trip.count ; 2 uses
  %i.fm = trunc nuw i64 %indvars.iv.next148 to i32
  %i.fn = icmp sgt i32 %i.dm, %i.fm
  br i1 %i.fn, label %bb.o, label %._crit_edge, !llvm.loop !32

bytestream2_get_be24.exit.thread:                 ; preds = %bytestream2_get_byte.exit, %bb.j, %bb.i, %bytestream2_get_be16.exit, %bb.e, %bytestream2_get_be24.exit, %._crit_edge133
  %.0 = phi i32 [ -1094995529, %bytestream2_get_be24.exit ], [ %i.ak, %bb.e ], [ -1094995529, %bytestream2_get_be16.exit ], [ -1094995529, %bb.i ], [ %i.de, %._crit_edge133 ], [ %i.bk, %bb.j ], [ -1094995529, %bytestream2_get_byte.exit ]
  ret i32 %.0
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare void @av_channel_layout_default(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !6, i64 348}
!29 = distinct !{!29, !48}
!30 = distinct !{!30, !48}
!31 = distinct !{!31, !48}
!32 = distinct !{!32, !48}
!33 = !{!27, !9, i64 32}
!34 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!35 = !{!34, !14, i64 24}
!36 = !{!34, !6, i64 32}
!37 = !{!5, !5, i64 0}
!38 = !{!27, !6, i64 356}
!39 = !{!27, !6, i64 344}
!40 = !{!"p2 omnipotent char", !25, i64 0}
!41 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!42 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!43 = !{!"AVFrame", !5, i64 0, !5, i64 64, !40, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !41, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !42, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!44 = !{!43, !6, i64 180}
!45 = !{!43, !6, i64 112}
!46 = !{!14, !14, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"short", !5, i64 0}
!50 = !{!49, !49, i64 0}
end_hunk_0
