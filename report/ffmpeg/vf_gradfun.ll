Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_gradfun?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"gradfun\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Debands video quickly using gradients.\00", align 1
@avfilter_vf_gradfun_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [9 x i32] [i32 6, i32 0, i32 8, i32 5, i32 4, i32 7, i32 31, i32 71, i32 -1], align 16
@ff_vf_gradfun = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @avfilter_vf_gradfun_inputs, ptr @ff_video_default_filterpad, ptr @gradfun_class, i32 65536, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 56, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@dither = internal constant [8 x [8 x i16]] [[8 x i16] [i16 0, i16 96, i16 24, i16 120, i16 6, i16 102, i16 30, i16 126], [8 x i16] [i16 64, i16 32, i16 88, i16 56, i16 70, i16 38, i16 94, i16 62], [8 x i16] [i16 16, i16 112, i16 8, i16 104, i16 22, i16 118, i16 14, i16 110], [8 x i16] [i16 80, i16 48, i16 72, i16 40, i16 86, i16 54, i16 78, i16 46], [8 x i16] [i16 4, i16 100, i16 28, i16 124, i16 2, i16 98, i16 26, i16 122], [8 x i16] [i16 68, i16 36, i16 92, i16 60, i16 66, i16 34, i16 90, i16 58], [8 x i16] [i16 20, i16 116, i16 12, i16 108, i16 18, i16 114, i16 10, i16 106], [8 x i16] [i16 84, i16 52, i16 76, i16 44, i16 82, i16 50, i16 74, i16 42]], align 16
@gradfun_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @gradfun_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"The maximum amount by which the filter will change any one pixel.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"The neighborhood to fit the gradient to.\00", align 1
@gradfun_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 5, { double } { double 1.200000e+00 }, double 5.100000e-01, double 6.400000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 16, i32 2, %union.anon.2 { i64 16 }, double 4.000000e+00, double 3.200000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.9 = private unnamed_addr constant [26 x i8] c"threshold:%.2f radius:%d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_gradfun_filter_line_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.024 = phi ptr [ %2, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 7                  ; 2 uses
  %i.f = load i16, ptr %.024, align 2, !tbaa !11
  %i.g = zext i16 %i.f to i32
  %i.h = sub nsw i32 %i.g, %i.e                   ; 2 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.j = mul nsw i32 %i.i, %4
  %i.k = ashr i32 %i.j, 16
  %i.l = sub nsw i32 127, %i.k
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 2 uses
  %i.n = mul i32 %i.m, %i.h
  %i.o = mul i32 %i.n, %i.m
  %i.p = ashr i32 %i.o, 14
  %i.q = and i64 %indvars.iv, 7
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !11
  %i.t = zext i16 %i.s to i32
  %i.u = add nuw nsw i32 %i.e, %i.t
  %i.v = add nsw i32 %i.u, %i.p
  %i.w = ashr i32 %i.v, 7
  %6 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 0)
  %.0.i23 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.x = trunc nuw i32 %.0.i23 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !9
  %i.z = and i64 %indvars.iv, 1
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %i.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_gradfun_blur_line_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 4 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %i.b ; 11 uses
  %invariant.gep25 = getelementptr i8, ptr %3, i64 %i.b ; 9 uses
  %min.iters.check = icmp ult i32 %5, 24
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 1      ; 5 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.c       ; 4 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 %i.c
  %i.h = getelementptr i8, ptr %i.g, i64 %i.b     ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 %i.c       ; 2 uses
  %bound0 = icmp ult ptr %1, %i.e
  %bound1 = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %1, %i.f
  %bound155 = icmp ult ptr %2, %i.d
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  %bound057 = icmp ult ptr %1, %i.h
  %bound158 = icmp ult ptr %invariant.gep, %i.d
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx, %found.conflict59
  %bound061 = icmp ult ptr %1, %i.i
  %bound162 = icmp ult ptr %3, %i.d
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  %bound065 = icmp ult ptr %0, %i.f
  %bound166 = icmp ult ptr %2, %i.e
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  %bound069 = icmp ult ptr %0, %i.h
  %bound170 = icmp ult ptr %invariant.gep, %i.e
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  %bound073 = icmp ult ptr %0, %i.i
  %bound174 = icmp ult ptr %3, %i.e
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %conflict.rdx72, %found.conflict75
  br i1 %conflict.rdx76, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 12 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load = load <8 x i16>, ptr %i.j, align 2, !tbaa !11, !alias.scope !54
  %i.k = shl nuw nsw i64 %index, 1                ; 3 uses
  %i.l = shl i64 %index, 1                        ; 2 uses
  %i.m = or disjoint i64 %i.l, 2                  ; 2 uses
  %i.n = shl i64 %index, 1                        ; 2 uses
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %i.p = shl i64 %index, 1                        ; 2 uses
  %i.q = or disjoint i64 %i.p, 6                  ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %i.s = or disjoint i64 %i.r, 8                  ; 2 uses
  %i.t = shl i64 %index, 1                        ; 2 uses
  %i.u = or disjoint i64 %i.t, 10                 ; 2 uses
  %i.v = shl i64 %index, 1                        ; 2 uses
  %i.w = or disjoint i64 %i.v, 12                 ; 2 uses
  %i.x = shl i64 %index, 1                        ; 2 uses
  %i.y = or disjoint i64 %i.x, 14                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.k
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.q
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !9, !alias.scope !55
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !9, !alias.scope !55
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !9, !alias.scope !55
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !9, !alias.scope !55
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !9, !alias.scope !55
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !9, !alias.scope !55
  %i.an = load i8, ptr %i.af, align 1, !tbaa !9, !alias.scope !55
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !55
  %i.ap = insertelement <8 x i8> poison, i8 %i.ah, i64 0
  %i.aq = insertelement <8 x i8> %i.ap, i8 %i.ai, i64 1
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 2
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 3
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 4
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 5
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 6
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 7
  %i.ax = zext <8 x i8> %i.aw to <8 x i16>
  %i.ay = add <8 x i16> %wide.load, %i.ax
  %i.az = or disjoint i64 %i.k, 1                 ; 2 uses
  %i.ba = or disjoint i64 %i.l, 3                 ; 2 uses
  %i.bb = or disjoint i64 %i.n, 5                 ; 2 uses
  %i.bc = or disjoint i64 %i.p, 7                 ; 2 uses
  %i.bd = or disjoint i64 %i.r, 9                 ; 2 uses
  %i.be = or disjoint i64 %i.t, 11                ; 2 uses
  %i.bf = or disjoint i64 %i.v, 13                ; 2 uses
  %i.bg = or disjoint i64 %i.x, 15                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 %i.bg
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !9, !alias.scope !55
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !9, !alias.scope !55
  %i.br = load i8, ptr %i.bj, align 1, !tbaa !9, !alias.scope !55
  %i.bs = load i8, ptr %i.bk, align 1, !tbaa !9, !alias.scope !55
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !9, !alias.scope !55
  %i.bu = load i8, ptr %i.bm, align 1, !tbaa !9, !alias.scope !55
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !9, !alias.scope !55
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !9, !alias.scope !55
  %i.bx = insertelement <8 x i8> poison, i8 %i.bp, i64 0
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bq, i64 1
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.br, i64 2
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 3
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 4
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 5
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 6
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 7
  %i.cf = zext <8 x i8> %i.ce to <8 x i16>
  %i.cg = add <8 x i16> %i.ay, %i.cf
  %i.ch = getelementptr i8, ptr %invariant.gep, i64 %i.k
  %i.ci = getelementptr i8, ptr %invariant.gep, i64 %i.m
  %i.cj = getelementptr i8, ptr %invariant.gep, i64 %i.o
  %i.ck = getelementptr i8, ptr %invariant.gep, i64 %i.q
  %i.cl = getelementptr i8, ptr %invariant.gep, i64 %i.s
  %i.cm = getelementptr i8, ptr %invariant.gep, i64 %i.u
  %i.cn = getelementptr i8, ptr %invariant.gep, i64 %i.w
  %i.co = getelementptr i8, ptr %invariant.gep, i64 %i.y
  %i.cp = load i8, ptr %i.ch, align 1, !tbaa !9, !alias.scope !56
  %i.cq = load i8, ptr %i.ci, align 1, !tbaa !9, !alias.scope !56
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !9, !alias.scope !56
  %i.cs = load i8, ptr %i.ck, align 1, !tbaa !9, !alias.scope !56
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !9, !alias.scope !56
  %i.cu = load i8, ptr %i.cm, align 1, !tbaa !9, !alias.scope !56
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !9, !alias.scope !56
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !9, !alias.scope !56
  %i.cx = insertelement <8 x i8> poison, i8 %i.cp, i64 0
  %i.cy = insertelement <8 x i8> %i.cx, i8 %i.cq, i64 1
  %i.cz = insertelement <8 x i8> %i.cy, i8 %i.cr, i64 2
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cs, i64 3
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 4
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 5
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 6
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 7
  %i.df = zext <8 x i8> %i.de to <8 x i16>
  %i.dg = add <8 x i16> %i.cg, %i.df
  %i.dh = getelementptr i8, ptr %invariant.gep25, i64 %i.az
  %i.di = getelementptr i8, ptr %invariant.gep25, i64 %i.ba
  %i.dj = getelementptr i8, ptr %invariant.gep25, i64 %i.bb
  %i.dk = getelementptr i8, ptr %invariant.gep25, i64 %i.bc
  %i.dl = getelementptr i8, ptr %invariant.gep25, i64 %i.bd
  %i.dm = getelementptr i8, ptr %invariant.gep25, i64 %i.be
  %i.dn = getelementptr i8, ptr %invariant.gep25, i64 %i.bf
  %i.do = getelementptr i8, ptr %invariant.gep25, i64 %i.bg
  %i.dp = load i8, ptr %i.dh, align 1, !tbaa !9, !alias.scope !56
  %i.dq = load i8, ptr %i.di, align 1, !tbaa !9, !alias.scope !56
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !9, !alias.scope !56
  %i.ds = load i8, ptr %i.dk, align 1, !tbaa !9, !alias.scope !56
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !9, !alias.scope !56
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !9, !alias.scope !56
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !9, !alias.scope !56
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !9, !alias.scope !56
  %i.dx = insertelement <8 x i8> poison, i8 %i.dp, i64 0
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.dq, i64 1
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.dr, i64 2
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 3
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 4
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 5
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 6
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 7
  %i.ef = zext <8 x i8> %i.ee to <8 x i16>
  %i.eg = add <8 x i16> %i.dg, %i.ef              ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
end_hunk_0
