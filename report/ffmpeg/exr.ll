Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exr?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @ff_init_float2half_tables(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1784
  tail call void @ff_init_half2float_tables(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @ff_exrdsp_init(ptr noundef nonnull %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 936) #12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr %i.j, ptr %i.k, align 8, !tbaa !43
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 62 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 79 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !116  ; 3 uses
  %i.n = icmp ne ptr %i.k, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i238 = and i1 %i.n, %i.o
  br i1 %or.cond.i238, label %bytestream2_init.exit239, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 141) #12
  tail call void @abort() #13
  unreachable

bytestream2_init.exit239:                         ; preds = %bb.a
  store ptr %i.k, ptr %i.i, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 4 uses
  store ptr %i.k, ptr %i.p, align 8, !tbaa !45
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 17 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 204 ; 4 uses
  store i32 0, ptr %i.t, align 4, !tbaa !47
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
  store i32 3, ptr %i.ad, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  store i32 10, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 5 uses
  store i32 0, ptr %i.af, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 76 ; 5 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 5 uses
  store i32 -1, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 116 ; 5 uses
  store i32 -1, ptr %i.aj, align 4, !tbaa !52
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.as, i32 noundef 16, ptr noundef nonnull @.str.18) #12
  br label %decode_header.exit.thread

bytestream2_get_le32.exit466.i:                   ; preds = %bytestream2_init.exit239
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.i, align 8, !tbaa !53
  %i.au = load i32, ptr %i.k, align 1, !tbaa !54  ; 2 uses
  %.not.i243 = icmp eq i32 %i.au, 20000630
  br i1 %.not.i243, label %bytestream2_get_byte.exit479.i, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_le32.exit466.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.au) #12
  br label %decode_header.exit.thread

bytestream2_get_byte.exit479.i:                   ; preds = %bytestream2_get_le32.exit466.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  store ptr %i.ax, ptr %i.i, align 8, !tbaa !53
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !54  ; 2 uses
  %.not368.i = icmp eq i8 %i.ay, 2
  br i1 %.not368.i, label %bytestream2_get_le24.exit.i, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_byte.exit479.i
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.bb, ptr noundef nonnull @.str.20, i32 noundef %i.az) #12
  br label %decode_header.exit.thread

bytestream2_get_le24.exit.i:                      ; preds = %bytestream2_get_byte.exit479.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !53
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !54
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = and i32 %i.be, 2
  %.not369.i = icmp eq i32 %i.bf, 0
  br i1 %.not369.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_le24.exit.i
  store i32 1, ptr %i.ak, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bytestream2_get_le24.exit.i
  %i.bg = and i32 %i.be, 16
  %.not370.i = icmp eq i32 %i.bg, 0
  br i1 %.not370.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.al, align 4, !tbaa !56
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
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.bt, ptr noundef nonnull @.str.21) #12
  br label %decode_header.exit.thread

.preheader636.i:                                  ; preds = %.preheader636.i.lr.ph, %.backedge.i
  %i.bu = phi i64 [ %i.wv, %.preheader636.i.lr.ph ], [ %i.nz, %.backedge.i ]
  %i.bv = phi i64 [ %i.ww, %.preheader636.i.lr.ph ], [ %i.nx, %.backedge.i ] ; 32 uses
  %i.bw = phi ptr [ %i.wx, %.preheader636.i.lr.ph ], [ %i.nw, %.backedge.i ] ; 3 uses
  %i.bx = phi ptr [ %i.wy, %.preheader636.i.lr.ph ], [ %i.nv, %.backedge.i ] ; 10 uses
  %i.by = load i32, ptr %i.al, align 4, !tbaa !56
  %.not372.i = icmp eq i32 %i.by, 0               ; 2 uses
  br i1 %.not372.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader636.i
  %i.bz = load i32, ptr %i.bi, align 8, !tbaa !121 ; 2 uses
  %.promoted.i = load i32, ptr %i.ao, align 8, !tbaa !122 ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bz, i32 %.promoted.i)
  %exitcond.not.i366.not = icmp slt i32 %.promoted.i, %i.bz
  br i1 %exitcond.not.i366.not, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.i, %skip_header_chunk.exit.i
  %i.ca = phi i32 [ %i.dt, %skip_header_chunk.exit.i ], [ %.promoted.i, %.lr.ph.i ]
  %i.cb = phi ptr [ %i.ds, %skip_header_chunk.exit.i ], [ %i.bw, %.lr.ph.i ] ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.bv, %i.cc                    ; 3 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %.critedge.loopexit.i

bb.k:                                             ; preds = %.lr.ph
  %i.cg = icmp slt i64 %i.cd, 1
  br i1 %i.cg, label %bytestream2_peek_byte.exit495.thread.i, label %bytestream2_peek_byte.exit495.i

bytestream2_peek_byte.exit495.i:                  ; preds = %bb.k
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !54
  %.not373.i = icmp eq i8 %i.ch, 0
  br i1 %.not373.i, label %bytestream2_peek_byte.exit495.thread.i, label %.preheader14.i.i.preheader

bytestream2_peek_byte.exit.ithread-pre-split.i:   ; preds = %bytestream2_get_le32.exit.i.i
  %.pr.i = load i8, ptr %i.cp, align 1, !tbaa !54
  %.not.i.i = icmp eq i8 %.pr.i, 0
  br i1 %.not.i.i, label %skip_header_chunk.exit.loopexit.i, label %.preheader14.i.i.preheader

.preheader14.i.i.preheader:                       ; preds = %bytestream2_peek_byte.exit495.i, %bytestream2_peek_byte.exit.ithread-pre-split.i
  %.promoted162126.i.i365 = phi ptr [ %i.cp, %bytestream2_peek_byte.exit.ithread-pre-split.i ], [ %i.cb, %bytestream2_peek_byte.exit495.i ] ; 2 uses
  %i.ci = ptrtoint ptr %.promoted162126.i.i365 to i64
  %i.cj = sub i64 %i.bv, %i.ci
  %i.ck = icmp slt i64 %i.cj, 1
  br i1 %i.ck, label %.loopexit.i.i, label %bytestream2_get_byte.exit.i.i

bb.l:                                             ; preds = %.loopexit.1.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.promoted1623.1.i.i, i64 4 ; 3 uses
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !53
  %i.cm = load i32, ptr %.promoted1623.1.i.i, align 1, !tbaa !54
  %i.cn = zext i32 %i.cm to i64
  %.pre27.i.i = ptrtoint ptr %i.cl to i64
  br label %bytestream2_get_le32.exit.i.i

bytestream2_get_le32.exit.i.i:                    ; preds = %.loopexit.1.i.i, %bb.l
  %.pre-phi28.i.i = phi i64 [ %.pre27.i.i, %bb.l ], [ %i.bv, %.loopexit.1.i.i ]
  %.promoted1622.i.i = phi ptr [ %i.cl, %bb.l ], [ %i.bx, %.loopexit.1.i.i ]
  %.0.i.i.i = phi i64 [ %i.cn, %bb.l ], [ 0, %.loopexit.1.i.i ]
  %i.co = sub i64 %i.bv, %.pre-phi28.i.i
  %..i.i.i = call i64 @llvm.smin.i64(i64 %i.co, i64 %.0.i.i.i)
  %i.cp = getelementptr inbounds i8, ptr %.promoted1622.i.i, i64 %..i.i.i ; 5 uses
  store ptr %i.cp, ptr %i.i, align 8, !tbaa !44
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.bv, %i.cq                    ; 3 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = icmp slt i32 %i.cs, 1
  %i.cu = icmp slt i64 %i.cr, 1
  %or.cond.i506.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.i506.i, label %skip_header_chunk.exit.loopexit.i, label %bytestream2_peek_byte.exit.ithread-pre-split.i, !llvm.loop !100

.preheader14.i.i:                                 ; preds = %bytestream2_get_byte.exit.i.i
  %i.cv = ptrtoint ptr %i.cz to i64
  %i.cw = sub i64 %i.bv, %i.cv
  %i.cx = icmp slt i64 %i.cw, 1
  br i1 %i.cx, label %.loopexit.i.i, label %bytestream2_get_byte.exit.i.i, !llvm.loop !101

bytestream2_get_byte.exit.i.i:                    ; preds = %.preheader14.i.i.preheader, %.preheader14.i.i
  %i.cy = phi ptr [ %i.cz, %.preheader14.i.i ], [ %.promoted162126.i.i365, %.preheader14.i.i.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 4 uses
  store ptr %i.cz, ptr %i.i, align 8, !tbaa !53
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !54
  %.not7.i.i = icmp eq i8 %i.da, 0
  br i1 %.not7.i.i, label %bytestream2_get_byte.exit.i.i..loopexit.i.i_crit_edge, label %.preheader14.i.i, !llvm.loop !101

bytestream2_get_byte.exit.i.i..loopexit.i.i_crit_edge: ; preds = %bytestream2_get_byte.exit.i.i
  br label %.loopexit.i.i, !llvm.loop !101

.loopexit.i.i:                                    ; preds = %.preheader14.i.i, %bytestream2_get_byte.exit.i.i..loopexit.i.i_crit_edge, %.preheader14.i.i.preheader
  %.promoted1623.i.i = phi ptr [ %i.bx, %.preheader14.i.i.preheader ], [ %i.cz, %bytestream2_get_byte.exit.i.i..loopexit.i.i_crit_edge ], [ %i.bx, %.preheader14.i.i ] ; 2 uses
  %i.db = ptrtoint ptr %.promoted1623.i.i to i64
  %i.dc = sub i64 %i.bv, %i.db
  %i.dd = icmp slt i64 %i.dc, 1
  br i1 %i.dd, label %.loopexit.1.i.i, label %bytestream2_get_byte.exit.1.i.i

bb.m:                                             ; preds = %bytestream2_get_byte.exit.1.i.i
  %i.de = sub i64 %i.bv, %.pre.i.i
  %i.df = icmp slt i64 %i.de, 1
  br i1 %i.df, label %.loopexit.1.i.i, label %bytestream2_get_byte.exit.1.i.i, !llvm.loop !101

bytestream2_get_byte.exit.1.i.i:                  ; preds = %.loopexit.i.i, %bb.m
  %i.dg = phi ptr [ %i.dh, %bb.m ], [ %.promoted1623.i.i, %.loopexit.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 4 uses
  store ptr %i.dh, ptr %i.i, align 8, !tbaa !53
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !54
  %.not7.1.i.i = icmp eq i8 %i.di, 0
  %.pre.i.i = ptrtoint ptr %i.dh to i64           ; 2 uses
  br i1 %.not7.1.i.i, label %.loopexit.1.i.i, label %bb.m, !llvm.loop !101

.loopexit.1.i.i:                                  ; preds = %bb.m, %bytestream2_get_byte.exit.1.i.i, %.loopexit.i.i
  %.pre-phi.i.i = phi i64 [ %i.bv, %.loopexit.i.i ], [ %i.bv, %bb.m ], [ %.pre.i.i, %bytestream2_get_byte.exit.1.i.i ]
  %.promoted1623.1.i.i = phi ptr [ %i.bx, %.loopexit.i.i ], [ %i.bx, %bb.m ], [ %i.dh, %bytestream2_get_byte.exit.1.i.i ] ; 2 uses
  %i.dj = sub i64 %i.bv, %.pre-phi.i.i
  %i.dk = icmp slt i64 %i.dj, 4
  br i1 %i.dk, label %bytestream2_get_le32.exit.i.i, label %bb.l

bytestream2_peek_byte.exit495.thread.i:           ; preds = %bytestream2_peek_byte.exit495.i, %bb.k
  %..i505.i = call i64 @llvm.smin.i64(i64 %i.cd, i64 1)
  %i.dl = getelementptr inbounds i8, ptr %i.cb, i64 %..i505.i ; 6 uses
  store ptr %i.dl, ptr %i.i, align 8, !tbaa !44
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.bv, %i.dm
  %i.do = icmp slt i64 %i.dn, 1
  br i1 %i.do, label %.critedge.loopexit.i, label %bytestream2_peek_byte.exit493.i

bytestream2_peek_byte.exit493.i:                  ; preds = %bytestream2_peek_byte.exit495.thread.i
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !54
  %.not374.i = icmp eq i8 %i.dp, 0
  br i1 %.not374.i, label %.critedge.loopexit.i, label %skip_header_chunk.exit.i

skip_header_chunk.exit.loopexit.i:                ; preds = %bytestream2_get_le32.exit.i.i, %bytestream2_peek_byte.exit.ithread-pre-split.i
  %i.dq = call i64 @llvm.smin.i64(i64 %i.cr, i64 1)
  br label %skip_header_chunk.exit.i

skip_header_chunk.exit.i:                         ; preds = %skip_header_chunk.exit.loopexit.i, %bytestream2_peek_byte.exit493.i
  %.pre-phi746.i = phi i64 [ %i.dq, %skip_header_chunk.exit.loopexit.i ], [ 1, %bytestream2_peek_byte.exit493.i ]
  %i.dr = phi ptr [ %i.cp, %skip_header_chunk.exit.loopexit.i ], [ %i.dl, %bytestream2_peek_byte.exit493.i ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %.pre-phi746.i ; 3 uses
  store ptr %i.ds, ptr %i.i, align 8, !tbaa !44
  %i.dt = add i32 %i.ca, 1                        ; 3 uses
  store i32 %i.dt, ptr %i.ao, align 8, !tbaa !122
  %exitcond.not.i = icmp eq i32 %i.dt, %smax.i
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph

.critedge.loopexit.i:                             ; preds = %skip_header_chunk.exit.i, %.lr.ph, %bytestream2_peek_byte.exit495.thread.i, %bytestream2_peek_byte.exit493.i, %.lr.ph.i
  %i.du = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.dl, %bytestream2_peek_byte.exit495.thread.i ], [ %i.cb, %.lr.ph ], [ %i.dl, %bytestream2_peek_byte.exit493.i ], [ %i.ds, %skip_header_chunk.exit.i ] ; 2 uses
  %.pre716.i = ptrtoint ptr %i.du to i64
  %.pre717.i = sub i64 %i.bv, %.pre716.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader636.i
  %.pre-phi718.i = phi i64 [ %.pre717.i, %.critedge.loopexit.i ], [ %i.bu, %.preheader636.i ] ; 2 uses
  %i.dv = phi ptr [ %i.du, %.critedge.loopexit.i ], [ %i.bw, %.preheader636.i ] ; 3 uses
  %i.dw = icmp slt i64 %.pre-phi718.i, 1
  br i1 %i.dw, label %bytestream2_peek_byte.exit491.thread.i, label %bytestream2_peek_byte.exit491.i

bytestream2_peek_byte.exit491.i:                  ; preds = %.critedge.i
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !54
  %.not375.i = icmp eq i8 %i.dx, 0
  br i1 %.not375.i, label %bytestream2_peek_byte.exit491.thread.i, label %bb.s

bytestream2_peek_byte.exit491.thread.i:           ; preds = %bytestream2_peek_byte.exit491.i, %.critedge.i
  br i1 %.not372.i, label %.thread627.i, label %bb.n

bb.n:                                             ; preds = %bytestream2_peek_byte.exit491.thread.i
  %..i503.i = call i64 @llvm.smin.i64(i64 %.pre-phi718.i, i64 1)
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %..i503.i ; 4 uses
  store ptr %i.dy, ptr %i.i, align 8, !tbaa !44
  %i.dz = load i32, ptr %i.ao, align 8, !tbaa !122 ; 2 uses
  %i.ea = load i32, ptr %i.bi, align 8, !tbaa !121
  %i.eb = icmp eq i32 %i.dz, %i.ea
  %i.ec = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ed = sub i64 %i.bv, %i.ec                    ; 3 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = icmp sgt i32 %i.ee, 0
  %or.cond886.i = select i1 %i.eb, i1 %i.ef, i1 false
  br i1 %or.cond886.i, label %.lr.ph674.i, label %bytestream2_peek_byte.exit487.thread.i

.lr.ph674.i:                                      ; preds = %bb.n, %skip_header_chunk.exit531.i
  %i.eg = phi i64 [ %i.gb, %skip_header_chunk.exit531.i ], [ %i.ed, %bb.n ] ; 2 uses
  %i.eh = phi i64 [ %i.ga, %skip_header_chunk.exit531.i ], [ %i.ec, %bb.n ]
  %i.ei = phi ptr [ %i.fz, %skip_header_chunk.exit531.i ], [ %i.dy, %bb.n ] ; 4 uses
  %i.ej = icmp slt i64 %i.eg, 1
  br i1 %i.ej, label %bytestream2_peek_byte.exit489.thread.i, label %bytestream2_peek_byte.exit489.i

bytestream2_peek_byte.exit489.i:                  ; preds = %.lr.ph674.i
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !54
  %.not377.i = icmp eq i8 %i.ek, 0
  br i1 %.not377.i, label %bytestream2_peek_byte.exit489.thread.i, label %bb.o

bb.o:                                             ; preds = %bytestream2_peek_byte.exit489.i
  %i.el = sub i64 %i.bv, %i.eh                    ; 2 uses
  %i.em = trunc i64 %i.el to i32
  %i.en = icmp slt i32 %i.em, 1
  %i.eo = icmp slt i64 %i.el, 1
  %or.cond25.i508.i = or i1 %i.eo, %i.en
  br i1 %or.cond25.i508.i, label %skip_header_chunk.exit531.i, label %bytestream2_peek_byte.exit.i509.i

bytestream2_peek_byte.exit.i509.i:                ; preds = %bb.o, %bytestream2_get_le32.exit.i525.i
  %i.ep = phi ptr [ %i.ey, %bytestream2_get_le32.exit.i525.i ], [ %i.ei, %bb.o ] ; 4 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !54
  %.not.i511.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i511.i, label %skip_header_chunk.exit531.i, label %.preheader14.i512.i.preheader

.preheader14.i512.i.preheader:                    ; preds = %bytestream2_peek_byte.exit.i509.i
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.bv, %i.er
  %i.et = icmp slt i64 %i.es, 1
  br i1 %i.et, label %.loopexit.i515.i, label %bytestream2_get_byte.exit.i513.i

bb.p:                                             ; preds = %.loopexit.1.i521.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.promoted1623.1.i523.i, i64 4 ; 3 uses
  store ptr %i.eu, ptr %i.i, align 8, !tbaa !53
  %i.ev = load i32, ptr %.promoted1623.1.i523.i, align 1, !tbaa !54
end_hunk_0
begin_hunk_1_@dwa_uncompress:bb.a
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !92
  %i.uy = and i32 %i.ut, 8388607
  %i.uz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.uv
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !54
  %i.vb = zext nneg i8 %i.va to i32
  %i.vc = lshr i32 %i.uy, %i.vb
  %i.vd = trunc i32 %i.vc to i16
  %i.ve = add i16 %i.ux, %i.vd
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.0332446, i64 %indvars.iv479
  store i16 %i.ve, ptr %i.vf, align 2, !tbaa !92
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.vg = icmp samesign ult i64 %indvars.iv.next480, %i.rz
  br i1 %i.vg, label %bb.ao, label %._crit_edge443, !llvm.loop !195

bb.av:                                            ; preds = %bb.ah
  br i1 %.not543, label %.loopexit, label %.preheader432.lr.ph

.preheader432.lr.ph:                              ; preds = %bb.av
  %i.vh = load i32, ptr %i.n, align 8, !tbaa !50  ; 2 uses
  %.not544 = icmp eq i64 %indvars.iv485, %i.fp
  %i.vi = mul nsw i32 %i.vh, %i.fb
  %i.vj = sext i32 %i.vi to i64                   ; 3 uses
  br i1 %.not544, label %.loopexit, label %.preheader432.preheader

.preheader432.preheader:                          ; preds = %.preheader432.lr.ph
  %i.vk = load ptr, ptr %4, align 8, !tbaa !89
  %i.vl = sext i32 %i.vh to i64
  %i.vm = mul nsw i64 %i.fx, %i.vl
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vm ; 3 uses
  %i.vo = select i1 %i.ge, i32 %i.fb, i32 0
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv485
  %i.vs = zext i1 %i.ge to i32
  %i.vt = shl nuw i32 %i.fb, %i.vs
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vu
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %indvars.iv485
  %i.vx = select i1 %i.ge, i32 3, i32 2
  %i.vy = mul nuw nsw i32 %i.vx, %i.fb
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv485
  %i.wc = zext nneg i32 %spec.select to i64
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge
  %indvars.iv476 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next477, %._crit_edge ] ; 2 uses
  %.0327440 = phi ptr [ %i.wb, %.preheader432.preheader ], [ %i.wg, %._crit_edge ] ; 2 uses
  %.0328439 = phi ptr [ %i.vw, %.preheader432.preheader ], [ %i.wf, %._crit_edge ] ; 2 uses
  %.0329438 = phi ptr [ %i.vr, %.preheader432.preheader ], [ %i.we, %._crit_edge ] ; 2 uses
  %i.wd = shl nuw nsw i64 %indvars.iv476, 3
  br label %bb.aw

._crit_edge:                                      ; preds = %to_linear.exit390
  %i.we = getelementptr inbounds [4 x i8], ptr %.0329438, i64 %i.vj
  %i.wf = getelementptr inbounds [4 x i8], ptr %.0328439, i64 %i.vj
  %i.wg = getelementptr inbounds [4 x i8], ptr %.0327440, i64 %i.vj
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next477, %i.fy
  br i1 %i.wh, label %.preheader432, label %.loopexit, !llvm.loop !196

bb.aw:                                            ; preds = %.preheader432, %to_linear.exit390
  %indvars.iv473 = phi i64 [ 0, %.preheader432 ], [ %indvars.iv.next474, %to_linear.exit390 ] ; 5 uses
  %i.wi = add nuw nsw i64 %indvars.iv473, %i.wd   ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.wi
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !213 ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.wi
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !213 ; 2 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.wi
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !213 ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.0329438, i64 %indvars.iv473
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.0328439, i64 %indvars.iv473 ; 3 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.0327440, i64 %indvars.iv473 ; 3 uses
  %i.ws = call nsz float @llvm.fmuladd.f32(float %i.wo, float 1.574700e+00, float %i.wk)
  store float %i.ws, ptr %i.wr, align 4, !tbaa !213
  %i.wt = call nsz float @llvm.fmuladd.f32(float %i.wm, float -1.873000e-01, float %i.wk)
  %i.wu = insertelement <2 x float> poison, float %i.wo, i64 0
  %i.wv = insertelement <2 x float> %i.wu, float %i.wm, i64 1
  %i.ww = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.wx = insertelement <2 x float> %i.ww, float %i.wk, i64 1
  %i.wy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wv, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.wx) ; 2 uses
  %i.wz = extractelement <2 x float> %i.wy, i64 0
  store float %i.wz, ptr %i.wq, align 4, !tbaa !213
  %i.xa = extractelement <2 x float> %i.wy, i64 1 ; 2 uses
  %i.xb = call nsz float @llvm.fabs.f32(float %i.xa) ; 3 uses
  %i.xc = fcmp nsz ugt float %i.xb, 1.000000e+00
  br i1 %i.xc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xd = call nsz float @llvm.pow.f32(float %i.xb, float 2.200000e+00)
  br label %to_linear.exit386

bb.ay:                                            ; preds = %bb.aw
  %i.xe = fadd nsz float %i.xb, -1.000000e+00
  %i.xf = call nsz float @llvm.pow.f32(float f0x41106675, float %i.xe)
  br label %to_linear.exit386

to_linear.exit386:                                ; preds = %bb.ax, %bb.ay
  %.sink13.i385 = phi float [ %i.xf, %bb.ay ], [ %i.xd, %bb.ax ] ; 2 uses
  %i.xg = fcmp nsz ogt float %i.xa, 0.000000e+00
  %i.xh = fneg nsz float %.sink13.i385
  %i.xi = select nsz i1 %i.xg, float %.sink13.i385, float %i.xh
  store float %i.xi, ptr %i.wp, align 4, !tbaa !213
  %i.xj = load float, ptr %i.wq, align 4, !tbaa !213 ; 2 uses
  %i.xk = call nsz float @llvm.fabs.f32(float %i.xj) ; 3 uses
  %i.xl = fcmp nsz ugt float %i.xk, 1.000000e+00
  br i1 %i.xl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %to_linear.exit386
  %i.xm = call nsz float @llvm.pow.f32(float %i.xk, float 2.200000e+00)
  br label %to_linear.exit388

bb.ba:                                            ; preds = %to_linear.exit386
  %i.xn = fadd nsz float %i.xk, -1.000000e+00
  %i.xo = call nsz float @llvm.pow.f32(float f0x41106675, float %i.xn)
  br label %to_linear.exit388

to_linear.exit388:                                ; preds = %bb.az, %bb.ba
  %.sink13.i387 = phi float [ %i.xo, %bb.ba ], [ %i.xm, %bb.az ] ; 2 uses
  %i.xp = fcmp nsz ogt float %i.xj, 0.000000e+00
  %i.xq = fneg nsz float %.sink13.i387
  %i.xr = select nsz i1 %i.xp, float %.sink13.i387, float %i.xq
  store float %i.xr, ptr %i.wq, align 4, !tbaa !213
  %i.xs = load float, ptr %i.wr, align 4, !tbaa !213 ; 2 uses
  %i.xt = call nsz float @llvm.fabs.f32(float %i.xs) ; 3 uses
  %i.xu = fcmp nsz ugt float %i.xt, 1.000000e+00
  br i1 %i.xu, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %to_linear.exit388
  %i.xv = call nsz float @llvm.pow.f32(float %i.xt, float 2.200000e+00)
  br label %to_linear.exit390

bb.bc:                                            ; preds = %to_linear.exit388
  %i.xw = fadd nsz float %i.xt, -1.000000e+00
  %i.xx = call nsz float @llvm.pow.f32(float f0x41106675, float %i.xw)
  br label %to_linear.exit390

to_linear.exit390:                                ; preds = %bb.bb, %bb.bc
  %.sink13.i389 = phi float [ %i.xx, %bb.bc ], [ %i.xv, %bb.bb ] ; 2 uses
  %i.xy = fcmp nsz ogt float %i.xs, 0.000000e+00
  %i.xz = fneg nsz float %.sink13.i389
  %i.ya = select nsz i1 %i.xy, float %.sink13.i389, float %i.xz
  store float %i.ya, ptr %i.wr, align 4, !tbaa !213
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.yb = icmp samesign ult i64 %indvars.iv.next474, %i.wc
  br i1 %i.yb, label %bb.aw, label %._crit_edge, !llvm.loop !197

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge443, %bb.av, %.preheader432.lr.ph, %bb.an, %.preheader431.lr.ph
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 8 ; 2 uses
  %i.yc = icmp samesign ult i64 %indvars.iv.next486, %i.fp
  br i1 %i.yc, label %bb.ag, label %._crit_edge450, !llvm.loop !198

bb.bd:                                            ; preds = %._crit_edge453.split
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !48
  %i.yf = icmp eq i32 %i.ye, 1
  %i.yg = and i1 %or.cond7, %i.fa                 ; 2 uses
  br i1 %i.yf, label %.preheader, label %.preheader429

.preheader429:                                    ; preds = %bb.bd
  br i1 %i.yg, label %.lr.ph459, label %bytestream2_get_le16.exit.thread

.lr.ph459:                                        ; preds = %.preheader429
  %i.yh = load ptr, ptr %4, align 8, !tbaa !89
  %i.yi = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !212
  %i.yk = lshr i64 %i.af, 1
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 14328
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 14072
  %i.yo = load i32, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %i.yp = icmp sgt i32 %i.yo, 0
  br i1 %i.yp, label %.lr.ph459.split, label %bytestream2_get_le16.exit.thread

.preheader:                                       ; preds = %bb.bd
  br i1 %i.yg, label %.lr.ph465, label %bytestream2_get_le16.exit.thread

.lr.ph465:                                        ; preds = %.preheader
  %i.yq = load ptr, ptr %4, align 8, !tbaa !89    ; 4 uses
  %i.yr = load i32, ptr %i.d, align 8, !tbaa !86  ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !212 ; 5 uses
  %i.yu = lshr i64 %i.af, 1                       ; 3 uses
  %i.yv = icmp sgt i32 %i.yr, 0
  br i1 %i.yv, label %.lr.ph462.preheader, label %bytestream2_get_le16.exit.thread

.lr.ph462.preheader:                              ; preds = %.lr.ph465
  %i.yw = zext nneg i32 %i.yr to i64              ; 11 uses
  %i.yx = zext nneg i32 %i.fz to i64              ; 2 uses
  %wide.trip.count506 = zext nneg i32 %i.ez to i64 ; 3 uses
  %i.yy = add nuw i64 %wide.trip.count506, 9223372036854775807
  %i.yz = mul i64 %i.yy, %i.yx
  %i.za = shl i64 %i.yz, 1
  %i.zb = add i64 %i.za, 2
  %i.zc = mul i64 %i.zb, %i.yw
  %scevgep = getelementptr i8, ptr %i.yq, i64 %i.zc ; 2 uses
  %scevgep566 = getelementptr i8, ptr %i.yt, i64 %i.yu
  %i.zd = mul nuw nsw i64 %i.yw, %wide.trip.count506 ; 2 uses
  %i.ze = getelementptr i8, ptr %i.yt, i64 %i.yu
  %scevgep567 = getelementptr i8, ptr %i.ze, i64 %i.zd
  %scevgep568 = getelementptr i8, ptr %i.yt, i64 %i.zd
  %min.iters.check = icmp ult i32 %i.yr, 4
  %bound0 = icmp ult ptr %i.yq, %scevgep567
  %bound1 = icmp ult ptr %scevgep566, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0569 = icmp ult ptr %i.yq, %scevgep568
  %bound1570 = icmp ult ptr %i.yt, %scevgep
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx = or i1 %found.conflict, %found.conflict571
  %min.iters.check572 = icmp ult i32 %i.yr, 16
  %i.zf = and i64 %i.yw, 12
  %n.vec = and i64 %i.yw, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.yw
  %min.epilog.iters.check = icmp eq i64 %i.zf, 0
  %n.vec582 = and i64 %i.yw, 2147483644           ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec582, %i.yw
  %xtraiter = and i64 %i.yw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.zg = add nsw i64 %i.yw, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph462.preheader, %._crit_edge463
  %indvars.iv503 = phi i64 [ 0, %.lr.ph462.preheader ], [ %indvars.iv.next504, %._crit_edge463 ] ; 2 uses
  %i.zh = mul nuw nsw i64 %indvars.iv503, %i.yw   ; 2 uses
  %i.zi = mul nuw nsw i64 %i.zh, %i.yx
  %i.zj = getelementptr inbounds nuw [2 x i8], ptr %i.yq, i64 %i.zi ; 5 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.zh ; 6 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.yu ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check572, label %vec.epilog.ph, label %vector.body574

vector.body574:                                   ; preds = %vector.main.loop.iter.check, %vector.body574
  %index575 = phi i64 [ %index.next580, %vector.body574 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 %index575 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %wide.load576 = load <8 x i8>, ptr %i.zm, align 1, !tbaa !54, !alias.scope !214
  %wide.load577 = load <8 x i8>, ptr %i.zn, align 1, !tbaa !54, !alias.scope !214
  %i.zo = zext <8 x i8> %wide.load576 to <8 x i16>
  %i.zp = zext <8 x i8> %wide.load577 to <8 x i16>
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index575 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %wide.load578 = load <8 x i8>, ptr %i.zq, align 1, !tbaa !54, !alias.scope !215
  %wide.load579 = load <8 x i8>, ptr %i.zr, align 1, !tbaa !54, !alias.scope !215
  %i.zs = zext <8 x i8> %wide.load578 to <8 x i16>
  %i.zt = zext <8 x i8> %wide.load579 to <8 x i16>
  %i.zu = shl nuw <8 x i16> %i.zs, splat (i16 8)
  %i.zv = shl nuw <8 x i16> %i.zt, splat (i16 8)
  %i.zw = or disjoint <8 x i16> %i.zu, %i.zo
  %i.zx = or disjoint <8 x i16> %i.zv, %i.zp
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %index575 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  store <8 x i16> %i.zw, ptr %i.zy, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  store <8 x i16> %i.zx, ptr %i.zz, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  %index.next580 = add nuw i64 %index575, 16      ; 2 uses
  %i.aaa = icmp eq i64 %index.next580, %n.vec
  br i1 %i.aaa, label %middle.block581, label %vector.body574, !llvm.loop !203

middle.block581:                                  ; preds = %vector.body574
  br i1 %cmp.n, label %._crit_edge463, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block581
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index583 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next586, %vec.epilog.vector.body ] ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zk, i64 %index583
  %wide.load584 = load <4 x i8>, ptr %i.aab, align 1, !tbaa !54, !alias.scope !214
  %i.aac = zext <4 x i8> %wide.load584 to <4 x i16>
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zl, i64 %index583
  %wide.load585 = load <4 x i8>, ptr %i.aad, align 1, !tbaa !54, !alias.scope !215
  %i.aae = zext <4 x i8> %wide.load585 to <4 x i16>
  %i.aaf = shl nuw <4 x i16> %i.aae, splat (i16 8)
  %i.aag = or disjoint <4 x i16> %i.aaf, %i.aac
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %index583
  store <4 x i16> %i.aag, ptr %i.aah, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  %index.next586 = add nuw i64 %index583, 4       ; 2 uses
  %i.aai = icmp eq i64 %index.next586, %n.vec582
  br i1 %i.aai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n587, label %._crit_edge463, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv498.ph = phi i64 [ 0, %iter.check ], [ %n.vec582, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv498.ph
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !54
  %i.aal = zext i8 %i.aak to i16
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv498.ph
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !54
  %i.aao = zext i8 %i.aan to i16
  %i.aap = shl nuw i16 %i.aao, 8
  %i.aaq = or disjoint i16 %i.aap, %i.aal
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv498.ph
  store i16 %i.aaq, ptr %i.aar, align 2, !tbaa !92
  %indvars.iv.next499.prol = or disjoint i64 %indvars.iv498.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv498.unr = phi i64 [ %indvars.iv498.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next499.prol, %vec.epilog.scalar.ph.prol ]
  %i.aas = icmp eq i64 %indvars.iv498.ph, %i.zg
  br i1 %i.aas, label %._crit_edge463, label %vec.epilog.scalar.ph

._crit_edge463:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block581
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %wide.trip.count506
  br i1 %exitcond507.not, label %bytestream2_get_le16.exit.thread, label %iter.check, !llvm.loop !205

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv498 = phi i64 [ %indvars.iv.next499.1, %vec.epilog.scalar.ph ], [ %indvars.iv498.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv498
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !54
  %i.aav = zext i8 %i.aau to i16
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv498
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !54
  %i.aay = zext i8 %i.aax to i16
  %i.aaz = shl nuw i16 %i.aay, 8
  %i.aba = or disjoint i16 %i.aaz, %i.aav
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv498
  store i16 %i.aba, ptr %i.abb, align 2, !tbaa !92
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv.next499
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !54
  %i.abe = zext i8 %i.abd to i16
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zl, i64 %indvars.iv.next499
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !54
  %i.abh = zext i8 %i.abg to i16
  %i.abi = shl nuw i16 %i.abh, 8
  %i.abj = or disjoint i16 %i.abi, %i.abe
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv.next499
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !92
  %indvars.iv.next499.1 = add nuw nsw i64 %indvars.iv498, 2 ; 2 uses
  %exitcond502.not.1 = icmp eq i64 %indvars.iv.next499.1, %i.yw
  br i1 %exitcond502.not.1, label %._crit_edge463, label %vec.epilog.scalar.ph, !llvm.loop !206

.lr.ph459.split:                                  ; preds = %.lr.ph459, %._crit_edge457
  %i.abl = phi i32 [ %i.abw, %._crit_edge457 ], [ %i.ez, %.lr.ph459 ]
  %i.abm = phi i32 [ %i.abx, %._crit_edge457 ], [ %i.yo, %.lr.ph459 ] ; 3 uses
  %.0322458 = phi i32 [ %i.aby, %._crit_edge457 ], [ 0, %.lr.ph459 ] ; 2 uses
  %i.abn = mul nsw i32 %i.abm, %.0322458          ; 2 uses
  %i.abo = load i32, ptr %i.n, align 8, !tbaa !50
  %i.abp = mul nsw i32 %i.abn, %i.abo
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.abq
  %i.abs = sext i32 %i.abn to i64
  %i.abt = getelementptr inbounds i8, ptr %i.yj, i64 %i.abs ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.yk
  %i.abv = icmp sgt i32 %i.abm, 0
  br i1 %i.abv, label %.lr.ph, label %._crit_edge457

._crit_edge457.loopexit:                          ; preds = %.lr.ph
  %.pre = load i32, ptr %i.h, align 4, !tbaa !85
  br label %._crit_edge457

._crit_edge457:                                   ; preds = %._crit_edge457.loopexit, %.lr.ph459.split
  %i.abw = phi i32 [ %.pre, %._crit_edge457.loopexit ], [ %i.abl, %.lr.ph459.split ] ; 2 uses
  %i.abx = phi i32 [ %i.acv, %._crit_edge457.loopexit ], [ %i.abm, %.lr.ph459.split ]
  %i.aby = add nuw nsw i32 %.0322458, 1           ; 2 uses
  %i.abz = icmp slt i32 %i.aby, %i.abw
  br i1 %i.abz, label %.lr.ph459.split, label %bytestream2_get_le16.exit.thread, !llvm.loop !207

.lr.ph:                                           ; preds = %.lr.ph459.split, %.lr.ph
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %.lr.ph ], [ 0, %.lr.ph459.split ] ; 4 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abt, i64 %indvars.iv491
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !54
  %i.acc = zext i8 %i.acb to i32
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv491
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !54
  %i.acf = zext i8 %i.ace to i32                  ; 2 uses
  %i.acg = shl nuw nsw i32 %i.acf, 8
  %i.ach = lshr i32 %i.acf, 2
  %i.aci = zext nneg i32 %i.ach to i64            ; 2 uses
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %i.ym, i64 %i.aci
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !92
  %i.acl = zext i16 %i.ack to i32
  %.masked = and i32 %i.acg, 768
  %i.acm = add nuw nsw i32 %i.acl, %i.acc
  %i.acn = add nuw nsw i32 %i.acm, %.masked
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !58
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.yn, i64 %i.aci
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !58
  %i.act = add i32 %i.acs, %i.acq
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv491
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !58
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.acv = load i32, ptr %i.d, align 8, !tbaa !86 ; 2 uses
  %i.acw = sext i32 %i.acv to i64
end_hunk_1
