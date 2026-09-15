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
  %.04660.i = phi i32 [ %i.ap, %bb.f ], [ %.lcssa342, %.critedge.preheader.i ] ; 2 uses
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
  %lcmp.mod353 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod353)
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
  %.lcssa342 = phi i32 [ %i.il, %.critedge.preheader.i.unr-lcssa ], [ %i.ax, %bb.g ]
  %.lcssa341 = phi i32 [ %i.in, %.critedge.preheader.i.unr-lcssa ], [ %i.az, %bb.g ] ; 20 uses
  %i.bb = add nuw nsw i64 %umin.i, 1
  %i.bc = mul i64 %4, %i.bb
  %scevgep = getelementptr i8, ptr %.04461.i, i64 %i.bc
  %i.bd = trunc i32 %.lcssa341 to i8              ; 3 uses
  %i.be = icmp ult i8 %i.bd, 16
  %i.bf = icmp samesign ult i8 %i.bd, 4
  %i.bg = icmp eq i8 %i.bd, 0
  %i.bh = select i1 %i.bg, i64 0, i64 2
  %i.bi = select i1 %i.bf, i64 %i.bh, i64 4
  %i.bj = select i1 %i.be, i64 %i.bi, i64 8
  %i.bk = lshr i32 %.lcssa341, 8
  %i.bl = trunc i32 %i.bk to i8                   ; 3 uses
  %i.bm = icmp ult i8 %i.bl, 16
  %i.bn = icmp samesign ult i8 %i.bl, 4
  %i.bo = icmp eq i8 %i.bl, 0
  %i.bp = select i1 %i.bo, i64 0, i64 2
  %i.bq = select i1 %i.bn, i64 %i.bp, i64 4
  %i.br = select i1 %i.bm, i64 %i.bq, i64 8
  %i.bs = lshr i32 %.lcssa341, 16
  %i.bt = trunc i32 %i.bs to i8                   ; 3 uses
  %i.bu = icmp ult i8 %i.bt, 16
  %i.bv = icmp samesign ult i8 %i.bt, 4
  %i.bw = icmp eq i8 %i.bt, 0
  %i.bx = select i1 %i.bw, i64 0, i64 2
  %i.by = select i1 %i.bv, i64 %i.bx, i64 4
  %i.bz = select i1 %i.bu, i64 %i.by, i64 8
  %i.ca = icmp ult i32 %.lcssa341, 268435456
  %i.cb = icmp ult i32 %.lcssa341, 67108864
  %i.cc = icmp ult i32 %.lcssa341, 16777216
  %i.cd = select i1 %i.cc, i64 0, i64 2
  %i.ce = select i1 %i.cb, i64 %i.cd, i64 4
  %i.cf = select i1 %i.ca, i64 %i.ce, i64 8
  %i.cg = add i64 %i.cf, %i.at
  %i.ch = add i64 %i.cg, %i.bj
  %i.ci = add i64 %i.ch, %i.bz
  %i.cj = add i64 %i.ci, %i.br                    ; 4 uses
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa341, i32 %.lcssa341, i32 1) ; 6 uses
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
  %i.ds = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa341, i32 %.lcssa341, i32 2) ; 6 uses
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
  %i.fa = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa341, i32 %.lcssa341, i32 3) ; 6 uses
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
  %.not319 = icmp eq <16 x i8> %i.yf, zeroinitializer
  %i.yg = select <16 x i1> %.not319, <16 x i64> <i64 2, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> <i64 3, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>
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
  %.lcssa350 = phi i32 [ %i.yw, %.preheader.i ], [ %i.za, %.preheader.i.1 ] ; 2 uses
  %i.zb = icmp eq i32 %.lcssa350, 2
  %i.zc = or disjoint i32 %i.jy, 2
  %i.zd = select i1 %i.zb, i32 %i.zc, i32 %.lcssa350
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
  %7 = icmp eq i32 %i.k, 0                        ; 5 uses
  %i.zj = lshr i64 %4, 2                          ; 3 uses
  %i.zk = select i1 %7, i64 0, i64 %i.zj          ; 4 uses
  %i.zl = icmp eq i32 %5, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %.loopexit145
  %.093 = phi ptr [ %i.r, %.loopexit145 ], [ %.26095.i, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 11 uses
  %.0 = phi i64 [ 0, %.loopexit145 ], [ %i.bfd, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 6 uses
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
  %umin373 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.zn)
  %i.aad = xor i64 %.0, -1
  %i.aae = add i64 %umin373, %i.aad               ; 3 uses
  %xtraiter374 = and i64 %i.zq, 1
  %i.aaf = icmp eq i64 %i.aae, 0
  %unroll_iter378 = and i64 %i.zq, -2
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  %lcmp.mod377 = trunc i64 %i.zq to i1
  %xtraiter380 = and i64 %i.zq, 1
  %i.aag = icmp eq i64 %i.aae, 0
  %unroll_iter384 = and i64 %i.zq, -2
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  %lcmp.mod383 = trunc i64 %i.zq to i1
  %xtraiter386 = and i64 %i.zq, 1
  %i.aah = icmp eq i64 %i.aae, 0
  %unroll_iter390 = and i64 %i.zq, -2
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  %lcmp.mod389 = trunc i64 %i.zq to i1
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
  %.054120.i = phi i64 [ 0, %.lr.ph.i107 ], [ %i.bez, %.thread92.i ] ; 17 uses
  %.058119.i = phi ptr [ %i.zy, %.lr.ph.i107 ], [ %.26095.i, %.thread92.i ] ; 8 uses
  br i1 %7, label %.thread.i, label %bb.v

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
  %niter391 = phi i64 [ %niter391.next.1, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ]
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
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, label %.lr.ph.i.i.i128, !llvm.loop !19

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
  %niter385 = phi i64 [ %niter385.next.1, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ]
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
  %niter385.next.1 = add i64 %niter385, 2         ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, label %.lr.ph.i21.i.i121, !llvm.loop !20

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
  %niter379 = phi i64 [ %niter379.next.1, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ]
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
  %niter379.next.1 = add i64 %niter379, 2         ; 2 uses
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa, label %.lr.ph.i27.i.i114, !llvm.loop !21

default.unreachable:                              ; preds = %bb.v
  unreachable

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i128
  br i1 %lcmp.mod388.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.i.i.i128.epil.preheader

.lr.ph.i.i.i128.epil.preheader:                   ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i127
  %.03238.i.i.i129.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i127 ], [ %i.abi, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.03337.i.i.i130.epil.init = phi ptr [ %i.aas, %.lr.ph.preheader.i.i.i127 ], [ %i.abh, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  %.136.i.i.i131.epil.init = phi i8 [ %i.aau, %.lr.ph.preheader.i.i.i127 ], [ %i.abb, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod389)
  %i.adl = load i8, ptr %.03337.i.i.i130.epil.init, align 1, !tbaa !9
  %i.adm = sub i8 %i.adl, %.136.i.i.i131.epil.init ; 2 uses
  %.neg.i.i.i.i132.epil = ashr i8 %i.adm, 7
  %i.adn = shl i8 %i.adm, 1
  %i.ado = xor i8 %i.adn, %.neg.i.i.i.i132.epil
  %i.adp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129.epil.init
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134: ; preds = %.lr.ph.i.i.i128.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, %.thread.i
  br i1 %7, label %.thread79.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa: ; preds = %.lr.ph.i21.i.i121
  br i1 %lcmp.mod382.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i21.i.i121.epil.preheader

.lr.ph.i21.i.i121.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %.lr.ph.preheader.i20.i.i120
  %.03240.i.i.i122.epil.init = phi i64 [ 0, %.lr.ph.preheader.i20.i.i120 ], [ %i.acn, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.03339.i.i.i123.epil.init = phi ptr [ %i.abm, %.lr.ph.preheader.i20.i.i120 ], [ %i.acm, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  %.138.i.i.i124.epil.init = phi i16 [ %i.abv, %.lr.ph.preheader.i20.i.i120 ], [ %i.ace, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod383)
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

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa: ; preds = %.lr.ph.i27.i.i114
  br i1 %lcmp.mod376.not, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, label %.lr.ph.i27.i.i114.epil.preheader

.lr.ph.i27.i.i114.epil.preheader:                 ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa, %.lr.ph.preheader.i26.i.i113
  %.03343.i.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i26.i.i113 ], [ %i.adk, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa ]
  %.03442.i.i.i116.epil.init = phi ptr [ %i.acs, %.lr.ph.preheader.i26.i.i113 ], [ %i.adj, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa ]
  %.141.i.i.i117.epil.init = phi i32 [ %i.acu, %.lr.ph.preheader.i26.i.i113 ], [ %i.adc, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod377)
  %i.adx = load i32, ptr %.03442.i.i.i116.epil.init, align 1
  %i.ady = xor i32 %i.adx, %.141.i.i.i117.epil.init ; 2 uses
  %i.adz = tail call noundef i32 @llvm.fshl.i32(i32 %i.ady, i32 %i.ady, i32 range(i32 -134217728, 134217728) %i.aco)
  %i.aea = lshr i32 %i.adz, %i.acq
  %i.aeb = trunc i32 %i.aea to i8
  %i.aec = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115.epil.init
  store i8 %i.aeb, ptr %i.aec, align 1, !tbaa !9
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109: ; preds = %.lr.ph.i27.i.i114.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit322.unr-lcssa, %.lr.ph.i21.i.i121.epil.preheader, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, %bb.v
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
  br i1 %min.iters.check297, label %.preheader.i110.preheader321, label %vector.body300

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
  %i.amq = trunc i64 %i.amp to i8                 ; 3 uses
  %i.amr = icmp ne i8 %i.amq, 0
  %i.ams = zext i1 %i.amr to i64
  %i.amt = lshr i64 %.val.i47.i.i, 32
  %i.amu = trunc i64 %i.amt to i8                 ; 3 uses
  %i.amv = icmp ne i8 %i.amu, 0
  %i.amw = zext i1 %i.amv to i64
  %i.amx = lshr i64 %.val.i47.i.i, 40
  %i.amy = trunc i64 %i.amx to i8                 ; 3 uses
  %i.amz = icmp ne i8 %i.amy, 0
  %i.ana = zext i1 %i.amz to i64
  %i.anb = lshr i64 %.val.i47.i.i, 48
  %i.anc = trunc i64 %i.anb to i8                 ; 3 uses
  %i.and = icmp ne i8 %i.anc, 0
  %i.ane = zext i1 %i.and to i64
  %i.anf = icmp ugt i64 %.val.i47.i.i, 72057594037927935
  %i.ang = zext i1 %i.anf to i64
  %i.anh = trunc i64 %.val15.i.i.i to i8          ; 3 uses
  %i.ani = icmp ne i8 %i.anh, 0
  %i.anj = zext i1 %i.ani to i64
  %i.ank = lshr i64 %.val15.i.i.i, 8
  %i.anl = trunc i64 %i.ank to i8                 ; 3 uses
  %i.anm = icmp ne i8 %i.anl, 0
  %i.ann = zext i1 %i.anm to i64
  %i.ano = lshr i64 %.val15.i.i.i, 16
  %i.anp = trunc i64 %i.ano to i8                 ; 3 uses
  %i.anq = icmp ne i8 %i.anp, 0
  %i.anr = zext i1 %i.anq to i64
  %i.ans = lshr i64 %.val15.i.i.i, 24
  %i.ant = trunc i64 %i.ans to i8                 ; 3 uses
  %i.anu = icmp ne i8 %i.ant, 0
  %i.anv = zext i1 %i.anu to i64
  %i.anw = lshr i64 %.val15.i.i.i, 32
  %i.anx = trunc i64 %i.anw to i8                 ; 3 uses
  %i.any = icmp ne i8 %i.anx, 0
  %i.anz = zext i1 %i.any to i64
  %i.aoa = lshr i64 %.val15.i.i.i, 40
  %i.aob = trunc i64 %i.aoa to i8                 ; 3 uses
  %i.aoc = icmp ne i8 %i.aob, 0
  %i.aod = zext i1 %i.aoc to i64
  %i.aoe = lshr i64 %.val15.i.i.i, 48
  %i.aof = trunc i64 %i.aoe to i8                 ; 3 uses
  %i.aog = icmp ne i8 %i.aof, 0
  %i.aoh = zext i1 %i.aog to i64
  %i.aoi = icmp ugt i64 %.val15.i.i.i, 72057594037927935
  %i.aoj = zext i1 %i.aoi to i64
  %i.aok = add nuw nsw i64 %i.amg, %i.ang
  %i.aol = add nuw nsw i64 %i.aok, %i.aoj
  %i.aom = add nuw nsw i64 %i.aol, %i.amk
  %i.aon = add nuw nsw i64 %i.aom, %i.amo
  %i.aoo = add nuw nsw i64 %i.aon, %i.ams
  %i.aop = add nuw nsw i64 %i.aoo, %i.amw
  %i.aoq = add nuw nsw i64 %i.aop, %i.ana
  %i.aor = add nuw nsw i64 %i.aoq, %i.ane
  %i.aos = add nuw nsw i64 %i.aor, %i.anj
  %i.aot = add nuw nsw i64 %i.aos, %i.ann
  %i.aou = add nuw nsw i64 %i.aot, %i.anr
  %i.aov = add nuw nsw i64 %i.aou, %i.anv
  %i.aow = add nuw nsw i64 %i.aov, %i.anz
  %i.aox = add nuw nsw i64 %i.aow, %i.aod
  %i.aoy = add nuw nsw i64 %i.aox, %i.aoh
  %i.aoz = icmp ugt i8 %i.amf, 2
  %i.apa = select i1 %i.aoz, i64 5, i64 4
  %i.apb = icmp ugt i8 %i.ami, 2
  %i.apc = zext i1 %i.apb to i64
  %i.apd = icmp ugt i8 %i.amm, 2
  %i.ape = zext i1 %i.apd to i64
  %i.apf = icmp ugt i8 %i.amq, 2
  %i.apg = zext i1 %i.apf to i64
  %i.aph = icmp ugt i8 %i.amu, 2
  %i.api = zext i1 %i.aph to i64
  %i.apj = icmp ugt i8 %i.amy, 2
  %i.apk = zext i1 %i.apj to i64
  %i.apl = icmp ugt i8 %i.anc, 2
  %i.apm = zext i1 %i.apl to i64
  %i.apn = icmp ugt i64 %.val.i47.i.i, 216172782113783807
  %i.apo = zext i1 %i.apn to i64
  %i.app = icmp ugt i8 %i.anh, 2
  %i.apq = zext i1 %i.app to i64
  %i.apr = icmp ugt i8 %i.anl, 2
  %i.aps = zext i1 %i.apr to i64
  %i.apt = icmp ugt i8 %i.anp, 2
  %i.apu = zext i1 %i.apt to i64
  %i.apv = icmp ugt i8 %i.ant, 2
  %i.apw = zext i1 %i.apv to i64
  %i.apx = icmp ugt i8 %i.anx, 2
  %i.apy = zext i1 %i.apx to i64
  %i.apz = icmp ugt i8 %i.aob, 2
  %i.aqa = zext i1 %i.apz to i64
  %i.aqb = icmp ugt i8 %i.aof, 2
  %i.aqc = zext i1 %i.aqb to i64
  %i.aqd = icmp ugt i64 %.val15.i.i.i, 216172782113783807
  %i.aqe = zext i1 %i.aqd to i64
  %i.aqf = add nuw nsw i64 %i.apa, %i.apo
  %i.aqg = add nuw nsw i64 %i.aqf, %i.aqe
  %i.aqh = add nuw nsw i64 %i.aqg, %i.apc
  %i.aqi = add nuw nsw i64 %i.aqh, %i.ape
  %i.aqj = add nuw nsw i64 %i.aqi, %i.apg
  %i.aqk = add nuw nsw i64 %i.aqj, %i.api
  %i.aql = add nuw nsw i64 %i.aqk, %i.apk
  %i.aqm = add nuw nsw i64 %i.aql, %i.apm
  %i.aqn = add nuw nsw i64 %i.aqm, %i.apq
  %i.aqo = add nuw nsw i64 %i.aqn, %i.aps
  %i.aqp = add nuw nsw i64 %i.aqo, %i.apu
  %i.aqq = add nuw nsw i64 %i.aqp, %i.apw
  %i.aqr = add nuw nsw i64 %i.aqq, %i.apy
  %i.aqs = add nuw nsw i64 %i.aqr, %i.aqa
  %i.aqt = add nuw nsw i64 %i.aqs, %i.aqc
  %i.aqu = icmp ugt i8 %i.amf, 14
  %i.aqv = select i1 %i.aqu, i64 9, i64 8
  %i.aqw = icmp ugt i8 %i.ami, 14
  %i.aqx = zext i1 %i.aqw to i64
  %i.aqy = icmp ugt i8 %i.amm, 14
  %i.aqz = zext i1 %i.aqy to i64
  %i.ara = icmp ugt i8 %i.amq, 14
  %i.arb = zext i1 %i.ara to i64
  %i.arc = icmp ugt i8 %i.amu, 14
  %i.ard = zext i1 %i.arc to i64
  %i.are = icmp ugt i8 %i.amy, 14
  %i.arf = zext i1 %i.are to i64
  %i.arg = icmp ugt i8 %i.anc, 14
  %i.arh = zext i1 %i.arg to i64
  %i.ari = icmp ugt i64 %.val.i47.i.i, 1080863910568919039
  %i.arj = zext i1 %i.ari to i64
  %i.ark = icmp ugt i8 %i.anh, 14
  %i.arl = zext i1 %i.ark to i64
  %i.arm = icmp ugt i8 %i.anl, 14
  %i.arn = zext i1 %i.arm to i64
  %i.aro = icmp ugt i8 %i.anp, 14
  %i.arp = zext i1 %i.aro to i64
  %i.arq = icmp ugt i8 %i.ant, 14
  %i.arr = zext i1 %i.arq to i64
  %i.ars = icmp ugt i8 %i.anx, 14
  %i.art = zext i1 %i.ars to i64
  %i.aru = icmp ugt i8 %i.aob, 14
  %i.arv = zext i1 %i.aru to i64
  %i.arw = icmp ugt i8 %i.aof, 14
  %i.arx = zext i1 %i.arw to i64
  %i.ary = icmp ugt i64 %.val15.i.i.i, 1080863910568919039
  %i.arz = zext i1 %i.ary to i64
  %i.asa = add nuw nsw i64 %i.aqv, %i.arj
  %i.asb = add nuw nsw i64 %i.asa, %i.arz
  %i.asc = add nuw nsw i64 %i.asb, %i.aqx
  %i.asd = add nuw nsw i64 %i.asc, %i.aqz
  %i.ase = add nuw nsw i64 %i.asd, %i.arb
  %i.asf = add nuw nsw i64 %i.ase, %i.ard
  %i.asg = add nuw nsw i64 %i.asf, %i.arf
  %i.ash = add nuw nsw i64 %i.asg, %i.arh
  %i.asi = add nuw nsw i64 %i.ash, %i.arl
  %i.asj = add nuw nsw i64 %i.asi, %i.arn
  %i.ask = add nuw nsw i64 %i.asj, %i.arp
  %i.asl = add nuw nsw i64 %i.ask, %i.arr
  %i.asm = add nuw nsw i64 %i.asl, %i.art
  %i.asn = add nuw nsw i64 %i.asm, %i.arv
  %i.aso = add nuw nsw i64 %i.asn, %i.arx
  %i.asp = tail call i64 @llvm.umin.i64(i64 %i.aoy, i64 %i.aqt)
  %i.asq = tail call i64 @llvm.umin.i64(i64 %i.asp, i64 %i.aso) ; 2 uses
  %i.asr = tail call i64 @llvm.umin.i64(i64 %i.asq, i64 %i.ame)
  %i.ass = add i64 %i.asr, %.04351.i.i            ; 2 uses
  %i.ast = tail call i64 @llvm.umin.i64(i64 %i.asq, i64 16)
  %i.asu = add i64 %i.ast, %.04450.i.i            ; 2 uses
  %i.asv = add nuw nsw i64 %.04549.i.i, 16        ; 2 uses
  %i.asw = icmp ult i64 %i.asv, %i.zu
  br i1 %i.asw, label %.preheader.i110, label %.loopexit311, !llvm.loop !28

.thread82.i:                                      ; preds = %bb.y, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, %bb.x, %bb.w
  %.054.tr84.i = trunc i64 %.054120.i to i8
  %i.asx = shl i8 %.054.tr84.i, 1
  %i.asy = and i8 %i.asx, 6
  %i.asz = shl nuw i8 2, %i.asy
  %i.ata = lshr i64 %.054120.i, 2
  %i.atb = getelementptr inbounds nuw i8, ptr %.093, i64 %i.ata ; 2 uses
  %i.atc = load i8, ptr %i.atb, align 1, !tbaa !9
  %i.atd = or i8 %i.atc, %i.asz
  store i8 %i.atd, ptr %i.atb, align 1, !tbaa !9
  br label %.thread92.i

bb.z:                                             ; preds = %.loopexit311
  %i.ate = icmp uge i64 %.lcssa272, %.lcssa       ; 2 uses
  %i.atf = zext i1 %i.ate to i8
  %.054.tr.i = trunc i64 %.054120.i to i8
  %i.atg = shl i8 %.054.tr.i, 1
  %i.ath = and i8 %i.atg, 6
  %i.ati = shl nuw nsw i8 %i.atf, %i.ath
  %i.atj = lshr i64 %.054120.i, 2
  %i.atk = getelementptr inbounds nuw i8, ptr %.093, i64 %i.atj ; 2 uses
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !9
  %i.atm = or i8 %i.atl, %i.ati
  store i8 %i.atm, ptr %i.atk, align 1, !tbaa !9
  %i.atn = zext i1 %i.ate to i64
  br label %.thread79.i

bb.aa:                                            ; preds = %.thread88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058119.i, ptr nonnull align 16 %i.a, i64 %i.zq, i1 false)
  %i.ato = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.zq
  br label %.thread92.i

.thread79.i:                                      ; preds = %bb.z, %.thread85.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134
  %.081.i = phi i64 [ 1, %.thread85.i ], [ %i.atn, %bb.z ], [ 0, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134 ]
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr @_ZN7meshoptL7kBitsV1E, i64 %.081.i
  %i.atq = select i1 %7, ptr @_ZN7meshoptL7kBitsV0E, ptr %i.atp ; 7 uses
  %i.atr = ptrtoint ptr %.058119.i to i64
  %i.ats = sub i64 %i.m, %i.atr
  %i.att = icmp ult i64 %i.ats, %i.aac
  br i1 %i.att, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.thread79.i
  %i.atu = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.aac ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.058119.i, i8 0, i64 %i.aac, i1 false)
  %i.atv = ptrtoint ptr %i.atu to i64
  %i.atw = sub i64 %i.m, %i.atv
  %i.atx = icmp ult i64 %i.atw, 24
  %or.cond76.i.i = select i1 %i.zz, i1 true, i1 %i.atx
  br i1 %or.cond76.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atq, i64 12
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atq, i64 4
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.aub = load i32, ptr %i.aty, align 4, !tbaa !13 ; 4 uses
  %i.auc = load i32, ptr %i.atq, align 4, !tbaa !13 ; 4 uses
  %i.aud = load i32, ptr %i.atz, align 4, !tbaa !13 ; 4 uses
  %i.aue = load i32, ptr %i.aua, align 4, !tbaa !13 ; 4 uses
  %i.auf = sext i32 %i.aub to i64
  %i.aug = shl nsw i64 %i.auf, 1
  %i.auh = and i64 %i.aug, 2305843009213693950
  %notmask.i.i = shl nsw i32 -1, %i.aub
  %i.aui = and i32 %notmask.i.i, 255
  %i.auj = xor i32 %i.aui, 255                    ; 3 uses
  %i.auk = sext i32 %i.auc to i64
  %i.aul = shl nsw i64 %i.auk, 1
  %i.aum = and i64 %i.aul, 2305843009213693950
  %notmask.i63.i.i = shl nsw i32 -1, %i.auc
  %i.aun = and i32 %notmask.i63.i.i, 255
  %i.auo = xor i32 %i.aun, 255                    ; 3 uses
  %.not.i73.i = icmp eq i32 %i.aub, 8
  %i.aup = sext i32 %i.aud to i64
  %i.auq = shl nsw i64 %i.aup, 1
  %i.aur = and i64 %i.auq, 2305843009213693950
  %notmask.i63.1.i.i = shl nsw i32 -1, %i.aud
  %i.aus = and i32 %notmask.i63.1.i.i, 255
  %i.aut = xor i32 %i.aus, 255                    ; 3 uses
  %i.auu = sext i32 %i.aue to i64
  %i.auv = shl nsw i64 %i.auu, 1
  %i.auw = and i64 %i.auv, 2305843009213693950
  %notmask.i63.2.i.i = shl nsw i32 -1, %i.aue
  %i.aux = and i32 %notmask.i63.2.i.i, 255
  %i.auy = xor i32 %i.aux, 255                    ; 3 uses
  %i.auz = insertelement <14 x i32> poison, i32 %i.auy, i64 0
  %i.ava = shufflevector <14 x i32> %i.auz, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.avb = insertelement <14 x i32> poison, i32 %i.aut, i64 0
  %i.avc = shufflevector <14 x i32> %i.avb, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.avd = insertelement <14 x i32> poison, i32 %i.auo, i64 0
  %i.ave = shufflevector <14 x i32> %i.avd, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.avf = insertelement <14 x i32> poison, i32 %i.auj, i64 0
  %i.avg = shufflevector <14 x i32> %i.avf, <14 x i32> poison, <14 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %.lr.ph.i.i
  %.05079.i.i = phi ptr [ %i.atu, %.lr.ph.i.i ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 7 uses
  %.05678.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bbs, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 4 uses
  %.05777.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %i.bey, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05678.i.i ; 30 uses
  switch i32 %i.aub, label %.loopexit.loopexit.i.i [
    i32 0, label %bb.ad
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i = load i64, ptr %i.avh, align 16
  %i.avi = getelementptr i8, ptr %i.avh, i64 8
  %.val15.i.i = load i64, ptr %i.avi, align 8
  %i.avj = or i64 %.val15.i.i, %.val.i.i
  %i.avk = icmp ne i64 %i.avj, 0
  %i.avl = sext i1 %i.avk to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ac
  %i.avm = load i8, ptr %i.avh, align 16, !tbaa !9
  %i.avn = zext i8 %i.avm to i32
  %i.avo = icmp samesign ule i32 %i.auj, %i.avn
  %i.avp = zext i1 %i.avo to i64
  %i.avq = or disjoint i64 %i.auh, %i.avp
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avh, i64 1
  %i.avs = load <14 x i8>, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext <14 x i8> %i.avs to <14 x i32>
  %i.avu = icmp samesign ule <14 x i32> %i.avg, %i.avt
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avh, i64 15
  %i.avw = load i8, ptr %i.avv, align 1, !tbaa !9
  %i.avx = zext i8 %i.avw to i32
  %i.avy = icmp samesign ule i32 %i.auj, %i.avx
  %i.avz = zext i1 %i.avy to i64
  %i.awa = bitcast <14 x i1> %i.avu to i14
  %i.awb = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.awa)
  %i.awc = zext nneg i14 %i.awb to i64
  %op.rdx317.a = add nuw nsw i64 %i.awc, %i.avz
  %op.rdx318.a = add nuw nsw i64 %op.rdx317.a, %i.avq
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i: ; preds = %.loopexit.loopexit.i.i, %bb.ad, %bb.ac
  %.013.i.i = phi i64 [ %i.avl, %bb.ad ], [ 16, %bb.ac ], [ %op.rdx318.a, %.loopexit.loopexit.i.i ] ; 3 uses
  %i.awd = getelementptr i8, ptr %i.avh, i64 8    ; 4 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avh, i64 1 ; 4 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avh, i64 2
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avh, i64 3
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avh, i64 4
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avh, i64 5
  %i.awj = getelementptr inbounds nuw i8, ptr %i.avh, i64 6
  %i.awk = getelementptr inbounds nuw i8, ptr %i.avh, i64 7
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avh, i64 9
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avh, i64 10
  %i.awn = getelementptr inbounds nuw i8, ptr %i.avh, i64 11
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avh, i64 12
  %i.awp = getelementptr inbounds nuw i8, ptr %i.avh, i64 13
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avh, i64 14
  %i.awr = getelementptr inbounds nuw i8, ptr %i.avh, i64 15 ; 4 uses
  switch i32 %i.auc, label %.loopexit.loopexit.i.i.i [
    i32 0, label %bb.ag
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  ]

bb.ae:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05079.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.avh, i64 16, i1 false)
  %i.aws = getelementptr inbounds nuw i8, ptr %.05079.i.i, i64 16
  br label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i

bb.af:                                            ; preds = %bb.at
  %i.awt = sdiv i32 8, %i.bey                     ; 6 uses
  %i.awu = sext i32 %i.awt to i64                 ; 4 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.bey
  %i.awv = trunc i32 %notmask.i.i.i to i8
  %i.aww = xor i8 %i.awv, -1                      ; 23 uses
  %.not.i.i75.i = icmp eq i32 %i.awt, 0
  %i.awx = icmp eq i32 %i.bey, 1                  ; 2 uses
  br i1 %.not.i.i75.i, label %.split.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.af
  br i1 %i.awx, label %.preheader48.us.us.i.i.i.preheader, label %.preheader48.us.i.i.i.preheader

.preheader48.us.i.i.i.preheader:                  ; preds = %.split.us.i.i.i
  %i.awy = icmp eq i32 %i.awt, 1
  %unroll_iter398 = and i64 %i.awu, -2
  %i.awz = and i32 %i.awt, 1
  %lcmp.mod395.not = icmp eq i32 %i.awz, 0
  %lcmp.mod397 = trunc i32 %i.awt to i1
  br label %.preheader48.us.i.i.i

.preheader48.us.us.i.i.i.preheader:               ; preds = %.split.us.i.i.i
  %i.axa = icmp ult i32 %i.awt, 4
  br label %.preheader48.us.us.i.i.i

.preheader48.us.us.i.i.i:                         ; preds = %.preheader48.us.us.i.i.i.preheader, %._crit_edge.us.us.i.i.i
  %.04352.us.us.i.i.i = phi i64 [ %i.aye, %._crit_edge.us.us.i.i.i ], [ 0, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %.04451.us.us.i.i.i = phi ptr [ %i.ayd, %._crit_edge.us.us.i.i.i ], [ %.05079.i.i, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %i.axb = getelementptr i8, ptr %i.avh, i64 %.04352.us.us.i.i.i ; 4 uses
  %i.axc = xor i1 %i.axa, true
  call void @llvm.assume(i1 %i.axc)
  br label %.preheader48.us.us.i.i.i.new

.preheader48.us.us.i.i.i.new:                     ; preds = %.preheader48.us.us.i.i.i, %.preheader48.us.us.i.i.i.new
  %.04150.us.us.i.i.i = phi i64 [ %i.axw, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ] ; 5 uses
  %.04249.us.us.i.i.i = phi i8 [ %i.axv, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ]
  %niter407 = phi i64 [ %niter407.next.3, %.preheader48.us.us.i.i.i.new ], [ 0, %.preheader48.us.us.i.i.i ]
  %i.axd = getelementptr i8, ptr %i.axb, i64 %.04150.us.us.i.i.i
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !9
  %..us.us.i.i.i = tail call i8 @llvm.umin.i8(i8 %i.axe, i8 %i.aww)
  %i.axf = getelementptr i8, ptr %i.axb, i64 %.04150.us.us.i.i.i
  %i.axg = getelementptr i8, ptr %i.axf, i64 1
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !9
  %..us.us.i.i.i.1 = tail call i8 @llvm.umin.i8(i8 %i.axh, i8 %i.aww)
  %i.axi = shl i8 %.04249.us.us.i.i.i, 2
  %i.axj = shl nuw nsw i8 %..us.us.i.i.i, 1
  %i.axk = or i8 %i.axi, %i.axj
  %i.axl = or disjoint i8 %..us.us.i.i.i.1, %i.axk
  %i.axm = getelementptr i8, ptr %i.axb, i64 %.04150.us.us.i.i.i
  %i.axn = getelementptr i8, ptr %i.axm, i64 2
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !9
  %..us.us.i.i.i.2 = tail call i8 @llvm.umin.i8(i8 %i.axo, i8 %i.aww)
  %i.axp = getelementptr i8, ptr %i.axb, i64 %.04150.us.us.i.i.i
  %i.axq = getelementptr i8, ptr %i.axp, i64 3
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !9
  %..us.us.i.i.i.3 = tail call i8 @llvm.umin.i8(i8 %i.axr, i8 %i.aww)
  %i.axs = shl i8 %i.axl, 2
  %i.axt = shl nuw nsw i8 %..us.us.i.i.i.2, 1
  %i.axu = or i8 %i.axs, %i.axt
  %i.axv = or disjoint i8 %..us.us.i.i.i.3, %i.axu ; 2 uses
  %i.axw = add nuw i64 %.04150.us.us.i.i.i, 4
  %niter407.next.3 = add i64 %niter407, 4         ; 2 uses
  %niter407.ncmp.3 = icmp eq i64 %niter407.next.3, %i.awu
  br i1 %niter407.ncmp.3, label %._crit_edge.us.us.i.i.i, label %.preheader48.us.us.i.i.i.new, !llvm.loop !29

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader48.us.us.i.i.i.new
  %i.axx = zext i8 %i.axv to i64
  %i.axy = mul nuw nsw i64 %i.axx, 2149582850
  %i.axz = and i64 %i.axy, 36578664720
  %i.aya = mul i64 %i.axz, 4311810305
  %i.ayb = lshr i64 %i.aya, 32
  %i.ayc = trunc i64 %i.ayb to i8
  %i.ayd = getelementptr inbounds nuw i8, ptr %.04451.us.us.i.i.i, i64 1 ; 2 uses
  store i8 %i.ayc, ptr %.04451.us.us.i.i.i, align 1, !tbaa !9
  %i.aye = add nuw nsw i64 %.04352.us.us.i.i.i, %i.awu ; 2 uses
end_hunk_2
begin_hunk_3_@meshopt_encodeVertexBufferLevel:bb.a
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  %i.bbz = load i8, ptr %i.avh, align 16, !tbaa !9
  %i.bca = zext i8 %i.bbz to i32
  %i.bcb = icmp samesign ule i32 %i.auo, %i.bca
  %i.bcc = zext i1 %i.bcb to i64
  %i.bcd = or disjoint i64 %i.aum, %i.bcc
  %i.bce = load <14 x i8>, ptr %i.awe, align 1, !tbaa !9
  %i.bcf = zext <14 x i8> %i.bce to <14 x i32>
  %i.bcg = icmp samesign ule <14 x i32> %i.ave, %i.bcf
  %i.bch = load i8, ptr %i.awr, align 1, !tbaa !9
  %i.bci = zext i8 %i.bch to i32
  %i.bcj = icmp samesign ule i32 %i.auo, %i.bci
  %i.bck = zext i1 %i.bcj to i64
  %i.bcl = bitcast <14 x i1> %i.bcg to i14
  %i.bcm = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.bcl)
  %i.bcn = zext nneg i14 %i.bcm to i64
  %op.rdx315.a = add nuw nsw i64 %i.bcn, %i.bck
  %op.rdx316.a = add nuw nsw i64 %op.rdx315.a, %i.bcd
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i: ; preds = %.loopexit.loopexit.i.i.i, %bb.ag, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  %.013.i.i.i = phi i64 [ %i.bby, %bb.ag ], [ 16, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i ], [ %op.rdx316.a, %.loopexit.loopexit.i.i.i ] ; 3 uses
  %i.bco = icmp ult i64 %.013.i.i.i, %.013.i.i
  br i1 %i.bco, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  %i.bcp = icmp ne i64 %.013.i.i.i, %.013.i.i
  %i.bcq = icmp ne i32 %i.auc, %.05777.i.i
  %or.cond64.not106.i.i = or i1 %i.bcq, %i.bcp
  %or.cond103.i.i = or i1 %.not.i73.i, %or.cond64.not106.i.i
  br i1 %or.cond103.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.155.i.i = phi i32 [ 0, %bb.ai ], [ 3, %bb.ah ] ; 3 uses
  %.153.i.i = phi i64 [ %.013.i.i.i, %bb.ai ], [ %.013.i.i, %bb.ah ] ; 4 uses
  switch i32 %i.aud, label %.loopexit.loopexit.i.1.i.i [
    i32 0, label %bb.ak
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %.val.i.1.i.i = load i64, ptr %i.avh, align 16
  %.val15.i.1.i.i = load i64, ptr %i.awd, align 8
  %i.bcr = or i64 %.val15.i.1.i.i, %.val.i.1.i.i
  %i.bcs = icmp ne i64 %i.bcr, 0
  %i.bct = sext i1 %i.bcs to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i

.loopexit.loopexit.i.1.i.i:                       ; preds = %bb.aj
  %i.bcu = load i8, ptr %i.avh, align 16, !tbaa !9
  %i.bcv = zext i8 %i.bcu to i32
  %i.bcw = icmp samesign ule i32 %i.aut, %i.bcv
  %i.bcx = zext i1 %i.bcw to i64
  %i.bcy = or disjoint i64 %i.aur, %i.bcx
  %i.bcz = load <14 x i8>, ptr %i.awe, align 1, !tbaa !9
  %i.bda = zext <14 x i8> %i.bcz to <14 x i32>
  %i.bdb = icmp samesign ule <14 x i32> %i.avc, %i.bda
  %i.bdc = load i8, ptr %i.awr, align 1, !tbaa !9
  %i.bdd = zext i8 %i.bdc to i32
  %i.bde = icmp samesign ule i32 %i.aut, %i.bdd
  %i.bdf = zext i1 %i.bde to i64
  %i.bdg = bitcast <14 x i1> %i.bdb to i14
  %i.bdh = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.bdg)
  %i.bdi = zext nneg i14 %i.bdh to i64
  %op.rdx313 = add nuw nsw i64 %i.bdi, %i.bdf
  %op.rdx314.a = add nuw nsw i64 %op.rdx313, %i.bcy
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i: ; preds = %.loopexit.loopexit.i.1.i.i, %bb.ak, %bb.aj
  %.013.i.1.i.i = phi i64 [ %i.bct, %bb.ak ], [ 16, %bb.aj ], [ %op.rdx314.a, %.loopexit.loopexit.i.1.i.i ] ; 3 uses
  %i.bdj = icmp ult i64 %.013.i.1.i.i, %.153.i.i
  br i1 %i.bdj, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  %i.bdk = icmp eq i64 %.013.i.1.i.i, %.153.i.i
  %i.bdl = icmp eq i32 %i.aud, %.05777.i.i
  %or.cond64.1.i.i = and i1 %i.bdl, %i.bdk
  br i1 %or.cond64.1.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.bdm = zext nneg i32 %.155.i.i to i64
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.bdm
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !13
  %.not.1.i.i = icmp eq i32 %i.bdo, 8
  br i1 %.not.1.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.1.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.155.1.i.i = phi i32 [ 1, %bb.an ], [ %.155.i.i, %bb.am ], [ %.155.i.i, %bb.al ] ; 3 uses
  %.153.1.i.i = phi i64 [ %.013.i.1.i.i, %bb.an ], [ %.153.i.i, %bb.am ], [ %.153.i.i, %bb.al ] ; 2 uses
  switch i32 %i.aue, label %.loopexit.loopexit.i.2.i.i [
    i32 0, label %bb.ap
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  ]

bb.ap:                                            ; preds = %bb.ao
  %.val.i.2.i.i = load i64, ptr %i.avh, align 16
  %.val15.i.2.i.i = load i64, ptr %i.awd, align 8
  %i.bdp = or i64 %.val15.i.2.i.i, %.val.i.2.i.i
  %i.bdq = icmp ne i64 %i.bdp, 0
  %i.bdr = sext i1 %i.bdq to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i

.loopexit.loopexit.i.2.i.i:                       ; preds = %bb.ao
  %i.bds = load i8, ptr %i.avh, align 16, !tbaa !9
  %i.bdt = zext i8 %i.bds to i32
  %i.bdu = icmp samesign ule i32 %i.auy, %i.bdt
  %i.bdv = zext i1 %i.bdu to i64
  %i.bdw = or disjoint i64 %i.auw, %i.bdv
  %i.bdx = load <14 x i8>, ptr %i.awe, align 1, !tbaa !9
  %i.bdy = zext <14 x i8> %i.bdx to <14 x i32>
  %i.bdz = icmp samesign ule <14 x i32> %i.ava, %i.bdy
  %i.bea = load i8, ptr %i.awr, align 1, !tbaa !9
  %i.beb = zext i8 %i.bea to i32
  %i.bec = icmp samesign ule i32 %i.auy, %i.beb
  %i.bed = zext i1 %i.bec to i64
  %i.bee = bitcast <14 x i1> %i.bdz to i14
  %i.bef = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.bee)
  %i.beg = zext nneg i14 %i.bef to i64
  %op.rdx = add nuw nsw i64 %i.beg, %i.bed
  %op.rdx312 = add nuw nsw i64 %op.rdx, %i.bdw
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i: ; preds = %.loopexit.loopexit.i.2.i.i, %bb.ap, %bb.ao
  %.013.i.2.i.i = phi i64 [ %i.bdr, %bb.ap ], [ 16, %bb.ao ], [ %op.rdx312, %.loopexit.loopexit.i.2.i.i ] ; 2 uses
  %i.beh = icmp ult i64 %.013.i.2.i.i, %.153.1.i.i
  br i1 %i.beh, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  %i.bei = icmp eq i64 %.013.i.2.i.i, %.153.1.i.i
  %i.bej = icmp eq i32 %i.aue, %.05777.i.i
  %or.cond64.2.i.i = and i1 %i.bej, %i.bei
  br i1 %or.cond64.2.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.bek = zext nneg i32 %.155.1.i.i to i64
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.bek
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !13
  %.not.2.i.i = icmp eq i32 %i.bem, 8
  br i1 %.not.2.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.2.i.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.155.2.i.i = phi i32 [ 2, %bb.as ], [ %.155.1.i.i, %bb.ar ], [ %.155.1.i.i, %bb.aq ] ; 2 uses
  %i.ben = trunc i64 %.05678.i.i to i32
  %i.beo = lshr exact i32 %i.ben, 3
  %i.bep = and i32 %i.beo, 6
  %i.beq = shl nuw nsw i32 %.155.2.i.i, %i.bep
  %i.ber = lshr i64 %.05678.i.i, 6
  %i.bes = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.ber ; 2 uses
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !9
  %i.beu = trunc nuw i32 %i.beq to i8
  %i.bev = or i8 %i.bet, %i.beu
  store i8 %i.bev, ptr %i.bes, align 1, !tbaa !9
  %i.bew = zext nneg i32 %.155.2.i.i to i64
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.bew
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !13 ; 8 uses
  switch i32 %i.bey, label %bb.af [
    i32 0, label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i
    i32 8, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %bb.ab
  %.050.lcssa.i.i = phi ptr [ %i.atu, %bb.ab ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 2 uses
  %.not60.lcssa.i.i = phi i1 [ %i.zz, %bb.ab ], [ %.not60.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ]
  %.not68.not154.i = icmp ne ptr %.050.lcssa.i.i, null
  %.not68.not.not.i = select i1 %.not60.lcssa.i.i, i1 %.not68.not154.i, i1 false
  br i1 %.not68.not.not.i, label %.thread92.i, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread

.thread92.i:                                      ; preds = %.loopexit.i, %bb.aa, %.thread82.i
  %.26095.i = phi ptr [ %.050.lcssa.i.i, %.loopexit.i ], [ %.058119.i, %.thread82.i ], [ %i.ato, %bb.aa ] ; 3 uses
  %i.bez = add nuw i64 %.054120.i, 1              ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %i.bez, %4
  br i1 %exitcond.not.i111, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, label %bb.u, !llvm.loop !32

_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread: ; preds = %bb.t, %.thread79.i, %.thread88.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit: ; preds = %.thread92.i
  %i.bfa = add i64 %i.zq, -1
  %i.bfb = mul i64 %i.bfa, %4
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.bfb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr readonly align 1 %i.bfc, i64 %4, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not102.not = icmp eq ptr %.26095.i, null
  %i.bfd = add i64 %i.zq, %.0
  br i1 %.not102.not, label %.loopexit, label %bb.s, !llvm.loop !33

bb.au:                                            ; preds = %bb.s
  %i.bfe = add i64 %i.zk, %4                      ; 3 uses
  %i.bff = select i1 %7, i64 32, i64 24           ; 2 uses
  %i.bfg = tail call i64 @llvm.umax.i64(i64 %i.bfe, i64 %i.bff) ; 2 uses
  %i.bfh = ptrtoint ptr %.093 to i64
  %i.bfi = sub i64 %i.m, %i.bfh
  %i.bfj = icmp ult i64 %i.bfi, %i.bfg
  br i1 %i.bfj, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bfk = icmp ult i64 %i.bfe, %i.bff
  br i1 %i.bfk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bfl = sub nuw i64 %i.bfg, %i.bfe             ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.bfl, i1 false)
  %i.bfm = getelementptr inbounds nuw i8, ptr %.093, i64 %i.bfl
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.194 = phi ptr [ %i.bfm, %bb.aw ], [ %.093, %bb.av ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.194, ptr nonnull align 16 %i.f, i64 %4, i1 false)
  %i.bfn = getelementptr inbounds nuw i8, ptr %.194, i64 %4 ; 3 uses
  br i1 %i.aa, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bfn, ptr nonnull align 16 %i.h, i64 %i.zj, i1 false)
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 %i.zj
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.295 = phi ptr [ %i.bfo, %bb.ay ], [ %i.bfn, %bb.ax ]
  %i.bfp = ptrtoint ptr %.295 to i64
  %i.bfq = sub i64 %i.bfp, %i.n
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, %bb.az, %bb.au
  %.3 = phi i64 [ 0, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread ], [ %i.bfq, %bb.az ], [ 0, %bb.au ], [ 0, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ]
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
