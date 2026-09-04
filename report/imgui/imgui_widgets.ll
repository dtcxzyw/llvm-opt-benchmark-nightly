Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0
@.str.149 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"char*\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.156 = private unnamed_addr constant [47 x i8] c"[selection] BeginBoxSelect() 0X%08X: Activate\0A\00", align 1
@.str.157 = private unnamed_addr constant [49 x i8] c"[selection] BeginBoxSelect() 0X%08X: Deactivate\0A\00", align 1
@.str.158 = private unnamed_addr constant [43 x i8] c"[selection] %s: Request: SetAll %d (= %s)\0A\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"SelectAll\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.161 = private unnamed_addr constant [77 x i8] c"[selection] %s: Request: SetRange %lld..%lld (0x%llX..0x%llX) = %d (dir %d)\0A\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"##v\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"##<\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"##>\00", align 1
@_ZZL32GetMinimumStepAtDecimalPrecisioniE9min_steps = internal unnamed_addr constant [10 x float] [float 1.000000e+00, float 1.000000e-01, float f0x3C23D70A, float 1.000000e-03, float f0x38D1B717, float f0x3727C5AC, float f0x358637BD, float 1.000000e-07, float f0x322BCC77, float f0x3089705F], align 16

@_ZN19ImGuiInputTextStateC1Ev = unnamed_addr alias void (ptr), ptr @_ZN19ImGuiInputTextStateC2Ev
@_ZN19ImGuiInputTextStateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN19ImGuiInputTextStateD2Ev
@_ZN26ImGuiInputTextCallbackDataC1Ev = unnamed_addr alias void (ptr), ptr @_ZN26ImGuiInputTextCallbackDataC2Ev
@_ZN26ImGuiSelectionBasicStorageC1Ev = unnamed_addr alias void (ptr), ptr @_ZN26ImGuiSelectionBasicStorageC2Ev
@_ZN29ImGuiSelectionExternalStorageC1Ev = unnamed_addr alias void (ptr), ptr @_ZN29ImGuiSelectionExternalStorageC2Ev
@_ZN11ImGuiTabBarC1Ev = unnamed_addr alias void (ptr), ptr @_ZN11ImGuiTabBarC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 5 uses
  %4 = alloca %struct.ImRect, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 11 uses
  %6 = alloca %struct.ImRect, align 8             ; 7 uses
  %7 = alloca %struct.ImRect, align 4             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %0, %1                       ; 2 uses
  %spec.select = select i1 %i.h, ptr @.str, ptr %1 ; 2 uses
  %spec.select101 = select i1 %i.h, ptr @.str, ptr %0 ; 11 uses
  %i.i = icmp eq ptr %spec.select, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select101) #40
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select101, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.k, %bb.c ], [ %spec.select, %bb.b ] ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !186 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.o = load float, ptr %i.n, align 4, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.q = load float, ptr %i.p, align 8, !tbaa !188
  %i.r = fadd float %i.o, %i.q                    ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.t = load float, ptr %i.s, align 8, !tbaa !189 ; 2 uses
  %i.u = fcmp oge float %i.t, 0.000000e+00        ; 2 uses
  %i.v = ptrtoint ptr %.1 to i64                  ; 6 uses
  %i.w = ptrtoint ptr %spec.select101 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp slt i64 %i.x, 2001
  %or.cond = select i1 %i.y, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %i.l, float noundef %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi float [ %i.z, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ab = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %spec.select101, ptr noundef nonnull %.1, i1 noundef zeroext false, float noundef %i.aa) ; 2 uses
  store <2 x float> %i.ab, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ac = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.r, i64 1
  %i.ae = fadd <2 x float> %i.ad, %i.ab
  store float %i.m, ptr %4, align 8
  %.sroa_idx133 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.r, ptr %.sroa_idx133, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.ae, ptr %i.af, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef 0.000000e+00)
  %i.ag = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.ag, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.042.0.copyload = load <2 x float>, ptr %4, align 8
  call void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float> %.sroa.042.0.copyload, ptr noundef %spec.select101, ptr noundef nonnull %.1, float noundef %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ah = tail call noundef float @_ZN5ImGui17GetTextLineHeightEv() ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !190
  %i.aj = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.r, i64 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.am = load i8, ptr %i.al, align 8, !tbaa !191, !range !184, !noundef !185
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !192
  %i.aq = fsub float %i.ap, %i.r
  %i.ar = fdiv float %i.aq, %i.ah
  %i.as = fptosi float %i.ar to i32               ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.au = icmp ult ptr %spec.select101, %.1
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.av = and i32 %2, 1
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.089148.us = phi i32 [ %i.bf, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.090147.us = phi ptr [ %i.be, %.lr.ph.split.us ], [ %spec.select101, %.lr.ph ] ; 3 uses
  %i.ax = phi float [ %i.bd, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.ay = ptrtoint ptr %.090147.us to i64
  %i.az = sub i64 %i.v, %i.ay
  %i.ba = tail call noundef ptr @memchr(ptr noundef %.090147.us, i32 noundef 10, i64 noundef %i.az) #40 ; 2 uses
  %.not.us = icmp eq ptr %i.ba, null
  %spec.select102.us = select i1 %.not.us, ptr %.1, ptr %i.ba ; 2 uses
  %i.bb = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.090147.us, ptr noundef nonnull %spec.select102.us, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.012.0.vec.extract.us = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bc = fcmp oge float %i.ax, %.sroa.012.0.vec.extract.us
  %i.bd = select i1 %i.bc, float %i.ax, float %.sroa.012.0.vec.extract.us ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select102.us, i64 1 ; 3 uses
  %i.bf = add nuw nsw i32 %.089148.us, 1          ; 3 uses
  %i.bg = icmp ult ptr %i.be, %.1
  %i.bh = icmp slt i32 %i.bf, %i.as
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !616

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.089148 = phi i32 [ %i.bn, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.090147 = phi ptr [ %i.bm, %.lr.ph.split ], [ %spec.select101, %.lr.ph ] ; 2 uses
  %i.bj = ptrtoint ptr %.090147 to i64
  %i.bk = sub i64 %i.v, %i.bj
  %i.bl = tail call noundef ptr @memchr(ptr noundef %.090147, i32 noundef 10, i64 noundef %i.bk) #40 ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  %spec.select102 = select i1 %.not, ptr %.1, ptr %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select102, i64 1 ; 3 uses
  %i.bn = add nuw nsw i32 %.089148, 1             ; 3 uses
  %i.bo = icmp ult ptr %i.bm, %.1
  %i.bp = icmp slt i32 %i.bn, %i.as
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !616

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader
  %.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.bd, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.090.lcssa = phi ptr [ %spec.select101, %.preheader ], [ %i.be, %.lr.ph.split.us ], [ %i.bm, %.lr.ph.split ]
  %.089.lcssa = phi i32 [ 0, %.preheader ], [ %i.bf, %.lr.ph.split.us ], [ %i.bn, %.lr.ph.split ]
  store float %.lcssa, ptr %5, align 8
  %i.br = uitofp nneg i32 %.089.lcssa to float
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.ah, float %i.r)
  %.sroa.0113.4.vec.insert = insertelement <2 x float> %i.ak, float %i.bs, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.i
  %i.bt = phi float [ 0.000000e+00, %bb.i ], [ %.lcssa, %._crit_edge ], [ 0.000000e+00, %bb.j ]
  %.sroa.0113.0 = phi <2 x float> [ %i.ak, %bb.i ], [ %.sroa.0113.4.vec.insert, %._crit_edge ], [ %i.ak, %bb.j ] ; 4 uses
  %.2 = phi ptr [ %spec.select101, %bb.i ], [ %.090.lcssa, %._crit_edge ], [ %spec.select101, %bb.j ] ; 2 uses
  %i.bu = icmp ult ptr %.2, %.1
  br i1 %i.bu, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bv = insertelement <2 x float> <float f0x7F7FFFFF, float poison>, float %i.ah, i64 1
  %i.bw = fadd <2 x float> %i.bv, %.sroa.0113.0
  store <2 x float> %.sroa.0113.0, ptr %6, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.n
  %.3154 = phi ptr [ %.2, %bb.l ], [ %i.ci, %bb.n ] ; 5 uses
  %.sroa.0113.1153 = phi <2 x float> [ %.sroa.0113.0, %bb.l ], [ %.sroa.0113.4.vec.insert121, %bb.n ] ; 4 uses
  %i.ca = call noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 0)
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = ptrtoint ptr %.3154 to i64
  %i.cc = sub i64 %i.v, %i.cb
  %i.cd = call noundef ptr @memchr(ptr noundef %.3154, i32 noundef 10, i64 noundef %i.cc) #40 ; 2 uses
  %.not99 = icmp eq ptr %i.cd, null
  %spec.select103 = select i1 %.not99, ptr %.1, ptr %i.cd ; 3 uses
  %i.ce = load float, ptr %5, align 8, !tbaa !194 ; 2 uses
  %i.cf = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.3154, ptr noundef nonnull %spec.select103, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.07.0.vec.extract = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.cg = fcmp oge float %i.ce, %.sroa.07.0.vec.extract
  %i.ch = select i1 %i.cg, float %i.ce, float %.sroa.07.0.vec.extract
  store float %i.ch, ptr %5, align 8, !tbaa !194
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0113.1153, ptr noundef %.3154, ptr noundef nonnull %spec.select103, i1 noundef zeroext false)
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select103, i64 1 ; 3 uses
  %i.cj = load float, ptr %i.by, align 4, !tbaa !195
  %i.ck = fadd float %i.ah, %i.cj
  store float %i.ck, ptr %i.by, align 4, !tbaa !195
  %i.cl = load float, ptr %i.bz, align 4, !tbaa !196
  %i.cm = fadd float %i.ah, %i.cl
  store float %i.cm, ptr %i.bz, align 4, !tbaa !196
  %.sroa.0113.4.vec.extract123 = extractelement <2 x float> %.sroa.0113.1153, i64 1
  %i.cn = fadd float %i.ah, %.sroa.0113.4.vec.extract123
  %.sroa.0113.4.vec.insert121 = insertelement <2 x float> %.sroa.0113.1153, float %i.cn, i64 1 ; 2 uses
  %i.co = icmp ult ptr %i.ci, %.1
  br i1 %i.co, label %bb.m, label %bb.o, !llvm.loop !617

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.0113.1.lcssa = phi <2 x float> [ %.sroa.0113.1153, %bb.m ], [ %.sroa.0113.4.vec.insert121, %bb.n ] ; 2 uses
  %.3.lcssa = phi ptr [ %.3154, %bb.m ], [ %i.ci, %bb.n ] ; 3 uses
  %i.cp = icmp ult ptr %.3.lcssa, %.1
  br i1 %i.cp, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %bb.o
  %i.cq = and i32 %2, 1
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph158.split.us.preheader, label %.lr.ph158.split

.lr.ph158.split.us.preheader:                     ; preds = %.lr.ph158
  %.pre = load float, ptr %5, align 8, !tbaa !194
  br label %.lr.ph158.split.us

.lr.ph158.split.us:                               ; preds = %.lr.ph158.split.us.preheader, %.lr.ph158.split.us
  %i.cs = phi float [ %i.cy, %.lr.ph158.split.us ], [ %.pre, %.lr.ph158.split.us.preheader ] ; 2 uses
  %.085156.us = phi i32 [ %i.da, %.lr.ph158.split.us ], [ 0, %.lr.ph158.split.us.preheader ]
  %.4155.us = phi ptr [ %i.cz, %.lr.ph158.split.us ], [ %.3.lcssa, %.lr.ph158.split.us.preheader ] ; 3 uses
  %i.ct = ptrtoint ptr %.4155.us to i64
  %i.cu = sub i64 %i.v, %i.ct
  %i.cv = call noundef ptr @memchr(ptr noundef %.4155.us, i32 noundef 10, i64 noundef %i.cu) #40 ; 2 uses
  %.not100.us = icmp eq ptr %i.cv, null
  %spec.select104.us = select i1 %.not100.us, ptr %.1, ptr %i.cv ; 2 uses
  %i.cw = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.4155.us, ptr noundef nonnull %spec.select104.us, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.02.0.vec.extract.us = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.cx = fcmp oge float %i.cs, %.sroa.02.0.vec.extract.us
  %i.cy = select i1 %i.cx, float %i.cs, float %.sroa.02.0.vec.extract.us ; 2 uses
  store float %i.cy, ptr %5, align 8, !tbaa !194
  %i.cz = getelementptr inbounds nuw i8, ptr %spec.select104.us, i64 1 ; 2 uses
  %i.da = add nuw nsw i32 %.085156.us, 1          ; 2 uses
  %i.db = icmp ult ptr %i.cz, %.1
  br i1 %i.db, label %.lr.ph158.split.us, label %._crit_edge159, !llvm.loop !618

.lr.ph158.split:                                  ; preds = %.lr.ph158, %.lr.ph158.split
  %.085156 = phi i32 [ %i.dg, %.lr.ph158.split ], [ 0, %.lr.ph158 ]
  %.4155 = phi ptr [ %i.df, %.lr.ph158.split ], [ %.3.lcssa, %.lr.ph158 ] ; 2 uses
  %i.dc = ptrtoint ptr %.4155 to i64
  %i.dd = sub i64 %i.v, %i.dc
  %i.de = call noundef ptr @memchr(ptr noundef %.4155, i32 noundef 10, i64 noundef %i.dd) #40 ; 2 uses
  %.not100 = icmp eq ptr %i.de, null
  %spec.select104 = select i1 %.not100, ptr %.1, ptr %i.de
  %i.df = getelementptr inbounds nuw i8, ptr %spec.select104, i64 1 ; 2 uses
  %i.dg = add nuw nsw i32 %.085156, 1             ; 2 uses
  %i.dh = icmp ult ptr %i.df, %.1
  br i1 %i.dh, label %.lr.ph158.split, label %._crit_edge159, !llvm.loop !618

._crit_edge159:                                   ; preds = %.lr.ph158.split, %.lr.ph158.split.us, %bb.o
  %.085.lcssa = phi i32 [ 0, %bb.o ], [ %i.da, %.lr.ph158.split.us ], [ %i.dg, %.lr.ph158.split ]
  %i.di = uitofp nneg i32 %.085.lcssa to float
  %.sroa.0113.4.vec.extract127 = extractelement <2 x float> %.sroa.0113.1.lcssa, i64 1
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float %i.ah, float %.sroa.0113.4.vec.extract127)
  %.sroa.0113.4.vec.insert125 = insertelement <2 x float> %.sroa.0113.1.lcssa, float %i.dj, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %.pre171 = load float, ptr %5, align 8, !tbaa !194
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge159, %bb.k
  %i.dk = phi float [ %.pre171, %._crit_edge159 ], [ %i.bt, %bb.k ]
  %.sroa.0113.2 = phi <2 x float> [ %.sroa.0113.4.vec.insert125, %._crit_edge159 ], [ %.sroa.0113.0, %bb.k ]
  %.sroa.0113.4.vec.extract131 = extractelement <2 x float> %.sroa.0113.2, i64 1
  %i.dl = fsub float %.sroa.0113.4.vec.extract131, %i.r ; 2 uses
  store float %i.dl, ptr %i.ai, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.dm = fadd float %i.m, %i.dk
  %i.dn = fadd float %i.r, %i.dl
  %.sroa.0.0.vec.insert.i109 = insertelement <2 x float> poison, float %i.dm, i64 0
  %.sroa.0.4.vec.insert.i110 = insertelement <2 x float> %.sroa.0.0.vec.insert.i109, float %i.dn, i64 1
  store float %i.m, ptr %7, align 4
  %.sroa_idx135 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.r, ptr %.sroa_idx135, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i110, ptr %i.do, align 4
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 0.000000e+00)
  %i.dp = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.q

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p, %bb.h, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float>, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef float @_ZN5ImGui17GetTextLineHeightEv() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float>, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui4TextEPKcz(ptr noundef %0, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui5TextVEPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef nonnull %1)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui5TextVEPKcP13__va_list_tag.exit

_ZN5ImGui5TextVEPKcP13__va_list_tag.exit:         ; preds = %bb.a, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5TextVEPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef %1)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %0)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui12TextColoredVERK6ImVec4PKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui12TextColoredVERK6ImVec4PKcP13__va_list_tag.exit

_ZN5ImGui12TextColoredVERK6ImVec4PKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui12TextColoredVERK6ImVec4PKcP13__va_list_tag(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %0)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
end_hunk_0
begin_hunk_1_@_ZN5ImGui22MultiSelectAddSetRangeEP24ImGuiMultiSelectTempDatabixx:bb.a
}

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25DebugNodeMultiSelectStateEP21ImGuiMultiSelectState(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !517
  %i.c = tail call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.d = add nsw i32 %i.c, -2
  %.not = icmp slt i32 %i.b, %i.d                 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 1)
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !516  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %0, align 8, !tbaa !518    ; 2 uses
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !331
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ @.str.113, %bb.c ]
  %i.n = select i1 %.not, ptr @.str.114, ptr @.str
  %i.o = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.i, ptr noundef nonnull @.str.112, i32 noundef %i.g, ptr noundef %i.m, ptr noundef nonnull %i.n)
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !270  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !271
  %i.t = sext i8 %i.s to i32
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.115, i64 noundef %i.q, i64 noundef %i.q, i32 noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !303  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.x = load i8, ptr %i.w, align 1, !tbaa !304
  %i.y = sext i8 %i.x to i32
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.116, i64 noundef %i.v, i64 noundef %i.v, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !300
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.117, i32 noundef %i.aa)
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

declare noundef i32 @_ZN5ImGui13GetFrameCountEv() local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 5), (8, 28), (32, 48)) %0) unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 0, ptr %0, align 8, !tbaa !529
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.b, align 4, !tbaa !530
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !822
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @"_ZZN26ImGuiSelectionBasicStorageC1EvEN3$_08__invokeEPS_i", ptr %i.d, align 8, !tbaa !531
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !532
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN26ImGuiSelectionBasicStorage5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 4), (24, 28)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !529
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !532
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !533
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN8ImVectorI16ImGuiStoragePairE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !534  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !535
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !534
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !534
  store i32 0, ptr %i.c, align 4, !tbaa !533
  br label %_ZN8ImVectorI16ImGuiStoragePairE6resizeEi.exit

_ZN8ImVectorI16ImGuiStoragePairE6resizeEi.exit:   ; preds = %bb.a, %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !535
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN26ImGuiSelectionBasicStorage4SwapERS_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !208
  %i.b = load i32, ptr %1, align 8, !tbaa !208
  store i32 %i.b, ptr %0, align 8, !tbaa !208
  store i32 %i.a, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !208
  %i.f = load i32, ptr %i.d, align 8, !tbaa !208
  store i32 %i.f, ptr %i.c, align 8, !tbaa !208
  store i32 %i.e, ptr %i.d, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !208
  %i.j = load <2 x i32>, ptr %i.g, align 8, !tbaa !208
  store <2 x i32> %i.j, ptr %i.h, align 8, !tbaa !208
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !208
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !534
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !534
  store ptr %i.n, ptr %i.k, align 8, !tbaa !534
  store ptr %i.l, ptr %i.m, align 8, !tbaa !534
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef 0)
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !824    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !825  ; 5 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !530, !range !184, !noundef !185
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = icmp eq ptr %i.a, null                   ; 2 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = icmp ne ptr %i.d, null
  %or.cond3 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.b, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i32 %i.e, 1
  br i1 %i.m, label %bb.c, label %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @qsort(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 16, ptr noundef nonnull @_ZL22PairComparerByValueIntPKvS0_)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !825
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.a
  %spec.select = select i1 %i.k, ptr %i.d, ptr %i.a
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread

_Z7ImQsortPvmmPFiPKvS1_E.exit.thread:             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit, %bb.c, %bb.b
  %.0 = phi ptr [ %spec.select, %_Z7ImQsortPvmmPFiPKvS1_E.exit ], [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %.not27 = icmp eq ptr %.0, %i.g
  br i1 %.not27, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread, %.preheader
  %.1 = phi ptr [ %i.s, %.preheader ], [ %.0, %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !351
  %i.p = icmp eq i32 %i.o, 0
  %i.q = icmp ult ptr %.1, %i.g
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br i1 %i.r, label %.preheader, label %.loopexit, !llvm.loop !823

.loopexit:                                        ; preds = %.preheader, %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread
  %.2 = phi ptr [ %.0, %_Z7ImQsortPvmmPFiPKvS1_E.exit.thread ], [ %.1, %.preheader ] ; 3 uses
  %3 = icmp ne ptr %.2, %i.g                      ; 3 uses
  %.idx = select i1 %3, i64 16, i64 0
  %i.t = getelementptr inbounds nuw i8, ptr %.2, i64 %.idx
  store ptr %i.t, ptr %1, align 8, !tbaa !824
  br i1 %3, label %.thread.a, label %bb.d

.thread.a:                                        ; preds = %.loopexit
  %i.u = load i32, ptr %.2, align 8, !tbaa !538
  store i32 %i.u, ptr %2, align 4, !tbaa !208
  br label %bb.f

bb.d:                                             ; preds = %.loopexit
  store i32 0, ptr %2, align 4, !tbaa !208
  %i.v = load i8, ptr %i.h, align 4, !tbaa !530, !range !184, !noundef !185
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %bb.f

bb.f:                                             ; preds = %.thread.a, %bb.e, %bb.d
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL22PairComparerByValueIntPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !351
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !351
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

declare void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !208
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %2, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !532  ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !532
  br label %.sink.split

.critedge:                                        ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.c
  %.sink = phi i32 [ %i.f, %bb.c ], [ 0, %.critedge ]
  %.sink8 = phi i32 [ 1, %bb.c ], [ -1, %.critedge ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !208
  %i.h = load i32, ptr %0, align 8, !tbaa !529
  %i.i = add nsw i32 %i.h, %.sink8
  store i32 %i.i, ptr %0, align 8, !tbaa !529
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %.critedge
  ret void
}

declare noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !279    ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = mul nsw i64 %i.d, 24
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %.not79 = icmp eq i32 %i.c, 0
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  br label %bb.b

._crit_edge83:                                    ; preds = %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph82, %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit
  %.04880 = phi ptr [ %i.b, %.lr.ph82 ], [ %i.gc, %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit ] ; 9 uses
  %i.l = load i32, ptr %.04880, align 8, !tbaa !521
  switch i32 %i.l, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit [
    i32 1, label %bb.c
    i32 2, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8, !tbaa !529
  store i32 1, ptr %i.g, align 8, !tbaa !532
  %i.m = load i32, ptr %i.j, align 4, !tbaa !533  ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !534  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.f, align 8, !tbaa !535
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !534
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.o, ptr %i.i, align 8, !tbaa !534
  store i32 0, ptr %i.j, align 4, !tbaa !533
  br label %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit

_ZN26ImGuiSelectionBasicStorage5ClearEv.exit:     ; preds = %bb.c, %bb.f
  %i.u = phi i32 [ %i.m, %bb.c ], [ 0, %bb.f ]
  store i32 0, ptr %i.f, align 8, !tbaa !535
  %i.v = getelementptr inbounds nuw i8, ptr %.04880, i64 4 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !522, !range !184, !noundef !185
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit

bb.g:                                             ; preds = %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit
  %i.y = load i32, ptr %i.k, align 4, !tbaa !539  ; 4 uses
  %.not.i = icmp sgt i32 %i.y, %i.u
  br i1 %.not.i, label %bb.h, label %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aa) ; 2 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !534 ; 2 uses
  %.not6.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !535
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ab, ptr nonnull align 8 %i.ac, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !534
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ag)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !534
  store i32 %i.y, ptr %i.j, align 4, !tbaa !533
  %.pre = load i32, ptr %i.f, align 8, !tbaa !536
  %.pre84 = load i32, ptr %i.k, align 4, !tbaa !539
  br label %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit

_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit:  ; preds = %bb.g, %bb.j
  %i.ah = phi i32 [ %i.y, %bb.g ], [ %.pre84, %bb.j ]
  %i.ai = phi i32 [ 0, %bb.g ], [ %.pre, %bb.j ]  ; 2 uses
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit
  %i.ak = sext i32 %i.ai to i64                   ; 2 uses
  br label %bb.l

._crit_edge78:                                    ; preds = %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit, %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit
  %i.al = load i8, ptr %i.v, align 4, !tbaa !522, !range !184, !noundef !185
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit

bb.k:                                             ; preds = %._crit_edge78
  %i.an = load i32, ptr %0, align 8, !tbaa !529
  %.not.i53 = icmp eq i32 %i.an, %i.ai
  br i1 %.not.i53, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit.sink.split

bb.l:                                             ; preds = %.lr.ph77, %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit
  %.04776 = phi i32 [ 0, %.lr.ph77 ], [ %i.ci, %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit ] ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !531
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.04776), !inline_history !826 ; 3 uses
  %i.aq = load i8, ptr %i.v, align 4, !tbaa !522, !range !184, !noundef !185 ; 2 uses
  %i.ar = trunc nuw i8 %i.aq to i1                ; 3 uses
  %i.as = load i32, ptr %i.g, align 8, !tbaa !532 ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !830 ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.ak
  %i.av = tail call noundef ptr @_Z12ImLowerBoundP16ImGuiStoragePairS0_j(ptr noundef %i.at, ptr noundef %i.au, i32 noundef %i.ap) ; 4 uses
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !830 ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ak
  %.not24.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not24.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !538
  %i.az = icmp eq i32 %i.ay, %i.ap
  br i1 %i.az, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !351
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.not26.i = phi i1 [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.l ] ; 2 uses
  %i.be = phi i32 [ 0, %bb.m ], [ %i.bd, %bb.n ], [ 0, %bb.l ]
  %i.bf = zext nneg i8 %i.aq to i32
end_hunk_1
