Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/imx?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"simbiosis_imx\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Simbiosis Interactive IMX Video\00", align 1
@ff_simbiosis_imx_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 251, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 33808, ptr null, ptr null, ptr null, ptr @imx_decode_init, %union.anon { ptr @imx_decode_frame }, ptr @imx_decode_close, ptr @imx_decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @imx_decode_init(ptr nofree noundef captures(none) initializes((112, 120), (136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i32> <i32 320, i32 160>, ptr %i.d, align 8, !tbaa !30
  %i.e = tail call ptr @av_frame_alloc() #6       ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.e, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal i32 @imx_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 11 uses
  %i.d = tail call i32 @ff_reget_buffer(ptr noundef %0, ptr noundef %i.c, i32 noundef 0) #6 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = tail call i32 @ff_copy_palette(ptr noundef nonnull %i.f, ptr noundef %3, ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34
  %i.j = and i32 %i.i, -3
  %masksel = select i1 %.not, i32 0, i32 2
  %.sink = or disjoint i32 %i.j, %masksel
  store i32 %.sink, ptr %i.h, align 4, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = icmp ne ptr %i.l, null
  %i.p = icmp sgt i32 %i.n, -1
  %or.cond.i = and i1 %i.o, %i.p
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 141) #6
  tail call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.f, i64 1024, i1 false)
  %i.u = ptrtoint ptr %i.r to i64                 ; 7 uses
  %.not198 = icmp eq i32 %i.n, 0
  br i1 %.not198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_init.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 33800 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1032 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %i.z = phi i64 [ %i.q, %.lr.ph ], [ %i.dn, %.loopexit ]
  %.097185 = phi i32 [ 0, %.lr.ph ], [ %.13, %.loopexit ] ; 8 uses
  %.0102184 = phi i32 [ 0, %.lr.ph ], [ %.13115, %.loopexit ] ; 8 uses
  %.sroa.0.0183 = phi ptr [ %i.l, %.lr.ph ], [ %.sroa.0.3, %.loopexit ] ; 5 uses
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %.loopexit.sink.split, label %bytestream2_get_byte.exit150

bytestream2_get_byte.exit150:                     ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0183, i64 1 ; 8 uses
  %i.ac = load i8, ptr %.sroa.0.0183, align 1, !tbaa !43
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 63                       ; 6 uses
  %i.af = lshr i32 %i.ad, 6
  switch i32 %i.af, label %default.unreachable194 [
    i32 3, label %bb.e
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.o
  ]

bb.e:                                             ; preds = %bytestream2_get_byte.exit150
  %i.ag = shl nuw nsw i32 %i.ae, 6
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = sub i64 %i.u, %i.ah
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %bytestream2_get_byte.exit148, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0183, i64 2
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.am = zext i8 %i.al to i32
  br label %bytestream2_get_byte.exit148

bytestream2_get_byte.exit148:                     ; preds = %bb.e, %bb.f
  %.sroa.0.7 = phi ptr [ %i.ak, %bb.f ], [ %i.r, %bb.e ]
  %.0.i147 = phi i32 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %i.an = add nuw nsw i32 %.0.i147, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bytestream2_get_byte.exit148, %bytestream2_get_byte.exit150
  %.sroa.0.1 = phi ptr [ %.sroa.0.7, %bytestream2_get_byte.exit148 ], [ %i.ab, %bytestream2_get_byte.exit150 ] ; 2 uses
  %.094 = phi i32 [ %i.an, %bytestream2_get_byte.exit148 ], [ %i.ae, %bytestream2_get_byte.exit150 ] ; 2 uses
  %.old5.not = icmp eq i32 %.094, 0
  br i1 %.old5.not, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.1103 = phi i32 [ %spec.select, %.preheader ], [ %.0102184, %bb.g ] ; 2 uses
  %.198 = phi i32 [ %spec.select135, %.preheader ], [ %.097185, %bb.g ]
  %.1 = phi i32 [ %i.ap, %.preheader ], [ %.094, %bb.g ] ; 2 uses
  %i.ao = add nsw i32 %.1103, 1
  %i.ap = add nsw i32 %.1, -1
  %i.aq = icmp sgt i32 %.1103, 318                ; 2 uses
  %spec.select = select i1 %i.aq, i32 0, i32 %i.ao ; 2 uses
  %i.ar = zext i1 %i.aq to i32
  %spec.select135 = add nsw i32 %.198, %i.ar      ; 3 uses
  %i.as = icmp slt i32 %spec.select135, 160
  %i.at = icmp samesign ugt i32 %.1, 1
  %or.cond6 = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond6, label %.preheader, label %.loopexit.sink.split, !llvm.loop !44

bb.h:                                             ; preds = %bytestream2_get_byte.exit150
  %i.au = icmp eq i32 %i.ae, 0
  br i1 %i.au, label %bb.i, label %.preheader180

bb.i:                                             ; preds = %bb.h
  %i.av = ptrtoint ptr %i.ab to i64
  %i.aw = sub i64 %i.u, %i.av
  %i.ax = icmp slt i64 %i.aw, 2
  br i1 %i.ax, label %bytestream2_get_le16.exit.thread, label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.i
  %i.ay = load i16, ptr %i.ab, align 1, !tbaa !43 ; 2 uses
  %i.az = icmp sgt i16 %i.ay, -1
  br i1 %i.az, label %bytestream2_get_le16.exit.bytestream2_get_le16.exit.thread_crit_edge, label %.critedge

bytestream2_get_le16.exit.bytestream2_get_le16.exit.thread_crit_edge: ; preds = %bytestream2_get_le16.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0183, i64 3 ; 2 uses
  %.pre = ptrtoint ptr %i.ba to i64
  %i.bb = zext nneg i16 %i.ay to i64
  br label %bytestream2_get_le16.exit.thread

bytestream2_get_le16.exit.thread:                 ; preds = %bytestream2_get_le16.exit.bytestream2_get_le16.exit.thread_crit_edge, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bytestream2_get_le16.exit.bytestream2_get_le16.exit.thread_crit_edge ], [ %i.u, %bb.i ]
  %.0.i151179 = phi i64 [ %i.bb, %bytestream2_get_le16.exit.bytestream2_get_le16.exit.thread_crit_edge ], [ 0, %bb.i ]
  %.sroa.0.9178 = phi ptr [ %i.ba, %bytestream2_get_le16.exit.bytestream2_get_le16.exit.thread_crit_edge ], [ %i.r, %bb.i ] ; 2 uses
  %i.bc = sub i64 %i.u, %.pre-phi
  %i.bd = icmp slt i64 %i.bc, 1
  br i1 %i.bd, label %bytestream2_get_byte.exit146, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_le16.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.9178, i64 1
  %i.bf = load i8, ptr %.sroa.0.9178, align 1, !tbaa !43
  %i.bg = zext i8 %i.bf to i32
  br label %bytestream2_get_byte.exit146

bytestream2_get_byte.exit146:                     ; preds = %bytestream2_get_le16.exit.thread, %bb.j
  %.sroa.0.6 = phi ptr [ %i.be, %bb.j ], [ %i.r, %bytestream2_get_le16.exit.thread ] ; 3 uses
  %.0.i145 = phi i32 [ %i.bg, %bb.j ], [ 0, %bytestream2_get_le16.exit.thread ] ; 2 uses
  %.not210 = icmp eq i32 %.0.i145, 0
  br i1 %.not210, label %.loopexit.sink.split, label %.lr.ph205

bb.k:                                             ; preds = %.lr.ph205
  %i.bh = add nsw i32 %.2204, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv201, 1
  %i.bi = icmp sgt i32 %.2204, 1
  %i.bj = icmp samesign ult i64 %indvars.iv201, 32767
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph205, label %.loopexit.sink.split, !llvm.loop !46

.lr.ph205:                                        ; preds = %bytestream2_get_byte.exit146, %bb.k
  %.2204 = phi i32 [ %i.bh, %bb.k ], [ %.0.i145, %bytestream2_get_byte.exit146 ] ; 2 uses
  %.4101203 = phi i32 [ %spec.select137, %bb.k ], [ %.097185, %bytestream2_get_byte.exit146 ] ; 2 uses
  %.4106202 = phi i32 [ %spec.select136, %bb.k ], [ %.0102184, %bytestream2_get_byte.exit146 ] ; 3 uses
  %indvars.iv201 = phi i64 [ %indvars.iv.next, %bb.k ], [ %.0.i151179, %bytestream2_get_byte.exit146 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv201
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !43
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !30
  %i.bp = mul nsw i32 %i.bo, %.4101203
  %i.bq = add nsw i32 %i.bp, %.4106202
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bn, i64 %i.br
  store i8 %i.bm, ptr %i.bs, align 1, !tbaa !43
  %i.bt = add nsw i32 %.4106202, 1
  %i.bu = icmp sgt i32 %.4106202, 318             ; 2 uses
  %spec.select136 = select i1 %i.bu, i32 0, i32 %i.bt ; 3 uses
  %i.bv = zext i1 %i.bu to i32
  %spec.select137 = add nsw i32 %.4101203, %i.bv  ; 3 uses
  %i.bw = icmp sgt i32 %spec.select137, 159
  br i1 %i.bw, label %..loopexit.sink.split.loopexit199_crit_edge, label %bb.k, !llvm.loop !46

.preheader180:                                    ; preds = %bb.h, %bb.n
  %.sroa.0.2 = phi ptr [ %.sroa.0.5, %bb.n ], [ %i.ab, %bb.h ] ; 3 uses
  %.8110 = phi i32 [ %spec.select138, %bb.n ], [ %.0102184, %bb.h ] ; 3 uses
  %.8 = phi i32 [ %spec.select139, %bb.n ], [ %.097185, %bb.h ] ; 2 uses
  %.3 = phi i32 [ %i.co, %bb.n ], [ %i.ae, %bb.h ] ; 2 uses
  %i.bx = ptrtoint ptr %.sroa.0.2 to i64
  %i.by = sub i64 %i.u, %i.bx
  %i.bz = icmp slt i64 %i.by, 1
  br i1 %i.bz, label %bytestream2_get_byte.exit144, label %bb.l

bb.l:                                             ; preds = %.preheader180
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1
  %i.cb = load i8, ptr %.sroa.0.2, align 1, !tbaa !43
  br label %bytestream2_get_byte.exit144

bytestream2_get_byte.exit144:                     ; preds = %.preheader180, %bb.l
  %.sroa.0.5 = phi ptr [ %i.ca, %bb.l ], [ %i.r, %.preheader180 ] ; 2 uses
  %.0.i143 = phi i8 [ %i.cb, %bb.l ], [ 0, %.preheader180 ] ; 2 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cd = load i32, ptr %i.v, align 8, !tbaa !30
  %i.ce = mul nsw i32 %i.cd, %.8
  %i.cf = add nsw i32 %i.ce, %.8110
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %i.cg
  store i8 %.0.i143, ptr %i.ch, align 1, !tbaa !43
  %i.ci = load i32, ptr %i.w, align 8, !tbaa !47  ; 3 uses
  %i.cj = icmp slt i32 %i.ci, 32768
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bytestream2_get_byte.exit144
  %i.ck = add nsw i32 %i.ci, 1
  store i32 %i.ck, ptr %i.w, align 8, !tbaa !47
  %i.cl = sext i32 %i.ci to i64
  %i.cm = getelementptr inbounds i8, ptr %i.x, i64 %i.cl
  store i8 %.0.i143, ptr %i.cm, align 1, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bytestream2_get_byte.exit144
  %i.cn = add nsw i32 %.8110, 1
  %i.co = add nsw i32 %.3, -1
  %i.cp = icmp sgt i32 %.8110, 318                ; 2 uses
  %spec.select138 = select i1 %i.cp, i32 0, i32 %i.cn ; 2 uses
  %i.cq = zext i1 %i.cp to i32
  %spec.select139 = add nsw i32 %.8, %i.cq        ; 3 uses
  %i.cr = icmp slt i32 %spec.select139, 160
  %i.cs = icmp sgt i32 %.3, 1
  %or.cond9 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond9, label %.preheader180, label %.loopexit, !llvm.loop !48

bb.o:                                             ; preds = %bytestream2_get_byte.exit150
  %i.ct = ptrtoint ptr %i.ab to i64
  %i.cu = sub i64 %i.u, %i.ct
  %i.cv = icmp slt i64 %i.cu, 1
  br i1 %i.cv, label %bytestream2_get_byte.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0183, i64 2
  %i.cx = load i8, ptr %i.ab, align 1, !tbaa !43
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.o, %bb.p
  %.sroa.0.4 = phi ptr [ %i.cw, %bb.p ], [ %i.r, %bb.o ] ; 2 uses
  %.0.i = phi i8 [ %i.cx, %bb.p ], [ 0, %bb.o ]
  %.old11.not = icmp eq i32 %i.ae, 0
  br i1 %.old11.not, label %.loopexit, label %.preheader181

.preheader181:                                    ; preds = %bytestream2_get_byte.exit, %.preheader181
  %.10112 = phi i32 [ %spec.select140, %.preheader181 ], [ %.0102184, %bytestream2_get_byte.exit ] ; 3 uses
  %.10 = phi i32 [ %spec.select141, %.preheader181 ], [ %.097185, %bytestream2_get_byte.exit ] ; 2 uses
  %.4 = phi i32 [ %i.df, %.preheader181 ], [ %i.ae, %bytestream2_get_byte.exit ] ; 2 uses
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cz = load i32, ptr %i.v, align 8, !tbaa !30
  %i.da = mul nsw i32 %i.cz, %.10
  %i.db = add nsw i32 %i.da, %.10112
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 %i.dc
  store i8 %.0.i, ptr %i.dd, align 1, !tbaa !43
  %i.de = add nsw i32 %.10112, 1
  %i.df = add nsw i32 %.4, -1
  %i.dg = icmp sgt i32 %.10112, 318               ; 2 uses
  %spec.select140 = select i1 %i.dg, i32 0, i32 %i.de ; 2 uses
  %i.dh = zext i1 %i.dg to i32
  %spec.select141 = add nsw i32 %.10, %i.dh       ; 3 uses
  %i.di = icmp slt i32 %spec.select141, 160
  %i.dj = icmp samesign ugt i32 %.4, 1
  %or.cond12 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond12, label %.preheader181, label %.loopexit, !llvm.loop !49

default.unreachable194:                           ; preds = %bytestream2_get_byte.exit150
  unreachable

..loopexit.sink.split.loopexit199_crit_edge:      ; preds = %.lr.ph205
  br label %.loopexit.sink.split, !llvm.loop !46

.loopexit.sink.split:                             ; preds = %bb.k, %.preheader, %bytestream2_get_byte.exit146, %..loopexit.sink.split.loopexit199_crit_edge, %bb.g, %bb.d
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.6, %bytestream2_get_byte.exit146 ], [ %i.r, %bb.d ], [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %.preheader ], [ %.sroa.0.6, %..loopexit.sink.split.loopexit199_crit_edge ], [ %.sroa.0.6, %bb.k ]
  %.13115.ph = phi i32 [ %.0102184, %bytestream2_get_byte.exit146 ], [ %.0102184, %bb.d ], [ %.0102184, %bb.g ], [ %spec.select, %.preheader ], [ %spec.select136, %..loopexit.sink.split.loopexit199_crit_edge ], [ %spec.select136, %bb.k ]
  %.13.ph = phi i32 [ %.097185, %bytestream2_get_byte.exit146 ], [ %.097185, %bb.d ], [ %.097185, %bb.g ], [ %spec.select135, %.preheader ], [ 160, %..loopexit.sink.split.loopexit199_crit_edge ], [ %spec.select137, %bb.k ]
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !34
  %i.dl = and i32 %i.dk, -3
  store i32 %i.dl, ptr %i.y, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader181, %bb.n, %.loopexit.sink.split, %bytestream2_get_byte.exit
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %bytestream2_get_byte.exit ], [ %.sroa.0.5, %bb.n ], [ %.sroa.0.3.ph, %.loopexit.sink.split ], [ %.sroa.0.4, %.preheader181 ] ; 2 uses
  %.13115 = phi i32 [ %.0102184, %bytestream2_get_byte.exit ], [ %spec.select138, %bb.n ], [ %.13115.ph, %.loopexit.sink.split ], [ %spec.select140, %.preheader181 ] ; 2 uses
  %.13 = phi i32 [ %.097185, %bytestream2_get_byte.exit ], [ %spec.select139, %bb.n ], [ %.13.ph, %.loopexit.sink.split ], [ %spec.select141, %.preheader181 ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.0.3 to i64
  %i.dn = sub i64 %i.u, %i.dm                     ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = icmp sgt i32 %i.do, 0
  %i.dq = icmp slt i32 %.13115, 320
  %or.cond = select i1 %i.dp, i1 %i.dq, i1 false
  %i.dr = icmp slt i32 %.13, 160
  %i.ds = select i1 %or.cond, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.d, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.loopexit, %bytestream2_init.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 276
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !34
  %i.dv = and i32 %i.du, 2
  %.not134 = icmp eq i32 %i.dv, 0
  %i.dw = select i1 %.not134, i32 2, i32 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !51
  %i.dy = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.c) #6 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %.critedge, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !30
  %i.ea = load i32, ptr %i.m, align 8, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %bytestream2_get_le16.exit, %._crit_edge, %bb.a, %bb.q
  %.4120 = phi i32 [ %i.ea, %bb.q ], [ %i.dy, %._crit_edge ], [ %i.d, %bb.a ], [ -1094995529, %bytestream2_get_le16.exit ]
  ret i32 %.4120
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @imx_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @av_frame_free(ptr noundef %i.b) #6
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @imx_decode_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @av_frame_unref(ptr noundef %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33796) %i.d, i8 0, i64 33796, i1 false)
  ret void
}

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_copy_palette(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 136}
!30 = !{!6, !6, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"SimbiosisIMXContext", !33, i64 0, !7, i64 8, !7, i64 1032, !6, i64 33800}
!33 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!34 = !{!35, !6, i64 276}
!35 = !{!"AVFrame", !7, i64 0, !7, i64 64, !36, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !37, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !38, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!36 = !{!"p2 omnipotent char", !28, i64 0}
!37 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!38 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!39 = !{!40, !16, i64 24}
!40 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!41 = !{!40, !6, i64 32}
!42 = !{!16, !16, i64 0}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = !{!32, !6, i64 33800}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = !{!35, !6, i64 120}
end_hunk_0
