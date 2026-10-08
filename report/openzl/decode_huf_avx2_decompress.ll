Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_huf_avx2_decompress?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ZS_HufAvx2_decode:bb.a
  store <4 x i32> %i.au, ptr %i.av, align 16, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load359.3 = load <4 x i32>, ptr %i.aw, align 16, !tbaa !12
  %i.ax = shl <4 x i32> %wide.load359.3, %i.au
  store <4 x i32> %i.ax, ptr %i.aw, align 16, !tbaa !12
  %next.gep.4 = getelementptr i8, ptr %.ptr154, i64 272
  %wide.load.4 = load <4 x i8>, ptr %next.gep.4, align 1, !tbaa !11
  %i.ay = sub <4 x i8> zeroinitializer, %wide.load.4
  %i.az = and <4 x i8> %i.ay, splat (i8 31)
  %i.ba = zext nneg <4 x i8> %i.az to <4 x i32>   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <4 x i32> %i.ba, ptr %i.bb, align 32, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %wide.load359.4 = load <4 x i32>, ptr %i.bc, align 32, !tbaa !12
  %i.bd = shl <4 x i32> %wide.load359.4, %i.ba
  store <4 x i32> %i.bd, ptr %i.bc, align 32, !tbaa !12
  %next.gep.5 = getelementptr i8, ptr %.ptr154, i64 276
  %wide.load.5 = load <4 x i8>, ptr %next.gep.5, align 1, !tbaa !11
  %i.be = sub <4 x i8> zeroinitializer, %wide.load.5
  %i.bf = and <4 x i8> %i.be, splat (i8 31)
  %i.bg = zext nneg <4 x i8> %i.bf to <4 x i32>   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <4 x i32> %i.bg, ptr %i.bh, align 16, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load359.5 = load <4 x i32>, ptr %i.bi, align 16, !tbaa !12
  %i.bj = shl <4 x i32> %wide.load359.5, %i.bg
  store <4 x i32> %i.bj, ptr %i.bi, align 16, !tbaa !12
  %next.gep.6 = getelementptr i8, ptr %.ptr154, i64 280
  %wide.load.6 = load <4 x i8>, ptr %next.gep.6, align 1, !tbaa !11
  %i.bk = sub <4 x i8> zeroinitializer, %wide.load.6
  %i.bl = and <4 x i8> %i.bk, splat (i8 31)
  %i.bm = zext nneg <4 x i8> %i.bl to <4 x i32>   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x i32> %i.bm, ptr %i.bn, align 32, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %wide.load359.6 = load <4 x i32>, ptr %i.bo, align 32, !tbaa !12
  %i.bp = shl <4 x i32> %wide.load359.6, %i.bm
  store <4 x i32> %i.bp, ptr %i.bo, align 32, !tbaa !12
  %next.gep.7 = getelementptr i8, ptr %.ptr154, i64 284
  %wide.load.7 = load <4 x i8>, ptr %next.gep.7, align 1, !tbaa !11
  %i.bq = sub <4 x i8> zeroinitializer, %wide.load.7
  %i.br = and <4 x i8> %i.bq, splat (i8 31)
  %i.bs = zext nneg <4 x i8> %i.br to <4 x i32>   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <4 x i32> %i.bs, ptr %i.bt, align 16, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load359.7 = load <4 x i32>, ptr %i.bu, align 16, !tbaa !12
  %i.bv = shl <4 x i32> %wide.load359.7, %i.bs
  store <4 x i32> %i.bv, ptr %i.bu, align 16, !tbaa !12
  %i.bw = load <32 x i32>, ptr %i.c, align 32
  %i.bx = insertelement <32 x i32> poison, i32 %.0.copyload, i64 0
  %i.by = shufflevector <32 x i32> %i.bx, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.bz = icmp ugt <32 x i32> %i.bw, %i.by
  %i.ca = freeze <32 x i1> %i.bz
  %i.cb = bitcast <32 x i1> %i.ca to i32
  %.not364 = icmp eq i32 %i.cb, 0
  br i1 %.not364, label %.preheader171, label %.loopexit

.preheader171:                                    ; preds = %vector.body
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not186 = icmp eq i32 %.0.copyload68, 0
  br i1 %.not186, label %._crit_edge, label %.preheader169.lr.ph

.preheader169.lr.ph:                              ; preds = %.preheader171
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !14
  %i.cg = and i16 %i.cf, 255
  %i.ch = zext nneg i16 %i.cg to i32
  %i.ci = sub nsw i32 32, %i.ch
  br label %.preheader169

.preheader169:                                    ; preds = %bb.o, %.preheader169.lr.ph
  %.0121181 = phi i64 [ %.mux, %bb.o ], [ 0, %.preheader169.lr.ph ] ; 5 uses
  %.1180 = phi ptr [ %i.cr, %bb.o ], [ %0, %.preheader169.lr.ph ] ; 2 uses
  %.1129.idx179 = phi i64 [ %.2.idx, %bb.o ], [ %.add, %.preheader169.lr.ph ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0121181 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12
  %i.cl = lshr i32 %i.ck, %i.ci
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !14 ; 2 uses
  %i.cp = lshr i16 %i.co, 8
  %i.cq = trunc nuw i16 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.1180, i64 1 ; 3 uses
  store i8 %i.cq, ptr %.1180, align 1, !tbaa !11
  %i.cs = and i16 %i.co, 255
  %i.ct = zext nneg i16 %i.cs to i32              ; 2 uses
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !12
  %i.cv = shl i32 %i.cu, %i.ct                    ; 2 uses
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !12
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0121181 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !12
  %i.cy = add i32 %i.cx, %i.ct                    ; 3 uses
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !12
  %i.cz = icmp ugt i32 %i.cy, 16
  br i1 %i.cz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.preheader169
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0121181
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 4
  %i.de = add nsw i64 %.1129.idx179, -1
  %i.df = icmp sgt i64 %i.de, %i.dd
  br i1 %i.df, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dg = add i32 %i.cy, -16                      ; 2 uses
  store i32 %i.dg, ptr %i.cw, align 4, !tbaa !12
  %.1129.add = add nsw i64 %.1129.idx179, -2      ; 2 uses
  %.ptr155 = getelementptr inbounds i8, ptr %i.p, i64 %.1129.add
  %.ptr155.val = load i16, ptr %.ptr155, align 1
  %i.dh = zext i16 %.ptr155.val to i32
  %i.di = shl i32 %i.dh, %i.dg
  %i.dj = or i32 %i.di, %i.cv
  store i32 %i.dj, ptr %i.cj, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.preheader169
  %.2.idx = phi i64 [ %.1129.add, %bb.n ], [ %.1129.idx179, %bb.m ], [ %.1129.idx179, %.preheader169 ] ; 2 uses
  %i.dk = add nuw nsw i64 %.0121181, 1
  %i.dl = icmp samesign ult i64 %.0121181, 31
  %i.dm = icmp ult ptr %i.cr, %i.cc               ; 2 uses
  %i.dn = and i1 %i.dl, %i.dm
  %.mux = select i1 %i.dn, i64 %i.dk, i64 0
  br i1 %i.dm, label %.preheader169, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.o, %.preheader171
  %.0128.idx.lcssa = phi i64 [ %.add, %.preheader171 ], [ %.2.idx, %bb.o ]
  %.0123.lcssa = phi ptr [ %0, %.preheader171 ], [ %i.cr, %bb.o ]
  %i.do = icmp eq ptr %.0123.lcssa, %i.cc
  %.0128.idx.lcssa.fr = freeze i64 %.0128.idx.lcssa
  %i.dp = icmp eq i64 %.0128.idx.lcssa.fr, 4
  %op.rdx362 = add nuw nsw i64 %i.q, 297
  %op.rdx363 = add i64 %op.rdx362, %i.m
  %i.dq = icmp eq i64 %op.rdx363, %3
  %i.dr = load <32 x i32>, ptr %i.d, align 32
  %.fr = freeze <32 x i32> %i.dr
  %i.ds = icmp ne <32 x i32> %.fr, splat (i32 32)
  %i.dt = bitcast <32 x i1> %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  %op.rdx = and i1 %i.du, %i.dp
  %i.dv = select i1 %op.rdx, i1 %i.do, i1 false
  %op.rdx361 = select i1 %i.dv, i1 %i.dq, i1 false
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

bb.r:                                             ; preds = %bb.q, %bb.i, %bb.h
  %.9 = phi i64 [ 0, %bb.h ], [ %.7, %bb.q ], [ 0, %bb.i ]
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
  call void @free(ptr noundef nonnull %i.aj) #6
  %.val179 = load ptr, ptr %5, align 8, !tbaa !30 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.au = ptrtoint ptr %.val179 to i64
  %i.av = sub i64 %i.ah, %i.au
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %.0.copyload = load i32, ptr %.val179, align 1
  %.ptr = getelementptr inbounds nuw i8, ptr %.val179, i64 4
  %i.ax = ptrtoint ptr %.ptr to i64
  %i.ay = sub i64 %i.ah, %i.ax
  %i.az = zext i32 %.0.copyload to i64            ; 2 uses
  %.not174 = icmp ult i64 %i.ay, %i.az
  br i1 %.not174, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.add = add nuw nsw i64 %i.az, 4                ; 3 uses
  %.ptr175 = getelementptr inbounds nuw i8, ptr %.val179, i64 %.add
  %.ptr175.fr = freeze ptr %.ptr175               ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ba = ptrtoint ptr %.ptr175.fr to i64
  %i.bb = sub i64 %i.ah, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 127
  br i1 %i.bc, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.c, ptr noundef nonnull align 1 dereferenceable(128) %.ptr175.fr, i64 128, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.ah, %i.be
  %i.bg = icmp ugt i64 %i.bf, 127
  br i1 %i.bg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 1 dereferenceable(128) %i.bd, i64 128, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.ah, %i.bi
  %i.bk = icmp ugt i64 %i.bj, 31
  br i1 %i.bk, label %.preheader197.preheader, label %.loopexit

.preheader197.preheader:                          ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 257
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 32, %i.bn                   ; 2 uses
  store i32 %i.bo, ptr %i.e, align 32, !tbaa !12
  %i.bp = load i32, ptr %i.c, align 32, !tbaa !12
  %i.bq = shl i32 %i.bp, %i.bo
  store i32 %i.bq, ptr %i.c, align 32, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 258
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = sub nsw i32 32, %i.bt                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = shl i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 259
end_hunk_0
begin_hunk_1_@ZS_Huf16Avx2_decode:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 269
  %i.fc = load i8, ptr %i.et, align 1, !tbaa !11
  %i.fd = zext i8 %i.fc to i32
  %i.fe = sub nsw i32 32, %i.fd                   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 %i.fe, ptr %i.ff, align 16, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 16, !tbaa !12
  %i.fi = shl i32 %i.fh, %i.fe
  store i32 %i.fi, ptr %i.fg, align 16, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 270
  %i.fk = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fl = zext i8 %i.fk to i32
  %i.fm = sub nsw i32 32, %i.fl                   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !12
  %i.fq = shl i32 %i.fp, %i.fm
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 271
  %i.fs = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.ft = zext i8 %i.fs to i32
  %i.fu = sub nsw i32 32, %i.ft                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !12
  %i.fy = shl i32 %i.fx, %i.fu
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 272
  %i.ga = load i8, ptr %i.fr, align 1, !tbaa !11
  %i.gb = zext i8 %i.ga to i32
  %i.gc = sub nsw i32 32, %i.gb                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !12
  %i.gg = shl i32 %i.gf, %i.gc
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 273
  %i.gi = load i8, ptr %i.fz, align 1, !tbaa !11
  %i.gj = zext i8 %i.gi to i32
  %i.gk = sub nsw i32 32, %i.gj                   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 %i.gk, ptr %i.gl, align 32, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 32, !tbaa !12
  %i.go = shl i32 %i.gn, %i.gk
  store i32 %i.go, ptr %i.gm, align 32, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 274
  %i.gq = load i8, ptr %i.gh, align 1, !tbaa !11
  %i.gr = zext i8 %i.gq to i32
  %i.gs = sub nsw i32 32, %i.gr                   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !12
  %i.gw = shl i32 %i.gv, %i.gs
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 275
  %i.gy = load i8, ptr %i.gp, align 1, !tbaa !11
  %i.gz = zext i8 %i.gy to i32
  %i.ha = sub nsw i32 32, %i.gz                   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !12
  %i.he = shl i32 %i.hd, %i.ha
  store i32 %i.he, ptr %i.hc, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 276
  %i.hg = load i8, ptr %i.gx, align 1, !tbaa !11
  %i.hh = zext i8 %i.hg to i32
  %i.hi = sub nsw i32 32, %i.hh                   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !12
  %i.hm = shl i32 %i.hl, %i.hi
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 277
  %i.ho = load i8, ptr %i.hf, align 1, !tbaa !11
  %i.hp = zext i8 %i.ho to i32
  %i.hq = sub nsw i32 32, %i.hp                   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 %i.hq, ptr %i.hr, align 16, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 16, !tbaa !12
  %i.hu = shl i32 %i.ht, %i.hq
  store i32 %i.hu, ptr %i.hs, align 16, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 278
  %i.hw = load i8, ptr %i.hn, align 1, !tbaa !11
  %i.hx = zext i8 %i.hw to i32
  %i.hy = sub nsw i32 32, %i.hx                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !12
  %i.ic = shl i32 %i.ib, %i.hy
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 279
  %i.ie = load i8, ptr %i.hv, align 1, !tbaa !11
  %i.if = zext i8 %i.ie to i32
  %i.ig = sub nsw i32 32, %i.if                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !12
  %i.ik = shl i32 %i.ij, %i.ig
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 280
  %i.im = load i8, ptr %i.id, align 1, !tbaa !11
  %i.in = zext i8 %i.im to i32
  %i.io = sub nsw i32 32, %i.in                   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !12
  %i.is = shl i32 %i.ir, %i.io
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 281
  %i.iu = load i8, ptr %i.il, align 1, !tbaa !11
  %i.iv = zext i8 %i.iu to i32
  %i.iw = sub nsw i32 32, %i.iv                   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i32 %i.iw, ptr %i.ix, align 32, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 32, !tbaa !12
  %i.ja = shl i32 %i.iz, %i.iw
  store i32 %i.ja, ptr %i.iy, align 32, !tbaa !12
  %i.jb = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 282
  %i.jc = load i8, ptr %i.it, align 1, !tbaa !11
  %i.jd = zext i8 %i.jc to i32
  %i.je = sub nsw i32 32, %i.jd                   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !12
  %i.ji = shl i32 %i.jh, %i.je
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 283
  %i.jk = load i8, ptr %i.jb, align 1, !tbaa !11
  %i.jl = zext i8 %i.jk to i32
  %i.jm = sub nsw i32 32, %i.jl                   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 %i.jm, ptr %i.jn, align 8, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !12
  %i.jq = shl i32 %i.jp, %i.jm
  store i32 %i.jq, ptr %i.jo, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 284
  %i.js = load i8, ptr %i.jj, align 1, !tbaa !11
  %i.jt = zext i8 %i.js to i32
  %i.ju = sub nsw i32 32, %i.jt                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !12
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !12
  %i.jy = shl i32 %i.jx, %i.ju
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 285
  %i.ka = load i8, ptr %i.jr, align 1, !tbaa !11
  %i.kb = zext i8 %i.ka to i32
  %i.kc = sub nsw i32 32, %i.kb                   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i32 %i.kc, ptr %i.kd, align 16, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 16, !tbaa !12
  %i.kg = shl i32 %i.kf, %i.kc
  store i32 %i.kg, ptr %i.ke, align 16, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 286
  %i.ki = load i8, ptr %i.jz, align 1, !tbaa !11
  %i.kj = zext i8 %i.ki to i32
  %i.kk = sub nsw i32 32, %i.kj                   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !12
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !12
  %i.ko = shl i32 %i.kn, %i.kk
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %.ptr175.fr, i64 287
  %i.kq = load i8, ptr %i.kh, align 1, !tbaa !11
  %i.kr = zext i8 %i.kq to i32
  %i.ks = sub nsw i32 32, %i.kr                   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i32 %i.ks, ptr %i.kt, align 8, !tbaa !12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !12
  %i.kw = shl i32 %i.kv, %i.ks
  store i32 %i.kw, ptr %i.ku, align 8, !tbaa !12
  %i.kx = load i8, ptr %i.kp, align 1, !tbaa !11
  %i.ky = zext i8 %i.kx to i32
  %i.kz = sub nsw i32 32, %i.ky                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !12
  %i.ld = shl i32 %i.lc, %i.kz
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !12
  %i.le = getelementptr i8, ptr %.ptr175.fr, i64 288
  %i.lf = shl i32 %.0.copyload84, 1               ; 2 uses
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 %i.lg ; 2 uses
  %.not212 = icmp eq i32 %i.lf, 0
  br i1 %.not212, label %._crit_edge, label %.preheader193.lr.ph

.preheader193.lr.ph:                              ; preds = %.preheader197.preheader
  %i.li = load i32, ptr %4, align 4, !tbaa !26
  %i.lj = sub nsw i32 32, %i.li
  br label %.preheader193

.preheader193:                                    ; preds = %bb.t, %.preheader193.lr.ph
  %.0138205 = phi i64 [ %.mux, %bb.t ], [ 0, %.preheader193.lr.ph ] ; 5 uses
  %.1204 = phi ptr [ %i.lt, %bb.t ], [ %0, %.preheader193.lr.ph ] ; 2 uses
  %.1146.idx203 = phi i64 [ %.2.idx, %bb.t ], [ %.add, %.preheader193.lr.ph ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0138205 ; 4 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !12
  %i.lm = lshr i32 %i.ll, %i.lj
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !14 ; 2 uses
  %i.lq = and i16 %i.lp, 4095
  %i.lr = lshr i16 %i.lp, 12
  %i.ls = zext nneg i16 %i.lr to i32              ; 2 uses
  store i16 %i.lq, ptr %.1204, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.1204, i64 2 ; 3 uses
  %i.lu = load i32, ptr %i.lk, align 4, !tbaa !12
  %i.lv = shl i32 %i.lu, %i.ls                    ; 2 uses
  store i32 %i.lv, ptr %i.lk, align 4, !tbaa !12
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0138205 ; 3 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !12
  %i.ly = add i32 %i.lx, %i.ls                    ; 3 uses
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !12
  %i.lz = icmp ugt i32 %i.ly, 16
  br i1 %i.lz, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.preheader193
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0138205
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !12
  %i.mc = zext i32 %i.mb to i64
  %i.md = add nsw i64 %.1146.idx203, -1
  %i.me = add nuw nsw i64 %i.mc, 4
  %i.mf = icmp sgt i64 %i.md, %i.me
  br i1 %i.mf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.mg = add i32 %i.ly, -16                      ; 2 uses
  store i32 %i.mg, ptr %i.lw, align 4, !tbaa !12
  %.1146.add = add nsw i64 %.1146.idx203, -2      ; 2 uses
  %.ptr176 = getelementptr inbounds i8, ptr %.val179, i64 %.1146.add
  %.ptr176.val = load i16, ptr %.ptr176, align 1
  %i.mh = zext i16 %.ptr176.val to i32
  %i.mi = shl i32 %i.mh, %i.mg
  %i.mj = or i32 %i.mi, %i.lv
  store i32 %i.mj, ptr %i.lk, align 4, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.preheader193
  %.2.idx = phi i64 [ %.1146.add, %bb.s ], [ %.1146.idx203, %bb.r ], [ %.1146.idx203, %.preheader193 ] ; 2 uses
  %i.mk = add nuw nsw i64 %.0138205, 1
  %i.ml = icmp samesign ult i64 %.0138205, 31
  %i.mm = icmp ult ptr %i.lt, %i.lh               ; 2 uses
  %i.mn = and i1 %i.ml, %i.mm
  %.mux = select i1 %i.mn, i64 %i.mk, i64 0
  br i1 %i.mm, label %.preheader193, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.t, %.preheader197.preheader
  %.0145.idx.lcssa = phi i64 [ %.add, %.preheader197.preheader ], [ %.2.idx, %bb.t ]
  %.0140.lcssa = phi ptr [ %0, %.preheader197.preheader ], [ %i.lt, %bb.t ]
  %i.mo = icmp eq ptr %.0140.lcssa, %i.lh
  %i.mp = icmp eq i64 %.0145.idx.lcssa, 4
  %i.mq = icmp eq ptr %i.le, %i.f
  %i.mr = load <32 x i32>, ptr %i.e, align 32
  %.fr = freeze <32 x i32> %i.mr
  %i.ms = icmp ne <32 x i32> %.fr, splat (i32 32)
  %i.mt = bitcast <32 x i1> %i.ms to i32
  %i.mu = icmp eq i32 %i.mt, 0
  %.fr299 = freeze i1 %i.mo
  %op.rdx = and i1 %i.mu, %.fr299
  %i.mv = and i1 %op.rdx, %i.mq
  %op.rdx297 = select i1 %i.mv, i1 %i.mp, i1 false
  %spec.select = select i1 %op.rdx297, i64 %i.h, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.q
  %.8 = phi i64 [ 0, %bb.q ], [ %spec.select, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %.loopexit
  %.9 = phi i64 [ %.8, %.loopexit ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.u
  %.10 = phi i64 [ %.9, %bb.u ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.w

bb.w:                                             ; preds = %.thread189, %bb.v, %bb.m, %bb.n
  %.12 = phi i64 [ 0, %.thread189 ], [ %.10, %bb.v ], [ 0, %bb.m ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g, %bb.c, %bb.d, %bb.f, %bb.e, %bb.b, %bb.a, %bb.w
  %.13 = phi i64 [ %.12, %bb.w ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %i.h, %middle.block ], [ %i.h, %vec.epilog.middle.block ], [ %i.h, %.lr.ph ]
  ret i64 %.13
}

declare ptr @ZS_largeHuffmanCreateDTable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i64 @ZS_HUF_readDTableX1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ZS_HUF_isError(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15, !22, !23}
!18 = distinct !{!18, !15, !22, !23}
!19 = distinct !{!19, !15, !23, !22}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = !{!"", !8, i64 0, !7, i64 4}
!26 = !{!25, !8, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"p1 omnipotent char", !27, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8}
!30 = !{!29, !28, i64 0}
end_hunk_1
