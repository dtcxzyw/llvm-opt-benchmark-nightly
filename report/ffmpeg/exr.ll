inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0
@.str.69 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"scanlineimage\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"tiledimage\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Incomplete header\0A\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"Missing compression attribute.\0A\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"Invalid tile attribute.\0A\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"Incomplete frame.\0A\00", align 1
@.str.78 = private unnamed_addr constant [46 x i8] c"Unknown data type %s for header variable %s.\0A\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"Subres tile before full res tile\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"decode_block() failed.\0A\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"Too big code length\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"No place for run symbol\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Gray DWA\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"Zero ac_size\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"Too big rle_raw_size\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"odd dimensions DWA\00", align 1
@ff_zigzag_direct = external local_unnamed_addr constant [64 x i8], align 16
@switch.table.decode_frame = private unnamed_addr constant [10 x i16] [i16 1, i16 1, i16 1, i16 16, i16 32, i16 16, i16 32, i16 32, i16 32, i16 256], align 4

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @ff_init_float2half_tables(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1784
  tail call void @ff_init_half2float_tables(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @ff_exrdsp_init(ptr noundef nonnull %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 936) #12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr %i.j, ptr %i.k, align 8, !tbaa !42
  %.not = icmp eq ptr %i.j, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 7 uses
  %i.d = alloca [256 x i8], align 16              ; 6 uses
  %i.e = alloca [256 x i8], align 16              ; 7 uses
  %i.f = alloca [8192 x i8], align 16             ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 62 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 79 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45   ; 3 uses
  %i.n = icmp ne ptr %i.k, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i238 = and i1 %i.n, %i.o
  br i1 %or.cond.i238, label %bytestream2_init.exit239, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 141) #12
  tail call void @abort() #13
  unreachable

bytestream2_init.exit239:                         ; preds = %bb.a
  store ptr %i.k, ptr %i.i, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 4 uses
  store ptr %i.k, ptr %i.p, align 8, !tbaa !47
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 17 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 204 ; 4 uses
  store i32 0, ptr %i.t, align 4, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 84 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 92 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 100 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 52 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.v, i8 -1, i64 24, i1 false)
  store i32 3, ptr %i.ad, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  store i32 10, ptr %i.ae, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 5 uses
  store i32 0, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 76 ; 5 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 5 uses
  store i32 -1, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 116 ; 5 uses
  store i32 -1, ptr %i.aj, align 4, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 132 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 140 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, i8 0, i64 20, i1 false)
  %i.ap = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.aq = icmp samesign ult i32 %i.m, 10
  br i1 %i.aq, label %bb.c, label %bytestream2_get_le32.exit466.i

bb.c:                                             ; preds = %bytestream2_init.exit239
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.as, i32 noundef 16, ptr noundef nonnull @.str.18) #12
  br label %decode_header.exit.thread

bytestream2_get_le32.exit466.i:                   ; preds = %bytestream2_init.exit239
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.i, align 8, !tbaa !59
  %i.au = load i32, ptr %i.k, align 1, !tbaa !60  ; 2 uses
  %.not.i243 = icmp eq i32 %i.au, 20000630
  br i1 %.not.i243, label %bytestream2_get_byte.exit479.i, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_le32.exit466.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.au) #12
  br label %decode_header.exit.thread

bytestream2_get_byte.exit479.i:                   ; preds = %bytestream2_get_le32.exit466.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  store ptr %i.ax, ptr %i.i, align 8, !tbaa !59
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !60  ; 2 uses
  %.not368.i = icmp eq i8 %i.ay, 2
  br i1 %.not368.i, label %bytestream2_get_le24.exit.i, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_byte.exit479.i
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.bb, ptr noundef nonnull @.str.20, i32 noundef %i.az) #12
  br label %decode_header.exit.thread

bytestream2_get_le24.exit.i:                      ; preds = %bytestream2_get_byte.exit479.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !59
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !60
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = and i32 %i.be, 2
  %.not369.i = icmp eq i32 %i.bf, 0
  br i1 %.not369.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_le24.exit.i
  store i32 1, ptr %i.ak, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bytestream2_get_le24.exit.i
  %i.bg = and i32 %i.be, 16
  %.not370.i = icmp eq i32 %i.bg, 0
  br i1 %.not370.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.al, align 4, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bh = and i32 %i.be, 8
  %.not371.i = icmp eq i32 %i.bh, 0
  br i1 %.not371.i, label %.preheader637.i, label %bb.j

.preheader637.i:                                  ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 232 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 27 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 224 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 3 uses
  %gepdiff = add nsw i64 %i.q, -8                 ; 2 uses
  %i.bq = trunc i64 %gepdiff to i32
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.preheader636.i.lr.ph, label %.thread627.i

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.bt, ptr noundef nonnull @.str.21) #12
  br label %decode_header.exit.thread

.preheader636.i:                                  ; preds = %.preheader636.i.lr.ph, %.backedge.i
  %i.bu = phi i64 [ %i.wn, %.preheader636.i.lr.ph ], [ %i.nr, %.backedge.i ]
  %i.bv = phi i64 [ %i.wo, %.preheader636.i.lr.ph ], [ %i.np, %.backedge.i ] ; 32 uses
  %i.bw = phi ptr [ %i.wp, %.preheader636.i.lr.ph ], [ %i.no, %.backedge.i ] ; 3 uses
  %i.bx = phi ptr [ %i.wq, %.preheader636.i.lr.ph ], [ %i.nn, %.backedge.i ] ; 10 uses
  %i.by = load i32, ptr %i.al, align 4, !tbaa !62
  %.not372.i = icmp eq i32 %i.by, 0               ; 2 uses
  br i1 %.not372.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader636.i
  %i.bz = load i32, ptr %i.bi, align 8, !tbaa !63 ; 2 uses
  %.promoted.i = load i32, ptr %i.ao, align 8, !tbaa !64 ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %.promoted.i, i32 %i.bz)
  %exitcond.not.i367.not = icmp slt i32 %.promoted.i, %i.bz
  br i1 %exitcond.not.i367.not, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.i, %skip_header_chunk.exit.i
  %i.ca = phi i32 [ %i.dp, %skip_header_chunk.exit.i ], [ %.promoted.i, %.lr.ph.i ]
  %i.cb = phi ptr [ %i.do, %skip_header_chunk.exit.i ], [ %i.bw, %.lr.ph.i ] ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.bv, %i.cc                    ; 3 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %.critedge.loopexit.i

bb.k:                                             ; preds = %.lr.ph
  %i.cg = icmp slt i64 %i.cd, 1
  br i1 %i.cg, label %bytestream2_peek_byte.exit495.thread.i, label %bytestream2_peek_byte.exit495.i

bytestream2_peek_byte.exit495.i:                  ; preds = %bb.k
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !60
  %.not373.i = icmp eq i8 %i.ch, 0
  br i1 %.not373.i, label %bytestream2_peek_byte.exit495.thread.i, label %.preheader14.i.i.preheader

bytestream2_peek_byte.exit.ithread-pre-split.i:   ; preds = %bytestream2_get_le32.exit.i.i
  %.pr.i = load i8, ptr %i.cm, align 1, !tbaa !60
  %.not.i.i = icmp eq i8 %.pr.i, 0
  br i1 %.not.i.i, label %skip_header_chunk.exit.loopexit.i, label %.preheader14.i.i.preheader

.preheader14.i.i.preheader:                       ; preds = %bytestream2_peek_byte.exit495.i, %bytestream2_peek_byte.exit.ithread-pre-split.i
  %.promoted162126.i.i366 = phi ptr [ %i.cm, %bytestream2_peek_byte.exit.ithread-pre-split.i ], [ %i.cb, %bytestream2_peek_byte.exit495.i ] ; 2 uses
  %4 = ptrtoint ptr %.promoted162126.i.i366 to i64
  %5 = sub i64 %i.bv, %4
  %6 = icmp slt i64 %5, 1
  br i1 %6, label %.loopexit.i.i, label %bytestream2_get_byte.exit.i.i

bb.l:                                             ; preds = %.loopexit.1.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.promoted1623.1.i.i, i64 4 ; 3 uses
  store ptr %i.ci, ptr %i.i, align 8, !tbaa !59
  %i.cj = load i32, ptr %.promoted1623.1.i.i, align 1, !tbaa !60
  %i.ck = zext i32 %i.cj to i64
  %.pre27.i.i = ptrtoint ptr %i.ci to i64
  br label %bytestream2_get_le32.exit.i.i

bytestream2_get_le32.exit.i.i:                    ; preds = %.loopexit.1.i.i, %bb.l
  %.pre-phi28.i.i = phi i64 [ %.pre27.i.i, %bb.l ], [ %i.bv, %.loopexit.1.i.i ]
  %.promoted1622.i.i = phi ptr [ %i.ci, %bb.l ], [ %i.bx, %.loopexit.1.i.i ]
  %.0.i.i.i = phi i64 [ %i.ck, %bb.l ], [ 0, %.loopexit.1.i.i ]
  %i.cl = sub i64 %i.bv, %.pre-phi28.i.i
  %..i.i.i = call i64 @llvm.smin.i64(i64 %i.cl, i64 %.0.i.i.i)
  %i.cm = getelementptr inbounds i8, ptr %.promoted1622.i.i, i64 %..i.i.i ; 5 uses
  store ptr %i.cm, ptr %i.i, align 8, !tbaa !46
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.bv, %i.cn                    ; 3 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = icmp slt i32 %i.cp, 1
  %i.cr = icmp slt i64 %i.co, 1
  %or.cond.i506.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i506.i, label %skip_header_chunk.exit.loopexit.i, label %bytestream2_peek_byte.exit.ithread-pre-split.i, !llvm.loop !65

.preheader14.i.i:                                 ; preds = %bytestream2_get_byte.exit.i.i
  %i.cs = ptrtoint ptr %i.cv to i64
  %i.ct = sub i64 %i.bv, %i.cs
  %i.cu = icmp slt i64 %i.ct, 1
  br i1 %i.cu, label %.loopexit.i.i, label %bytestream2_get_byte.exit.i.i, !llvm.loop !67

bytestream2_get_byte.exit.i.i:                    ; preds = %.preheader14.i.i.preheader, %.preheader14.i.i
  %7 = phi ptr [ %i.cv, %.preheader14.i.i ], [ %.promoted162126.i.i366, %.preheader14.i.i.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 4 uses
  store ptr %i.cv, ptr %i.i, align 8, !tbaa !59
  %i.cw = load i8, ptr %7, align 1, !tbaa !60
  %.not7.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not7.i.i, label %.preheader14.i.i.backedge, label %.preheader14.i.i, !llvm.loop !67

.preheader14.i.i.backedge:                        ; preds = %bytestream2_get_byte.exit.i.i
  br label %.loopexit.i.i, !llvm.loop !67

.loopexit.i.i:                                    ; preds = %.preheader14.i.i, %.preheader14.i.i.backedge, %.preheader14.i.i.preheader
  %.promoted1623.i.i = phi ptr [ %i.bx, %.preheader14.i.i.preheader ], [ %i.cv, %.preheader14.i.i.backedge ], [ %i.bx, %.preheader14.i.i ] ; 2 uses
  %i.cx = ptrtoint ptr %.promoted1623.i.i to i64
  %i.cy = sub i64 %i.bv, %i.cx
  %i.cz = icmp slt i64 %i.cy, 1
  br i1 %i.cz, label %.loopexit.1.i.i, label %bytestream2_get_byte.exit.1.i.i

bb.m:                                             ; preds = %bytestream2_get_byte.exit.1.i.i
  %i.da = sub i64 %i.bv, %.pre.i.i
  %i.db = icmp slt i64 %i.da, 1
  br i1 %i.db, label %.loopexit.1.i.i, label %bytestream2_get_byte.exit.1.i.i, !llvm.loop !67

bytestream2_get_byte.exit.1.i.i:                  ; preds = %.loopexit.i.i, %bb.m
  %i.dc = phi ptr [ %i.dd, %bb.m ], [ %.promoted1623.i.i, %.loopexit.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 4 uses
  store ptr %i.dd, ptr %i.i, align 8, !tbaa !59
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !60
  %.not7.1.i.i = icmp eq i8 %i.de, 0
  %.pre.i.i = ptrtoint ptr %i.dd to i64           ; 2 uses
  br i1 %.not7.1.i.i, label %.loopexit.1.i.i, label %bb.m, !llvm.loop !67

.loopexit.1.i.i:                                  ; preds = %bb.m, %bytestream2_get_byte.exit.1.i.i, %.loopexit.i.i
  %.pre-phi.i.i = phi i64 [ %i.bv, %.loopexit.i.i ], [ %i.bv, %bb.m ], [ %.pre.i.i, %bytestream2_get_byte.exit.1.i.i ]
  %.promoted1623.1.i.i = phi ptr [ %i.bx, %.loopexit.i.i ], [ %i.bx, %bb.m ], [ %i.dd, %bytestream2_get_byte.exit.1.i.i ] ; 2 uses
  %i.df = sub i64 %i.bv, %.pre-phi.i.i
  %i.dg = icmp slt i64 %i.df, 4
  br i1 %i.dg, label %bytestream2_get_le32.exit.i.i, label %bb.l

bytestream2_peek_byte.exit495.thread.i:           ; preds = %bytestream2_peek_byte.exit495.i, %bb.k
  %..i505.i = call i64 @llvm.smin.i64(i64 %i.cd, i64 1)
  %i.dh = getelementptr inbounds i8, ptr %i.cb, i64 %..i505.i ; 6 uses
  store ptr %i.dh, ptr %i.i, align 8, !tbaa !46
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.bv, %i.di
  %i.dk = icmp slt i64 %i.dj, 1
  br i1 %i.dk, label %.critedge.loopexit.i, label %bytestream2_peek_byte.exit493.i

bytestream2_peek_byte.exit493.i:                  ; preds = %bytestream2_peek_byte.exit495.thread.i
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !60
  %.not374.i = icmp eq i8 %i.dl, 0
  br i1 %.not374.i, label %.critedge.loopexit.i, label %skip_header_chunk.exit.i

skip_header_chunk.exit.loopexit.i:                ; preds = %bytestream2_get_le32.exit.i.i, %bytestream2_peek_byte.exit.ithread-pre-split.i
  %i.dm = call i64 @llvm.smin.i64(i64 %i.co, i64 1)
  br label %skip_header_chunk.exit.i

skip_header_chunk.exit.i:                         ; preds = %skip_header_chunk.exit.loopexit.i, %bytestream2_peek_byte.exit493.i
  %.pre-phi746.i = phi i64 [ %i.dm, %skip_header_chunk.exit.loopexit.i ], [ 1, %bytestream2_peek_byte.exit493.i ]
  %i.dn = phi ptr [ %i.cm, %skip_header_chunk.exit.loopexit.i ], [ %i.dh, %bytestream2_peek_byte.exit493.i ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.pre-phi746.i ; 3 uses
  store ptr %i.do, ptr %i.i, align 8, !tbaa !46
  %i.dp = add i32 %i.ca, 1                        ; 3 uses
  store i32 %i.dp, ptr %i.ao, align 8, !tbaa !64
  %exitcond.not.i = icmp eq i32 %i.dp, %smax.i
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph

.critedge.loopexit.i:                             ; preds = %skip_header_chunk.exit.i, %.lr.ph, %bytestream2_peek_byte.exit495.thread.i, %bytestream2_peek_byte.exit493.i, %.lr.ph.i
  %i.dq = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.dh, %bytestream2_peek_byte.exit495.thread.i ], [ %i.cb, %.lr.ph ], [ %i.dh, %bytestream2_peek_byte.exit493.i ], [ %i.do, %skip_header_chunk.exit.i ] ; 2 uses
  %.pre716.i = ptrtoint ptr %i.dq to i64
  %.pre717.i = sub i64 %i.bv, %.pre716.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader636.i
  %.pre-phi718.i = phi i64 [ %.pre717.i, %.critedge.loopexit.i ], [ %i.bu, %.preheader636.i ] ; 2 uses
  %i.dr = phi ptr [ %i.dq, %.critedge.loopexit.i ], [ %i.bw, %.preheader636.i ] ; 3 uses
  %i.ds = icmp slt i64 %.pre-phi718.i, 1
  br i1 %i.ds, label %bytestream2_peek_byte.exit491.thread.i, label %bytestream2_peek_byte.exit491.i

bytestream2_peek_byte.exit491.i:                  ; preds = %.critedge.i
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !60
  %.not375.i = icmp eq i8 %i.dt, 0
  br i1 %.not375.i, label %bytestream2_peek_byte.exit491.thread.i, label %bb.s

bytestream2_peek_byte.exit491.thread.i:           ; preds = %bytestream2_peek_byte.exit491.i, %.critedge.i
  br i1 %.not372.i, label %.thread627.i, label %bb.n

bb.n:                                             ; preds = %bytestream2_peek_byte.exit491.thread.i
  %..i503.i = call i64 @llvm.smin.i64(i64 %.pre-phi718.i, i64 1)
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %..i503.i ; 4 uses
  store ptr %i.du, ptr %i.i, align 8, !tbaa !46
  %i.dv = load i32, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.dw = load i32, ptr %i.bi, align 8, !tbaa !63
  %i.dx = icmp eq i32 %i.dv, %i.dw
  %i.dy = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dz = sub i64 %i.bv, %i.dy                    ; 3 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  %or.cond887.i = select i1 %i.dx, i1 %i.eb, i1 false
  br i1 %or.cond887.i, label %.lr.ph674.i, label %bytestream2_peek_byte.exit487.thread.i

.lr.ph674.i:                                      ; preds = %bb.n, %skip_header_chunk.exit531.i
  %i.ec = phi i64 [ %i.ft, %skip_header_chunk.exit531.i ], [ %i.dz, %bb.n ] ; 2 uses
  %i.ed = phi i64 [ %i.fs, %skip_header_chunk.exit531.i ], [ %i.dy, %bb.n ]
  %i.ee = phi ptr [ %i.fr, %skip_header_chunk.exit531.i ], [ %i.du, %bb.n ] ; 4 uses
  %i.ef = icmp slt i64 %i.ec, 1
  br i1 %i.ef, label %bytestream2_peek_byte.exit489.thread.i, label %bytestream2_peek_byte.exit489.i

bytestream2_peek_byte.exit489.i:                  ; preds = %.lr.ph674.i
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !60
  %.not377.i = icmp eq i8 %i.eg, 0
  br i1 %.not377.i, label %bytestream2_peek_byte.exit489.thread.i, label %bb.o

bb.o:                                             ; preds = %bytestream2_peek_byte.exit489.i
  %i.eh = sub i64 %i.bv, %i.ed                    ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = icmp slt i32 %i.ei, 1
  %i.ek = icmp slt i64 %i.eh, 1
  %or.cond25.i508.i = or i1 %i.ek, %i.ej
  br i1 %or.cond25.i508.i, label %skip_header_chunk.exit531.i, label %bytestream2_peek_byte.exit.i509.i

bytestream2_peek_byte.exit.i509.i:                ; preds = %bb.o, %bytestream2_get_le32.exit.i525.i
  %i.el = phi ptr [ %i.er, %bytestream2_get_le32.exit.i525.i ], [ %i.ee, %bb.o ] ; 4 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !60
  %.not.i511.i = icmp eq i8 %i.em, 0
  br i1 %.not.i511.i, label %skip_header_chunk.exit531.i, label %.preheader14.i512.i.preheader

.preheader14.i512.i.preheader:                    ; preds = %bytestream2_peek_byte.exit.i509.i
  %8 = ptrtoint ptr %i.el to i64
  %9 = sub i64 %i.bv, %8
  %10 = icmp slt i64 %9, 1
  br i1 %10, label %.loopexit.i515.i, label %bytestream2_get_byte.exit.i513.i

bb.p:                                             ; preds = %.loopexit.1.i521.i
  %i.en = getelementptr inbounds nuw i8, ptr %.promoted1623.1.i523.i, i64 4 ; 3 uses
  store ptr %i.en, ptr %i.i, align 8, !tbaa !59
  %i.eo = load i32, ptr %.promoted1623.1.i523.i, align 1, !tbaa !60
  %i.ep = zext i32 %i.eo to i64
  %.pre27.i524.i = ptrtoint ptr %i.en to i64
  br label %bytestream2_get_le32.exit.i525.i

bytestream2_get_le32.exit.i525.i:                 ; preds = %.loopexit.1.i521.i, %bb.p
  %.pre-phi28.i526.i = phi i64 [ %.pre27.i524.i, %bb.p ], [ %i.bv, %.loopexit.1.i521.i ]
  %.promoted1622.i527.i = phi ptr [ %i.en, %bb.p ], [ %i.bx, %.loopexit.1.i521.i ]
  %.0.i.i528.i = phi i64 [ %i.ep, %bb.p ], [ 0, %.loopexit.1.i521.i ]
  %i.eq = sub i64 %i.bv, %.pre-phi28.i526.i
  %..i.i529.i = call i64 @llvm.smin.i64(i64 %i.eq, i64 %.0.i.i528.i)
  %i.er = getelementptr inbounds i8, ptr %.promoted1622.i527.i, i64 %..i.i529.i ; 4 uses
  store ptr %i.er, ptr %i.i, align 8, !tbaa !46
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.bv, %i.es                    ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = icmp slt i32 %i.eu, 1
  %i.ew = icmp slt i64 %i.et, 1
  %or.cond.i530.i = or i1 %i.ew, %i.ev
  br i1 %or.cond.i530.i, label %skip_header_chunk.exit531.i, label %bytestream2_peek_byte.exit.i509.i, !llvm.loop !65

.preheader14.i512.i:                              ; preds = %bytestream2_get_byte.exit.i513.i
  %i.ex = ptrtoint ptr %i.fa to i64
  %i.ey = sub i64 %i.bv, %i.ex
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %.loopexit.i515.i, label %bytestream2_get_byte.exit.i513.i, !llvm.loop !67

bytestream2_get_byte.exit.i513.i:                 ; preds = %.preheader14.i512.i.preheader, %.preheader14.i512.i
  %11 = phi ptr [ %i.fa, %.preheader14.i512.i ], [ %i.el, %.preheader14.i512.i.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  store ptr %i.fa, ptr %i.i, align 8, !tbaa !59
  %i.fb = load i8, ptr %11, align 1, !tbaa !60
  %.not7.i514.i = icmp eq i8 %i.fb, 0
  br i1 %.not7.i514.i, label %bytestream2_get_byte.exit.i513.i..loopexit.i515.i_crit_edge, label %.preheader14.i512.i, !llvm.loop !67

bytestream2_get_byte.exit.i513.i..loopexit.i515.i_crit_edge: ; preds = %bytestream2_get_byte.exit.i513.i
  br label %.loopexit.i515.i, !llvm.loop !67

.loopexit.i515.i:                                 ; preds = %.preheader14.i512.i, %bytestream2_get_byte.exit.i513.i..loopexit.i515.i_crit_edge, %.preheader14.i512.i.preheader
  %.promoted1623.i516.i = phi ptr [ %i.bx, %.preheader14.i512.i.preheader ], [ %i.fa, %bytestream2_get_byte.exit.i513.i..loopexit.i515.i_crit_edge ], [ %i.bx, %.preheader14.i512.i ] ; 2 uses
  %i.fc = ptrtoint ptr %.promoted1623.i516.i to i64
  %i.fd = sub i64 %i.bv, %i.fc
  %i.fe = icmp slt i64 %i.fd, 1
  br i1 %i.fe, label %.loopexit.1.i521.i, label %bytestream2_get_byte.exit.1.i517.i

bb.q:                                             ; preds = %bytestream2_get_byte.exit.1.i517.i
  %i.ff = sub i64 %i.bv, %.pre.i520.i
  %i.fg = icmp slt i64 %i.ff, 1
  br i1 %i.fg, label %.loopexit.1.i521.i, label %bytestream2_get_byte.exit.1.i517.i, !llvm.loop !67

bytestream2_get_byte.exit.1.i517.i:               ; preds = %.loopexit.i515.i, %bb.q
  %i.fh = phi ptr [ %i.fi, %bb.q ], [ %.promoted1623.i516.i, %.loopexit.i515.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 4 uses
  store ptr %i.fi, ptr %i.i, align 8, !tbaa !59
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !60
  %.not7.1.i518.i = icmp eq i8 %i.fj, 0
  %.pre.i520.i = ptrtoint ptr %i.fi to i64        ; 2 uses
  br i1 %.not7.1.i518.i, label %.loopexit.1.i521.i, label %bb.q, !llvm.loop !67

.loopexit.1.i521.i:                               ; preds = %bb.q, %bytestream2_get_byte.exit.1.i517.i, %.loopexit.i515.i
  %.pre-phi.i522.i = phi i64 [ %i.bv, %.loopexit.i515.i ], [ %i.bv, %bb.q ], [ %.pre.i520.i, %bytestream2_get_byte.exit.1.i517.i ]
  %.promoted1623.1.i523.i = phi ptr [ %i.bx, %.loopexit.i515.i ], [ %i.bx, %bb.q ], [ %i.fi, %bytestream2_get_byte.exit.1.i517.i ] ; 2 uses
  %i.fk = sub i64 %i.bv, %.pre-phi.i522.i
  %i.fl = icmp slt i64 %i.fk, 4
  br i1 %i.fl, label %bytestream2_get_le32.exit.i525.i, label %bb.p

bytestream2_peek_byte.exit489.thread.i:           ; preds = %bytestream2_peek_byte.exit489.i, %.lr.ph674.i
  %..i502.i = call i64 @llvm.smin.i64(i64 %i.ec, i64 1)
  %i.fm = getelementptr inbounds i8, ptr %i.ee, i64 %..i502.i ; 6 uses
  store ptr %i.fm, ptr %i.i, align 8, !tbaa !46
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.bv, %i.fn
  %i.fp = icmp slt i64 %i.fo, 1
  br i1 %i.fp, label %.thread627.i, label %bytestream2_peek_byte.exit487.i

bytestream2_peek_byte.exit487.i:                  ; preds = %bytestream2_peek_byte.exit489.thread.i
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !60
  %.not378.i = icmp eq i8 %i.fq, 0
  br i1 %.not378.i, label %.thread627.i, label %skip_header_chunk.exit531.i

skip_header_chunk.exit531.i:                      ; preds = %bytestream2_get_le32.exit.i525.i, %bytestream2_peek_byte.exit.i509.i, %bytestream2_peek_byte.exit487.i, %bb.o
  %i.fr = phi ptr [ %i.fm, %bytestream2_peek_byte.exit487.i ], [ %i.ee, %bb.o ], [ %i.er, %bytestream2_get_le32.exit.i525.i ], [ %i.el, %bytestream2_peek_byte.exit.i509.i ] ; 3 uses
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = sub i64 %i.bv, %i.fs                    ; 3 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph674.i, label %bytestream2_peek_byte.exit487.thread.i, !llvm.loop !68

bytestream2_peek_byte.exit487.thread.i:           ; preds = %skip_header_chunk.exit531.i, %bb.n
  %.pre-phi551 = phi i64 [ %i.dz, %bb.n ], [ %i.ft, %skip_header_chunk.exit531.i ]
  %i.fw = phi ptr [ %i.du, %bb.n ], [ %i.fr, %skip_header_chunk.exit531.i ] ; 3 uses
  %i.fx = icmp slt i64 %.pre-phi551, 1
  br i1 %i.fx, label %.thread627.i, label %bytestream2_peek_byte.exit485.i

bytestream2_peek_byte.exit485.i:                  ; preds = %bytestream2_peek_byte.exit487.thread.i
  %.pr = load i8, ptr %i.fw, align 1, !tbaa !60
  %.not379.i = icmp eq i8 %.pr, 0
  br i1 %.not379.i, label %.thread627.i, label %bb.r

bb.r:                                             ; preds = %bytestream2_peek_byte.exit485.i
  %i.fy = add nsw i32 %i.dv, 1
  store i32 %i.fy, ptr %i.ao, align 8, !tbaa !64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bytestream2_peek_byte.exit491.i
  %i.fz = call fastcc i32 @check_header_variable(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 38) ; 4 uses
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %bb.t, label %bb.bn

bb.t:                                             ; preds = %bb.s
  %.not391.i = icmp eq i32 %i.fz, 0
  br i1 %.not391.i, label %.thread622.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gb = load ptr, ptr %i.i, align 8, !tbaa !46  ; 4 uses
  %.not635.i = icmp eq ptr %i.gb, null
  br i1 %.not635.i, label %bb.v, label %bytestream2_init.exit.i

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 141) #12
  call void @abort() #13
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.u
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc ; 4 uses
  %i.ge = ptrtoint ptr %i.gd to i64               ; 9 uses
  %i.gf = icmp samesign ugt i32 %i.fz, 18
  br i1 %i.gf, label %.lr.ph691.i, label %._crit_edge.i

.lr.ph691.i:                                      ; preds = %bytestream2_init.exit.i, %bb.bb
  %.1317690.i = phi i32 [ %.2318.i, %bb.bb ], [ %.0316.ph.i392, %bytestream2_init.exit.i ] ; 4 uses
  %.sroa.0.0689.i = phi ptr [ %i.is, %bb.bb ], [ %i.gb, %bytestream2_init.exit.i ] ; 6 uses
  %i.gg = load ptr, ptr %i.bo, align 8, !tbaa !69 ; 3 uses
  %strcmpload.i = load i8, ptr %i.gg, align 1
  %.not398.i = icmp eq i8 %strcmpload.i, 0
  br i1 %.not398.i, label %.critedge417.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph691.i
  %i.gh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gg) #14
  %i.gi = call i32 @strncmp(ptr noundef nonnull %.sroa.0.0689.i, ptr noundef nonnull %i.gg, i64 noundef %i.gh) #14
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = load ptr, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gk, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull %.sroa.0.0689.i) #12
  %i.gl = load ptr, ptr %i.bo, align 8, !tbaa !69
  %i.gm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gl) #14
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0689.i, i64 %i.gm ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !60
  %i.gp = icmp eq i8 %i.go, 46
  %spec.select.idx.i = zext i1 %i.gp to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 %spec.select.idx.i
  br label %.critedge417.i

bb.y:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gk, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef nonnull %.sroa.0.0689.i) #12
  br label %bb.an

.critedge417.i:                                   ; preds = %bb.x, %.lr.ph691.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0689.i, %.lr.ph691.i ], [ %spec.select.i, %bb.x ] ; 24 uses
  %i.gq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.1.i) #14
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.critedge417.i
  %i.gs = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !60 ; 2 uses
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = add i8 %i.gs, -97
  %or.cond.i532.i = icmp ult i8 %i.gu, 26
  %i.gv = and i32 %i.gt, 95
  %spec.select.i.i = select i1 %or.cond.i532.i, i32 %i.gv, i32 %i.gt ; 2 uses
  %i.gw = add nsw i32 %spec.select.i.i, -65       ; 2 uses
  %or.cond.i246 = icmp ult i32 %i.gw, 26
  br i1 %or.cond.i246, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gx = shl nuw nsw i32 1, %i.gw
  %i.gy = load i32, ptr %i.an, align 8, !tbaa !70
  %i.gz = or i32 %i.gy, %i.gx
  store i32 %i.gz, ptr %i.an, align 8, !tbaa !70
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ha = load ptr, ptr %i.bk, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ha, i32 noundef 48, ptr noundef nonnull @.str.26, i32 noundef %spec.select.i.i) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge417.i
  %i.hb = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.27) #12
  %.not400.i = icmp eq i32 %i.hb, 0
  br i1 %.not400.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hc = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.28) #12
  %.not401.i = icmp eq i32 %i.hc, 0
  br i1 %.not401.i, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hd = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.29) #12
  %.not402.i = icmp eq i32 %i.hd, 0
  br i1 %.not402.i, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.he = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.30) #12
  %.not403.i = icmp eq i32 %i.he, 0
  br i1 %.not403.i, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hf = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.31) #12
  %.not404.i = icmp eq i32 %i.hf, 0
  br i1 %.not404.i, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hg = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.32) #12
  %.not405.i = icmp eq i32 %i.hg, 0
  br i1 %.not405.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hh = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.33) #12
  %.not406.i = icmp eq i32 %i.hh, 0
  br i1 %.not406.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hi = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.34) #12
  %.not407.i = icmp eq i32 %i.hi, 0
  br i1 %.not407.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hj = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.35) #12
  %.not408.i = icmp eq i32 %i.hj, 0
  br i1 %.not408.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hk = call i32 @av_strcasecmp(ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull @.str.36) #12
  %.not409.i = icmp eq i32 %i.hk, 0
  br i1 %.not409.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_0
