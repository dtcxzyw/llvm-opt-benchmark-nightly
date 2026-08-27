Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ojph::local::tag_tree" = type { i32, i32, i32, [16 x ptr] }
%"struct.ojph::local::bit_read_buf" = type { ptr, i32, i32, i8, i32 }

@_ZN4ojph5local13bit_write_buf6neededE = hidden local_unnamed_addr constant i32 512, align 4
@.str = private unnamed_addr constant [27 x i8] c"error reading from file p1\00", align 1
@_ZTIPKc = external constant ptr
@.str.1 = private unnamed_addr constant [27 x i8] c"error reading from file p2\00", align 1
@.str.2 = private unnamed_addr constant [130 x i8] c"error in parsing a tile header; missing msbs are larger or equal to Kmax. The most likely cause is a corruption in the bitstream.\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error reading from file p3\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error reading from file p4\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"error reading from file p5\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"error reading from file p6\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"error reading from file p7\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"error reading from file p8\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"error reading from file p9\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"The cleanup segment of an HT codeblock cannot contain less than 2 bytes\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"The cleanup segment of an HT codeblock must contain less than 65535 bytes\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"error reading from file p10\00", align 1
@.str.13 = private unnamed_addr constant [104 x i8] c"The refinement segment (SigProp and MagRep passes) of an HT codeblock must contain less than 2047 bytes\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"error reading from file\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"something is wrong with SOP length\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"error seeking file\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"precinct truncated early\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"should find EPH, but found something else\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(98) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 52 uses
  %4 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  %5 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  %6 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  %7 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = shl i32 %1, 1
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.bj
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread, label %bb.bk

bb.c:                                             ; preds = %bb.a, %bb.bj
  %indvars.iv605 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next606, %bb.bj ] ; 5 uses
  %.0251581 = phi i32 [ 0, %bb.a ], [ %.5, %bb.bj ] ; 9 uses
  %.0253580 = phi i32 [ 0, %bb.a ], [ %.4257, %bb.bj ] ; 10 uses
  %.0507578 = phi i32 [ 0, %bb.a ], [ %.13, %bb.bj ] ; 10 uses
  %.sroa.0.0577 = phi ptr [ null, %bb.a ], [ %.sroa.0.13, %bb.bj ] ; 10 uses
  %.sroa.42.0576 = phi i32 [ 0, %bb.a ], [ %.sroa.42.13, %bb.bj ] ; 7 uses
  %.sroa.81494.0575 = phi i64 [ 0, %bb.a ], [ %.sroa.81494.13, %bb.bj ] ; 8 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv605
  %i.s = load i8, ptr %i.r, align 8, !tbaa !18, !range !28, !noundef !29
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.bj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv605 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 9 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.bj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.bj, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %i.w, -1
  %i.ac = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ab, i1 false)
  %i.ad = sub nuw nsw i32 32, %i.ac               ; 2 uses
  %i.ae = add i32 %i.z, -1
  %i.af = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ae, i1 false)
  %i.ag = sub nuw nsw i32 32, %i.af               ; 2 uses
  %spec.select = call i32 @llvm.umax.i32(i32 %i.ad, i32 %i.ag) ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ah = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %.sroa.0185.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %i.ai = add nuw nsw i32 %spec.select, 2
  %wide.trip.count.i = zext nneg i32 %i.ai to i64 ; 16 uses
  %min.iters.check856 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check856, label %scalar.ph855.preheader, label %vector.ph857

vector.ph857:                                     ; preds = %bb.f
  %n.vec858 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph857
  %index860 = phi i64 [ 0, %vector.ph857 ], [ %index.next865, %vector.body859 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index860 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %wide.load861 = load <2 x i32>, ptr %i.aj, align 4, !tbaa !33
  %wide.load862 = load <2 x i32>, ptr %i.ak, align 4, !tbaa !33
  %i.al = zext <2 x i32> %wide.load861 to <2 x i64>
  %i.am = zext <2 x i32> %wide.load862 to <2 x i64>
  %wide.gep863 = getelementptr inbounds nuw i8, ptr %i.ah, <2 x i64> %i.al
  %wide.gep864 = getelementptr inbounds nuw i8, ptr %i.ah, <2 x i64> %i.am
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index860 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x ptr> %wide.gep863, ptr %i.an, align 8, !tbaa !34
  store <2 x ptr> %wide.gep864, ptr %i.ao, align 8, !tbaa !34
  %index.next865 = add nuw i64 %index860, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next865, %n.vec858
  br i1 %i.ap, label %middle.block866, label %vector.body859, !llvm.loop !35

middle.block866:                                  ; preds = %vector.body859
  %cmp.n867 = icmp eq i64 %n.vec858, %wide.trip.count.i
  br i1 %cmp.n867, label %.preheader.i, label %scalar.ph855.preheader

scalar.ph855.preheader:                           ; preds = %bb.f, %middle.block866
  %indvars.iv.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec858, %middle.block866 ]
  br label %scalar.ph855

.preheader.i:                                     ; preds = %scalar.ph855, %middle.block866
  %i.aq = add nuw nsw i32 %spec.select, 1         ; 5 uses
  %i.ar = icmp samesign ult i32 %spec.select, 14  ; 4 uses
  br i1 %i.ar, label %.lr.ph.i, label %.lr.ph29.i

scalar.ph855:                                     ; preds = %scalar.ph855.preheader, %scalar.ph855
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph855 ], [ %indvars.iv.i.ph, %scalar.ph855.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.preheader.i, label %scalar.ph855, !llvm.loop !39

.lr.ph29.i:                                       ; preds = %.lr.ph.i, %.preheader.i
  store i64 %.sroa.0185.0.copyload, ptr %4, align 8
  %wide.trip.count40.i = zext nneg i32 %i.aq to i64 ; 15 uses
  %i.ax = trunc i64 %.sroa.0185.0.copyload to i32 ; 5 uses
  %i.ay = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.az = zext nneg i32 %i.ad to i64              ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %xtraiter = and i64 %wide.trip.count40.i, 3     ; 3 uses
  %i.ba = icmp samesign ult i64 %umax, 3
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count40.i, 124
  br label %bb.g

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %wide.trip.count.i, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv33.i
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.bb, align 8, !tbaa !34
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.bc = and i64 %indvars.iv.next34.i, 4294967295
  %exitcond36.not.i = icmp eq i64 %i.bc, 16
  br i1 %exitcond36.not.i, label %.lr.ph29.i, label %.lr.ph.i, !llvm.loop !40

bb.g:                                             ; preds = %bb.g, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next38.i.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.3, %bb.g ]
  %i.bd = trunc nuw i64 %indvars.iv37.i to i32
  %i.be = sub i32 %spec.select, %i.bd
  %i.bf = shl i32 %i.be, 1
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv37.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = zext nneg i32 %i.bg to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, i8 -1, i64 %i.bj, i1 false)
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.bl = sub i32 %spec.select, %i.bk
  %i.bm = shl i32 %i.bl, 1
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next38.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.bq = zext nneg i32 %i.bn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 -1, i64 %i.bq, i1 false)
  %indvars.iv.next38.i.1 = or disjoint i64 %indvars.iv37.i, 2 ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.bs = sub i32 %spec.select, %i.br
  %i.bt = shl i32 %i.bs, 1
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next38.i.1
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34
  %i.bx = zext nneg i32 %i.bu to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i8 -1, i64 %i.bx, i1 false)
  %indvars.iv.next38.i.2 = or disjoint i64 %indvars.iv37.i, 3 ; 2 uses
  %i.by = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.bz = sub i32 %spec.select, %i.by
  %i.ca = shl i32 %i.bz, 1
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next38.i.2
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34
  %i.ce = zext nneg i32 %i.cb to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cd, i8 -1, i64 %i.ce, i1 false)
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, label %bb.g, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, %.lr.ph29.i
  %indvars.iv37.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next38.i.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa ]
  %lcmp.mod869 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod869)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv37.i.epil.init, %.epil.preheader ], [ %indvars.iv.next38.i.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.cf = trunc nuw i64 %indvars.iv37.i.epil to i32
  %i.cg = sub i32 %spec.select, %i.cf
  %i.ch = shl i32 %i.cg, 1
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv37.i.epil
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34
  %i.cl = zext nneg i32 %i.ci to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, i8 -1, i64 %i.cl, i1 false)
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %bb.h, !llvm.loop !42

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit: ; preds = %bb.h, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %wide.trip.count40.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !34 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !tbaa !44
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !45
  %i.co = load ptr, ptr %0, align 8, !tbaa !32
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.f ; 3 uses
  %.sroa.0184.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %min.iters.check842 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check842, label %scalar.ph841.preheader, label %vector.ph843

vector.ph843:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit
  %n.vec844 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph843
  %index846 = phi i64 [ 0, %vector.ph843 ], [ %index.next851, %vector.body845 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index846 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %wide.load847 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !33
  %wide.load848 = load <2 x i32>, ptr %i.cr, align 4, !tbaa !33
  %i.cs = zext <2 x i32> %wide.load847 to <2 x i64>
  %i.ct = zext <2 x i32> %wide.load848 to <2 x i64>
  %wide.gep849 = getelementptr inbounds nuw i8, ptr %i.cp, <2 x i64> %i.cs
  %wide.gep850 = getelementptr inbounds nuw i8, ptr %i.cp, <2 x i64> %i.ct
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index846 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <2 x ptr> %wide.gep849, ptr %i.cu, align 8, !tbaa !34
  store <2 x ptr> %wide.gep850, ptr %i.cv, align 8, !tbaa !34
  %index.next851 = add nuw i64 %index846, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next851, %n.vec844
  br i1 %i.cw, label %middle.block852, label %vector.body845, !llvm.loop !47

middle.block852:                                  ; preds = %vector.body845
  %cmp.n853 = icmp eq i64 %n.vec844, %wide.trip.count.i
  br i1 %cmp.n853, label %.preheader.i286, label %scalar.ph841.preheader

scalar.ph841.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, %middle.block852
  %indvars.iv.i283.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit ], [ %n.vec844, %middle.block852 ]
  br label %scalar.ph841

.preheader.i286:                                  ; preds = %scalar.ph841, %middle.block852
  br i1 %i.ar, label %.lr.ph.i293, label %.lr.ph29.i288

scalar.ph841:                                     ; preds = %scalar.ph841.preheader, %scalar.ph841
  %indvars.iv.i283 = phi i64 [ %indvars.iv.next.i284, %scalar.ph841 ], [ %indvars.iv.i283.ph, %scalar.ph841.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i283
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i283
  store ptr %i.da, ptr %i.db, align 8, !tbaa !34
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.i285 = icmp eq i64 %indvars.iv.next.i284, %wide.trip.count.i
  br i1 %exitcond.i285, label %.preheader.i286, label %scalar.ph841, !llvm.loop !48

.lr.ph29.i288:                                    ; preds = %.lr.ph.i293, %.preheader.i286
  store i64 %.sroa.0184.0.copyload, ptr %5, align 8
  %i.dc = trunc i64 %.sroa.0184.0.copyload to i32 ; 2 uses
  %umax871 = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %xtraiter872 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.dd = icmp samesign ult i64 %umax871, 3
  br i1 %i.dd, label %.epil.preheader870, label %.lr.ph29.i288.new

.lr.ph29.i288.new:                                ; preds = %.lr.ph29.i288
  %unroll_iter876 = and i64 %wide.trip.count40.i, 124
  br label %bb.i

.lr.ph.i293:                                      ; preds = %.preheader.i286, %.lr.ph.i293
  %indvars.iv33.i294 = phi i64 [ %indvars.iv.next34.i295, %.lr.ph.i293 ], [ %wide.trip.count.i, %.preheader.i286 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv33.i294
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.de, align 8, !tbaa !34
  %indvars.iv.next34.i295 = add nuw nsw i64 %indvars.iv33.i294, 1 ; 2 uses
  %i.df = and i64 %indvars.iv.next34.i295, 4294967295
  %exitcond36.not.i296 = icmp eq i64 %i.df, 16
  br i1 %exitcond36.not.i296, label %.lr.ph29.i288, label %.lr.ph.i293, !llvm.loop !40

bb.i:                                             ; preds = %bb.i, %.lr.ph29.i288.new
  %indvars.iv37.i290 = phi i64 [ 0, %.lr.ph29.i288.new ], [ %indvars.iv.next38.i291.3, %bb.i ] ; 6 uses
  %niter877 = phi i64 [ 0, %.lr.ph29.i288.new ], [ %niter877.next.3, %bb.i ]
  %i.dg = trunc nuw i64 %indvars.iv37.i290 to i32
  %i.dh = sub i32 %spec.select, %i.dg
  %i.di = shl i32 %i.dh, 1
  %i.dj = shl nuw i32 1, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv37.i290
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !34
  %i.dm = zext nneg i32 %i.dj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dl, i8 0, i64 %i.dm, i1 false)
  %indvars.iv.next38.i291 = or disjoint i64 %indvars.iv37.i290, 1 ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv.next38.i291 to i32
  %i.do = sub i32 %spec.select, %i.dn
  %i.dp = shl i32 %i.do, 1
  %i.dq = shl nuw i32 1, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next38.i291
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !34
  %i.dt = zext nneg i32 %i.dq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ds, i8 0, i64 %i.dt, i1 false)
  %indvars.iv.next38.i291.1 = or disjoint i64 %indvars.iv37.i290, 2 ; 2 uses
  %i.du = trunc nuw i64 %indvars.iv.next38.i291.1 to i32
  %i.dv = sub i32 %spec.select, %i.du
  %i.dw = shl i32 %i.dv, 1
  %i.dx = shl nuw i32 1, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next38.i291.1
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !34
  %i.ea = zext nneg i32 %i.dx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dz, i8 0, i64 %i.ea, i1 false)
  %indvars.iv.next38.i291.2 = or disjoint i64 %indvars.iv37.i290, 3 ; 2 uses
  %i.eb = trunc nuw i64 %indvars.iv.next38.i291.2 to i32
  %i.ec = sub i32 %spec.select, %i.eb
  %i.ed = shl i32 %i.ec, 1
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next38.i291.2
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !34
  %i.eh = zext nneg i32 %i.ee to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, i8 0, i64 %i.eh, i1 false)
  %indvars.iv.next38.i291.3 = add nuw nsw i64 %indvars.iv37.i290, 4 ; 2 uses
  %niter877.next.3 = add i64 %niter877, 4         ; 2 uses
  %niter877.ncmp.3 = icmp eq i64 %niter877.next.3, %unroll_iter876
  br i1 %niter877.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa, label %bb.i, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa: ; preds = %bb.i
  %lcmp.mod874.not = icmp eq i64 %xtraiter872, 0
  br i1 %lcmp.mod874.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298, label %.epil.preheader870

.epil.preheader870:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa, %.lr.ph29.i288
  %indvars.iv37.i290.epil.init = phi i64 [ 0, %.lr.ph29.i288 ], [ %indvars.iv.next38.i291.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa ]
  %lcmp.mod875 = icmp ne i64 %xtraiter872, 0
  call void @llvm.assume(i1 %lcmp.mod875)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader870
  %indvars.iv37.i290.epil = phi i64 [ %indvars.iv37.i290.epil.init, %.epil.preheader870 ], [ %indvars.iv.next38.i291.epil, %bb.j ] ; 3 uses
  %epil.iter873 = phi i64 [ 0, %.epil.preheader870 ], [ %epil.iter873.next, %bb.j ]
  %i.ei = trunc nuw i64 %indvars.iv37.i290.epil to i32
  %i.ej = sub i32 %spec.select, %i.ei
  %i.ek = shl i32 %i.ej, 1
  %i.el = shl nuw i32 1, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv37.i290.epil
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34
  %i.eo = zext nneg i32 %i.el to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.en, i8 0, i64 %i.eo, i1 false)
  %indvars.iv.next38.i291.epil = add nuw nsw i64 %indvars.iv37.i290.epil, 1
  %epil.iter873.next = add i64 %epil.iter873, 1   ; 2 uses
  %epil.iter873.cmp.not = icmp eq i64 %epil.iter873.next, %xtraiter872
  br i1 %epil.iter873.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298, label %bb.j, !llvm.loop !49

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298: ; preds = %bb.j, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %wide.trip.count40.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !34 ; 2 uses
  store i8 0, ptr %i.eq, align 1, !tbaa !44
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !45
  %i.er = load ptr, ptr %0, align 8, !tbaa !32
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.j ; 3 uses
  %.sroa.0183.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %min.iters.check828 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check828, label %scalar.ph827.preheader, label %vector.ph829

vector.ph829:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298
  %n.vec830 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next837, %vector.body831 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index832 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %wide.load833 = load <2 x i32>, ptr %i.et, align 4, !tbaa !33
  %wide.load834 = load <2 x i32>, ptr %i.eu, align 4, !tbaa !33
  %i.ev = zext <2 x i32> %wide.load833 to <2 x i64>
  %i.ew = zext <2 x i32> %wide.load834 to <2 x i64>
  %wide.gep835 = getelementptr inbounds nuw i8, ptr %i.es, <2 x i64> %i.ev
  %wide.gep836 = getelementptr inbounds nuw i8, ptr %i.es, <2 x i64> %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index832 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x ptr> %wide.gep835, ptr %i.ex, align 8, !tbaa !34
  store <2 x ptr> %wide.gep836, ptr %i.ey, align 8, !tbaa !34
  %index.next837 = add nuw i64 %index832, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next837, %n.vec830
  br i1 %i.ez, label %middle.block838, label %vector.body831, !llvm.loop !50

middle.block838:                                  ; preds = %vector.body831
  %cmp.n839 = icmp eq i64 %n.vec830, %wide.trip.count.i
  br i1 %cmp.n839, label %.preheader.i303, label %scalar.ph827.preheader

scalar.ph827.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298, %middle.block838
  %indvars.iv.i300.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298 ], [ %n.vec830, %middle.block838 ]
  br label %scalar.ph827

.preheader.i303:                                  ; preds = %scalar.ph827, %middle.block838
  br i1 %i.ar, label %.lr.ph.i310, label %.lr.ph29.i305

scalar.ph827:                                     ; preds = %scalar.ph827.preheader, %scalar.ph827
  %indvars.iv.i300 = phi i64 [ %indvars.iv.next.i301, %scalar.ph827 ], [ %indvars.iv.i300.ph, %scalar.ph827.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i300
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !33
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i300
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !34
  %indvars.iv.next.i301 = add nuw nsw i64 %indvars.iv.i300, 1 ; 2 uses
  %exitcond.i302 = icmp eq i64 %indvars.iv.next.i301, %wide.trip.count.i
  br i1 %exitcond.i302, label %.preheader.i303, label %scalar.ph827, !llvm.loop !51

.lr.ph29.i305:                                    ; preds = %.lr.ph.i310, %.preheader.i303
  store i64 %.sroa.0183.0.copyload, ptr %6, align 8
  %i.ff = trunc i64 %.sroa.0183.0.copyload to i32 ; 5 uses
  %umax879 = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %xtraiter880 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.fg = icmp samesign ult i64 %umax879, 3
  br i1 %i.fg, label %.epil.preheader878, label %.lr.ph29.i305.new

.lr.ph29.i305.new:                                ; preds = %.lr.ph29.i305
  %unroll_iter884 = and i64 %wide.trip.count40.i, 124
  br label %bb.k

.lr.ph.i310:                                      ; preds = %.preheader.i303, %.lr.ph.i310
  %indvars.iv33.i311 = phi i64 [ %indvars.iv.next34.i312, %.lr.ph.i310 ], [ %wide.trip.count.i, %.preheader.i303 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv33.i311
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.fh, align 8, !tbaa !34
  %indvars.iv.next34.i312 = add nuw nsw i64 %indvars.iv33.i311, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next34.i312, 4294967295
  %exitcond36.not.i313 = icmp eq i64 %i.fi, 16
  br i1 %exitcond36.not.i313, label %.lr.ph29.i305, label %.lr.ph.i310, !llvm.loop !40

bb.k:                                             ; preds = %bb.k, %.lr.ph29.i305.new
  %indvars.iv37.i307 = phi i64 [ 0, %.lr.ph29.i305.new ], [ %indvars.iv.next38.i308.3, %bb.k ] ; 6 uses
  %niter885 = phi i64 [ 0, %.lr.ph29.i305.new ], [ %niter885.next.3, %bb.k ]
  %i.fj = trunc nuw i64 %indvars.iv37.i307 to i32
  %i.fk = sub i32 %spec.select, %i.fj
  %i.fl = shl i32 %i.fk, 1
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv37.i307
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !34
  %i.fp = zext nneg i32 %i.fm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, i8 -1, i64 %i.fp, i1 false)
  %indvars.iv.next38.i308 = or disjoint i64 %indvars.iv37.i307, 1 ; 2 uses
  %i.fq = trunc nuw i64 %indvars.iv.next38.i308 to i32
  %i.fr = sub i32 %spec.select, %i.fq
  %i.fs = shl i32 %i.fr, 1
  %i.ft = shl nuw i32 1, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !34
  %i.fw = zext nneg i32 %i.ft to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fv, i8 -1, i64 %i.fw, i1 false)
  %indvars.iv.next38.i308.1 = or disjoint i64 %indvars.iv37.i307, 2 ; 2 uses
  %i.fx = trunc nuw i64 %indvars.iv.next38.i308.1 to i32
  %i.fy = sub i32 %spec.select, %i.fx
  %i.fz = shl i32 %i.fy, 1
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308.1
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !34
  %i.gd = zext nneg i32 %i.ga to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gc, i8 -1, i64 %i.gd, i1 false)
  %indvars.iv.next38.i308.2 = or disjoint i64 %indvars.iv37.i307, 3 ; 2 uses
  %i.ge = trunc nuw i64 %indvars.iv.next38.i308.2 to i32
  %i.gf = sub i32 %spec.select, %i.ge
  %i.gg = shl i32 %i.gf, 1
  %i.gh = shl nuw i32 1, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308.2
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !34
  %i.gk = zext nneg i32 %i.gh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gj, i8 -1, i64 %i.gk, i1 false)
  %indvars.iv.next38.i308.3 = add nuw nsw i64 %indvars.iv37.i307, 4 ; 2 uses
  %niter885.next.3 = add i64 %niter885, 4         ; 2 uses
  %niter885.ncmp.3 = icmp eq i64 %niter885.next.3, %unroll_iter884
  br i1 %niter885.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa, label %bb.k, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa: ; preds = %bb.k
  %lcmp.mod882.not = icmp eq i64 %xtraiter880, 0
  br i1 %lcmp.mod882.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, label %.epil.preheader878

.epil.preheader878:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa, %.lr.ph29.i305
  %indvars.iv37.i307.epil.init = phi i64 [ 0, %.lr.ph29.i305 ], [ %indvars.iv.next38.i308.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa ]
  %lcmp.mod883 = icmp ne i64 %xtraiter880, 0
  call void @llvm.assume(i1 %lcmp.mod883)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader878
  %indvars.iv37.i307.epil = phi i64 [ %indvars.iv37.i307.epil.init, %.epil.preheader878 ], [ %indvars.iv.next38.i308.epil, %bb.l ] ; 3 uses
  %epil.iter881 = phi i64 [ 0, %.epil.preheader878 ], [ %epil.iter881.next, %bb.l ]
  %i.gl = trunc nuw i64 %indvars.iv37.i307.epil to i32
  %i.gm = sub i32 %spec.select, %i.gl
  %i.gn = shl i32 %i.gm, 1
  %i.go = shl nuw i32 1, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv37.i307.epil
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !34
  %i.gr = zext nneg i32 %i.go to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i8 -1, i64 %i.gr, i1 false)
  %indvars.iv.next38.i308.epil = add nuw nsw i64 %indvars.iv37.i307.epil, 1
  %epil.iter881.next = add i64 %epil.iter881, 1   ; 2 uses
  %epil.iter881.cmp.not = icmp eq i64 %epil.iter881.next, %xtraiter880
  br i1 %epil.iter881.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, label %bb.l, !llvm.loop !52

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315: ; preds = %bb.l, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %wide.trip.count40.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !34 ; 2 uses
  store i8 0, ptr %i.gt, align 1, !tbaa !44
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !45
  %i.gu = load ptr, ptr %0, align 8, !tbaa !32
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.j
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.f ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %min.iters.check817 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check817, label %scalar.ph.preheader, label %vector.ph818

vector.ph818:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315
  %n.vec819 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body820

vector.body820:                                   ; preds = %vector.body820, %vector.ph818
  %index821 = phi i64 [ 0, %vector.ph818 ], [ %index.next824, %vector.body820 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index821 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %wide.load = load <2 x i32>, ptr %i.gx, align 4, !tbaa !33
  %wide.load822 = load <2 x i32>, ptr %i.gy, align 4, !tbaa !33
  %i.gz = zext <2 x i32> %wide.load to <2 x i64>
  %i.ha = zext <2 x i32> %wide.load822 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.gw, <2 x i64> %i.gz
  %wide.gep823 = getelementptr inbounds nuw i8, ptr %i.gw, <2 x i64> %i.ha
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index821 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x ptr> %wide.gep, ptr %i.hb, align 8, !tbaa !34
  store <2 x ptr> %wide.gep823, ptr %i.hc, align 8, !tbaa !34
  %index.next824 = add nuw i64 %index821, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next824, %n.vec819
  br i1 %i.hd, label %middle.block825, label %vector.body820, !llvm.loop !53

middle.block825:                                  ; preds = %vector.body820
  %cmp.n = icmp eq i64 %n.vec819, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i320, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, %middle.block825
  %indvars.iv.i317.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315 ], [ %n.vec819, %middle.block825 ]
  br label %scalar.ph

.preheader.i320:                                  ; preds = %scalar.ph, %middle.block825
  br i1 %i.ar, label %.lr.ph.i327, label %.lr.ph29.i322

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i317 = phi i64 [ %indvars.iv.next.i318, %scalar.ph ], [ %indvars.iv.i317.ph, %scalar.ph.preheader ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i317
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !33
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i317
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !34
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i317, 1 ; 2 uses
  %exitcond.i319 = icmp eq i64 %indvars.iv.next.i318, %wide.trip.count.i
  br i1 %exitcond.i319, label %.preheader.i320, label %scalar.ph, !llvm.loop !54

.lr.ph29.i322:                                    ; preds = %.lr.ph.i327, %.preheader.i320
  store i64 %.sroa.0.0.copyload, ptr %7, align 8
  %i.hj = trunc i64 %.sroa.0.0.copyload to i32    ; 2 uses
  %umax887 = call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %xtraiter888 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.hk = icmp samesign ult i64 %umax887, 3
  br i1 %i.hk, label %.epil.preheader886, label %.lr.ph29.i322.new

.lr.ph29.i322.new:                                ; preds = %.lr.ph29.i322
  %unroll_iter892 = and i64 %wide.trip.count40.i, 124
  br label %bb.m

.lr.ph.i327:                                      ; preds = %.preheader.i320, %.lr.ph.i327
  %indvars.iv33.i328 = phi i64 [ %indvars.iv.next34.i329, %.lr.ph.i327 ], [ %wide.trip.count.i, %.preheader.i320 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv33.i328
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.hl, align 8, !tbaa !34
  %indvars.iv.next34.i329 = add nuw nsw i64 %indvars.iv33.i328, 1 ; 2 uses
  %i.hm = and i64 %indvars.iv.next34.i329, 4294967295
  %exitcond36.not.i330 = icmp eq i64 %i.hm, 16
  br i1 %exitcond36.not.i330, label %.lr.ph29.i322, label %.lr.ph.i327, !llvm.loop !40

bb.m:                                             ; preds = %bb.m, %.lr.ph29.i322.new
  %indvars.iv37.i324 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %indvars.iv.next38.i325.3, %bb.m ] ; 6 uses
  %niter893 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %niter893.next.3, %bb.m ]
  %i.hn = trunc nuw i64 %indvars.iv37.i324 to i32
  %i.ho = sub i32 %spec.select, %i.hn
  %i.hp = shl i32 %i.ho, 1
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !34
  %i.ht = zext nneg i32 %i.hq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hs, i8 0, i64 %i.ht, i1 false)
  %indvars.iv.next38.i325 = or disjoint i64 %indvars.iv37.i324, 1 ; 2 uses
  %i.hu = trunc nuw i64 %indvars.iv.next38.i325 to i32
  %i.hv = sub i32 %spec.select, %i.hu
  %i.hw = shl i32 %i.hv, 1
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !34
  %i.ia = zext nneg i32 %i.hx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hz, i8 0, i64 %i.ia, i1 false)
  %indvars.iv.next38.i325.1 = or disjoint i64 %indvars.iv37.i324, 2 ; 2 uses
  %i.ib = trunc nuw i64 %indvars.iv.next38.i325.1 to i32
  %i.ic = sub i32 %spec.select, %i.ib
  %i.id = shl i32 %i.ic, 1
  %i.ie = shl nuw i32 1, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.1
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !34
  %i.ih = zext nneg i32 %i.ie to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ig, i8 0, i64 %i.ih, i1 false)
  %indvars.iv.next38.i325.2 = or disjoint i64 %indvars.iv37.i324, 3 ; 2 uses
  %i.ii = trunc nuw i64 %indvars.iv.next38.i325.2 to i32
  %i.ij = sub i32 %spec.select, %i.ii
  %i.ik = shl i32 %i.ij, 1
  %i.il = shl nuw i32 1, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.2
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !34
  %i.io = zext nneg i32 %i.il to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.in, i8 0, i64 %i.io, i1 false)
  %indvars.iv.next38.i325.3 = add nuw nsw i64 %indvars.iv37.i324, 4 ; 2 uses
  %niter893.next.3 = add i64 %niter893, 4         ; 2 uses
  %niter893.ncmp.3 = icmp eq i64 %niter893.next.3, %unroll_iter892
  br i1 %niter893.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, label %bb.m, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa: ; preds = %bb.m
  %lcmp.mod890.not = icmp eq i64 %xtraiter888, 0
  br i1 %lcmp.mod890.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %.epil.preheader886

.epil.preheader886:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, %.lr.ph29.i322
  %indvars.iv37.i324.epil.init = phi i64 [ 0, %.lr.ph29.i322 ], [ %indvars.iv.next38.i325.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa ]
  %lcmp.mod891 = icmp ne i64 %xtraiter888, 0
  call void @llvm.assume(i1 %lcmp.mod891)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader886
  %indvars.iv37.i324.epil = phi i64 [ %indvars.iv37.i324.epil.init, %.epil.preheader886 ], [ %indvars.iv.next38.i325.epil, %bb.n ] ; 3 uses
  %epil.iter889 = phi i64 [ 0, %.epil.preheader886 ], [ %epil.iter889.next, %bb.n ]
  %i.ip = trunc nuw i64 %indvars.iv37.i324.epil to i32
  %i.iq = sub i32 %spec.select, %i.ip
  %i.ir = shl i32 %i.iq, 1
  %i.is = shl nuw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324.epil
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !34
  %i.iv = zext nneg i32 %i.is to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iu, i8 0, i64 %i.iv, i1 false)
  %indvars.iv.next38.i325.epil = add nuw nsw i64 %indvars.iv37.i324.epil, 1
  %epil.iter889.next = add i64 %epil.iter889, 1   ; 2 uses
  %epil.iter889.cmp.not = icmp eq i64 %epil.iter889.next, %xtraiter888
  br i1 %epil.iter889.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %bb.n, !llvm.loop !55

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332: ; preds = %bb.n, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %wide.trip.count40.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !34 ; 2 uses
  store i8 0, ptr %i.ix, align 1, !tbaa !44
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !45
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.iz = getelementptr inbounds nuw [120 x i8], ptr %i.iy, i64 %indvars.iv605 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !56 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.jd = load i32, ptr %i.y, align 4, !tbaa !31  ; 2 uses
  %.not582 = icmp eq i32 %i.jd, 0
  br i1 %.not582, label %.preheader533, label %.preheader530.lr.ph

.preheader530.lr.ph:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 104
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !57
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !58
  %i.jh = mul i32 %i.jg, %i.jb
  %i.ji = load i32, ptr %i.u, align 8, !tbaa !59
  %i.jj = add i32 %i.jh, %i.ji
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jf, i64 %i.jk
  %i.jm = load ptr, ptr %i.d, align 8
  %i.jn = load ptr, ptr %i.k, align 8
  %i.jo = zext i32 %i.jb to i64
  %.pre = load i32, ptr %i.v, align 8, !tbaa !30
  br label %.preheader530

.preheader533:                                    ; preds = %._crit_edge, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %.not273542 = icmp eq i32 %spec.select, 0
  br i1 %.not273542, label %._crit_edge545, label %.lr.ph544

.preheader530:                                    ; preds = %.preheader530.lr.ph, %._crit_edge
  %i.jp = phi i32 [ %i.jd, %.preheader530.lr.ph ], [ %i.jt, %._crit_edge ]
  %i.jq = phi i32 [ %.pre, %.preheader530.lr.ph ], [ %i.ju, %._crit_edge ]
  %.0266536 = phi i32 [ 0, %.preheader530.lr.ph ], [ %i.jw, %._crit_edge ] ; 3 uses
  %.0267535 = phi ptr [ %i.jl, %.preheader530.lr.ph ], [ %i.jv, %._crit_edge ] ; 2 uses
  %.not583 = icmp eq i32 %i.jq, 0
  br i1 %.not583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader530
  %i.jr = mul i32 %.0266536, %i.ax
  %i.js = mul i32 %.0266536, %i.ff
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre609 = load i32, ptr %i.y, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader530
  %i.jt = phi i32 [ %.pre609, %._crit_edge.loopexit ], [ %i.jp, %.preheader530 ] ; 2 uses
  %i.ju = phi i32 [ %i.kn, %._crit_edge.loopexit ], [ 0, %.preheader530 ]
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %i.jo
  %i.jw = add nuw i32 %.0266536, 1                ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.jt
  br i1 %i.jx, label %.preheader530, label %.preheader533, !llvm.loop !60

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %indvars.iv ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !61
  %i.kb = icmp eq ptr %i.ka, null
  %i.kc = zext i1 %i.kb to i8
  %i.kd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ke = add i32 %i.jr, %i.kd
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kf
  store i8 %i.kc, ptr %i.kg, align 1, !tbaa !44
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !63
  %i.kj = trunc i32 %i.ki to i8
  %i.kk = add i32 %i.js, %i.kd
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.kl
  store i8 %i.kj, ptr %i.km, align 1, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = load i32, ptr %i.v, align 8, !tbaa !30  ; 2 uses
  %i.ko = zext i32 %i.kn to i64
  %i.kp = icmp samesign ult i64 %indvars.iv.next, %i.ko
  br i1 %i.kp, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !64

._crit_edge545:                                   ; preds = %._crit_edge541.split, %.preheader533
  store i8 0, ptr %i.cn, align 1, !tbaa !44
  store i8 0, ptr %i.eq, align 1, !tbaa !44
  store i8 0, ptr %i.gt, align 1, !tbaa !44
  store i8 0, ptr %i.ix, align 1, !tbaa !44
  %i.kq = zext nneg i32 %spec.select to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !34
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !44
  %.not274 = icmp eq i8 %i.kt, 0
  %i.ku = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.kv = icmp eq ptr %i.ku, null                 ; 2 uses
  br i1 %.not274, label %bb.t, label %bb.p

.lr.ph544:                                        ; preds = %.preheader533, %._crit_edge541.split
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %._crit_edge541.split ], [ 1, %.preheader533 ] ; 7 uses
  %i.kw = load i32, ptr %i.y, align 4, !tbaa !31
  %i.kx = trunc nuw nsw i64 %indvars.iv594 to i32 ; 8 uses
  %notmask = shl nsw i32 -1, %i.kx
  %i.ky = xor i32 %notmask, -1                    ; 2 uses
  %i.kz = add i32 %i.kw, %i.ky
  %i.la = lshr i32 %i.kz, %i.kx                   ; 2 uses
  %i.lb = load i32, ptr %i.v, align 8, !tbaa !30
  %i.lc = add i32 %i.lb, %i.ky
  %i.ld = lshr i32 %i.lc, %i.kx                   ; 4 uses
  %.not584 = icmp eq i32 %i.la, 0
  br i1 %.not584, label %._crit_edge541.split, label %.preheader529.lr.ph

.preheader529.lr.ph:                              ; preds = %.lr.ph544
  %.not585 = icmp eq i32 %i.ld, 0
  %i.le = add nsw i64 %indvars.iv594, -1          ; 3 uses
  %i.lf = trunc nuw nsw i64 %i.le to i32          ; 3 uses
  %notmask.i337 = shl nsw i32 -1, %i.lf
  %i.lg = xor i32 %notmask.i337, -1               ; 2 uses
  %i.lh = add i32 %i.ax, %i.lg
  %i.li = lshr i32 %i.lh, %i.lf                   ; 8 uses
  %notmask.i345 = shl nsw i32 -1, %i.kx
  %i.lj = xor i32 %notmask.i345, -1               ; 4 uses
  %i.lk = add i32 %i.ax, %i.lj
  %i.ll = lshr i32 %i.lk, %i.kx                   ; 2 uses
  %i.lm = add i32 %i.dc, %i.lj
  %i.ln = lshr i32 %i.lm, %i.kx                   ; 2 uses
  %i.lo = add i32 %i.ff, %i.lg
  %i.lp = lshr i32 %i.lo, %i.lf                   ; 8 uses
  %i.lq = add i32 %i.ff, %i.lj
  %i.lr = lshr i32 %i.lq, %i.kx                   ; 2 uses
  %i.ls = add i32 %i.hj, %i.lj
  %i.lt = lshr i32 %i.ls, %i.kx                   ; 2 uses
  br i1 %.not585, label %._crit_edge541.split, label %.preheader529.lr.ph.split

.preheader529.lr.ph.split:                        ; preds = %.preheader529.lr.ph
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv594
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv594
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.le
end_hunk_0
begin_hunk_1_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  %i.br = shl i32 %1, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit, %bb.dm
  %indvars.iv557 = phi i64 [ 0, %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit ], [ %indvars.iv.next558, %bb.dm ] ; 5 uses
  %.0527 = phi i8 [ 1, %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit ], [ %.3, %bb.dm ] ; 4 uses
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %indvars.iv557
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !18, !range !28, !noundef !29
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.dm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv557 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 7 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !30 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.dm, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !31 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.dm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = trunc nuw i8 %.0527 to i1
  br i1 %i.ci, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !115 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.v, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i: ; preds = %bb.u
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !120
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4, !tbaa !33
  %i.cm = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !109
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !126
  %.not12.i.i = icmp eq i64 %i.cq, 1
  br i1 %.not12.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.cr, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cs = load i32, ptr %i.l, align 4, !tbaa !33  ; 3 uses
  store i32 %i.cs, ptr %i.r, align 8, !tbaa !120
  %i.ct = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i = sub nuw nsw i8 8, %i.ct
  %i.cu = zext nneg i8 %narrow13.i.i to i32
  %i.cv = icmp eq i32 %i.cs, 255
  %i.cw = zext i1 %i.cv to i8
  store i8 %i.cw, ptr %i.s, align 8, !tbaa !121
  %i.cx = load i32, ptr %i.q, align 4, !tbaa !119
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

bb.z:                                             ; preds = %bb.v
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.cz = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i = sub nuw nsw i8 8, %i.cz
  %i.da = zext nneg i8 %narrow.i.i to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit: ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i, %bb.y, %bb.z
  %i.db = phi i32 [ %i.cj, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i ], [ %i.cu, %bb.y ], [ %i.da, %bb.z ]
  %i.dc = phi i32 [ %.pre.i, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i ], [ %i.cs, %bb.y ], [ 0, %bb.z ]
  %i.dd = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.p, align 4, !tbaa !115
  %i.de = shl nuw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %bb.dn, label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge: ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit
  %.pre = load i32, ptr %i.cc, align 8, !tbaa !30
  %.pre572 = load i32, ptr %i.cf, align 4, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge, %bb.t
  %i.dg = phi i32 [ %.pre572, %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge ], [ %i.cg, %bb.t ]
  %i.dh = phi i32 [ %.pre, %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge ], [ %i.cd, %bb.t ]
  %i.di = add i32 %i.dh, -1
  %i.dj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.di, i1 false)
  %i.dk = sub nuw nsw i32 32, %i.dj               ; 2 uses
  %i.dl = add i32 %i.dg, -1
  %i.dm = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dl, i1 false)
  %i.dn = sub nuw nsw i32 32, %i.dm               ; 2 uses
  %spec.select = call i32 @llvm.umax.i32(i32 %i.dk, i32 %i.dn) ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.do = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %.sroa.0124.0.copyload = load i64, ptr %i.cc, align 8 ; 2 uses
  %i.dp = add nuw nsw i32 %spec.select, 2
  %wide.trip.count.i = zext nneg i32 %i.dp to i64 ; 16 uses
  %min.iters.check689 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check689, label %scalar.ph688.preheader, label %vector.ph690

vector.ph690:                                     ; preds = %bb.aa
  %n.vec691 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body692

vector.body692:                                   ; preds = %vector.body692, %vector.ph690
  %index693 = phi i64 [ 0, %vector.ph690 ], [ %index.next698, %vector.body692 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index693 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %wide.load694 = load <2 x i32>, ptr %i.dq, align 4, !tbaa !33
  %wide.load695 = load <2 x i32>, ptr %i.dr, align 4, !tbaa !33
  %i.ds = zext <2 x i32> %wide.load694 to <2 x i64>
  %i.dt = zext <2 x i32> %wide.load695 to <2 x i64>
  %wide.gep696 = getelementptr inbounds nuw i8, ptr %i.do, <2 x i64> %i.ds
  %wide.gep697 = getelementptr inbounds nuw i8, ptr %i.do, <2 x i64> %i.dt
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index693 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <2 x ptr> %wide.gep696, ptr %i.du, align 8, !tbaa !34
  store <2 x ptr> %wide.gep697, ptr %i.dv, align 8, !tbaa !34
  %index.next698 = add nuw i64 %index693, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next698, %n.vec691
  br i1 %i.dw, label %middle.block699, label %vector.body692, !llvm.loop !127

middle.block699:                                  ; preds = %vector.body692
  %cmp.n700 = icmp eq i64 %n.vec691, %wide.trip.count.i
  br i1 %cmp.n700, label %.preheader.i, label %scalar.ph688.preheader

scalar.ph688.preheader:                           ; preds = %bb.aa, %middle.block699
  %indvars.iv.i.ph = phi i64 [ 0, %bb.aa ], [ %n.vec691, %middle.block699 ]
  br label %scalar.ph688

.preheader.i:                                     ; preds = %scalar.ph688, %middle.block699
  %i.dx = add nuw nsw i32 %spec.select, 1         ; 5 uses
  %i.dy = icmp samesign ult i32 %spec.select, 14  ; 4 uses
  br i1 %i.dy, label %.lr.ph.i, label %.lr.ph29.i

scalar.ph688:                                     ; preds = %scalar.ph688.preheader, %scalar.ph688
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph688 ], [ %indvars.iv.i.ph, %scalar.ph688.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.preheader.i, label %scalar.ph688, !llvm.loop !128

.lr.ph29.i:                                       ; preds = %.lr.ph.i, %.preheader.i
  store i64 %.sroa.0124.0.copyload, ptr %8, align 8
  %wide.trip.count40.i = zext nneg i32 %i.dx to i64 ; 14 uses
  %i.ee = trunc i64 %.sroa.0124.0.copyload to i32
  %i.ef = zext nneg i32 %i.dn to i64              ; 4 uses
  %i.eg = zext nneg i32 %i.dk to i64              ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter = and i64 %wide.trip.count40.i, 3     ; 3 uses
  %i.eh = icmp samesign ult i64 %umax, 3
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count40.i, 124
  br label %bb.ab

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %wide.trip.count.i, %.preheader.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv33.i
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.ei, align 8, !tbaa !34
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ej = and i64 %indvars.iv.next34.i, 4294967295
  %exitcond36.not.i = icmp eq i64 %i.ej, 16
  br i1 %exitcond36.not.i, label %.lr.ph29.i, label %.lr.ph.i, !llvm.loop !40

bb.ab:                                            ; preds = %bb.ab, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next38.i.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.3, %bb.ab ]
  %i.ek = trunc nuw i64 %indvars.iv37.i to i32
  %i.el = sub i32 %spec.select, %i.ek
  %i.em = shl i32 %i.el, 1
  %i.en = shl nuw i32 1, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !34
  %i.eq = zext nneg i32 %i.en to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ep, i8 0, i64 %i.eq, i1 false)
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.er = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.es = sub i32 %spec.select, %i.er
  %i.et = shl i32 %i.es, 1
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34
  %i.ex = zext nneg i32 %i.eu to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ew, i8 0, i64 %i.ex, i1 false)
  %indvars.iv.next38.i.1 = or disjoint i64 %indvars.iv37.i, 2 ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.ez = sub i32 %spec.select, %i.ey
  %i.fa = shl i32 %i.ez, 1
  %i.fb = shl nuw i32 1, %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i.1
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !34
  %i.fe = zext nneg i32 %i.fb to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fd, i8 0, i64 %i.fe, i1 false)
  %indvars.iv.next38.i.2 = or disjoint i64 %indvars.iv37.i, 3 ; 2 uses
  %i.ff = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.fg = sub i32 %spec.select, %i.ff
  %i.fh = shl i32 %i.fg, 1
  %i.fi = shl nuw i32 1, %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i.2
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !34
  %i.fl = zext nneg i32 %i.fi to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, i8 0, i64 %i.fl, i1 false)
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, label %bb.ab, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, %.lr.ph29.i
  %indvars.iv37.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next38.i.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa ]
  %lcmp.mod714 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod714)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv37.i.epil.init, %.epil.preheader ], [ %indvars.iv.next38.i.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.fm = trunc nuw i64 %indvars.iv37.i.epil to i32
  %i.fn = sub i32 %spec.select, %i.fm
  %i.fo = shl i32 %i.fn, 1
  %i.fp = shl nuw i32 1, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.i.epil
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34
  %i.fs = zext nneg i32 %i.fp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fr, i8 0, i64 %i.fs, i1 false)
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %bb.ac, !llvm.loop !129

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit: ; preds = %bb.ac, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %wide.trip.count40.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34
  store i32 %i.dx, ptr %i.bn, align 8, !tbaa !45
  store i8 0, ptr %i.fu, align 1, !tbaa !44
  %i.fv = load ptr, ptr %0, align 8, !tbaa !32
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.bo ; 3 uses
  %.sroa.0123.0.copyload = load i64, ptr %i.cc, align 8 ; 2 uses
  %min.iters.check675 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check675, label %scalar.ph674.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit
  %n.vec677 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body678

vector.body678:                                   ; preds = %vector.body678, %vector.ph676
  %index679 = phi i64 [ 0, %vector.ph676 ], [ %index.next684, %vector.body678 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index679 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %wide.load680 = load <2 x i32>, ptr %i.fx, align 4, !tbaa !33
  %wide.load681 = load <2 x i32>, ptr %i.fy, align 4, !tbaa !33
  %i.fz = zext <2 x i32> %wide.load680 to <2 x i64>
  %i.ga = zext <2 x i32> %wide.load681 to <2 x i64>
  %wide.gep682 = getelementptr inbounds nuw i8, ptr %i.fw, <2 x i64> %i.fz
  %wide.gep683 = getelementptr inbounds nuw i8, ptr %i.fw, <2 x i64> %i.ga
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index679 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <2 x ptr> %wide.gep682, ptr %i.gb, align 8, !tbaa !34
  store <2 x ptr> %wide.gep683, ptr %i.gc, align 8, !tbaa !34
  %index.next684 = add nuw i64 %index679, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next684, %n.vec677
  br i1 %i.gd, label %middle.block685, label %vector.body678, !llvm.loop !130

middle.block685:                                  ; preds = %vector.body678
  %cmp.n686 = icmp eq i64 %n.vec677, %wide.trip.count.i
  br i1 %cmp.n686, label %.preheader.i228, label %scalar.ph674.preheader

scalar.ph674.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, %middle.block685
  %indvars.iv.i225.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit ], [ %n.vec677, %middle.block685 ]
  br label %scalar.ph674

.preheader.i228:                                  ; preds = %scalar.ph674, %middle.block685
  br i1 %i.dy, label %.lr.ph.i235, label %.lr.ph29.i230

scalar.ph674:                                     ; preds = %scalar.ph674.preheader, %scalar.ph674
  %indvars.iv.i225 = phi i64 [ %indvars.iv.next.i226, %scalar.ph674 ], [ %indvars.iv.i225.ph, %scalar.ph674.preheader ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i225
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !33
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i225
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !34
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i225, 1 ; 2 uses
  %exitcond.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i
  br i1 %exitcond.i227, label %.preheader.i228, label %scalar.ph674, !llvm.loop !131

.lr.ph29.i230:                                    ; preds = %.lr.ph.i235, %.preheader.i228
  store i64 %.sroa.0123.0.copyload, ptr %9, align 8
  %i.gj = trunc i64 %.sroa.0123.0.copyload to i32
  %umax716 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter717 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.gk = icmp samesign ult i64 %umax716, 3
  br i1 %i.gk, label %.epil.preheader715, label %.lr.ph29.i230.new

.lr.ph29.i230.new:                                ; preds = %.lr.ph29.i230
  %unroll_iter721 = and i64 %wide.trip.count40.i, 124
  br label %bb.ad

.lr.ph.i235:                                      ; preds = %.preheader.i228, %.lr.ph.i235
  %indvars.iv33.i236 = phi i64 [ %indvars.iv.next34.i237, %.lr.ph.i235 ], [ %wide.trip.count.i, %.preheader.i228 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv33.i236
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.gl, align 8, !tbaa !34
  %indvars.iv.next34.i237 = add nuw nsw i64 %indvars.iv33.i236, 1 ; 2 uses
  %i.gm = and i64 %indvars.iv.next34.i237, 4294967295
  %exitcond36.not.i238 = icmp eq i64 %i.gm, 16
  br i1 %exitcond36.not.i238, label %.lr.ph29.i230, label %.lr.ph.i235, !llvm.loop !40

bb.ad:                                            ; preds = %bb.ad, %.lr.ph29.i230.new
  %indvars.iv37.i232 = phi i64 [ 0, %.lr.ph29.i230.new ], [ %indvars.iv.next38.i233.3, %bb.ad ] ; 6 uses
  %niter722 = phi i64 [ 0, %.lr.ph29.i230.new ], [ %niter722.next.3, %bb.ad ]
  %i.gn = trunc nuw i64 %indvars.iv37.i232 to i32
  %i.go = sub i32 %spec.select, %i.gn
  %i.gp = shl i32 %i.go, 1
  %i.gq = shl nuw i32 1, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv37.i232
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !34
  %i.gt = zext nneg i32 %i.gq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gs, i8 0, i64 %i.gt, i1 false)
  %indvars.iv.next38.i233 = or disjoint i64 %indvars.iv37.i232, 1 ; 2 uses
  %i.gu = trunc nuw i64 %indvars.iv.next38.i233 to i32
  %i.gv = sub i32 %spec.select, %i.gu
  %i.gw = shl i32 %i.gv, 1
  %i.gx = shl nuw i32 1, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !34
  %i.ha = zext nneg i32 %i.gx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gz, i8 0, i64 %i.ha, i1 false)
  %indvars.iv.next38.i233.1 = or disjoint i64 %indvars.iv37.i232, 2 ; 2 uses
  %i.hb = trunc nuw i64 %indvars.iv.next38.i233.1 to i32
  %i.hc = sub i32 %spec.select, %i.hb
  %i.hd = shl i32 %i.hc, 1
  %i.he = shl nuw i32 1, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233.1
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !34
  %i.hh = zext nneg i32 %i.he to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hg, i8 0, i64 %i.hh, i1 false)
  %indvars.iv.next38.i233.2 = or disjoint i64 %indvars.iv37.i232, 3 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next38.i233.2 to i32
  %i.hj = sub i32 %spec.select, %i.hi
  %i.hk = shl i32 %i.hj, 1
  %i.hl = shl nuw i32 1, %i.hk
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233.2
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !34
  %i.ho = zext nneg i32 %i.hl to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hn, i8 0, i64 %i.ho, i1 false)
  %indvars.iv.next38.i233.3 = add nuw nsw i64 %indvars.iv37.i232, 4 ; 2 uses
  %niter722.next.3 = add i64 %niter722, 4         ; 2 uses
  %niter722.ncmp.3 = icmp eq i64 %niter722.next.3, %unroll_iter721
  br i1 %niter722.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa, label %bb.ad, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod719.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod719.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, label %.epil.preheader715

.epil.preheader715:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa, %.lr.ph29.i230
  %indvars.iv37.i232.epil.init = phi i64 [ 0, %.lr.ph29.i230 ], [ %indvars.iv.next38.i233.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa ]
  %lcmp.mod720 = icmp ne i64 %xtraiter717, 0
  call void @llvm.assume(i1 %lcmp.mod720)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader715
  %indvars.iv37.i232.epil = phi i64 [ %indvars.iv37.i232.epil.init, %.epil.preheader715 ], [ %indvars.iv.next38.i233.epil, %bb.ae ] ; 3 uses
  %epil.iter718 = phi i64 [ 0, %.epil.preheader715 ], [ %epil.iter718.next, %bb.ae ]
  %i.hp = trunc nuw i64 %indvars.iv37.i232.epil to i32
  %i.hq = sub i32 %spec.select, %i.hp
  %i.hr = shl i32 %i.hq, 1
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv37.i232.epil
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !34
  %i.hv = zext nneg i32 %i.hs to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hu, i8 0, i64 %i.hv, i1 false)
  %indvars.iv.next38.i233.epil = add nuw nsw i64 %indvars.iv37.i232.epil, 1
  %epil.iter718.next = add i64 %epil.iter718, 1   ; 2 uses
  %epil.iter718.cmp.not = icmp eq i64 %epil.iter718.next, %xtraiter717
  br i1 %epil.iter718.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, label %bb.ae, !llvm.loop !132

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240: ; preds = %bb.ae, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %wide.trip.count40.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !34
  store i32 %i.dx, ptr %i.bq, align 8, !tbaa !45
  store i8 0, ptr %i.hx, align 1, !tbaa !44
  %i.hy = load ptr, ptr %0, align 8, !tbaa !32
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.bs ; 3 uses
  %.sroa.0122.0.copyload = load i64, ptr %i.cc, align 8 ; 2 uses
  %min.iters.check661 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check661, label %scalar.ph660.preheader, label %vector.ph662

vector.ph662:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240
  %n.vec663 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next670, %vector.body664 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index665 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %wide.load666 = load <2 x i32>, ptr %i.ia, align 4, !tbaa !33
  %wide.load667 = load <2 x i32>, ptr %i.ib, align 4, !tbaa !33
  %i.ic = zext <2 x i32> %wide.load666 to <2 x i64>
  %i.id = zext <2 x i32> %wide.load667 to <2 x i64>
  %wide.gep668 = getelementptr inbounds nuw i8, ptr %i.hz, <2 x i64> %i.ic
  %wide.gep669 = getelementptr inbounds nuw i8, ptr %i.hz, <2 x i64> %i.id
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index665 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x ptr> %wide.gep668, ptr %i.ie, align 8, !tbaa !34
  store <2 x ptr> %wide.gep669, ptr %i.if, align 8, !tbaa !34
  %index.next670 = add nuw i64 %index665, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.ig, label %middle.block671, label %vector.body664, !llvm.loop !133

middle.block671:                                  ; preds = %vector.body664
  %cmp.n672 = icmp eq i64 %n.vec663, %wide.trip.count.i
  br i1 %cmp.n672, label %.preheader.i246, label %scalar.ph660.preheader

scalar.ph660.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, %middle.block671
  %indvars.iv.i243.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240 ], [ %n.vec663, %middle.block671 ]
  br label %scalar.ph660

.preheader.i246:                                  ; preds = %scalar.ph660, %middle.block671
  br i1 %i.dy, label %.lr.ph.i253, label %.lr.ph29.i248

scalar.ph660:                                     ; preds = %scalar.ph660.preheader, %scalar.ph660
  %indvars.iv.i243 = phi i64 [ %indvars.iv.next.i244, %scalar.ph660 ], [ %indvars.iv.i243.ph, %scalar.ph660.preheader ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i243
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !33
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i243
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !34
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %exitcond.i245 = icmp eq i64 %indvars.iv.next.i244, %wide.trip.count.i
  br i1 %exitcond.i245, label %.preheader.i246, label %scalar.ph660, !llvm.loop !134

.lr.ph29.i248:                                    ; preds = %.lr.ph.i253, %.preheader.i246
  store i64 %.sroa.0122.0.copyload, ptr %10, align 8
  %i.im = trunc i64 %.sroa.0122.0.copyload to i32 ; 2 uses
  %umax724 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter725 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.in = icmp samesign ult i64 %umax724, 3
  br i1 %i.in, label %.epil.preheader723, label %.lr.ph29.i248.new

.lr.ph29.i248.new:                                ; preds = %.lr.ph29.i248
  %unroll_iter729 = and i64 %wide.trip.count40.i, 124
  br label %bb.af

.lr.ph.i253:                                      ; preds = %.preheader.i246, %.lr.ph.i253
  %indvars.iv33.i254 = phi i64 [ %indvars.iv.next34.i255, %.lr.ph.i253 ], [ %wide.trip.count.i, %.preheader.i246 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv33.i254
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.io, align 8, !tbaa !34
  %indvars.iv.next34.i255 = add nuw nsw i64 %indvars.iv33.i254, 1 ; 2 uses
  %i.ip = and i64 %indvars.iv.next34.i255, 4294967295
  %exitcond36.not.i256 = icmp eq i64 %i.ip, 16
  br i1 %exitcond36.not.i256, label %.lr.ph29.i248, label %.lr.ph.i253, !llvm.loop !40

bb.af:                                            ; preds = %bb.af, %.lr.ph29.i248.new
  %indvars.iv37.i250 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %indvars.iv.next38.i251.3, %bb.af ] ; 6 uses
  %niter730 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %niter730.next.3, %bb.af ]
  %i.iq = trunc nuw i64 %indvars.iv37.i250 to i32
  %i.ir = sub i32 %spec.select, %i.iq
  %i.is = shl i32 %i.ir, 1
  %i.it = shl nuw i32 1, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !34
  %i.iw = zext nneg i32 %i.it to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iv, i8 0, i64 %i.iw, i1 false)
  %indvars.iv.next38.i251 = or disjoint i64 %indvars.iv37.i250, 1 ; 2 uses
  %i.ix = trunc nuw i64 %indvars.iv.next38.i251 to i32
  %i.iy = sub i32 %spec.select, %i.ix
  %i.iz = shl i32 %i.iy, 1
  %i.ja = shl nuw i32 1, %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !34
  %i.jd = zext nneg i32 %i.ja to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jc, i8 0, i64 %i.jd, i1 false)
  %indvars.iv.next38.i251.1 = or disjoint i64 %indvars.iv37.i250, 2 ; 2 uses
  %i.je = trunc nuw i64 %indvars.iv.next38.i251.1 to i32
  %i.jf = sub i32 %spec.select, %i.je
  %i.jg = shl i32 %i.jf, 1
  %i.jh = shl nuw i32 1, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.1
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !34
  %i.jk = zext nneg i32 %i.jh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jj, i8 0, i64 %i.jk, i1 false)
  %indvars.iv.next38.i251.2 = or disjoint i64 %indvars.iv37.i250, 3 ; 2 uses
  %i.jl = trunc nuw i64 %indvars.iv.next38.i251.2 to i32
  %i.jm = sub i32 %spec.select, %i.jl
  %i.jn = shl i32 %i.jm, 1
  %i.jo = shl nuw i32 1, %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.2
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !34
  %i.jr = zext nneg i32 %i.jo to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jq, i8 0, i64 %i.jr, i1 false)
  %indvars.iv.next38.i251.3 = add nuw nsw i64 %indvars.iv37.i250, 4 ; 2 uses
  %niter730.next.3 = add i64 %niter730, 4         ; 2 uses
  %niter730.ncmp.3 = icmp eq i64 %niter730.next.3, %unroll_iter729
  br i1 %niter730.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, label %bb.af, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa: ; preds = %bb.af
  %lcmp.mod727.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod727.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %.epil.preheader723

.epil.preheader723:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, %.lr.ph29.i248
  %indvars.iv37.i250.epil.init = phi i64 [ 0, %.lr.ph29.i248 ], [ %indvars.iv.next38.i251.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa ]
  %lcmp.mod728 = icmp ne i64 %xtraiter725, 0
  call void @llvm.assume(i1 %lcmp.mod728)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader723
  %indvars.iv37.i250.epil = phi i64 [ %indvars.iv37.i250.epil.init, %.epil.preheader723 ], [ %indvars.iv.next38.i251.epil, %bb.ag ] ; 3 uses
  %epil.iter726 = phi i64 [ 0, %.epil.preheader723 ], [ %epil.iter726.next, %bb.ag ]
  %i.js = trunc nuw i64 %indvars.iv37.i250.epil to i32
  %i.jt = sub i32 %spec.select, %i.js
  %i.ju = shl i32 %i.jt, 1
  %i.jv = shl nuw i32 1, %i.ju
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250.epil
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !34
  %i.jy = zext nneg i32 %i.jv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jx, i8 0, i64 %i.jy, i1 false)
  %indvars.iv.next38.i251.epil = add nuw nsw i64 %indvars.iv37.i250.epil, 1
  %epil.iter726.next = add i64 %epil.iter726, 1   ; 2 uses
  %epil.iter726.cmp.not = icmp eq i64 %epil.iter726.next, %xtraiter725
  br i1 %epil.iter726.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %bb.ag, !llvm.loop !135

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258: ; preds = %bb.ag, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %wide.trip.count40.i
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !34
  store i32 %i.dx, ptr %i.bu, align 8, !tbaa !45
  store i8 0, ptr %i.ka, align 1, !tbaa !44
  %i.kb = load ptr, ptr %0, align 8, !tbaa !32
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.bs
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.bo ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cc, align 8 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %wide.load = load <2 x i32>, ptr %i.ke, align 4, !tbaa !33
  %wide.load658 = load <2 x i32>, ptr %i.kf, align 4, !tbaa !33
  %i.kg = zext <2 x i32> %wide.load to <2 x i64>
  %i.kh = zext <2 x i32> %wide.load658 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.kd, <2 x i64> %i.kg
  %wide.gep659 = getelementptr inbounds nuw i8, ptr %i.kd, <2 x i64> %i.kh
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ki, align 8, !tbaa !34
  store <2 x ptr> %wide.gep659, ptr %i.kj, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i264, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, %middle.block
  %indvars.iv.i261.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader.i264:                                  ; preds = %scalar.ph, %middle.block
  br i1 %i.dy, label %.lr.ph.i271, label %.lr.ph29.i266

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i261 = phi i64 [ %indvars.iv.next.i262, %scalar.ph ], [ %indvars.iv.i261.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i261
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !33
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i261
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !34
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.i263 = icmp eq i64 %indvars.iv.next.i262, %wide.trip.count.i
  br i1 %exitcond.i263, label %.preheader.i264, label %scalar.ph, !llvm.loop !137

.lr.ph29.i266:                                    ; preds = %.lr.ph.i271, %.preheader.i264
  store i64 %.sroa.0.0.copyload, ptr %11, align 8
  %i.kq = trunc i64 %.sroa.0.0.copyload to i32
  %umax732 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter733 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.kr = icmp samesign ult i64 %umax732, 3
  br i1 %i.kr, label %.epil.preheader731, label %.lr.ph29.i266.new

.lr.ph29.i266.new:                                ; preds = %.lr.ph29.i266
  %unroll_iter737 = and i64 %wide.trip.count40.i, 124
  br label %bb.ah

.lr.ph.i271:                                      ; preds = %.preheader.i264, %.lr.ph.i271
  %indvars.iv33.i272 = phi i64 [ %indvars.iv.next34.i273, %.lr.ph.i271 ], [ %wide.trip.count.i, %.preheader.i264 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv33.i272
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.ks, align 8, !tbaa !34
  %indvars.iv.next34.i273 = add nuw nsw i64 %indvars.iv33.i272, 1 ; 2 uses
  %i.kt = and i64 %indvars.iv.next34.i273, 4294967295
  %exitcond36.not.i274 = icmp eq i64 %i.kt, 16
  br i1 %exitcond36.not.i274, label %.lr.ph29.i266, label %.lr.ph.i271, !llvm.loop !40

bb.ah:                                            ; preds = %bb.ah, %.lr.ph29.i266.new
  %indvars.iv37.i268 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %indvars.iv.next38.i269.3, %bb.ah ] ; 6 uses
  %niter738 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %niter738.next.3, %bb.ah ]
  %i.ku = trunc nuw i64 %indvars.iv37.i268 to i32
  %i.kv = sub i32 %spec.select, %i.ku
  %i.kw = shl i32 %i.kv, 1
  %i.kx = shl nuw i32 1, %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !34
  %i.la = zext nneg i32 %i.kx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kz, i8 0, i64 %i.la, i1 false)
  %indvars.iv.next38.i269 = or disjoint i64 %indvars.iv37.i268, 1 ; 2 uses
  %i.lb = trunc nuw i64 %indvars.iv.next38.i269 to i32
  %i.lc = sub i32 %spec.select, %i.lb
  %i.ld = shl i32 %i.lc, 1
  %i.le = shl nuw i32 1, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !34
  %i.lh = zext nneg i32 %i.le to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i8 0, i64 %i.lh, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.li = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.lj = sub i32 %spec.select, %i.li
  %i.lk = shl i32 %i.lj, 1
  %i.ll = shl nuw i32 1, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !34
  %i.lo = zext nneg i32 %i.ll to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ln, i8 0, i64 %i.lo, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.lp = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.lq = sub i32 %spec.select, %i.lp
  %i.lr = shl i32 %i.lq, 1
  %i.ls = shl nuw i32 1, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !34
  %i.lv = zext nneg i32 %i.ls to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lu, i8 0, i64 %i.lv, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter738.next.3 = add i64 %niter738, 4         ; 2 uses
  %niter738.ncmp.3 = icmp eq i64 %niter738.next.3, %unroll_iter737
  br i1 %niter738.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod735.not = icmp eq i64 %xtraiter733, 0
  br i1 %lcmp.mod735.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %.epil.preheader731

.epil.preheader731:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, %.lr.ph29.i266
  %indvars.iv37.i268.epil.init = phi i64 [ 0, %.lr.ph29.i266 ], [ %indvars.iv.next38.i269.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa ]
  %lcmp.mod736 = icmp ne i64 %xtraiter733, 0
  call void @llvm.assume(i1 %lcmp.mod736)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader731
  %indvars.iv37.i268.epil = phi i64 [ %indvars.iv37.i268.epil.init, %.epil.preheader731 ], [ %indvars.iv.next38.i269.epil, %bb.ai ] ; 3 uses
  %epil.iter734 = phi i64 [ 0, %.epil.preheader731 ], [ %epil.iter734.next, %bb.ai ]
  %i.lw = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lx = sub i32 %spec.select, %i.lw
  %i.ly = shl i32 %i.lx, 1
  %i.lz = shl nuw i32 1, %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !34
  %i.mc = zext nneg i32 %i.lz to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mb, i8 0, i64 %i.mc, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter734.next = add i64 %epil.iter734, 1   ; 2 uses
  %epil.iter734.cmp.not = icmp eq i64 %epil.iter734.next, %xtraiter733
  br i1 %epil.iter734.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !138

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !34
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !45
  store i8 0, ptr %i.me, align 1, !tbaa !44
  %i.mf = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.mg = getelementptr inbounds nuw [120 x i8], ptr %i.mf, i64 %indvars.iv557
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !56
  %i.mj = load i32, ptr %i.cc, align 8, !tbaa !30 ; 2 uses
  %i.mk = load i32, ptr %i.cf, align 4, !tbaa !31 ; 2 uses
  %.not541 = icmp eq i32 %i.mk, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not542 = icmp eq i32 %i.mj, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mx, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.mm = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.mn = getelementptr inbounds nuw [120 x i8], ptr %i.mm, i64 %indvars.iv557
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 104
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !57
  %i.mq = load i32, ptr %i.cb, align 8, !tbaa !59
  %i.mr = load i32, ptr %i.ml, align 4, !tbaa !58
  %i.ms = add i32 %i.mr, %.0210524
  %i.mt = mul i32 %i.ms, %i.mi
  %i.mu = add i32 %i.mt, %i.mq
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mp, i64 %i.mv
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aaq, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mw, %.preheader480.lr.ph ], [ %i.aar, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mx = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mx, %i.mk
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !139

bb.aj:                                            ; preds = %.preheader480, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480 ], [ %indvars.iv.next, %.thread443 ] ; 2 uses
  %12 = trunc nuw i64 %indvars.iv to i32
  %13 = add nsw i32 %12, -1                       ; 7 uses
  %i.my = lshr i32 %.0208522, %13                 ; 2 uses
  %i.mz = lshr i32 %.0210524, %13                 ; 2 uses
  %14 = zext i32 %13 to i64                       ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %14
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !34
  %notmask.i278 = shl nsw i32 -1, %13
  %i.nc = xor i32 %notmask.i278, -1               ; 2 uses
  %i.nd = add i32 %i.ee, %i.nc
  %i.ne = lshr i32 %i.nd, %13
  %i.nf = mul i32 %i.ne, %i.mz
  %i.ng = add i32 %i.nf, %i.my
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nh ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !44
  %i.nk = icmp eq i8 %i.nj, 1
  br i1 %i.nk, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %14
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !34
  %i.nn = add i32 %i.gj, %i.nc
  %i.no = lshr i32 %i.nn, %13
  %i.np = mul i32 %i.no, %i.mz
  %i.nq = add i32 %i.np, %i.my
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nr ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !44
  %i.nu = icmp eq i8 %i.nt, 0
  br i1 %i.nu, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.nv = load i32, ptr %i.p, align 4, !tbaa !115 ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !120
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.nx = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i284 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !33
  %i.ny = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !109
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = call noundef i64 %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !126
  %.not12.i.i285 = icmp eq i64 %i.oc, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.od = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.od, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.od, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.oe = load i32, ptr %i.k, align 4, !tbaa !33  ; 3 uses
  store i32 %i.oe, ptr %i.r, align 8, !tbaa !120
  %i.of = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i286 = sub nuw nsw i8 8, %i.of
  %i.og = zext nneg i8 %narrow13.i.i286 to i32
  %i.oh = icmp eq i32 %i.oe, 255
  %i.oi = zext i1 %i.oh to i8
  store i8 %i.oi, ptr %i.s, align 8, !tbaa !121
  %i.oj = load i32, ptr %i.q, align 4, !tbaa !119
  %i.ok = add i32 %i.oj, -1
  store i32 %i.ok, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.ol = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i287 = sub nuw nsw i8 8, %i.ol
  %i.om = zext nneg i8 %narrow.i.i287 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  %i.on = add nsw i32 %i.om, -1
  store i32 %i.on, ptr %i.p, align 4, !tbaa !115
  store i32 0, ptr %4, align 4, !tbaa !33
  %i.oo = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str, ptr %i.oo, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.oo, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280
  %.ph = phi i32 [ %i.og, %bb.ap ], [ %i.nv, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %.ph438 = phi i32 [ %i.oe, %bb.ap ], [ %.pre.i282, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %i.op = add nsw i32 %.ph, -1                    ; 2 uses
  store i32 %i.op, ptr %i.p, align 4, !tbaa !115
  %i.oq = lshr i32 %.ph438, %i.op                 ; 2 uses
  %i.or = trunc i32 %i.oq to i1
  %i.os = trunc i32 %i.oq to i8
  %i.ot = and i8 %i.os, 1
  %i.ou = xor i8 %i.ot, 1
  store i8 %i.ou, ptr %i.ni, align 1, !tbaa !44
  store i8 1, ptr %i.ns, align 1, !tbaa !44
  br i1 %i.or, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.ar
  %.not218 = icmp eq i32 %13, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not218, label %.preheader479, label %bb.aj, !llvm.loop !140

bb.as:                                            ; preds = %bb.ba
  %i.ov = getelementptr inbounds nuw i8, ptr %.0209521, i64 12
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !141
  %i.ox = icmp ugt i32 %.2202, %i.ow
  br i1 %i.ox, label %bb.bb, label %bb.bc

.preheader479:                                    ; preds = %.thread443, %bb.ba
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %bb.ba ], [ %wide.trip.count40.i, %.thread443 ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, -1 ; 5 uses
  %i.oy = trunc nuw i64 %indvars.iv554 to i32     ; 4 uses
  %i.oz = lshr i32 %.0208522, %i.oy
  %i.pa = lshr i32 %.0210524, %i.oy
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv554
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !34
  %notmask.i291 = shl nsw i32 -1, %i.oy
  %i.pd = xor i32 %notmask.i291, -1
  %i.pe = add i32 %i.im, %i.pd
  %i.pf = lshr i32 %i.pe, %i.oy
  %i.pg = mul i32 %i.pf, %i.pa
  %i.ph = add i32 %i.pg, %i.oz
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !44
  %i.pl = zext i8 %i.pk to i32                    ; 2 uses
  %i.pm = trunc nuw i64 %indvars.iv.next555 to i32 ; 5 uses
  %i.pn = lshr i32 %.0208522, %i.pm               ; 2 uses
  %i.po = lshr i32 %.0210524, %i.pm               ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next555
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !34
  %notmask.i292 = shl nsw i32 -1, %i.pm
  %i.pr = xor i32 %notmask.i292, -1               ; 2 uses
  %i.ps = add i32 %i.kq, %i.pr
  %i.pt = lshr i32 %i.ps, %i.pm
  %i.pu = mul i32 %i.pt, %i.po
  %i.pv = add i32 %i.pu, %i.pn
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pw ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !44
  %i.pz = icmp eq i8 %i.py, 0
  br i1 %i.pz, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %.preheader479
  %.pre573 = load i32, ptr %i.p, align 4, !tbaa !115
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ay
  %i.qa = phi i32 [ %i.qu, %bb.ay ], [ %.pre573, %.preheader.preheader ] ; 2 uses
  %.1201518 = phi i32 [ %i.qx, %bb.ay ], [ %i.pl, %.preheader.preheader ]
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %bb.at, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293: ; preds = %.preheader
  %.pre.i295 = load i32, ptr %i.r, align 8, !tbaa !120
  br label %bb.ay

bb.at:                                            ; preds = %.preheader
  %i.qc = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i297 = icmp eq i32 %i.qc, 0
  br i1 %.not.i.not.i297, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store i32 0, ptr %i.j, align 4, !tbaa !33
  %i.qd = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !109
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = call noundef i64 %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !126
  %.not12.i.i298 = icmp eq i64 %i.qh, 1
  br i1 %.not12.i.i298, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qi = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.qi, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.qi, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.qj = load i32, ptr %i.j, align 4, !tbaa !33  ; 3 uses
  store i32 %i.qj, ptr %i.r, align 8, !tbaa !120
  %i.qk = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i299 = sub nuw nsw i8 8, %i.qk
  %i.ql = zext nneg i8 %narrow13.i.i299 to i32
  %i.qm = icmp eq i32 %i.qj, 255
  %i.qn = zext i1 %i.qm to i8
  store i8 %i.qn, ptr %i.s, align 8, !tbaa !121
  %i.qo = load i32, ptr %i.q, align 4, !tbaa !119
  %i.qp = add i32 %i.qo, -1
  store i32 %i.qp, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.qq = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i300 = sub nuw nsw i8 8, %i.qq
  %i.qr = zext nneg i8 %narrow.i.i300 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  %i.qs = add nsw i32 %i.qr, -1
  store i32 %i.qs, ptr %i.p, align 4, !tbaa !115
  store i32 0, ptr %4, align 4, !tbaa !33
  %i.qt = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.1, ptr %i.qt, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.qt, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ay:                                            ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293, %bb.aw
  %.ph449 = phi i32 [ %i.ql, %bb.aw ], [ %i.qa, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %.ph450 = phi i32 [ %i.qj, %bb.aw ], [ %.pre.i295, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %i.qu = add nsw i32 %.ph449, -1                 ; 3 uses
  store i32 %i.qu, ptr %i.p, align 4, !tbaa !115
  %i.qv = lshr i32 %.ph450, %i.qu
  %i.qw = and i32 %i.qv, 1                        ; 2 uses
  %reass.sub = add i32 %.1201518, 1
  %i.qx = sub i32 %reass.sub, %i.qw               ; 3 uses
  %i.qy = icmp eq i32 %i.qw, 0
  br i1 %i.qy, label %.preheader, label %bb.az, !llvm.loop !142

bb.az:                                            ; preds = %bb.ay
  %i.qz = trunc i32 %i.qx to i8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next555
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !34
  %i.rc = add i32 %i.im, %i.pr
  %i.rd = lshr i32 %i.rc, %i.pm
  %i.re = mul i32 %i.rd, %i.po
  %i.rf = add i32 %i.re, %i.pn
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rg
  store i8 %i.qz, ptr %i.rh, align 1, !tbaa !44
  store i8 1, ptr %i.px, align 1, !tbaa !44
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader479
  %.2202 = phi i32 [ %i.qx, %bb.az ], [ %i.pl, %.preheader479 ] ; 2 uses
  %.not219 = icmp eq i64 %indvars.iv.next555, 0
  br i1 %.not219, label %bb.as, label %.preheader479, !llvm.loop !143

bb.bb:                                            ; preds = %bb.as
  %i.ri = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.2, ptr %i.ri, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.ri, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bc:                                            ; preds = %bb.as
  %i.rj = getelementptr inbounds nuw i8, ptr %.0209521, i64 16 ; 3 uses
  store i32 %.2202, ptr %i.rj, align 8, !tbaa !63
  %i.rk = load i32, ptr %i.p, align 4, !tbaa !115 ; 2 uses
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %bb.bd, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304: ; preds = %bb.bc
  %.pre.i306 = load i32, ptr %i.r, align 8, !tbaa !120
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rm = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i308 = icmp eq i32 %i.rm, 0
  br i1 %.not.i.not.i308, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i32 0, ptr %i.i, align 4, !tbaa !33
  %i.rn = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !109
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = call noundef i64 %i.rq(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !126
  %.not12.i.i309 = icmp eq i64 %i.rr, 1
  br i1 %.not12.i.i309, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rs = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.rs, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.rs, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.rt = load i32, ptr %i.i, align 4, !tbaa !33  ; 3 uses
  store i32 %i.rt, ptr %i.r, align 8, !tbaa !120
  %i.ru = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i310 = sub nuw nsw i8 8, %i.ru
  %i.rv = zext nneg i8 %narrow13.i.i310 to i32
  %i.rw = icmp eq i32 %i.rt, 255
  %i.rx = zext i1 %i.rw to i8
  store i8 %i.rx, ptr %i.s, align 8, !tbaa !121
  %i.ry = load i32, ptr %i.q, align 4, !tbaa !119
  %i.rz = add i32 %i.ry, -1
  store i32 %i.rz, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.sa = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i311 = sub nuw nsw i8 8, %i.sa
  %i.sb = zext nneg i8 %narrow.i.i311 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  %i.sc = add nsw i32 %i.sb, -1
end_hunk_1
