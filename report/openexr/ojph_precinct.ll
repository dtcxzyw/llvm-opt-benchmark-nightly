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
  store ptr null, ptr %i.a, align 8, !tbaa !12
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
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
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv605
  %i.s = load i8, ptr %i.r, align 8, !tbaa !29, !range !30, !noundef !31
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.bj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv605 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 9 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.bj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 2 uses
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
  %i.ah = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %.sroa.0185.0.copyload = load i64, ptr %i.v, align 8, !tbaa !35 ; 2 uses
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
  %wide.load861 = load <2 x i32>, ptr %i.aj, align 4, !tbaa !35
  %wide.load862 = load <2 x i32>, ptr %i.ak, align 4, !tbaa !35
  %i.al = zext <2 x i32> %wide.load861 to <2 x i64>
  %i.am = zext <2 x i32> %wide.load862 to <2 x i64>
  %wide.gep863 = getelementptr inbounds nuw i8, ptr %i.ah, <2 x i64> %i.al
  %wide.gep864 = getelementptr inbounds nuw i8, ptr %i.ah, <2 x i64> %i.am
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index860 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x ptr> %wide.gep863, ptr %i.an, align 8, !tbaa !36
  store <2 x ptr> %wide.gep864, ptr %i.ao, align 8, !tbaa !36
  %index.next865 = add nuw i64 %index860, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next865, %n.vec858
  br i1 %i.ap, label %middle.block866, label %vector.body859, !llvm.loop !65

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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.preheader.i, label %scalar.ph855, !llvm.loop !66

.lr.ph29.i:                                       ; preds = %.lr.ph.i, %.preheader.i
  store i64 %.sroa.0185.0.copyload, ptr %4, align 8
  %wide.trip.count40.i = zext nneg i32 %i.aq to i64 ; 15 uses
  %i.ax = trunc i64 %.sroa.0185.0.copyload to i32 ; 5 uses
  %8 = zext nneg i32 %i.ag to i64                 ; 4 uses
  %9 = zext nneg i32 %i.ad to i64                 ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %8, i64 %9)
  %xtraiter = and i64 %wide.trip.count40.i, 3     ; 3 uses
  %i.ay = icmp samesign ult i64 %umax, 3
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count40.i, 124
  br label %bb.g

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %wide.trip.count.i, %.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv33.i
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.az, align 8, !tbaa !36
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ba = and i64 %indvars.iv.next34.i, 4294967295
  %exitcond36.not.i = icmp eq i64 %i.ba, 16
  br i1 %exitcond36.not.i, label %.lr.ph29.i, label %.lr.ph.i, !llvm.loop !0

bb.g:                                             ; preds = %bb.g, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next38.i.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.3, %bb.g ]
  %i.bb = trunc nuw i64 %indvars.iv37.i to i32
  %i.bc = sub nuw i32 %spec.select, %i.bb
  %i.bd = shl nuw nsw i32 %i.bc, 1
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv37.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36
  %i.bh = zext nneg i32 %i.be to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 -1, i64 %i.bh, i1 false)
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.bj = sub nuw i32 %spec.select, %i.bi
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next38.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bo = zext nneg i32 %i.bl to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 -1, i64 %i.bo, i1 false)
  %indvars.iv.next38.i.1 = or disjoint i64 %indvars.iv37.i, 2 ; 2 uses
  %i.bp = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.bq = sub nuw i32 %spec.select, %i.bp
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next38.i.1
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36
  %i.bv = zext nneg i32 %i.bs to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bu, i8 -1, i64 %i.bv, i1 false)
  %indvars.iv.next38.i.2 = or disjoint i64 %indvars.iv37.i, 3 ; 2 uses
  %i.bw = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.bx = sub nuw i32 %spec.select, %i.bw
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next38.i.2
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36
  %i.cc = zext nneg i32 %i.bz to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i8 -1, i64 %i.cc, i1 false)
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, label %bb.g, !llvm.loop !1

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
  %i.cd = trunc nuw i64 %indvars.iv37.i.epil to i32
  %i.ce = sub nuw i32 %spec.select, %i.cd
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv37.i.epil
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.cj = zext nneg i32 %i.cg to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, i8 -1, i64 %i.cj, i1 false)
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %bb.h, !llvm.loop !67

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit: ; preds = %bb.h, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %wide.trip.count40.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.cl, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !43
  %i.cm = load ptr, ptr %0, align 8, !tbaa !34
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.f ; 3 uses
  %.sroa.0184.0.copyload = load i64, ptr %i.v, align 8, !tbaa !35 ; 2 uses
  %min.iters.check842 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check842, label %scalar.ph841.preheader, label %vector.ph843

vector.ph843:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit
  %n.vec844 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph843
  %index846 = phi i64 [ 0, %vector.ph843 ], [ %index.next851, %vector.body845 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index846 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load847 = load <2 x i32>, ptr %i.co, align 4, !tbaa !35
  %wide.load848 = load <2 x i32>, ptr %i.cp, align 4, !tbaa !35
  %i.cq = zext <2 x i32> %wide.load847 to <2 x i64>
  %i.cr = zext <2 x i32> %wide.load848 to <2 x i64>
  %wide.gep849 = getelementptr inbounds nuw i8, ptr %i.cn, <2 x i64> %i.cq
  %wide.gep850 = getelementptr inbounds nuw i8, ptr %i.cn, <2 x i64> %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index846 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.gep849, ptr %i.cs, align 8, !tbaa !36
  store <2 x ptr> %wide.gep850, ptr %i.ct, align 8, !tbaa !36
  %index.next851 = add nuw i64 %index846, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next851, %n.vec844
  br i1 %i.cu, label %middle.block852, label %vector.body845, !llvm.loop !68

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
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i283
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i283
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !36
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.i285 = icmp eq i64 %indvars.iv.next.i284, %wide.trip.count.i
  br i1 %exitcond.i285, label %.preheader.i286, label %scalar.ph841, !llvm.loop !69

.lr.ph29.i288:                                    ; preds = %.lr.ph.i293, %.preheader.i286
  store i64 %.sroa.0184.0.copyload, ptr %5, align 8
  %i.da = trunc i64 %.sroa.0184.0.copyload to i32 ; 2 uses
  %umax871 = call i64 @llvm.umax.i64(i64 %8, i64 %9)
  %xtraiter872 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.db = icmp samesign ult i64 %umax871, 3
  br i1 %i.db, label %.epil.preheader870, label %.lr.ph29.i288.new

.lr.ph29.i288.new:                                ; preds = %.lr.ph29.i288
  %unroll_iter876 = and i64 %wide.trip.count40.i, 124
  br label %bb.i

.lr.ph.i293:                                      ; preds = %.preheader.i286, %.lr.ph.i293
  %indvars.iv33.i294 = phi i64 [ %indvars.iv.next34.i295, %.lr.ph.i293 ], [ %wide.trip.count.i, %.preheader.i286 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv33.i294
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.dc, align 8, !tbaa !36
  %indvars.iv.next34.i295 = add nuw nsw i64 %indvars.iv33.i294, 1 ; 2 uses
  %i.dd = and i64 %indvars.iv.next34.i295, 4294967295
  %exitcond36.not.i296 = icmp eq i64 %i.dd, 16
  br i1 %exitcond36.not.i296, label %.lr.ph29.i288, label %.lr.ph.i293, !llvm.loop !0

bb.i:                                             ; preds = %bb.i, %.lr.ph29.i288.new
  %indvars.iv37.i290 = phi i64 [ 0, %.lr.ph29.i288.new ], [ %indvars.iv.next38.i291.3, %bb.i ] ; 6 uses
  %niter877 = phi i64 [ 0, %.lr.ph29.i288.new ], [ %niter877.next.3, %bb.i ]
  %i.de = trunc nuw i64 %indvars.iv37.i290 to i32
  %i.df = sub nuw i32 %spec.select, %i.de
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv37.i290
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.dk = zext nneg i32 %i.dh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dj, i8 0, i64 %i.dk, i1 false)
  %indvars.iv.next38.i291 = or disjoint i64 %indvars.iv37.i290, 1 ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv.next38.i291 to i32
  %i.dm = sub nuw i32 %spec.select, %i.dl
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next38.i291
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !36
  %i.dr = zext nneg i32 %i.do to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dq, i8 0, i64 %i.dr, i1 false)
  %indvars.iv.next38.i291.1 = or disjoint i64 %indvars.iv37.i290, 2 ; 2 uses
  %i.ds = trunc nuw i64 %indvars.iv.next38.i291.1 to i32
  %i.dt = sub nuw i32 %spec.select, %i.ds
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = shl nuw i32 1, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next38.i291.1
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36
  %i.dy = zext nneg i32 %i.dv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 0, i64 %i.dy, i1 false)
  %indvars.iv.next38.i291.2 = or disjoint i64 %indvars.iv37.i290, 3 ; 2 uses
  %i.dz = trunc nuw i64 %indvars.iv.next38.i291.2 to i32
  %i.ea = sub nuw i32 %spec.select, %i.dz
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = shl nuw i32 1, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next38.i291.2
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !36
  %i.ef = zext nneg i32 %i.ec to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ee, i8 0, i64 %i.ef, i1 false)
  %indvars.iv.next38.i291.3 = add nuw nsw i64 %indvars.iv37.i290, 4 ; 2 uses
  %niter877.next.3 = add i64 %niter877, 4         ; 2 uses
  %niter877.ncmp.3 = icmp eq i64 %niter877.next.3, %unroll_iter876
  br i1 %niter877.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa, label %bb.i, !llvm.loop !1

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
  %i.eg = trunc nuw i64 %indvars.iv37.i290.epil to i32
  %i.eh = sub nuw i32 %spec.select, %i.eg
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv37.i290.epil
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !36
  %i.em = zext nneg i32 %i.ej to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.el, i8 0, i64 %i.em, i1 false)
  %indvars.iv.next38.i291.epil = add nuw nsw i64 %indvars.iv37.i290.epil, 1
  %epil.iter873.next = add i64 %epil.iter873, 1   ; 2 uses
  %epil.iter873.cmp.not = icmp eq i64 %epil.iter873.next, %xtraiter872
  br i1 %epil.iter873.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298, label %bb.j, !llvm.loop !70

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298: ; preds = %bb.j, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298.unr-lcssa
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %wide.trip.count40.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !43
  %i.ep = load ptr, ptr %0, align 8, !tbaa !34
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.j ; 3 uses
  %.sroa.0183.0.copyload = load i64, ptr %i.v, align 8, !tbaa !35 ; 2 uses
  %min.iters.check828 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check828, label %scalar.ph827.preheader, label %vector.ph829

vector.ph829:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit298
  %n.vec830 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next837, %vector.body831 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index832 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %wide.load833 = load <2 x i32>, ptr %i.er, align 4, !tbaa !35
  %wide.load834 = load <2 x i32>, ptr %i.es, align 4, !tbaa !35
  %i.et = zext <2 x i32> %wide.load833 to <2 x i64>
  %i.eu = zext <2 x i32> %wide.load834 to <2 x i64>
  %wide.gep835 = getelementptr inbounds nuw i8, ptr %i.eq, <2 x i64> %i.et
  %wide.gep836 = getelementptr inbounds nuw i8, ptr %i.eq, <2 x i64> %i.eu
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index832 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <2 x ptr> %wide.gep835, ptr %i.ev, align 8, !tbaa !36
  store <2 x ptr> %wide.gep836, ptr %i.ew, align 8, !tbaa !36
  %index.next837 = add nuw i64 %index832, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next837, %n.vec830
  br i1 %i.ex, label %middle.block838, label %vector.body831, !llvm.loop !71

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
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i300
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !35
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i300
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !36
  %indvars.iv.next.i301 = add nuw nsw i64 %indvars.iv.i300, 1 ; 2 uses
  %exitcond.i302 = icmp eq i64 %indvars.iv.next.i301, %wide.trip.count.i
  br i1 %exitcond.i302, label %.preheader.i303, label %scalar.ph827, !llvm.loop !72

.lr.ph29.i305:                                    ; preds = %.lr.ph.i310, %.preheader.i303
  store i64 %.sroa.0183.0.copyload, ptr %6, align 8
  %i.fd = trunc i64 %.sroa.0183.0.copyload to i32 ; 5 uses
  %umax879 = call i64 @llvm.umax.i64(i64 %8, i64 %9)
  %xtraiter880 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.fe = icmp samesign ult i64 %umax879, 3
  br i1 %i.fe, label %.epil.preheader878, label %.lr.ph29.i305.new

.lr.ph29.i305.new:                                ; preds = %.lr.ph29.i305
  %unroll_iter884 = and i64 %wide.trip.count40.i, 124
  br label %bb.k

.lr.ph.i310:                                      ; preds = %.preheader.i303, %.lr.ph.i310
  %indvars.iv33.i311 = phi i64 [ %indvars.iv.next34.i312, %.lr.ph.i310 ], [ %wide.trip.count.i, %.preheader.i303 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv33.i311
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.ff, align 8, !tbaa !36
  %indvars.iv.next34.i312 = add nuw nsw i64 %indvars.iv33.i311, 1 ; 2 uses
  %i.fg = and i64 %indvars.iv.next34.i312, 4294967295
  %exitcond36.not.i313 = icmp eq i64 %i.fg, 16
  br i1 %exitcond36.not.i313, label %.lr.ph29.i305, label %.lr.ph.i310, !llvm.loop !0

bb.k:                                             ; preds = %bb.k, %.lr.ph29.i305.new
  %indvars.iv37.i307 = phi i64 [ 0, %.lr.ph29.i305.new ], [ %indvars.iv.next38.i308.3, %bb.k ] ; 6 uses
  %niter885 = phi i64 [ 0, %.lr.ph29.i305.new ], [ %niter885.next.3, %bb.k ]
  %i.fh = trunc nuw i64 %indvars.iv37.i307 to i32
  %i.fi = sub nuw i32 %spec.select, %i.fh
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv37.i307
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !36
  %i.fn = zext nneg i32 %i.fk to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fm, i8 -1, i64 %i.fn, i1 false)
  %indvars.iv.next38.i308 = or disjoint i64 %indvars.iv37.i307, 1 ; 2 uses
  %i.fo = trunc nuw i64 %indvars.iv.next38.i308 to i32
  %i.fp = sub nuw i32 %spec.select, %i.fo
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = shl nuw i32 1, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !36
  %i.fu = zext nneg i32 %i.fr to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ft, i8 -1, i64 %i.fu, i1 false)
  %indvars.iv.next38.i308.1 = or disjoint i64 %indvars.iv37.i307, 2 ; 2 uses
  %i.fv = trunc nuw i64 %indvars.iv.next38.i308.1 to i32
  %i.fw = sub nuw i32 %spec.select, %i.fv
  %i.fx = shl nuw nsw i32 %i.fw, 1
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308.1
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !36
  %i.gb = zext nneg i32 %i.fy to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, i8 -1, i64 %i.gb, i1 false)
  %indvars.iv.next38.i308.2 = or disjoint i64 %indvars.iv37.i307, 3 ; 2 uses
  %i.gc = trunc nuw i64 %indvars.iv.next38.i308.2 to i32
  %i.gd = sub nuw i32 %spec.select, %i.gc
  %i.ge = shl nuw nsw i32 %i.gd, 1
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next38.i308.2
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !36
  %i.gi = zext nneg i32 %i.gf to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gh, i8 -1, i64 %i.gi, i1 false)
  %indvars.iv.next38.i308.3 = add nuw nsw i64 %indvars.iv37.i307, 4 ; 2 uses
  %niter885.next.3 = add i64 %niter885, 4         ; 2 uses
  %niter885.ncmp.3 = icmp eq i64 %niter885.next.3, %unroll_iter884
  br i1 %niter885.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa, label %bb.k, !llvm.loop !1

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
  %i.gj = trunc nuw i64 %indvars.iv37.i307.epil to i32
  %i.gk = sub nuw i32 %spec.select, %i.gj
  %i.gl = shl nuw nsw i32 %i.gk, 1
  %i.gm = shl nuw i32 1, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv37.i307.epil
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !36
  %i.gp = zext nneg i32 %i.gm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.go, i8 -1, i64 %i.gp, i1 false)
  %indvars.iv.next38.i308.epil = add nuw nsw i64 %indvars.iv37.i307.epil, 1
  %epil.iter881.next = add i64 %epil.iter881, 1   ; 2 uses
  %epil.iter881.cmp.not = icmp eq i64 %epil.iter881.next, %xtraiter880
  br i1 %epil.iter881.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315, label %bb.l, !llvm.loop !73

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315: ; preds = %bb.l, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315.unr-lcssa
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %wide.trip.count40.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.gr, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !43
  %i.gs = load ptr, ptr %0, align 8, !tbaa !34
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.j
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.f ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8, !tbaa !35 ; 2 uses
  %min.iters.check817 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check817, label %scalar.ph.preheader, label %vector.ph818

vector.ph818:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit315
  %n.vec819 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body820

vector.body820:                                   ; preds = %vector.body820, %vector.ph818
  %index821 = phi i64 [ 0, %vector.ph818 ], [ %index.next824, %vector.body820 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index821 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %wide.load = load <2 x i32>, ptr %i.gv, align 4, !tbaa !35
  %wide.load822 = load <2 x i32>, ptr %i.gw, align 4, !tbaa !35
  %i.gx = zext <2 x i32> %wide.load to <2 x i64>
  %i.gy = zext <2 x i32> %wide.load822 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.gu, <2 x i64> %i.gx
  %wide.gep823 = getelementptr inbounds nuw i8, ptr %i.gu, <2 x i64> %i.gy
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index821 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x ptr> %wide.gep, ptr %i.gz, align 8, !tbaa !36
  store <2 x ptr> %wide.gep823, ptr %i.ha, align 8, !tbaa !36
  %index.next824 = add nuw i64 %index821, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next824, %n.vec819
  br i1 %i.hb, label %middle.block825, label %vector.body820, !llvm.loop !74

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
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i317
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !35
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i317
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !36
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i317, 1 ; 2 uses
  %exitcond.i319 = icmp eq i64 %indvars.iv.next.i318, %wide.trip.count.i
  br i1 %exitcond.i319, label %.preheader.i320, label %scalar.ph, !llvm.loop !75

.lr.ph29.i322:                                    ; preds = %.lr.ph.i327, %.preheader.i320
  store i64 %.sroa.0.0.copyload, ptr %7, align 8
  %i.hh = trunc i64 %.sroa.0.0.copyload to i32    ; 2 uses
  %umax887 = call i64 @llvm.umax.i64(i64 %8, i64 %9)
  %xtraiter888 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.hi = icmp samesign ult i64 %umax887, 3
  br i1 %i.hi, label %.epil.preheader886, label %.lr.ph29.i322.new

.lr.ph29.i322.new:                                ; preds = %.lr.ph29.i322
  %unroll_iter892 = and i64 %wide.trip.count40.i, 124
  br label %bb.m

.lr.ph.i327:                                      ; preds = %.preheader.i320, %.lr.ph.i327
  %indvars.iv33.i328 = phi i64 [ %indvars.iv.next34.i329, %.lr.ph.i327 ], [ %wide.trip.count.i, %.preheader.i320 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv33.i328
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.hj, align 8, !tbaa !36
  %indvars.iv.next34.i329 = add nuw nsw i64 %indvars.iv33.i328, 1 ; 2 uses
  %i.hk = and i64 %indvars.iv.next34.i329, 4294967295
  %exitcond36.not.i330 = icmp eq i64 %i.hk, 16
  br i1 %exitcond36.not.i330, label %.lr.ph29.i322, label %.lr.ph.i327, !llvm.loop !0

bb.m:                                             ; preds = %bb.m, %.lr.ph29.i322.new
  %indvars.iv37.i324 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %indvars.iv.next38.i325.3, %bb.m ] ; 6 uses
  %niter893 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %niter893.next.3, %bb.m ]
  %i.hl = trunc nuw i64 %indvars.iv37.i324 to i32
  %i.hm = sub nuw i32 %spec.select, %i.hl
  %i.hn = shl nuw nsw i32 %i.hm, 1
  %i.ho = shl nuw i32 1, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !36
  %i.hr = zext nneg i32 %i.ho to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hq, i8 0, i64 %i.hr, i1 false)
  %indvars.iv.next38.i325 = or disjoint i64 %indvars.iv37.i324, 1 ; 2 uses
  %i.hs = trunc nuw i64 %indvars.iv.next38.i325 to i32
  %i.ht = sub nuw i32 %spec.select, %i.hs
  %i.hu = shl nuw nsw i32 %i.ht, 1
  %i.hv = shl nuw i32 1, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !36
  %i.hy = zext nneg i32 %i.hv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hx, i8 0, i64 %i.hy, i1 false)
  %indvars.iv.next38.i325.1 = or disjoint i64 %indvars.iv37.i324, 2 ; 2 uses
  %i.hz = trunc nuw i64 %indvars.iv.next38.i325.1 to i32
  %i.ia = sub nuw i32 %spec.select, %i.hz
  %i.ib = shl nuw nsw i32 %i.ia, 1
  %i.ic = shl nuw i32 1, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.1
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !36
  %i.if = zext nneg i32 %i.ic to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ie, i8 0, i64 %i.if, i1 false)
  %indvars.iv.next38.i325.2 = or disjoint i64 %indvars.iv37.i324, 3 ; 2 uses
  %i.ig = trunc nuw i64 %indvars.iv.next38.i325.2 to i32
  %i.ih = sub nuw i32 %spec.select, %i.ig
  %i.ii = shl nuw nsw i32 %i.ih, 1
  %i.ij = shl nuw i32 1, %i.ii
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.2
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !36
  %i.im = zext nneg i32 %i.ij to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.il, i8 0, i64 %i.im, i1 false)
  %indvars.iv.next38.i325.3 = add nuw nsw i64 %indvars.iv37.i324, 4 ; 2 uses
  %niter893.next.3 = add i64 %niter893, 4         ; 2 uses
  %niter893.ncmp.3 = icmp eq i64 %niter893.next.3, %unroll_iter892
  br i1 %niter893.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, label %bb.m, !llvm.loop !1

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
  %i.in = trunc nuw i64 %indvars.iv37.i324.epil to i32
  %i.io = sub nuw i32 %spec.select, %i.in
  %i.ip = shl nuw nsw i32 %i.io, 1
  %i.iq = shl nuw i32 1, %i.ip
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324.epil
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !36
  %i.it = zext nneg i32 %i.iq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.is, i8 0, i64 %i.it, i1 false)
  %indvars.iv.next38.i325.epil = add nuw nsw i64 %indvars.iv37.i324.epil, 1
  %epil.iter889.next = add i64 %epil.iter889, 1   ; 2 uses
  %epil.iter889.cmp.not = icmp eq i64 %epil.iter889.next, %xtraiter888
  br i1 %epil.iter889.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %bb.n, !llvm.loop !76

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332: ; preds = %bb.n, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %wide.trip.count40.i
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.iv, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !43
  %i.iw = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ix = getelementptr inbounds nuw [120 x i8], ptr %i.iw, i64 %indvars.iv605 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !44 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.jb = load i32, ptr %i.y, align 4, !tbaa !33  ; 2 uses
  %.not582 = icmp eq i32 %i.jb, 0
  br i1 %.not582, label %.preheader533, label %.preheader530.lr.ph

.preheader530.lr.ph:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !45
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !46
  %i.jf = mul i32 %i.je, %i.iz
  %i.jg = load i32, ptr %i.u, align 8, !tbaa !47
  %i.jh = add i32 %i.jf, %i.jg
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.jd, i64 %i.ji
  %i.jk = load ptr, ptr %i.d, align 8
  %i.jl = load ptr, ptr %i.k, align 8
  %i.jm = zext i32 %i.iz to i64
  %.pre = load i32, ptr %i.v, align 8, !tbaa !32
  br label %.preheader530

.preheader533:                                    ; preds = %._crit_edge, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %.not273542 = icmp eq i32 %spec.select, 0
  br i1 %.not273542, label %._crit_edge545, label %.lr.ph544

.preheader530:                                    ; preds = %.preheader530.lr.ph, %._crit_edge
  %i.jn = phi i32 [ %i.jb, %.preheader530.lr.ph ], [ %i.jr, %._crit_edge ]
  %i.jo = phi i32 [ %.pre, %.preheader530.lr.ph ], [ %i.js, %._crit_edge ]
  %.0266536 = phi i32 [ 0, %.preheader530.lr.ph ], [ %i.ju, %._crit_edge ] ; 3 uses
  %.0267535 = phi ptr [ %i.jj, %.preheader530.lr.ph ], [ %i.jt, %._crit_edge ] ; 2 uses
  %.not583 = icmp eq i32 %i.jo, 0
  br i1 %.not583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader530
  %i.jp = mul i32 %.0266536, %i.ax
  %i.jq = mul i32 %.0266536, %i.fd
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre609 = load i32, ptr %i.y, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader530
  %i.jr = phi i32 [ %.pre609, %._crit_edge.loopexit ], [ %i.jn, %.preheader530 ] ; 2 uses
  %i.js = phi i32 [ %i.kl, %._crit_edge.loopexit ], [ 0, %.preheader530 ]
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %i.jm
  %i.ju = add nuw i32 %.0266536, 1                ; 2 uses
  %i.jv = icmp ult i32 %i.ju, %i.jr
  br i1 %i.jv, label %.preheader530, label %.preheader533, !llvm.loop !77

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %indvars.iv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !102
  %i.jz = icmp eq ptr %i.jy, null
  %i.ka = zext i1 %i.jz to i8
  %i.kb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.kc = add i32 %i.jp, %i.kb
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.kd
  store i8 %i.ka, ptr %i.ke, align 1, !tbaa !41
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !49
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = add i32 %i.jq, %i.kb
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.kj
  store i8 %i.kh, ptr %i.kk, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kl = load i32, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp samesign ult i64 %indvars.iv.next, %i.km
  br i1 %i.kn, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge545:                                   ; preds = %._crit_edge541.split, %.preheader533
  store i8 0, ptr %i.cl, align 1, !tbaa !41
  store i8 0, ptr %i.eo, align 1, !tbaa !41
  store i8 0, ptr %i.gr, align 1, !tbaa !41
  store i8 0, ptr %i.iv, align 1, !tbaa !41
  %i.ko = zext nneg i32 %spec.select to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !36
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !41
  %.not274 = icmp eq i8 %i.kr, 0
  %i.ks = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.kt = icmp eq ptr %i.ks, null                 ; 2 uses
  br i1 %.not274, label %bb.t, label %bb.p

.lr.ph544:                                        ; preds = %.preheader533, %._crit_edge541.split
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %._crit_edge541.split ], [ 1, %.preheader533 ] ; 7 uses
  %i.ku = load i32, ptr %i.y, align 4, !tbaa !33
  %i.kv = trunc nuw nsw i64 %indvars.iv594 to i32 ; 8 uses
  %notmask = shl nsw i32 -1, %i.kv
  %i.kw = xor i32 %notmask, -1                    ; 2 uses
  %i.kx = add i32 %i.ku, %i.kw
  %i.ky = lshr i32 %i.kx, %i.kv                   ; 2 uses
  %i.kz = load i32, ptr %i.v, align 8, !tbaa !32
  %i.la = add i32 %i.kz, %i.kw
  %i.lb = lshr i32 %i.la, %i.kv                   ; 4 uses
  %.not584 = icmp eq i32 %i.ky, 0
  br i1 %.not584, label %._crit_edge541.split, label %.preheader529.lr.ph

.preheader529.lr.ph:                              ; preds = %.lr.ph544
  %.not585 = icmp eq i32 %i.lb, 0
  %i.lc = add nsw i64 %indvars.iv594, -1          ; 3 uses
  %i.ld = trunc nuw nsw i64 %i.lc to i32          ; 3 uses
  %notmask.i337 = shl nsw i32 -1, %i.ld
end_hunk_0
begin_hunk_1_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef -2, i32 noundef 1), !inline_history !122
  %.not13.i = icmp eq i32 %i.bi, 0
  br i1 %.not13.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.16, ptr %i.bj, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br label %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit: ; preds = %bb.p, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = sext i32 %1 to i64                      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
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
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %indvars.iv557
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !29, !range !30, !noundef !31
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.dm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv557 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 7 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.dm, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.dm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = trunc nuw i8 %.0527 to i1
  br i1 %i.ci, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.v, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i: ; preds = %bb.u
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !63
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4, !tbaa !35
  %i.cm = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !123
  %.not12.i.i = icmp eq i64 %i.cq, 1
  br i1 %.not12.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.cr, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cs = load i32, ptr %i.l, align 4, !tbaa !35  ; 3 uses
  store i32 %i.cs, ptr %i.r, align 8, !tbaa !63
  %i.ct = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i = sub nuw nsw i8 8, %i.ct
  %i.cu = zext nneg i8 %narrow13.i.i to i32
  %i.cv = icmp eq i32 %i.cs, 255
  %i.cw = zext i1 %i.cv to i8
  store i8 %i.cw, ptr %i.s, align 8, !tbaa !64
  %i.cx = load i32, ptr %i.q, align 4, !tbaa !62
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

bb.z:                                             ; preds = %bb.v
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.cz = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i = sub nuw nsw i8 8, %i.cz
  %i.da = zext nneg i8 %narrow.i.i to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit: ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i, %bb.y, %bb.z
  %i.db = phi i32 [ %i.cj, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i ], [ %i.cu, %bb.y ], [ %i.da, %bb.z ]
  %i.dc = phi i32 [ %.pre.i, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i ], [ %i.cs, %bb.y ], [ 0, %bb.z ]
  %i.dd = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.p, align 4, !tbaa !60
  %i.de = shl nuw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.dc
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %bb.dn, label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge: ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit
  %.pre = load i32, ptr %i.cc, align 8, !tbaa !32
  %.pre572 = load i32, ptr %i.cf, align 4, !tbaa !33
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
  %i.do = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %.sroa.0124.0.copyload = load i64, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
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
  %wide.load694 = load <2 x i32>, ptr %i.dq, align 4, !tbaa !35
  %wide.load695 = load <2 x i32>, ptr %i.dr, align 4, !tbaa !35
  %i.ds = zext <2 x i32> %wide.load694 to <2 x i64>
  %i.dt = zext <2 x i32> %wide.load695 to <2 x i64>
  %wide.gep696 = getelementptr inbounds nuw i8, ptr %i.do, <2 x i64> %i.ds
  %wide.gep697 = getelementptr inbounds nuw i8, ptr %i.do, <2 x i64> %i.dt
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index693 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <2 x ptr> %wide.gep696, ptr %i.du, align 8, !tbaa !36
  store <2 x ptr> %wide.gep697, ptr %i.dv, align 8, !tbaa !36
  %index.next698 = add nuw i64 %index693, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next698, %n.vec691
  br i1 %i.dw, label %middle.block699, label %vector.body692, !llvm.loop !124

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
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !35
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.preheader.i, label %scalar.ph688, !llvm.loop !125

.lr.ph29.i:                                       ; preds = %.lr.ph.i, %.preheader.i
  store i64 %.sroa.0124.0.copyload, ptr %8, align 8
  %wide.trip.count40.i = zext nneg i32 %i.dx to i64 ; 14 uses
  %i.ee = trunc i64 %.sroa.0124.0.copyload to i32
  %12 = zext nneg i32 %i.dn to i64                ; 4 uses
  %13 = zext nneg i32 %i.dk to i64                ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %xtraiter = and i64 %wide.trip.count40.i, 3     ; 3 uses
  %i.ef = icmp samesign ult i64 %umax, 3
  br i1 %i.ef, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count40.i, 124
  br label %bb.ab

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %wide.trip.count.i, %.preheader.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv33.i
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.eg, align 8, !tbaa !36
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.eh = and i64 %indvars.iv.next34.i, 4294967295
  %exitcond36.not.i = icmp eq i64 %i.eh, 16
  br i1 %exitcond36.not.i, label %.lr.ph29.i, label %.lr.ph.i, !llvm.loop !0

bb.ab:                                            ; preds = %bb.ab, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next38.i.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.3, %bb.ab ]
  %i.ei = trunc nuw i64 %indvars.iv37.i to i32
  %i.ej = sub nuw i32 %spec.select, %i.ei
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = shl nuw i32 1, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.i
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !36
  %i.eo = zext nneg i32 %i.el to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.en, i8 0, i64 %i.eo, i1 false)
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.ep = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.eq = sub nuw i32 %spec.select, %i.ep
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = shl nuw i32 1, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !36
  %i.ev = zext nneg i32 %i.es to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eu, i8 0, i64 %i.ev, i1 false)
  %indvars.iv.next38.i.1 = or disjoint i64 %indvars.iv37.i, 2 ; 2 uses
  %i.ew = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.ex = sub nuw i32 %spec.select, %i.ew
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = shl nuw i32 1, %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i.1
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !36
  %i.fc = zext nneg i32 %i.ez to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, i8 0, i64 %i.fc, i1 false)
  %indvars.iv.next38.i.2 = or disjoint i64 %indvars.iv37.i, 3 ; 2 uses
  %i.fd = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.fe = sub nuw i32 %spec.select, %i.fd
  %i.ff = shl nuw nsw i32 %i.fe, 1
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i.2
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = zext nneg i32 %i.fg to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, i8 0, i64 %i.fj, i1 false)
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, label %bb.ab, !llvm.loop !1

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
  %i.fk = trunc nuw i64 %indvars.iv37.i.epil to i32
  %i.fl = sub nuw i32 %spec.select, %i.fk
  %i.fm = shl nuw nsw i32 %i.fl, 1
  %i.fn = shl nuw i32 1, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.i.epil
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !36
  %i.fq = zext nneg i32 %i.fn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fp, i8 0, i64 %i.fq, i1 false)
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %bb.ac, !llvm.loop !126

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit: ; preds = %bb.ac, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %wide.trip.count40.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bn, align 8, !tbaa !43
  store i8 0, ptr %i.fs, align 1, !tbaa !41
  %i.ft = load ptr, ptr %0, align 8, !tbaa !34
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.bo ; 3 uses
  %.sroa.0123.0.copyload = load i64, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %min.iters.check675 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check675, label %scalar.ph674.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit
  %n.vec677 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body678

vector.body678:                                   ; preds = %vector.body678, %vector.ph676
  %index679 = phi i64 [ 0, %vector.ph676 ], [ %index.next684, %vector.body678 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index679 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %wide.load680 = load <2 x i32>, ptr %i.fv, align 4, !tbaa !35
  %wide.load681 = load <2 x i32>, ptr %i.fw, align 4, !tbaa !35
  %i.fx = zext <2 x i32> %wide.load680 to <2 x i64>
  %i.fy = zext <2 x i32> %wide.load681 to <2 x i64>
  %wide.gep682 = getelementptr inbounds nuw i8, ptr %i.fu, <2 x i64> %i.fx
  %wide.gep683 = getelementptr inbounds nuw i8, ptr %i.fu, <2 x i64> %i.fy
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index679 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x ptr> %wide.gep682, ptr %i.fz, align 8, !tbaa !36
  store <2 x ptr> %wide.gep683, ptr %i.ga, align 8, !tbaa !36
  %index.next684 = add nuw i64 %index679, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next684, %n.vec677
  br i1 %i.gb, label %middle.block685, label %vector.body678, !llvm.loop !127

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
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i225
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !35
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i225
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !36
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i225, 1 ; 2 uses
  %exitcond.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i
  br i1 %exitcond.i227, label %.preheader.i228, label %scalar.ph674, !llvm.loop !128

.lr.ph29.i230:                                    ; preds = %.lr.ph.i235, %.preheader.i228
  store i64 %.sroa.0123.0.copyload, ptr %9, align 8
  %i.gh = trunc i64 %.sroa.0123.0.copyload to i32
  %umax716 = call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %xtraiter717 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.gi = icmp samesign ult i64 %umax716, 3
  br i1 %i.gi, label %.epil.preheader715, label %.lr.ph29.i230.new

.lr.ph29.i230.new:                                ; preds = %.lr.ph29.i230
  %unroll_iter721 = and i64 %wide.trip.count40.i, 124
  br label %bb.ad

.lr.ph.i235:                                      ; preds = %.preheader.i228, %.lr.ph.i235
  %indvars.iv33.i236 = phi i64 [ %indvars.iv.next34.i237, %.lr.ph.i235 ], [ %wide.trip.count.i, %.preheader.i228 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv33.i236
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.gj, align 8, !tbaa !36
  %indvars.iv.next34.i237 = add nuw nsw i64 %indvars.iv33.i236, 1 ; 2 uses
  %i.gk = and i64 %indvars.iv.next34.i237, 4294967295
  %exitcond36.not.i238 = icmp eq i64 %i.gk, 16
  br i1 %exitcond36.not.i238, label %.lr.ph29.i230, label %.lr.ph.i235, !llvm.loop !0

bb.ad:                                            ; preds = %bb.ad, %.lr.ph29.i230.new
  %indvars.iv37.i232 = phi i64 [ 0, %.lr.ph29.i230.new ], [ %indvars.iv.next38.i233.3, %bb.ad ] ; 6 uses
  %niter722 = phi i64 [ 0, %.lr.ph29.i230.new ], [ %niter722.next.3, %bb.ad ]
  %i.gl = trunc nuw i64 %indvars.iv37.i232 to i32
  %i.gm = sub nuw i32 %spec.select, %i.gl
  %i.gn = shl nuw nsw i32 %i.gm, 1
  %i.go = shl nuw i32 1, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv37.i232
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36
  %i.gr = zext nneg i32 %i.go to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i8 0, i64 %i.gr, i1 false)
  %indvars.iv.next38.i233 = or disjoint i64 %indvars.iv37.i232, 1 ; 2 uses
  %i.gs = trunc nuw i64 %indvars.iv.next38.i233 to i32
  %i.gt = sub nuw i32 %spec.select, %i.gs
  %i.gu = shl nuw nsw i32 %i.gt, 1
  %i.gv = shl nuw i32 1, %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !36
  %i.gy = zext nneg i32 %i.gv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gx, i8 0, i64 %i.gy, i1 false)
  %indvars.iv.next38.i233.1 = or disjoint i64 %indvars.iv37.i232, 2 ; 2 uses
  %i.gz = trunc nuw i64 %indvars.iv.next38.i233.1 to i32
  %i.ha = sub nuw i32 %spec.select, %i.gz
  %i.hb = shl nuw nsw i32 %i.ha, 1
  %i.hc = shl nuw i32 1, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233.1
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hf = zext nneg i32 %i.hc to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.he, i8 0, i64 %i.hf, i1 false)
  %indvars.iv.next38.i233.2 = or disjoint i64 %indvars.iv37.i232, 3 ; 2 uses
  %i.hg = trunc nuw i64 %indvars.iv.next38.i233.2 to i32
  %i.hh = sub nuw i32 %spec.select, %i.hg
  %i.hi = shl nuw nsw i32 %i.hh, 1
  %i.hj = shl nuw i32 1, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233.2
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !36
  %i.hm = zext nneg i32 %i.hj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hl, i8 0, i64 %i.hm, i1 false)
  %indvars.iv.next38.i233.3 = add nuw nsw i64 %indvars.iv37.i232, 4 ; 2 uses
  %niter722.next.3 = add i64 %niter722, 4         ; 2 uses
  %niter722.ncmp.3 = icmp eq i64 %niter722.next.3, %unroll_iter721
  br i1 %niter722.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa, label %bb.ad, !llvm.loop !1

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
  %i.hn = trunc nuw i64 %indvars.iv37.i232.epil to i32
  %i.ho = sub nuw i32 %spec.select, %i.hn
  %i.hp = shl nuw nsw i32 %i.ho, 1
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv37.i232.epil
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !36
  %i.ht = zext nneg i32 %i.hq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hs, i8 0, i64 %i.ht, i1 false)
  %indvars.iv.next38.i233.epil = add nuw nsw i64 %indvars.iv37.i232.epil, 1
  %epil.iter718.next = add i64 %epil.iter718, 1   ; 2 uses
  %epil.iter718.cmp.not = icmp eq i64 %epil.iter718.next, %xtraiter717
  br i1 %epil.iter718.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, label %bb.ae, !llvm.loop !129

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240: ; preds = %bb.ae, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %wide.trip.count40.i
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bq, align 8, !tbaa !43
  store i8 0, ptr %i.hv, align 1, !tbaa !41
  %i.hw = load ptr, ptr %0, align 8, !tbaa !34
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.bs ; 3 uses
  %.sroa.0122.0.copyload = load i64, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %min.iters.check661 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check661, label %scalar.ph660.preheader, label %vector.ph662

vector.ph662:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240
  %n.vec663 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next670, %vector.body664 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index665 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %wide.load666 = load <2 x i32>, ptr %i.hy, align 4, !tbaa !35
  %wide.load667 = load <2 x i32>, ptr %i.hz, align 4, !tbaa !35
  %i.ia = zext <2 x i32> %wide.load666 to <2 x i64>
  %i.ib = zext <2 x i32> %wide.load667 to <2 x i64>
  %wide.gep668 = getelementptr inbounds nuw i8, ptr %i.hx, <2 x i64> %i.ia
  %wide.gep669 = getelementptr inbounds nuw i8, ptr %i.hx, <2 x i64> %i.ib
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index665 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x ptr> %wide.gep668, ptr %i.ic, align 8, !tbaa !36
  store <2 x ptr> %wide.gep669, ptr %i.id, align 8, !tbaa !36
  %index.next670 = add nuw i64 %index665, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.ie, label %middle.block671, label %vector.body664, !llvm.loop !130

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
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i243
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !35
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ih
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i243
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !36
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %exitcond.i245 = icmp eq i64 %indvars.iv.next.i244, %wide.trip.count.i
  br i1 %exitcond.i245, label %.preheader.i246, label %scalar.ph660, !llvm.loop !131

.lr.ph29.i248:                                    ; preds = %.lr.ph.i253, %.preheader.i246
  store i64 %.sroa.0122.0.copyload, ptr %10, align 8
  %i.ik = trunc i64 %.sroa.0122.0.copyload to i32 ; 2 uses
  %umax724 = call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %xtraiter725 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.il = icmp samesign ult i64 %umax724, 3
  br i1 %i.il, label %.epil.preheader723, label %.lr.ph29.i248.new

.lr.ph29.i248.new:                                ; preds = %.lr.ph29.i248
  %unroll_iter729 = and i64 %wide.trip.count40.i, 124
  br label %bb.af

.lr.ph.i253:                                      ; preds = %.preheader.i246, %.lr.ph.i253
  %indvars.iv33.i254 = phi i64 [ %indvars.iv.next34.i255, %.lr.ph.i253 ], [ %wide.trip.count.i, %.preheader.i246 ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv33.i254
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.im, align 8, !tbaa !36
  %indvars.iv.next34.i255 = add nuw nsw i64 %indvars.iv33.i254, 1 ; 2 uses
  %i.in = and i64 %indvars.iv.next34.i255, 4294967295
  %exitcond36.not.i256 = icmp eq i64 %i.in, 16
  br i1 %exitcond36.not.i256, label %.lr.ph29.i248, label %.lr.ph.i253, !llvm.loop !0

bb.af:                                            ; preds = %bb.af, %.lr.ph29.i248.new
  %indvars.iv37.i250 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %indvars.iv.next38.i251.3, %bb.af ] ; 6 uses
  %niter730 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %niter730.next.3, %bb.af ]
  %i.io = trunc nuw i64 %indvars.iv37.i250 to i32
  %i.ip = sub nuw i32 %spec.select, %i.io
  %i.iq = shl nuw nsw i32 %i.ip, 1
  %i.ir = shl nuw i32 1, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !36
  %i.iu = zext nneg i32 %i.ir to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.it, i8 0, i64 %i.iu, i1 false)
  %indvars.iv.next38.i251 = or disjoint i64 %indvars.iv37.i250, 1 ; 2 uses
  %i.iv = trunc nuw i64 %indvars.iv.next38.i251 to i32
  %i.iw = sub nuw i32 %spec.select, %i.iv
  %i.ix = shl nuw nsw i32 %i.iw, 1
  %i.iy = shl nuw i32 1, %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !36
  %i.jb = zext nneg i32 %i.iy to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ja, i8 0, i64 %i.jb, i1 false)
  %indvars.iv.next38.i251.1 = or disjoint i64 %indvars.iv37.i250, 2 ; 2 uses
  %i.jc = trunc nuw i64 %indvars.iv.next38.i251.1 to i32
  %i.jd = sub nuw i32 %spec.select, %i.jc
  %i.je = shl nuw nsw i32 %i.jd, 1
  %i.jf = shl nuw i32 1, %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.1
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !36
  %i.ji = zext nneg i32 %i.jf to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jh, i8 0, i64 %i.ji, i1 false)
  %indvars.iv.next38.i251.2 = or disjoint i64 %indvars.iv37.i250, 3 ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv.next38.i251.2 to i32
  %i.jk = sub nuw i32 %spec.select, %i.jj
  %i.jl = shl nuw nsw i32 %i.jk, 1
  %i.jm = shl nuw i32 1, %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.2
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !36
  %i.jp = zext nneg i32 %i.jm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jo, i8 0, i64 %i.jp, i1 false)
  %indvars.iv.next38.i251.3 = add nuw nsw i64 %indvars.iv37.i250, 4 ; 2 uses
  %niter730.next.3 = add i64 %niter730, 4         ; 2 uses
  %niter730.ncmp.3 = icmp eq i64 %niter730.next.3, %unroll_iter729
  br i1 %niter730.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, label %bb.af, !llvm.loop !1

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
  %i.jq = trunc nuw i64 %indvars.iv37.i250.epil to i32
  %i.jr = sub nuw i32 %spec.select, %i.jq
  %i.js = shl nuw nsw i32 %i.jr, 1
  %i.jt = shl nuw i32 1, %i.js
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250.epil
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !36
  %i.jw = zext nneg i32 %i.jt to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jv, i8 0, i64 %i.jw, i1 false)
  %indvars.iv.next38.i251.epil = add nuw nsw i64 %indvars.iv37.i250.epil, 1
  %epil.iter726.next = add i64 %epil.iter726, 1   ; 2 uses
  %epil.iter726.cmp.not = icmp eq i64 %epil.iter726.next, %xtraiter725
  br i1 %epil.iter726.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %bb.ag, !llvm.loop !132

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258: ; preds = %bb.ag, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %wide.trip.count40.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bu, align 8, !tbaa !43
  store i8 0, ptr %i.jy, align 1, !tbaa !41
  %i.jz = load ptr, ptr %0, align 8, !tbaa !34
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.bs
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.bo ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %wide.load = load <2 x i32>, ptr %i.kc, align 4, !tbaa !35
  %wide.load658 = load <2 x i32>, ptr %i.kd, align 4, !tbaa !35
  %i.ke = zext <2 x i32> %wide.load to <2 x i64>
  %i.kf = zext <2 x i32> %wide.load658 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.kb, <2 x i64> %i.ke
  %wide.gep659 = getelementptr inbounds nuw i8, ptr %i.kb, <2 x i64> %i.kf
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <2 x ptr> %wide.gep, ptr %i.kg, align 8, !tbaa !36
  store <2 x ptr> %wide.gep659, ptr %i.kh, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !133

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
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i261
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !35
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kl
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i261
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !36
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.i263 = icmp eq i64 %indvars.iv.next.i262, %wide.trip.count.i
  br i1 %exitcond.i263, label %.preheader.i264, label %scalar.ph, !llvm.loop !134

.lr.ph29.i266:                                    ; preds = %.lr.ph.i271, %.preheader.i264
  store i64 %.sroa.0.0.copyload, ptr %11, align 8
  %i.ko = trunc i64 %.sroa.0.0.copyload to i32
  %umax732 = call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %xtraiter733 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.kp = icmp samesign ult i64 %umax732, 3
  br i1 %i.kp, label %.epil.preheader731, label %.lr.ph29.i266.new

.lr.ph29.i266.new:                                ; preds = %.lr.ph29.i266
  %unroll_iter737 = and i64 %wide.trip.count40.i, 124
  br label %bb.ah

.lr.ph.i271:                                      ; preds = %.preheader.i264, %.lr.ph.i271
  %indvars.iv33.i272 = phi i64 [ %indvars.iv.next34.i273, %.lr.ph.i271 ], [ %wide.trip.count.i, %.preheader.i264 ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv33.i272
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.kq, align 8, !tbaa !36
  %indvars.iv.next34.i273 = add nuw nsw i64 %indvars.iv33.i272, 1 ; 2 uses
  %i.kr = and i64 %indvars.iv.next34.i273, 4294967295
  %exitcond36.not.i274 = icmp eq i64 %i.kr, 16
  br i1 %exitcond36.not.i274, label %.lr.ph29.i266, label %.lr.ph.i271, !llvm.loop !0

bb.ah:                                            ; preds = %bb.ah, %.lr.ph29.i266.new
  %indvars.iv37.i268 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %indvars.iv.next38.i269.3, %bb.ah ] ; 6 uses
  %niter738 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %niter738.next.3, %bb.ah ]
  %i.ks = trunc nuw i64 %indvars.iv37.i268 to i32
  %i.kt = sub nuw i32 %spec.select, %i.ks
  %i.ku = shl nuw nsw i32 %i.kt, 1
  %i.kv = shl nuw i32 1, %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !36
  %i.ky = zext nneg i32 %i.kv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kx, i8 0, i64 %i.ky, i1 false)
  %indvars.iv.next38.i269 = or disjoint i64 %indvars.iv37.i268, 1 ; 2 uses
  %i.kz = trunc nuw i64 %indvars.iv.next38.i269 to i32
  %i.la = sub nuw i32 %spec.select, %i.kz
  %i.lb = shl nuw nsw i32 %i.la, 1
  %i.lc = shl nuw i32 1, %i.lb
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !36
  %i.lf = zext nneg i32 %i.lc to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.le, i8 0, i64 %i.lf, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.lg = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.lh = sub nuw i32 %spec.select, %i.lg
  %i.li = shl nuw nsw i32 %i.lh, 1
  %i.lj = shl nuw i32 1, %i.li
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !36
  %i.lm = zext nneg i32 %i.lj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ll, i8 0, i64 %i.lm, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.ln = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.lo = sub nuw i32 %spec.select, %i.ln
  %i.lp = shl nuw nsw i32 %i.lo, 1
  %i.lq = shl nuw i32 1, %i.lp
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !36
  %i.lt = zext nneg i32 %i.lq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, i8 0, i64 %i.lt, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter738.next.3 = add i64 %niter738, 4         ; 2 uses
  %niter738.ncmp.3 = icmp eq i64 %niter738.next.3, %unroll_iter737
  br i1 %niter738.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !1

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
  %i.lu = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lv = sub nuw i32 %spec.select, %i.lu
  %i.lw = shl nuw nsw i32 %i.lv, 1
  %i.lx = shl nuw i32 1, %i.lw
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !36
  %i.ma = zext nneg i32 %i.lx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lz, i8 0, i64 %i.ma, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter734.next = add i64 %epil.iter734, 1   ; 2 uses
  %epil.iter734.cmp.not = icmp eq i64 %epil.iter734.next, %xtraiter733
  br i1 %epil.iter734.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !135

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !43
  store i8 0, ptr %i.mc, align 1, !tbaa !41
  %i.md = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.me = getelementptr inbounds nuw [120 x i8], ptr %i.md, i64 %indvars.iv557
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !44
  %i.mh = load i32, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.mi = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %.not541 = icmp eq i32 %i.mi, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.mj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not542 = icmp eq i32 %i.mh, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mv, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.mk = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.ml = getelementptr inbounds nuw [120 x i8], ptr %i.mk, i64 %indvars.iv557
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 104
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !45
  %i.mo = load i32, ptr %i.cb, align 8, !tbaa !47
  %i.mp = load i32, ptr %i.mj, align 4, !tbaa !46
  %i.mq = add i32 %i.mp, %.0210524
  %i.mr = mul i32 %i.mq, %i.mg
  %i.ms = add i32 %i.mr, %i.mo
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.mn, i64 %i.mt
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aar, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mu, %.preheader480.lr.ph ], [ %i.aas, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mv = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mv, %i.mi
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !136

bb.aj:                                            ; preds = %.preheader480, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480 ], [ %indvars.iv.next, %.thread443 ] ; 2 uses
  %i.mw = trunc nuw i64 %indvars.iv to i32
  %i.mx = add nsw i32 %i.mw, -1                   ; 7 uses
  %i.my = lshr i32 %.0208522, %i.mx               ; 2 uses
  %i.mz = lshr i32 %.0210524, %i.mx               ; 2 uses
  %i.na = zext i32 %i.mx to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !36
  %notmask.i278 = shl nsw i32 -1, %i.mx
  %i.nd = xor i32 %notmask.i278, -1               ; 2 uses
  %i.ne = add i32 %i.ee, %i.nd
  %i.nf = lshr i32 %i.ne, %i.mx
  %i.ng = mul i32 %i.nf, %i.mz
  %i.nh = add i32 %i.ng, %i.my
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ni ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !41
  %i.nl = icmp eq i8 %i.nk, 1
  br i1 %i.nl, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.na
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !36
  %i.no = add i32 %i.gh, %i.nd
  %i.np = lshr i32 %i.no, %i.mx
  %i.nq = mul i32 %i.np, %i.mz
  %i.nr = add i32 %i.nq, %i.my
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.ns ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !41
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.nw = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ny = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i284 = icmp eq i32 %i.ny, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.nz = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !57
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call noundef i64 %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !123
  %.not12.i.i285 = icmp eq i64 %i.od, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oe = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.oe, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.oe, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

end_hunk_1
begin_hunk_2_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a

bb.ey:                                            ; preds = %bb.ex
  %i.akq = load ptr, ptr %i.akb, align 8, !tbaa !12
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !51
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.aku = and i64 %i.akn, 4294967295
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.aku
  %i.akw = sub nuw i32 %i.ajz, %i.ako
  %i.akx = zext i32 %i.akw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.akv, i8 0, i64 %i.akx, i1 false)
  br label %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit

_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit: ; preds = %bb.ex, %bb.ey
  %i.aky = load i32, ptr %i.q, align 4, !tbaa !62
  %i.akz = sub i32 %i.aky, %i.ako
  store i32 %i.akz, ptr %i.q, align 4, !tbaa !62
  %i.ala = icmp eq i32 %..i, %i.ako
  br i1 %i.ala, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit
  store i32 0, ptr %i.ajx, align 4, !tbaa !35
  store i32 0, ptr %.0194528, align 8, !tbaa !35
  store i32 0, ptr %4, align 4, !tbaa !35
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ev
  store i32 0, ptr %i.ajx, align 4, !tbaa !35
  store i32 0, ptr %.0194528, align 8, !tbaa !35
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ew, %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit, %bb.ez, %bb.fa
  %i.alb = add nuw i32 %.0193529, 1               ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.0194528, i64 32
  %exitcond560.not = icmp eq i32 %i.alb, %i.ajg
  br i1 %exitcond560.not, label %._crit_edge532.split, label %bb.ev, !llvm.loop !145

.loopexit:                                        ; preds = %._crit_edge532.split, %bb.eu, %.lr.ph535, %.split
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 4
  br i1 %exitcond565.not, label %.split540.us, label %.split, !llvm.loop !148

.split540.us:                                     ; preds = %.loopexit, %._crit_edge532.split.us.us.us.3, %.lr.ph535.us.3, %bb.eo, %.loopexit.us.2, %bb.dn
  %i.ald = load i32, ptr %i.q, align 4, !tbaa !62
  store i32 %i.ald, ptr %4, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4ojph5localL12bb_terminateEPNS0_12bit_read_bufEb(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !64, !range !30, !noundef !31
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62
  %.not.i.not = icmp eq i32 %i.g, 0
  br i1 %.not.i.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !35
  %i.h = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !154
  %.not12.i = icmp eq i64 %i.l, 1
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.m, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !63
  %i.p = load i8, ptr %i.c, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i = sub nuw nsw i8 8, %i.p
  %i.q = zext nneg i8 %narrow13.i to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !60
  %i.s = icmp eq i32 %i.n, 255
  %i.t = zext i1 %i.s to i8
  store i8 %i.t, ptr %i.c, align 8, !tbaa !64
  %i.u = load i32, ptr %i.f, align 4, !tbaa !62
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.f, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 7, ptr %i.x, align 4, !tbaa !60
  store i8 0, ptr %i.c, align 8, !tbaa !64
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit: ; preds = %bb.f, %bb.e, %bb.a
  br i1 %1, label %bb.g, label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

bb.g:                                             ; preds = %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ab = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !155
  %.not.i6 = icmp eq i64 %i.af, 2
  br i1 %.not.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.ag, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !62
  %i.ai = add i32 %i.ah, -2
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !62
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !41
  %i.ak = icmp ne i8 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp ne i8 %i.am, -110
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.18, ptr %i.ao, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit: ; preds = %bb.l, %bb.g, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !60
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umin.v8i8(<8 x i8>, <8 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4ojph11coded_listsE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"_ZTSN4ojph5pointE", !7, i64 0, !7, i64 4}
!15 = !{!"p1 _ZTSN4ojph5local7subbandE", !10, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN4ojph5local8precinctE", !13, i64 0, !14, i64 8, !6, i64 16, !15, i64 80, !11, i64 88, !16, i64 96, !16, i64 97}
!18 = !{!17, !11, i64 88}
!19 = !{!17, !15, i64 80}
!20 = !{!"_ZTSN4ojph4sizeE", !7, i64 0, !7, i64 4}
!21 = !{!"_ZTSN4ojph4rectE", !14, i64 0, !20, i64 8}
!22 = !{!"p1 _ZTSN4ojph8line_bufE", !10, i64 0}
!23 = !{!"p1 _ZTSN4ojph5local10resolutionE", !10, i64 0}
!24 = !{!"p1 _ZTSN4ojph5local9codeblockE", !10, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!"p1 _ZTSN4ojph5local15coded_cb_headerE", !10, i64 0}
!27 = !{!"p1 _ZTSN4ojph21mem_elastic_allocatorE", !10, i64 0}
!28 = !{!"_ZTSN4ojph5local7subbandE", !16, i64 0, !7, i64 4, !7, i64 8, !16, i64 12, !21, i64 16, !22, i64 32, !23, i64 40, !24, i64 48, !20, i64 56, !20, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !25, i64 92, !25, i64 96, !7, i64 100, !26, i64 104, !27, i64 112}
!29 = !{!28, !16, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!21, !7, i64 8}
!33 = !{!21, !7, i64 12}
!34 = !{!17, !13, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!13, !13, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!6, !6, i64 0}
!42 = !{!"_ZTSN4ojph5local8tag_treeE", !7, i64 0, !7, i64 4, !7, i64 8, !6, i64 16}
!43 = !{!42, !7, i64 8}
!44 = !{!28, !7, i64 56}
!45 = !{!28, !26, i64 104}
!46 = !{!21, !7, i64 4}
!47 = !{!21, !7, i64 0}
!48 = !{!"_ZTSN4ojph5local15coded_cb_headerE", !6, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24}
!49 = !{!48, !7, i64 16}
!50 = !{!"_ZTSN4ojph11coded_listsE", !11, i64 0, !7, i64 8, !7, i64 12, !13, i64 16}
!51 = !{!50, !13, i64 16}
!52 = !{!50, !7, i64 8}
!53 = !{!50, !7, i64 12}
!54 = !{!50, !11, i64 0}
!55 = !{!48, !7, i64 8}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTSN4ojph11infile_baseE", !10, i64 0}
!59 = !{!"_ZTSN4ojph5local12bit_read_bufE", !58, i64 0, !7, i64 8, !7, i64 12, !16, i64 16, !7, i64 20}
!60 = !{!59, !7, i64 12}
!61 = !{!59, !58, i64 0}
!62 = !{!59, !7, i64 20}
!63 = !{!59, !7, i64 8}
!64 = !{!59, !16, i64 16}
!65 = distinct !{!65, !37, !38, !39}
!66 = distinct !{!66, !37, !39, !38}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !37, !38, !39}
!69 = distinct !{!69, !37, !39, !38}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !37, !38, !39}
!72 = distinct !{!72, !37, !39, !38}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !37, !38, !39}
!75 = distinct !{!75, !37, !39, !38}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !37}
!78 = distinct !{!78, !37}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !79}
!83 = distinct !{!83, !79}
!84 = distinct !{!84, !79}
!85 = distinct !{!85, !79}
!86 = distinct !{!86, !79}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !79}
!89 = distinct !{!89, !79}
!90 = distinct !{!90, !37, !38, !39}
!91 = distinct !{!91, !37, !38, !39}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !37, !38}
!95 = distinct !{!95, !37}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = distinct !{!98, !37}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37}
!101 = distinct !{!101, !37}
!102 = !{!48, !11, i64 24}
!103 = !{!80}
!104 = !{!81}
!105 = !{!82}
!106 = !{!83}
!107 = !{!89, !88, !87, !82, !81, !80, !86, !85, !84}
!108 = !{!89}
!109 = !{!88, !87, !82, !81, !80, !86, !85, !84}
!110 = !{!84}
!111 = !{!85}
!112 = !{!86}
!113 = !{!88}
!114 = !{!87, !82, !81, !80, !86, !85, !84}
!115 = !{!87}
!116 = !{!82, !81, !80, !86, !85, !84}
!117 = !{!"branch_weights", i32 8, i32 8}
!118 = distinct !{!118, !37}
!119 = distinct !{!119, !37}
!120 = distinct !{!120, !37}
!121 = distinct !{!121, !37}
!122 = distinct !{null}
!123 = distinct !{null, null}
!124 = distinct !{!124, !37, !38, !39}
!125 = distinct !{!125, !37, !39, !38}
!126 = distinct !{!126, !40}
!127 = distinct !{!127, !37, !38, !39}
!128 = distinct !{!128, !37, !39, !38}
!129 = distinct !{!129, !40}
!130 = distinct !{!130, !37, !38, !39}
!131 = distinct !{!131, !37, !39, !38}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !37, !38, !39}
!134 = distinct !{!134, !37, !39, !38}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, !37}
!137 = distinct !{!137, !37}
!138 = distinct !{!138, !37}
!139 = distinct !{!139, !37}
!140 = distinct !{null, null}
!141 = distinct !{!141, !37}
!142 = distinct !{!142, !37}
!143 = distinct !{!143, !37}
!144 = distinct !{!144, !37}
!145 = distinct !{!145, !37}
!146 = distinct !{!146, !37}
!147 = distinct !{null}
!148 = distinct !{!148, !37}
!149 = !{!17, !16, i64 96}
!150 = !{!"short", !6, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!48, !7, i64 12}
!153 = !{!17, !16, i64 97}
!154 = distinct !{null}
!155 = distinct !{null}
end_hunk_2
