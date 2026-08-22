Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_siti?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"siti\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Calculate spatial information (SI) and temporal information (TI).\00", align 1
@avfilter_vf_siti_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [7 x i32] [i32 0, i32 4, i32 12, i32 13, i32 62, i32 64, i32 -1], align 16
@ff_vf_siti = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @avfilter_vf_siti_inputs, ptr @ff_video_default_filterpad, ptr @siti_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 88, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"lavfi.siti.si\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lavfi.siti.ti\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%0.2f\00", align 1
@siti_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @siti_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"print_summary\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Print summary showing average values\00", align 1
@siti_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 84, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [134 x i8] c"SITI Summary:\0ATotal frames: %ld\0A\0ASpatial Information:\0AAverage: %f\0AMax: %f\0AMin: %f\0A\0ATemporal Information:\0AAverage: %f\0AMax: %f\0AMin: %f\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x float> zeroinitializer, ptr %i.c, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.h = uitofp nsz i64 %i.g to float
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load <2 x float>, ptr %i.e, align 8, !tbaa !20
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv nsz <2 x float> %i.i, %i.k
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 2 uses
  %i.n = load <4 x float>, ptr %1, align 8, !tbaa !20
  %i.o = fpext <4 x float> %i.n to <4 x double>   ; 4 uses
  %i.p = extractelement <2 x double> %i.m, i64 0
  %i.q = extractelement <2 x double> %i.m, i64 1
  %i.r = extractelement <4 x double> %i.o, i64 0
  %i.s = extractelement <4 x double> %i.o, i64 1
  %i.t = extractelement <4 x double> %i.o, i64 2
  %i.u = extractelement <4 x double> %i.o, i64 3
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.10, i64 noundef %i.g, double noundef %i.p, double noundef %i.r, double noundef %i.t, double noundef %i.q, double noundef %i.s, double noundef %i.u) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.w) #8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.x) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36
  switch i32 %i.h, label %bb.c [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 2, label %is_full_range.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41
  %i.k = and i32 %i.j, -2
  %narrow.i = icmp eq i32 %i.k, 12
  %i.l = zext i1 %narrow.i to i32
  br label %is_full_range.exit

bb.c:                                             ; preds = %bb.a
  br label %is_full_range.exit

is_full_range.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.in.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.c ], [ 1, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  store i32 %.0.in.i, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %i.p = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %i.q = load ptr, ptr %1, align 8, !tbaa !43     ; 28 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !46   ; 3 uses
  %i.x = sdiv i32 %i.u, %i.w                      ; 9 uses
  %i.y = icmp eq i32 %i.w, 1                      ; 3 uses
  %i.z = select i1 %i.y, i32 1, i32 4             ; 4 uses
  %i.aa = icmp eq i32 %i.w, 2                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47 ; 7 uses
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = icmp sgt i32 %i.ac, 2                   ; 2 uses
  br i1 %i.aa, label %.preheader101.i, label %.preheader104.i

.preheader104.i:                                  ; preds = %is_full_range.exit
  br i1 %i.ae, label %.preheader103.lr.ph.i, label %convolve_sobel.exit.thread93

.preheader103.lr.ph.i:                            ; preds = %.preheader104.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !48 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 2
  %i.ai = shl nuw nsw i32 %i.z, 4                 ; 2 uses
  %i.aj = select i1 %i.y, i32 219, i32 876        ; 9 uses
  %i.ak = shl nuw nsw i32 %i.z, 8
  %i.al = add nsw i32 %i.ak, -1                   ; 8 uses
  %i.am = uitofp nneg i32 %i.aj to float
  %i.an = add i32 %i.ag, -2                       ; 3 uses
  br i1 %i.ah, label %.preheader103.lr.ph.split.i, label %convolve_sobel.exit.thread93.thread

convolve_sobel.exit.thread93.thread:              ; preds = %.preheader103.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  br label %.preheader74.lr.ph.i

.preheader103.lr.ph.split.i:                      ; preds = %.preheader103.lr.ph.i
  %i.as = add nsw i32 %i.ag, -1
  %.not.i = icmp eq i32 %.0.in.i, 0
  %i.at = sext i32 %i.x to i64                    ; 11 uses
  %wide.trip.count157.i = zext i32 %i.ad to i64   ; 5 uses
  %wide.trip.count152.i = zext i32 %i.as to i64   ; 8 uses
  br i1 %.not.i, label %.preheader103.us.i.preheader, label %.preheader103.i.preheader

.preheader103.us.i.preheader:                     ; preds = %.preheader103.lr.ph.split.i
  %i.au = insertelement <4 x float> poison, float %i.am, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aw = trunc nuw nsw i32 %i.ai to i16
  %i.ax = insertelement <4 x i16> poison, i16 %i.aw, i64 0
  %i.ay = shufflevector <4 x i16> %i.ax, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.az = trunc nuw nsw i32 %i.ai to i16
  %i.ba = insertelement <4 x i16> poison, i16 %i.az, i64 0
  %i.bb = shufflevector <4 x i16> %i.ba, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.preheader103.us.i

.preheader103.i.preheader:                        ; preds = %.preheader103.lr.ph.split.i
  %i.bc = add nsw i64 %wide.trip.count152.i, -2   ; 2 uses
  %i.bd = shl nsw i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.be = mul nsw i64 %i.at, %wide.trip.count157.i
  %i.bf = getelementptr i8, ptr %i.q, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %wide.trip.count152.i
  %scevgep181 = getelementptr i8, ptr %i.bg, i64 1
  %i.bh = shl nuw nsw i64 %wide.trip.count152.i, 2
  %i.bi = getelementptr i8, ptr %i.s, i64 %i.bh
  %scevgep183 = getelementptr i8, ptr %i.bi, i64 -4
  %scevgep185 = getelementptr i8, ptr %i.q, i64 %i.at
  %i.bj = add nsw i64 %wide.trip.count157.i, -1
  %i.bk = mul i64 %i.bj, %i.at
  %i.bl = getelementptr i8, ptr %i.q, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 %wide.trip.count152.i
  %scevgep186 = getelementptr i8, ptr %i.bm, i64 1
  %i.bn = add nsw i64 %wide.trip.count157.i, -2
  %i.bo = mul i64 %i.bn, %i.at
  %i.bp = getelementptr i8, ptr %i.q, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 %wide.trip.count152.i
  %scevgep187 = getelementptr i8, ptr %i.bq, i64 1
  %i.br = add nsw i64 %wide.trip.count152.i, -1   ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 4
  %i.bs = trunc i64 %i.bc to i32
  %i.bt = icmp ugt i64 %i.bc, 4294967295
  %stride.check191 = icmp slt i32 %i.x, 0
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bu = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br label %.preheader103.i

.preheader103.us.i:                               ; preds = %.preheader103.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv154.i = phi i64 [ %i.ca, %._crit_edge.split.us.us.i ], [ 1, %.preheader103.us.i.preheader ] ; 3 uses
  %i.bv = add nsw i64 %indvars.iv154.i, -1        ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = mul i32 %i.an, %i.bw
  %invariant.op.us.i = add i32 %i.bx, -1
  %i.by = mul nsw i64 %i.bv, %i.at
  %invariant.gep210.i = getelementptr i8, ptr %i.q, i64 %i.by ; 3 uses
  %i.bz = mul nsw i64 %indvars.iv154.i, %i.at
  %invariant.gep216.i = getelementptr i8, ptr %i.q, i64 %i.bz ; 2 uses
  %i.ca = add nuw nsw i64 %indvars.iv154.i, 1     ; 3 uses
  %i.cb = mul nsw i64 %i.ca, %i.at
  %invariant.gep220.i = getelementptr i8, ptr %i.q, i64 %i.cb ; 3 uses
  br label %.preheader102.us.us.i

.preheader102.us.us.i:                            ; preds = %.preheader102.us.us.i, %.preheader103.us.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %.preheader102.us.us.i ], [ 1, %.preheader103.us.i ] ; 5 uses
  %i.cc = add nsw i64 %indvars.iv149.i, -1        ; 3 uses
  %gep211.i = getelementptr i8, ptr %invariant.gep210.i, i64 %i.cc
  %gep213.i = getelementptr i8, ptr %invariant.gep210.i, i64 %indvars.iv149.i
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 5 uses
  %gep215.i = getelementptr i8, ptr %invariant.gep210.i, i64 %indvars.iv.next150.i
  %i.cd = load i8, ptr %gep215.i, align 1, !tbaa !51
  %gep217.i = getelementptr i8, ptr %invariant.gep216.i, i64 %i.cc
  %i.ce = load i8, ptr %gep217.i, align 1, !tbaa !51
  %i.cf = load i8, ptr %gep213.i, align 1, !tbaa !51
  %i.cg = load i8, ptr %gep211.i, align 1, !tbaa !51
  %i.ch = zext i8 %i.cg to i16
  %i.ci = insertelement <4 x i16> poison, i16 %i.ch, i64 0
  %i.cj = zext i8 %i.cf to i16
  %i.ck = insertelement <4 x i16> %i.ci, i16 %i.cj, i64 1
  %i.cl = zext i8 %i.cd to i16
  %i.cm = insertelement <4 x i16> %i.ck, i16 %i.cl, i64 2
  %i.cn = zext i8 %i.ce to i16
  %i.co = insertelement <4 x i16> %i.cm, i16 %i.cn, i64 3
  %i.cp = sub nsw <4 x i16> %i.co, %i.ay
  %i.cq = sitofp <4 x i16> %i.cp to <4 x float>
  %i.cr = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer)
  %i.cs = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cr, <4 x float> %i.av) ; 4 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = fptosi float %i.ct to i32
  %i.cv = mul nsw i32 %i.al, %i.cu
  %i.cw = sdiv i32 %i.cv, %i.aj
  %i.cx = and i32 %i.cw, 65535                    ; 2 uses
  %i.cy = extractelement <4 x float> %i.cs, i64 1
  %i.cz = fptosi float %i.cy to i32
  %i.da = mul nsw i32 %i.al, %i.cz
  %i.db = sdiv i32 %i.da, %i.aj
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = and i32 %i.dc, 131070
  %i.de = extractelement <4 x float> %i.cs, i64 2
  %i.df = fptosi float %i.de to i32
end_hunk_0
