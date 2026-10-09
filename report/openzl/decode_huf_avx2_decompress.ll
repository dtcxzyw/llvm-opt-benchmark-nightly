Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_huf_avx2_decompress?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HUF_DTable16 = type { i32, [8192 x i16] }
%struct.ZL_ReadCursor = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define range(i64 0, 4294967296) i64 @ZS_HufAvx2_decode(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2049 x i32], align 16            ; 7 uses
  %i.b = alloca [32 x i32], align 32              ; 13 uses
  %i.c = alloca [32 x i32], align 32              ; 5 uses
  %i.d = alloca [32 x i32], align 32              ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.f = icmp ugt i64 %3, 4
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.0.copyload68 = load i32, ptr %2, align 1      ; 2 uses
  %i.g = zext i32 %.0.copyload68 to i64           ; 8 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 4 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !11
  switch i8 %i.j, label %.thread [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %gepdiff = add nsw i64 %3, -5
  %.not147 = icmp ult i64 %gepdiff, %i.g
  br i1 %.not147, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %.not146 = icmp eq i64 %3, 5
  br i1 %.not146, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %i.i, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.k, i64 %i.g, i1 false)
  br label %.thread

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8196) %i.a, i8 0, i64 8196, i1 false)
  store i32 184549387, ptr %i.a, align 16
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %gepdiff148 = add i64 %3, -5                    ; 2 uses
  %i.m = call i64 @ZS_HUF_readDTableX1(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, i64 noundef %gepdiff148) #6 ; 6 uses
  %i.n = call i32 @ZS_HUF_isError(i64 noundef %i.m) #6
  %.not149163.a = icmp ne i32 %i.n, 0
  %.not149163 = icmp eq i64 %i.m, 0
  %.not149 = or i1 %.not149163, %.not149163.a
  br i1 %.not149, label %bb.r, label %4

4:                                                ; preds = %bb.h
  %gepdiff150 = sub i64 %gepdiff148, %i.m         ; 2 uses
  %5 = icmp ugt i64 %gepdiff150, 3
  br i1 %5, label %bb.i, label %bb.r

bb.i:                                             ; preds = %4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 3 uses
  %.0.copyload = load i32, ptr %i.o, align 1      ; 2 uses
  %.neg166 = add i64 %3, -9
  %gepdiff151 = sub i64 %.neg166, %i.m
  %i.p = zext i32 %.0.copyload to i64             ; 4 uses
  %.not152 = icmp ult i64 %gepdiff151, %i.p
  br i1 %.not152, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.add = add nuw nsw i64 %i.p, 4                 ; 3 uses
  %.ptr154 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.add ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %reass.sub = sub i64 %gepdiff150, %i.p
  %i.q = add i64 %reass.sub, -132
  %i.r = icmp ult i64 %i.q, -128
  br i1 %i.r, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.ptr154, i64 128, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr154, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.l, %i.t
  %i.v = icmp ugt i64 %i.u, 127
  br i1 %i.v, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.c, ptr noundef nonnull align 1 dereferenceable(128) %i.s, i64 128, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr154, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.l, %i.x
  %i.z = icmp ugt i64 %i.y, 31
  br i1 %i.z, label %vector.body, label %.loopexit

vector.body:                                      ; preds = %bb.l
  %wide.load = load <4 x i8>, ptr %i.w, align 1, !tbaa !11
  %i.aa = sub <4 x i8> zeroinitializer, %wide.load
  %i.ab = and <4 x i8> %i.aa, splat (i8 31)
  %i.ac = zext nneg <4 x i8> %i.ab to <4 x i32>   ; 2 uses
  store <4 x i32> %i.ac, ptr %i.d, align 32, !tbaa !12
  %wide.load359 = load <4 x i32>, ptr %i.b, align 32, !tbaa !12
  %i.ad = shl <4 x i32> %wide.load359, %i.ac
  store <4 x i32> %i.ad, ptr %i.b, align 32, !tbaa !12
  %next.gep.1 = getelementptr i8, ptr %.ptr154, i64 260
  %wide.load.1 = load <4 x i8>, ptr %next.gep.1, align 1, !tbaa !11
  %i.ae = sub <4 x i8> zeroinitializer, %wide.load.1
  %i.af = and <4 x i8> %i.ae, splat (i8 31)
  %i.ag = zext nneg <4 x i8> %i.af to <4 x i32>   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.ag, ptr %i.ah, align 16, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load359.1 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !12
  %i.aj = shl <4 x i32> %wide.load359.1, %i.ag
  store <4 x i32> %i.aj, ptr %i.ai, align 16, !tbaa !12
  %next.gep.2 = getelementptr i8, ptr %.ptr154, i64 264
  %wide.load.2 = load <4 x i8>, ptr %next.gep.2, align 1, !tbaa !11
  %i.ak = sub <4 x i8> zeroinitializer, %wide.load.2
  %i.al = and <4 x i8> %i.ak, splat (i8 31)
  %i.am = zext nneg <4 x i8> %i.al to <4 x i32>   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store <4 x i32> %i.am, ptr %i.an, align 32, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %wide.load359.2 = load <4 x i32>, ptr %i.ao, align 32, !tbaa !12
  %i.ap = shl <4 x i32> %wide.load359.2, %i.am
  store <4 x i32> %i.ap, ptr %i.ao, align 32, !tbaa !12
  %next.gep.3 = getelementptr i8, ptr %.ptr154, i64 268
  %wide.load.3 = load <4 x i8>, ptr %next.gep.3, align 1, !tbaa !11
  %i.aq = sub <4 x i8> zeroinitializer, %wide.load.3
  %i.ar = and <4 x i8> %i.aq, splat (i8 31)
  %i.as = zext nneg <4 x i8> %i.ar to <4 x i32>   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> %i.as, ptr %i.at, align 16, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load359.3 = load <4 x i32>, ptr %i.au, align 16, !tbaa !12
  %i.av = shl <4 x i32> %wide.load359.3, %i.as
  store <4 x i32> %i.av, ptr %i.au, align 16, !tbaa !12
  %next.gep.4 = getelementptr i8, ptr %.ptr154, i64 272
  %wide.load.4 = load <4 x i8>, ptr %next.gep.4, align 1, !tbaa !11
  %i.aw = sub <4 x i8> zeroinitializer, %wide.load.4
  %i.ax = and <4 x i8> %i.aw, splat (i8 31)
  %i.ay = zext nneg <4 x i8> %i.ax to <4 x i32>   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <4 x i32> %i.ay, ptr %i.az, align 32, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %wide.load359.4 = load <4 x i32>, ptr %i.ba, align 32, !tbaa !12
  %i.bb = shl <4 x i32> %wide.load359.4, %i.ay
  store <4 x i32> %i.bb, ptr %i.ba, align 32, !tbaa !12
  %next.gep.5 = getelementptr i8, ptr %.ptr154, i64 276
  %wide.load.5 = load <4 x i8>, ptr %next.gep.5, align 1, !tbaa !11
  %i.bc = sub <4 x i8> zeroinitializer, %wide.load.5
  %i.bd = and <4 x i8> %i.bc, splat (i8 31)
  %i.be = zext nneg <4 x i8> %i.bd to <4 x i32>   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <4 x i32> %i.be, ptr %i.bf, align 16, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load359.5 = load <4 x i32>, ptr %i.bg, align 16, !tbaa !12
  %i.bh = shl <4 x i32> %wide.load359.5, %i.be
  store <4 x i32> %i.bh, ptr %i.bg, align 16, !tbaa !12
  %next.gep.6 = getelementptr i8, ptr %.ptr154, i64 280
  %wide.load.6 = load <4 x i8>, ptr %next.gep.6, align 1, !tbaa !11
  %i.bi = sub <4 x i8> zeroinitializer, %wide.load.6
  %i.bj = and <4 x i8> %i.bi, splat (i8 31)
  %i.bk = zext nneg <4 x i8> %i.bj to <4 x i32>   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x i32> %i.bk, ptr %i.bl, align 32, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %wide.load359.6 = load <4 x i32>, ptr %i.bm, align 32, !tbaa !12
  %i.bn = shl <4 x i32> %wide.load359.6, %i.bk
  store <4 x i32> %i.bn, ptr %i.bm, align 32, !tbaa !12
  %next.gep.7 = getelementptr i8, ptr %.ptr154, i64 284
  %wide.load.7 = load <4 x i8>, ptr %next.gep.7, align 1, !tbaa !11
  %i.bo = sub <4 x i8> zeroinitializer, %wide.load.7
  %i.bp = and <4 x i8> %i.bo, splat (i8 31)
  %i.bq = zext nneg <4 x i8> %i.bp to <4 x i32>   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <4 x i32> %i.bq, ptr %i.br, align 16, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load359.7 = load <4 x i32>, ptr %i.bs, align 16, !tbaa !12
  %i.bt = shl <4 x i32> %wide.load359.7, %i.bq
  store <4 x i32> %i.bt, ptr %i.bs, align 16, !tbaa !12
  %i.bu = load <32 x i32>, ptr %i.c, align 32
  %i.bv = insertelement <32 x i32> poison, i32 %.0.copyload, i64 0
  %i.bw = shufflevector <32 x i32> %i.bv, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.bx = icmp ugt <32 x i32> %i.bu, %i.bw
  %i.by = freeze <32 x i1> %i.bx
  %i.bz = bitcast <32 x i1> %i.by to i32
  %.not364 = icmp eq i32 %i.bz, 0
  br i1 %.not364, label %.preheader171, label %.loopexit

.preheader171:                                    ; preds = %vector.body
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not186 = icmp eq i32 %.0.copyload68, 0
  br i1 %.not186, label %._crit_edge, label %.preheader169.lr.ph

.preheader169.lr.ph:                              ; preds = %.preheader171
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !14
  %i.ce = and i16 %i.cd, 255
  %i.cf = zext nneg i16 %i.ce to i32
  %i.cg = sub nsw i32 32, %i.cf
  br label %.preheader169

.preheader169:                                    ; preds = %bb.o, %.preheader169.lr.ph
  %.0121181 = phi i64 [ %.mux, %bb.o ], [ 0, %.preheader169.lr.ph ] ; 5 uses
  %.1180 = phi ptr [ %i.cp, %bb.o ], [ %0, %.preheader169.lr.ph ] ; 2 uses
  %.1129.idx179 = phi i64 [ %.2.idx, %bb.o ], [ %.add, %.preheader169.lr.ph ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0121181 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %i.cj = lshr i32 %i.ci, %i.cg
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !14 ; 2 uses
  %i.cn = lshr i16 %i.cm, 8
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.1180, i64 1 ; 3 uses
  store i8 %i.co, ptr %.1180, align 1, !tbaa !11
  %i.cq = and i16 %i.cm, 255
  %i.cr = zext nneg i16 %i.cq to i32              ; 2 uses
  %i.cs = load i32, ptr %i.ch, align 4, !tbaa !12
  %i.ct = shl i32 %i.cs, %i.cr                    ; 2 uses
  store i32 %i.ct, ptr %i.ch, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0121181 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = add i32 %i.cv, %i.cr                    ; 3 uses
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !12
  %i.cx = icmp ugt i32 %i.cw, 16
  br i1 %i.cx, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.preheader169
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0121181
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 4
  %i.dc = add nsw i64 %.1129.idx179, -1
  %i.dd = icmp sgt i64 %i.dc, %i.db
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.de = add i32 %i.cw, -16                      ; 2 uses
  store i32 %i.de, ptr %i.cu, align 4, !tbaa !12
  %.1129.add = add nsw i64 %.1129.idx179, -2      ; 2 uses
  %.ptr155 = getelementptr inbounds i8, ptr %i.o, i64 %.1129.add
  %.ptr155.val = load i16, ptr %.ptr155, align 1
  %i.df = zext i16 %.ptr155.val to i32
  %i.dg = shl i32 %i.df, %i.de
  %i.dh = or i32 %i.dg, %i.ct
  store i32 %i.dh, ptr %i.ch, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.preheader169
  %.2.idx = phi i64 [ %.1129.add, %bb.n ], [ %.1129.idx179, %bb.m ], [ %.1129.idx179, %.preheader169 ] ; 2 uses
  %i.di = add nuw nsw i64 %.0121181, 1
  %i.dj = icmp samesign ult i64 %.0121181, 31
  %i.dk = icmp ult ptr %i.cp, %i.ca               ; 2 uses
  %i.dl = and i1 %i.dj, %i.dk
  %.mux = select i1 %i.dl, i64 %i.di, i64 0
  br i1 %i.dk, label %.preheader169, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.o, %.preheader171
  %.0128.idx.lcssa = phi i64 [ %.add, %.preheader171 ], [ %.2.idx, %bb.o ]
  %.0123.lcssa = phi ptr [ %0, %.preheader171 ], [ %i.cp, %bb.o ]
  %i.dm = icmp eq ptr %.0123.lcssa, %i.ca
  %.0128.idx.lcssa.fr = freeze i64 %.0128.idx.lcssa
  %i.dn = icmp eq i64 %.0128.idx.lcssa.fr, 4
  %op.rdx362 = add nuw nsw i64 %i.p, 297
  %op.rdx363 = add i64 %op.rdx362, %i.m
  %i.do = icmp eq i64 %op.rdx363, %3
  %i.dp = load <32 x i32>, ptr %i.d, align 32
  %.fr = freeze <32 x i32> %i.dp
  %i.dq = icmp ne <32 x i32> %.fr, splat (i32 32)
  %i.dr = bitcast <32 x i1> %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  %op.rdx = and i1 %i.ds, %i.dn
  %i.dt = select i1 %op.rdx, i1 %i.dm, i1 false
  %op.rdx361 = select i1 %i.dt, i1 %i.do, i1 false
  %spec.select = select i1 %op.rdx361, i64 %i.g, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %vector.body, %bb.l
  %.5 = phi i64 [ 0, %bb.l ], [ 0, %vector.body ], [ %spec.select, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %.loopexit
  %.6 = phi i64 [ %.5, %.loopexit ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p
  %.7 = phi i64 [ %.6, %bb.p ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %4, %bb.i, %bb.h
  %.9 = phi i64 [ 0, %bb.h ], [ %.7, %bb.q ], [ 0, %4 ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a, %bb.r
  %.10 = phi i64 [ %.9, %bb.r ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.g, %bb.g ], [ 0, %bb.f ], [ %i.g, %bb.e ]
  ret i64 %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i64 0, 4294967296) i64 @ZS_Huf16Avx2_decode(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %4 = alloca %struct.HUF_DTable16, align 4       ; 5 uses
  %5 = alloca %struct.ZL_ReadCursor, align 8      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [32 x i32], align 32              ; 37 uses
  %i.d = alloca [32 x i32], align 32              ; 4 uses
  %i.e = alloca [32 x i32], align 32              ; 36 uses
  %i.f = getelementptr i8, ptr %2, i64 %3         ; 3 uses
  %i.g = icmp ugt i64 %3, 4
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.0.copyload84 = load i32, ptr %2, align 1      ; 3 uses
  %i.h = zext i32 %.0.copyload84 to i64           ; 9 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 3 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !11
  switch i8 %i.k, label %.thread [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %gepdiff = add nsw i64 %3, -5
  %.not170 = icmp ult i64 %gepdiff, %i.h
  br i1 %.not170, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %i.j, i64 %i.h, i1 false)
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %3, 6
  br i1 %i.l, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.val = load i16, ptr %i.j, align 1             ; 3 uses
  %i.m = shl i32 %.0.copyload84, 1                ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.not213 = icmp eq i32 %i.m, 0
  br i1 %.not213, label %.thread, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.p = add i64 %i.a, %i.n
  %i.q = add i64 %i.a, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.a, -1
  %i.s = add i64 %umax, %i.r                      ; 3 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.s, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check287 = icmp ult i64 %i.s, 30
  br i1 %min.iters.check287, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.u, 12
  %n.vec = and i64 %i.u, -16                      ; 4 uses
  %i.w = shl i64 %n.vec, 1
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.y  ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 1
  store <8 x i16> %broadcast.splat, ptr %i.z, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec288 = and i64 %i.u, -4                    ; 3 uses
  %i.ab = shl i64 %n.vec288, 1
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %broadcast.splatinsert289 = insertelement <4 x i16> poison, i16 %.val, i64 0
  %broadcast.splat290 = shufflevector <4 x i16> %broadcast.splatinsert289, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index291 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = shl i64 %index291, 1
  %next.gep292 = getelementptr i8, ptr %0, i64 %i.ad
  store <4 x i16> %broadcast.splat290, ptr %next.gep292, align 1
  %index.next293 = add nuw i64 %index291, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n294 = icmp eq i64 %i.u, %n.vec288
  br i1 %cmp.n294, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0151210.ph = phi ptr [ %0, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0151210 = phi ptr [ %i.af, %.lr.ph ], [ %.0151210.ph, %.lr.ph.preheader ] ; 2 uses
  store i16 %.val, ptr %.0151210, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0151210, i64 2 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.o
  br i1 %i.ag, label %.lr.ph, label %.thread, !llvm.loop !19

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ah = ptrtoint ptr %i.f to i64                ; 5 uses
  store ptr %i.j, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 13, ptr %i.b, align 4, !tbaa !12
  %i.aj = call ptr @ZS_largeHuffmanCreateDTable(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #6 ; 4 uses
  %.not172 = icmp eq ptr %i.aj, null
  br i1 %.not172, label %.thread189, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !12  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 13
  br i1 %i.al, label %.thread189.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = zext nneg i32 %i.ak to i64
  store i32 %i.ak, ptr %4, align 4, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %.0150198 = phi i64 [ 0, %bb.j ], [ %i.at, %bb.l ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.0150198 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.ao, align 2, !tbaa !14 ; 2 uses
  %i.ap = icmp ult i16 %.sroa.0.0.copyload, 4096
  br i1 %i.ap, label %bb.l, label %.thread189.sink.split

bb.l:                                             ; preds = %bb.k
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !14
  %i.aq = shl i16 %.sroa.5.0.copyload, 12
  %i.ar = or disjoint i16 %i.aq, %.sroa.0.0.copyload
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.0150198
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !14
  %i.at = add nuw nsw i64 %.0150198, 1            ; 2 uses
  %.0150.highbits = lshr i64 %i.at, %i.am
  %.not173.not = icmp eq i64 %.0150.highbits, 0
  br i1 %.not173.not, label %bb.k, label %bb.m, !llvm.loop !20

.thread189.sink.split:                            ; preds = %bb.k, %bb.i
  call void @free(ptr noundef nonnull %i.aj) #6
  br label %.thread189

.thread189:                                       ; preds = %.thread189.sink.split, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.w

bb.m:                                             ; preds = %bb.l
end_hunk_0
