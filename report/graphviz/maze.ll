Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/maze?download=true
inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pointf_s = type { double, double }
%struct.anon = type { %union.anon.0, ptr, ptr }
%union.anon.0 = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.boxf = type { %struct.pointf_s, %struct.pointf_s }

@.str = private unnamed_addr constant [316 x i8] c"%!PS-Adobe-2.0\0A/node {\0A  /Y exch def\0A  /X exch def\0A  /y exch def\0A  /x exch def\0A  newpath\0A  x y moveto\0A  x Y lineto\0A  X Y lineto\0A  X y lineto\0A  closepath fill\0A} def\0A/cell {\0A  /Y exch def\0A  /X exch def\0A  /y exch def\0A  /x exch def\0A  newpath\0A  x y moveto\0A  x Y lineto\0A  X Y lineto\0A  X y lineto\0A  closepath stroke\0A} def\0A\00", align 1
@pre = local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"showpage\0A\00", align 1
@post = local_unnamed_addr global ptr @.str.1, align 8
@odb_flags = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"%%%%Page: 1 1\0A%%%%PageBoundingBox: %.0f %.0f %.0f %.0f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%f %f translate\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"0 0 1 setrgbcolor\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%f %f %f %f node\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"0 0 0 setrgbcolor\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%f %f %f %f cell\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"1 0 0 setrgbcolor\0A\00", align 1
@Dtoset = external local_unnamed_addr global ptr, align 8
@vdictDisc = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr } { i32 8, i32 16, i32 24, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @vcmpid }, align 8
@hdictDisc = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr } { i32 8, i32 16, i32 24, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @hcmpid }, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"failed at node %d[0]\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"failed at node %d[1]\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @updateWts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.h = load i8, ptr %i.g, align 4, !tbaa !18, !range !19, !noundef !20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.n = load i8, ptr %i.m, align 4, !tbaa !18, !range !19, !noundef !20
  %.not.not = icmp eq i8 %i.h, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !21
  %i.r = load <2 x double>, ptr %i.o, align 8, !tbaa !21
  %i.s = fsub <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.s, splat (double -3.000000e+00) ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 1
  %i.v = fmul double %i.u, 5.000000e-01           ; 3 uses
  %i.w = extractelement <2 x double> %i.t, i64 0
  %i.x = fmul double %i.w, 5.000000e-01           ; 3 uses
  %i.y = tail call nsz double @llvm.minnum.f64(double %i.v, double %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %updateWt.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %updateWt.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !47
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !18, !range !19, !noundef !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !48
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !18, !range !19, !noundef !20
  %.not33 = icmp eq i8 %i.ak, %i.aq
  br i1 %.not33, label %._crit_edge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !49
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !49
  %i.au = sitofp i32 %i.at to double
  %i.av = fcmp olt double %i.y, %i.au
  br i1 %i.av, label %bb.c, label %updateWt.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.ar, align 8, !tbaa !49
  %i.aw = load double, ptr %i.ae, align 8, !tbaa !50
  %i.ax = fadd double %i.aw, 1.638400e+04
  store double %i.ax, ptr %i.ae, align 8, !tbaa !50
  br label %updateWt.exit

updateWt.exit:                                    ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge43, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %3, %._crit_edge.loopexit ] ; 2 uses
  %4 = icmp slt i32 %.0.lcssa, %i.ab
  br i1 %4, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %._crit_edge
  %5 = zext i32 %.0.lcssa to i64                  ; 2 uses
  br i1 %.not.not, label %.lr.ph42.split, label %.lr.ph42.split.us

.lr.ph42.split.us:                                ; preds = %.lr.ph42, %updateWt.exit34.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %updateWt.exit34.us ], [ %5, %.lr.ph42 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv46
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !18, !range !19, !noundef !20
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bg, double %i.v, double %i.x
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !49
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !49
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fcmp olt double %i.bh, %i.bl
  br i1 %i.bm, label %bb.d, label %updateWt.exit34.us

bb.d:                                             ; preds = %.lr.ph42.split.us
  store i32 0, ptr %i.bi, align 8, !tbaa !49
  %i.bn = load double, ptr %i.az, align 8, !tbaa !50
  %i.bo = fadd double %i.bn, 1.638400e+04
  store double %i.bo, ptr %i.az, align 8, !tbaa !50
  br label %updateWt.exit34.us

updateWt.exit34.us:                               ; preds = %bb.d, %.lr.ph42.split.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.bp = trunc nuw i64 %indvars.iv.next47 to i32
  %i.bq = icmp sgt i32 %i.ab, %i.bp
  br i1 %i.bq, label %.lr.ph42.split.us, label %._crit_edge43, !llvm.loop !45

.lr.ph42.split:                                   ; preds = %.lr.ph42, %updateWt.exit34
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %updateWt.exit34 ], [ %5, %.lr.ph42 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv49
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, %2
  br i1 %i.bt, label %bb.e, label %updateWt.exit34

bb.e:                                             ; preds = %.lr.ph42.split
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 60
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !18, !range !19, !noundef !20
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = select i1 %i.ca, double %i.v, double %i.x
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !49
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !49
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fcmp olt double %i.cb, %i.cf
  br i1 %i.cg, label %bb.f, label %updateWt.exit34

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.cc, align 8, !tbaa !49
  %i.ch = load double, ptr %i.bs, align 8, !tbaa !50
  %i.ci = fadd double %i.ch, 1.638400e+04
  store double %i.ci, ptr %i.bs, align 8, !tbaa !50
  br label %updateWt.exit34

updateWt.exit34:                                  ; preds = %bb.f, %bb.e, %.lr.ph42.split
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.cj = trunc nuw i64 %indvars.iv.next50 to i32
  %i.ck = icmp sgt i32 %i.ab, %i.cj
  br i1 %i.ck, label %.lr.ph42.split, label %._crit_edge43, !llvm.loop !45

._crit_edge43:                                    ; preds = %updateWt.exit, %updateWt.exit34.us, %updateWt.exit34, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define nonnull ptr @mkMaze(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.pointf_s, align 8           ; 6 uses
  %2 = alloca %struct.pointf_s, align 8           ; 6 uses
  %3 = alloca %struct.pointf_s, align 8           ; 6 uses
  %4 = alloca %struct.pointf_s, align 8           ; 6 uses
  %5 = alloca %struct.pointf_s, align 16          ; 9 uses
  %6 = alloca %struct.anon, align 8               ; 13 uses
  %7 = alloca %struct.boxf, align 16              ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #15 ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.3, i64 noundef 56) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.f = tail call i32 @agnnodes(ptr noundef %0) #18 ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !36
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %gv_alloc.exit
  %i.i = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 104) #15
  br label %gv_calloc.exit

bb.c:                                             ; preds = %gv_alloc.exit
  %mul.ov.i = icmp slt i32 %i.f, 0
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.2, i64 noundef %i.g, i64 noundef 104) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 104) #15 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.o = mul nuw nsw i64 %i.g, 104
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.3, i64 noundef %i.o) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.e
  %i.q = phi ptr [ %i.i, %.thread.i ], [ %i.l, %bb.e ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.s = tail call ptr @agfstnode(ptr noundef %0) #18 ; 2 uses
  %.not53 = icmp eq ptr %i.s, null
  br i1 %.not53, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %gv_calloc.exit, %.lr.ph
  %.04055 = phi ptr [ %i.as, %.lr.ph ], [ %i.q, %gv_calloc.exit ] ; 6 uses
  %.04154 = phi ptr [ %i.at, %.lr.ph ], [ %i.s, %gv_calloc.exit ] ; 2 uses
  %i.t = phi <2 x double> [ %i.am, %.lr.ph ], [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit ]
  %i.u = phi <2 x double> [ %i.an, %.lr.ph ], [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.04154, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load double, ptr %i.x, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.aa = load double, ptr %i.z, align 8, !tbaa !85
  %i.ab = fadd nsz double %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.af = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ad, i64 1
  %i.ah = fmul nsz <2 x double> %i.ag, splat (double 5.000000e-01)
  %i.ai = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ah, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.aj = load <2 x double>, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ak = fsub <2 x double> %i.aj, %i.ai          ; 2 uses
  %i.al = fadd <2 x double> %i.aj, %i.ai          ; 2 uses
  %i.am = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.t, <2 x double> %i.ak) ; 2 uses
  %i.an = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.u, <2 x double> %i.al) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04055, i64 72
  store <2 x double> %i.ak, ptr %i.ao, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.04055, i64 88
  store <2 x double> %i.al, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !21
  %i.ap = load i32, ptr %.04055, align 8, !tbaa !87
  %i.aq = or i32 %i.ap, 1
  store i32 %i.aq, ptr %.04055, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store ptr %.04055, ptr %i.ar, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %.04055, i64 104
  %i.at = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.04154) #18 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph
  %i.au = fadd <2 x double> %i.am, splat (double -3.600000e+01)
  %i.av = fadd <2 x double> %i.an, splat (double 3.600000e+01)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %gv_calloc.exit
  %i.aw = phi <2 x double> [ %i.au, %._crit_edge ], [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit ] ; 3 uses
  %i.ax = phi <2 x double> [ %i.av, %._crit_edge ], [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit ] ; 3 uses
  store <2 x double> %i.aw, ptr %7, align 16, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x double> %i.ax, ptr %i.ay, align 16, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.az = call ptr @partition(ptr noundef %i.q, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.boxf) align 8 %7) #18 ; 5 uses
  %i.ba = load i32, ptr @odb_flags, align 4, !tbaa !89
  %i.bb = and i32 %i.ba, 1
  %.not42 = icmp eq i32 %i.bb, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !90
  call fastcc void @psdump(ptr noundef %i.q, i64 noundef %i.g, ptr noundef nonnull byval(%struct.boxf) align 8 %7, ptr noundef %i.az, i64 noundef %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !90  ; 18 uses
  %.not.i43 = icmp eq i64 %i.bd, 0                ; 3 uses
  br i1 %.not.i43, label %gv_calloc.exit47.thread, label %bb.j

gv_calloc.exit47.thread:                          ; preds = %bb.i
  %i.be = call noalias ptr @calloc(i64 noundef 0, i64 noundef 104) #15 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !39
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !91
  br label %._crit_edge64

bb.j:                                             ; preds = %bb.i
  %mul.ov.i45 = icmp ugt i64 %i.bd, 177372539170284150
  br i1 %mul.ov.i45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.2, i64 noundef %i.bd, i64 noundef 104) #16 ; 0 uses
  call fastcc void @graphviz_exit() #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bi = call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 104) #15 ; 7 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.m, label %.lr.ph63.preheader

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.bl = mul nuw i64 %i.bd, 104
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.3, i64 noundef %i.bl) #16 ; 0 uses
  call fastcc void @graphviz_exit() #17
  unreachable

.lr.ph63.preheader:                               ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bi, ptr %i.bn, align 8, !tbaa !39
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !91
  %xtraiter = and i64 %i.bd, 1
  %i.bo = icmp eq i64 %i.bd, 1
  br i1 %i.bo, label %.lr.ph63.epil.preheader, label %.lr.ph63.preheader.new

.lr.ph63.preheader.new:                           ; preds = %.lr.ph63.preheader
  %unroll_iter = and i64 %i.bd, 288230376151711742
  br label %.lr.ph63

._crit_edge64.loopexit.unr-lcssa:                 ; preds = %.lr.ph63
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge64, label %.lr.ph63.epil.preheader

.lr.ph63.epil.preheader:                          ; preds = %._crit_edge64.loopexit.unr-lcssa, %.lr.ph63.preheader
  %.062.epil.init = phi i64 [ 0, %.lr.ph63.preheader ], [ %i.sg, %._crit_edge64.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod142 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod142)
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %i.bi, i64 %.062.epil.init
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.062.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !tbaa.struct !92
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63.epil.preheader, %._crit_edge64.loopexit.unr-lcssa, %gv_calloc.exit47.thread
  %i.bs = phi ptr [ %i.be, %gv_calloc.exit47.thread ], [ %i.bi, %._crit_edge64.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph63.epil.preheader ] ; 2 uses
  call void @free(ptr noundef %i.az) #18
end_hunk_0
