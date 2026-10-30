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
  %i.k = select i1 %i.i, i32 %i.j, i32 %6         ; 2 uses
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
  %i.aa = icmp ne i32 %i.k, 0                     ; 7 uses
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
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.an = mul nsw i64 %i.z, -3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit
  %.091171 = phi i64 [ 0, %.preheader ], [ %i.vp, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit ] ; 4 uses
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.091171 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 1
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge.preheader.i, %bb.f
  %indvars.iv.i = phi i64 [ %i.ag, %bb.f ], [ %indvars.iv.next.i, %.critedge.preheader.i ] ; 4 uses
  %.04461.i = phi ptr [ %i.aq, %bb.f ], [ %scevgep, %.critedge.preheader.i ] ; 3 uses
  %.04660.i = phi i32 [ %i.ar, %bb.f ], [ %.lcssa357, %.critedge.preheader.i ] ; 2 uses
  %.04859.i = phi i64 [ 0, %bb.f ], [ %i.eb, %.critedge.preheader.i ]
  %i.as = phi <8 x i64> [ zeroinitializer, %bb.f ], [ %i.ea, %.critedge.preheader.i ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %i.at = add nuw nsw i64 %umin, 1                ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %xtraiter = and i64 %i.at, 3                    ; 3 uses
  %i.au = icmp ult i64 %indvars.iv.i, 3
  br i1 %i.au, label %.epil.preheader, label %.preheader53.i.new

.preheader53.i.new:                               ; preds = %.preheader53.i
  %unroll_iter = and i64 %i.at, 28
  br label %bb.h

.critedge.preheader.i.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.unr-lcssa, %.preheader53.i
  %.157.i.epil.init = phi ptr [ %.04461.i, %.preheader53.i ], [ %i.es, %.critedge.preheader.i.unr-lcssa ]
  %.14756.i.epil.init = phi i32 [ %.04660.i, %.preheader53.i ], [ %i.ep, %.critedge.preheader.i.unr-lcssa ]
  %.05054.i.epil.init = phi i32 [ 0, %.preheader53.i ], [ %i.er, %.critedge.preheader.i.unr-lcssa ]
  %lcmp.mod364 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod364)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.157.i.epil = phi ptr [ %.157.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.g ] ; 2 uses
  %.14756.i.epil = phi i32 [ %.14756.i.epil.init, %.epil.preheader ], [ %i.av, %bb.g ]
  %.05054.i.epil = phi i32 [ %.05054.i.epil.init, %.epil.preheader ], [ %i.ax, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.av = load i32, ptr %.157.i.epil, align 1     ; 3 uses
  %i.aw = xor i32 %i.av, %.14756.i.epil
  %i.ax = or i32 %i.aw, %.05054.i.epil            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.157.i.epil, i64 %4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.g, !llvm.loop !14

.critedge.preheader.i:                            ; preds = %bb.g, %.critedge.preheader.i.unr-lcssa
  %.lcssa357 = phi i32 [ %i.ep, %.critedge.preheader.i.unr-lcssa ], [ %i.av, %bb.g ]
  %.lcssa356 = phi i32 [ %i.er, %.critedge.preheader.i.unr-lcssa ], [ %i.ax, %bb.g ] ; 17 uses
  %i.az = add nuw nsw i64 %umin.i, 1
  %i.ba = mul i64 %4, %i.az
  %scevgep = getelementptr i8, ptr %.04461.i, i64 %i.ba
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 1) ; 3 uses
  %i.bc = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 2) ; 3 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 3) ; 3 uses
  %i.be = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 4) ; 3 uses
  %i.bf = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 5) ; 3 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 6) ; 3 uses
  %i.bh = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 7) ; 3 uses
  %i.bi = trunc i32 %.lcssa356 to i8
  %i.bj = icmp ult i32 %.lcssa356, 268435456
  %i.bk = trunc i32 %i.bb to i8
  %i.bl = icmp ult i32 %i.bb, 268435456
  %i.bm = trunc i32 %i.bc to i8
  %i.bn = icmp ult i32 %i.bc, 268435456
  %i.bo = trunc i32 %i.bd to i8
  %i.bp = icmp ult i32 %i.bd, 268435456
  %i.bq = trunc i32 %i.be to i8
  %i.br = icmp ult i32 %i.be, 268435456
  %i.bs = trunc i32 %i.bf to i8
  %i.bt = icmp ult i32 %i.bf, 268435456
  %i.bu = trunc i32 %i.bg to i8
  %i.bv = icmp ult i32 %i.bg, 268435456
  %i.bw = trunc i32 %i.bh to i8
  %i.bx = insertelement <8 x i8> poison, i8 %i.bw, i64 0
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bu, i64 1
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.bs, i64 2
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bq, i64 3
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bo, i64 4
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bm, i64 5
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bk, i64 6
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bi, i64 7 ; 3 uses
  %i.cf = icmp ult <8 x i8> %i.ce, splat (i8 16)
  %i.cg = icmp samesign ult <8 x i8> %i.ce, splat (i8 4)
  %i.ch = icmp eq <8 x i8> %i.ce, zeroinitializer
  %i.ci = select <8 x i1> %i.ch, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.cj = select <8 x i1> %i.cg, <8 x i64> %i.ci, <8 x i64> splat (i64 4)
  %i.ck = select <8 x i1> %i.cf, <8 x i64> %i.cj, <8 x i64> splat (i64 8)
  %i.cl = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %i.cm = insertelement <8 x i32> %i.cl, i32 %i.bg, i64 1
  %i.cn = insertelement <8 x i32> %i.cm, i32 %i.bf, i64 2
  %i.co = insertelement <8 x i32> %i.cn, i32 %i.be, i64 3
  %i.cp = insertelement <8 x i32> %i.co, i32 %i.bd, i64 4
  %i.cq = insertelement <8 x i32> %i.cp, i32 %i.bc, i64 5
  %i.cr = insertelement <8 x i32> %i.cq, i32 %i.bb, i64 6
  %i.cs = insertelement <8 x i32> %i.cr, i32 %.lcssa356, i64 7 ; 4 uses
  %i.ct = lshr <8 x i32> %i.cs, splat (i32 8)
  %i.cu = trunc <8 x i32> %i.ct to <8 x i8>       ; 3 uses
  %i.cv = icmp ult <8 x i8> %i.cu, splat (i8 16)
  %i.cw = icmp samesign ult <8 x i8> %i.cu, splat (i8 4)
  %i.cx = icmp eq <8 x i8> %i.cu, zeroinitializer
  %i.cy = select <8 x i1> %i.cx, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.cz = select <8 x i1> %i.cw, <8 x i64> %i.cy, <8 x i64> splat (i64 4)
  %i.da = select <8 x i1> %i.cv, <8 x i64> %i.cz, <8 x i64> splat (i64 8)
  %i.db = lshr <8 x i32> %i.cs, splat (i32 16)
  %i.dc = trunc <8 x i32> %i.db to <8 x i8>       ; 3 uses
  %i.dd = icmp ult <8 x i8> %i.dc, splat (i8 16)
  %i.de = icmp samesign ult <8 x i8> %i.dc, splat (i8 4)
  %i.df = icmp eq <8 x i8> %i.dc, zeroinitializer
  %i.dg = select <8 x i1> %i.df, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.dh = select <8 x i1> %i.de, <8 x i64> %i.dg, <8 x i64> splat (i64 4)
  %i.di = select <8 x i1> %i.dd, <8 x i64> %i.dh, <8 x i64> splat (i64 8)
  %i.dj = icmp ult i32 %i.bh, 268435456
  %i.dk = icmp ult <8 x i32> %i.cs, splat (i32 67108864)
  %i.dl = icmp ult <8 x i32> %i.cs, splat (i32 16777216)
  %i.dm = select <8 x i1> %i.dl, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.dn = select <8 x i1> %i.dk, <8 x i64> %i.dm, <8 x i64> splat (i64 4)
  %i.do = insertelement <8 x i1> poison, i1 %i.dj, i64 0
  %i.dp = insertelement <8 x i1> %i.do, i1 %i.bv, i64 1
  %i.dq = insertelement <8 x i1> %i.dp, i1 %i.bt, i64 2
  %i.dr = insertelement <8 x i1> %i.dq, i1 %i.br, i64 3
  %i.ds = insertelement <8 x i1> %i.dr, i1 %i.bp, i64 4
  %i.dt = insertelement <8 x i1> %i.ds, i1 %i.bn, i64 5
  %i.du = insertelement <8 x i1> %i.dt, i1 %i.bl, i64 6
  %i.dv = insertelement <8 x i1> %i.du, i1 %i.bj, i64 7
  %i.dw = select <8 x i1> %i.dv, <8 x i64> %i.dn, <8 x i64> splat (i64 8)
  %i.dx = add <8 x i64> %i.dw, %i.as
  %i.dy = add <8 x i64> %i.dx, %i.ck
  %i.dz = add <8 x i64> %i.dy, %i.di
  %i.ea = add <8 x i64> %i.dz, %i.da              ; 9 uses
  %i.eb = add nuw i64 %.04859.i, 16               ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %3
  %indvars.iv.next.i = add i64 %indvars.iv.i, -16
  br i1 %i.ec, label %.preheader53.i, label %_ZN7meshoptL14estimateRotateEPKhmmmm.exit, !llvm.loop !15

bb.h:                                             ; preds = %bb.h, %.preheader53.i.new
  %.157.i = phi ptr [ %.04461.i, %.preheader53.i.new ], [ %i.es, %bb.h ] ; 2 uses
  %.14756.i = phi i32 [ %.04660.i, %.preheader53.i.new ], [ %i.ep, %bb.h ]
  %.05054.i = phi i32 [ 0, %.preheader53.i.new ], [ %i.er, %bb.h ]
  %niter = phi i64 [ 0, %.preheader53.i.new ], [ %niter.next.3, %bb.h ]
  %i.ed = load i32, ptr %.157.i, align 1          ; 2 uses
  %i.ee = xor i32 %i.ed, %.14756.i
  %i.ef = or i32 %i.ee, %.05054.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.157.i, i64 %4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 1            ; 2 uses
  %i.ei = xor i32 %i.eh, %i.ed
  %i.ej = or i32 %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 1            ; 2 uses
  %i.em = xor i32 %i.el, %i.eh
  %i.en = or i32 %i.em, %i.ej
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 1            ; 4 uses
  %i.eq = xor i32 %i.ep, %i.el
  %i.er = or i32 %i.eq, %i.en                     ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !16

_ZN7meshoptL14estimateRotateEPKhmmmm.exit:        ; preds = %.critedge.preheader.i
  %i.et = extractelement <8 x i64> %i.ea, i64 7   ; 3 uses
  store i64 %i.et, ptr %i.e, align 16, !tbaa !36
  %i.eu = extractelement <8 x i64> %i.ea, i64 6   ; 3 uses
  store i64 %i.eu, ptr %i.ah, align 8, !tbaa !36
  %i.ev = extractelement <8 x i64> %i.ea, i64 5   ; 2 uses
  store i64 %i.ev, ptr %i.ai, align 16, !tbaa !36
  %i.ew = extractelement <8 x i64> %i.ea, i64 4   ; 2 uses
  store i64 %i.ew, ptr %i.aj, align 8, !tbaa !36
  %i.ex = extractelement <8 x i64> %i.ea, i64 3   ; 2 uses
  store i64 %i.ex, ptr %i.ak, align 16, !tbaa !36
  %i.ey = extractelement <8 x i64> %i.ea, i64 2   ; 2 uses
  store i64 %i.ey, ptr %i.al, align 8, !tbaa !36
  %i.ez = extractelement <8 x i64> %i.ea, i64 1   ; 2 uses
  store i64 %i.ez, ptr %7, align 16, !tbaa !36
  %i.fa = icmp ult i64 %i.eu, %i.et
  %i.fb = zext i1 %i.fa to i32
  %i.fc = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.et)
  %i.fd = icmp ult i64 %i.ev, %i.fc
  %i.fe = select i1 %i.fd, i32 2, i32 %i.fb       ; 2 uses
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !36
  %i.fi = icmp ult i64 %i.ew, %i.fh
  %i.fj = select i1 %i.fi, i32 3, i32 %i.fe       ; 2 uses
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !36
  %i.fn = icmp ult i64 %i.ex, %i.fm
  %i.fo = select i1 %i.fn, i32 4, i32 %i.fj       ; 2 uses
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !36
  %i.fs = icmp ult i64 %i.ey, %i.fr
  %i.ft = select i1 %i.fs, i32 5, i32 %i.fo       ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !36
  %i.fx = icmp ult i64 %i.ez, %i.fw
  %i.fy = select i1 %i.fx, i32 6, i32 %i.ft       ; 2 uses
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !36
  %i.gc = extractelement <8 x i64> %i.ea, i64 0
  %i.gd = icmp ult i64 %i.gc, %i.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.ge = shl nuw nsw i32 %i.fy, 4
  %i.gf = select i1 %i.gd, i32 112, i32 %i.ge
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit
  %wide.trip.count.i = phi i64 [ 3, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit ], [ 2, %bb.e ]
  %i.gg = phi i32 [ %i.gf, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %bb.i ] ; 2 uses
  %.06881.i = phi i64 [ %i.hl, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.gh = add i64 %i.z, %.06881.i
  %umin365 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.gh)
  %i.gi = mul i64 %i.an, %indvar
  %i.gj = add i64 %i.gi, -1
  %i.gk = add i64 %umin365, %i.gj                 ; 3 uses
  %i.gl = add i64 %.06881.i, %i.z
  %i.gm = icmp ult i64 %i.gl, %3
  %i.gn = sub nuw i64 %3, %.06881.i
  %i.go = select i1 %i.gm, i64 %i.z, i64 %i.gn    ; 16 uses
  %i.gp = add i64 %i.go, 15
  %i.gq = and i64 %i.gp, -16                      ; 2 uses
  %i.gr = tail call i64 @llvm.usub.sat.i64(i64 %.06881.i, i64 1)
  %i.gs = mul i64 %i.gr, %4
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %i.gt, i64 %4, i1 false)
  %i.gu = icmp ult i64 %i.go, %i.gq
  br i1 %i.gu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.go
  %i.gw = sub nuw i64 %i.gq, %i.go
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gv, i8 0, i64 %i.gw, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gx = mul i64 %.06881.i, %4
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %i.gx ; 3 uses
  %.not.i25.i.i = icmp eq i64 %i.go, 0            ; 4 uses
  %xtraiter366 = and i64 %i.go, 1
  %i.gz = icmp eq i64 %i.gk, 0
  %unroll_iter370 = and i64 %i.go, -2
  %lcmp.mod368.not = icmp eq i64 %xtraiter366, 0
  %lcmp.mod369 = trunc i64 %i.go to i1
  %xtraiter372 = and i64 %i.go, 1
  %i.ha = icmp eq i64 %i.gk, 0
  %unroll_iter376 = and i64 %i.go, -2
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  %lcmp.mod375 = trunc i64 %i.go to i1
  %xtraiter378.a = and i64 %i.go, 1
  %i.hb = icmp eq i64 %i.gk, 0
  %unroll_iter382.a = and i64 %i.go, -2
  %lcmp.mod380.not.a = icmp eq i64 %xtraiter378.a, 0
  %lcmp.mod381.a = trunc i64 %i.go to i1
  %i.hc = tail call i64 @llvm.umax.i64(i64 %i.go, i64 16)
  %i.hd = add i64 %i.hc, -1
  %i.he = lshr i64 %i.hd, 4                       ; 2 uses
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.he, 0
  %n.vec = and i64 %i.hf, 2305843009213693950     ; 3 uses
  %i.hg = shl i64 %n.vec, 4
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %bb.n, %bb.l
  %indvars.iv.i103 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i106, %bb.n ] ; 3 uses
  %i.hh = trunc nuw nsw i64 %indvars.iv.i103 to i32 ; 2 uses
  %i.hi = or i32 %i.gg, %i.hh
  %i.hj = lshr i32 %i.hi, 4                       ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i103 ; 2 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %i.hl = add i64 %.06881.i, %i.af                ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hm, label %bb.j, label %.preheader.i, !llvm.loop !17

bb.n:                                             ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i
  br i1 %exitcond89.not.i, label %bb.m, label %.preheader77.i, !llvm.loop !18

bb.o:                                             ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, %.preheader77.i
  %.07179.i = phi i64 [ 0, %.preheader77.i ], [ %i.uk, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i ] ; 4 uses
  %i.hn = add nuw nsw i64 %.07179.i, %.091171     ; 5 uses
  switch i32 %i.hh, label %default.unreachable33.i.i [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.p
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hn
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9   ; 2 uses
  br i1 %i.hb, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i
  %.03238.i.i.i = phi i64 [ %i.ie, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.03337.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i ], [ %i.ho, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.136.i.i.i = phi i8 [ %i.hx, %.lr.ph.i.i.i ], [ %i.hq, %.lr.ph.preheader.i.i.i ]
  %niter383.a = phi i64 [ %niter383.next.1.a, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.hr = load i8, ptr %.03337.i.i.i, align 1, !tbaa !9 ; 2 uses
  %i.hs = sub i8 %i.hr, %.136.i.i.i               ; 2 uses
  %.neg.i.i.i.i = ashr i8 %i.hs, 7
  %i.ht = shl i8 %i.hs, 1
  %i.hu = xor i8 %i.ht, %.neg.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i
  store i8 %i.hu, ptr %i.hv, align 2, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %.03337.i.i.i, i64 %4 ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !9   ; 3 uses
  %i.hy = sub i8 %i.hx, %i.hr                     ; 2 uses
  %.neg.i.i.i.i.1 = ashr i8 %i.hy, 7
  %i.hz = shl i8 %i.hy, 1
  %i.ia = xor i8 %i.hz, %.neg.i.i.i.i.1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.ia, ptr %i.ic, align 1, !tbaa !9
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 %4 ; 2 uses
  %i.ie = add nuw nsw i64 %.03238.i.i.i, 2        ; 2 uses
  %niter383.next.1.a = add i64 %niter383.a, 2     ; 2 uses
  %niter383.ncmp.1.a = icmp eq i64 %niter383.next.1.a, %unroll_iter382.a
  br i1 %niter383.ncmp.1.a, label %.lr.ph.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !19

bb.q:                                             ; preds = %bb.o
  %.tr.i.i.i = trunc i64 %.07179.i to i16
  %i.if = shl i16 %.tr.i.i.i, 3
  %i.ig = and i16 %i.if, 8                        ; 3 uses
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i20.i.i

.lr.ph.preheader.i20.i.i:                         ; preds = %bb.q
  %i.ih = and i64 %i.hn, -2                       ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ih ; 2 uses
  %i.ij = or i64 %i.hn, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !9
  %i.im = zext i8 %i.il to i16
  %i.in = shl nuw i16 %i.im, 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ih
  %i.ip = load i8, ptr %i.io, align 2, !tbaa !9
  %i.iq = zext i8 %i.ip to i16
  %i.ir = or disjoint i16 %i.in, %i.iq            ; 2 uses
  br i1 %i.ha, label %.lr.ph.i21.i.i.epil.preheader, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.preheader.i20.i.i, %.lr.ph.i21.i.i
  %.03240.i.i.i = phi i64 [ %i.jj, %.lr.ph.i21.i.i ], [ 0, %.lr.ph.preheader.i20.i.i ] ; 3 uses
  %.03339.i.i.i = phi ptr [ %i.ji, %.lr.ph.i21.i.i ], [ %i.ii, %.lr.ph.preheader.i20.i.i ] ; 2 uses
  %.138.i.i.i = phi i16 [ %i.ja, %.lr.ph.i21.i.i ], [ %i.ir, %.lr.ph.preheader.i20.i.i ]
  %niter377 = phi i64 [ %niter377.next.1, %.lr.ph.i21.i.i ], [ 0, %.lr.ph.preheader.i20.i.i ]
  %i.is = load i16, ptr %.03339.i.i.i, align 1    ; 2 uses
  %i.it = sub i16 %i.is, %.138.i.i.i              ; 2 uses
  %.neg.i.i22.i.i = ashr i16 %i.it, 15
  %i.iu = shl i16 %i.it, 1
  %i.iv = xor i16 %i.iu, %.neg.i.i22.i.i
  %i.iw = lshr i16 %i.iv, %i.ig
  %i.ix = trunc i16 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03240.i.i.i
  store i8 %i.ix, ptr %i.iy, align 2, !tbaa !9
end_hunk_0
