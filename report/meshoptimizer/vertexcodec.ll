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
  %i.e = alloca [8 x i64], align 16               ; 12 uses
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
  %i.al = mul nsw i64 %i.z, -3
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit
  %.091171 = phi i64 [ 0, %.preheader ], [ %i.zh, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit ] ; 4 uses
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.091171 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge.preheader.i, %bb.f
  %i.aq = phi i64 [ 0, %bb.f ], [ %i.gh, %.critedge.preheader.i ]
  %i.ar = phi i64 [ 0, %bb.f ], [ %i.ez, %.critedge.preheader.i ]
  %i.as = phi i64 [ 0, %bb.f ], [ %i.dr, %.critedge.preheader.i ]
  %i.at = phi i64 [ 0, %bb.f ], [ %i.cj, %.critedge.preheader.i ]
  %indvars.iv.i = phi i64 [ %i.ag, %bb.f ], [ %indvars.iv.next.i, %.critedge.preheader.i ] ; 4 uses
  %.04461.i = phi ptr [ %i.ao, %bb.f ], [ %scevgep, %.critedge.preheader.i ] ; 3 uses
  %.04660.i = phi i32 [ %i.ap, %bb.f ], [ %.lcssa356, %.critedge.preheader.i ] ; 2 uses
  %.04859.i = phi i64 [ 0, %bb.f ], [ %i.hx, %.critedge.preheader.i ]
  %i.au = phi <4 x i64> [ zeroinitializer, %bb.f ], [ %i.hw, %.critedge.preheader.i ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %i.av = add nuw nsw i64 %umin, 1                ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.aw = icmp ult i64 %indvars.iv.i, 3
  br i1 %i.aw, label %.epil.preheader, label %.preheader53.i.new

.preheader53.i.new:                               ; preds = %.preheader53.i
  %unroll_iter = and i64 %i.av, 28
  br label %bb.h

.critedge.preheader.i.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.unr-lcssa, %.preheader53.i
  %.157.i.epil.init = phi ptr [ %.04461.i, %.preheader53.i ], [ %i.io, %.critedge.preheader.i.unr-lcssa ]
  %.14756.i.epil.init = phi i32 [ %.04660.i, %.preheader53.i ], [ %i.il, %.critedge.preheader.i.unr-lcssa ]
  %.05054.i.epil.init = phi i32 [ 0, %.preheader53.i ], [ %i.in, %.critedge.preheader.i.unr-lcssa ]
  %lcmp.mod367 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod367)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.157.i.epil = phi ptr [ %.157.i.epil.init, %.epil.preheader ], [ %i.ba, %bb.g ] ; 2 uses
  %.14756.i.epil = phi i32 [ %.14756.i.epil.init, %.epil.preheader ], [ %i.ax, %bb.g ]
  %.05054.i.epil = phi i32 [ %.05054.i.epil.init, %.epil.preheader ], [ %i.az, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ax = load i32, ptr %.157.i.epil, align 1     ; 3 uses
  %i.ay = xor i32 %i.ax, %.14756.i.epil
  %i.az = or i32 %i.ay, %.05054.i.epil            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.157.i.epil, i64 %4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.g, !llvm.loop !14

.critedge.preheader.i:                            ; preds = %bb.g, %.critedge.preheader.i.unr-lcssa
  %.lcssa356 = phi i32 [ %i.il, %.critedge.preheader.i.unr-lcssa ], [ %i.ax, %bb.g ]
  %.lcssa355 = phi i32 [ %i.in, %.critedge.preheader.i.unr-lcssa ], [ %i.az, %bb.g ] ; 20 uses
  %i.bb = add nuw nsw i64 %umin.i, 1
  %i.bc = mul i64 %4, %i.bb
  %scevgep = getelementptr i8, ptr %.04461.i, i64 %i.bc
  %i.bd = trunc i32 %.lcssa355 to i8              ; 3 uses
  %i.be = icmp ult i8 %i.bd, 16
  %i.bf = icmp samesign ult i8 %i.bd, 4
  %i.bg = icmp eq i8 %i.bd, 0
  %i.bh = select i1 %i.bg, i64 0, i64 2
  %i.bi = select i1 %i.bf, i64 %i.bh, i64 4
  %i.bj = select i1 %i.be, i64 %i.bi, i64 8
  %i.bk = lshr i32 %.lcssa355, 8
  %i.bl = trunc i32 %i.bk to i8                   ; 3 uses
  %i.bm = icmp ult i8 %i.bl, 16
  %i.bn = icmp samesign ult i8 %i.bl, 4
  %i.bo = icmp eq i8 %i.bl, 0
  %i.bp = select i1 %i.bo, i64 0, i64 2
  %i.bq = select i1 %i.bn, i64 %i.bp, i64 4
  %i.br = select i1 %i.bm, i64 %i.bq, i64 8
  %i.bs = lshr i32 %.lcssa355, 16
  %i.bt = trunc i32 %i.bs to i8                   ; 3 uses
  %i.bu = icmp ult i8 %i.bt, 16
  %i.bv = icmp samesign ult i8 %i.bt, 4
  %i.bw = icmp eq i8 %i.bt, 0
  %i.bx = select i1 %i.bw, i64 0, i64 2
  %i.by = select i1 %i.bv, i64 %i.bx, i64 4
  %i.bz = select i1 %i.bu, i64 %i.by, i64 8
  %i.ca = icmp ult i32 %.lcssa355, 268435456
  %i.cb = icmp ult i32 %.lcssa355, 67108864
  %i.cc = icmp ult i32 %.lcssa355, 16777216
  %i.cd = select i1 %i.cc, i64 0, i64 2
  %i.ce = select i1 %i.cb, i64 %i.cd, i64 4
  %i.cf = select i1 %i.ca, i64 %i.ce, i64 8
  %i.cg = add i64 %i.cf, %i.at
  %i.ch = add i64 %i.cg, %i.bj
  %i.ci = add i64 %i.ch, %i.bz
  %i.cj = add i64 %i.ci, %i.br                    ; 4 uses
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 1) ; 6 uses
  %i.cl = trunc i32 %i.ck to i8                   ; 3 uses
  %i.cm = icmp ult i8 %i.cl, 16
  %i.cn = icmp samesign ult i8 %i.cl, 4
  %i.co = icmp eq i8 %i.cl, 0
  %i.cp = select i1 %i.co, i64 0, i64 2
  %i.cq = select i1 %i.cn, i64 %i.cp, i64 4
  %i.cr = select i1 %i.cm, i64 %i.cq, i64 8
  %i.cs = lshr i32 %i.ck, 8
  %i.ct = trunc i32 %i.cs to i8                   ; 3 uses
  %i.cu = icmp ult i8 %i.ct, 16
  %i.cv = icmp samesign ult i8 %i.ct, 4
  %i.cw = icmp eq i8 %i.ct, 0
  %i.cx = select i1 %i.cw, i64 0, i64 2
  %i.cy = select i1 %i.cv, i64 %i.cx, i64 4
  %i.cz = select i1 %i.cu, i64 %i.cy, i64 8
  %i.da = lshr i32 %i.ck, 16
  %i.db = trunc i32 %i.da to i8                   ; 3 uses
  %i.dc = icmp ult i8 %i.db, 16
  %i.dd = icmp samesign ult i8 %i.db, 4
  %i.de = icmp eq i8 %i.db, 0
  %i.df = select i1 %i.de, i64 0, i64 2
  %i.dg = select i1 %i.dd, i64 %i.df, i64 4
  %i.dh = select i1 %i.dc, i64 %i.dg, i64 8
  %i.di = icmp ult i32 %i.ck, 268435456
  %i.dj = icmp samesign ult i32 %i.ck, 67108864
  %i.dk = icmp samesign ult i32 %i.ck, 16777216
  %i.dl = select i1 %i.dk, i64 0, i64 2
  %i.dm = select i1 %i.dj, i64 %i.dl, i64 4
  %i.dn = select i1 %i.di, i64 %i.dm, i64 8
  %i.do = add i64 %i.dn, %i.as
  %i.dp = add i64 %i.do, %i.cr
  %i.dq = add i64 %i.dp, %i.dh
  %i.dr = add i64 %i.dq, %i.cz                    ; 4 uses
  %i.ds = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 2) ; 6 uses
  %i.dt = trunc i32 %i.ds to i8                   ; 3 uses
  %i.du = icmp ult i8 %i.dt, 16
  %i.dv = icmp samesign ult i8 %i.dt, 4
  %i.dw = icmp eq i8 %i.dt, 0
  %i.dx = select i1 %i.dw, i64 0, i64 2
  %i.dy = select i1 %i.dv, i64 %i.dx, i64 4
  %i.dz = select i1 %i.du, i64 %i.dy, i64 8
  %i.ea = lshr i32 %i.ds, 8
  %i.eb = trunc i32 %i.ea to i8                   ; 3 uses
  %i.ec = icmp ult i8 %i.eb, 16
  %i.ed = icmp samesign ult i8 %i.eb, 4
  %i.ee = icmp eq i8 %i.eb, 0
  %i.ef = select i1 %i.ee, i64 0, i64 2
  %i.eg = select i1 %i.ed, i64 %i.ef, i64 4
  %i.eh = select i1 %i.ec, i64 %i.eg, i64 8
  %i.ei = lshr i32 %i.ds, 16
  %i.ej = trunc i32 %i.ei to i8                   ; 3 uses
  %i.ek = icmp ult i8 %i.ej, 16
  %i.el = icmp samesign ult i8 %i.ej, 4
  %i.em = icmp eq i8 %i.ej, 0
  %i.en = select i1 %i.em, i64 0, i64 2
  %i.eo = select i1 %i.el, i64 %i.en, i64 4
  %i.ep = select i1 %i.ek, i64 %i.eo, i64 8
  %i.eq = icmp ult i32 %i.ds, 268435456
  %i.er = icmp samesign ult i32 %i.ds, 67108864
  %i.es = icmp samesign ult i32 %i.ds, 16777216
  %i.et = select i1 %i.es, i64 0, i64 2
  %i.eu = select i1 %i.er, i64 %i.et, i64 4
  %i.ev = select i1 %i.eq, i64 %i.eu, i64 8
  %i.ew = add i64 %i.ev, %i.ar
  %i.ex = add i64 %i.ew, %i.dz
  %i.ey = add i64 %i.ex, %i.ep
  %i.ez = add i64 %i.ey, %i.eh                    ; 3 uses
  %i.fa = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 3) ; 6 uses
  %i.fb = trunc i32 %i.fa to i8                   ; 3 uses
  %i.fc = icmp ult i8 %i.fb, 16
  %i.fd = icmp samesign ult i8 %i.fb, 4
  %i.fe = icmp eq i8 %i.fb, 0
  %i.ff = select i1 %i.fe, i64 0, i64 2
  %i.fg = select i1 %i.fd, i64 %i.ff, i64 4
  %i.fh = select i1 %i.fc, i64 %i.fg, i64 8
  %i.fi = lshr i32 %i.fa, 8
  %i.fj = trunc i32 %i.fi to i8                   ; 3 uses
  %i.fk = icmp ult i8 %i.fj, 16
  %i.fl = icmp samesign ult i8 %i.fj, 4
  %i.fm = icmp eq i8 %i.fj, 0
  %i.fn = select i1 %i.fm, i64 0, i64 2
  %i.fo = select i1 %i.fl, i64 %i.fn, i64 4
  %i.fp = select i1 %i.fk, i64 %i.fo, i64 8
  %i.fq = lshr i32 %i.fa, 16
  %i.fr = trunc i32 %i.fq to i8                   ; 3 uses
end_hunk_0
begin_hunk_1_@meshopt_encodeVertexBufferLevel:bb.a
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ot, i64 29
  %i.th = load i8, ptr %i.tf, align 1, !tbaa !9
  %i.ti = load i8, ptr %i.tg, align 1, !tbaa !9
  %i.tj = insertelement <2 x i8> poison, i8 %i.th, i64 0
  %i.tk = insertelement <2 x i8> %i.tj, i8 %i.ti, i64 1 ; 3 uses
  %i.tl = icmp ne <2 x i8> %i.tk, zeroinitializer
  %i.tm = zext <2 x i1> %i.tl to <2 x i64>
  %i.tn = add nuw nsw <2 x i64> %i.te, %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.os, i64 14
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ot, i64 30
  %i.tq = load i8, ptr %i.to, align 2, !tbaa !9
  %i.tr = load i8, ptr %i.tp, align 2, !tbaa !9
  %i.ts = insertelement <2 x i8> poison, i8 %i.tq, i64 0
  %i.tt = insertelement <2 x i8> %i.ts, i8 %i.tr, i64 1 ; 3 uses
  %i.tu = icmp ne <2 x i8> %i.tt, zeroinitializer
  %i.tv = zext <2 x i1> %i.tu to <2 x i64>
  %i.tw = add nuw nsw <2 x i64> %i.tn, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.os, i64 15
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ot, i64 31
  %i.tz = load i8, ptr %i.tx, align 1, !tbaa !9
  %i.ua = load i8, ptr %i.ty, align 1, !tbaa !9
  %i.ub = insertelement <2 x i8> poison, i8 %i.tz, i64 0
  %i.uc = insertelement <2 x i8> %i.ub, i8 %i.ua, i64 1 ; 3 uses
  %i.ud = icmp ne <2 x i8> %i.uc, zeroinitializer
  %i.ue = zext <2 x i1> %i.ud to <2 x i64>
  %i.uf = add nuw nsw <2 x i64> %i.tw, %i.ue
  %i.ug = icmp ugt <2 x i8> %i.oy, splat (i8 2)
  %i.uh = select <2 x i1> %i.ug, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.ui = icmp ugt <2 x i8> %i.pg, splat (i8 2)
  %i.uj = zext <2 x i1> %i.ui to <2 x i64>
  %i.uk = add nuw nsw <2 x i64> %i.uh, %i.uj
  %i.ul = icmp ugt <2 x i8> %i.pp, splat (i8 2)
  %i.um = zext <2 x i1> %i.ul to <2 x i64>
  %i.un = add nuw nsw <2 x i64> %i.uk, %i.um
  %i.uo = icmp ugt <2 x i8> %i.py, splat (i8 2)
  %i.up = zext <2 x i1> %i.uo to <2 x i64>
  %i.uq = add nuw nsw <2 x i64> %i.un, %i.up
  %i.ur = icmp ugt <2 x i8> %i.qh, splat (i8 2)
  %i.us = zext <2 x i1> %i.ur to <2 x i64>
  %i.ut = add nuw nsw <2 x i64> %i.uq, %i.us
  %i.uu = icmp ugt <2 x i8> %i.qq, splat (i8 2)
  %i.uv = zext <2 x i1> %i.uu to <2 x i64>
  %i.uw = add nuw nsw <2 x i64> %i.ut, %i.uv
  %i.ux = icmp ugt <2 x i8> %i.qz, splat (i8 2)
  %i.uy = zext <2 x i1> %i.ux to <2 x i64>
  %i.uz = add nuw nsw <2 x i64> %i.uw, %i.uy
  %i.va = icmp ugt <2 x i8> %i.ri, splat (i8 2)
  %i.vb = zext <2 x i1> %i.va to <2 x i64>
  %i.vc = add nuw nsw <2 x i64> %i.uz, %i.vb
  %i.vd = icmp ugt <2 x i8> %i.rr, splat (i8 2)
  %i.ve = zext <2 x i1> %i.vd to <2 x i64>
  %i.vf = add nuw nsw <2 x i64> %i.vc, %i.ve
  %i.vg = icmp ugt <2 x i8> %i.sa, splat (i8 2)
  %i.vh = zext <2 x i1> %i.vg to <2 x i64>
  %i.vi = add nuw nsw <2 x i64> %i.vf, %i.vh
  %i.vj = icmp ugt <2 x i8> %i.sj, splat (i8 2)
  %i.vk = zext <2 x i1> %i.vj to <2 x i64>
  %i.vl = add nuw nsw <2 x i64> %i.vi, %i.vk
  %i.vm = icmp ugt <2 x i8> %i.ss, splat (i8 2)
  %i.vn = zext <2 x i1> %i.vm to <2 x i64>
  %i.vo = add nuw nsw <2 x i64> %i.vl, %i.vn
  %i.vp = icmp ugt <2 x i8> %i.tb, splat (i8 2)
  %i.vq = zext <2 x i1> %i.vp to <2 x i64>
  %i.vr = add nuw nsw <2 x i64> %i.vo, %i.vq
  %i.vs = icmp ugt <2 x i8> %i.tk, splat (i8 2)
  %i.vt = zext <2 x i1> %i.vs to <2 x i64>
  %i.vu = add nuw nsw <2 x i64> %i.vr, %i.vt
  %i.vv = icmp ugt <2 x i8> %i.tt, splat (i8 2)
  %i.vw = zext <2 x i1> %i.vv to <2 x i64>
  %i.vx = add nuw nsw <2 x i64> %i.vu, %i.vw
  %i.vy = icmp ugt <2 x i8> %i.uc, splat (i8 2)
  %i.vz = zext <2 x i1> %i.vy to <2 x i64>
  %i.wa = add nuw nsw <2 x i64> %i.vx, %i.vz
  %i.wb = icmp ugt <2 x i8> %i.oy, splat (i8 14)
  %i.wc = select <2 x i1> %i.wb, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.wd = icmp ugt <2 x i8> %i.pg, splat (i8 14)
  %i.we = zext <2 x i1> %i.wd to <2 x i64>
  %i.wf = add nuw nsw <2 x i64> %i.wc, %i.we
  %i.wg = icmp ugt <2 x i8> %i.pp, splat (i8 14)
  %i.wh = zext <2 x i1> %i.wg to <2 x i64>
  %i.wi = add nuw nsw <2 x i64> %i.wf, %i.wh
  %i.wj = icmp ugt <2 x i8> %i.py, splat (i8 14)
  %i.wk = zext <2 x i1> %i.wj to <2 x i64>
  %i.wl = add nuw nsw <2 x i64> %i.wi, %i.wk
  %i.wm = icmp ugt <2 x i8> %i.qh, splat (i8 14)
  %i.wn = zext <2 x i1> %i.wm to <2 x i64>
  %i.wo = add nuw nsw <2 x i64> %i.wl, %i.wn
  %i.wp = icmp ugt <2 x i8> %i.qq, splat (i8 14)
  %i.wq = zext <2 x i1> %i.wp to <2 x i64>
  %i.wr = add nuw nsw <2 x i64> %i.wo, %i.wq
  %i.ws = icmp ugt <2 x i8> %i.qz, splat (i8 14)
  %i.wt = zext <2 x i1> %i.ws to <2 x i64>
  %i.wu = add nuw nsw <2 x i64> %i.wr, %i.wt
  %i.wv = icmp ugt <2 x i8> %i.ri, splat (i8 14)
  %i.ww = zext <2 x i1> %i.wv to <2 x i64>
  %i.wx = add nuw nsw <2 x i64> %i.wu, %i.ww
  %i.wy = icmp ugt <2 x i8> %i.rr, splat (i8 14)
  %i.wz = zext <2 x i1> %i.wy to <2 x i64>
  %i.xa = add nuw nsw <2 x i64> %i.wx, %i.wz
  %i.xb = icmp ugt <2 x i8> %i.sa, splat (i8 14)
  %i.xc = zext <2 x i1> %i.xb to <2 x i64>
  %i.xd = add nuw nsw <2 x i64> %i.xa, %i.xc
  %i.xe = icmp ugt <2 x i8> %i.sj, splat (i8 14)
  %i.xf = zext <2 x i1> %i.xe to <2 x i64>
  %i.xg = add nuw nsw <2 x i64> %i.xd, %i.xf
  %i.xh = icmp ugt <2 x i8> %i.ss, splat (i8 14)
  %i.xi = zext <2 x i1> %i.xh to <2 x i64>
  %i.xj = add nuw nsw <2 x i64> %i.xg, %i.xi
  %i.xk = icmp ugt <2 x i8> %i.tb, splat (i8 14)
  %i.xl = zext <2 x i1> %i.xk to <2 x i64>
  %i.xm = add nuw nsw <2 x i64> %i.xj, %i.xl
  %i.xn = icmp ugt <2 x i8> %i.tk, splat (i8 14)
  %i.xo = zext <2 x i1> %i.xn to <2 x i64>
  %i.xp = add nuw nsw <2 x i64> %i.xm, %i.xo
  %i.xq = icmp ugt <2 x i8> %i.tt, splat (i8 14)
  %i.xr = zext <2 x i1> %i.xq to <2 x i64>
  %i.xs = add nuw nsw <2 x i64> %i.xp, %i.xr
  %i.xt = icmp ugt <2 x i8> %i.uc, splat (i8 14)
  %i.xu = zext <2 x i1> %i.xt to <2 x i64>
  %i.xv = add nuw nsw <2 x i64> %i.xs, %i.xu
  %i.xw = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.uf, <2 x i64> %i.wa)
  %i.xx = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.xw, <2 x i64> %i.xv)
  %i.xy = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.xx, <2 x i64> splat (i64 16))
  %i.xz = add <2 x i64> %i.xy, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ya = icmp eq i64 %index.next, %n.vec
  br i1 %i.ya, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %i.yb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.xz) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.promoted.i104, %.lr.ph.i ], [ %i.yb, %middle.block ]
  %.07078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ky, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa294 = phi i64 [ %i.yb, %middle.block ], [ %i.yr, %scalar.ph ]
  store i64 %.lcssa294, ptr %i.lc, align 8, !tbaa !36
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i: ; preds = %._crit_edge.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i, %bb.r, %bb.q, %bb.p
  %i.yc = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.yc, 4
  br i1 %exitcond.not.i105, label %bb.n, label %bb.o, !llvm.loop !23

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.yd = phi i64 [ %i.yr, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.07078.i = phi i64 [ %i.ys, %scalar.ph ], [ %.07078.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07078.i
  %i.yf = load <16 x i8>, ptr %i.ye, align 16, !tbaa !9 ; 3 uses
  %.not333 = icmp eq <16 x i8> %i.yf, zeroinitializer
  %i.yg = select <16 x i1> %.not333, <16 x i64> <i64 2, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> <i64 3, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>
  %i.yh = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.yg)
  %i.yi = icmp ugt <16 x i8> %i.yf, splat (i8 2)
  %i.yj = select <16 x i1> %i.yi, <16 x i64> <i64 5, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.yk = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.yj)
  %i.yl = icmp ugt <16 x i8> %i.yf, splat (i8 14)
  %i.ym = select <16 x i1> %i.yl, <16 x i64> <i64 9, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 8, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.yn = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.ym)
  %i.yo = tail call i64 @llvm.umin.i64(i64 %i.yh, i64 %i.yk)
  %i.yp = tail call i64 @llvm.umin.i64(i64 %i.yo, i64 %i.yn)
  %i.yq = tail call i64 @llvm.umin.i64(i64 %i.yp, i64 16)
  %i.yr = add i64 %i.yq, %i.yd                    ; 2 uses
  %i.ys = add nuw nsw i64 %.07078.i, 16           ; 2 uses
  %i.yt = icmp ult i64 %i.ys, %i.kg
  br i1 %i.yt, label %scalar.ph, label %._crit_edge.i, !llvm.loop !24

.preheader.i:                                     ; preds = %bb.m
  %.pre.i = load i64, ptr %i.d, align 16, !tbaa !36 ; 2 uses
  %i.yu = load i64, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %.pre.i
  %i.yw = zext i1 %i.yv to i32                    ; 2 uses
  br i1 %i.ae, label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.yx = tail call i64 @llvm.umin.i64(i64 %i.yu, i64 %.pre.i)
  %i.yy = load i64, ptr %i.an, align 16, !tbaa !36
  %i.yz = icmp ult i64 %i.yy, %i.yx
  %i.za = select i1 %i.yz, i32 2, i32 %i.yw
  br label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit

_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit:    ; preds = %.preheader.i.1, %.preheader.i
  %.lcssa364 = phi i32 [ %i.yw, %.preheader.i ], [ %i.za, %.preheader.i.1 ] ; 2 uses
  %i.zb = icmp eq i32 %.lcssa364, 2
  %i.zc = or disjoint i32 %i.jy, 2
  %i.zd = select i1 %i.zb, i32 %i.zc, i32 %.lcssa364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ze = trunc i32 %i.zd to i8
  %i.zf = lshr exact i64 %.091171, 2
  %i.zg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.zf
  store i8 %i.ze, ptr %i.zg, align 1, !tbaa !9
  %i.zh = add i64 %.091171, 4                     ; 2 uses
  %i.zi = icmp ult i64 %i.zh, %4
  br i1 %i.zi, label %bb.e, label %.loopexit145, !llvm.loop !25

.loopexit145:                                     ; preds = %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, %bb.d
  %i.zj = lshr i64 %4, 2                          ; 3 uses
  %i.zk = select i1 %i.aa, i64 %i.zj, i64 0       ; 4 uses
  %i.zl = icmp eq i32 %5, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %.loopexit145
  %.093 = phi ptr [ %i.r, %.loopexit145 ], [ %.26095.i, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 11 uses
  %.0 = phi i64 [ 0, %.loopexit145 ], [ %i.bam, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 6 uses
  %i.zm = icmp ult i64 %.0, %3
  br i1 %i.zm, label %bb.t, label %bb.au

bb.t:                                             ; preds = %bb.s
  %i.zn = add i64 %.0, %i.z                       ; 2 uses
  %i.zo = icmp ult i64 %i.zn, %3
  %i.zp = sub nuw i64 %3, %.0
  %i.zq = select i1 %i.zo, i64 %i.z, i64 %i.zp    ; 19 uses
  %i.zr = mul i64 %.0, %4
  %i.zs = getelementptr inbounds nuw i8, ptr %2, i64 %i.zr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.zt = add i64 %i.zq, 15                       ; 2 uses
  %i.zu = and i64 %i.zt, -16                      ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.zv = ptrtoint ptr %.093 to i64
  %i.zw = sub i64 %i.m, %i.zv
  %i.zx = icmp ult i64 %i.zw, %i.zk
  br i1 %i.zx, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.t
  %i.zy = getelementptr inbounds nuw i8, ptr %.093, i64 %i.zk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.zk, i1 false)
  %.not.i25.i.i108 = icmp eq i64 %i.zq, 0         ; 3 uses
  %i.zz = icmp eq i64 %i.zu, 0                    ; 3 uses
  %i.aaa = lshr i64 %i.zt, 4
  %i.aab = add nuw nsw i64 %i.aaa, 3
  %i.aac = lshr i64 %i.aab, 2                     ; 6 uses
  %umin387 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.zn)
  %i.aad = xor i64 %.0, -1
  %i.aae = add i64 %umin387, %i.aad               ; 3 uses
  %xtraiter388 = and i64 %i.zq, 1
  %i.aaf = icmp eq i64 %i.aae, 0
  %unroll_iter392 = and i64 %i.zq, -2
  %lcmp.mod390.not = icmp eq i64 %xtraiter388, 0
  %lcmp.mod391 = trunc i64 %i.zq to i1
  %xtraiter394 = and i64 %i.zq, 1
  %i.aag = icmp eq i64 %i.aae, 0
  %unroll_iter398 = and i64 %i.zq, -2
  %lcmp.mod396.not = icmp eq i64 %xtraiter394, 0
  %lcmp.mod397 = trunc i64 %i.zq to i1
  %xtraiter400 = and i64 %i.zq, 1
  %i.aah = icmp eq i64 %i.aae, 0
  %unroll_iter404 = and i64 %i.zq, -2
  %lcmp.mod402.not = icmp eq i64 %xtraiter400, 0
  %lcmp.mod403 = trunc i64 %i.zq to i1
  %i.aai = add i64 %i.zq, -1
  %i.aaj = lshr i64 %i.aai, 4                     ; 2 uses
  %i.aak = add nuw nsw i64 %i.aaj, 1              ; 2 uses
  %min.iters.check297 = icmp eq i64 %i.aaj, 0
  %n.vec299 = and i64 %i.aak, 2305843009213693950 ; 3 uses
  %i.aal = shl i64 %n.vec299, 4
  %i.aam = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aac, i64 0 ; 2 uses
  %cmp.n307 = icmp eq i64 %i.aak, %n.vec299
  br label %bb.u

bb.u:                                             ; preds = %.thread92.i, %.lr.ph.i107
  %.054120.i = phi i64 [ 0, %.lr.ph.i107 ], [ %i.bai, %.thread92.i ] ; 17 uses
  %.058119.i = phi ptr [ %i.zy, %.lr.ph.i107 ], [ %.26095.i, %.thread92.i ] ; 8 uses
  br i1 %i.aa, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.aan = lshr i64 %.054120.i, 2
  %i.aao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !9
  %i.aaq = zext i8 %i.aap to i32                  ; 2 uses
  %i.aar = and i32 %i.aaq, 3
  switch i32 %i.aar, label %default.unreachable [
    i32 0, label %.thread.i
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109
  ]

.thread.i:                                        ; preds = %bb.v, %bb.u
  br i1 %.not.i25.i.i108, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.preheader.i.i.i127

.lr.ph.preheader.i.i.i127:                        ; preds = %.thread.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.054120.i ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.g, i64 %.054120.i
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !9 ; 2 uses
  br i1 %i.aah, label %.lr.ph.i.i.i128.epil.preheader, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %.lr.ph.preheader.i.i.i127, %.lr.ph.i.i.i128
  %.03238.i.i.i129 = phi i64 [ %i.abi, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ] ; 3 uses
  %.03337.i.i.i130 = phi ptr [ %i.abh, %.lr.ph.i.i.i128 ], [ %i.aas, %.lr.ph.preheader.i.i.i127 ] ; 2 uses
  %.136.i.i.i131 = phi i8 [ %i.abb, %.lr.ph.i.i.i128 ], [ %i.aau, %.lr.ph.preheader.i.i.i127 ]
  %niter405 = phi i64 [ %niter405.next.1, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ]
  %i.aav = load i8, ptr %.03337.i.i.i130, align 1, !tbaa !9 ; 2 uses
  %i.aaw = sub i8 %i.aav, %.136.i.i.i131          ; 2 uses
  %.neg.i.i.i.i132 = ashr i8 %i.aaw, 7
  %i.aax = shl i8 %i.aaw, 1
  %i.aay = xor i8 %i.aax, %.neg.i.i.i.i132
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  store i8 %i.aay, ptr %i.aaz, align 2, !tbaa !9
  %i.aba = getelementptr inbounds nuw i8, ptr %.03337.i.i.i130, i64 %4 ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !9 ; 3 uses
  %i.abc = sub i8 %i.abb, %i.aav                  ; 2 uses
  %.neg.i.i.i.i132.1 = ashr i8 %i.abc, 7
  %i.abd = shl i8 %i.abc, 1
  %i.abe = xor i8 %i.abd, %.neg.i.i.i.i132.1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 1
  store i8 %i.abe, ptr %i.abg, align 1, !tbaa !9
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 %4 ; 2 uses
  %i.abi = add nuw nsw i64 %.03238.i.i.i129, 2    ; 2 uses
  %niter405.next.1 = add i64 %niter405, 2         ; 2 uses
  %niter405.ncmp.1 = icmp eq i64 %niter405.next.1, %unroll_iter404
  br i1 %niter405.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, label %.lr.ph.i.i.i128, !llvm.loop !19

bb.w:                                             ; preds = %bb.v
  %.tr.i.i.i119 = trunc i64 %.054120.i to i16
  %i.abj = shl i16 %.tr.i.i.i119, 3
  %i.abk = and i16 %i.abj, 8                      ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i20.i.i120

.lr.ph.preheader.i20.i.i120:                      ; preds = %bb.w
  %i.abl = and i64 %.054120.i, -2                 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.abl ; 2 uses
  %i.abn = or i64 %.054120.i, 1
  %i.abo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !9
  %i.abq = zext i8 %i.abp to i16
  %i.abr = shl nuw i16 %i.abq, 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.abl
  %i.abt = load i8, ptr %i.abs, align 2, !tbaa !9
  %i.abu = zext i8 %i.abt to i16
  %i.abv = or disjoint i16 %i.abr, %i.abu         ; 2 uses
  br i1 %i.aag, label %.lr.ph.i21.i.i121.epil.preheader, label %.lr.ph.i21.i.i121

.lr.ph.i21.i.i121:                                ; preds = %.lr.ph.preheader.i20.i.i120, %.lr.ph.i21.i.i121
  %.03240.i.i.i122 = phi i64 [ %i.acn, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ] ; 3 uses
  %.03339.i.i.i123 = phi ptr [ %i.acm, %.lr.ph.i21.i.i121 ], [ %i.abm, %.lr.ph.preheader.i20.i.i120 ] ; 2 uses
  %.138.i.i.i124 = phi i16 [ %i.ace, %.lr.ph.i21.i.i121 ], [ %i.abv, %.lr.ph.preheader.i20.i.i120 ]
  %niter399 = phi i64 [ %niter399.next.1, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ]
  %i.abw = load i16, ptr %.03339.i.i.i123, align 1 ; 2 uses
  %i.abx = sub i16 %i.abw, %.138.i.i.i124         ; 2 uses
  %.neg.i.i22.i.i125 = ashr i16 %i.abx, 15
  %i.aby = shl i16 %i.abx, 1
  %i.abz = xor i16 %i.aby, %.neg.i.i22.i.i125
  %i.aca = lshr i16 %i.abz, %i.abk
  %i.acb = trunc i16 %i.aca to i8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  store i8 %i.acb, ptr %i.acc, align 2, !tbaa !9
  %i.acd = getelementptr inbounds nuw i8, ptr %.03339.i.i.i123, i64 %4 ; 2 uses
  %i.ace = load i16, ptr %i.acd, align 1          ; 3 uses
  %i.acf = sub i16 %i.ace, %i.abw                 ; 2 uses
  %.neg.i.i22.i.i125.1 = ashr i16 %i.acf, 15
  %i.acg = shl i16 %i.acf, 1
  %i.ach = xor i16 %i.acg, %.neg.i.i22.i.i125.1
  %i.aci = lshr i16 %i.ach, %i.abk
  %i.acj = trunc i16 %i.aci to i8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 1
  store i8 %i.acj, ptr %i.acl, align 1, !tbaa !9
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acd, i64 %4 ; 2 uses
  %i.acn = add nuw nsw i64 %.03240.i.i.i122, 2    ; 2 uses
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, label %.lr.ph.i21.i.i121, !llvm.loop !20

bb.x:                                             ; preds = %bb.v
  %i.aco = lshr i32 %i.aaq, 4                     ; 3 uses
  %.tr.i24.i.i112 = trunc i64 %.054120.i to i32
  %i.acp = shl i32 %.tr.i24.i.i112, 3
  %i.acq = and i32 %i.acp, 24                     ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i26.i.i113

.lr.ph.preheader.i26.i.i113:                      ; preds = %bb.x
  %i.acr = and i64 %.054120.i, -4                 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.acr ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.acr
  %i.acu = load i32, ptr %i.act, align 4          ; 2 uses
  br i1 %i.aaf, label %.lr.ph.i27.i.i114.epil.preheader, label %.lr.ph.i27.i.i114

.lr.ph.i27.i.i114:                                ; preds = %.lr.ph.preheader.i26.i.i113, %.lr.ph.i27.i.i114
  %.03343.i.i.i115 = phi i64 [ %i.adk, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ] ; 3 uses
  %.03442.i.i.i116 = phi ptr [ %i.adj, %.lr.ph.i27.i.i114 ], [ %i.acs, %.lr.ph.preheader.i26.i.i113 ] ; 2 uses
  %.141.i.i.i117 = phi i32 [ %i.adc, %.lr.ph.i27.i.i114 ], [ %i.acu, %.lr.ph.preheader.i26.i.i113 ]
  %niter393 = phi i64 [ %niter393.next.1, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ]
  %i.acv = load i32, ptr %.03442.i.i.i116, align 1 ; 2 uses
  %i.acw = xor i32 %i.acv, %.141.i.i.i117         ; 2 uses
  %i.acx = tail call noundef i32 @llvm.fshl.i32(i32 %i.acw, i32 %i.acw, i32 range(i32 -134217728, 134217728) %i.aco)
  %i.acy = lshr i32 %i.acx, %i.acq
  %i.acz = trunc i32 %i.acy to i8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  store i8 %i.acz, ptr %i.ada, align 2, !tbaa !9
  %i.adb = getelementptr inbounds nuw i8, ptr %.03442.i.i.i116, i64 %4 ; 2 uses
  %i.adc = load i32, ptr %i.adb, align 1          ; 3 uses
  %i.add = xor i32 %i.adc, %i.acv                 ; 2 uses
  %i.ade = tail call noundef i32 @llvm.fshl.i32(i32 %i.add, i32 %i.add, i32 range(i32 -134217728, 134217728) %i.aco)
  %i.adf = lshr i32 %i.ade, %i.acq
  %i.adg = trunc i32 %i.adf to i8
  %i.adh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 1
  store i8 %i.adg, ptr %i.adi, align 1, !tbaa !9
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adb, i64 %4 ; 2 uses
  %i.adk = add nuw nsw i64 %.03343.i.i.i115, 2    ; 2 uses
  %niter393.next.1 = add i64 %niter393, 2         ; 2 uses
  %niter393.ncmp.1 = icmp eq i64 %niter393.next.1, %unroll_iter392
  br i1 %niter393.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa, label %.lr.ph.i27.i.i114, !llvm.loop !21

default.unreachable:                              ; preds = %bb.v
  unreachable

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i128
  br i1 %lcmp.mod402.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.i.i.i128.epil.preheader

.lr.ph.i.i.i128.epil.preheader:                   ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i127
  %.03238.i.i.i129.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i127 ], [ %i.abi, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.03337.i.i.i130.epil.init = phi ptr [ %i.aas, %.lr.ph.preheader.i.i.i127 ], [ %i.abh, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.136.i.i.i131.epil.init = phi i8 [ %i.aau, %.lr.ph.preheader.i.i.i127 ], [ %i.abb, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.adl = load i8, ptr %.03337.i.i.i130.epil.init, align 1, !tbaa !9
  %i.adm = sub i8 %i.adl, %.136.i.i.i131.epil.init ; 2 uses
  %.neg.i.i.i.i132.epil = ashr i8 %i.adm, 7
  %i.adn = shl i8 %i.adm, 1
  %i.ado = xor i8 %i.adn, %.neg.i.i.i.i132.epil
  %i.adp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129.epil.init
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134: ; preds = %.lr.ph.i.i.i128.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.thread.i
  br i1 %i.aa, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.thread79.i

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa: ; preds = %.lr.ph.i21.i.i121
  br i1 %lcmp.mod396.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i21.i.i121.epil.preheader

.lr.ph.i21.i.i121.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %.lr.ph.preheader.i20.i.i120
  %.03240.i.i.i122.epil.init = phi i64 [ 0, %.lr.ph.preheader.i20.i.i120 ], [ %i.acn, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.03339.i.i.i123.epil.init = phi ptr [ %i.abm, %.lr.ph.preheader.i20.i.i120 ], [ %i.acm, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.138.i.i.i124.epil.init = phi i16 [ %i.abv, %.lr.ph.preheader.i20.i.i120 ], [ %i.ace, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod397)
  %i.adq = load i16, ptr %.03339.i.i.i123.epil.init, align 1
  %i.adr = sub i16 %i.adq, %.138.i.i.i124.epil.init ; 2 uses
  %.neg.i.i22.i.i125.epil = ashr i16 %i.adr, 15
  %i.ads = shl i16 %i.adr, 1
  %i.adt = xor i16 %i.ads, %.neg.i.i22.i.i125.epil
  %i.adu = lshr i16 %i.adt, %i.abk
  %i.adv = trunc i16 %i.adu to i8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122.epil.init
  store i8 %i.adv, ptr %i.adw, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa: ; preds = %.lr.ph.i27.i.i114
  br i1 %lcmp.mod390.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i27.i.i114.epil.preheader

.lr.ph.i27.i.i114.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa, %.lr.ph.preheader.i26.i.i113
  %.03343.i.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i26.i.i113 ], [ %i.adk, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa ]
  %.03442.i.i.i116.epil.init = phi ptr [ %i.acs, %.lr.ph.preheader.i26.i.i113 ], [ %i.adj, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa ]
  %.141.i.i.i117.epil.init = phi i32 [ %i.acu, %.lr.ph.preheader.i26.i.i113 ], [ %i.adc, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod391)
  %i.adx = load i32, ptr %.03442.i.i.i116.epil.init, align 1
  %i.ady = xor i32 %i.adx, %.141.i.i.i117.epil.init ; 2 uses
  %i.adz = tail call noundef i32 @llvm.fshl.i32(i32 %i.ady, i32 %i.ady, i32 range(i32 -134217728, 134217728) %i.aco)
  %i.aea = lshr i32 %i.adz, %i.acq
  %i.aeb = trunc i32 %i.aea to i8
  %i.aec = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115.epil.init
  store i8 %i.aeb, ptr %i.aec, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109: ; preds = %.lr.ph.i27.i.i114.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit336.unr-lcssa, %.lr.ph.i21.i.i121.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, %bb.v
  br i1 %i.zz, label %.thread82.i, label %.lr.ph.i.i71.i

bb.y:                                             ; preds = %.lr.ph.i.i71.i
  %i.aed = add nuw nsw i64 %.069.i.i.i, 16        ; 2 uses
  %.not.i.i72.i = icmp ult i64 %i.aed, %i.zu
  br i1 %.not.i.i72.i, label %.lr.ph.i.i71.i, label %.thread82.i, !llvm.loop !26

.lr.ph.i.i71.i:                                   ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, %bb.y
  %.069.i.i.i = phi i64 [ %i.aed, %bb.y ], [ 0, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109 ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.069.i.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %i.aee, align 16
  %i.aef = getelementptr i8, ptr %i.aee, i64 8
  %.val8.i.i.i = load i64, ptr %i.aef, align 8
  %i.aeg = or i64 %.val8.i.i.i, %.val.i.i.i
  %i.aeh = icmp eq i64 %i.aeg, 0
  br i1 %i.aeh, label %bb.y, label %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i

_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i:  ; preds = %.lr.ph.i.i71.i
  br i1 %i.zl, label %.thread85.i, label %.preheader.i110.preheader

.preheader.i110.preheader:                        ; preds = %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i
  br i1 %min.iters.check297, label %.preheader.i110.preheader335, label %vector.body300

vector.body300:                                   ; preds = %.preheader.i110.preheader, %vector.body300
  %index301 = phi i64 [ %index.next305, %vector.body300 ], [ 0, %.preheader.i110.preheader ] ; 2 uses
  %vec.phi302 = phi <2 x i64> [ %i.alb, %vector.body300 ], [ %i.aam, %.preheader.i110.preheader ]
  %vec.phi303 = phi <2 x i64> [ %i.ald, %vector.body300 ], [ %i.aam, %.preheader.i110.preheader ]
  %i.aei = shl nuw i64 %index301, 4
  %i.aej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aei
  %wide.vec = load <4 x i64>, ptr %i.aej, align 16 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2> ; 11 uses
  %strided.vec304 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3> ; 11 uses
  %i.aek = or <2 x i64> %strided.vec304, %strided.vec
  %i.ael = icmp ne <2 x i64> %i.aek, zeroinitializer
  %i.aem = sext <2 x i1> %i.ael to <2 x i64>
  %i.aen = trunc <2 x i64> %strided.vec to <2 x i8> ; 3 uses
  %i.aeo = icmp eq <2 x i8> %i.aen, zeroinitializer
  %i.aep = select <2 x i1> %i.aeo, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.aeq = lshr <2 x i64> %strided.vec, splat (i64 8)
  %i.aer = trunc <2 x i64> %i.aeq to <2 x i8>     ; 3 uses
  %i.aes = icmp ne <2 x i8> %i.aer, zeroinitializer
  %i.aet = zext <2 x i1> %i.aes to <2 x i64>
  %i.aeu = lshr <2 x i64> %strided.vec, splat (i64 16)
  %i.aev = trunc <2 x i64> %i.aeu to <2 x i8>     ; 3 uses
  %i.aew = icmp ne <2 x i8> %i.aev, zeroinitializer
  %i.aex = zext <2 x i1> %i.aew to <2 x i64>
  %i.aey = lshr <2 x i64> %strided.vec, splat (i64 24)
  %i.aez = trunc <2 x i64> %i.aey to <2 x i8>     ; 3 uses
  %i.afa = icmp ne <2 x i8> %i.aez, zeroinitializer
  %i.afb = zext <2 x i1> %i.afa to <2 x i64>
  %i.afc = lshr <2 x i64> %strided.vec, splat (i64 32)
  %i.afd = trunc <2 x i64> %i.afc to <2 x i8>     ; 3 uses
  %i.afe = icmp ne <2 x i8> %i.afd, zeroinitializer
  %i.aff = zext <2 x i1> %i.afe to <2 x i64>
  %i.afg = lshr <2 x i64> %strided.vec, splat (i64 40)
  %i.afh = trunc <2 x i64> %i.afg to <2 x i8>     ; 3 uses
  %i.afi = icmp ne <2 x i8> %i.afh, zeroinitializer
  %i.afj = zext <2 x i1> %i.afi to <2 x i64>
  %i.afk = lshr <2 x i64> %strided.vec, splat (i64 48)
  %i.afl = trunc <2 x i64> %i.afk to <2 x i8>     ; 3 uses
  %i.afm = icmp ne <2 x i8> %i.afl, zeroinitializer
  %i.afn = zext <2 x i1> %i.afm to <2 x i64>
  %i.afo = icmp ugt <2 x i64> %strided.vec, splat (i64 72057594037927935)
  %i.afp = zext <2 x i1> %i.afo to <2 x i64>
  %i.afq = trunc <2 x i64> %strided.vec304 to <2 x i8> ; 3 uses
  %i.afr = icmp ne <2 x i8> %i.afq, zeroinitializer
  %i.afs = zext <2 x i1> %i.afr to <2 x i64>
  %i.aft = lshr <2 x i64> %strided.vec304, splat (i64 8)
  %i.afu = trunc <2 x i64> %i.aft to <2 x i8>     ; 3 uses
  %i.afv = icmp ne <2 x i8> %i.afu, zeroinitializer
  %i.afw = zext <2 x i1> %i.afv to <2 x i64>
  %i.afx = lshr <2 x i64> %strided.vec304, splat (i64 16)
  %i.afy = trunc <2 x i64> %i.afx to <2 x i8>     ; 3 uses
  %i.afz = icmp ne <2 x i8> %i.afy, zeroinitializer
  %i.aga = zext <2 x i1> %i.afz to <2 x i64>
  %i.agb = lshr <2 x i64> %strided.vec304, splat (i64 24)
  %i.agc = trunc <2 x i64> %i.agb to <2 x i8>     ; 3 uses
  %i.agd = icmp ne <2 x i8> %i.agc, zeroinitializer
  %i.age = zext <2 x i1> %i.agd to <2 x i64>
  %i.agf = lshr <2 x i64> %strided.vec304, splat (i64 32)
  %i.agg = trunc <2 x i64> %i.agf to <2 x i8>     ; 3 uses
  %i.agh = icmp ne <2 x i8> %i.agg, zeroinitializer
  %i.agi = zext <2 x i1> %i.agh to <2 x i64>
  %i.agj = lshr <2 x i64> %strided.vec304, splat (i64 40)
  %i.agk = trunc <2 x i64> %i.agj to <2 x i8>     ; 3 uses
  %i.agl = icmp ne <2 x i8> %i.agk, zeroinitializer
  %i.agm = zext <2 x i1> %i.agl to <2 x i64>
  %i.agn = lshr <2 x i64> %strided.vec304, splat (i64 48)
  %i.ago = trunc <2 x i64> %i.agn to <2 x i8>     ; 3 uses
  %i.agp = icmp ne <2 x i8> %i.ago, zeroinitializer
  %i.agq = zext <2 x i1> %i.agp to <2 x i64>
  %i.agr = icmp ugt <2 x i64> %strided.vec304, splat (i64 72057594037927935)
  %i.ags = zext <2 x i1> %i.agr to <2 x i64>
  %i.agt = add nuw nsw <2 x i64> %i.aep, %i.afp
  %i.agu = add nuw nsw <2 x i64> %i.agt, %i.ags
  %i.agv = add nuw nsw <2 x i64> %i.agu, %i.aet
  %i.agw = add nuw nsw <2 x i64> %i.agv, %i.aex
  %i.agx = add nuw nsw <2 x i64> %i.agw, %i.afb
  %i.agy = add nuw nsw <2 x i64> %i.agx, %i.aff
  %i.agz = add nuw nsw <2 x i64> %i.agy, %i.afj
  %i.aha = add nuw nsw <2 x i64> %i.agz, %i.afn
  %i.ahb = add nuw nsw <2 x i64> %i.aha, %i.afs
  %i.ahc = add nuw nsw <2 x i64> %i.ahb, %i.afw
  %i.ahd = add nuw nsw <2 x i64> %i.ahc, %i.aga
  %i.ahe = add nuw nsw <2 x i64> %i.ahd, %i.age
  %i.ahf = add nuw nsw <2 x i64> %i.ahe, %i.agi
  %i.ahg = add nuw nsw <2 x i64> %i.ahf, %i.agm
  %i.ahh = add nuw nsw <2 x i64> %i.ahg, %i.agq
  %i.ahi = icmp ugt <2 x i8> %i.aen, splat (i8 2)
  %i.ahj = select <2 x i1> %i.ahi, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.ahk = icmp ugt <2 x i8> %i.aer, splat (i8 2)
  %i.ahl = zext <2 x i1> %i.ahk to <2 x i64>
  %i.ahm = icmp ugt <2 x i8> %i.aev, splat (i8 2)
  %i.ahn = zext <2 x i1> %i.ahm to <2 x i64>
  %i.aho = icmp ugt <2 x i8> %i.aez, splat (i8 2)
  %i.ahp = zext <2 x i1> %i.aho to <2 x i64>
  %i.ahq = icmp ugt <2 x i8> %i.afd, splat (i8 2)
  %i.ahr = zext <2 x i1> %i.ahq to <2 x i64>
  %i.ahs = icmp ugt <2 x i8> %i.afh, splat (i8 2)
  %i.aht = zext <2 x i1> %i.ahs to <2 x i64>
  %i.ahu = icmp ugt <2 x i8> %i.afl, splat (i8 2)
  %i.ahv = zext <2 x i1> %i.ahu to <2 x i64>
  %i.ahw = icmp ugt <2 x i64> %strided.vec, splat (i64 216172782113783807)
  %i.ahx = zext <2 x i1> %i.ahw to <2 x i64>
  %i.ahy = icmp ugt <2 x i8> %i.afq, splat (i8 2)
  %i.ahz = zext <2 x i1> %i.ahy to <2 x i64>
  %i.aia = icmp ugt <2 x i8> %i.afu, splat (i8 2)
  %i.aib = zext <2 x i1> %i.aia to <2 x i64>
  %i.aic = icmp ugt <2 x i8> %i.afy, splat (i8 2)
  %i.aid = zext <2 x i1> %i.aic to <2 x i64>
  %i.aie = icmp ugt <2 x i8> %i.agc, splat (i8 2)
  %i.aif = zext <2 x i1> %i.aie to <2 x i64>
  %i.aig = icmp ugt <2 x i8> %i.agg, splat (i8 2)
  %i.aih = zext <2 x i1> %i.aig to <2 x i64>
  %i.aii = icmp ugt <2 x i8> %i.agk, splat (i8 2)
  %i.aij = zext <2 x i1> %i.aii to <2 x i64>
  %i.aik = icmp ugt <2 x i8> %i.ago, splat (i8 2)
  %i.ail = zext <2 x i1> %i.aik to <2 x i64>
  %i.aim = icmp ugt <2 x i64> %strided.vec304, splat (i64 216172782113783807)
  %i.ain = zext <2 x i1> %i.aim to <2 x i64>
  %i.aio = add nuw nsw <2 x i64> %i.ahj, %i.ahx
  %i.aip = add nuw nsw <2 x i64> %i.aio, %i.ain
  %i.aiq = add nuw nsw <2 x i64> %i.aip, %i.ahl
  %i.air = add nuw nsw <2 x i64> %i.aiq, %i.ahn
  %i.ais = add nuw nsw <2 x i64> %i.air, %i.ahp
  %i.ait = add nuw nsw <2 x i64> %i.ais, %i.ahr
  %i.aiu = add nuw nsw <2 x i64> %i.ait, %i.aht
  %i.aiv = add nuw nsw <2 x i64> %i.aiu, %i.ahv
  %i.aiw = add nuw nsw <2 x i64> %i.aiv, %i.ahz
  %i.aix = add nuw nsw <2 x i64> %i.aiw, %i.aib
  %i.aiy = add nuw nsw <2 x i64> %i.aix, %i.aid
  %i.aiz = add nuw nsw <2 x i64> %i.aiy, %i.aif
  %i.aja = add nuw nsw <2 x i64> %i.aiz, %i.aih
  %i.ajb = add nuw nsw <2 x i64> %i.aja, %i.aij
  %i.ajc = add nuw nsw <2 x i64> %i.ajb, %i.ail
  %i.ajd = icmp ugt <2 x i8> %i.aen, splat (i8 14)
  %i.aje = select <2 x i1> %i.ajd, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.ajf = icmp ugt <2 x i8> %i.aer, splat (i8 14)
  %i.ajg = zext <2 x i1> %i.ajf to <2 x i64>
  %i.ajh = icmp ugt <2 x i8> %i.aev, splat (i8 14)
  %i.aji = zext <2 x i1> %i.ajh to <2 x i64>
  %i.ajj = icmp ugt <2 x i8> %i.aez, splat (i8 14)
end_hunk_1
begin_hunk_2_@meshopt_encodeVertexBufferLevel:bb.a
  %i.ajx = icmp ugt <2 x i8> %i.afy, splat (i8 14)
  %i.ajy = zext <2 x i1> %i.ajx to <2 x i64>
  %i.ajz = icmp ugt <2 x i8> %i.agc, splat (i8 14)
  %i.aka = zext <2 x i1> %i.ajz to <2 x i64>
  %i.akb = icmp ugt <2 x i8> %i.agg, splat (i8 14)
  %i.akc = zext <2 x i1> %i.akb to <2 x i64>
  %i.akd = icmp ugt <2 x i8> %i.agk, splat (i8 14)
  %i.ake = zext <2 x i1> %i.akd to <2 x i64>
  %i.akf = icmp ugt <2 x i8> %i.ago, splat (i8 14)
  %i.akg = zext <2 x i1> %i.akf to <2 x i64>
  %i.akh = icmp ugt <2 x i64> %strided.vec304, splat (i64 1080863910568919039)
  %i.aki = zext <2 x i1> %i.akh to <2 x i64>
  %i.akj = add nuw nsw <2 x i64> %i.aje, %i.ajs
  %i.akk = add nuw nsw <2 x i64> %i.akj, %i.aki
  %i.akl = add nuw nsw <2 x i64> %i.akk, %i.ajg
  %i.akm = add nuw nsw <2 x i64> %i.akl, %i.aji
  %i.akn = add nuw nsw <2 x i64> %i.akm, %i.ajk
  %i.ako = add nuw nsw <2 x i64> %i.akn, %i.ajm
  %i.akp = add nuw nsw <2 x i64> %i.ako, %i.ajo
  %i.akq = add nuw nsw <2 x i64> %i.akp, %i.ajq
  %i.akr = add nuw nsw <2 x i64> %i.akq, %i.aju
  %i.aks = add nuw nsw <2 x i64> %i.akr, %i.ajw
  %i.akt = add nuw nsw <2 x i64> %i.aks, %i.ajy
  %i.aku = add nuw nsw <2 x i64> %i.akt, %i.aka
  %i.akv = add nuw nsw <2 x i64> %i.aku, %i.akc
  %i.akw = add nuw nsw <2 x i64> %i.akv, %i.ake
  %i.akx = add nuw nsw <2 x i64> %i.akw, %i.akg
  %i.aky = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ahh, <2 x i64> %i.ajc)
  %i.akz = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.aky, <2 x i64> %i.akx) ; 2 uses
  %i.ala = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.akz, <2 x i64> %i.aem)
  %i.alb = add <2 x i64> %i.ala, %vec.phi302      ; 2 uses
  %i.alc = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.akz, <2 x i64> splat (i64 16))
  %i.ald = add <2 x i64> %i.alc, %vec.phi303      ; 2 uses
  %index.next305 = add nuw i64 %index301, 2       ; 2 uses
  %i.ale = icmp eq i64 %index.next305, %n.vec299
  br i1 %i.ale, label %middle.block306, label %vector.body300, !llvm.loop !27

middle.block306:                                  ; preds = %vector.body300
  %i.alf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.alb) ; 2 uses
  %i.alg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ald) ; 2 uses
  br i1 %cmp.n307, label %.loopexit311, label %.preheader.i110.preheader335

.preheader.i110.preheader335:                     ; preds = %.preheader.i110.preheader, %middle.block306
  %.04351.i.i.ph = phi i64 [ %i.aac, %.preheader.i110.preheader ], [ %i.alf, %middle.block306 ]
  %.04450.i.i.ph = phi i64 [ %i.aac, %.preheader.i110.preheader ], [ %i.alg, %middle.block306 ]
  %.04549.i.i.ph = phi i64 [ 0, %.preheader.i110.preheader ], [ %i.aal, %middle.block306 ]
  br label %.preheader.i110

.thread85.i:                                      ; preds = %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i
  %.054.tr87.i = trunc i64 %.054120.i to i8
  %i.alh = shl i8 %.054.tr87.i, 1
  %i.ali = and i8 %i.alh, 6
  %i.alj = shl nuw nsw i8 1, %i.ali
  %i.alk = lshr i64 %.054120.i, 2
  %i.all = getelementptr inbounds nuw i8, ptr %.093, i64 %i.alk ; 2 uses
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !9
  %i.aln = or i8 %i.alm, %i.alj
  store i8 %i.aln, ptr %i.all, align 1, !tbaa !9
  br label %.thread79.i

.loopexit311:                                     ; preds = %.preheader.i110, %middle.block306
  %.lcssa272 = phi i64 [ %i.alf, %middle.block306 ], [ %i.aob, %.preheader.i110 ] ; 2 uses
  %.lcssa = phi i64 [ %i.alg, %middle.block306 ], [ %i.aod, %.preheader.i110 ] ; 2 uses
  %i.alo = icmp ult i64 %.lcssa272, %i.zq
  %i.alp = icmp ult i64 %.lcssa, %i.zq
  %or.cond.i.i = select i1 %i.alo, i1 true, i1 %i.alp
  br i1 %or.cond.i.i, label %bb.z, label %.thread88.i

.thread88.i:                                      ; preds = %.loopexit311
  %.054.tr90.i = trunc i64 %.054120.i to i8
  %i.alq = shl i8 %.054.tr90.i, 1
  %i.alr = and i8 %i.alq, 6
  %i.als = shl nuw i8 3, %i.alr
  %i.alt = lshr i64 %.054120.i, 2
  %i.alu = getelementptr inbounds nuw i8, ptr %.093, i64 %i.alt ; 2 uses
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !9
  %i.alw = or i8 %i.alv, %i.als
  store i8 %i.alw, ptr %i.alu, align 1, !tbaa !9
  %i.alx = ptrtoint ptr %.058119.i to i64
  %i.aly = sub i64 %i.m, %i.alx
  %i.alz = icmp ult i64 %i.aly, %i.zq
  br i1 %i.alz, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.aa

.preheader.i110:                                  ; preds = %.preheader.i110.preheader335, %.preheader.i110
  %.04351.i.i = phi i64 [ %i.aob, %.preheader.i110 ], [ %.04351.i.i.ph, %.preheader.i110.preheader335 ]
  %.04450.i.i = phi i64 [ %i.aod, %.preheader.i110 ], [ %.04450.i.i.ph, %.preheader.i110.preheader335 ]
  %.04549.i.i = phi i64 [ %i.aoe, %.preheader.i110 ], [ %.04549.i.i.ph, %.preheader.i110.preheader335 ] ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04549.i.i ; 2 uses
  %.val.i47.i.i = load i64, ptr %i.ama, align 16  ; 6 uses
  %i.amb = getelementptr i8, ptr %i.ama, i64 8
  %.val15.i.i.i = load i64, ptr %i.amb, align 8   ; 6 uses
  %i.amc = or i64 %.val15.i.i.i, %.val.i47.i.i
  %i.amd = icmp ne i64 %i.amc, 0
  %i.ame = sext i1 %i.amd to i64
  %i.amf = trunc i64 %.val.i47.i.i to i8          ; 3 uses
  %.not.i.i = icmp eq i8 %i.amf, 0
  %i.amg = select i1 %.not.i.i, i64 2, i64 3
  %i.amh = bitcast i64 %.val.i47.i.i to <8 x i8>
  %i.ami = shufflevector <8 x i8> %i.amh, <8 x i8> poison, <6 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.amj = icmp ne <6 x i8> %i.ami, zeroinitializer
  %i.amk = zext <6 x i1> %i.amj to <6 x i64>
  %i.aml = icmp ugt i64 %.val.i47.i.i, 72057594037927935
  %i.amm = zext i1 %i.aml to i64
  %i.amn = bitcast i64 %.val15.i.i.i to <8 x i8>
  %i.amo = shufflevector <8 x i8> %i.amn, <8 x i8> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5> ; 3 uses
  %i.amp = icmp ne <6 x i8> %i.amo, zeroinitializer
  %i.amq = zext <6 x i1> %i.amp to <6 x i64>
  %i.amr = lshr i64 %.val15.i.i.i, 48
  %i.ams = trunc i64 %i.amr to i8                 ; 3 uses
  %i.amt = icmp ne i8 %i.ams, 0
  %i.amu = zext i1 %i.amt to i64
  %i.amv = icmp ugt i64 %.val15.i.i.i, 72057594037927935
  %i.amw = zext i1 %i.amv to i64
  %rdx.op323 = add nuw nsw <6 x i64> %i.amk, %i.amq
  %i.amx = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op323)
  %op.rdx324.a = add nuw nsw i64 %i.amx, %i.amm
  %op.rdx325 = add nuw nsw i64 %i.amw, %i.amu
  %op.rdx326 = add nuw nsw i64 %op.rdx324.a, %op.rdx325
  %op.rdx327 = add nuw nsw i64 %op.rdx326, %i.amg
  %i.amy = icmp ugt i8 %i.amf, 2
  %i.amz = select i1 %i.amy, i64 5, i64 4
  %i.ana = icmp ugt <6 x i8> %i.ami, splat (i8 2)
  %i.anb = zext <6 x i1> %i.ana to <6 x i64>
  %i.anc = icmp ugt i64 %.val.i47.i.i, 216172782113783807
  %i.and = zext i1 %i.anc to i64
  %i.ane = icmp ugt <6 x i8> %i.amo, splat (i8 2)
  %i.anf = zext <6 x i1> %i.ane to <6 x i64>
  %i.ang = icmp ugt i8 %i.ams, 2
  %i.anh = zext i1 %i.ang to i64
  %i.ani = icmp ugt i64 %.val15.i.i.i, 216172782113783807
  %i.anj = zext i1 %i.ani to i64
  %rdx.op328 = add nuw nsw <6 x i64> %i.anb, %i.anf
  %i.ank = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op328)
  %op.rdx329 = add nuw nsw i64 %i.ank, %i.and
  %op.rdx330 = add nuw nsw i64 %i.anj, %i.anh
  %op.rdx331 = add nuw nsw i64 %op.rdx329, %op.rdx330
  %op.rdx332 = add nuw nsw i64 %op.rdx331, %i.amz
  %i.anl = icmp ugt i8 %i.amf, 14
  %i.anm = select i1 %i.anl, i64 9, i64 8
  %i.ann = icmp ugt <6 x i8> %i.ami, splat (i8 14)
  %i.ano = zext <6 x i1> %i.ann to <6 x i64>
  %i.anp = icmp ugt i64 %.val.i47.i.i, 1080863910568919039
  %i.anq = zext i1 %i.anp to i64
  %i.anr = icmp ugt <6 x i8> %i.amo, splat (i8 14)
  %i.ans = zext <6 x i1> %i.anr to <6 x i64>
  %i.ant = icmp ugt i8 %i.ams, 14
  %i.anu = zext i1 %i.ant to i64
  %i.anv = icmp ugt i64 %.val15.i.i.i, 1080863910568919039
  %i.anw = zext i1 %i.anv to i64
  %rdx.op = add nuw nsw <6 x i64> %i.ano, %i.ans
  %i.anx = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op)
  %op.rdx319.a = add nuw nsw i64 %i.anx, %i.anq
  %op.rdx320.a = add nuw nsw i64 %i.anw, %i.anu
  %op.rdx321 = add nuw nsw i64 %op.rdx319.a, %op.rdx320.a
  %op.rdx322 = add nuw nsw i64 %op.rdx321, %i.anm
  %i.any = tail call i64 @llvm.umin.i64(i64 %op.rdx327, i64 %op.rdx332)
  %i.anz = tail call i64 @llvm.umin.i64(i64 %i.any, i64 %op.rdx322) ; 2 uses
  %i.aoa = tail call i64 @llvm.umin.i64(i64 %i.anz, i64 %i.ame)
  %i.aob = add i64 %i.aoa, %.04351.i.i            ; 2 uses
  %i.aoc = tail call i64 @llvm.umin.i64(i64 %i.anz, i64 16)
  %i.aod = add i64 %i.aoc, %.04450.i.i            ; 2 uses
  %i.aoe = add nuw nsw i64 %.04549.i.i, 16        ; 2 uses
  %i.aof = icmp ult i64 %i.aoe, %i.zu
  br i1 %i.aof, label %.preheader.i110, label %.loopexit311, !llvm.loop !28

.thread82.i:                                      ; preds = %bb.y, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, %bb.x, %bb.w
  %.054.tr84.i = trunc i64 %.054120.i to i8
  %i.aog = shl i8 %.054.tr84.i, 1
  %i.aoh = and i8 %i.aog, 6
  %i.aoi = shl nuw i8 2, %i.aoh
  %i.aoj = lshr i64 %.054120.i, 2
  %i.aok = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aoj ; 2 uses
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !9
  %i.aom = or i8 %i.aol, %i.aoi
  store i8 %i.aom, ptr %i.aok, align 1, !tbaa !9
  br label %.thread92.i

bb.z:                                             ; preds = %.loopexit311
  %i.aon = icmp uge i64 %.lcssa272, %.lcssa       ; 2 uses
  %i.aoo = zext i1 %i.aon to i8
  %.054.tr.i = trunc i64 %.054120.i to i8
  %i.aop = shl i8 %.054.tr.i, 1
  %i.aoq = and i8 %i.aop, 6
  %i.aor = shl nuw nsw i8 %i.aoo, %i.aoq
  %i.aos = lshr i64 %.054120.i, 2
  %i.aot = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aos ; 2 uses
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !9
  %i.aov = or i8 %i.aou, %i.aor
  store i8 %i.aov, ptr %i.aot, align 1, !tbaa !9
  %i.aow = zext i1 %i.aon to i64
  br label %.thread79.i

bb.aa:                                            ; preds = %.thread88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058119.i, ptr nonnull align 16 %i.a, i64 %i.zq, i1 false)
  %i.aox = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.zq
  br label %.thread92.i

.thread79.i:                                      ; preds = %bb.z, %.thread85.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134
  %.081.i = phi i64 [ 1, %.thread85.i ], [ %i.aow, %bb.z ], [ 0, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134 ]
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr @_ZN7meshoptL7kBitsV1E, i64 %.081.i
  %i.aoz = select i1 %i.aa, ptr %i.aoy, ptr @_ZN7meshoptL7kBitsV0E ; 7 uses
  %i.apa = ptrtoint ptr %.058119.i to i64
  %i.apb = sub i64 %i.m, %i.apa
  %i.apc = icmp ult i64 %i.apb, %i.aac
  br i1 %i.apc, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.thread79.i
  %i.apd = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.aac ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.058119.i, i8 0, i64 %i.aac, i1 false)
  %i.ape = ptrtoint ptr %i.apd to i64
  %i.apf = sub i64 %i.m, %i.ape
  %i.apg = icmp ult i64 %i.apf, 24
  %or.cond76.i.i = select i1 %i.zz, i1 true, i1 %i.apg
  br i1 %or.cond76.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aoz, i64 12
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 4
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.apk = load i32, ptr %i.aph, align 4, !tbaa !13 ; 4 uses
  %i.apl = load i32, ptr %i.aoz, align 4, !tbaa !13 ; 4 uses
  %i.apm = load i32, ptr %i.api, align 4, !tbaa !13 ; 4 uses
  %i.apn = load i32, ptr %i.apj, align 4, !tbaa !13 ; 4 uses
  %i.apo = sext i32 %i.apk to i64
  %i.app = shl nsw i64 %i.apo, 1
  %i.apq = and i64 %i.app, 2305843009213693950
  %notmask.i.i = shl nsw i32 -1, %i.apk
  %i.apr = and i32 %notmask.i.i, 255
  %i.aps = xor i32 %i.apr, 255                    ; 3 uses
  %i.apt = sext i32 %i.apl to i64
  %i.apu = shl nsw i64 %i.apt, 1
  %i.apv = and i64 %i.apu, 2305843009213693950
  %notmask.i63.i.i = shl nsw i32 -1, %i.apl
  %i.apw = and i32 %notmask.i63.i.i, 255
  %i.apx = xor i32 %i.apw, 255                    ; 3 uses
  %.not.i73.i = icmp eq i32 %i.apk, 8
  %i.apy = sext i32 %i.apm to i64
  %i.apz = shl nsw i64 %i.apy, 1
  %i.aqa = and i64 %i.apz, 2305843009213693950
  %notmask.i63.1.i.i = shl nsw i32 -1, %i.apm
  %i.aqb = and i32 %notmask.i63.1.i.i, 255
  %i.aqc = xor i32 %i.aqb, 255                    ; 3 uses
  %i.aqd = sext i32 %i.apn to i64
  %i.aqe = shl nsw i64 %i.aqd, 1
  %i.aqf = and i64 %i.aqe, 2305843009213693950
  %notmask.i63.2.i.i = shl nsw i32 -1, %i.apn
  %i.aqg = and i32 %notmask.i63.2.i.i, 255
  %i.aqh = xor i32 %i.aqg, 255                    ; 3 uses
  %i.aqi = insertelement <14 x i32> poison, i32 %i.aqh, i64 0
  %i.aqj = shufflevector <14 x i32> %i.aqi, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.aqk = insertelement <14 x i32> poison, i32 %i.aqc, i64 0
  %i.aql = shufflevector <14 x i32> %i.aqk, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.aqm = insertelement <14 x i32> poison, i32 %i.apx, i64 0
  %i.aqn = shufflevector <14 x i32> %i.aqm, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.aqo = insertelement <14 x i32> poison, i32 %i.aps, i64 0
  %i.aqp = shufflevector <14 x i32> %i.aqo, <14 x i32> poison, <14 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %.lr.ph.i.i
  %.05079.i.i = phi ptr [ %i.apd, %.lr.ph.i.i ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 7 uses
  %.05678.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.axb, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 4 uses
  %.05777.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %i.bah, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 3 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05678.i.i ; 30 uses
  switch i32 %i.apk, label %.loopexit.loopexit.i.i [
    i32 0, label %bb.ad
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i = load i64, ptr %i.aqq, align 16
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 8
  %.val15.i.i = load i64, ptr %i.aqr, align 8
  %i.aqs = or i64 %.val15.i.i, %.val.i.i
  %i.aqt = icmp ne i64 %i.aqs, 0
  %i.aqu = sext i1 %i.aqt to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ac
  %i.aqv = load i8, ptr %i.aqq, align 16, !tbaa !9
  %i.aqw = zext i8 %i.aqv to i32
  %i.aqx = icmp samesign ule i32 %i.aps, %i.aqw
  %i.aqy = zext i1 %i.aqx to i64
  %i.aqz = or disjoint i64 %i.apq, %i.aqy
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqq, i64 1
  %i.arb = load <14 x i8>, ptr %i.ara, align 1, !tbaa !9
  %i.arc = zext <14 x i8> %i.arb to <14 x i32>
  %i.ard = icmp samesign ule <14 x i32> %i.aqp, %i.arc
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqq, i64 15
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !9
  %i.arg = zext i8 %i.arf to i32
  %i.arh = icmp samesign ule i32 %i.aps, %i.arg
  %i.ari = zext i1 %i.arh to i64
  %i.arj = bitcast <14 x i1> %i.ard to i14
  %i.ark = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.arj)
  %i.arl = zext nneg i14 %i.ark to i64
  %op.rdx317.a = add nuw nsw i64 %i.arl, %i.ari
  %op.rdx318.a = add nuw nsw i64 %op.rdx317.a, %i.aqz
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i: ; preds = %.loopexit.loopexit.i.i, %bb.ad, %bb.ac
  %.013.i.i = phi i64 [ %i.aqu, %bb.ad ], [ 16, %bb.ac ], [ %op.rdx318.a, %.loopexit.loopexit.i.i ] ; 3 uses
  %i.arm = getelementptr i8, ptr %i.aqq, i64 8    ; 4 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqq, i64 1 ; 4 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqq, i64 2
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqq, i64 3
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqq, i64 4
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 5
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aqq, i64 6
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqq, i64 7
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqq, i64 10
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aqq, i64 11
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 12
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqq, i64 13
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqq, i64 14
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqq, i64 15 ; 4 uses
  switch i32 %i.apl, label %.loopexit.loopexit.i.i.i [
    i32 0, label %bb.ag
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  ]

bb.ae:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05079.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.aqq, i64 16, i1 false)
  %i.asb = getelementptr inbounds nuw i8, ptr %.05079.i.i, i64 16
  br label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i

bb.af:                                            ; preds = %bb.at
  %i.asc = sdiv i32 8, %i.bah                     ; 6 uses
  %i.asd = sext i32 %i.asc to i64                 ; 4 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.bah
  %i.ase = trunc i32 %notmask.i.i.i to i8
  %i.asf = xor i8 %i.ase, -1                      ; 23 uses
  %.not.i.i75.i = icmp eq i32 %i.asc, 0
  %i.asg = icmp eq i32 %i.bah, 1                  ; 2 uses
  br i1 %.not.i.i75.i, label %.split.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.af
  br i1 %i.asg, label %.preheader48.us.us.i.i.i.preheader, label %.preheader48.us.i.i.i.preheader

.preheader48.us.i.i.i.preheader:                  ; preds = %.split.us.i.i.i
  %i.ash = icmp eq i32 %i.asc, 1
  %unroll_iter412 = and i64 %i.asd, -2
  %i.asi = and i32 %i.asc, 1
  %lcmp.mod409.not = icmp eq i32 %i.asi, 0
  %lcmp.mod411 = trunc i32 %i.asc to i1
  br label %.preheader48.us.i.i.i

.preheader48.us.us.i.i.i.preheader:               ; preds = %.split.us.i.i.i
  %i.asj = icmp ult i32 %i.asc, 4
  br label %.preheader48.us.us.i.i.i

.preheader48.us.us.i.i.i:                         ; preds = %.preheader48.us.us.i.i.i.preheader, %._crit_edge.us.us.i.i.i
  %.04352.us.us.i.i.i = phi i64 [ %i.atn, %._crit_edge.us.us.i.i.i ], [ 0, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %.04451.us.us.i.i.i = phi ptr [ %i.atm, %._crit_edge.us.us.i.i.i ], [ %.05079.i.i, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %i.ask = getelementptr i8, ptr %i.aqq, i64 %.04352.us.us.i.i.i ; 4 uses
  %i.asl = xor i1 %i.asj, true
  call void @llvm.assume(i1 %i.asl)
  br label %.preheader48.us.us.i.i.i.new

.preheader48.us.us.i.i.i.new:                     ; preds = %.preheader48.us.us.i.i.i, %.preheader48.us.us.i.i.i.new
  %.04150.us.us.i.i.i = phi i64 [ %i.atf, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ] ; 5 uses
  %.04249.us.us.i.i.i = phi i8 [ %i.ate, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ]
  %niter421 = phi i64 [ %niter421.next.3, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ]
  %i.asm = getelementptr i8, ptr %i.ask, i64 %.04150.us.us.i.i.i
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !9
  %..us.us.i.i.i = tail call i8 @llvm.umin.i8(i8 %i.asn, i8 %i.asf)
  %i.aso = getelementptr i8, ptr %i.ask, i64 %.04150.us.us.i.i.i
  %i.asp = getelementptr i8, ptr %i.aso, i64 1
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !9
  %..us.us.i.i.i.1 = tail call i8 @llvm.umin.i8(i8 %i.asq, i8 %i.asf)
  %i.asr = shl i8 %.04249.us.us.i.i.i, 2
  %i.ass = shl nuw nsw i8 %..us.us.i.i.i, 1
  %i.ast = or i8 %i.asr, %i.ass
  %i.asu = or disjoint i8 %..us.us.i.i.i.1, %i.ast
  %i.asv = getelementptr i8, ptr %i.ask, i64 %.04150.us.us.i.i.i
  %i.asw = getelementptr i8, ptr %i.asv, i64 2
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !9
  %..us.us.i.i.i.2 = tail call i8 @llvm.umin.i8(i8 %i.asx, i8 %i.asf)
  %i.asy = getelementptr i8, ptr %i.ask, i64 %.04150.us.us.i.i.i
  %i.asz = getelementptr i8, ptr %i.asy, i64 3
  %i.ata = load i8, ptr %i.asz, align 1, !tbaa !9
  %..us.us.i.i.i.3 = tail call i8 @llvm.umin.i8(i8 %i.ata, i8 %i.asf)
  %i.atb = shl i8 %i.asu, 2
  %i.atc = shl nuw nsw i8 %..us.us.i.i.i.2, 1
  %i.atd = or i8 %i.atb, %i.atc
  %i.ate = or disjoint i8 %..us.us.i.i.i.3, %i.atd ; 2 uses
  %i.atf = add nuw i64 %.04150.us.us.i.i.i, 4
  %niter421.next.3 = add i64 %niter421, 4         ; 2 uses
  %niter421.ncmp.3 = icmp eq i64 %niter421.next.3, %i.asd
  br i1 %niter421.ncmp.3, label %._crit_edge.us.us.i.i.i, label %.preheader48.us.us.i.i.i.new, !llvm.loop !29

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader48.us.us.i.i.i.new
  %i.atg = zext i8 %i.ate to i64
  %i.ath = mul nuw nsw i64 %i.atg, 2149582850
  %i.ati = and i64 %i.ath, 36578664720
  %i.atj = mul i64 %i.ati, 4311810305
  %i.atk = lshr i64 %i.atj, 32
  %i.atl = trunc i64 %i.atk to i8
  %i.atm = getelementptr inbounds nuw i8, ptr %.04451.us.us.i.i.i, i64 1 ; 2 uses
  store i8 %i.atl, ptr %.04451.us.us.i.i.i, align 1, !tbaa !9
  %i.atn = add nuw nsw i64 %.04352.us.us.i.i.i, %i.asd ; 2 uses
end_hunk_2
begin_hunk_3_@meshopt_encodeVertexBufferLevel:bb.a
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  %i.axi = load i8, ptr %i.aqq, align 16, !tbaa !9
  %i.axj = zext i8 %i.axi to i32
  %i.axk = icmp samesign ule i32 %i.apx, %i.axj
  %i.axl = zext i1 %i.axk to i64
  %i.axm = or disjoint i64 %i.apv, %i.axl
  %i.axn = load <14 x i8>, ptr %i.arn, align 1, !tbaa !9
  %i.axo = zext <14 x i8> %i.axn to <14 x i32>
  %i.axp = icmp samesign ule <14 x i32> %i.aqn, %i.axo
  %i.axq = load i8, ptr %i.asa, align 1, !tbaa !9
  %i.axr = zext i8 %i.axq to i32
  %i.axs = icmp samesign ule i32 %i.apx, %i.axr
  %i.axt = zext i1 %i.axs to i64
  %i.axu = bitcast <14 x i1> %i.axp to i14
  %i.axv = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.axu)
  %i.axw = zext nneg i14 %i.axv to i64
  %op.rdx315.a = add nuw nsw i64 %i.axw, %i.axt
  %op.rdx316.a = add nuw nsw i64 %op.rdx315.a, %i.axm
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i: ; preds = %.loopexit.loopexit.i.i.i, %bb.ag, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  %.013.i.i.i = phi i64 [ %i.axh, %bb.ag ], [ 16, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i ], [ %op.rdx316.a, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %i.axx = icmp ult i64 %.013.i.i.i, %.013.i.i
  br i1 %i.axx, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  %i.axy = icmp ne i64 %.013.i.i.i, %.013.i.i
  %i.axz = icmp ne i32 %i.apl, %.05777.i.i
  %or.cond64.not106.i.i = or i1 %i.axz, %i.axy
  %or.cond103.i.i = or i1 %.not.i73.i, %or.cond64.not106.i.i
  br i1 %or.cond103.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.155.i.i = phi i32 [ 0, %bb.ai ], [ 3, %bb.ah ] ; 3 uses
  %.153.i.i = phi i64 [ %.013.i.i.i, %bb.ai ], [ %.013.i.i, %bb.ah ] ; 4 uses
  switch i32 %i.apm, label %.loopexit.loopexit.i.1.i.i [
    i32 0, label %bb.ak
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %.val.i.1.i.i = load i64, ptr %i.aqq, align 16
  %.val15.i.1.i.i = load i64, ptr %i.arm, align 8
  %i.aya = or i64 %.val15.i.1.i.i, %.val.i.1.i.i
  %i.ayb = icmp ne i64 %i.aya, 0
  %i.ayc = sext i1 %i.ayb to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i

.loopexit.loopexit.i.1.i.i:                       ; preds = %bb.aj
  %i.ayd = load i8, ptr %i.aqq, align 16, !tbaa !9
  %i.aye = zext i8 %i.ayd to i32
  %i.ayf = icmp samesign ule i32 %i.aqc, %i.aye
  %i.ayg = zext i1 %i.ayf to i64
  %i.ayh = or disjoint i64 %i.aqa, %i.ayg
  %i.ayi = load <14 x i8>, ptr %i.arn, align 1, !tbaa !9
  %i.ayj = zext <14 x i8> %i.ayi to <14 x i32>
  %i.ayk = icmp samesign ule <14 x i32> %i.aql, %i.ayj
  %i.ayl = load i8, ptr %i.asa, align 1, !tbaa !9
  %i.aym = zext i8 %i.ayl to i32
  %i.ayn = icmp samesign ule i32 %i.aqc, %i.aym
  %i.ayo = zext i1 %i.ayn to i64
  %i.ayp = bitcast <14 x i1> %i.ayk to i14
  %i.ayq = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.ayp)
  %i.ayr = zext nneg i14 %i.ayq to i64
  %op.rdx313 = add nuw nsw i64 %i.ayr, %i.ayo
  %op.rdx314.a = add nuw nsw i64 %op.rdx313, %i.ayh
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i: ; preds = %.loopexit.loopexit.i.1.i.i, %bb.ak, %bb.aj
  %.013.i.1.i.i = phi i64 [ %i.ayc, %bb.ak ], [ 16, %bb.aj ], [ %op.rdx314.a, %.loopexit.loopexit.i.1.i.i ] ; 3 uses
  %i.ays = icmp ult i64 %.013.i.1.i.i, %.153.i.i
  br i1 %i.ays, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  %i.ayt = icmp eq i64 %.013.i.1.i.i, %.153.i.i
  %i.ayu = icmp eq i32 %i.apm, %.05777.i.i
  %or.cond64.1.i.i = and i1 %i.ayu, %i.ayt
  br i1 %or.cond64.1.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ayv = zext nneg i32 %.155.i.i to i64
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.ayv
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !13
  %.not.1.i.i = icmp eq i32 %i.ayx, 8
  br i1 %.not.1.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.155.1.i.i = phi i32 [ 1, %bb.an ], [ %.155.i.i, %bb.am ], [ %.155.i.i, %bb.al ] ; 3 uses
  %.153.1.i.i = phi i64 [ %.013.i.1.i.i, %bb.an ], [ %.153.i.i, %bb.am ], [ %.153.i.i, %bb.al ] ; 2 uses
  switch i32 %i.apn, label %.loopexit.loopexit.i.2.i.i [
    i32 0, label %bb.ap
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  ]

bb.ap:                                            ; preds = %bb.ao
  %.val.i.2.i.i = load i64, ptr %i.aqq, align 16
  %.val15.i.2.i.i = load i64, ptr %i.arm, align 8
  %i.ayy = or i64 %.val15.i.2.i.i, %.val.i.2.i.i
  %i.ayz = icmp ne i64 %i.ayy, 0
  %i.aza = sext i1 %i.ayz to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i

.loopexit.loopexit.i.2.i.i:                       ; preds = %bb.ao
  %i.azb = load i8, ptr %i.aqq, align 16, !tbaa !9
  %i.azc = zext i8 %i.azb to i32
  %i.azd = icmp samesign ule i32 %i.aqh, %i.azc
  %i.aze = zext i1 %i.azd to i64
  %i.azf = or disjoint i64 %i.aqf, %i.aze
  %i.azg = load <14 x i8>, ptr %i.arn, align 1, !tbaa !9
  %i.azh = zext <14 x i8> %i.azg to <14 x i32>
  %i.azi = icmp samesign ule <14 x i32> %i.aqj, %i.azh
  %i.azj = load i8, ptr %i.asa, align 1, !tbaa !9
  %i.azk = zext i8 %i.azj to i32
  %i.azl = icmp samesign ule i32 %i.aqh, %i.azk
  %i.azm = zext i1 %i.azl to i64
  %i.azn = bitcast <14 x i1> %i.azi to i14
  %i.azo = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.azn)
  %i.azp = zext nneg i14 %i.azo to i64
  %op.rdx = add nuw nsw i64 %i.azp, %i.azm
  %op.rdx312 = add nuw nsw i64 %op.rdx, %i.azf
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i: ; preds = %.loopexit.loopexit.i.2.i.i, %bb.ap, %bb.ao
  %.013.i.2.i.i = phi i64 [ %i.aza, %bb.ap ], [ 16, %bb.ao ], [ %op.rdx312, %.loopexit.loopexit.i.2.i.i ] ; 2 uses
  %i.azq = icmp ult i64 %.013.i.2.i.i, %.153.1.i.i
  br i1 %i.azq, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  %i.azr = icmp eq i64 %.013.i.2.i.i, %.153.1.i.i
  %i.azs = icmp eq i32 %i.apn, %.05777.i.i
  %or.cond64.2.i.i = and i1 %i.azs, %i.azr
  br i1 %or.cond64.2.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.azt = zext nneg i32 %.155.1.i.i to i64
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.azt
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !13
  %.not.2.i.i = icmp eq i32 %i.azv, 8
  br i1 %.not.2.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.155.2.i.i = phi i32 [ 2, %bb.as ], [ %.155.1.i.i, %bb.ar ], [ %.155.1.i.i, %bb.aq ] ; 2 uses
  %i.azw = trunc i64 %.05678.i.i to i32
  %i.azx = lshr exact i32 %i.azw, 3
  %i.azy = and i32 %i.azx, 6
  %i.azz = shl nuw nsw i32 %.155.2.i.i, %i.azy
  %i.baa = lshr i64 %.05678.i.i, 6
  %i.bab = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.baa ; 2 uses
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !9
  %i.bad = trunc nuw i32 %i.azz to i8
  %i.bae = or i8 %i.bac, %i.bad
  store i8 %i.bae, ptr %i.bab, align 1, !tbaa !9
  %i.baf = zext nneg i32 %.155.2.i.i to i64
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.baf
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !13 ; 8 uses
  switch i32 %i.bah, label %bb.af [
    i32 0, label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i
    i32 8, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %bb.ab
  %.050.lcssa.i.i = phi ptr [ %i.apd, %bb.ab ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 2 uses
  %.not60.lcssa.i.i = phi i1 [ %i.zz, %bb.ab ], [ %.not60.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ]
  %.not68.not154.i = icmp ne ptr %.050.lcssa.i.i, null
  %.not68.not.not.i = select i1 %.not60.lcssa.i.i, i1 %.not68.not154.i, i1 false
  br i1 %.not68.not.not.i, label %.thread92.i, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread

.thread92.i:                                      ; preds = %.loopexit.i, %bb.aa, %.thread82.i
  %.26095.i = phi ptr [ %.050.lcssa.i.i, %.loopexit.i ], [ %.058119.i, %.thread82.i ], [ %i.aox, %bb.aa ] ; 3 uses
  %i.bai = add nuw i64 %.054120.i, 1              ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %i.bai, %4
  br i1 %exitcond.not.i111, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, label %bb.u, !llvm.loop !32

_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread: ; preds = %bb.t, %.thread79.i, %.thread88.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit: ; preds = %.thread92.i
  %i.baj = add i64 %i.zq, -1
  %i.bak = mul i64 %i.baj, %4
  %i.bal = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.bak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr readonly align 1 %i.bal, i64 %4, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not102.not = icmp eq ptr %.26095.i, null
  %i.bam = add i64 %i.zq, %.0
  br i1 %.not102.not, label %.loopexit, label %bb.s, !llvm.loop !33

bb.au:                                            ; preds = %bb.s
  %i.ban = add i64 %i.zk, %4                      ; 3 uses
  %i.bao = select i1 %i.aa, i64 24, i64 32        ; 2 uses
  %i.bap = tail call i64 @llvm.umax.i64(i64 %i.ban, i64 %i.bao) ; 2 uses
  %i.baq = ptrtoint ptr %.093 to i64
  %i.bar = sub i64 %i.m, %i.baq
  %i.bas = icmp ult i64 %i.bar, %i.bap
  br i1 %i.bas, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bat = icmp ult i64 %i.ban, %i.bao
  br i1 %i.bat, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bau = sub nuw i64 %i.bap, %i.ban             ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.bau, i1 false)
  %i.bav = getelementptr inbounds nuw i8, ptr %.093, i64 %i.bau
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.194 = phi ptr [ %i.bav, %bb.aw ], [ %.093, %bb.av ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.194, ptr nonnull align 16 %i.f, i64 %4, i1 false)
  %i.baw = getelementptr inbounds nuw i8, ptr %.194, i64 %4 ; 3 uses
  br i1 %i.aa, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.baw, ptr nonnull align 16 %i.h, i64 %i.zj, i1 false)
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 %i.zj
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.295 = phi ptr [ %i.bax, %bb.ay ], [ %i.baw, %bb.ax ]
  %i.bay = ptrtoint ptr %.295 to i64
  %i.baz = sub i64 %i.bay, %i.n
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, %bb.az, %bb.au
  %.3 = phi i64 [ 0, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread ], [ %i.baz, %bb.az ], [ 0, %bb.au ], [ 0, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ]
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
