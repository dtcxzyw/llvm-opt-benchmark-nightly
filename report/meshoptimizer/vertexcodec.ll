Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN7meshoptL5cpuidE = internal unnamed_addr global i32 0, align 4
@_ZN7meshoptL20gEncodeVertexVersionE = internal unnamed_addr global i32 1, align 4
@_ZN7meshoptL24kDecodeBytesGroupShuffleE = internal unnamed_addr global [256 x [8 x i8]] zeroinitializer, align 16
@_ZN7meshoptL7kBitsV0E = internal unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 4, i32 8], align 16
@_ZN7meshoptL7kBitsV1E = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], align 16
@_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn = internal unnamed_addr constant [9 x i32] [i32 4, i32 1, i32 2, i32 3, i32 4, i32 0, i32 1, i32 2, i32 3], align 16
@_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes = internal unnamed_addr constant [9 x i64] [i64 0, i64 1431655765, i64 1229782938247303441, i64 0, i64 0, i64 65535, i64 1431655765, i64 1229782938247303441, i64 0], align 16
@_ZN7meshoptL23kDecodeBytesGroupConfigE = internal unnamed_addr constant [9 x [4 x [16 x i8]]] [[4 x [16 x i8]] [[16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [4 x [16 x i8]] [[16 x i8] c"\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03", [16 x i8] c"\04\00@\00\04\00@\00\04\00@\00\04\00@\00", [16 x i8] c"\10\00\00\01\10\00\00\01\10\00\00\01\10\00\00\01"], [4 x [16 x i8]] [[16 x i8] c"\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [16 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07", [16 x i8] c"\10\00\10\00\10\00\10\00\10\00\10\00\10\00\10\00", [16 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01"], [4 x [16 x i8]] [[16 x i8] zeroinitializer, [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [4 x [16 x i8]] [[16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [4 x [16 x i8]] [[16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [16 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01", [16 x i8] c"\00\01@\00\10\00\04\00\00\01@\00\10\00\04\00", [16 x i8] c"\80\00 \00\08\00\02\00\80\00 \00\08\00\02\00"], [4 x [16 x i8]] [[16 x i8] c"\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03", [16 x i8] c"\04\00@\00\04\00@\00\04\00@\00\04\00@\00", [16 x i8] c"\10\00\00\01\10\00\00\01\10\00\00\01\10\00\00\01"], [4 x [16 x i8]] [[16 x i8] c"\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [16 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07", [16 x i8] c"\10\00\10\00\10\00\10\00\10\00\10\00\10\00\10\00", [16 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01"], [4 x [16 x i8]] [[16 x i8] zeroinitializer, [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer]], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vertexcodec.cpp, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @meshopt_encodeVertexBufferLevel(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 18 uses
  %i.b = alloca [256 x i8], align 16              ; 15 uses
  %i.c = alloca [256 x i8], align 16              ; 8 uses
  %i.d = alloca [3 x i64], align 16               ; 7 uses
  %i.e = alloca [8 x i64], align 16               ; 15 uses
  %i.f = alloca [256 x i8], align 16              ; 6 uses
  %i.g = alloca [256 x i8], align 16              ; 9 uses
  %i.h = alloca [64 x i8], align 16               ; 6 uses
  %i.i = icmp slt i32 %6, 0
  %i.j = load i32, ptr @_ZN7meshoptL20gEncodeVertexVersionE, align 4
  %i.k = select i1 %i.i, i32 %i.j, i32 %6         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i32 %i.k to i8
  %i.q = or i8 %i.p, -96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %0, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.f, i8 0, i64 256, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 1 %2, i64 %4, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.s = icmp ugt i64 %4, 255
  %i.t = sub i64 256, %4
  %i.u = select i1 %i.s, i64 0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.g, i64 %4
  call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.u, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 16 %i.f, i64 %4, i1 false)
  %i.w = udiv i64 8192, %4
  %i.x = and i64 %i.w, 16368
  %i.y = icmp ugt i64 %4, 32
  %i.z = select i1 %i.y, i64 %i.x, i64 256        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.aa = icmp ne i32 %i.k, 0                     ; 2 uses
  %i.ab = icmp sgt i32 %5, 1
  %i.ac = icmp ugt i64 %3, 1
  %i.ad = and i1 %i.ac, %i.ab
  %or.cond3 = and i1 %i.ad, %i.aa
  br i1 %or.cond3, label %.preheader, label %.loopexit145

.preheader:                                       ; preds = %bb.d
  %i.ae = icmp samesign ult i32 %5, 3             ; 2 uses
  %i.af = mul nuw nsw i64 %i.z, 3
  %i.ag = add i64 %3, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ao = mul nsw i64 %i.z, -3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit
  %.091171 = phi i64 [ 0, %.preheader ], [ %i.vq, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit ] ; 4 uses
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.091171 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 1
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge.preheader.i, %bb.f
  %indvars.iv.i = phi i64 [ %i.ag, %bb.f ], [ %indvars.iv.next.i, %.critedge.preheader.i ] ; 4 uses
  %.04461.i = phi ptr [ %i.ar, %bb.f ], [ %scevgep, %.critedge.preheader.i ] ; 3 uses
  %.04660.i = phi i32 [ %i.as, %bb.f ], [ %.lcssa357, %.critedge.preheader.i ] ; 2 uses
  %.04859.i = phi i64 [ 0, %bb.f ], [ %i.ec, %.critedge.preheader.i ]
  %i.at = phi <8 x i64> [ zeroinitializer, %bb.f ], [ %i.eb, %.critedge.preheader.i ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %i.au = add nuw nsw i64 %umin, 1                ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %xtraiter = and i64 %i.au, 3                    ; 3 uses
  %i.av = icmp ult i64 %indvars.iv.i, 3
  br i1 %i.av, label %.epil.preheader, label %.preheader53.i.new

.preheader53.i.new:                               ; preds = %.preheader53.i
  %unroll_iter = and i64 %i.au, 28
  br label %bb.h

.critedge.preheader.i.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.unr-lcssa, %.preheader53.i
  %.157.i.epil.init = phi ptr [ %.04461.i, %.preheader53.i ], [ %i.et, %.critedge.preheader.i.unr-lcssa ]
  %.14756.i.epil.init = phi i32 [ %.04660.i, %.preheader53.i ], [ %i.eq, %.critedge.preheader.i.unr-lcssa ]
  %.05054.i.epil.init = phi i32 [ 0, %.preheader53.i ], [ %i.es, %.critedge.preheader.i.unr-lcssa ]
  %lcmp.mod364 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod364)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.157.i.epil = phi ptr [ %.157.i.epil.init, %.epil.preheader ], [ %i.az, %bb.g ] ; 2 uses
  %.14756.i.epil = phi i32 [ %.14756.i.epil.init, %.epil.preheader ], [ %i.aw, %bb.g ]
  %.05054.i.epil = phi i32 [ %.05054.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aw = load i32, ptr %.157.i.epil, align 1     ; 3 uses
  %i.ax = xor i32 %i.aw, %.14756.i.epil
  %i.ay = or i32 %i.ax, %.05054.i.epil            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.157.i.epil, i64 %4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.g, !llvm.loop !14

.critedge.preheader.i:                            ; preds = %bb.g, %.critedge.preheader.i.unr-lcssa
  %.lcssa357 = phi i32 [ %i.eq, %.critedge.preheader.i.unr-lcssa ], [ %i.aw, %bb.g ]
  %.lcssa356 = phi i32 [ %i.es, %.critedge.preheader.i.unr-lcssa ], [ %i.ay, %bb.g ] ; 17 uses
  %i.ba = add nuw nsw i64 %umin.i, 1
  %i.bb = mul i64 %4, %i.ba
  %scevgep = getelementptr i8, ptr %.04461.i, i64 %i.bb
  %i.bc = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 1) ; 3 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 2) ; 3 uses
  %i.be = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 3) ; 3 uses
  %i.bf = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 4) ; 3 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 5) ; 3 uses
  %i.bh = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 6) ; 3 uses
  %i.bi = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 7) ; 3 uses
  %i.bj = trunc i32 %.lcssa356 to i8
  %i.bk = icmp ult i32 %.lcssa356, 268435456
  %i.bl = trunc i32 %i.bc to i8
  %i.bm = icmp ult i32 %i.bc, 268435456
  %i.bn = trunc i32 %i.bd to i8
  %i.bo = icmp ult i32 %i.bd, 268435456
  %i.bp = trunc i32 %i.be to i8
  %i.bq = icmp ult i32 %i.be, 268435456
  %i.br = trunc i32 %i.bf to i8
  %i.bs = icmp ult i32 %i.bf, 268435456
  %i.bt = trunc i32 %i.bg to i8
  %i.bu = icmp ult i32 %i.bg, 268435456
  %i.bv = trunc i32 %i.bh to i8
  %i.bw = icmp ult i32 %i.bh, 268435456
  %i.bx = trunc i32 %i.bi to i8
  %i.by = insertelement <8 x i8> poison, i8 %i.bx, i64 0
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.bv, i64 1
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bt, i64 2
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.br, i64 3
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bp, i64 4
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bn, i64 5
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bl, i64 6
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bj, i64 7 ; 3 uses
  %i.cg = icmp ult <8 x i8> %i.cf, splat (i8 16)
  %i.ch = icmp samesign ult <8 x i8> %i.cf, splat (i8 4)
  %i.ci = icmp eq <8 x i8> %i.cf, zeroinitializer
  %i.cj = select <8 x i1> %i.ci, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.ck = select <8 x i1> %i.ch, <8 x i64> %i.cj, <8 x i64> splat (i64 4)
  %i.cl = select <8 x i1> %i.cg, <8 x i64> %i.ck, <8 x i64> splat (i64 8)
  %i.cm = insertelement <8 x i32> poison, i32 %i.bi, i64 0
  %i.cn = insertelement <8 x i32> %i.cm, i32 %i.bh, i64 1
  %i.co = insertelement <8 x i32> %i.cn, i32 %i.bg, i64 2
  %i.cp = insertelement <8 x i32> %i.co, i32 %i.bf, i64 3
  %i.cq = insertelement <8 x i32> %i.cp, i32 %i.be, i64 4
  %i.cr = insertelement <8 x i32> %i.cq, i32 %i.bd, i64 5
  %i.cs = insertelement <8 x i32> %i.cr, i32 %i.bc, i64 6
  %i.ct = insertelement <8 x i32> %i.cs, i32 %.lcssa356, i64 7 ; 4 uses
  %i.cu = lshr <8 x i32> %i.ct, splat (i32 8)
  %i.cv = trunc <8 x i32> %i.cu to <8 x i8>       ; 3 uses
  %i.cw = icmp ult <8 x i8> %i.cv, splat (i8 16)
  %i.cx = icmp samesign ult <8 x i8> %i.cv, splat (i8 4)
  %i.cy = icmp eq <8 x i8> %i.cv, zeroinitializer
  %i.cz = select <8 x i1> %i.cy, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.da = select <8 x i1> %i.cx, <8 x i64> %i.cz, <8 x i64> splat (i64 4)
  %i.db = select <8 x i1> %i.cw, <8 x i64> %i.da, <8 x i64> splat (i64 8)
  %i.dc = lshr <8 x i32> %i.ct, splat (i32 16)
  %i.dd = trunc <8 x i32> %i.dc to <8 x i8>       ; 3 uses
  %i.de = icmp ult <8 x i8> %i.dd, splat (i8 16)
  %i.df = icmp samesign ult <8 x i8> %i.dd, splat (i8 4)
  %i.dg = icmp eq <8 x i8> %i.dd, zeroinitializer
  %i.dh = select <8 x i1> %i.dg, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.di = select <8 x i1> %i.df, <8 x i64> %i.dh, <8 x i64> splat (i64 4)
  %i.dj = select <8 x i1> %i.de, <8 x i64> %i.di, <8 x i64> splat (i64 8)
  %i.dk = icmp ult i32 %i.bi, 268435456
  %i.dl = icmp ult <8 x i32> %i.ct, splat (i32 67108864)
  %i.dm = icmp ult <8 x i32> %i.ct, splat (i32 16777216)
  %i.dn = select <8 x i1> %i.dm, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.do = select <8 x i1> %i.dl, <8 x i64> %i.dn, <8 x i64> splat (i64 4)
  %i.dp = insertelement <8 x i1> poison, i1 %i.dk, i64 0
  %i.dq = insertelement <8 x i1> %i.dp, i1 %i.bw, i64 1
  %i.dr = insertelement <8 x i1> %i.dq, i1 %i.bu, i64 2
  %i.ds = insertelement <8 x i1> %i.dr, i1 %i.bs, i64 3
  %i.dt = insertelement <8 x i1> %i.ds, i1 %i.bq, i64 4
  %i.du = insertelement <8 x i1> %i.dt, i1 %i.bo, i64 5
  %i.dv = insertelement <8 x i1> %i.du, i1 %i.bm, i64 6
  %i.dw = insertelement <8 x i1> %i.dv, i1 %i.bk, i64 7
  %i.dx = select <8 x i1> %i.dw, <8 x i64> %i.do, <8 x i64> splat (i64 8)
  %i.dy = add <8 x i64> %i.dx, %i.at
  %i.dz = add <8 x i64> %i.dy, %i.cl
  %i.ea = add <8 x i64> %i.dz, %i.dj
  %i.eb = add <8 x i64> %i.ea, %i.db              ; 9 uses
  %i.ec = add nuw i64 %.04859.i, 16               ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %3
  %indvars.iv.next.i = add i64 %indvars.iv.i, -16
  br i1 %i.ed, label %.preheader53.i, label %_ZN7meshoptL14estimateRotateEPKhmmmm.exit, !llvm.loop !15

bb.h:                                             ; preds = %bb.h, %.preheader53.i.new
  %.157.i = phi ptr [ %.04461.i, %.preheader53.i.new ], [ %i.et, %bb.h ] ; 2 uses
  %.14756.i = phi i32 [ %.04660.i, %.preheader53.i.new ], [ %i.eq, %bb.h ]
  %.05054.i = phi i32 [ 0, %.preheader53.i.new ], [ %i.es, %bb.h ]
  %niter = phi i64 [ 0, %.preheader53.i.new ], [ %niter.next.3, %bb.h ]
  %i.ee = load i32, ptr %.157.i, align 1          ; 2 uses
  %i.ef = xor i32 %i.ee, %.14756.i
  %i.eg = or i32 %i.ef, %.05054.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.157.i, i64 %4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 1            ; 2 uses
  %i.ej = xor i32 %i.ei, %i.ee
  %i.ek = or i32 %i.ej, %i.eg
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 1            ; 2 uses
  %i.en = xor i32 %i.em, %i.ei
  %i.eo = or i32 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 1            ; 4 uses
  %i.er = xor i32 %i.eq, %i.em
  %i.es = or i32 %i.er, %i.eo                     ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !16

_ZN7meshoptL14estimateRotateEPKhmmmm.exit:        ; preds = %.critedge.preheader.i
  %i.eu = extractelement <8 x i64> %i.eb, i64 7   ; 3 uses
  store i64 %i.eu, ptr %i.e, align 16, !tbaa !36
  %i.ev = extractelement <8 x i64> %i.eb, i64 6   ; 3 uses
  store i64 %i.ev, ptr %i.ah, align 8, !tbaa !36
  %i.ew = extractelement <8 x i64> %i.eb, i64 5   ; 2 uses
  store i64 %i.ew, ptr %i.ai, align 16, !tbaa !36
  %i.ex = extractelement <8 x i64> %i.eb, i64 4   ; 2 uses
  store i64 %i.ex, ptr %i.aj, align 8, !tbaa !36
  %i.ey = extractelement <8 x i64> %i.eb, i64 3   ; 2 uses
  store i64 %i.ey, ptr %i.ak, align 16, !tbaa !36
end_hunk_0
begin_hunk_1_@meshopt_encodeVertexBufferLevel:bb.a
  %i.pp = getelementptr inbounds nuw i8, ptr %i.lc, i64 29
  %i.pq = load i8, ptr %i.po, align 1, !tbaa !9
  %i.pr = load i8, ptr %i.pp, align 1, !tbaa !9
  %i.ps = insertelement <2 x i8> poison, i8 %i.pq, i64 0
  %i.pt = insertelement <2 x i8> %i.ps, i8 %i.pr, i64 1 ; 3 uses
  %i.pu = icmp ne <2 x i8> %i.pt, zeroinitializer
  %i.pv = zext <2 x i1> %i.pu to <2 x i64>
  %i.pw = add nuw nsw <2 x i64> %i.pn, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.lb, i64 14
  %i.py = getelementptr inbounds nuw i8, ptr %i.lc, i64 30
  %i.pz = load i8, ptr %i.px, align 2, !tbaa !9
  %i.qa = load i8, ptr %i.py, align 2, !tbaa !9
  %i.qb = insertelement <2 x i8> poison, i8 %i.pz, i64 0
  %i.qc = insertelement <2 x i8> %i.qb, i8 %i.qa, i64 1 ; 3 uses
  %i.qd = icmp ne <2 x i8> %i.qc, zeroinitializer
  %i.qe = zext <2 x i1> %i.qd to <2 x i64>
  %i.qf = add nuw nsw <2 x i64> %i.pw, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lb, i64 15
  %i.qh = getelementptr inbounds nuw i8, ptr %i.lc, i64 31
  %i.qi = load i8, ptr %i.qg, align 1, !tbaa !9
  %i.qj = load i8, ptr %i.qh, align 1, !tbaa !9
  %i.qk = insertelement <2 x i8> poison, i8 %i.qi, i64 0
  %i.ql = insertelement <2 x i8> %i.qk, i8 %i.qj, i64 1 ; 3 uses
  %i.qm = icmp ne <2 x i8> %i.ql, zeroinitializer
  %i.qn = zext <2 x i1> %i.qm to <2 x i64>
  %i.qo = add nuw nsw <2 x i64> %i.qf, %i.qn
  %i.qp = icmp ugt <2 x i8> %i.lh, splat (i8 2)
  %i.qq = select <2 x i1> %i.qp, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.qr = icmp ugt <2 x i8> %i.lp, splat (i8 2)
  %i.qs = zext <2 x i1> %i.qr to <2 x i64>
  %i.qt = add nuw nsw <2 x i64> %i.qq, %i.qs
  %i.qu = icmp ugt <2 x i8> %i.ly, splat (i8 2)
  %i.qv = zext <2 x i1> %i.qu to <2 x i64>
  %i.qw = add nuw nsw <2 x i64> %i.qt, %i.qv
  %i.qx = icmp ugt <2 x i8> %i.mh, splat (i8 2)
  %i.qy = zext <2 x i1> %i.qx to <2 x i64>
  %i.qz = add nuw nsw <2 x i64> %i.qw, %i.qy
  %i.ra = icmp ugt <2 x i8> %i.mq, splat (i8 2)
  %i.rb = zext <2 x i1> %i.ra to <2 x i64>
  %i.rc = add nuw nsw <2 x i64> %i.qz, %i.rb
  %i.rd = icmp ugt <2 x i8> %i.mz, splat (i8 2)
  %i.re = zext <2 x i1> %i.rd to <2 x i64>
  %i.rf = add nuw nsw <2 x i64> %i.rc, %i.re
  %i.rg = icmp ugt <2 x i8> %i.ni, splat (i8 2)
  %i.rh = zext <2 x i1> %i.rg to <2 x i64>
  %i.ri = add nuw nsw <2 x i64> %i.rf, %i.rh
  %i.rj = icmp ugt <2 x i8> %i.nr, splat (i8 2)
  %i.rk = zext <2 x i1> %i.rj to <2 x i64>
  %i.rl = add nuw nsw <2 x i64> %i.ri, %i.rk
  %i.rm = icmp ugt <2 x i8> %i.oa, splat (i8 2)
  %i.rn = zext <2 x i1> %i.rm to <2 x i64>
  %i.ro = add nuw nsw <2 x i64> %i.rl, %i.rn
  %i.rp = icmp ugt <2 x i8> %i.oj, splat (i8 2)
  %i.rq = zext <2 x i1> %i.rp to <2 x i64>
  %i.rr = add nuw nsw <2 x i64> %i.ro, %i.rq
  %i.rs = icmp ugt <2 x i8> %i.os, splat (i8 2)
  %i.rt = zext <2 x i1> %i.rs to <2 x i64>
  %i.ru = add nuw nsw <2 x i64> %i.rr, %i.rt
  %i.rv = icmp ugt <2 x i8> %i.pb, splat (i8 2)
  %i.rw = zext <2 x i1> %i.rv to <2 x i64>
  %i.rx = add nuw nsw <2 x i64> %i.ru, %i.rw
  %i.ry = icmp ugt <2 x i8> %i.pk, splat (i8 2)
  %i.rz = zext <2 x i1> %i.ry to <2 x i64>
  %i.sa = add nuw nsw <2 x i64> %i.rx, %i.rz
  %i.sb = icmp ugt <2 x i8> %i.pt, splat (i8 2)
  %i.sc = zext <2 x i1> %i.sb to <2 x i64>
  %i.sd = add nuw nsw <2 x i64> %i.sa, %i.sc
  %i.se = icmp ugt <2 x i8> %i.qc, splat (i8 2)
  %i.sf = zext <2 x i1> %i.se to <2 x i64>
  %i.sg = add nuw nsw <2 x i64> %i.sd, %i.sf
  %i.sh = icmp ugt <2 x i8> %i.ql, splat (i8 2)
  %i.si = zext <2 x i1> %i.sh to <2 x i64>
  %i.sj = add nuw nsw <2 x i64> %i.sg, %i.si
  %i.sk = icmp ugt <2 x i8> %i.lh, splat (i8 14)
  %i.sl = select <2 x i1> %i.sk, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.sm = icmp ugt <2 x i8> %i.lp, splat (i8 14)
  %i.sn = zext <2 x i1> %i.sm to <2 x i64>
  %i.so = add nuw nsw <2 x i64> %i.sl, %i.sn
  %i.sp = icmp ugt <2 x i8> %i.ly, splat (i8 14)
  %i.sq = zext <2 x i1> %i.sp to <2 x i64>
  %i.sr = add nuw nsw <2 x i64> %i.so, %i.sq
  %i.ss = icmp ugt <2 x i8> %i.mh, splat (i8 14)
  %i.st = zext <2 x i1> %i.ss to <2 x i64>
  %i.su = add nuw nsw <2 x i64> %i.sr, %i.st
  %i.sv = icmp ugt <2 x i8> %i.mq, splat (i8 14)
  %i.sw = zext <2 x i1> %i.sv to <2 x i64>
  %i.sx = add nuw nsw <2 x i64> %i.su, %i.sw
  %i.sy = icmp ugt <2 x i8> %i.mz, splat (i8 14)
  %i.sz = zext <2 x i1> %i.sy to <2 x i64>
  %i.ta = add nuw nsw <2 x i64> %i.sx, %i.sz
  %i.tb = icmp ugt <2 x i8> %i.ni, splat (i8 14)
  %i.tc = zext <2 x i1> %i.tb to <2 x i64>
  %i.td = add nuw nsw <2 x i64> %i.ta, %i.tc
  %i.te = icmp ugt <2 x i8> %i.nr, splat (i8 14)
  %i.tf = zext <2 x i1> %i.te to <2 x i64>
  %i.tg = add nuw nsw <2 x i64> %i.td, %i.tf
  %i.th = icmp ugt <2 x i8> %i.oa, splat (i8 14)
  %i.ti = zext <2 x i1> %i.th to <2 x i64>
  %i.tj = add nuw nsw <2 x i64> %i.tg, %i.ti
  %i.tk = icmp ugt <2 x i8> %i.oj, splat (i8 14)
  %i.tl = zext <2 x i1> %i.tk to <2 x i64>
  %i.tm = add nuw nsw <2 x i64> %i.tj, %i.tl
  %i.tn = icmp ugt <2 x i8> %i.os, splat (i8 14)
  %i.to = zext <2 x i1> %i.tn to <2 x i64>
  %i.tp = add nuw nsw <2 x i64> %i.tm, %i.to
  %i.tq = icmp ugt <2 x i8> %i.pb, splat (i8 14)
  %i.tr = zext <2 x i1> %i.tq to <2 x i64>
  %i.ts = add nuw nsw <2 x i64> %i.tp, %i.tr
  %i.tt = icmp ugt <2 x i8> %i.pk, splat (i8 14)
  %i.tu = zext <2 x i1> %i.tt to <2 x i64>
  %i.tv = add nuw nsw <2 x i64> %i.ts, %i.tu
  %i.tw = icmp ugt <2 x i8> %i.pt, splat (i8 14)
  %i.tx = zext <2 x i1> %i.tw to <2 x i64>
  %i.ty = add nuw nsw <2 x i64> %i.tv, %i.tx
  %i.tz = icmp ugt <2 x i8> %i.qc, splat (i8 14)
  %i.ua = zext <2 x i1> %i.tz to <2 x i64>
  %i.ub = add nuw nsw <2 x i64> %i.ty, %i.ua
  %i.uc = icmp ugt <2 x i8> %i.ql, splat (i8 14)
  %i.ud = zext <2 x i1> %i.uc to <2 x i64>
  %i.ue = add nuw nsw <2 x i64> %i.ub, %i.ud
  %i.uf = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.qo, <2 x i64> %i.sj)
  %i.ug = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.uf, <2 x i64> %i.ue)
  %i.uh = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ug, <2 x i64> splat (i64 16))
  %i.ui = add <2 x i64> %i.uh, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.uj = icmp eq i64 %index.next, %n.vec
  br i1 %i.uj, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %i.uk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ui) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.promoted.i104, %.lr.ph.i ], [ %i.uk, %middle.block ]
  %.07078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.hh, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa295 = phi i64 [ %i.uk, %middle.block ], [ %i.va, %scalar.ph ]
  store i64 %.lcssa295, ptr %i.hl, align 8, !tbaa !36
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i: ; preds = %._crit_edge.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i, %bb.r, %bb.q, %bb.p
  %i.ul = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.ul, 4
  br i1 %exitcond.not.i105, label %bb.n, label %bb.o, !llvm.loop !23

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.um = phi i64 [ %i.va, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.07078.i = phi i64 [ %i.vb, %scalar.ph ], [ %.07078.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07078.i
  %i.uo = load <16 x i8>, ptr %i.un, align 16, !tbaa !9 ; 3 uses
  %.not334 = icmp eq <16 x i8> %i.uo, zeroinitializer
  %i.up = select <16 x i1> %.not334, <16 x i64> <i64 2, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> <i64 3, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>
  %i.uq = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.up)
  %i.ur = icmp ugt <16 x i8> %i.uo, splat (i8 2)
  %i.us = select <16 x i1> %i.ur, <16 x i64> <i64 5, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.ut = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.us)
  %i.uu = icmp ugt <16 x i8> %i.uo, splat (i8 14)
  %i.uv = select <16 x i1> %i.uu, <16 x i64> <i64 9, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 8, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.uw = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.uv)
  %i.ux = tail call i64 @llvm.umin.i64(i64 %i.uq, i64 %i.ut)
  %i.uy = tail call i64 @llvm.umin.i64(i64 %i.ux, i64 %i.uw)
  %i.uz = tail call i64 @llvm.umin.i64(i64 %i.uy, i64 16)
  %i.va = add i64 %i.uz, %i.um                    ; 2 uses
  %i.vb = add nuw nsw i64 %.07078.i, 16           ; 2 uses
  %i.vc = icmp ult i64 %i.vb, %i.gp
  br i1 %i.vc, label %scalar.ph, label %._crit_edge.i, !llvm.loop !24

.preheader.i:                                     ; preds = %bb.m
  %.pre.i = load i64, ptr %i.d, align 16, !tbaa !36 ; 2 uses
  %i.vd = load i64, ptr %i.ap, align 8, !tbaa !36 ; 2 uses
  %i.ve = icmp ult i64 %i.vd, %.pre.i
  %i.vf = zext i1 %i.ve to i32                    ; 2 uses
  br i1 %i.ae, label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.vg = tail call i64 @llvm.umin.i64(i64 %i.vd, i64 %.pre.i)
  %i.vh = load i64, ptr %i.aq, align 16, !tbaa !36
  %i.vi = icmp ult i64 %i.vh, %i.vg
  %i.vj = select i1 %i.vi, i32 2, i32 %i.vf
  br label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit

_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit:    ; preds = %.preheader.i.1, %.preheader.i
  %.lcssa361 = phi i32 [ %i.vf, %.preheader.i ], [ %i.vj, %.preheader.i.1 ] ; 2 uses
  %i.vk = icmp eq i32 %.lcssa361, 2
  %i.vl = or disjoint i32 %i.gh, 2
  %i.vm = select i1 %i.vk, i32 %i.vl, i32 %.lcssa361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.vn = trunc i32 %i.vm to i8
  %i.vo = lshr exact i64 %.091171, 2
  %i.vp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.vo
  store i8 %i.vn, ptr %i.vp, align 1, !tbaa !9
  %i.vq = add i64 %.091171, 4                     ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %4
  br i1 %i.vr, label %bb.e, label %.loopexit145, !llvm.loop !25

.loopexit145:                                     ; preds = %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, %bb.d
  %.not202 = icmp eq i32 %i.k, 0                  ; 5 uses
  %i.vs = lshr i64 %4, 2                          ; 3 uses
  %i.vt = select i1 %.not202, i64 0, i64 %i.vs    ; 4 uses
  %i.vu = icmp eq i32 %5, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %.loopexit145
  %.093 = phi ptr [ %i.r, %.loopexit145 ], [ %.26095.i, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 11 uses
  %.0 = phi i64 [ 0, %.loopexit145 ], [ %i.awv, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 6 uses
  %i.vv = icmp ult i64 %.0, %3
  br i1 %i.vv, label %bb.t, label %bb.au

bb.t:                                             ; preds = %bb.s
  %i.vw = add i64 %.0, %i.z                       ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %3
  %i.vy = sub nuw i64 %3, %.0
  %i.vz = select i1 %i.vx, i64 %i.z, i64 %i.vy    ; 19 uses
  %i.wa = mul i64 %.0, %4
  %i.wb = getelementptr inbounds nuw i8, ptr %2, i64 %i.wa ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.wc = add i64 %i.vz, 15                       ; 2 uses
  %i.wd = and i64 %i.wc, -16                      ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.we = ptrtoint ptr %.093 to i64
  %i.wf = sub i64 %i.m, %i.we
  %i.wg = icmp ult i64 %i.wf, %i.vt
  br i1 %i.wg, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.t
  %i.wh = getelementptr inbounds nuw i8, ptr %.093, i64 %i.vt
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.vt, i1 false)
  %.not.i25.i.i108 = icmp eq i64 %i.vz, 0         ; 3 uses
  %i.wi = icmp eq i64 %i.wd, 0                    ; 3 uses
  %i.wj = lshr i64 %i.wc, 4
  %i.wk = add nuw nsw i64 %i.wj, 3
  %i.wl = lshr i64 %i.wk, 2                       ; 6 uses
  %umin384 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.vw)
  %i.wm = xor i64 %.0, -1
  %i.wn = add i64 %umin384, %i.wm                 ; 3 uses
  %xtraiter385 = and i64 %i.vz, 1
  %i.wo = icmp eq i64 %i.wn, 0
  %unroll_iter389 = and i64 %i.vz, -2
  %lcmp.mod387.not = icmp eq i64 %xtraiter385, 0
  %lcmp.mod388 = trunc i64 %i.vz to i1
  %xtraiter391 = and i64 %i.vz, 1
  %i.wp = icmp eq i64 %i.wn, 0
  %unroll_iter395 = and i64 %i.vz, -2
  %lcmp.mod393.not = icmp eq i64 %xtraiter391, 0
  %lcmp.mod394 = trunc i64 %i.vz to i1
  %xtraiter397 = and i64 %i.vz, 1
  %i.wq = icmp eq i64 %i.wn, 0
  %unroll_iter401 = and i64 %i.vz, -2
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  %lcmp.mod400 = trunc i64 %i.vz to i1
  %i.wr = add i64 %i.vz, -1
  %i.ws = lshr i64 %i.wr, 4                       ; 2 uses
  %i.wt = add nuw nsw i64 %i.ws, 1                ; 2 uses
  %min.iters.check298 = icmp eq i64 %i.ws, 0
  %n.vec300 = and i64 %i.wt, 2305843009213693950  ; 3 uses
  %i.wu = shl i64 %n.vec300, 4
  %i.wv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.wl, i64 0 ; 2 uses
  %cmp.n308 = icmp eq i64 %i.wt, %n.vec300
  br label %bb.u

bb.u:                                             ; preds = %.thread92.i, %.lr.ph.i107
  %.054120.i = phi i64 [ 0, %.lr.ph.i107 ], [ %i.awr, %.thread92.i ] ; 17 uses
  %.058119.i = phi ptr [ %i.wh, %.lr.ph.i107 ], [ %.26095.i, %.thread92.i ] ; 8 uses
  br i1 %.not202, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ww = lshr i64 %.054120.i, 2
  %i.wx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !9
  %i.wz = zext i8 %i.wy to i32                    ; 2 uses
  %i.xa = and i32 %i.wz, 3
  switch i32 %i.xa, label %default.unreachable [
    i32 0, label %.thread.i
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109
  ]

.thread.i:                                        ; preds = %bb.v, %bb.u
  br i1 %.not.i25.i.i108, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.preheader.i.i.i127

.lr.ph.preheader.i.i.i127:                        ; preds = %.thread.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.054120.i ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.g, i64 %.054120.i
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !9   ; 2 uses
  br i1 %i.wq, label %.lr.ph.i.i.i128.epil.preheader, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %.lr.ph.preheader.i.i.i127, %.lr.ph.i.i.i128
  %.03238.i.i.i129 = phi i64 [ %i.xr, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ] ; 3 uses
  %.03337.i.i.i130 = phi ptr [ %i.xq, %.lr.ph.i.i.i128 ], [ %i.xb, %.lr.ph.preheader.i.i.i127 ] ; 2 uses
  %.136.i.i.i131 = phi i8 [ %i.xk, %.lr.ph.i.i.i128 ], [ %i.xd, %.lr.ph.preheader.i.i.i127 ]
  %niter402 = phi i64 [ %niter402.next.1, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ]
  %i.xe = load i8, ptr %.03337.i.i.i130, align 1, !tbaa !9 ; 2 uses
  %i.xf = sub i8 %i.xe, %.136.i.i.i131            ; 2 uses
  %.neg.i.i.i.i132 = ashr i8 %i.xf, 7
  %i.xg = shl i8 %i.xf, 1
  %i.xh = xor i8 %i.xg, %.neg.i.i.i.i132
  %i.xi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  store i8 %i.xh, ptr %i.xi, align 2, !tbaa !9
  %i.xj = getelementptr inbounds nuw i8, ptr %.03337.i.i.i130, i64 %4 ; 2 uses
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !9   ; 3 uses
  %i.xl = sub i8 %i.xk, %i.xe                     ; 2 uses
  %.neg.i.i.i.i132.1 = ashr i8 %i.xl, 7
  %i.xm = shl i8 %i.xl, 1
  %i.xn = xor i8 %i.xm, %.neg.i.i.i.i132.1
  %i.xo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  store i8 %i.xn, ptr %i.xp, align 1, !tbaa !9
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 %4 ; 2 uses
  %i.xr = add nuw nsw i64 %.03238.i.i.i129, 2     ; 2 uses
  %niter402.next.1 = add i64 %niter402, 2         ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, label %.lr.ph.i.i.i128, !llvm.loop !19

bb.w:                                             ; preds = %bb.v
  %.tr.i.i.i119 = trunc i64 %.054120.i to i16
  %i.xs = shl i16 %.tr.i.i.i119, 3
  %i.xt = and i16 %i.xs, 8                        ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i20.i.i120

.lr.ph.preheader.i20.i.i120:                      ; preds = %bb.w
  %i.xu = and i64 %.054120.i, -2                  ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.xu ; 2 uses
  %i.xw = or i64 %.054120.i, 1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !9
  %i.xz = zext i8 %i.xy to i16
  %i.ya = shl nuw i16 %i.xz, 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.xu
  %i.yc = load i8, ptr %i.yb, align 2, !tbaa !9
  %i.yd = zext i8 %i.yc to i16
  %i.ye = or disjoint i16 %i.ya, %i.yd            ; 2 uses
  br i1 %i.wp, label %.lr.ph.i21.i.i121.epil.preheader, label %.lr.ph.i21.i.i121

.lr.ph.i21.i.i121:                                ; preds = %.lr.ph.preheader.i20.i.i120, %.lr.ph.i21.i.i121
  %.03240.i.i.i122 = phi i64 [ %i.yw, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ] ; 3 uses
  %.03339.i.i.i123 = phi ptr [ %i.yv, %.lr.ph.i21.i.i121 ], [ %i.xv, %.lr.ph.preheader.i20.i.i120 ] ; 2 uses
  %.138.i.i.i124 = phi i16 [ %i.yn, %.lr.ph.i21.i.i121 ], [ %i.ye, %.lr.ph.preheader.i20.i.i120 ]
  %niter396 = phi i64 [ %niter396.next.1, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ]
  %i.yf = load i16, ptr %.03339.i.i.i123, align 1 ; 2 uses
  %i.yg = sub i16 %i.yf, %.138.i.i.i124           ; 2 uses
  %.neg.i.i22.i.i125 = ashr i16 %i.yg, 15
  %i.yh = shl i16 %i.yg, 1
  %i.yi = xor i16 %i.yh, %.neg.i.i22.i.i125
  %i.yj = lshr i16 %i.yi, %i.xt
  %i.yk = trunc i16 %i.yj to i8
  %i.yl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  store i8 %i.yk, ptr %i.yl, align 2, !tbaa !9
  %i.ym = getelementptr inbounds nuw i8, ptr %.03339.i.i.i123, i64 %4 ; 2 uses
  %i.yn = load i16, ptr %i.ym, align 1            ; 3 uses
  %i.yo = sub i16 %i.yn, %i.yf                    ; 2 uses
  %.neg.i.i22.i.i125.1 = ashr i16 %i.yo, 15
  %i.yp = shl i16 %i.yo, 1
  %i.yq = xor i16 %i.yp, %.neg.i.i22.i.i125.1
  %i.yr = lshr i16 %i.yq, %i.xt
  %i.ys = trunc i16 %i.yr to i8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  store i8 %i.ys, ptr %i.yu, align 1, !tbaa !9
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ym, i64 %4 ; 2 uses
  %i.yw = add nuw nsw i64 %.03240.i.i.i122, 2     ; 2 uses
  %niter396.next.1 = add i64 %niter396, 2         ; 2 uses
  %niter396.ncmp.1 = icmp eq i64 %niter396.next.1, %unroll_iter395
  br i1 %niter396.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, label %.lr.ph.i21.i.i121, !llvm.loop !20

bb.x:                                             ; preds = %bb.v
  %i.yx = lshr i32 %i.wz, 4                       ; 3 uses
  %.tr.i24.i.i112 = trunc i64 %.054120.i to i32
  %i.yy = shl i32 %.tr.i24.i.i112, 3
  %i.yz = and i32 %i.yy, 24                       ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i26.i.i113

.lr.ph.preheader.i26.i.i113:                      ; preds = %bb.x
  %i.za = and i64 %.054120.i, -4                  ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.za ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.za
  %i.zd = load i32, ptr %i.zc, align 4            ; 2 uses
  br i1 %i.wo, label %.lr.ph.i27.i.i114.epil.preheader, label %.lr.ph.i27.i.i114

.lr.ph.i27.i.i114:                                ; preds = %.lr.ph.preheader.i26.i.i113, %.lr.ph.i27.i.i114
  %.03343.i.i.i115 = phi i64 [ %i.zt, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ] ; 3 uses
  %.03442.i.i.i116 = phi ptr [ %i.zs, %.lr.ph.i27.i.i114 ], [ %i.zb, %.lr.ph.preheader.i26.i.i113 ] ; 2 uses
  %.141.i.i.i117 = phi i32 [ %i.zl, %.lr.ph.i27.i.i114 ], [ %i.zd, %.lr.ph.preheader.i26.i.i113 ]
  %niter390 = phi i64 [ %niter390.next.1, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ]
  %i.ze = load i32, ptr %.03442.i.i.i116, align 1 ; 2 uses
  %i.zf = xor i32 %i.ze, %.141.i.i.i117           ; 2 uses
  %i.zg = tail call noundef i32 @llvm.fshl.i32(i32 %i.zf, i32 %i.zf, i32 range(i32 -134217728, 134217728) %i.yx)
  %i.zh = lshr i32 %i.zg, %i.yz
  %i.zi = trunc i32 %i.zh to i8
  %i.zj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  store i8 %i.zi, ptr %i.zj, align 2, !tbaa !9
  %i.zk = getelementptr inbounds nuw i8, ptr %.03442.i.i.i116, i64 %4 ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 1            ; 3 uses
  %i.zm = xor i32 %i.zl, %i.ze                    ; 2 uses
  %i.zn = tail call noundef i32 @llvm.fshl.i32(i32 %i.zm, i32 %i.zm, i32 range(i32 -134217728, 134217728) %i.yx)
  %i.zo = lshr i32 %i.zn, %i.yz
  %i.zp = trunc i32 %i.zo to i8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store i8 %i.zp, ptr %i.zr, align 1, !tbaa !9
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zk, i64 %4 ; 2 uses
  %i.zt = add nuw nsw i64 %.03343.i.i.i115, 2     ; 2 uses
  %niter390.next.1 = add i64 %niter390, 2         ; 2 uses
  %niter390.ncmp.1 = icmp eq i64 %niter390.next.1, %unroll_iter389
  br i1 %niter390.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa, label %.lr.ph.i27.i.i114, !llvm.loop !21

default.unreachable:                              ; preds = %bb.v
  unreachable

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i128
  br i1 %lcmp.mod399.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.i.i.i128.epil.preheader

.lr.ph.i.i.i128.epil.preheader:                   ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i127
  %.03238.i.i.i129.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i127 ], [ %i.xr, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.03337.i.i.i130.epil.init = phi ptr [ %i.xb, %.lr.ph.preheader.i.i.i127 ], [ %i.xq, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.136.i.i.i131.epil.init = phi i8 [ %i.xd, %.lr.ph.preheader.i.i.i127 ], [ %i.xk, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.zu = load i8, ptr %.03337.i.i.i130.epil.init, align 1, !tbaa !9
  %i.zv = sub i8 %i.zu, %.136.i.i.i131.epil.init  ; 2 uses
  %.neg.i.i.i.i132.epil = ashr i8 %i.zv, 7
  %i.zw = shl i8 %i.zv, 1
  %i.zx = xor i8 %i.zw, %.neg.i.i.i.i132.epil
  %i.zy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129.epil.init
  store i8 %i.zx, ptr %i.zy, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134: ; preds = %.lr.ph.i.i.i128.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.thread.i
  br i1 %.not202, label %.thread79.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa: ; preds = %.lr.ph.i21.i.i121
  br i1 %lcmp.mod393.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i21.i.i121.epil.preheader

.lr.ph.i21.i.i121.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %.lr.ph.preheader.i20.i.i120
  %.03240.i.i.i122.epil.init = phi i64 [ 0, %.lr.ph.preheader.i20.i.i120 ], [ %i.yw, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.03339.i.i.i123.epil.init = phi ptr [ %i.xv, %.lr.ph.preheader.i20.i.i120 ], [ %i.yv, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.138.i.i.i124.epil.init = phi i16 [ %i.ye, %.lr.ph.preheader.i20.i.i120 ], [ %i.yn, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod394)
  %i.zz = load i16, ptr %.03339.i.i.i123.epil.init, align 1
  %i.aaa = sub i16 %i.zz, %.138.i.i.i124.epil.init ; 2 uses
  %.neg.i.i22.i.i125.epil = ashr i16 %i.aaa, 15
  %i.aab = shl i16 %i.aaa, 1
  %i.aac = xor i16 %i.aab, %.neg.i.i22.i.i125.epil
  %i.aad = lshr i16 %i.aac, %i.xt
  %i.aae = trunc i16 %i.aad to i8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122.epil.init
  store i8 %i.aae, ptr %i.aaf, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa: ; preds = %.lr.ph.i27.i.i114
  br i1 %lcmp.mod387.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i27.i.i114.epil.preheader

.lr.ph.i27.i.i114.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa, %.lr.ph.preheader.i26.i.i113
  %.03343.i.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i26.i.i113 ], [ %i.zt, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa ]
  %.03442.i.i.i116.epil.init = phi ptr [ %i.zb, %.lr.ph.preheader.i26.i.i113 ], [ %i.zs, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa ]
  %.141.i.i.i117.epil.init = phi i32 [ %i.zd, %.lr.ph.preheader.i26.i.i113 ], [ %i.zl, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod388)
  %i.aag = load i32, ptr %.03442.i.i.i116.epil.init, align 1
  %i.aah = xor i32 %i.aag, %.141.i.i.i117.epil.init ; 2 uses
  %i.aai = tail call noundef i32 @llvm.fshl.i32(i32 %i.aah, i32 %i.aah, i32 range(i32 -134217728, 134217728) %i.yx)
  %i.aaj = lshr i32 %i.aai, %i.yz
  %i.aak = trunc i32 %i.aaj to i8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115.epil.init
  store i8 %i.aak, ptr %i.aal, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109: ; preds = %.lr.ph.i27.i.i114.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit337.unr-lcssa, %.lr.ph.i21.i.i121.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, %bb.v
  br i1 %i.wi, label %.thread82.i, label %.lr.ph.i.i71.i

bb.y:                                             ; preds = %.lr.ph.i.i71.i
  %i.aam = add nuw nsw i64 %.069.i.i.i, 16        ; 2 uses
  %.not.i.i72.i = icmp ult i64 %i.aam, %i.wd
  br i1 %.not.i.i72.i, label %.lr.ph.i.i71.i, label %.thread82.i, !llvm.loop !26

.lr.ph.i.i71.i:                                   ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, %bb.y
  %.069.i.i.i = phi i64 [ %i.aam, %bb.y ], [ 0, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109 ] ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.a, i64 %.069.i.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %i.aan, align 16
  %i.aao = getelementptr i8, ptr %i.aan, i64 8
  %.val8.i.i.i = load i64, ptr %i.aao, align 8
  %i.aap = or i64 %.val8.i.i.i, %.val.i.i.i
  %i.aaq = icmp eq i64 %i.aap, 0
  br i1 %i.aaq, label %bb.y, label %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i

_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i:  ; preds = %.lr.ph.i.i71.i
  br i1 %i.vu, label %.thread85.i, label %.preheader.i110.preheader

.preheader.i110.preheader:                        ; preds = %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i
  br i1 %min.iters.check298, label %.preheader.i110.preheader336, label %vector.body301

vector.body301:                                   ; preds = %.preheader.i110.preheader, %vector.body301
  %index302 = phi i64 [ %index.next306, %vector.body301 ], [ 0, %.preheader.i110.preheader ] ; 2 uses
  %vec.phi303 = phi <2 x i64> [ %i.ahk, %vector.body301 ], [ %i.wv, %.preheader.i110.preheader ]
  %vec.phi304 = phi <2 x i64> [ %i.ahm, %vector.body301 ], [ %i.wv, %.preheader.i110.preheader ]
  %i.aar = shl nuw i64 %index302, 4
  %i.aas = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aar
  %wide.vec = load <4 x i64>, ptr %i.aas, align 16 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2> ; 11 uses
  %strided.vec305 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3> ; 11 uses
  %i.aat = or <2 x i64> %strided.vec305, %strided.vec
  %i.aau = icmp ne <2 x i64> %i.aat, zeroinitializer
  %i.aav = sext <2 x i1> %i.aau to <2 x i64>
  %i.aaw = trunc <2 x i64> %strided.vec to <2 x i8> ; 3 uses
  %i.aax = icmp eq <2 x i8> %i.aaw, zeroinitializer
  %i.aay = select <2 x i1> %i.aax, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.aaz = lshr <2 x i64> %strided.vec, splat (i64 8)
  %i.aba = trunc <2 x i64> %i.aaz to <2 x i8>     ; 3 uses
  %i.abb = icmp ne <2 x i8> %i.aba, zeroinitializer
  %i.abc = zext <2 x i1> %i.abb to <2 x i64>
  %i.abd = lshr <2 x i64> %strided.vec, splat (i64 16)
  %i.abe = trunc <2 x i64> %i.abd to <2 x i8>     ; 3 uses
  %i.abf = icmp ne <2 x i8> %i.abe, zeroinitializer
  %i.abg = zext <2 x i1> %i.abf to <2 x i64>
  %i.abh = lshr <2 x i64> %strided.vec, splat (i64 24)
  %i.abi = trunc <2 x i64> %i.abh to <2 x i8>     ; 3 uses
  %i.abj = icmp ne <2 x i8> %i.abi, zeroinitializer
  %i.abk = zext <2 x i1> %i.abj to <2 x i64>
  %i.abl = lshr <2 x i64> %strided.vec, splat (i64 32)
  %i.abm = trunc <2 x i64> %i.abl to <2 x i8>     ; 3 uses
  %i.abn = icmp ne <2 x i8> %i.abm, zeroinitializer
  %i.abo = zext <2 x i1> %i.abn to <2 x i64>
  %i.abp = lshr <2 x i64> %strided.vec, splat (i64 40)
  %i.abq = trunc <2 x i64> %i.abp to <2 x i8>     ; 3 uses
  %i.abr = icmp ne <2 x i8> %i.abq, zeroinitializer
  %i.abs = zext <2 x i1> %i.abr to <2 x i64>
  %i.abt = lshr <2 x i64> %strided.vec, splat (i64 48)
  %i.abu = trunc <2 x i64> %i.abt to <2 x i8>     ; 3 uses
  %i.abv = icmp ne <2 x i8> %i.abu, zeroinitializer
  %i.abw = zext <2 x i1> %i.abv to <2 x i64>
  %i.abx = icmp ugt <2 x i64> %strided.vec, splat (i64 72057594037927935)
  %i.aby = zext <2 x i1> %i.abx to <2 x i64>
  %i.abz = trunc <2 x i64> %strided.vec305 to <2 x i8> ; 3 uses
  %i.aca = icmp ne <2 x i8> %i.abz, zeroinitializer
  %i.acb = zext <2 x i1> %i.aca to <2 x i64>
  %i.acc = lshr <2 x i64> %strided.vec305, splat (i64 8)
  %i.acd = trunc <2 x i64> %i.acc to <2 x i8>     ; 3 uses
  %i.ace = icmp ne <2 x i8> %i.acd, zeroinitializer
  %i.acf = zext <2 x i1> %i.ace to <2 x i64>
  %i.acg = lshr <2 x i64> %strided.vec305, splat (i64 16)
  %i.ach = trunc <2 x i64> %i.acg to <2 x i8>     ; 3 uses
  %i.aci = icmp ne <2 x i8> %i.ach, zeroinitializer
  %i.acj = zext <2 x i1> %i.aci to <2 x i64>
  %i.ack = lshr <2 x i64> %strided.vec305, splat (i64 24)
  %i.acl = trunc <2 x i64> %i.ack to <2 x i8>     ; 3 uses
  %i.acm = icmp ne <2 x i8> %i.acl, zeroinitializer
  %i.acn = zext <2 x i1> %i.acm to <2 x i64>
  %i.aco = lshr <2 x i64> %strided.vec305, splat (i64 32)
  %i.acp = trunc <2 x i64> %i.aco to <2 x i8>     ; 3 uses
  %i.acq = icmp ne <2 x i8> %i.acp, zeroinitializer
  %i.acr = zext <2 x i1> %i.acq to <2 x i64>
  %i.acs = lshr <2 x i64> %strided.vec305, splat (i64 40)
  %i.act = trunc <2 x i64> %i.acs to <2 x i8>     ; 3 uses
  %i.acu = icmp ne <2 x i8> %i.act, zeroinitializer
  %i.acv = zext <2 x i1> %i.acu to <2 x i64>
  %i.acw = lshr <2 x i64> %strided.vec305, splat (i64 48)
  %i.acx = trunc <2 x i64> %i.acw to <2 x i8>     ; 3 uses
  %i.acy = icmp ne <2 x i8> %i.acx, zeroinitializer
  %i.acz = zext <2 x i1> %i.acy to <2 x i64>
  %i.ada = icmp ugt <2 x i64> %strided.vec305, splat (i64 72057594037927935)
  %i.adb = zext <2 x i1> %i.ada to <2 x i64>
  %i.adc = add nuw nsw <2 x i64> %i.aay, %i.aby
  %i.add = add nuw nsw <2 x i64> %i.adc, %i.adb
  %i.ade = add nuw nsw <2 x i64> %i.add, %i.abc
  %i.adf = add nuw nsw <2 x i64> %i.ade, %i.abg
  %i.adg = add nuw nsw <2 x i64> %i.adf, %i.abk
  %i.adh = add nuw nsw <2 x i64> %i.adg, %i.abo
  %i.adi = add nuw nsw <2 x i64> %i.adh, %i.abs
  %i.adj = add nuw nsw <2 x i64> %i.adi, %i.abw
  %i.adk = add nuw nsw <2 x i64> %i.adj, %i.acb
  %i.adl = add nuw nsw <2 x i64> %i.adk, %i.acf
  %i.adm = add nuw nsw <2 x i64> %i.adl, %i.acj
  %i.adn = add nuw nsw <2 x i64> %i.adm, %i.acn
  %i.ado = add nuw nsw <2 x i64> %i.adn, %i.acr
  %i.adp = add nuw nsw <2 x i64> %i.ado, %i.acv
  %i.adq = add nuw nsw <2 x i64> %i.adp, %i.acz
  %i.adr = icmp ugt <2 x i8> %i.aaw, splat (i8 2)
  %i.ads = select <2 x i1> %i.adr, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.adt = icmp ugt <2 x i8> %i.aba, splat (i8 2)
  %i.adu = zext <2 x i1> %i.adt to <2 x i64>
  %i.adv = icmp ugt <2 x i8> %i.abe, splat (i8 2)
  %i.adw = zext <2 x i1> %i.adv to <2 x i64>
  %i.adx = icmp ugt <2 x i8> %i.abi, splat (i8 2)
  %i.ady = zext <2 x i1> %i.adx to <2 x i64>
  %i.adz = icmp ugt <2 x i8> %i.abm, splat (i8 2)
  %i.aea = zext <2 x i1> %i.adz to <2 x i64>
  %i.aeb = icmp ugt <2 x i8> %i.abq, splat (i8 2)
  %i.aec = zext <2 x i1> %i.aeb to <2 x i64>
  %i.aed = icmp ugt <2 x i8> %i.abu, splat (i8 2)
  %i.aee = zext <2 x i1> %i.aed to <2 x i64>
  %i.aef = icmp ugt <2 x i64> %strided.vec, splat (i64 216172782113783807)
  %i.aeg = zext <2 x i1> %i.aef to <2 x i64>
  %i.aeh = icmp ugt <2 x i8> %i.abz, splat (i8 2)
  %i.aei = zext <2 x i1> %i.aeh to <2 x i64>
  %i.aej = icmp ugt <2 x i8> %i.acd, splat (i8 2)
  %i.aek = zext <2 x i1> %i.aej to <2 x i64>
  %i.ael = icmp ugt <2 x i8> %i.ach, splat (i8 2)
  %i.aem = zext <2 x i1> %i.ael to <2 x i64>
  %i.aen = icmp ugt <2 x i8> %i.acl, splat (i8 2)
  %i.aeo = zext <2 x i1> %i.aen to <2 x i64>
  %i.aep = icmp ugt <2 x i8> %i.acp, splat (i8 2)
  %i.aeq = zext <2 x i1> %i.aep to <2 x i64>
  %i.aer = icmp ugt <2 x i8> %i.act, splat (i8 2)
  %i.aes = zext <2 x i1> %i.aer to <2 x i64>
  %i.aet = icmp ugt <2 x i8> %i.acx, splat (i8 2)
  %i.aeu = zext <2 x i1> %i.aet to <2 x i64>
  %i.aev = icmp ugt <2 x i64> %strided.vec305, splat (i64 216172782113783807)
  %i.aew = zext <2 x i1> %i.aev to <2 x i64>
  %i.aex = add nuw nsw <2 x i64> %i.ads, %i.aeg
  %i.aey = add nuw nsw <2 x i64> %i.aex, %i.aew
  %i.aez = add nuw nsw <2 x i64> %i.aey, %i.adu
  %i.afa = add nuw nsw <2 x i64> %i.aez, %i.adw
  %i.afb = add nuw nsw <2 x i64> %i.afa, %i.ady
  %i.afc = add nuw nsw <2 x i64> %i.afb, %i.aea
  %i.afd = add nuw nsw <2 x i64> %i.afc, %i.aec
  %i.afe = add nuw nsw <2 x i64> %i.afd, %i.aee
  %i.aff = add nuw nsw <2 x i64> %i.afe, %i.aei
  %i.afg = add nuw nsw <2 x i64> %i.aff, %i.aek
  %i.afh = add nuw nsw <2 x i64> %i.afg, %i.aem
  %i.afi = add nuw nsw <2 x i64> %i.afh, %i.aeo
  %i.afj = add nuw nsw <2 x i64> %i.afi, %i.aeq
  %i.afk = add nuw nsw <2 x i64> %i.afj, %i.aes
  %i.afl = add nuw nsw <2 x i64> %i.afk, %i.aeu
  %i.afm = icmp ugt <2 x i8> %i.aaw, splat (i8 14)
  %i.afn = select <2 x i1> %i.afm, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.afo = icmp ugt <2 x i8> %i.aba, splat (i8 14)
  %i.afp = zext <2 x i1> %i.afo to <2 x i64>
  %i.afq = icmp ugt <2 x i8> %i.abe, splat (i8 14)
  %i.afr = zext <2 x i1> %i.afq to <2 x i64>
  %i.afs = icmp ugt <2 x i8> %i.abi, splat (i8 14)
end_hunk_1
begin_hunk_2_@meshopt_encodeVertexBufferLevel:bb.a
  %i.agg = icmp ugt <2 x i8> %i.ach, splat (i8 14)
  %i.agh = zext <2 x i1> %i.agg to <2 x i64>
  %i.agi = icmp ugt <2 x i8> %i.acl, splat (i8 14)
  %i.agj = zext <2 x i1> %i.agi to <2 x i64>
  %i.agk = icmp ugt <2 x i8> %i.acp, splat (i8 14)
  %i.agl = zext <2 x i1> %i.agk to <2 x i64>
  %i.agm = icmp ugt <2 x i8> %i.act, splat (i8 14)
  %i.agn = zext <2 x i1> %i.agm to <2 x i64>
  %i.ago = icmp ugt <2 x i8> %i.acx, splat (i8 14)
  %i.agp = zext <2 x i1> %i.ago to <2 x i64>
  %i.agq = icmp ugt <2 x i64> %strided.vec305, splat (i64 1080863910568919039)
  %i.agr = zext <2 x i1> %i.agq to <2 x i64>
  %i.ags = add nuw nsw <2 x i64> %i.afn, %i.agb
  %i.agt = add nuw nsw <2 x i64> %i.ags, %i.agr
  %i.agu = add nuw nsw <2 x i64> %i.agt, %i.afp
  %i.agv = add nuw nsw <2 x i64> %i.agu, %i.afr
  %i.agw = add nuw nsw <2 x i64> %i.agv, %i.aft
  %i.agx = add nuw nsw <2 x i64> %i.agw, %i.afv
  %i.agy = add nuw nsw <2 x i64> %i.agx, %i.afx
  %i.agz = add nuw nsw <2 x i64> %i.agy, %i.afz
  %i.aha = add nuw nsw <2 x i64> %i.agz, %i.agd
  %i.ahb = add nuw nsw <2 x i64> %i.aha, %i.agf
  %i.ahc = add nuw nsw <2 x i64> %i.ahb, %i.agh
  %i.ahd = add nuw nsw <2 x i64> %i.ahc, %i.agj
  %i.ahe = add nuw nsw <2 x i64> %i.ahd, %i.agl
  %i.ahf = add nuw nsw <2 x i64> %i.ahe, %i.agn
  %i.ahg = add nuw nsw <2 x i64> %i.ahf, %i.agp
  %i.ahh = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.adq, <2 x i64> %i.afl)
  %i.ahi = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ahh, <2 x i64> %i.ahg) ; 2 uses
  %i.ahj = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ahi, <2 x i64> %i.aav)
  %i.ahk = add <2 x i64> %i.ahj, %vec.phi303      ; 2 uses
  %i.ahl = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ahi, <2 x i64> splat (i64 16))
  %i.ahm = add <2 x i64> %i.ahl, %vec.phi304      ; 2 uses
  %index.next306 = add nuw i64 %index302, 2       ; 2 uses
  %i.ahn = icmp eq i64 %index.next306, %n.vec300
  br i1 %i.ahn, label %middle.block307, label %vector.body301, !llvm.loop !27

middle.block307:                                  ; preds = %vector.body301
  %i.aho = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ahk) ; 2 uses
  %i.ahp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ahm) ; 2 uses
  br i1 %cmp.n308, label %.loopexit312, label %.preheader.i110.preheader336

.preheader.i110.preheader336:                     ; preds = %.preheader.i110.preheader, %middle.block307
  %.04351.i.i.ph = phi i64 [ %i.wl, %.preheader.i110.preheader ], [ %i.aho, %middle.block307 ]
  %.04450.i.i.ph = phi i64 [ %i.wl, %.preheader.i110.preheader ], [ %i.ahp, %middle.block307 ]
  %.04549.i.i.ph = phi i64 [ 0, %.preheader.i110.preheader ], [ %i.wu, %middle.block307 ]
  br label %.preheader.i110

.thread85.i:                                      ; preds = %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i
  %.054.tr87.i = trunc i64 %.054120.i to i8
  %i.ahq = shl i8 %.054.tr87.i, 1
  %i.ahr = and i8 %i.ahq, 6
  %i.ahs = shl nuw nsw i8 1, %i.ahr
  %i.aht = lshr i64 %.054120.i, 2
  %i.ahu = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aht ; 2 uses
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !9
  %i.ahw = or i8 %i.ahv, %i.ahs
  store i8 %i.ahw, ptr %i.ahu, align 1, !tbaa !9
  br label %.thread79.i

.loopexit312:                                     ; preds = %.preheader.i110, %middle.block307
  %.lcssa273 = phi i64 [ %i.aho, %middle.block307 ], [ %i.akk, %.preheader.i110 ] ; 2 uses
  %.lcssa = phi i64 [ %i.ahp, %middle.block307 ], [ %i.akm, %.preheader.i110 ] ; 2 uses
  %i.ahx = icmp ult i64 %.lcssa273, %i.vz
  %i.ahy = icmp ult i64 %.lcssa, %i.vz
  %or.cond.i.i = select i1 %i.ahx, i1 true, i1 %i.ahy
  br i1 %or.cond.i.i, label %bb.z, label %.thread88.i

.thread88.i:                                      ; preds = %.loopexit312
  %.054.tr90.i = trunc i64 %.054120.i to i8
  %i.ahz = shl i8 %.054.tr90.i, 1
  %i.aia = and i8 %i.ahz, 6
  %i.aib = shl nuw i8 3, %i.aia
  %i.aic = lshr i64 %.054120.i, 2
  %i.aid = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aic ; 2 uses
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !9
  %i.aif = or i8 %i.aie, %i.aib
  store i8 %i.aif, ptr %i.aid, align 1, !tbaa !9
  %i.aig = ptrtoint ptr %.058119.i to i64
  %i.aih = sub i64 %i.m, %i.aig
  %i.aii = icmp ult i64 %i.aih, %i.vz
  br i1 %i.aii, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.aa

.preheader.i110:                                  ; preds = %.preheader.i110.preheader336, %.preheader.i110
  %.04351.i.i = phi i64 [ %i.akk, %.preheader.i110 ], [ %.04351.i.i.ph, %.preheader.i110.preheader336 ]
  %.04450.i.i = phi i64 [ %i.akm, %.preheader.i110 ], [ %.04450.i.i.ph, %.preheader.i110.preheader336 ]
  %.04549.i.i = phi i64 [ %i.akn, %.preheader.i110 ], [ %.04549.i.i.ph, %.preheader.i110.preheader336 ] ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04549.i.i ; 2 uses
  %.val.i47.i.i = load i64, ptr %i.aij, align 16  ; 6 uses
  %i.aik = getelementptr i8, ptr %i.aij, i64 8
  %.val15.i.i.i = load i64, ptr %i.aik, align 8   ; 6 uses
  %i.ail = or i64 %.val15.i.i.i, %.val.i47.i.i
  %i.aim = icmp ne i64 %i.ail, 0
  %i.ain = sext i1 %i.aim to i64
  %i.aio = trunc i64 %.val.i47.i.i to i8          ; 3 uses
  %.not.i.i = icmp eq i8 %i.aio, 0
  %i.aip = select i1 %.not.i.i, i64 2, i64 3
  %i.aiq = bitcast i64 %.val.i47.i.i to <8 x i8>
  %i.air = shufflevector <8 x i8> %i.aiq, <8 x i8> poison, <6 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ais = icmp ne <6 x i8> %i.air, zeroinitializer
  %i.ait = zext <6 x i1> %i.ais to <6 x i64>
  %i.aiu = icmp ugt i64 %.val.i47.i.i, 72057594037927935
  %i.aiv = zext i1 %i.aiu to i64
  %i.aiw = bitcast i64 %.val15.i.i.i to <8 x i8>
  %i.aix = shufflevector <8 x i8> %i.aiw, <8 x i8> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5> ; 3 uses
  %i.aiy = icmp ne <6 x i8> %i.aix, zeroinitializer
  %i.aiz = zext <6 x i1> %i.aiy to <6 x i64>
  %i.aja = lshr i64 %.val15.i.i.i, 48
  %i.ajb = trunc i64 %i.aja to i8                 ; 3 uses
  %i.ajc = icmp ne i8 %i.ajb, 0
  %i.ajd = zext i1 %i.ajc to i64
  %i.aje = icmp ugt i64 %.val15.i.i.i, 72057594037927935
  %i.ajf = zext i1 %i.aje to i64
  %rdx.op324 = add nuw nsw <6 x i64> %i.ait, %i.aiz
  %i.ajg = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op324)
  %op.rdx325 = add nuw nsw i64 %i.ajg, %i.aiv
  %op.rdx326 = add nuw nsw i64 %i.ajf, %i.ajd
  %op.rdx327 = add nuw nsw i64 %op.rdx325, %op.rdx326
  %op.rdx328 = add nuw nsw i64 %op.rdx327, %i.aip
  %i.ajh = icmp ugt i8 %i.aio, 2
  %i.aji = select i1 %i.ajh, i64 5, i64 4
  %i.ajj = icmp ugt <6 x i8> %i.air, splat (i8 2)
  %i.ajk = zext <6 x i1> %i.ajj to <6 x i64>
  %i.ajl = icmp ugt i64 %.val.i47.i.i, 216172782113783807
  %i.ajm = zext i1 %i.ajl to i64
  %i.ajn = icmp ugt <6 x i8> %i.aix, splat (i8 2)
  %i.ajo = zext <6 x i1> %i.ajn to <6 x i64>
  %i.ajp = icmp ugt i8 %i.ajb, 2
  %i.ajq = zext i1 %i.ajp to i64
  %i.ajr = icmp ugt i64 %.val15.i.i.i, 216172782113783807
  %i.ajs = zext i1 %i.ajr to i64
  %rdx.op329 = add nuw nsw <6 x i64> %i.ajk, %i.ajo
  %i.ajt = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op329)
  %op.rdx330 = add nuw nsw i64 %i.ajt, %i.ajm
  %op.rdx331 = add nuw nsw i64 %i.ajs, %i.ajq
  %op.rdx332 = add nuw nsw i64 %op.rdx330, %op.rdx331
  %op.rdx333 = add nuw nsw i64 %op.rdx332, %i.aji
  %i.aju = icmp ugt i8 %i.aio, 14
  %i.ajv = select i1 %i.aju, i64 9, i64 8
  %i.ajw = icmp ugt <6 x i8> %i.air, splat (i8 14)
  %i.ajx = zext <6 x i1> %i.ajw to <6 x i64>
  %i.ajy = icmp ugt i64 %.val.i47.i.i, 1080863910568919039
  %i.ajz = zext i1 %i.ajy to i64
  %i.aka = icmp ugt <6 x i8> %i.aix, splat (i8 14)
  %i.akb = zext <6 x i1> %i.aka to <6 x i64>
  %i.akc = icmp ugt i8 %i.ajb, 14
  %i.akd = zext i1 %i.akc to i64
  %i.ake = icmp ugt i64 %.val15.i.i.i, 1080863910568919039
  %i.akf = zext i1 %i.ake to i64
  %rdx.op = add nuw nsw <6 x i64> %i.ajx, %i.akb
  %i.akg = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op)
  %op.rdx320 = add nuw nsw i64 %i.akg, %i.ajz
  %op.rdx321 = add nuw nsw i64 %i.akf, %i.akd
  %op.rdx322 = add nuw nsw i64 %op.rdx320, %op.rdx321
  %op.rdx323 = add nuw nsw i64 %op.rdx322, %i.ajv
  %i.akh = tail call i64 @llvm.umin.i64(i64 %op.rdx328, i64 %op.rdx333)
  %i.aki = tail call i64 @llvm.umin.i64(i64 %i.akh, i64 %op.rdx323) ; 2 uses
  %i.akj = tail call i64 @llvm.umin.i64(i64 %i.aki, i64 %i.ain)
  %i.akk = add i64 %i.akj, %.04351.i.i            ; 2 uses
  %i.akl = tail call i64 @llvm.umin.i64(i64 %i.aki, i64 16)
  %i.akm = add i64 %i.akl, %.04450.i.i            ; 2 uses
  %i.akn = add nuw nsw i64 %.04549.i.i, 16        ; 2 uses
  %i.ako = icmp ult i64 %i.akn, %i.wd
  br i1 %i.ako, label %.preheader.i110, label %.loopexit312, !llvm.loop !28

.thread82.i:                                      ; preds = %bb.y, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, %bb.x, %bb.w
  %.054.tr84.i = trunc i64 %.054120.i to i8
  %i.akp = shl i8 %.054.tr84.i, 1
  %i.akq = and i8 %i.akp, 6
  %i.akr = shl nuw i8 2, %i.akq
  %i.aks = lshr i64 %.054120.i, 2
  %i.akt = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aks ; 2 uses
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !9
  %i.akv = or i8 %i.aku, %i.akr
  store i8 %i.akv, ptr %i.akt, align 1, !tbaa !9
  br label %.thread92.i

bb.z:                                             ; preds = %.loopexit312
  %i.akw = icmp uge i64 %.lcssa273, %.lcssa       ; 2 uses
  %i.akx = zext i1 %i.akw to i8
  %.054.tr.i = trunc i64 %.054120.i to i8
  %i.aky = shl i8 %.054.tr.i, 1
  %i.akz = and i8 %i.aky, 6
  %i.ala = shl nuw nsw i8 %i.akx, %i.akz
  %i.alb = lshr i64 %.054120.i, 2
  %i.alc = getelementptr inbounds nuw i8, ptr %.093, i64 %i.alb ; 2 uses
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !9
  %i.ale = or i8 %i.ald, %i.ala
  store i8 %i.ale, ptr %i.alc, align 1, !tbaa !9
  %i.alf = zext i1 %i.akw to i64
  br label %.thread79.i

bb.aa:                                            ; preds = %.thread88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058119.i, ptr nonnull align 16 %i.a, i64 %i.vz, i1 false)
  %i.alg = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.vz
  br label %.thread92.i

.thread79.i:                                      ; preds = %bb.z, %.thread85.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134
  %.081.i = phi i64 [ 1, %.thread85.i ], [ %i.alf, %bb.z ], [ 0, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134 ]
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr @_ZN7meshoptL7kBitsV1E, i64 %.081.i
  %i.ali = select i1 %.not202, ptr @_ZN7meshoptL7kBitsV0E, ptr %i.alh ; 7 uses
  %i.alj = ptrtoint ptr %.058119.i to i64
  %i.alk = sub i64 %i.m, %i.alj
  %i.all = icmp ult i64 %i.alk, %i.wl
  br i1 %i.all, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.thread79.i
  %i.alm = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.wl ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.058119.i, i8 0, i64 %i.wl, i1 false)
  %i.aln = ptrtoint ptr %i.alm to i64
  %i.alo = sub i64 %i.m, %i.aln
  %i.alp = icmp ult i64 %i.alo, 24
  %or.cond76.i.i = select i1 %i.wi, i1 true, i1 %i.alp
  br i1 %or.cond76.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ali, i64 12
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  %i.als = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alt = load i32, ptr %i.alq, align 4, !tbaa !13 ; 4 uses
  %i.alu = load i32, ptr %i.ali, align 4, !tbaa !13 ; 4 uses
  %i.alv = load i32, ptr %i.alr, align 4, !tbaa !13 ; 4 uses
  %i.alw = load i32, ptr %i.als, align 4, !tbaa !13 ; 4 uses
  %i.alx = sext i32 %i.alt to i64
  %i.aly = shl nsw i64 %i.alx, 1
  %i.alz = and i64 %i.aly, 2305843009213693950
  %notmask.i.i = shl nsw i32 -1, %i.alt
  %i.ama = and i32 %notmask.i.i, 255
  %i.amb = xor i32 %i.ama, 255                    ; 3 uses
  %i.amc = sext i32 %i.alu to i64
  %i.amd = shl nsw i64 %i.amc, 1
  %i.ame = and i64 %i.amd, 2305843009213693950
  %notmask.i63.i.i = shl nsw i32 -1, %i.alu
  %i.amf = and i32 %notmask.i63.i.i, 255
  %i.amg = xor i32 %i.amf, 255                    ; 3 uses
  %.not.i73.i = icmp eq i32 %i.alt, 8
  %i.amh = sext i32 %i.alv to i64
  %i.ami = shl nsw i64 %i.amh, 1
  %i.amj = and i64 %i.ami, 2305843009213693950
  %notmask.i63.1.i.i = shl nsw i32 -1, %i.alv
  %i.amk = and i32 %notmask.i63.1.i.i, 255
  %i.aml = xor i32 %i.amk, 255                    ; 3 uses
  %i.amm = sext i32 %i.alw to i64
  %i.amn = shl nsw i64 %i.amm, 1
  %i.amo = and i64 %i.amn, 2305843009213693950
  %notmask.i63.2.i.i = shl nsw i32 -1, %i.alw
  %i.amp = and i32 %notmask.i63.2.i.i, 255
  %i.amq = xor i32 %i.amp, 255                    ; 3 uses
  %i.amr = insertelement <14 x i32> poison, i32 %i.amq, i64 0
  %i.ams = shufflevector <14 x i32> %i.amr, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.amt = insertelement <14 x i32> poison, i32 %i.aml, i64 0
  %i.amu = shufflevector <14 x i32> %i.amt, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.amv = insertelement <14 x i32> poison, i32 %i.amg, i64 0
  %i.amw = shufflevector <14 x i32> %i.amv, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.amx = insertelement <14 x i32> poison, i32 %i.amb, i64 0
  %i.amy = shufflevector <14 x i32> %i.amx, <14 x i32> poison, <14 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %.lr.ph.i.i
  %.05079.i.i = phi ptr [ %i.alm, %.lr.ph.i.i ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 7 uses
  %.05678.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.atk, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 4 uses
  %.05777.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %i.awq, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 3 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05678.i.i ; 30 uses
  switch i32 %i.alt, label %.loopexit.loopexit.i.i [
    i32 0, label %bb.ad
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i = load i64, ptr %i.amz, align 16
  %i.ana = getelementptr i8, ptr %i.amz, i64 8
  %.val15.i.i = load i64, ptr %i.ana, align 8
  %i.anb = or i64 %.val15.i.i, %.val.i.i
  %i.anc = icmp ne i64 %i.anb, 0
  %i.and = sext i1 %i.anc to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ac
  %i.ane = load i8, ptr %i.amz, align 16, !tbaa !9
  %i.anf = zext i8 %i.ane to i32
  %i.ang = icmp samesign ule i32 %i.amb, %i.anf
  %i.anh = zext i1 %i.ang to i64
  %i.ani = or disjoint i64 %i.alz, %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amz, i64 1
  %i.ank = load <14 x i8>, ptr %i.anj, align 1, !tbaa !9
  %i.anl = zext <14 x i8> %i.ank to <14 x i32>
  %i.anm = icmp samesign ule <14 x i32> %i.amy, %i.anl
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amz, i64 15
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !9
  %i.anp = zext i8 %i.ano to i32
  %i.anq = icmp samesign ule i32 %i.amb, %i.anp
  %i.anr = zext i1 %i.anq to i64
  %i.ans = bitcast <14 x i1> %i.anm to i14
  %i.ant = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.ans)
  %i.anu = zext nneg i14 %i.ant to i64
  %op.rdx318 = add nuw nsw i64 %i.anu, %i.anr
  %op.rdx319 = add nuw nsw i64 %op.rdx318, %i.ani
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i: ; preds = %.loopexit.loopexit.i.i, %bb.ad, %bb.ac
  %.013.i.i = phi i64 [ %i.and, %bb.ad ], [ 16, %bb.ac ], [ %op.rdx319, %.loopexit.loopexit.i.i ] ; 3 uses
  %i.anv = getelementptr i8, ptr %i.amz, i64 8    ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.amz, i64 1 ; 4 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.amz, i64 2
  %i.any = getelementptr inbounds nuw i8, ptr %i.amz, i64 3
  %i.anz = getelementptr inbounds nuw i8, ptr %i.amz, i64 4
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.amz, i64 5
  %i.aob = getelementptr inbounds nuw i8, ptr %i.amz, i64 6
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.amz, i64 7
  %i.aod = getelementptr inbounds nuw i8, ptr %i.amz, i64 9
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.amz, i64 10
  %i.aof = getelementptr inbounds nuw i8, ptr %i.amz, i64 11
  %i.aog = getelementptr inbounds nuw i8, ptr %i.amz, i64 12
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.amz, i64 13
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.amz, i64 14
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.amz, i64 15 ; 4 uses
  switch i32 %i.alu, label %.loopexit.loopexit.i.i.i [
    i32 0, label %bb.ag
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  ]

bb.ae:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05079.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.amz, i64 16, i1 false)
  %i.aok = getelementptr inbounds nuw i8, ptr %.05079.i.i, i64 16
  br label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i

bb.af:                                            ; preds = %bb.at
  %i.aol = sdiv i32 8, %i.awq                     ; 6 uses
  %i.aom = sext i32 %i.aol to i64                 ; 4 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.awq
  %i.aon = trunc i32 %notmask.i.i.i to i8
  %i.aoo = xor i8 %i.aon, -1                      ; 23 uses
  %.not.i.i75.i = icmp eq i32 %i.aol, 0
  %i.aop = icmp eq i32 %i.awq, 1                  ; 2 uses
  br i1 %.not.i.i75.i, label %.split.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.af
  br i1 %i.aop, label %.preheader48.us.us.i.i.i.preheader, label %.preheader48.us.i.i.i.preheader

.preheader48.us.i.i.i.preheader:                  ; preds = %.split.us.i.i.i
  %i.aoq = icmp eq i32 %i.aol, 1
  %unroll_iter409 = and i64 %i.aom, -2
  %i.aor = and i32 %i.aol, 1
  %lcmp.mod406.not = icmp eq i32 %i.aor, 0
  %lcmp.mod408 = trunc i32 %i.aol to i1
  br label %.preheader48.us.i.i.i

.preheader48.us.us.i.i.i.preheader:               ; preds = %.split.us.i.i.i
  %i.aos = icmp ult i32 %i.aol, 4
  br label %.preheader48.us.us.i.i.i

.preheader48.us.us.i.i.i:                         ; preds = %.preheader48.us.us.i.i.i.preheader, %._crit_edge.us.us.i.i.i
  %.04352.us.us.i.i.i = phi i64 [ %i.apw, %._crit_edge.us.us.i.i.i ], [ 0, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %.04451.us.us.i.i.i = phi ptr [ %i.apv, %._crit_edge.us.us.i.i.i ], [ %.05079.i.i, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %i.aot = getelementptr i8, ptr %i.amz, i64 %.04352.us.us.i.i.i ; 4 uses
  %i.aou = xor i1 %i.aos, true
  call void @llvm.assume(i1 %i.aou)
  br label %.preheader48.us.us.i.i.i.new

.preheader48.us.us.i.i.i.new:                     ; preds = %.preheader48.us.us.i.i.i, %.preheader48.us.us.i.i.i.new
  %.04150.us.us.i.i.i = phi i64 [ %i.apo, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ] ; 5 uses
  %.04249.us.us.i.i.i = phi i8 [ %i.apn, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ]
  %niter418 = phi i64 [ %niter418.next.3, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ]
  %i.aov = getelementptr i8, ptr %i.aot, i64 %.04150.us.us.i.i.i
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !9
  %..us.us.i.i.i = tail call i8 @llvm.umin.i8(i8 %i.aow, i8 %i.aoo)
  %i.aox = getelementptr i8, ptr %i.aot, i64 %.04150.us.us.i.i.i
  %i.aoy = getelementptr i8, ptr %i.aox, i64 1
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !9
  %..us.us.i.i.i.1 = tail call i8 @llvm.umin.i8(i8 %i.aoz, i8 %i.aoo)
  %i.apa = shl i8 %.04249.us.us.i.i.i, 2
  %i.apb = shl nuw nsw i8 %..us.us.i.i.i, 1
  %i.apc = or i8 %i.apa, %i.apb
  %i.apd = or disjoint i8 %..us.us.i.i.i.1, %i.apc
  %i.ape = getelementptr i8, ptr %i.aot, i64 %.04150.us.us.i.i.i
  %i.apf = getelementptr i8, ptr %i.ape, i64 2
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !9
  %..us.us.i.i.i.2 = tail call i8 @llvm.umin.i8(i8 %i.apg, i8 %i.aoo)
  %i.aph = getelementptr i8, ptr %i.aot, i64 %.04150.us.us.i.i.i
  %i.api = getelementptr i8, ptr %i.aph, i64 3
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !9
  %..us.us.i.i.i.3 = tail call i8 @llvm.umin.i8(i8 %i.apj, i8 %i.aoo)
  %i.apk = shl i8 %i.apd, 2
  %i.apl = shl nuw nsw i8 %..us.us.i.i.i.2, 1
  %i.apm = or i8 %i.apk, %i.apl
  %i.apn = or disjoint i8 %..us.us.i.i.i.3, %i.apm ; 2 uses
  %i.apo = add nuw i64 %.04150.us.us.i.i.i, 4
  %niter418.next.3 = add i64 %niter418, 4         ; 2 uses
  %niter418.ncmp.3 = icmp eq i64 %niter418.next.3, %i.aom
  br i1 %niter418.ncmp.3, label %._crit_edge.us.us.i.i.i, label %.preheader48.us.us.i.i.i.new, !llvm.loop !29

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader48.us.us.i.i.i.new
  %i.app = zext i8 %i.apn to i64
  %i.apq = mul nuw nsw i64 %i.app, 2149582850
  %i.apr = and i64 %i.apq, 36578664720
  %i.aps = mul i64 %i.apr, 4311810305
  %i.apt = lshr i64 %i.aps, 32
  %i.apu = trunc i64 %i.apt to i8
  %i.apv = getelementptr inbounds nuw i8, ptr %.04451.us.us.i.i.i, i64 1 ; 2 uses
  store i8 %i.apu, ptr %.04451.us.us.i.i.i, align 1, !tbaa !9
  %i.apw = add nuw nsw i64 %.04352.us.us.i.i.i, %i.aom ; 2 uses
end_hunk_2
begin_hunk_3_@meshopt_encodeVertexBufferLevel:bb.a
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  %i.atr = load i8, ptr %i.amz, align 16, !tbaa !9
  %i.ats = zext i8 %i.atr to i32
  %i.att = icmp samesign ule i32 %i.amg, %i.ats
  %i.atu = zext i1 %i.att to i64
  %i.atv = or disjoint i64 %i.ame, %i.atu
  %i.atw = load <14 x i8>, ptr %i.anw, align 1, !tbaa !9
  %i.atx = zext <14 x i8> %i.atw to <14 x i32>
  %i.aty = icmp samesign ule <14 x i32> %i.amw, %i.atx
  %i.atz = load i8, ptr %i.aoj, align 1, !tbaa !9
  %i.aua = zext i8 %i.atz to i32
  %i.aub = icmp samesign ule i32 %i.amg, %i.aua
  %i.auc = zext i1 %i.aub to i64
  %i.aud = bitcast <14 x i1> %i.aty to i14
  %i.aue = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.aud)
  %i.auf = zext nneg i14 %i.aue to i64
  %op.rdx316 = add nuw nsw i64 %i.auf, %i.auc
  %op.rdx317 = add nuw nsw i64 %op.rdx316, %i.atv
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i: ; preds = %.loopexit.loopexit.i.i.i, %bb.ag, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  %.013.i.i.i = phi i64 [ %i.atq, %bb.ag ], [ 16, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i ], [ %op.rdx317, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %i.aug = icmp ult i64 %.013.i.i.i, %.013.i.i
  br i1 %i.aug, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  %i.auh = icmp ne i64 %.013.i.i.i, %.013.i.i
  %i.aui = icmp ne i32 %i.alu, %.05777.i.i
  %or.cond64.not106.i.i = or i1 %i.aui, %i.auh
  %or.cond103.i.i = or i1 %.not.i73.i, %or.cond64.not106.i.i
  br i1 %or.cond103.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.155.i.i = phi i32 [ 0, %bb.ai ], [ 3, %bb.ah ] ; 3 uses
  %.153.i.i = phi i64 [ %.013.i.i.i, %bb.ai ], [ %.013.i.i, %bb.ah ] ; 4 uses
  switch i32 %i.alv, label %.loopexit.loopexit.i.1.i.i [
    i32 0, label %bb.ak
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %.val.i.1.i.i = load i64, ptr %i.amz, align 16
  %.val15.i.1.i.i = load i64, ptr %i.anv, align 8
  %i.auj = or i64 %.val15.i.1.i.i, %.val.i.1.i.i
  %i.auk = icmp ne i64 %i.auj, 0
  %i.aul = sext i1 %i.auk to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i

.loopexit.loopexit.i.1.i.i:                       ; preds = %bb.aj
  %i.aum = load i8, ptr %i.amz, align 16, !tbaa !9
  %i.aun = zext i8 %i.aum to i32
  %i.auo = icmp samesign ule i32 %i.aml, %i.aun
  %i.aup = zext i1 %i.auo to i64
  %i.auq = or disjoint i64 %i.amj, %i.aup
  %i.aur = load <14 x i8>, ptr %i.anw, align 1, !tbaa !9
  %i.aus = zext <14 x i8> %i.aur to <14 x i32>
  %i.aut = icmp samesign ule <14 x i32> %i.amu, %i.aus
  %i.auu = load i8, ptr %i.aoj, align 1, !tbaa !9
  %i.auv = zext i8 %i.auu to i32
  %i.auw = icmp samesign ule i32 %i.aml, %i.auv
  %i.aux = zext i1 %i.auw to i64
  %i.auy = bitcast <14 x i1> %i.aut to i14
  %i.auz = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.auy)
  %i.ava = zext nneg i14 %i.auz to i64
  %op.rdx314 = add nuw nsw i64 %i.ava, %i.aux
  %op.rdx315 = add nuw nsw i64 %op.rdx314, %i.auq
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i: ; preds = %.loopexit.loopexit.i.1.i.i, %bb.ak, %bb.aj
  %.013.i.1.i.i = phi i64 [ %i.aul, %bb.ak ], [ 16, %bb.aj ], [ %op.rdx315, %.loopexit.loopexit.i.1.i.i ] ; 3 uses
  %i.avb = icmp ult i64 %.013.i.1.i.i, %.153.i.i
  br i1 %i.avb, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  %i.avc = icmp eq i64 %.013.i.1.i.i, %.153.i.i
  %i.avd = icmp eq i32 %i.alv, %.05777.i.i
  %or.cond64.1.i.i = and i1 %i.avd, %i.avc
  br i1 %or.cond64.1.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ave = zext nneg i32 %.155.i.i to i64
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !13
  %.not.1.i.i = icmp eq i32 %i.avg, 8
  br i1 %.not.1.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.155.1.i.i = phi i32 [ 1, %bb.an ], [ %.155.i.i, %bb.am ], [ %.155.i.i, %bb.al ] ; 3 uses
  %.153.1.i.i = phi i64 [ %.013.i.1.i.i, %bb.an ], [ %.153.i.i, %bb.am ], [ %.153.i.i, %bb.al ] ; 2 uses
  switch i32 %i.alw, label %.loopexit.loopexit.i.2.i.i [
    i32 0, label %bb.ap
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  ]

bb.ap:                                            ; preds = %bb.ao
  %.val.i.2.i.i = load i64, ptr %i.amz, align 16
  %.val15.i.2.i.i = load i64, ptr %i.anv, align 8
  %i.avh = or i64 %.val15.i.2.i.i, %.val.i.2.i.i
  %i.avi = icmp ne i64 %i.avh, 0
  %i.avj = sext i1 %i.avi to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i

.loopexit.loopexit.i.2.i.i:                       ; preds = %bb.ao
  %i.avk = load i8, ptr %i.amz, align 16, !tbaa !9
  %i.avl = zext i8 %i.avk to i32
  %i.avm = icmp samesign ule i32 %i.amq, %i.avl
  %i.avn = zext i1 %i.avm to i64
  %i.avo = or disjoint i64 %i.amo, %i.avn
  %i.avp = load <14 x i8>, ptr %i.anw, align 1, !tbaa !9
  %i.avq = zext <14 x i8> %i.avp to <14 x i32>
  %i.avr = icmp samesign ule <14 x i32> %i.ams, %i.avq
  %i.avs = load i8, ptr %i.aoj, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i32
  %i.avu = icmp samesign ule i32 %i.amq, %i.avt
  %i.avv = zext i1 %i.avu to i64
  %i.avw = bitcast <14 x i1> %i.avr to i14
  %i.avx = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.avw)
  %i.avy = zext nneg i14 %i.avx to i64
  %op.rdx = add nuw nsw i64 %i.avy, %i.avv
  %op.rdx313 = add nuw nsw i64 %op.rdx, %i.avo
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i: ; preds = %.loopexit.loopexit.i.2.i.i, %bb.ap, %bb.ao
  %.013.i.2.i.i = phi i64 [ %i.avj, %bb.ap ], [ 16, %bb.ao ], [ %op.rdx313, %.loopexit.loopexit.i.2.i.i ] ; 2 uses
  %i.avz = icmp ult i64 %.013.i.2.i.i, %.153.1.i.i
  br i1 %i.avz, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  %i.awa = icmp eq i64 %.013.i.2.i.i, %.153.1.i.i
  %i.awb = icmp eq i32 %i.alw, %.05777.i.i
  %or.cond64.2.i.i = and i1 %i.awb, %i.awa
  br i1 %or.cond64.2.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.awc = zext nneg i32 %.155.1.i.i to i64
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.awc
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !13
  %.not.2.i.i = icmp eq i32 %i.awe, 8
  br i1 %.not.2.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.155.2.i.i = phi i32 [ 2, %bb.as ], [ %.155.1.i.i, %bb.ar ], [ %.155.1.i.i, %bb.aq ] ; 2 uses
  %i.awf = trunc i64 %.05678.i.i to i32
  %i.awg = lshr exact i32 %i.awf, 3
  %i.awh = and i32 %i.awg, 6
  %i.awi = shl nuw nsw i32 %.155.2.i.i, %i.awh
  %i.awj = lshr i64 %.05678.i.i, 6
  %i.awk = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.awj ; 2 uses
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !9
  %i.awm = trunc nuw i32 %i.awi to i8
  %i.awn = or i8 %i.awl, %i.awm
  store i8 %i.awn, ptr %i.awk, align 1, !tbaa !9
  %i.awo = zext nneg i32 %.155.2.i.i to i64
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.awo
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !13 ; 8 uses
  switch i32 %i.awq, label %bb.af [
    i32 0, label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i
    i32 8, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %bb.ab
  %.050.lcssa.i.i = phi ptr [ %i.alm, %bb.ab ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 2 uses
  %.not60.lcssa.i.i = phi i1 [ %i.wi, %bb.ab ], [ %.not60.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ]
  %.not68.not154.i = icmp ne ptr %.050.lcssa.i.i, null
  %.not68.not.not.i = select i1 %.not60.lcssa.i.i, i1 %.not68.not154.i, i1 false
  br i1 %.not68.not.not.i, label %.thread92.i, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread

.thread92.i:                                      ; preds = %.loopexit.i, %bb.aa, %.thread82.i
  %.26095.i = phi ptr [ %.050.lcssa.i.i, %.loopexit.i ], [ %.058119.i, %.thread82.i ], [ %i.alg, %bb.aa ] ; 3 uses
  %i.awr = add nuw i64 %.054120.i, 1              ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %i.awr, %4
  br i1 %exitcond.not.i111, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, label %bb.u, !llvm.loop !32

_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread: ; preds = %bb.t, %.thread79.i, %.thread88.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit: ; preds = %.thread92.i
  %i.aws = add i64 %i.vz, -1
  %i.awt = mul i64 %i.aws, %4
  %i.awu = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.awt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr readonly align 1 %i.awu, i64 %4, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not102.not = icmp eq ptr %.26095.i, null
  %i.awv = add i64 %i.vz, %.0
  br i1 %.not102.not, label %.loopexit, label %bb.s, !llvm.loop !33

bb.au:                                            ; preds = %bb.s
  %i.aww = add i64 %i.vt, %4                      ; 3 uses
  %i.awx = select i1 %.not202, i64 32, i64 24     ; 2 uses
  %i.awy = tail call i64 @llvm.umax.i64(i64 %i.aww, i64 %i.awx) ; 2 uses
  %i.awz = ptrtoint ptr %.093 to i64
  %i.axa = sub i64 %i.m, %i.awz
  %i.axb = icmp ult i64 %i.axa, %i.awy
  br i1 %i.axb, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.axc = icmp ult i64 %i.aww, %i.awx
  br i1 %i.axc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.axd = sub nuw i64 %i.awy, %i.aww             ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.axd, i1 false)
  %i.axe = getelementptr inbounds nuw i8, ptr %.093, i64 %i.axd
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.194 = phi ptr [ %i.axe, %bb.aw ], [ %.093, %bb.av ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.194, ptr nonnull align 16 %i.f, i64 %4, i1 false)
  %i.axf = getelementptr inbounds nuw i8, ptr %.194, i64 %4 ; 3 uses
  br i1 %i.aa, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axf, ptr nonnull align 16 %i.h, i64 %i.vs, i1 false)
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.vs
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.295 = phi ptr [ %i.axg, %bb.ay ], [ %i.axf, %bb.ax ]
  %i.axh = ptrtoint ptr %.295 to i64
  %i.axi = sub i64 %i.axh, %i.n
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, %bb.az, %bb.au
  %.3 = phi i64 [ 0, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread ], [ %i.axi, %bb.az ], [ 0, %bb.au ], [ 0, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %.loopexit
  %.4 = phi i64 [ %.3, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @meshopt_encodeVertexBuffer(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_ZN7meshoptL20gEncodeVertexVersionE, align 4, !tbaa !13
  %i.b = tail call i64 @meshopt_encodeVertexBufferLevel(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 2, i32 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @meshopt_encodeVertexBufferBound(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = udiv i64 8192, %1
  %i.b = and i64 %i.a, 16368
  %i.c = icmp ugt i64 %1, 32
  %i.d = select i1 %i.c, i64 %i.b, i64 256        ; 4 uses
  %i.e = add i64 %0, -1
  %i.f = add i64 %i.e, %i.d
  %i.g = udiv i64 %i.f, %i.d
  %i.h = lshr i64 %1, 2                           ; 2 uses
  %i.i = lshr exact i64 %i.d, 4
  %i.j = add nuw nsw i64 %i.i, 3
  %i.k = lshr i64 %i.j, 2
  %i.l = add i64 %i.h, %1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.l, i64 32)
  %i.n = mul i64 %i.g, %1
  %i.o = add nuw nsw i64 %i.d, %i.h
  %i.p = add nuw nsw i64 %i.o, %i.k
  %i.q = mul i64 %i.n, %i.p
  %i.r = add i64 %i.m, 1
  %i.s = add i64 %i.r, %i.q
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_encodeVertexVersion(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 %0, ptr @_ZN7meshoptL20gEncodeVertexVersionE, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @meshopt_decodeVertexVersion(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !9
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 240
  %.not = icmp eq i32 %i.d, 160
  %i.e = and i32 %i.c, 15                         ; 2 uses
  %i.f = icmp samesign ult i32 %i.e, 2
  %i.g = select i1 %.not, i1 %i.f, i1 false
  %.1 = select i1 %i.g, i32 %i.e, i32 -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.2 = phi i32 [ %.1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 -3, 1) i32 @meshopt_decodeVertexBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = load i32, ptr @_ZN7meshoptL5cpuidE, align 4, !tbaa !13
  %i.c = and i32 %i.b, 8389120
  %i.d = icmp eq i32 %i.c, 8389120
  %_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i._ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i = select i1 %i.d, ptr @_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i, ptr @_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = icmp eq i64 %4, 0
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = load i8, ptr %3, align 1, !tbaa !9
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 240
  %.not = icmp eq i32 %i.k, 160
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.j, 15                         ; 3 uses
  %i.m = icmp samesign ugt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.l, 0                      ; 3 uses
  %i.o = lshr i64 %2, 2
  %i.p = select i1 %i.n, i64 0, i64 %i.o
  %i.q = add i64 %i.p, %2                         ; 2 uses
  %i.r = select i1 %i.n, i64 32, i64 24
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r) ; 2 uses
  %gepdiff = add nsw i64 %4, -1
  %i.t = icmp ult i64 %gepdiff, %i.s
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub i64 0, %i.q
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 %i.u ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.v, i64 %2, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %2
  %i.x = select i1 %i.n, ptr null, ptr %i.w
  %i.y = udiv i64 8192, %2
  %i.z = and i64 %i.y, 16368
  %i.aa = icmp ugt i64 %2, 32
  %i.ab = select i1 %i.aa, i64 %i.z, i64 256      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.055 = phi ptr [ %i.h, %bb.e ], [ %i.aj, %bb.g ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.ak, %bb.g ]    ; 5 uses
  %i.ac = icmp ult i64 %.0, %1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %.0, %i.ab
  %i.ae = icmp ult i64 %i.ad, %1
  %i.af = sub nuw i64 %1, %.0
  %i.ag = select i1 %i.ae, i64 %i.ab, i64 %i.af   ; 2 uses
  %i.ah = mul i64 %.0, %2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = call noundef ptr %_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i._ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i(ptr noundef nonnull %.055, ptr noundef nonnull %i.e, ptr noundef %i.ai, i64 noundef %i.ag, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef %i.x, i32 noundef %i.l), !callees !38 ; 2 uses
  %.not62.not = icmp eq ptr %i.aj, null
  %i.ak = add i64 %i.ag, %.0
  br i1 %.not62.not, label %.loopexit, label %bb.f, !llvm.loop !37

bb.h:                                             ; preds = %bb.f
  %i.al = ptrtoint ptr %.055 to i64
  %i.am = sub i64 %i.f, %i.al
  %.not61 = icmp eq i64 %i.am, %i.s
  %. = select i1 %.not61, i32 0, i32 -3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h
  %.2 = phi i32 [ %., %bb.h ], [ -2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.loopexit, %bb.d, %bb.c, %bb.a
end_hunk_3
begin_hunk_4_@_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i:bb.a
  br i1 %i.aau, label %bb.w, label %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit, !llvm.loop !43

bb.x:                                             ; preds = %bb.t
  br i1 %.not.i110, label %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.x
  %i.aav = getelementptr inbounds nuw i8, ptr %5, i64 %.084151
  %.val103 = load i32, ptr %i.aav, align 4, !tbaa !13
  %i.aaw = lshr i32 %i.ql, 4
  %i.aax = sub nsw i32 0, %i.aaw
  %i.aay = and i32 %i.aax, 31                     ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.084151
  %i.aba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.val103, i64 0
  %i.abb = bitcast <4 x i32> %i.aba to <2 x i64>
  %.splatinsert.i = insertelement <4 x i32> poison, i32 %i.aay, i64 0
  %.splat.i = shufflevector <4 x i32> %.splatinsert.i, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.abc = sub nuw nsw i32 32, %i.aay             ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i111
  %.020.i = phi <2 x i64> [ %i.abb, %.lr.ph.i111 ], [ %i.afk, %bb.y ]
  %.011719.i = phi ptr [ %i.aaz, %.lr.ph.i111 ], [ %i.afw, %bb.y ] ; 2 uses
  %.011818.i = phi i64 [ 0, %.lr.ph.i111 ], [ %i.afx, %bb.y ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.011818.i ; 4 uses
  %i.abe = load <16 x i8>, ptr %i.abd, align 16, !tbaa !9 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.d
  %i.abg = load <16 x i8>, ptr %i.abf, align 16, !tbaa !9 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.q
  %i.abi = load <16 x i8>, ptr %i.abh, align 16, !tbaa !9 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.r
  %i.abk = load <16 x i8>, ptr %i.abj, align 16, !tbaa !9 ; 2 uses
  %i.abl = shufflevector <16 x i8> %i.abe, <16 x i8> %i.abg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.abm = shufflevector <16 x i8> %i.abe, <16 x i8> %i.abg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.abn = shufflevector <16 x i8> %i.abi, <16 x i8> %i.abk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.abo = shufflevector <16 x i8> %i.abi, <16 x i8> %i.abk, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.abp = shufflevector <16 x i8> %i.abl, <16 x i8> %i.abn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.abq = shufflevector <16 x i8> %i.abl, <16 x i8> %i.abn, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.abr = shufflevector <16 x i8> %i.abm, <16 x i8> %i.abo, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.abs = shufflevector <16 x i8> %i.abm, <16 x i8> %i.abo, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.abt = bitcast <16 x i8> %i.abp to <4 x i32>  ; 2 uses
  %i.abu = shl <4 x i32> %i.abt, %.splat.i
  %i.abv = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.abt, i32 range(i32 -2147483615, -2147483648) %i.abc)
  %i.abw = or <4 x i32> %i.abu, %i.abv            ; 4 uses
  %i.abx = bitcast <4 x i32> %i.abw to <2 x i64>
  %i.aby = shufflevector <4 x i32> %i.abw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.abz = bitcast <4 x i32> %i.aby to <2 x i64>
  %i.aca = shufflevector <4 x i32> %i.abw, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.acb = bitcast <4 x i32> %i.aca to <2 x i64>
  %i.acc = shufflevector <4 x i32> %i.abw, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.acd = bitcast <4 x i32> %i.acc to <2 x i64>
  %i.ace = xor <2 x i64> %.020.i, %i.abx          ; 2 uses
  %i.acf = xor <2 x i64> %i.ace, %i.abz           ; 2 uses
  %i.acg = xor <2 x i64> %i.acf, %i.acb           ; 2 uses
  %i.ach = xor <2 x i64> %i.acg, %i.acd           ; 2 uses
  %i.aci = bitcast <2 x i64> %i.ace to <4 x i32>
  %i.acj = extractelement <4 x i32> %i.aci, i64 0
  store i32 %i.acj, ptr %.011719.i, align 4, !tbaa !13
  %i.ack = getelementptr inbounds nuw i8, ptr %.011719.i, i64 %4 ; 2 uses
  %i.acl = bitcast <2 x i64> %i.acf to <4 x i32>
  %i.acm = extractelement <4 x i32> %i.acl, i64 0
  store i32 %i.acm, ptr %i.ack, align 4, !tbaa !13
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 %4 ; 2 uses
  %i.aco = bitcast <2 x i64> %i.acg to <4 x i32>
  %i.acp = extractelement <4 x i32> %i.aco, i64 0
  store i32 %i.acp, ptr %i.acn, align 4, !tbaa !13
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 %4 ; 2 uses
  %i.acr = bitcast <2 x i64> %i.ach to <4 x i32>
  %i.acs = extractelement <4 x i32> %i.acr, i64 0
  store i32 %i.acs, ptr %i.acq, align 4, !tbaa !13
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 %4 ; 2 uses
  %i.acu = bitcast <16 x i8> %i.abq to <4 x i32>  ; 2 uses
  %i.acv = shl <4 x i32> %i.acu, %.splat.i
  %i.acw = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.acu, i32 range(i32 -2147483615, -2147483648) %i.abc)
  %i.acx = or <4 x i32> %i.acw, %i.acv            ; 4 uses
  %i.acy = bitcast <4 x i32> %i.acx to <2 x i64>
  %i.acz = shufflevector <4 x i32> %i.acx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ada = bitcast <4 x i32> %i.acz to <2 x i64>
  %i.adb = shufflevector <4 x i32> %i.acx, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.adc = bitcast <4 x i32> %i.adb to <2 x i64>
  %i.add = shufflevector <4 x i32> %i.acx, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.ade = bitcast <4 x i32> %i.add to <2 x i64>
  %i.adf = xor <2 x i64> %i.ach, %i.acy           ; 2 uses
  %i.adg = xor <2 x i64> %i.adf, %i.ada           ; 2 uses
  %i.adh = xor <2 x i64> %i.adg, %i.adc           ; 2 uses
  %i.adi = xor <2 x i64> %i.adh, %i.ade           ; 2 uses
  %i.adj = bitcast <2 x i64> %i.adf to <4 x i32>
  %i.adk = extractelement <4 x i32> %i.adj, i64 0
  store i32 %i.adk, ptr %i.act, align 4, !tbaa !13
  %i.adl = getelementptr inbounds nuw i8, ptr %i.act, i64 %4 ; 2 uses
  %i.adm = bitcast <2 x i64> %i.adg to <4 x i32>
  %i.adn = extractelement <4 x i32> %i.adm, i64 0
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !13
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 %4 ; 2 uses
  %i.adp = bitcast <2 x i64> %i.adh to <4 x i32>
  %i.adq = extractelement <4 x i32> %i.adp, i64 0
  store i32 %i.adq, ptr %i.ado, align 4, !tbaa !13
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 %4 ; 2 uses
  %i.ads = bitcast <2 x i64> %i.adi to <4 x i32>
  %i.adt = extractelement <4 x i32> %i.ads, i64 0
  store i32 %i.adt, ptr %i.adr, align 4, !tbaa !13
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 %4 ; 2 uses
  %i.adv = bitcast <16 x i8> %i.abr to <4 x i32>  ; 2 uses
  %i.adw = shl <4 x i32> %i.adv, %.splat.i
  %i.adx = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.adv, i32 range(i32 -2147483615, -2147483648) %i.abc)
  %i.ady = or <4 x i32> %i.adx, %i.adw            ; 4 uses
  %i.adz = bitcast <4 x i32> %i.ady to <2 x i64>
  %i.aea = shufflevector <4 x i32> %i.ady, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.aeb = bitcast <4 x i32> %i.aea to <2 x i64>
  %i.aec = shufflevector <4 x i32> %i.ady, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.aed = bitcast <4 x i32> %i.aec to <2 x i64>
  %i.aee = shufflevector <4 x i32> %i.ady, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.aef = bitcast <4 x i32> %i.aee to <2 x i64>
  %i.aeg = xor <2 x i64> %i.adi, %i.adz           ; 2 uses
  %i.aeh = xor <2 x i64> %i.aeg, %i.aeb           ; 2 uses
  %i.aei = xor <2 x i64> %i.aeh, %i.aed           ; 2 uses
  %i.aej = xor <2 x i64> %i.aei, %i.aef           ; 2 uses
  %i.aek = bitcast <2 x i64> %i.aeg to <4 x i32>
  %i.ael = extractelement <4 x i32> %i.aek, i64 0
  store i32 %i.ael, ptr %i.adu, align 4, !tbaa !13
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adu, i64 %4 ; 2 uses
  %i.aen = bitcast <2 x i64> %i.aeh to <4 x i32>
  %i.aeo = extractelement <4 x i32> %i.aen, i64 0
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !13
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 %4 ; 2 uses
  %i.aeq = bitcast <2 x i64> %i.aei to <4 x i32>
  %i.aer = extractelement <4 x i32> %i.aeq, i64 0
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !13
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 %4 ; 2 uses
  %i.aet = bitcast <2 x i64> %i.aej to <4 x i32>
  %i.aeu = extractelement <4 x i32> %i.aet, i64 0
  store i32 %i.aeu, ptr %i.aes, align 4, !tbaa !13
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 %4 ; 2 uses
  %i.aew = bitcast <16 x i8> %i.abs to <4 x i32>  ; 2 uses
  %i.aex = shl <4 x i32> %i.aew, %.splat.i
  %i.aey = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.aew, i32 range(i32 -2147483615, -2147483648) %i.abc)
  %i.aez = or <4 x i32> %i.aey, %i.aex            ; 4 uses
  %i.afa = bitcast <4 x i32> %i.aez to <2 x i64>
  %i.afb = shufflevector <4 x i32> %i.aez, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.afc = bitcast <4 x i32> %i.afb to <2 x i64>
  %i.afd = shufflevector <4 x i32> %i.aez, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.afe = bitcast <4 x i32> %i.afd to <2 x i64>
  %i.aff = shufflevector <4 x i32> %i.aez, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.afg = bitcast <4 x i32> %i.aff to <2 x i64>
  %i.afh = xor <2 x i64> %i.aej, %i.afa           ; 2 uses
  %i.afi = xor <2 x i64> %i.afh, %i.afc           ; 2 uses
  %i.afj = xor <2 x i64> %i.afi, %i.afe           ; 2 uses
  %i.afk = xor <2 x i64> %i.afj, %i.afg           ; 2 uses
  %i.afl = bitcast <2 x i64> %i.afh to <4 x i32>
  %i.afm = extractelement <4 x i32> %i.afl, i64 0
  store i32 %i.afm, ptr %i.aev, align 4, !tbaa !13
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aev, i64 %4 ; 2 uses
  %i.afo = bitcast <2 x i64> %i.afi to <4 x i32>
  %i.afp = extractelement <4 x i32> %i.afo, i64 0
  store i32 %i.afp, ptr %i.afn, align 4, !tbaa !13
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 %4 ; 2 uses
  %i.afr = bitcast <2 x i64> %i.afj to <4 x i32>
  %i.afs = extractelement <4 x i32> %i.afr, i64 0
  store i32 %i.afs, ptr %i.afq, align 4, !tbaa !13
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 %4 ; 2 uses
  %i.afu = bitcast <2 x i64> %i.afk to <4 x i32>
  %i.afv = extractelement <4 x i32> %i.afu, i64 0
  store i32 %i.afv, ptr %i.aft, align 4, !tbaa !13
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %4
  %i.afx = add nuw nsw i64 %.011818.i, 16         ; 2 uses
  %i.afy = icmp ult i64 %i.afx, %i.d
  br i1 %i.afy, label %bb.y, label %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit, !llvm.loop !44

default.unreachable166:                           ; preds = %bb.t
  unreachable

_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit: ; preds = %bb.y, %bb.w, %bb.u, %bb.x, %bb.v, %.thread132
  %i.afz = add i64 %.084151, 4                    ; 2 uses
  %.not = icmp ult i64 %i.afz, %4
  br i1 %.not, label %bb.c, label %.critedge.thread, !llvm.loop !45

.critedge.thread:                                 ; preds = %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit, %bb.b
  %.092.lcssa = phi ptr [ %i.l, %bb.b ], [ %.395114, %_ZN7meshoptL17decodeDeltas4SimdILi0EEEvPKhPhmmS3_i.exit ]
  %i.aga = mul i64 %4, %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 16 %i.b, i64 %i.aga, i1 false)
  %i.agb = add i64 %3, -1
  %i.agc = mul i64 %4, %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.agd, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.g, %bb.j, %bb.s, %.lr.ph80.i, %.critedge.thread, %bb.a
  %.10 = phi ptr [ null, %bb.a ], [ %.092.lcssa, %.critedge.thread ], [ null, %bb.g ], [ null, %.lr.ph80.i ], [ null, %bb.s ], [ null, %bb.j ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 14 uses
  %i.b = alloca [8192 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = add i64 %3, 15                           ; 2 uses
  %i.d = and i64 %i.c, -16                        ; 4 uses
  %i.e = icmp eq i32 %7, 0                        ; 4 uses
  %i.f = lshr i64 %4, 2
  %i.g = select i1 %i.e, i64 0, i64 %i.f          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %.not100146.not = icmp eq i64 %4, 0
  br i1 %.not100146.not, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = lshr i64 %i.c, 4
  %i.n = add nuw nsw i64 %i.m, 3
  %i.o = lshr i64 %i.n, 2                         ; 2 uses
  %.not28.i = icmp eq i64 %i.d, 0
  %.not.i107 = icmp eq i64 %3, 0                  ; 3 uses
  %i.p = shl i64 %3, 1                            ; 2 uses
  %i.q = mul i64 %3, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %3 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %3 ; 3 uses
  %i.v = add i64 %3, -1                           ; 6 uses
  %not..not28.i = icmp ne i64 %i.d, 0
  %xtraiter = and i64 %3, 1
  %i.w = icmp eq i64 %i.v, 0
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod179 = trunc i64 %3 to i1
  %xtraiter181 = and i64 %3, 1
  %i.x = icmp eq i64 %i.v, 0
  %unroll_iter184 = and i64 %3, -2
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod183 = trunc i64 %3 to i1
  %xtraiter187 = and i64 %3, 1
  %i.y = icmp eq i64 %i.v, 0
  %unroll_iter190 = and i64 %3, -2
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  %lcmp.mod189 = trunc i64 %3 to i1
  %xtraiter193 = and i64 %3, 1
  %i.z = icmp eq i64 %i.v, 0
  %unroll_iter196 = and i64 %3, -2
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i64 %3 to i1
  %xtraiter199 = and i64 %3, 1
  %i.aa = icmp eq i64 %i.v, 0
  %unroll_iter202 = and i64 %3, -2
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  %lcmp.mod201 = trunc i64 %3 to i1
  %xtraiter205 = and i64 %3, 1
  %i.ab = icmp eq i64 %i.v, 0
  %unroll_iter208 = and i64 %3, -2
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod207 = trunc i64 %3 to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit
  %.081148 = phi i64 [ 0, %.lr.ph ], [ %i.yu, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit ] ; 9 uses
  %.088147 = phi ptr [ %i.l, %.lr.ph ], [ %.391112, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit ]
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = lshr exact i64 %.081148, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = zext i8 %i.ae to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.0145 = phi i64 [ 0, %bb.e ], [ %i.pd, %.thread ] ; 5 uses
  %.189144 = phi ptr [ %.088147, %bb.e ], [ %.391112, %.thread ] ; 8 uses
  %.0.tr = trunc nuw nsw i64 %.0145 to i32
  %i.ah = shl nuw nsw i32 %.0.tr, 1
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = and i32 %i.ai, 3                        ; 2 uses
  switch i32 %i.aj, label %bb.j [
    i32 3, label %bb.g
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = ptrtoint ptr %.189144 to i64
  %i.al = sub i64 %i.h, %i.ak
  %i.am = icmp ult i64 %i.al, %3
  br i1 %i.am, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = mul i64 %.0145, %3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %.189144, i64 %3, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.189144, i64 %3
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.aq = mul i64 %.0145, %3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %3, i1 false)
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %i.as = mul i64 %.0145, %3
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.au = zext nneg i32 %i.aj to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZN7meshoptL7kBitsV1E, i64 %i.au
  %i.aw = select i1 %i.e, ptr @_ZN7meshoptL7kBitsV0E, ptr %i.av
  %i.ax = ptrtoint ptr %.189144 to i64
  %i.ay = sub i64 %i.h, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.o
  br i1 %i.az, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.189144, i64 %i.o ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.h, %i.bb
  %i.bd = icmp ult i64 %i.bc, 24
  %or.cond29.i = select i1 %.not28.i, i1 true, i1 %i.bd
  br i1 %or.cond29.i, label %.thread126, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i
  %.02331.i = phi ptr [ %.0.i.i, %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i ], [ %i.ba, %bb.k ] ; 21 uses
  %.02430.i = phi i64 [ %i.oz, %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i ], [ 0, %bb.k ] ; 4 uses
  %i.be = lshr i64 %.02430.i, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %.189144, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i32
  %i.bi = trunc i64 %.02430.i to i32
  %i.bj = lshr exact i32 %i.bi, 3
  %i.bk = and i32 %i.bj, 6
  %i.bl = lshr i32 %i.bh, %i.bk
  %i.bm = and i32 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %.02430.i ; 50 uses
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  switch i32 %i.bq, label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.02331.i, i64 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02331.i, i64 1
  %i.bt = load i8, ptr %.02331.i, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i64
  %i.bv = mul nuw nsw i64 %i.bu, 2149582850
  %i.bw = and i64 %i.bv, 36578664720
  %i.bx = mul i64 %i.bw, 4311810305               ; 8 uses
  %i.by = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bz = and i64 %i.bx, 549755813888             ; 2 uses
  %.not.i.i = icmp eq i64 %i.bz, 0
  %i.ca = select i1 %.not.i.i, i8 0, i8 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.ca, ptr %i.bn, align 1, !tbaa !9
  %.lobit.i.i = lshr exact i64 %i.bz, 39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 %.lobit.i.i ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = and i64 %i.bx, 274877906944             ; 2 uses
  %.not463.i.i = icmp eq i64 %i.ce, 0
  %i.cf = select i1 %.not463.i.i, i8 0, i8 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.cf, ptr %i.cb, align 1, !tbaa !9
  %.lobit462.i.i = lshr exact i64 %i.ce, 38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.lobit462.i.i ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cj = and i64 %i.bx, 137438953472             ; 2 uses
  %.not467.i.i = icmp eq i64 %i.cj, 0
  %i.ck = select i1 %.not467.i.i, i8 0, i8 %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !9
  %.lobit466.i.i = lshr exact i64 %i.cj, 37
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.lobit466.i.i ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = and i64 %i.bx, 68719476736              ; 2 uses
  %.not470.i.i = icmp eq i64 %i.co, 0
  %i.cp = select i1 %.not470.i.i, i8 0, i8 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i8 %i.cp, ptr %i.cl, align 1, !tbaa !9
  %.lobit469.i.i = lshr exact i64 %i.co, 36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lobit469.i.i ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = and i64 %i.bx, 34359738368              ; 2 uses
  %.not474.i.i = icmp eq i64 %i.ct, 0
  %i.cu = select i1 %.not474.i.i, i8 0, i8 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !9
  %.lobit473.i.i = lshr exact i64 %i.ct, 35
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.lobit473.i.i ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.cy = and i64 %i.bx, 17179869184              ; 2 uses
  %.not477.i.i = icmp eq i64 %i.cy, 0
  %i.cz = select i1 %.not477.i.i, i8 0, i8 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i8 %i.cz, ptr %i.cv, align 1, !tbaa !9
  %.lobit476.i.i = lshr exact i64 %i.cy, 34
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.lobit476.i.i ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = and i64 %i.bx, 8589934592               ; 2 uses
  %.not481.i.i = icmp eq i64 %i.dd, 0
  %i.de = select i1 %.not481.i.i, i8 0, i8 %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  store i8 %i.de, ptr %i.da, align 1, !tbaa !9
  %.lobit480.i.i = lshr exact i64 %i.dd, 33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %.lobit480.i.i ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9
  %i.di = and i64 %i.bx, 4294967296               ; 2 uses
  %.not483.i.i = icmp eq i64 %i.di, 0
  %i.dj = select i1 %.not483.i.i, i8 0, i8 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %i.dj, ptr %i.df, align 1, !tbaa !9
  %.lobit482.i.i = lshr exact i64 %i.di, 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.lobit482.i.i ; 2 uses
  %i.dm = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i64
end_hunk_4
begin_hunk_5_@_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i:bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  store i8 %i.in, ptr %i.if, align 1, !tbaa !9
  %i.ip = zext i1 %i.im to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ip ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !9
  %i.is = icmp eq i8 %i.ik, 3                     ; 2 uses
  %i.it = select i1 %i.is, i8 %i.ir, i8 %i.ik
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i8 %i.it, ptr %i.io, align 1, !tbaa !9
  %i.iv = zext i1 %i.is to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iv ; 2 uses
  %i.ix = load i8, ptr %i.hr, align 1, !tbaa !9   ; 4 uses
  %i.iy = lshr i8 %i.ix, 6                        ; 2 uses
  %i.iz = load i8, ptr %i.iw, align 1, !tbaa !9
  %i.ja = icmp eq i8 %i.iy, 3                     ; 2 uses
  %i.jb = select i1 %i.ja, i8 %i.iz, i8 %i.iy
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bn, i64 13
  store i8 %i.jb, ptr %i.iu, align 1, !tbaa !9
  %i.jd = zext i1 %i.ja to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jd ; 2 uses
  %i.jf = lshr i8 %i.ix, 4
  %i.jg = and i8 %i.jf, 3                         ; 2 uses
  %i.jh = load i8, ptr %i.je, align 1, !tbaa !9
  %i.ji = icmp eq i8 %i.jg, 3                     ; 2 uses
  %i.jj = select i1 %i.ji, i8 %i.jh, i8 %i.jg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  store i8 %i.jj, ptr %i.jc, align 1, !tbaa !9
  %i.jl = zext i1 %i.ji to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jl ; 2 uses
  %i.jn = lshr i8 %i.ix, 2
  %i.jo = and i8 %i.jn, 3                         ; 2 uses
  %i.jp = and i8 %i.ix, 3                         ; 2 uses
  %i.jq = load i8, ptr %i.jm, align 1, !tbaa !9
  %i.jr = icmp eq i8 %i.jo, 3                     ; 2 uses
  %i.js = select i1 %i.jr, i8 %i.jq, i8 %i.jo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bn, i64 15
  store i8 %i.js, ptr %i.jk, align 1, !tbaa !9
  %i.ju = zext i1 %i.jr to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ju ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !9
  %i.jx = icmp eq i8 %i.jp, 3                     ; 2 uses
  %i.jy = select i1 %i.jx, i8 %i.jw, i8 %i.jp
  store i8 %i.jy, ptr %i.jt, align 1, !tbaa !9
  %i.jz = zext i1 %i.jx to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jz
  br label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.02331.i, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.02331.i, i64 1
  %i.kd = load i8, ptr %.02331.i, align 1, !tbaa !9 ; 2 uses
  %i.ke = lshr i8 %i.kd, 4                        ; 2 uses
  %i.kf = and i8 %i.kd, 15                        ; 2 uses
  %i.kg = load i8, ptr %i.kb, align 1, !tbaa !9
  %i.kh = icmp eq i8 %i.ke, 15                    ; 2 uses
  %i.ki = select i1 %i.kh, i8 %i.kg, i8 %i.ke
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.ki, ptr %i.bn, align 1, !tbaa !9
  %i.kk = zext i1 %i.kh to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kk ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !9
  %i.kn = icmp eq i8 %i.kf, 15                    ; 2 uses
  %i.ko = select i1 %i.kn, i8 %i.km, i8 %i.kf
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.ko, ptr %i.kj, align 1, !tbaa !9
  %i.kq = zext i1 %i.kn to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.02331.i, i64 2
  %i.kt = load i8, ptr %i.kc, align 1, !tbaa !9   ; 2 uses
  %i.ku = lshr i8 %i.kt, 4                        ; 2 uses
  %i.kv = and i8 %i.kt, 15                        ; 2 uses
  %i.kw = load i8, ptr %i.kr, align 1, !tbaa !9
  %i.kx = icmp eq i8 %i.ku, 15                    ; 2 uses
  %i.ky = select i1 %i.kx, i8 %i.kw, i8 %i.ku
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  store i8 %i.ky, ptr %i.kp, align 1, !tbaa !9
  %i.la = zext i1 %i.kx to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.la ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !9
  %i.ld = icmp eq i8 %i.kv, 15                    ; 2 uses
  %i.le = select i1 %i.ld, i8 %i.lc, i8 %i.kv
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i8 %i.le, ptr %i.kz, align 1, !tbaa !9
  %i.lg = zext i1 %i.ld to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.02331.i, i64 3
  %i.lj = load i8, ptr %i.ks, align 1, !tbaa !9   ; 2 uses
  %i.lk = lshr i8 %i.lj, 4                        ; 2 uses
  %i.ll = and i8 %i.lj, 15                        ; 2 uses
  %i.lm = load i8, ptr %i.lh, align 1, !tbaa !9
  %i.ln = icmp eq i8 %i.lk, 15                    ; 2 uses
  %i.lo = select i1 %i.ln, i8 %i.lm, i8 %i.lk
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  store i8 %i.lo, ptr %i.lf, align 1, !tbaa !9
  %i.lq = zext i1 %i.ln to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lq ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !9
  %i.lt = icmp eq i8 %i.ll, 15                    ; 2 uses
  %i.lu = select i1 %i.lt, i8 %i.ls, i8 %i.ll
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i8 %i.lu, ptr %i.lp, align 1, !tbaa !9
  %i.lw = zext i1 %i.lt to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.02331.i, i64 4
  %i.lz = load i8, ptr %i.li, align 1, !tbaa !9   ; 2 uses
  %i.ma = lshr i8 %i.lz, 4                        ; 2 uses
  %i.mb = and i8 %i.lz, 15                        ; 2 uses
  %i.mc = load i8, ptr %i.lx, align 1, !tbaa !9
  %i.md = icmp eq i8 %i.ma, 15                    ; 2 uses
  %i.me = select i1 %i.md, i8 %i.mc, i8 %i.ma
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  store i8 %i.me, ptr %i.lv, align 1, !tbaa !9
  %i.mg = zext i1 %i.md to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mg ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !9
  %i.mj = icmp eq i8 %i.mb, 15                    ; 2 uses
  %i.mk = select i1 %i.mj, i8 %i.mi, i8 %i.mb
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %i.mk, ptr %i.mf, align 1, !tbaa !9
  %i.mm = zext i1 %i.mj to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.02331.i, i64 5
  %i.mp = load i8, ptr %i.ly, align 1, !tbaa !9   ; 2 uses
  %i.mq = lshr i8 %i.mp, 4                        ; 2 uses
  %i.mr = and i8 %i.mp, 15                        ; 2 uses
  %i.ms = load i8, ptr %i.mn, align 1, !tbaa !9
  %i.mt = icmp eq i8 %i.mq, 15                    ; 2 uses
  %i.mu = select i1 %i.mt, i8 %i.ms, i8 %i.mq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  store i8 %i.mu, ptr %i.ml, align 1, !tbaa !9
  %i.mw = zext i1 %i.mt to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mw ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !9
  %i.mz = icmp eq i8 %i.mr, 15                    ; 2 uses
  %i.na = select i1 %i.mz, i8 %i.my, i8 %i.mr
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  store i8 %i.na, ptr %i.mv, align 1, !tbaa !9
  %i.nc = zext i1 %i.mz to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.02331.i, i64 6
  %i.nf = load i8, ptr %i.mo, align 1, !tbaa !9   ; 2 uses
  %i.ng = lshr i8 %i.nf, 4                        ; 2 uses
  %i.nh = and i8 %i.nf, 15                        ; 2 uses
  %i.ni = load i8, ptr %i.nd, align 1, !tbaa !9
  %i.nj = icmp eq i8 %i.ng, 15                    ; 2 uses
  %i.nk = select i1 %i.nj, i8 %i.ni, i8 %i.ng
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  store i8 %i.nk, ptr %i.nb, align 1, !tbaa !9
  %i.nm = zext i1 %i.nj to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nm ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !9
  %i.np = icmp eq i8 %i.nh, 15                    ; 2 uses
  %i.nq = select i1 %i.np, i8 %i.no, i8 %i.nh
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i8 %i.nq, ptr %i.nl, align 1, !tbaa !9
  %i.ns = zext i1 %i.np to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.02331.i, i64 7
  %i.nv = load i8, ptr %i.ne, align 1, !tbaa !9   ; 2 uses
  %i.nw = lshr i8 %i.nv, 4                        ; 2 uses
  %i.nx = and i8 %i.nv, 15                        ; 2 uses
  %i.ny = load i8, ptr %i.nt, align 1, !tbaa !9
  %i.nz = icmp eq i8 %i.nw, 15                    ; 2 uses
  %i.oa = select i1 %i.nz, i8 %i.ny, i8 %i.nw
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bn, i64 13
  store i8 %i.oa, ptr %i.nr, align 1, !tbaa !9
  %i.oc = zext i1 %i.nz to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oc ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !9
  %i.of = icmp eq i8 %i.nx, 15                    ; 2 uses
  %i.og = select i1 %i.of, i8 %i.oe, i8 %i.nx
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  store i8 %i.og, ptr %i.ob, align 1, !tbaa !9
  %i.oi = zext i1 %i.of to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oi ; 2 uses
  %i.ok = load i8, ptr %i.nu, align 1, !tbaa !9   ; 2 uses
  %i.ol = lshr i8 %i.ok, 4                        ; 2 uses
  %i.om = and i8 %i.ok, 15                        ; 2 uses
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !9
  %i.oo = icmp eq i8 %i.ol, 15                    ; 2 uses
  %i.op = select i1 %i.oo, i8 %i.on, i8 %i.ol
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bn, i64 15
  store i8 %i.op, ptr %i.oh, align 1, !tbaa !9
  %i.or = zext i1 %i.oo to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.or ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !9
  %i.ou = icmp eq i8 %i.om, 15                    ; 2 uses
  %i.ov = select i1 %i.ou, i8 %i.ot, i8 %i.om
  store i8 %i.ov, ptr %i.oq, align 1, !tbaa !9
  %i.ow = zext i1 %i.ou to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ow
  br label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 1 dereferenceable(16) %.02331.i, i64 16, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %.02331.i, i64 16
  br label %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i

_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i:     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.lr.ph.i
  %.0.i.i = phi ptr [ %i.oy, %bb.p ], [ %.02331.i, %bb.l ], [ %i.fd, %bb.m ], [ %i.ka, %bb.n ], [ %i.ox, %bb.o ], [ %.02331.i, %.lr.ph.i ] ; 4 uses
  %i.oz = add nuw i64 %.02430.i, 16               ; 3 uses
  %.not.i = icmp uge i64 %i.oz, %i.d
  %i.pa = ptrtoint ptr %.0.i.i to i64
  %i.pb = sub i64 %i.h, %i.pa
  %i.pc = icmp ult i64 %i.pb, 24
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.pc
  br i1 %or.cond.i, label %bb.q, label %.lr.ph.i, !llvm.loop !48

bb.q:                                             ; preds = %_ZN7meshoptL16decodeBytesGroupEPKhPhi.exit.i
  %.not.not167 = icmp eq ptr %.0.i.i, null
  %not..not.i = icmp ult i64 %i.oz, %i.d
  %.not.not.not = select i1 %not..not.i, i1 true, i1 %.not.not167
  br i1 %.not.not.not, label %.critedge, label %.thread

.thread126:                                       ; preds = %bb.k
  %.not130.not168 = icmp eq ptr %.189144, null
  %.not130.not.not = select i1 %not..not28.i, i1 true, i1 %.not130.not168
  br i1 %.not130.not.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %.thread126, %bb.q
  %.391112 = phi ptr [ %i.ba, %.thread126 ], [ %.0.i.i, %bb.q ], [ %.189144, %bb.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.pd = add nuw nsw i64 %.0145, 1               ; 2 uses
  %exitcond = icmp eq i64 %i.pd, 4
  br i1 %exitcond, label %.thread123, label %bb.f, !llvm.loop !49

.thread123:                                       ; preds = %.thread
  br i1 %i.e, label %.thread134, label %bb.r

bb.r:                                             ; preds = %.thread123
  %i.pe = lshr exact i64 %.081148, 2
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !9
  %i.ph = zext i8 %i.pg to i32                    ; 2 uses
  %i.pi = and i32 %i.ph, 3
  switch i32 %i.pi, label %default.unreachable161 [
    i32 0, label %.thread134
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %.critedge
  ]

.thread134:                                       ; preds = %.thread123, %bb.r
  %i.pj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.081148 ; 12 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %5, i64 %.081148 ; 4 uses
  br i1 %.not.i107, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread134
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !9   ; 2 uses
  br i1 %i.y, label %.epil.preheader186, label %.lr.ph.preheader.i.new

._crit_edge.i103.unr-lcssa:                       ; preds = %.lr.ph.preheader.i.new
  br i1 %lcmp.mod188.not, label %._crit_edge.i103, label %.epil.preheader186

.epil.preheader186:                               ; preds = %._crit_edge.i103.unr-lcssa, %.lr.ph.preheader.i
  %.03950.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.tr, %._crit_edge.i103.unr-lcssa ]
  %.149.i.epil.init = phi i8 [ %i.pl, %.lr.ph.preheader.i ], [ %i.to, %._crit_edge.i103.unr-lcssa ]
  %.04248.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.tq, %._crit_edge.i103.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03950.i.epil.init
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !9   ; 2 uses
  %i.po = and i8 %i.pn, 1
  %i.pp = sub nsw i8 0, %i.po
  %i.pq = lshr i8 %i.pn, 1
  %i.pr = xor i8 %i.pq, %i.pp
  %i.ps = add i8 %i.pr, %.149.i.epil.init
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.i.epil.init
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !9
  br label %._crit_edge.i103

._crit_edge.i103:                                 ; preds = %._crit_edge.i103.unr-lcssa, %.epil.preheader186
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !9   ; 2 uses
  br i1 %i.z, label %.epil.preheader192, label %._crit_edge.i103.new

._crit_edge.i103.new:                             ; preds = %._crit_edge.i103, %._crit_edge.i103.new
  %.03950.1.i = phi i64 [ %i.qp, %._crit_edge.i103.new ], [ 0, %._crit_edge.i103 ] ; 3 uses
  %.149.1.i = phi i8 [ %i.qm, %._crit_edge.i103.new ], [ %i.pv, %._crit_edge.i103 ]
  %.04248.1.i = phi i64 [ %i.qo, %._crit_edge.i103.new ], [ 1, %._crit_edge.i103 ] ; 2 uses
  %niter197 = phi i64 [ %niter197.next.1, %._crit_edge.i103.new ], [ 0, %._crit_edge.i103 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03950.1.i
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !9   ; 2 uses
  %i.py = and i8 %i.px, 1
  %i.pz = sub nsw i8 0, %i.py
  %i.qa = lshr i8 %i.px, 1
  %i.qb = xor i8 %i.qa, %i.pz
  %i.qc = add i8 %i.qb, %.149.1.i                 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.1.i
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !9
  %i.qe = add i64 %.04248.1.i, %4                 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03950.1.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !9   ; 2 uses
  %i.qi = and i8 %i.qh, 1
  %i.qj = sub nsw i8 0, %i.qi
  %i.qk = lshr i8 %i.qh, 1
  %i.ql = xor i8 %i.qk, %i.qj
  %i.qm = add i8 %i.ql, %i.qc                     ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.qe
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !9
  %i.qo = add i64 %i.qe, %4                       ; 2 uses
  %i.qp = add nuw nsw i64 %.03950.1.i, 2          ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge.1.i.unr-lcssa, label %._crit_edge.i103.new, !llvm.loop !50

._crit_edge.1.i.unr-lcssa:                        ; preds = %._crit_edge.i103.new
  br i1 %lcmp.mod194.not, label %._crit_edge.1.i, label %.epil.preheader192

.epil.preheader192:                               ; preds = %._crit_edge.1.i.unr-lcssa, %._crit_edge.i103
  %.03950.1.i.epil.init = phi i64 [ 0, %._crit_edge.i103 ], [ %i.qp, %._crit_edge.1.i.unr-lcssa ]
  %.149.1.i.epil.init = phi i8 [ %i.pv, %._crit_edge.i103 ], [ %i.qm, %._crit_edge.1.i.unr-lcssa ]
  %.04248.1.i.epil.init = phi i64 [ 1, %._crit_edge.i103 ], [ %i.qo, %._crit_edge.1.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.qq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03950.1.i.epil.init
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !9   ; 2 uses
  %i.qs = and i8 %i.qr, 1
  %i.qt = sub nsw i8 0, %i.qs
  %i.qu = lshr i8 %i.qr, 1
  %i.qv = xor i8 %i.qu, %i.qt
  %i.qw = add i8 %i.qv, %.149.1.i.epil.init
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.1.i.epil.init
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !9
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.1.i.unr-lcssa, %.epil.preheader192
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !9   ; 2 uses
  br i1 %i.aa, label %.epil.preheader198, label %._crit_edge.1.i.new

._crit_edge.1.i.new:                              ; preds = %._crit_edge.1.i, %._crit_edge.1.i.new
  %.03950.2.i = phi i64 [ %i.rt, %._crit_edge.1.i.new ], [ 0, %._crit_edge.1.i ] ; 3 uses
  %.149.2.i = phi i8 [ %i.rq, %._crit_edge.1.i.new ], [ %i.qz, %._crit_edge.1.i ]
  %.04248.2.i = phi i64 [ %i.rs, %._crit_edge.1.i.new ], [ 2, %._crit_edge.1.i ] ; 2 uses
  %niter203 = phi i64 [ %niter203.next.1, %._crit_edge.1.i.new ], [ 0, %._crit_edge.1.i ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03950.2.i
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !9   ; 2 uses
  %i.rc = and i8 %i.rb, 1
  %i.rd = sub nsw i8 0, %i.rc
  %i.re = lshr i8 %i.rb, 1
  %i.rf = xor i8 %i.re, %i.rd
  %i.rg = add i8 %i.rf, %.149.2.i                 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.2.i
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !9
  %i.ri = add i64 %.04248.2.i, %4                 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03950.2.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !9   ; 2 uses
  %i.rm = and i8 %i.rl, 1
  %i.rn = sub nsw i8 0, %i.rm
  %i.ro = lshr i8 %i.rl, 1
  %i.rp = xor i8 %i.ro, %i.rn
  %i.rq = add i8 %i.rp, %i.rg                     ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.ri
  store i8 %i.rq, ptr %i.rr, align 1, !tbaa !9
  %i.rs = add i64 %i.ri, %4                       ; 2 uses
  %i.rt = add nuw nsw i64 %.03950.2.i, 2          ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %._crit_edge.2.i.unr-lcssa, label %._crit_edge.1.i.new, !llvm.loop !50

._crit_edge.2.i.unr-lcssa:                        ; preds = %._crit_edge.1.i.new
  br i1 %lcmp.mod200.not, label %._crit_edge.2.i, label %.epil.preheader198

.epil.preheader198:                               ; preds = %._crit_edge.2.i.unr-lcssa, %._crit_edge.1.i
  %.03950.2.i.epil.init = phi i64 [ 0, %._crit_edge.1.i ], [ %i.rt, %._crit_edge.2.i.unr-lcssa ]
  %.149.2.i.epil.init = phi i8 [ %i.qz, %._crit_edge.1.i ], [ %i.rq, %._crit_edge.2.i.unr-lcssa ]
  %.04248.2.i.epil.init = phi i64 [ 2, %._crit_edge.1.i ], [ %i.rs, %._crit_edge.2.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03950.2.i.epil.init
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !9   ; 2 uses
  %i.rw = and i8 %i.rv, 1
  %i.rx = sub nsw i8 0, %i.rw
  %i.ry = lshr i8 %i.rv, 1
  %i.rz = xor i8 %i.ry, %i.rx
  %i.sa = add i8 %i.rz, %.149.2.i.epil.init
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.2.i.epil.init
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !9
  br label %._crit_edge.2.i

._crit_edge.2.i:                                  ; preds = %._crit_edge.2.i.unr-lcssa, %.epil.preheader198
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pk, i64 3
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !9   ; 2 uses
  br i1 %i.ab, label %.epil.preheader204, label %._crit_edge.2.i.new

._crit_edge.2.i.new:                              ; preds = %._crit_edge.2.i, %._crit_edge.2.i.new
  %.03950.3.i = phi i64 [ %i.sx, %._crit_edge.2.i.new ], [ 0, %._crit_edge.2.i ] ; 3 uses
  %.149.3.i = phi i8 [ %i.su, %._crit_edge.2.i.new ], [ %i.sd, %._crit_edge.2.i ]
  %.04248.3.i = phi i64 [ %i.sw, %._crit_edge.2.i.new ], [ 3, %._crit_edge.2.i ] ; 2 uses
  %niter209 = phi i64 [ %niter209.next.1, %._crit_edge.2.i.new ], [ 0, %._crit_edge.2.i ]
  %i.se = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !9   ; 2 uses
  %i.sg = and i8 %i.sf, 1
  %i.sh = sub nsw i8 0, %i.sg
  %i.si = lshr i8 %i.sf, 1
  %i.sj = xor i8 %i.si, %i.sh
  %i.sk = add i8 %i.sj, %.149.3.i                 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.3.i
  store i8 %i.sk, ptr %i.sl, align 1, !tbaa !9
  %i.sm = add i64 %.04248.3.i, %4                 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !9   ; 2 uses
  %i.sq = and i8 %i.sp, 1
  %i.sr = sub nsw i8 0, %i.sq
  %i.ss = lshr i8 %i.sp, 1
  %i.st = xor i8 %i.ss, %i.sr
  %i.su = add i8 %i.st, %i.sk                     ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.sm
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !9
  %i.sw = add i64 %i.sm, %4                       ; 2 uses
  %i.sx = add nuw nsw i64 %.03950.3.i, 2          ; 2 uses
  %niter209.next.1 = add i64 %niter209, 2         ; 2 uses
  %niter209.ncmp.1 = icmp eq i64 %niter209.next.1, %unroll_iter208
  br i1 %niter209.ncmp.1, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, label %._crit_edge.2.i.new, !llvm.loop !50

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i.new
  %.03950.i = phi i64 [ %i.tr, %.lr.ph.preheader.i.new ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.149.i = phi i8 [ %i.to, %.lr.ph.preheader.i.new ], [ %i.pl, %.lr.ph.preheader.i ]
end_hunk_5
