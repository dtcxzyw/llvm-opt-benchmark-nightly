Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ws-snd1?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"ws_snd1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Westwood Audio (SND1)\00", align 1
@ff_ws_snd1_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86033, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @ws_snd_decode_init, %union.anon { ptr @ws_snd_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Frame data is larger than input buffer\0A\00", align 1
@ws_adpcm_4bit = internal unnamed_addr constant [16 x i8] c"\F7\F8\FA\FB\FC\FD\FE\FF\00\01\02\03\04\05\06\08", align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @ws_snd_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 0, ptr %i.b, align 4, !tbaa !13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 4, 1) i32 @ws_snd_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #5
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.f = load i16, ptr %i.b, align 1, !tbaa !10   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 1, !tbaa !10   ; 2 uses
  %i.i = zext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.k = icmp samesign ult i32 %i.d, %i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #5
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.l = zext i16 %i.f to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.q = zext i16 %i.f to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 2 uses
  %i.s = icmp eq i16 %i.h, %i.f
  br i1 %i.s, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not188 = icmp eq i16 %i.f, 0
  br i1 %.not188, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = zext nneg i32 %i.d to i64                ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.j, i64 %i.q, i1 false)
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %bb.ac

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.0122181 = phi ptr [ %i.p, %.lr.ph ], [ %.4, %.loopexit ] ; 12 uses
  %.0124180 = phi i32 [ 128, %.lr.ph ], [ %.4128, %.loopexit ] ; 5 uses
  %.0129179 = phi ptr [ %i.j, %.lr.ph ], [ %.4133, %.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.w = ptrtoint ptr %.0129179 to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp slt i64 %i.y, %i.t
  br i1 %i.z, label %bb.j, label %.critedge.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %.0129179, align 1, !tbaa !10 ; 5 uses
  %i.ab = lshr i8 %i.aa, 6                        ; 3 uses
  %i.ac = and i8 %i.aa, 63                        ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0129179, i64 1 ; 7 uses
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %narrow144 = add nuw nsw i8 %i.ac, 1
  %i.ae = zext nneg i8 %narrow144 to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %narrow143 = shl nuw nsw i8 %i.ac, 1
  %i.ag = add nuw i8 %narrow143, 2
  %i.ah = zext i8 %i.ag to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.not141 = icmp samesign ult i8 %i.ac, 32
  %narrow = add nuw nsw i8 %i.ac, 1
  %narrow142 = select i1 %.not141, i8 %narrow, i8 1
  %i.ai = zext nneg i8 %narrow142 to i64
  br label %bb.o

default.unreachable:                              ; preds = %bb.t, %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j
  %narrow145 = add nuw nsw i8 %i.ac, 1
  %i.aj = zext nneg i8 %narrow145 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.0120 = phi i64 [ %i.aj, %bb.n ], [ %i.af, %bb.k ], [ %i.ah, %bb.l ], [ %i.ai, %bb.m ] ; 6 uses
  %i.ak = ptrtoint ptr %.0122181 to i64
  %i.al = sub i64 %i.u, %i.ak
  %i.am = icmp slt i64 %i.al, %.0120
  br i1 %i.am, label %.critedge.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i8 %i.ab, label %bb.r [
    i8 2, label %bb.q
    i8 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.an = and i8 %i.aa, 32
  %.not146 = icmp eq i8 %i.an, 0
  br i1 %.not146, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %narrow147 = add nuw nsw i8 %i.ac, 1
  %i.ao = zext nneg i8 %narrow147 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.ap = phi i64 [ %i.ao, %bb.r ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.aq = ptrtoint ptr %i.ad to i64
  %i.ar = sub i64 %i.aq, %i.x
  %i.as = add nsw i64 %i.ar, %i.ap
  %i.at = icmp sgt i64 %i.as, %i.t
  br i1 %i.at, label %.critedge.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.u
    i8 1, label %bb.w
    i8 2, label %bb.y
    i8 3, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t
  %i.au = add nuw nsw i8 %i.ac, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.v
  %.0119178 = phi i8 [ %i.au, %bb.u ], [ %i.cg, %bb.v ]
  %.1123177 = phi ptr [ %.0122181, %bb.u ], [ %i.cf, %bb.v ] ; 5 uses
  %.1125176 = phi i32 [ %.0124180, %bb.u ], [ %i.ce, %bb.v ]
  %.1130175 = phi ptr [ %i.ad, %bb.u ], [ %i.av, %bb.v ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1130175, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.1130175, align 1, !tbaa !10
  %i.ax = zext i8 %i.aw to i32                    ; 4 uses
  %i.ay = and i32 %i.ax, 3
  %i.az = add nsw i32 %.1125176, -2
  %i.ba = add nsw i32 %i.az, %i.ay                ; 3 uses
  %i.bb = icmp ugt i32 %i.ba, 255
  %isnotneg.i162 = icmp sgt i32 %i.ba, -1
  %i.bc = sext i1 %isnotneg.i162 to i8
  %i.bd = trunc nuw i32 %i.ba to i8
  %.0.i163 = select i1 %i.bb, i8 %i.bc, i8 %i.bd  ; 2 uses
  %i.be = zext i8 %.0.i163 to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.1123177, i64 1
  store i8 %.0.i163, ptr %.1123177, align 1, !tbaa !10
  %i.bg = lshr i32 %i.ax, 2
  %i.bh = and i32 %i.bg, 3
  %i.bi = add nsw i32 %i.bh, -2
  %i.bj = add nsw i32 %i.bi, %i.be                ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 255
  %isnotneg.i160 = icmp sgt i32 %i.bj, -1
  %i.bl = sext i1 %isnotneg.i160 to i8
  %i.bm = trunc nuw i32 %i.bj to i8
  %.0.i161 = select i1 %i.bk, i8 %i.bl, i8 %i.bm  ; 2 uses
  %i.bn = zext i8 %.0.i161 to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.1123177, i64 2
  store i8 %.0.i161, ptr %i.bf, align 1, !tbaa !10
  %i.bp = lshr i32 %i.ax, 4
  %i.bq = and i32 %i.bp, 3
  %i.br = add nsw i32 %i.bq, -2
  %i.bs = add nsw i32 %i.br, %i.bn                ; 3 uses
  %i.bt = icmp ugt i32 %i.bs, 255
  %isnotneg.i158 = icmp sgt i32 %i.bs, -1
  %i.bu = sext i1 %isnotneg.i158 to i8
  %i.bv = trunc nuw i32 %i.bs to i8
  %.0.i159 = select i1 %i.bt, i8 %i.bu, i8 %i.bv  ; 2 uses
  %i.bw = zext i8 %.0.i159 to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.1123177, i64 3
  store i8 %.0.i159, ptr %i.bo, align 1, !tbaa !10
  %i.by = lshr i32 %i.ax, 6
  %i.bz = add nsw i32 %i.by, -2
  %i.ca = add nsw i32 %i.bz, %i.bw                ; 3 uses
  %i.cb = icmp ugt i32 %i.ca, 255
  %isnotneg.i156 = icmp sgt i32 %i.ca, -1
  %i.cc = sext i1 %isnotneg.i156 to i8
  %i.cd = trunc nuw i32 %i.ca to i8
  %.0.i157 = select i1 %i.cb, i8 %i.cc, i8 %i.cd  ; 2 uses
  %i.ce = zext i8 %.0.i157 to i32                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1123177, i64 4 ; 2 uses
  store i8 %.0.i157, ptr %i.bx, align 1, !tbaa !10
  %i.cg = add nsw i8 %.0119178, -1                ; 2 uses
  %.not150 = icmp eq i8 %i.cg, 0
  br i1 %.not150, label %.loopexit, label %bb.v, !llvm.loop !41

bb.w:                                             ; preds = %bb.t
  %i.ch = add nuw nsw i8 %i.ac, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.x
  %.1174 = phi i8 [ %i.ch, %bb.w ], [ %i.dh, %bb.x ]
  %.2173 = phi ptr [ %.0122181, %bb.w ], [ %i.dg, %bb.x ] ; 3 uses
  %.2126172 = phi i32 [ %.0124180, %bb.w ], [ %i.df, %bb.x ]
  %.2131171 = phi ptr [ %i.ad, %bb.w ], [ %i.ci, %bb.x ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.2131171, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.2131171, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = and i32 %i.ck, 15
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @ws_adpcm_4bit, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %.2126172, %i.cp            ; 3 uses
  %i.cr = icmp ugt i32 %i.cq, 255
  %isnotneg.i154 = icmp sgt i32 %i.cq, -1
  %i.cs = sext i1 %isnotneg.i154 to i8
  %i.ct = trunc nuw i32 %i.cq to i8
  %.0.i155 = select i1 %i.cr, i8 %i.cs, i8 %i.ct  ; 2 uses
  %i.cu = zext i8 %.0.i155 to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.2173, i64 1
  store i8 %.0.i155, ptr %.2173, align 1, !tbaa !10
  %i.cw = lshr i32 %i.ck, 4
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @ws_adpcm_4bit, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !10
  %i.da = sext i8 %i.cz to i32
  %i.db = add nsw i32 %i.cu, %i.da                ; 3 uses
  %i.dc = icmp ugt i32 %i.db, 255
  %isnotneg.i152 = icmp sgt i32 %i.db, -1
  %i.dd = sext i1 %isnotneg.i152 to i8
  %i.de = trunc nuw i32 %i.db to i8
  %.0.i153 = select i1 %i.dc, i8 %i.dd, i8 %i.de  ; 2 uses
  %i.df = zext i8 %.0.i153 to i32                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2173, i64 2 ; 2 uses
  store i8 %.0.i153, ptr %i.cv, align 1, !tbaa !10
  %i.dh = add nsw i8 %.1174, -1                   ; 2 uses
  %.not149 = icmp eq i8 %i.dh, 0
  br i1 %.not149, label %.loopexit, label %bb.x, !llvm.loop !43

bb.y:                                             ; preds = %bb.t
  %i.di = and i8 %i.aa, 32
  %.not148 = icmp eq i8 %i.di, 0
  br i1 %.not148, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = shl i8 %i.aa, 3
  %i.dk = ashr exact i8 %i.dj, 3
  %i.dl = sext i8 %i.dk to i32
  %i.dm = add nsw i32 %.0124180, %i.dl            ; 3 uses
  %i.dn = icmp ugt i32 %i.dm, 255
  %isnotneg.i = icmp sgt i32 %i.dm, -1
  %i.do = sext i1 %isnotneg.i to i8
  %i.dp = trunc nuw i32 %i.dm to i8
  %.0.i = select i1 %i.dn, i8 %i.do, i8 %i.dp     ; 2 uses
  %i.dq = zext i8 %.0.i to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %.0122181, i64 1
  store i8 %.0.i, ptr %.0122181, align 1, !tbaa !10
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0122181, ptr nonnull align 1 %i.ad, i64 %.0120, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.0122181, i64 %.0120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0120 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dw = zext i8 %i.dv to i32
  br label %.loopexit

bb.ab:                                            ; preds = %bb.t
  %i.dx = trunc nuw i32 %.0124180 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0122181, i8 %i.dx, i64 %.0120, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.0122181, i64 %.0120
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.v, %bb.ab, %bb.aa, %bb.z
  %.4133 = phi ptr [ %i.ad, %bb.z ], [ %i.dt, %bb.aa ], [ %i.ad, %bb.ab ], [ %i.av, %bb.v ], [ %i.ci, %bb.x ]
  %.4128 = phi i32 [ %i.dq, %bb.z ], [ %i.dw, %bb.aa ], [ %.0124180, %bb.ab ], [ %i.ce, %bb.v ], [ %i.df, %bb.x ]
  %.4 = phi ptr [ %i.dr, %bb.z ], [ %i.ds, %bb.aa ], [ %i.dy, %bb.ab ], [ %i.cf, %bb.v ], [ %i.dg, %bb.x ] ; 3 uses
  %i.dz = icmp ult ptr %.4, %i.r
  br i1 %i.dz, label %bb.i, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.o, %bb.s, %.loopexit, %bb.i
  %.0122.lcssa.ph = phi ptr [ %.0122181, %bb.i ], [ %.4, %.loopexit ], [ %.0122181, %bb.s ], [ %.0122181, %bb.o ]
  %.pre = load ptr, ptr %1, align 8, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.ea = phi ptr [ %i.p, %.preheader ], [ %.pre, %.critedge.loopexit ]
  %.0122.lcssa = phi ptr [ %i.p, %.preheader ], [ %.0122.lcssa.ph, %.critedge.loopexit ]
  %i.eb = ptrtoint ptr %.0122.lcssa to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.m, align 8, !tbaa !35
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.f, %bb.a, %.critedge, %bb.h, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -1094995529, %bb.e ], [ 0, %bb.a ], [ %i.d, %bb.h ], [ %i.d, %.critedge ], [ %i.n, %bb.f ]
  ret i32 %.0
}

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!9 = !{!6, !6, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !6, i64 348}
!14 = !{!"AVCodecContext", !15, i64 0, !6, i64 8, !6, i64 12, !16, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !17, i64 40, !12, i64 48, !18, i64 56, !6, i64 64, !6, i64 68, !19, i64 72, !6, i64 80, !20, i64 84, !20, i64 92, !20, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !20, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !21, i64 204, !21, i64 208, !21, i64 212, !21, i64 216, !21, i64 220, !21, i64 224, !21, i64 228, !21, i64 232, !21, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !22, i64 288, !22, i64 296, !22, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !23, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !21, i64 428, !21, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !24, i64 456, !18, i64 464, !18, i64 472, !21, i64 480, !21, i64 484, !6, i64 488, !6, i64 492, !19, i64 496, !19, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !25, i64 536, !12, i64 544, !26, i64 552, !26, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !27, i64 728, !19, i64 736, !6, i64 744, !6, i64 748, !19, i64 752, !19, i64 760, !19, i64 768, !28, i64 776, !6, i64 784, !6, i64 788, !18, i64 792, !6, i64 800, !6, i64 804, !18, i64 808, !12, i64 816, !18, i64 824, !29, i64 832, !6, i64 840, !30, i64 848, !6, i64 856, !6, i64 860}
!15 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!16 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!17 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!"AVRational", !6, i64 0, !6, i64 4}
!21 = !{!"float", !7, i64 0}
!22 = !{!"p1 short", !12, i64 0}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!24 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!25 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!27 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!28 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!29 = !{!"p1 int", !12, i64 0}
!30 = !{!"p2 _ZTS15AVFrameSideData", !31, i64 0}
!31 = !{!"any p2 pointer", !12, i64 0}
!32 = !{!33, !19, i64 24}
!33 = !{!"AVPacket", !26, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !28, i64 48, !6, i64 56, !18, i64 64, !18, i64 72, !12, i64 80, !26, i64 88, !20, i64 96}
!34 = !{!33, !6, i64 32}
!35 = !{!36, !6, i64 112}
!36 = !{!"AVFrame", !7, i64 0, !7, i64 64, !37, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !20, i64 124, !18, i64 136, !18, i64 144, !20, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !38, i64 248, !6, i64 256, !30, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !18, i64 304, !39, i64 312, !6, i64 320, !26, i64 328, !26, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !12, i64 376, !23, i64 384, !18, i64 408, !6, i64 416}
!37 = !{!"p2 omnipotent char", !31, i64 0}
!38 = !{!"p2 _ZTS11AVBufferRef", !31, i64 0}
!39 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!40 = !{!19, !19, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
end_hunk_0
