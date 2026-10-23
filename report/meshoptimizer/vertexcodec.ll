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
  %i.e = alloca [8 x i64], align 16               ; 14 uses
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
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ag = add i64 %3, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.am = mul nsw i64 %i.z, -3
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit
  %.091171 = phi i64 [ 0, %.preheader ], [ %i.vo, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit ] ; 4 uses
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.091171 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge.preheader.i, %bb.f
  %indvars.iv.i = phi i64 [ %i.ag, %bb.f ], [ %indvars.iv.next.i, %.critedge.preheader.i ] ; 4 uses
  %.04461.i = phi ptr [ %i.ap, %bb.f ], [ %scevgep, %.critedge.preheader.i ] ; 3 uses
  %.04660.i = phi i32 [ %i.aq, %bb.f ], [ %.lcssa357, %.critedge.preheader.i ] ; 2 uses
  %.04859.i = phi i64 [ 0, %bb.f ], [ %i.ea, %.critedge.preheader.i ]
  %i.ar = phi <8 x i64> [ zeroinitializer, %bb.f ], [ %i.dz, %.critedge.preheader.i ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %i.as = add nuw nsw i64 %umin, 1                ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.at = icmp ult i64 %indvars.iv.i, 3
  br i1 %i.at, label %.epil.preheader, label %.preheader53.i.new

.preheader53.i.new:                               ; preds = %.preheader53.i
  %unroll_iter = and i64 %i.as, 28
  br label %bb.h

.critedge.preheader.i.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.unr-lcssa, %.preheader53.i
  %.157.i.epil.init = phi ptr [ %.04461.i, %.preheader53.i ], [ %i.er, %.critedge.preheader.i.unr-lcssa ]
  %.14756.i.epil.init = phi i32 [ %.04660.i, %.preheader53.i ], [ %i.eo, %.critedge.preheader.i.unr-lcssa ]
  %.05054.i.epil.init = phi i32 [ 0, %.preheader53.i ], [ %i.eq, %.critedge.preheader.i.unr-lcssa ]
  %lcmp.mod364 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod364)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.157.i.epil = phi ptr [ %.157.i.epil.init, %.epil.preheader ], [ %i.ax, %bb.g ] ; 2 uses
  %.14756.i.epil = phi i32 [ %.14756.i.epil.init, %.epil.preheader ], [ %i.au, %bb.g ]
  %.05054.i.epil = phi i32 [ %.05054.i.epil.init, %.epil.preheader ], [ %i.aw, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.au = load i32, ptr %.157.i.epil, align 1     ; 3 uses
  %i.av = xor i32 %i.au, %.14756.i.epil
  %i.aw = or i32 %i.av, %.05054.i.epil            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.157.i.epil, i64 %4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.g, !llvm.loop !14

.critedge.preheader.i:                            ; preds = %bb.g, %.critedge.preheader.i.unr-lcssa
  %.lcssa357 = phi i32 [ %i.eo, %.critedge.preheader.i.unr-lcssa ], [ %i.au, %bb.g ]
  %.lcssa356 = phi i32 [ %i.eq, %.critedge.preheader.i.unr-lcssa ], [ %i.aw, %bb.g ] ; 17 uses
  %i.ay = add nuw nsw i64 %umin.i, 1
  %i.az = mul i64 %4, %i.ay
  %scevgep = getelementptr i8, ptr %.04461.i, i64 %i.az
  %i.ba = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 1) ; 3 uses
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 2) ; 3 uses
  %i.bc = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 3) ; 3 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 4) ; 3 uses
  %i.be = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 5) ; 3 uses
  %i.bf = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 6) ; 3 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa356, i32 %.lcssa356, i32 7) ; 3 uses
  %i.bh = trunc i32 %.lcssa356 to i8
  %i.bi = icmp ult i32 %.lcssa356, 268435456
  %i.bj = trunc i32 %i.ba to i8
  %i.bk = icmp ult i32 %i.ba, 268435456
  %i.bl = trunc i32 %i.bb to i8
  %i.bm = icmp ult i32 %i.bb, 268435456
  %i.bn = trunc i32 %i.bc to i8
  %i.bo = icmp ult i32 %i.bc, 268435456
  %i.bp = trunc i32 %i.bd to i8
  %i.bq = icmp ult i32 %i.bd, 268435456
  %i.br = trunc i32 %i.be to i8
  %i.bs = icmp ult i32 %i.be, 268435456
  %i.bt = trunc i32 %i.bf to i8
  %i.bu = icmp ult i32 %i.bf, 268435456
  %i.bv = trunc i32 %i.bg to i8
  %i.bw = insertelement <8 x i8> poison, i8 %i.bv, i64 0
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bt, i64 1
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.br, i64 2
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.bp, i64 3
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bn, i64 4
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bl, i64 5
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bj, i64 6
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bh, i64 7 ; 3 uses
  %i.ce = icmp ult <8 x i8> %i.cd, splat (i8 16)
  %i.cf = icmp samesign ult <8 x i8> %i.cd, splat (i8 4)
  %i.cg = icmp eq <8 x i8> %i.cd, zeroinitializer
  %i.ch = select <8 x i1> %i.cg, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.ci = select <8 x i1> %i.cf, <8 x i64> %i.ch, <8 x i64> splat (i64 4)
  %i.cj = select <8 x i1> %i.ce, <8 x i64> %i.ci, <8 x i64> splat (i64 8)
  %i.ck = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %i.cl = insertelement <8 x i32> %i.ck, i32 %i.bf, i64 1
  %i.cm = insertelement <8 x i32> %i.cl, i32 %i.be, i64 2
  %i.cn = insertelement <8 x i32> %i.cm, i32 %i.bd, i64 3
  %i.co = insertelement <8 x i32> %i.cn, i32 %i.bc, i64 4
  %i.cp = insertelement <8 x i32> %i.co, i32 %i.bb, i64 5
  %i.cq = insertelement <8 x i32> %i.cp, i32 %i.ba, i64 6
  %i.cr = insertelement <8 x i32> %i.cq, i32 %.lcssa356, i64 7 ; 4 uses
  %i.cs = lshr <8 x i32> %i.cr, splat (i32 8)
  %i.ct = trunc <8 x i32> %i.cs to <8 x i8>       ; 3 uses
  %i.cu = icmp ult <8 x i8> %i.ct, splat (i8 16)
  %i.cv = icmp samesign ult <8 x i8> %i.ct, splat (i8 4)
  %i.cw = icmp eq <8 x i8> %i.ct, zeroinitializer
  %i.cx = select <8 x i1> %i.cw, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.cy = select <8 x i1> %i.cv, <8 x i64> %i.cx, <8 x i64> splat (i64 4)
  %i.cz = select <8 x i1> %i.cu, <8 x i64> %i.cy, <8 x i64> splat (i64 8)
  %i.da = lshr <8 x i32> %i.cr, splat (i32 16)
  %i.db = trunc <8 x i32> %i.da to <8 x i8>       ; 3 uses
  %i.dc = icmp ult <8 x i8> %i.db, splat (i8 16)
  %i.dd = icmp samesign ult <8 x i8> %i.db, splat (i8 4)
  %i.de = icmp eq <8 x i8> %i.db, zeroinitializer
  %i.df = select <8 x i1> %i.de, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.dg = select <8 x i1> %i.dd, <8 x i64> %i.df, <8 x i64> splat (i64 4)
  %i.dh = select <8 x i1> %i.dc, <8 x i64> %i.dg, <8 x i64> splat (i64 8)
  %i.di = icmp ult i32 %i.bg, 268435456
  %i.dj = icmp ult <8 x i32> %i.cr, splat (i32 67108864)
  %i.dk = icmp ult <8 x i32> %i.cr, splat (i32 16777216)
  %i.dl = select <8 x i1> %i.dk, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %i.dm = select <8 x i1> %i.dj, <8 x i64> %i.dl, <8 x i64> splat (i64 4)
  %i.dn = insertelement <8 x i1> poison, i1 %i.di, i64 0
  %i.do = insertelement <8 x i1> %i.dn, i1 %i.bu, i64 1
  %i.dp = insertelement <8 x i1> %i.do, i1 %i.bs, i64 2
  %i.dq = insertelement <8 x i1> %i.dp, i1 %i.bq, i64 3
  %i.dr = insertelement <8 x i1> %i.dq, i1 %i.bo, i64 4
  %i.ds = insertelement <8 x i1> %i.dr, i1 %i.bm, i64 5
  %i.dt = insertelement <8 x i1> %i.ds, i1 %i.bk, i64 6
  %i.du = insertelement <8 x i1> %i.dt, i1 %i.bi, i64 7
  %i.dv = select <8 x i1> %i.du, <8 x i64> %i.dm, <8 x i64> splat (i64 8)
  %i.dw = add <8 x i64> %i.dv, %i.ar
  %i.dx = add <8 x i64> %i.dw, %i.cj
  %i.dy = add <8 x i64> %i.dx, %i.dh
  %i.dz = add <8 x i64> %i.dy, %i.cz              ; 9 uses
  %i.ea = add nuw i64 %.04859.i, 16               ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %3
  %indvars.iv.next.i = add i64 %indvars.iv.i, -16
  br i1 %i.eb, label %.preheader53.i, label %_ZN7meshoptL14estimateRotateEPKhmmmm.exit, !llvm.loop !15

bb.h:                                             ; preds = %bb.h, %.preheader53.i.new
  %.157.i = phi ptr [ %.04461.i, %.preheader53.i.new ], [ %i.er, %bb.h ] ; 2 uses
  %.14756.i = phi i32 [ %.04660.i, %.preheader53.i.new ], [ %i.eo, %bb.h ]
  %.05054.i = phi i32 [ 0, %.preheader53.i.new ], [ %i.eq, %bb.h ]
  %niter = phi i64 [ 0, %.preheader53.i.new ], [ %niter.next.3, %bb.h ]
  %i.ec = load i32, ptr %.157.i, align 1          ; 2 uses
  %i.ed = xor i32 %i.ec, %.14756.i
  %i.ee = or i32 %i.ed, %.05054.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.157.i, i64 %4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 1            ; 2 uses
  %i.eh = xor i32 %i.eg, %i.ec
  %i.ei = or i32 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 1            ; 2 uses
  %i.el = xor i32 %i.ek, %i.eg
  %i.em = or i32 %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 1            ; 4 uses
  %i.ep = xor i32 %i.eo, %i.ek
  %i.eq = or i32 %i.ep, %i.em                     ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !16

_ZN7meshoptL14estimateRotateEPKhmmmm.exit:        ; preds = %.critedge.preheader.i
  %i.es = extractelement <8 x i64> %i.dz, i64 7   ; 3 uses
  store i64 %i.es, ptr %i.e, align 16, !tbaa !36
  %i.et = extractelement <8 x i64> %i.dz, i64 6   ; 3 uses
  store i64 %i.et, ptr %i.ah, align 8, !tbaa !36
  %i.eu = extractelement <8 x i64> %i.dz, i64 5   ; 2 uses
  store i64 %i.eu, ptr %i.ai, align 16, !tbaa !36
  %i.ev = extractelement <8 x i64> %i.dz, i64 4   ; 2 uses
  store i64 %i.ev, ptr %i.aj, align 8, !tbaa !36
  %i.ew = extractelement <8 x i64> %i.dz, i64 3   ; 2 uses
  store i64 %i.ew, ptr %i.ak, align 16, !tbaa !36
  %i.ex = extractelement <8 x i64> %i.dz, i64 2   ; 2 uses
  store i64 %i.ex, ptr %i.al, align 8, !tbaa !36
  %i.ey = extractelement <8 x i64> %i.dz, i64 1   ; 2 uses
  store i64 %i.ey, ptr %7, align 16, !tbaa !36
  %i.ez = icmp ult i64 %i.et, %i.es
  %i.fa = zext i1 %i.ez to i32
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %i.es)
  %i.fc = icmp ult i64 %i.eu, %i.fb
  %i.fd = select i1 %i.fc, i32 2, i32 %i.fa       ; 2 uses
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !36
  %i.fh = icmp ult i64 %i.ev, %i.fg
  %i.fi = select i1 %i.fh, i32 3, i32 %i.fd       ; 2 uses
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !36
  %i.fm = icmp ult i64 %i.ew, %i.fl
  %i.fn = select i1 %i.fm, i32 4, i32 %i.fi       ; 2 uses
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !36
  %i.fr = icmp ult i64 %i.ex, %i.fq
  %i.fs = select i1 %i.fr, i32 5, i32 %i.fn       ; 2 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !36
  %i.fw = icmp ult i64 %i.ey, %i.fv
  %i.fx = select i1 %i.fw, i32 6, i32 %i.fs       ; 2 uses
end_hunk_0
