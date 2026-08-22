Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !180
  %i.n = fadd float %i.k, %i.m                    ; 2 uses
  %i.o = fsub float %i.n, %i.b
  %i.p = fsub float %i.o, %i.g                    ; 2 uses
  %i.q = fcmp oge float %i.k, %i.p
  %i.r = select i1 %i.q, float %i.k, float %i.p
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 468
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !130
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 460
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !130
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 8, !tbaa !181 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load float, ptr %i.u, align 8, !tbaa !182
  %i.w = fadd float %i.t, %i.v                    ; 2 uses
  %i.x = fsub float %i.w, %i.b
  %i.y = fsub float %i.x, %i.g                    ; 2 uses
  %i.z = fcmp oge float %i.t, %i.y
  %i.aa = select i1 %i.z, float %i.t, float %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink25 = phi float [ %i.aa, %bb.c ], [ %.sroa.0.0.copyload, %bb.b ]
  %.sroa.4.0.copyload.sink = phi float [ %.sroa.4.0.copyload, %bb.c ], [ %i.r, %bb.b ]
  %.sink = phi float [ %i.w, %bb.c ], [ %.sroa.5.0.copyload, %bb.b ]
  %.sroa.6.0.copyload.sink = phi float [ %.sroa.6.0.copyload, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.vec.insert17 = insertelement <2 x float> poison, float %.sink25, i64 0
  %.sroa.0.4.vec.insert19 = insertelement <2 x float> %.sroa.0.0.vec.insert17, float %.sroa.4.0.copyload.sink, i64 1
  %.sroa.5.8.vec.insert22 = insertelement <2 x float> poison, float %.sink, i64 0
  %.sroa.5.12.vec.insert24 = insertelement <2 x float> %.sroa.5.8.vec.insert22, float %.sroa.6.0.copyload.sink, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert19, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5.12.vec.insert24, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 19 uses
  %i.d = icmp eq i32 %0, 0                        ; 2 uses
  %.str.3..str.4.i = select i1 %i.d, ptr @.str.3, ptr @.str.4
  %i.e = tail call noundef i32 @_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.c, ptr noundef nonnull %.str.3..str.4.i, ptr noundef null) ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.g = load float, ptr %i.f, align 4, !tbaa !178 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.i = xor i32 %0, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !130 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %.sroa.0.0.copyload.i = load float, ptr %i.n, align 8, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.p = load float, ptr %i.o, align 4, !tbaa !179 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.r = load float, ptr %i.q, align 4, !tbaa !180
  %i.s = fadd float %i.p, %i.r                    ; 2 uses
  %i.t = fsub float %i.s, %i.g
  %i.u = fsub float %i.t, %i.l                    ; 2 uses
  %i.v = fcmp oge float %i.p, %i.u
  %i.w = select i1 %i.v, float %i.p, float %i.u
  %.sroa.0.0.vec.insert17.i35 = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %.sroa.0.4.vec.insert19.i36 = insertelement <2 x float> %.sroa.0.0.vec.insert17.i35, float %i.w, i64 1
  %.sroa.5.8.vec.insert22.i37 = insertelement <2 x float> poison, float %.sroa.5.0.copyload.i, i64 0
  %.sroa.5.12.vec.insert24.i38 = insertelement <2 x float> %.sroa.5.8.vec.insert22.i37, float %i.s, i64 1
  store <2 x float> %.sroa.5.12.vec.insert24.i38, ptr %i.m, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 141
  %i.y = load i8, ptr %i.x, align 1, !tbaa !183, !range !124, !noundef !125
  %i.z = trunc nuw i8 %i.y to i1
  %spec.select = select i1 %i.z, i32 320, i32 448
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 460
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !130
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !181 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !182
  %i.ae = fadd float %i.ab, %i.ad                 ; 2 uses
  %i.af = fsub float %i.ae, %i.g
  %i.ag = fsub float %i.af, %i.l                  ; 2 uses
  %i.ah = fcmp oge float %i.ab, %i.ag
  %i.ai = select i1 %i.ah, float %i.ab, float %i.ag
  %.sroa.0.0.vec.insert17.i = insertelement <2 x float> poison, float %i.ai, i64 0
  %.sroa.0.4.vec.insert19.i = insertelement <2 x float> %.sroa.0.0.vec.insert17.i, float %.sroa.4.0.copyload.i, i64 1
  %.sroa.5.8.vec.insert22.i = insertelement <2 x float> poison, float %i.ae, i64 0
  %.sroa.5.12.vec.insert24.i = insertelement <2 x float> %.sroa.5.8.vec.insert22.i, float %.sroa.6.0.copyload.i, i64 1
  store <2 x float> %.sroa.5.12.vec.insert24.i, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !184
  %i.al = and i32 %i.ak, 1025
  %or.cond = icmp eq i32 %i.al, 1
  %.0 = select i1 %or.cond, i32 288, i32 256      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.an = load i8, ptr %i.am, align 4, !tbaa !185, !range !124, !noundef !125
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = or disjoint i32 %.0, 128
  %spec.select30 = select i1 %i.ao, i32 %.0, i32 %i.ap
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.4.vec.insert19.i.sink = phi <2 x float> [ %.sroa.0.4.vec.insert19.i36, %bb.b ], [ %.sroa.0.4.vec.insert19.i, %bb.c ]
  %.1 = phi i32 [ %spec.select, %bb.b ], [ %spec.select30, %bb.c ]
  store <2 x float> %.sroa.0.4.vec.insert19.i.sink, ptr %1, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.as = sext i32 %0 to i64                      ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !130
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !130
  %i.ax = fsub float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.as
  %i.ba = load float, ptr %i.az, align 4, !tbaa !130
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.as
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !130
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float 2.000000e+00, float %i.ba)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.as
  %i.bh = call noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPfffi(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.e, i32 noundef %0, ptr noundef nonnull %i.bg, float noundef %i.ax, float noundef %i.be, i32 noundef %.1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void
}

declare void @_ZN5ImGui11KeepAliveIDEj(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPfffi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.ImRect, align 16            ; 11 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %struct.ImRect, align 4             ; 7 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 147
  %i.g = load i8, ptr %i.f, align 1, !tbaa !123, !range !124, !noundef !125
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread117, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !130
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !130
  %i.l = fsub <2 x float> %i.j, %i.k              ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = fcmp ole float %i.m, 0.000000e+00
  %i.o = extractelement <2 x float> %i.l, i64 1   ; 3 uses
  %i.p = fcmp ole float %i.o, 0.000000e+00
  %or.cond = or i1 %i.n, %i.p
  br i1 %or.cond, label %.thread117, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %2, 1
  br i1 %i.q, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 6528
  %i.s = load float, ptr %i.r, align 8, !tbaa !145 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 5536
  %i.u = load float, ptr %i.t, align 8, !tbaa !175 ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 2.000000e+00, float %i.s)
  %i.w = fcmp olt float %i.o, %i.v
  br i1 %i.w, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = fsub float %i.o, %i.s
  %i.y = fmul float %i.u, 2.000000e+00
  %i.z = fdiv float %i.x, %i.y                    ; 3 uses
  %i.aa = fcmp uge float %i.z, 0.000000e+00
  %i.ab = fcmp ogt float %i.z, 1.000000e+00
  %i.ac = select i1 %i.ab, float 1.000000e+00, float %i.z ; 2 uses
  %i.ad = fcmp ugt float %i.ac, 0.000000e+00
  %or.cond119 = and i1 %i.aa, %i.ad
  br i1 %or.cond119, label %.thread, label %.thread117

.thread:                                          ; preds = %bb.e, %bb.c, %bb.d
  %.0100116 = phi float [ %i.ac, %bb.e ], [ 1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.ae = fcmp oge float %.0100116, 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !186
  %i.af = fadd <2 x float> %i.l, splat (float -2.000000e+00)
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.aj = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>   ; 3 uses
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  %i.am = icmp slt <2 x i32> %i.ak, zeroinitializer
  %i.an = icmp sgt <2 x i32> %i.ak, splat (i32 3)
  %i.ao = fneg <2 x float> %i.al
  %i.ap = select <2 x i1> %i.an, <2 x float> splat (float -3.000000e+00), <2 x float> %i.ao
  %i.aq = select <2 x i1> %i.am, <2 x float> splat (float -0.000000e+00), <2 x float> %i.ap
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.as = load <4 x float>, ptr %7, align 16, !tbaa !130 ; 2 uses
  %i.at = fsub <4 x float> %i.as, %i.ar
  %i.au = fadd <4 x float> %i.as, %i.ar           ; 3 uses
  %i.av = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  store <4 x float> %i.av, ptr %7, align 16, !tbaa !130
  %i.aw = icmp eq i32 %2, 0                       ; 2 uses
  %shift = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.av
  %i.ax = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ay = fcmp oge float %5, %4
  %i.az = select i1 %i.ay, float %5, float %4     ; 2 uses
  %i.ba = fcmp oge float %i.az, 1.000000e+00
  %i.bb = select i1 %i.ba, float %i.az, float 1.000000e+00
  %i.bc = fdiv float %4, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 5596
  %i.be = load float, ptr %i.bd, align 4, !tbaa !187 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !160
  %i.bf = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 262144) ; 0 uses
  %i.bg = load float, ptr %3, align 4, !tbaa !130
  %i.bh = load i8, ptr %i.a, align 1, !tbaa !160, !range !124, !noundef !125
  %i.bi = trunc nuw i8 %i.bh to i1                ; 3 uses
  %i.bj = fsub float %5, %4                       ; 2 uses
  %shift132 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop133 = fsub <4 x float> %shift132, %i.av
  %i.bk = extractelement <4 x float> %foldExtExtBinop133, i64 1
  %i.bl = fcmp ole float %i.bj, 1.000000e+00
  %i.bm = select i1 %i.bl, float 1.000000e+00, float %i.bj ; 3 uses
  %i.bn = select i1 %i.aw, float %i.ax, float %i.bk ; 8 uses
  %i.bo = fmul float %i.bc, %i.bn                 ; 3 uses
  %i.bp = fcmp olt float %i.bo, %i.be
  %i.bq = fcmp ogt float %i.bo, %i.bn
  %i.br = select i1 %i.bq, float %i.bn, float %i.bo
  %i.bs = select i1 %i.bp, float %i.be, float %i.br ; 4 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bg, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bm, i64 1
  %i.bx = fdiv <2 x float> %i.bu, %i.bw           ; 4 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 2 uses
  %i.bz = fcmp ogt float %i.by, 1.000000e+00
  %i.ca = select i1 %i.bz, float 1.000000e+00, float %i.by
  %i.cb = fcmp olt <2 x float> %i.bx, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 1
  %i.cd = select i1 %i.cc, float 0.000000e+00, float %i.ca
  %i.ce = fsub float %i.bn, %i.bs                 ; 2 uses
  %i.cf = fmul float %i.ce, %i.cd
  %i.cg = fdiv float %i.cf, %i.bn                 ; 4 uses
  %i.ch = extractelement <2 x i1> %i.cb, i64 0
  %i.ci = and i1 %i.ae, %i.ch
  %or.cond5 = and i1 %i.ci, %i.bi
  br i1 %or.cond5, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.thread
  %i.cj = sext i32 %2 to i64                      ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !130
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cj
  %i.co = load float, ptr %i.cn, align 4, !tbaa !130
  %i.cp = fsub float %i.co, %i.cl
  %i.cq = fdiv float %i.cp, %i.bn                 ; 3 uses
  %i.cr = fcmp olt float %i.cq, 0.000000e+00
  %i.cs = fcmp ogt float %i.cq, 1.000000e+00
  %i.ct = select i1 %i.cs, float 1.000000e+00, float %i.cq
  %i.cu = select i1 %i.cr, float 0.000000e+00, float %i.ct ; 5 uses
  call void @_ZN5ImGui12SetHoveredIDEj(i32 noundef %1)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 7272
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !171, !range !124, !noundef !125
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 12364
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !188
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cy = fcmp olt float %i.cu, %i.cg
  %i.cz = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %i.da = fadd float %i.cz, %i.cg
  %i.db = fcmp ogt float %i.cu, %i.da
  %i.dc = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 12364
  store float 0.000000e+00, ptr %i.dd, align 4, !tbaa !188
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.de = fsub float %i.cu, %i.cg
  %i.df = fneg float %i.cz
  %i.dg = call float @llvm.fmuladd.f32(float %i.df, float 5.000000e-01, float %i.de) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 12364
  store float %i.dg, ptr %i.dh, align 4, !tbaa !188
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h, %bb.i
  %i.di = phi float [ 0.000000e+00, %bb.h ], [ %i.dg, %bb.i ], [ %.pre, %._crit_edge ]
  %.0.shrunk = phi i1 [ true, %bb.h ], [ false, %bb.i ], [ false, %._crit_edge ]
  %i.dj = fsub float %i.cu, %i.di
  %i.dk = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %i.dl = fneg float %i.dk                        ; 2 uses
  %i.dm = call float @llvm.fmuladd.f32(float %i.dl, float 5.000000e-01, float %i.dj)
  %i.dn = fsub float 1.000000e+00, %i.dk
  %i.do = fdiv float %i.dm, %i.dn                 ; 3 uses
  %i.dp = fcmp olt float %i.do, 0.000000e+00
  %i.dq = fcmp ogt float %i.do, 1.000000e+00
  %i.dr = select i1 %i.dq, float 1.000000e+00, float %i.do
  %i.ds = select i1 %i.dp, float 0.000000e+00, float %i.dr
  %i.dt = call float @llvm.fmuladd.f32(float %i.ds, float %i.bm, float 5.000000e-01)
  %i.du = fptosi float %i.dt to i32
  %i.dv = sitofp i32 %i.du to float               ; 2 uses
  store float %i.dv, ptr %3, align 4, !tbaa !130
  %i.dw = fdiv float %i.dv, %i.bm                 ; 3 uses
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  %i.dy = fcmp ogt float %i.dw, 1.000000e+00
  %i.dz = select i1 %i.dy, float 1.000000e+00, float %i.dw
  %i.ea = select i1 %i.dx, float 0.000000e+00, float %i.dz
  %i.eb = fmul float %i.ce, %i.ea
  %i.ec = fdiv float %i.eb, %i.bn                 ; 3 uses
  br i1 %.0.shrunk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 12364
  %i.ee = fsub float %i.cu, %i.ec
  %i.ef = call float @llvm.fmuladd.f32(float %i.dl, float 5.000000e-01, float %i.ee)
  store float %i.ef, ptr %i.ed, align 4, !tbaa !188
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.thread
  %.099 = phi float [ %i.cg, %.thread ], [ %i.ec, %bb.k ], [ %i.ec, %bb.j ] ; 2 uses
  %i.eg = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 14, float noundef 1.000000e+00)
  %i.eh = load i8, ptr %i.b, align 1, !range !124
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = select i1 %i.ei, i32 16, i32 15
  %i.ek = select i1 %i.bi, i32 17, i32 %i.ej
  %i.el = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ek, float noundef %.0100116)
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !147
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !189
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.en, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef %i.eg, float noundef %i.ep, i32 noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.eq = load float, ptr %7, align 16, !tbaa !190 ; 3 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.er = load float, ptr %i.ah, align 8, !tbaa !191
  %i.es = fsub float %i.er, %i.eq
  %i.et = call noundef float @llvm.fmuladd.f32(float %i.es, float %.099, float %i.eq) ; 2 uses
  %i.eu = load float, ptr %i.ag, align 4, !tbaa !136
  %i.ev = fadd float %i.bs, %i.et
  %i.ew = load float, ptr %i.ai, align 4, !tbaa !137
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ex = load float, ptr %i.ag, align 4, !tbaa !136 ; 2 uses
  %i.ey = load float, ptr %i.ai, align 4, !tbaa !137
  %i.ez = fsub float %i.ey, %i.ex
  %i.fa = call noundef float @llvm.fmuladd.f32(float %i.ez, float %.099, float %i.ex) ; 2 uses
  %i.fb = load float, ptr %i.ah, align 8, !tbaa !191
  %i.fc = fadd float %i.bs, %i.fa
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink125 = phi float [ %i.et, %bb.m ], [ %i.eq, %bb.n ]
  %.sink124 = phi float [ %i.eu, %bb.m ], [ %i.fa, %bb.n ]
  %.sink123 = phi float [ %i.ev, %bb.m ], [ %i.fb, %bb.n ]
  %.sink = phi float [ %i.ew, %bb.m ], [ %i.fc, %bb.n ]
  store float %.sink125, ptr %8, align 4, !tbaa !130
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %.sink124, ptr %i.fd, align 4, !tbaa !130
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %.sink123, ptr %i.fe, align 4, !tbaa !130
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %.sink, ptr %i.ff, align 4, !tbaa !130
  %i.fg = load ptr, ptr %i.em, align 8, !tbaa !147
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 5592
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !192
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.fg, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.fe, i32 noundef %i.el, float noundef %i.fi, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
end_hunk_0
begin_hunk_1_@_ZN5ImGui11SeparatorExEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !130
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.p = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.p, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.s = load <2 x float>, ptr %1, align 16, !tbaa !130 ; 2 uses
  store <2 x float> %i.s, ptr %3, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.t = load float, ptr %.sroa_idx46, align 4, !tbaa !137
  %i.u = extractelement <2 x float> %i.s, i64 0
  store float %i.u, ptr %4, align 4, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.t, ptr %i.v, align 4, !tbaa !140
  %i.w = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.y = load i8, ptr %i.x, align 4, !tbaa !131, !range !124, !noundef !125
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.s

bb.g:                                             ; preds = %bb.b
  %i.aa = and i32 %0, 1
  %.not39 = icmp eq i32 %i.aa, 0
  br i1 %.not39, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !181 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !182
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7624
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !201 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 7632
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = getelementptr [48 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !203
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !205
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.at = load float, ptr %i.as, align 8, !tbaa !206
  %i.au = fadd float %i.ac, %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0 = phi float [ %i.au, %bb.j ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ]
  %i.av = and i32 %0, 4
  %.not40 = icmp eq i32 %i.av, 0
  br i1 %.not40, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !207 ; 2 uses
  %.not41 = icmp eq ptr %i.ax, null
  br i1 %.not41, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5ImGui21PushColumnsBackgroundEv()
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.not4153 = phi i1 [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.k ]
  %i.ay = phi ptr [ null, %bb.l ], [ %i.ax, %bb.m ], [ null, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !127 ; 2 uses
  %i.bb = fadd float %i.ba, 1.000000e+00
  store float %.0, ptr %5, align 4
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store float %i.ba, ptr %.sroa_idx43, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.af, ptr %i.bc, align 4
  %.sroa_idx42 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bb, ptr %.sroa_idx42, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !130
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.bd = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bg = load <2 x float>, ptr %.sroa_idx43, align 4, !tbaa !130
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bh, ptr %7, align 8, !tbaa !130
  %i.bi = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.bi, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !131, !range !124, !noundef !125
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef null)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.thread
  br i1 %.not4153, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5ImGui20PopColumnsBackgroundEv()
  %i.bm = load float, ptr %i.az, align 4, !tbaa !127
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store float %i.bm, ptr %i.bn, align 4, !tbaa !208
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.s

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %.critedge, %bb.g, %bb.r, %bb.a
  ret void
}

declare void @_ZN5ImGui7LogTextEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN5ImGui21PushColumnsBackgroundEv() local_unnamed_addr #3

declare void @_ZN5ImGui20PopColumnsBackgroundEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !123, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.h = load i32, ptr %i.g, align 4, !tbaa !200
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 6, i32 5
  tail call void @_ZN5ImGui11SeparatorExEi(i32 noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16SplitterBehaviorERK6ImRectj9ImGuiAxisPfS4_ffff(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %9 = alloca %struct.ImRect, align 16            ; 8 uses
  %10 = alloca %struct.ImRect, align 16           ; 11 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 7344 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !195  ; 2 uses
  %i.h = or i32 %i.g, 24
  store i32 %i.h, ptr %i.f, align 8, !tbaa !195
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 0)
  store i32 %i.g, ptr %i.f, align 8, !tbaa !195
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !186
  %i.j = icmp eq i32 %2, 1                        ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.668.0 = select i1 %i.j, float %7, float 0.000000e+00
  %.sroa.066.0 = select i1 %i.j, float 0.000000e+00, float %7
  %i.l = load <4 x float>, ptr %9, align 16, !tbaa !130 ; 2 uses
  %i.m = insertelement <4 x float> poison, float %.sroa.066.0, i64 0
  %i.n = insertelement <4 x float> %i.m, float %.sroa.668.0, i64 1
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.p = fsub <4 x float> %i.l, %i.o
  %i.q = fadd <4 x float> %i.l, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.r, ptr %9, align 16, !tbaa !130
  %i.s = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 6144) ; 0 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !160, !range !124, !noundef !125
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 7376 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !212
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !212
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 7260
  %i.z = load i32, ptr %i.y, align 4, !tbaa !161
  %.not = icmp eq i32 %i.z, %1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui19SetItemAllowOverlapEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = load i8, ptr %i.b, align 1, !tbaa !160, !range !124, !noundef !125
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 7244
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !156
  %i.ae = icmp eq i32 %i.ad, %1
  br i1 %i.ae, label %bb.i, label %.thread73

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 7252
  %i.ag = load float, ptr %i.af, align 4, !tbaa !153
  %i.ah = fcmp ult float %i.ag, %8
  br i1 %i.ah, label %.thread73, label %.thread72

.thread72:                                        ; preds = %bb.i
  %i.ai = select i1 %i.j, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.ai)
  br label %.thread73

.critedge:                                        ; preds = %bb.f
  %i.aj = select i1 %i.j, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !186
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 7296
  %.val57 = load float, ptr %i.ak, align 8, !tbaa !135
  %i.am = getelementptr i8, ptr %i.c, i64 300
  %.val58 = load float, ptr %i.am, align 4, !tbaa !140
  %.val59 = load float, ptr %i.al, align 8, !tbaa !135
  %i.an = getelementptr i8, ptr %i.c, i64 7300
  %.val60 = load float, ptr %i.an, align 4, !tbaa !140
  %i.ao = fsub float %.val57, %.val59
  %i.ap = fsub float %.val58, %.val60
  %.val55 = load float, ptr %9, align 16, !tbaa !135
  %.val56 = load float, ptr %i.k, align 4, !tbaa !140
  %i.aq = fsub float %i.ao, %.val55
  %i.ar = fsub float %i.ap, %.val56
  %i.as = select i1 %i.j, float %i.ar, float %i.aq ; 2 uses
  %i.at = load float, ptr %3, align 4, !tbaa !130 ; 2 uses
  %i.au = fsub float %i.at, %5                    ; 2 uses
  %i.av = fcmp ole float %i.au, 0.000000e+00
  %i.aw = load float, ptr %4, align 4, !tbaa !130
  %i.ax = fsub float %i.aw, %6                    ; 2 uses
  %i.ay = fcmp ole float %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, float 0.000000e+00, float %i.ax ; 2 uses
  %.neg = fneg float %i.au
  %i.ba = select i1 %i.av, float -0.000000e+00, float %.neg ; 2 uses
  %i.bb = fcmp olt float %i.as, %i.ba
  %.0 = select i1 %i.bb, float %i.ba, float %i.as ; 2 uses
  %i.bc = fcmp ogt float %.0, %i.az
  %.1 = select i1 %i.bc, float %i.az, float %.0   ; 5 uses
  %i.bd = fcmp une float %.1, 0.000000e+00
  br i1 %i.bd, label %bb.j, label %.thread71

bb.j:                                             ; preds = %.critedge
  %i.be = fadd float %i.at, %.1
  store float %i.be, ptr %3, align 4, !tbaa !130
  %i.bf = load float, ptr %4, align 4, !tbaa !130
  %i.bg = fsub float %i.bf, %.1
  store float %i.bg, ptr %4, align 4, !tbaa !130
  %i.bh = icmp eq i32 %2, 0
  %i.bi = insertelement <2 x i1> poison, i1 %i.bh, i64 0
  %i.bj = shufflevector <2 x i1> %i.bi, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1, i64 0
  %i.bl = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.1, i64 1
  %i.bm = select <2 x i1> %i.bj, <2 x float> %i.bk, <2 x float> %i.bl
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bo = load <4 x float>, ptr %10, align 16, !tbaa !130
  %i.bp = fadd <4 x float> %i.bn, %i.bo
  store <4 x float> %i.bp, ptr %10, align 16, !tbaa !130
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %1)
  br label %.thread71

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !186
  br label %.thread71

.thread73:                                        ; preds = %bb.i, %bb.h, %.thread72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 7252
  %i.br = load float, ptr %i.bq, align 4, !tbaa !153
  %i.bs = fcmp oge float %i.br, %8
  %i.bt = select i1 %i.bs, i32 28, i32 27
  br label %.thread71

.thread71:                                        ; preds = %bb.k, %bb.j, %.critedge, %.thread73
  %i.bu = phi i32 [ %i.bt, %.thread73 ], [ 27, %bb.k ], [ 29, %.critedge ], [ 29, %bb.j ]
  %i.bv = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bu, float noundef 1.000000e+00)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !147
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %i.by, i32 noundef %i.bv, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.thread71
  %.050 = phi i1 [ %i.ab, %.thread71 ], [ false, %bb.a ]
  ret i1 %.050
}

declare void @_ZN5ImGui19SetItemAllowOverlapEv() local_unnamed_addr #3

declare void @_ZN5ImGui14SetMouseCursorEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree uwtable
define dso_local void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemif(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !213 ; 2 uses
  %i.d = fcmp ult float %i.c, 0.000000e+00
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fsub float %i.c, %2                      ; 2 uses
  %i.f = fcmp oge float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float %i.e, float 1.000000e+00
  store float %i.g, ptr %i.b, align 4, !tbaa !213
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @qsort(ptr noundef %0, i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull @_ZL23ShrinkWidthItemComparerPKvS0_)
  %i.i = fcmp ogt float %2, 0.000000e+00
  %i.j = icmp sgt i32 %1, 1
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %.preheader71.lr.ph, label %.thread

.preheader71.lr.ph:                               ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.lr.ph, %._crit_edge
  %.05879 = phi float [ %2, %.preheader71.lr.ph ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.06278 = phi i32 [ 1, %.preheader71.lr.ph ], [ %.16373, %._crit_edge ]
  %i.m = load float, ptr %i.l, align 4, !tbaa !213 ; 3 uses
  %i.n = sext i32 %.06278 to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader71, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader71 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !213 ; 3 uses
  %i.r = fcmp ugt float %i.m, %i.q
  br i1 %i.r, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.s = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.s, label %bb.e, label %.critedge68.loopexit, !llvm.loop !215

.critedge:                                        ; preds = %bb.e
  %i.t = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.u = fcmp ult float %i.q, 0.000000e+00
  br i1 %i.u, label %.critedge68, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.v = fsub float %i.m, %i.q
  br label %bb.h

.critedge68.loopexit:                             ; preds = %bb.f
  %i.w = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge68

.critedge68:                                      ; preds = %.critedge68.loopexit, %.critedge
  %.16374 = phi i32 [ %i.t, %.critedge ], [ %i.w, %.critedge68.loopexit ]
  %i.x = fadd float %i.m, -1.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %.critedge68, %bb.g
  %.16373 = phi i32 [ %i.t, %bb.g ], [ %.16374, %.critedge68 ] ; 6 uses
  %i.y = phi float [ %i.v, %bb.g ], [ %i.x, %.critedge68 ] ; 3 uses
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = sitofp i32 %.16373 to float             ; 2 uses
  %i.ab = fdiv float %.05879, %i.aa               ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.y
  %i.ad = select i1 %i.ac, float %i.ab, float %i.y ; 3 uses
  %i.ae = icmp sgt i32 %.16373, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %.16373 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.16373, 5
  br i1 %min.iters.check, label %.lr.ph.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.af = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 4, i64 %i.af
  %n.vec = sub nsw i64 %wide.trip.count, %i.ah    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %wide.vec = load <8 x float>, ptr %i.am, align 4, !tbaa !213
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aq = fsub <4 x float> %strided.vec, %broadcast.splat ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  store float %i.ar, ptr %i.am, align 4, !tbaa !213
  %i.as = extractelement <4 x float> %i.aq, i64 1
  store float %i.as, ptr %i.an, align 4, !tbaa !213
  %i.at = extractelement <4 x float> %i.aq, i64 2
  store float %i.at, ptr %i.ao, align 4, !tbaa !213
  %i.au = extractelement <4 x float> %i.aq, i64 3
  store float %i.au, ptr %i.ap, align 4, !tbaa !213
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %.lr.ph.preheader119, label %vector.body, !llvm.loop !216

.lr.ph.preheader119:                              ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader119, %.lr.ph
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %.lr.ph ], [ %indvars.iv92.ph, %.lr.ph.preheader119 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !213
  %i.az = fsub float %i.ay, %i.ad
  store float %i.az, ptr %i.ax, align 4, !tbaa !213
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !219

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %i.ba = fneg float %i.ad
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aa, float %.05879) ; 2 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  %i.bd = icmp slt i32 %.16373, %1
  %i.be = and i1 %i.bd, %i.bc
  br i1 %i.be, label %.preheader71, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.h, %bb.d
  %i.bf = icmp sgt i32 %1, 0
  br i1 %i.bf, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %.thread
  %wide.trip.count98 = zext nneg i32 %1 to i64    ; 5 uses
  %i.bg = add nsw i64 %wide.trip.count98, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count98, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter = and i64 %wide.trip.count98, 2147483646
  br label %.lr.ph83

._crit_edge84.unr-lcssa:                          ; preds = %.lr.ph83
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge84, label %.lr.ph83.epil.preheader

.lr.ph83.epil.preheader:                          ; preds = %._crit_edge84.unr-lcssa, %.lr.ph83.preheader
  %indvars.iv95.epil.init = phi i64 [ 0, %.lr.ph83.preheader ], [ %indvars.iv.next96.1, %._crit_edge84.unr-lcssa ]
  %.282.epil.init = phi float [ 0.000000e+00, %.lr.ph83.preheader ], [ %i.cg, %._crit_edge84.unr-lcssa ]
  %lcmp.mod124 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv95.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !213 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN19ImGuiInputTextState12OnKeyPressedEi:bb.a
  %.val376.i = load i32, ptr %i.rh, align 4, !tbaa !305 ; 8 uses
  %i.ri = icmp sgt i32 %i.qz, %.val376.i
  br i1 %i.ri, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 %.val376.i, ptr %i.qy, align 8, !tbaa !316
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.rj = phi i32 [ %.val376.i, %bb.ea ], [ %i.qz, %bb.dz ] ; 6 uses
  %i.rk = icmp sgt i32 %i.rb, %.val376.i
  br i1 %i.rk, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 %.val376.i, ptr %i.ra, align 4, !tbaa !317
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.rl = phi i32 [ %.val376.i, %bb.ec ], [ %i.rb, %bb.eb ] ; 2 uses
  %i.rm = icmp eq i32 %i.rj, %i.rl
  br i1 %i.rm, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.rj, ptr %i.c, align 4, !tbaa !318
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i
  %i.rn = phi i32 [ %i.rj, %bb.ee ], [ %i.rb, %bb.ed ], [ %.pre, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ] ; 2 uses
  %.val376894.i = phi i32 [ %.val376.i, %bb.ee ], [ %.val376.i, %bb.ed ], [ %.val376892.i, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ] ; 14 uses
  %i.ro = phi i32 [ %i.rj, %bb.ee ], [ %i.rl, %bb.ed ], [ %.ph890.i, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ]
  %i.rp = phi i32 [ %i.rj, %bb.ee ], [ %i.rj, %bb.ed ], [ %.ph890.i, %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit465.thread.i ]
  %i.rq = icmp sgt i32 %i.rn, %.val376894.i
  br i1 %i.rq, label %bb.eg, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i

bb.eg:                                            ; preds = %bb.ef
  store i32 %.val376894.i, ptr %i.c, align 4, !tbaa !318
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i: ; preds = %bb.eg, %bb.ef
  %i.rr = phi i32 [ %i.rn, %bb.ef ], [ %.val376894.i, %bb.eg ]
  %i.rs = zext i8 %i.e to i32
  call fastcc void @_ZN5ImStbL25stb_textedit_find_charposEPNS_12StbFindStateEP19ImGuiInputTextStateii(ptr noundef %3, ptr noundef nonnull %0, i32 noundef %i.rr, i32 noundef %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.ru = icmp sgt i32 %i.qx, 0
  br i1 %i.ru, label %.lr.ph622.i, label %.thread560.i

.lr.ph622.i:                                      ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.rx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rz = sext i32 %.val376894.i to i64
  %i.sa = load ptr, ptr @GImGui, align 8          ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 6520
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 6528
  %.promoted624.i = load i8, ptr %i.rt, align 2, !tbaa !319
  %.promoted625.i = load i32, ptr %i.rw, align 4, !tbaa !421
  %.promoted627.i = load i32, ptr %i.rx, align 4, !tbaa !416
  %i.sd = icmp eq i8 %.promoted624.i, 0
  %i.se = select i1 %i.sd, ptr %3, ptr %i.rv
  %.pre.i = load float, ptr %i.se, align 4, !tbaa !130 ; 2 uses
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge307, %.lr.ph622.i
  %i.sf = phi i32 [ %i.ro, %.lr.ph622.i ], [ %i.ue, %._crit_edge307 ] ; 5 uses
  %i.sg = phi i32 [ %i.rp, %.lr.ph622.i ], [ %i.ub, %._crit_edge307 ] ; 3 uses
  %i.sh = phi i32 [ %.promoted627.i, %.lr.ph622.i ], [ %i.si, %._crit_edge307 ]
  %i.si = phi i32 [ %.promoted625.i, %.lr.ph622.i ], [ %.0300.lcssa.i, %._crit_edge307 ] ; 9 uses
  %.0301621.i = phi i32 [ 0, %.lr.ph622.i ], [ %i.uk, %._crit_edge307 ]
  %i.sj = icmp eq i32 %i.si, %i.sh
  br i1 %i.sj, label %.thread560.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 %i.si, ptr %i.c, align 4, !tbaa !318
  %.val387.i = load ptr, ptr %i.ry, align 8, !tbaa !304 ; 3 uses
  %i.sk = sext i32 %i.si to i64
  %i.sl = getelementptr [2 x i8], ptr %.val387.i, i64 %i.sk ; 4 uses
  %i.sm = getelementptr inbounds [2 x i8], ptr %.val387.i, i64 %i.rz
  %i.sn = load ptr, ptr %i.sb, align 8, !tbaa !331 ; 4 uses
  %i.so = load float, ptr %i.sc, align 8, !tbaa !145
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 20
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !332
  %i.sr = fdiv float %i.so, %i.sq
  %i.ss = icmp slt i32 %i.si, %.val376894.i
  br i1 %i.ss, label %.lr.ph.split.us.i.i484.i, label %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i

.lr.ph.split.us.i.i484.i:                         ; preds = %bb.ei, %.lr.ph.split.us.i.i484.i
  %.03121.us.i.i485.i = phi ptr [ %i.st, %.lr.ph.split.us.i.i484.i ], [ %i.sl, %bb.ei ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.03121.us.i.i485.i, i64 2 ; 3 uses
  %i.su = load i16, ptr %.03121.us.i.i485.i, align 2, !tbaa !258
  %cond.i = icmp ne i16 %i.su, 10
  %i.sv = icmp ult ptr %i.st, %i.sm
  %or.cond941.i = select i1 %cond.i, i1 %i.sv, i1 false
  br i1 %or.cond941.i, label %.lr.ph.split.us.i.i484.i, label %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i

_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i: ; preds = %.lr.ph.split.us.i.i484.i, %bb.ei
  %.1.i.i473.i = phi ptr [ %i.sl, %bb.ei ], [ %i.st, %.lr.ph.split.us.i.i484.i ]
  %i.sw = ptrtoint ptr %.1.i.i473.i to i64
  %i.sx = ptrtoint ptr %i.sl to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = lshr exact i64 %i.sy, 1                 ; 2 uses
  %i.ta = trunc i64 %i.sz to i32
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %.lr.ph618.i, label %.thread554.i

.lr.ph618.i:                                      ; preds = %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %wide.trip.count.i = and i64 %i.sz, 2147483647
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %.lr.ph618.i
  %i.te = phi i32 [ %i.si, %.lr.ph618.i ], [ %i.ts, %bb.el ] ; 4 uses
  %indvars.iv708.i = phi i64 [ 0, %.lr.ph618.i ], [ %indvars.iv.next709.i, %bb.el ] ; 2 uses
  %.0617.i = phi float [ 0.000000e+00, %.lr.ph618.i ], [ %i.tq, %bb.el ]
  %gep.i = getelementptr [2 x i8], ptr %i.sl, i64 %indvars.iv708.i
  %i.tf = load i16, ptr %gep.i, align 2, !tbaa !258 ; 3 uses
  %i.tg = icmp eq i16 %i.tf, 10
  br i1 %i.tg, label %.thread554.i, label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i

_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i: ; preds = %bb.ej
  %i.th = zext i16 %i.tf to i32
  %i.ti = load i32, ptr %i.sn, align 8, !tbaa !386
  %i.tj = icmp sgt i32 %i.ti, %i.th
  %i.tk = load ptr, ptr %i.tc, align 8
  %i.tl = zext i16 %i.tf to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.tl
  %.in.i.i493.i = select i1 %i.tj, ptr %i.tm, ptr %i.td
  %i.tn = load float, ptr %.in.i.i493.i, align 4, !tbaa !130
  %i.to = fmul float %i.sr, %i.tn                 ; 2 uses
  %i.tp = fcmp oeq float %i.to, -1.000000e+00
  br i1 %i.tp, label %.thread554.i, label %bb.ek

bb.ek:                                            ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i
  %i.tq = fadd float %.0617.i, %i.to              ; 2 uses
  %i.tr = fcmp ogt float %i.tq, %.pre.i
  br i1 %i.tr, label %.thread554.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ts = add nsw i32 %i.te, 1                    ; 3 uses
  store i32 %i.ts, ptr %i.c, align 4, !tbaa !318
  %indvars.iv.next709.i = add nuw nsw i64 %indvars.iv708.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next709.i, %wide.trip.count.i
  br i1 %exitcond711.not.i, label %.thread554.i, label %bb.ej, !llvm.loop !422

.thread554.i:                                     ; preds = %bb.el, %bb.ek, %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i, %bb.ej, %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i
  %i.tt = phi i32 [ %i.si, %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit492.i ], [ %i.te, %bb.ej ], [ %i.te, %bb.ek ], [ %i.te, %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit495.i ], [ %i.ts, %bb.el ] ; 2 uses
  %.not.i496.i = icmp eq i32 %i.sg, %i.sf
  br i1 %.not.i496.i, label %bb.es, label %bb.em

bb.em:                                            ; preds = %.thread554.i
  %i.tu = icmp sgt i32 %i.sg, %.val376894.i
  br i1 %i.tu, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 %.val376894.i, ptr %i.qy, align 8, !tbaa !316
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.tv = phi i32 [ %.val376894.i, %bb.en ], [ %i.sg, %bb.em ] ; 6 uses
  %i.tw = icmp sgt i32 %i.sf, %.val376894.i
  br i1 %i.tw, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 %.val376894.i, ptr %i.ra, align 4, !tbaa !317
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.tx = phi i32 [ %.val376894.i, %bb.ep ], [ %i.sf, %bb.eo ] ; 2 uses
  %i.ty = icmp eq i32 %i.tv, %i.tx
  br i1 %i.ty, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 %i.tv, ptr %i.c, align 4, !tbaa !318
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %.thread554.i
  %i.tz = phi i32 [ %i.tv, %bb.er ], [ %i.tt, %bb.eq ], [ %i.tt, %.thread554.i ] ; 2 uses
  %i.ua = phi i32 [ %i.tv, %bb.er ], [ %i.tx, %bb.eq ], [ %i.sf, %.thread554.i ]
  %i.ub = phi i32 [ %i.tv, %bb.er ], [ %i.tv, %bb.eq ], [ %i.sf, %.thread554.i ]
  %i.uc = icmp sgt i32 %i.tz, %.val376894.i
  br i1 %i.uc, label %bb.et, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i

bb.et:                                            ; preds = %bb.es
  store i32 %.val376894.i, ptr %i.c, align 4, !tbaa !318
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i: ; preds = %bb.et, %bb.es
  %i.ud = phi i32 [ %i.tz, %bb.es ], [ %.val376894.i, %bb.et ] ; 2 uses
  store i8 1, ptr %i.rt, align 2, !tbaa !319
  store float %.pre.i, ptr %i.rv, align 8, !tbaa !320
  br i1 %.not337575.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i
  store i32 %i.ud, ptr %i.ra, align 4, !tbaa !317
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i
  %i.ue = phi i32 [ %i.ud, %bb.eu ], [ %i.ua, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit497.i ]
  %i.uf = icmp sgt i32 %i.si, 1
  br i1 %i.uf, label %.lr.ph305, label %._crit_edge307

.lr.ph305:                                        ; preds = %bb.ev
  %4 = zext nneg i32 %i.si to i64
  br label %.lr.ph305.a

bb.ew:                                            ; preds = %.lr.ph305.a
  %i.ug = icmp sgt i64 %indvars.iv712.i303, 2
  br i1 %i.ug, label %.lr.ph305.a, label %._crit_edge307, !llvm.loop !423

.lr.ph305.a:                                      ; preds = %.lr.ph305, %bb.ew
  %indvars.iv712.i303 = phi i64 [ %4, %.lr.ph305 ], [ %indvars.iv.next713.i, %bb.ew ] ; 3 uses
  %indvars.iv.next713.i = add nsw i64 %indvars.iv712.i303, -1 ; 2 uses
  %i.uh = getelementptr [2 x i8], ptr %.val387.i, i64 %indvars.iv712.i303
  %i.ui = getelementptr i8, ptr %i.uh, i64 -4
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !258
  %.not341.i = icmp eq i16 %i.uj, 10
  br i1 %.not341.i, label %._crit_edge306, label %bb.ew, !llvm.loop !423

._crit_edge306:                                   ; preds = %.lr.ph305.a
  %5 = trunc nuw nsw i64 %indvars.iv.next713.i to i32
  br label %._crit_edge307

._crit_edge307:                                   ; preds = %bb.ew, %bb.ev, %._crit_edge306
  %.0300.lcssa.i = phi i32 [ %5, %._crit_edge306 ], [ 0, %bb.ev ], [ 0, %bb.ew ]
  %i.uk = add nuw nsw i32 %.0301621.i, 1          ; 2 uses
  %exitcond712.not.i = icmp eq i32 %i.uk, %i.qx
  br i1 %exitcond712.not.i, label %.thread560.i, label %bb.eh, !llvm.loop !424

.thread560.i:                                     ; preds = %._crit_edge307, %bb.eh, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit470.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.ex:                                            ; preds = %bb.dt
  %i.ul = or disjoint i32 %i.qs, 2097152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.ex, %bb.dr
  %.0309.i.be = phi i32 [ %i.qr, %bb.dr ], [ %i.ul, %bb.ex ]
  br label %.backedge.i

bb.ey:                                            ; preds = %.backedge.i, %.backedge.i
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.un = load i32, ptr %i.um, align 8, !tbaa !316
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !317
  %.not336.i = icmp eq i32 %i.un, %i.up
  br i1 %.not336.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ey
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val362.i = load i32, ptr %i.uq, align 4, !tbaa !305
  %i.ur = load i32, ptr %i.c, align 4, !tbaa !318 ; 2 uses
  %i.us = icmp slt i32 %i.ur, %.val362.i
  br i1 %i.us, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  tail call fastcc void @_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %i.ur, i32 noundef 1)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.ut, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fd:                                            ; preds = %.backedge.i, %.backedge.i
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !316
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !317
  %.not335.i = icmp eq i32 %i.uv, %i.ux
  br i1 %.not335.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %bb.fi

bb.ff:                                            ; preds = %bb.fd
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.val374.i = load i32, ptr %i.uy, align 4, !tbaa !305 ; 3 uses
  %i.uz = load i32, ptr %i.c, align 4, !tbaa !318 ; 2 uses
  %i.va = icmp sgt i32 %i.uz, %.val374.i
  br i1 %i.va, label %bb.fg, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i

bb.fg:                                            ; preds = %bb.ff
  store i32 %.val374.i, ptr %i.c, align 4, !tbaa !318
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i: ; preds = %bb.fg, %bb.ff
  %i.vb = phi i32 [ %i.uz, %bb.ff ], [ %.val374.i, %bb.fg ] ; 2 uses
  %i.vc = icmp sgt i32 %i.vb, 0
  br i1 %i.vc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i
  %i.vd = add nsw i32 %i.vb, -1                   ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.vf = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.ve, i32 noundef %i.vd, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i.i500.not.i = icmp eq ptr %i.vf, null
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.vg, align 8, !tbaa !301 ; 2 uses
  %i.vh = zext nneg i32 %i.vd to i64              ; 3 uses
  br i1 %.not.i.i500.not.i, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i, label %.lr.ph.i.i507.i

.lr.ph.i.i507.i:                                  ; preds = %bb.fh
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %.val.i.i.i, i64 %i.vh
  %i.vi = load i16, ptr %invariant.gep.i.i.i, align 2, !tbaa !258
  store i16 %i.vi, ptr %i.vf, align 2, !tbaa !258
  br label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i: ; preds = %.lr.ph.i.i507.i, %bb.fh
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.vh ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 3710
  store i8 1, ptr %i.vk, align 2, !tbaa !339
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vm = tail call noundef i32 @_Z27ImTextCountUtf8BytesFromStrPKtS0_(ptr noundef %i.vj, ptr noundef nonnull %i.vl)
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !306
  %i.vp = sub nsw i32 %i.vo, %i.vm
  store i32 %i.vp, ptr %i.vn, align 8, !tbaa !306
  %i.vq = load i32, ptr %i.uy, align 4, !tbaa !305
  %i.vr = add nsw i32 %i.vq, -1
  store i32 %i.vr, ptr %i.uy, align 4, !tbaa !305
  %i.vs = load ptr, ptr %i.vg, align 8, !tbaa !304
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %i.vh
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 2 ; 2 uses
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !258 ; 2 uses
  %.not23.i.i502.i = icmp eq i16 %i.vv, 0
  br i1 %.not23.i.i502.i, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, label %.lr.ph.i7.i.i

.lr.ph.i7.i.i:                                    ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i, %.lr.ph.i7.i.i
  %i.vw = phi i16 [ %i.vz, %.lr.ph.i7.i.i ], [ %i.vv, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ]
  %.01725.i.i503.i = phi ptr [ %i.vx, %.lr.ph.i7.i.i ], [ %i.vu, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ]
  %.01824.i.i504.i = phi ptr [ %i.vy, %.lr.ph.i7.i.i ], [ %i.vj, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ] ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.01725.i.i503.i, i64 2 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.01824.i.i504.i, i64 2 ; 2 uses
  store i16 %i.vw, ptr %.01824.i.i504.i, align 2, !tbaa !258
  %i.vz = load i16, ptr %i.vx, align 2, !tbaa !258 ; 2 uses
  %.not.i8.i.i = icmp eq i16 %i.vz, 0
  br i1 %.not.i8.i.i, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, label %.lr.ph.i7.i.i

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i: ; preds = %.lr.ph.i7.i.i, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i
  %.018.lcssa.i.i506.i = phi ptr [ %i.vj, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.i ], [ %i.vy, %.lr.ph.i7.i.i ]
  store i16 0, ptr %.018.lcssa.i.i506.i, align 2, !tbaa !258
  %i.wa = load i32, ptr %i.c, align 4, !tbaa !318
  %i.wb = add nsw i32 %i.wa, -1
  store i32 %i.wb, ptr %i.c, align 4, !tbaa !318
  br label %bb.fi

bb.fi:                                            ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit499.i, %bb.fe
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wc, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fj:                                            ; preds = %.backedge.i
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.wd, align 4, !tbaa !317
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.we, align 8, !tbaa !316
  store i32 0, ptr %i.c, align 4, !tbaa !318
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wf, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fk:                                            ; preds = %.backedge.i
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val361.i = load i32, ptr %i.wg, align 4, !tbaa !305
  store i32 %.val361.i, ptr %i.c, align 4, !tbaa !318
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.wh, align 4, !tbaa !317
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.wi, align 8, !tbaa !316
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wj, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fl:                                            ; preds = %.backedge.i
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !316
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !317
  %.not.i511.i = icmp eq i32 %i.wl, %i.wn
  br i1 %.not.i511.i, label %bb.fm, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit512.i

bb.fm:                                            ; preds = %bb.fl
  %i.wo = load i32, ptr %i.c, align 4, !tbaa !318
  store i32 %i.wo, ptr %i.wk, align 8, !tbaa !316
  br label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit512.i

_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit512.i: ; preds = %bb.fm, %bb.fl
  store i32 0, ptr %i.wm, align 4, !tbaa !317
  store i32 0, ptr %i.c, align 4, !tbaa !318
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.wp, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fn:                                            ; preds = %.backedge.i
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !316
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !317
  %.not.i513.i = icmp eq i32 %i.wr, %i.wt
  br i1 %.not.i513.i, label %bb.fo, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit514.i

bb.fo:                                            ; preds = %bb.fn
  %i.wu = load i32, ptr %i.c, align 4, !tbaa !318
  store i32 %i.wu, ptr %i.wq, align 8, !tbaa !316
  br label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit514.i

_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit514.i: ; preds = %bb.fo, %bb.fn
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val360.i = load i32, ptr %i.wv, align 4, !tbaa !305 ; 2 uses
  store i32 %.val360.i, ptr %i.ws, align 4, !tbaa !317
  store i32 %.val360.i, ptr %i.c, align 4, !tbaa !318
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.ww, align 2, !tbaa !319
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fp:                                            ; preds = %.backedge.i
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val373.i = load i32, ptr %i.wx, align 4, !tbaa !305 ; 9 uses
end_hunk_2
begin_hunk_3_@_ZN5ImGui21ColorEditOptionsPopupEPKfi:bb.a
_ZN5ImGui9SeparatorEv.exit48:                     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %2, align 8, !tbaa !130
  %i.ax = call noundef zeroext i1 @_ZN5ImGui8ButtonExEPKcRK6ImVec2i(ptr noundef nonnull @.str.83, ptr noundef nonnull readonly align 4 dereferenceable(8) %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit48
  tail call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.84, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5ImGui9SeparatorEv.exit48
  %i.ay = tail call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.84, i32 noundef 0)
  br i1 %i.ay, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.az = load float, ptr %0, align 4, !tbaa !130 ; 4 uses
  %i.ba = fcmp olt float %i.az, 0.000000e+00
  %i.bb = fcmp ogt float %i.az, 1.000000e+00
  %i.bc = select i1 %i.bb, float 1.000000e+00, float %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.550000e+02, float 5.000000e-01)
  %i.be = select i1 %i.ba, float 5.000000e-01, float %i.bd
  %i.bf = fptosi float %i.be to i32               ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !130 ; 5 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  %i.bk = fcmp ogt <2 x float> %i.bh, splat (float 1.000000e+00)
  %i.bl = select <2 x i1> %i.bk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bh
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = select i1 %i.bj, float 5.000000e-01, float %i.bn
  %i.bp = fptosi float %i.bo to i32               ; 3 uses
  %i.bq = extractelement <2 x float> %i.bh, i64 1
  %i.br = fcmp olt float %i.bq, 0.000000e+00
  %i.bs = extractelement <2 x float> %i.bm, i64 1
  %i.bt = select i1 %i.br, float 5.000000e-01, float %i.bs
  %i.bu = fptosi float %i.bt to i32               ; 3 uses
  %i.bv = and i32 %1, 2
  %.not47 = icmp eq i32 %i.bv, 0                  ; 2 uses
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !130 ; 4 uses
  %i.by = fcmp olt float %i.bx, 0.000000e+00
  %i.bz = fcmp ogt float %i.bx, 1.000000e+00
  %i.ca = select i1 %i.bz, float 1.000000e+00, float %i.bx
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float 2.550000e+02, float 5.000000e-01)
  %i.cc = select i1 %i.by, float 5.000000e-01, float %i.cb
  %i.cd = fptosi float %i.cc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ce = fpext float %i.bx to double
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cf = phi i32 [ %i.cd, %bb.m ], [ 255, %bb.l ] ; 2 uses
  %i.cg = phi double [ %i.ce, %bb.m ], [ 1.000000e+00, %bb.l ]
  %i.ch = fpext float %i.az to double
  %i.ci = fpext <2 x float> %i.bh to <2 x double> ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  %i.cl = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.85, double noundef %i.ch, double noundef %i.cj, double noundef %i.ck, double noundef %i.cg) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !130
  %i.cm = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cn = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.86, i32 noundef %i.bf, i32 noundef %i.bp, i32 noundef %i.bu, i32 noundef %i.cf) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !130
  %i.co = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cp = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.52, i32 noundef %i.bf, i32 noundef %i.bp, i32 noundef %i.bu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !130
  %i.cq = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not47, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cr = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.51, i32 noundef %i.bf, i32 noundef %i.bp, i32 noundef %i.bu, i32 noundef %i.cf) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !130
  %i.cs = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  call void @_ZN5ImGui8EndPopupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  store i32 %.4, ptr %i.f, align 4, !tbaa !432
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.a, %bb.x
  ret void
}

declare void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef, float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef, float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImRect, align 8             ; 11 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %5 = alloca %struct.ImVec4, align 8             ; 14 uses
  %6 = alloca %struct.ImVec4, align 8             ; 7 uses
  %7 = alloca %struct.ImRect, align 16            ; 14 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca %struct.ImVec4, align 4             ; 6 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i8 1, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 147
  %i.h = load i8, ptr %i.g, align 1, !tbaa !123, !range !124, !noundef !125
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.k = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 3 uses
  %.sroa.082.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.l = fcmp oeq float %.sroa.082.0.vec.extract, 0.000000e+00
  %.sroa.082.0.vec.insert = insertelement <2 x float> %3, float %i.k, i64 0
  %.sroa.082.0 = select i1 %i.l, <2 x float> %.sroa.082.0.vec.insert, <2 x float> %3 ; 3 uses
  %.sroa.082.4.vec.extract92 = extractelement <2 x float> %.sroa.082.0, i64 1
  %i.m = fcmp oeq float %.sroa.082.4.vec.extract92, 0.000000e+00
  %.sroa.082.4.vec.insert = insertelement <2 x float> %.sroa.082.0, float %i.k, i64 1
  %.sroa.082.1 = select i1 %i.m, <2 x float> %.sroa.082.4.vec.insert, <2 x float> %.sroa.082.0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %.sroa.082.0.vec.extract87 = extractelement <2 x float> %.sroa.082.1, i64 0 ; 2 uses
  %.sroa.082.4.vec.extract94 = extractelement <2 x float> %.sroa.082.1, i64 1 ; 3 uses
  %i.o = load <2 x float>, ptr %i.n, align 8, !tbaa !130 ; 2 uses
  %i.p = fadd <2 x float> %i.o, %.sroa.082.1
  store <2 x float> %i.o, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> %i.p, ptr %i.q, align 8
  %i.r = fcmp ult float %.sroa.082.4.vec.extract94, %i.k
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 5536
  %i.t = load float, ptr %i.s, align 8, !tbaa !175
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi float [ %i.t, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @_ZN5ImGui8ItemSizeERK6ImRectf(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.u)
  %i.v = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.j, ptr noundef null, i32 noundef 0)
  br i1 %i.v, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.w = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.x = and i32 %2, 2
  %.not = icmp eq i32 %i.x, 0
  %i.y = and i32 %2, -393217
  %spec.select = select i1 %.not, i32 %2, i32 %i.y ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !186
  %i.z = and i32 %spec.select, 268435456
  %.not66 = icmp eq i32 %i.z, 0
  br i1 %.not66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load float, ptr %5, align 8, !tbaa !389
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !387
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !390
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.aa, float noundef %i.ac, float noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load float, ptr %i.af, align 8, !tbaa !390
  %i.ah = load <2 x float>, ptr %5, align 8, !tbaa !130
  store <2 x float> %i.ah, ptr %6, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ag, ptr %i.ai, align 8, !tbaa !390
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !193
  %i.ak = fcmp olt float %.sroa.082.0.vec.extract87, %.sroa.082.4.vec.extract94
  %i.al = select i1 %i.ak, float %.sroa.082.0.vec.extract87, float %.sroa.082.4.vec.extract94
  %i.am = fdiv float %i.al, 2.990000e+00          ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 5540
  %i.ao = load float, ptr %i.an, align 4, !tbaa !176 ; 2 uses
  %i.ap = fmul float %i.am, 5.000000e-01          ; 2 uses
  %i.aq = fcmp olt float %i.ao, %i.ap
  %i.ar = select i1 %i.aq, float %i.ao, float %i.ap ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !186
  %i.as = and i32 %spec.select, 1024
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load <4 x float>, ptr %7, align 16, !tbaa !130
  %i.av = fadd <4 x float> %i.au, <float 7.500000e-01, float 7.500000e-01, float -7.500000e-01, float -7.500000e-01>
  store <4 x float> %i.av, ptr %7, align 16, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.065 = phi float [ -7.500000e-01, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.aw = and i32 %spec.select, 262144
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp olt float %i.az, 1.000000e+00
  %or.cond = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load float, ptr %7, align 16, !tbaa !190 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !191
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float 5.000000e-01, float 5.000000e-01)
  %i.bg = fptosi float %i.bf to i32
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !147
  %i.bk = fadd float %i.am, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !136
  %.sroa.079.0.vec.insert = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.079.4.vec.insert = insertelement <2 x float> %.sroa.079.0.vec.insert, float %i.bm, i64 1
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.bc, align 8
  %i.bn = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.bo = fsub float %.065, %i.am
  %.sroa.077.0.vec.insert = insertelement <2 x float> poison, float %i.bo, i64 0
  %.sroa.077.4.vec.insert = insertelement <2 x float> %.sroa.077.0.vec.insert, float %.065, i64 1
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.bj, <2 x float> %.sroa.079.4.vec.insert, <2 x float> %.sroa.08.0.copyload, i32 noundef %i.bn, float noundef %i.am, <2 x float> %.sroa.077.4.vec.insert, float noundef %i.ar, i32 noundef 160)
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !137
  store float %i.bh, ptr %8, align 4, !tbaa !135
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.br, ptr %i.bs, align 4, !tbaa !140
  %i.bt = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bp, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.bt, float noundef %i.ar, i32 noundef 80)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.bu = and i32 %spec.select, 131072
  %.not67 = icmp eq i32 %i.bu, 0
  %. = select i1 %.not67, ptr %6, ptr %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %., i64 16, i1 false), !tbaa.struct !186
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !193
  %i.bx = fcmp olt float %i.bw, 1.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !147 ; 2 uses
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.07.0.copyload = load <2 x float>, ptr %7, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.ca, align 8
  %i.cb = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  %.sroa.075.0.vec.insert = insertelement <2 x float> poison, float %.065, i64 0
  %.sroa.075.4.vec.insert = shufflevector <2 x float> %.sroa.075.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.bz, <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.06.0.copyload, i32 noundef %i.cb, float noundef %i.am, <2 x float> %.sroa.075.4.vec.insert, float noundef %i.ar, i32 noundef 0)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.cc, i32 noundef %i.cd, float noundef %i.ar, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  call void @_ZN5ImGui18RenderNavHighlightERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.j, i32 noundef 1)
  br i1 %i.at, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 5544
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !442
  %i.cg = fcmp ogt float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.05.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 8
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.ar)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !147
  %i.cj = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.ci, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.q, i32 noundef %i.cj, float noundef %i.ar, i32 noundef 0, float noundef 1.000000e+00)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 7260
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !161
  %i.cm = icmp eq i32 %i.cl, %i.j
  %i.cn = and i32 %spec.select, 512
  %.not68 = icmp eq i32 %i.cn, 0
  %or.cond70 = and i1 %.not68, %i.cm
  br i1 %or.cond70, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.co = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.co, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cp = and i32 %spec.select, 2
  %.not69 = icmp eq i32 %i.cp, 0
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.59, ptr noundef nonnull %5, i64 noundef 12, i32 noundef 2) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cr = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.60, ptr noundef nonnull %5, i64 noundef 16, i32 noundef 2) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cs = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %spec.select, <2 x float> zeroinitializer) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef nonnull @.str.72, ptr noundef null, i32 noundef 0)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t, %bb.s
  %i.ct = and i32 %spec.select, 64
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = load i8, ptr %i.a, align 1, !range !124
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond4 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = and i32 %spec.select, 403046402
  call void @_ZN5ImGui12ColorTooltipEPKcPKfi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.cx)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.aa
  %.0 = phi i1 [ %i.w, %bb.aa ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.1 = phi i1 [ %.0, %bb.ab ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN5ImGui9OpenPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec4, align 8             ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImRect, align 8            ; 6 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImRect, align 8            ; 6 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %13 = alloca %struct.ImVec4, align 8            ; 6 uses
  %14 = alloca %struct.ImVec2, align 8            ; 9 uses
  %i.i = alloca [4 x float], align 16             ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 8 uses
  %16 = alloca %struct.ImVec2, align 4            ; 9 uses
  %17 = alloca %struct.ImVec2, align 4            ; 9 uses
  %18 = alloca %struct.ImVec2, align 4            ; 9 uses
  %i.j = alloca float, align 4                    ; 21 uses
  %i.k = alloca float, align 4                    ; 19 uses
  %i.l = alloca float, align 4                    ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %i.n = alloca float, align 4                    ; 7 uses
  %i.o = alloca float, align 4                    ; 7 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %20 = alloca %struct.ImVec2, align 8            ; 7 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca float, align 4                    ; 3 uses
  %21 = alloca %struct.ImVec4, align 8            ; 6 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %23 = alloca %struct.ImVec2, align 4            ; 5 uses
  %24 = alloca %struct.ImVec4, align 8            ; 6 uses
  %25 = alloca %struct.ImVec4, align 8            ; 6 uses
  %26 = alloca %struct.ImVec4, align 8            ; 6 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca float, align 4                    ; 4 uses
  %i.u = alloca float, align 4                    ; 4 uses
  %i.v = alloca [7 x i32], align 16               ; 10 uses
  %27 = alloca %struct.ImVec4, align 8            ; 8 uses
  %28 = alloca %struct.ImVec4, align 4            ; 7 uses
  %29 = alloca %struct.ImVec2, align 8            ; 8 uses
  %30 = alloca %struct.ImVec2, align 8            ; 6 uses
  %31 = alloca %struct.ImVec2, align 8            ; 5 uses
  %32 = alloca %struct.ImVec2, align 8            ; 5 uses
  %33 = alloca %struct.ImVec2, align 8            ; 6 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %35 = alloca %struct.ImVec2, align 8            ; 4 uses
  %36 = alloca %struct.ImVec2, align 4            ; 25 uses
  %37 = alloca %struct.ImVec2, align 4            ; 25 uses
  %38 = alloca %struct.ImRect, align 8            ; 9 uses
  %i.w = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 22 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 7184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  store i8 1, ptr %i.z, align 8, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 147
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !123, !range !124, !noundef !125
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.dj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 616
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 35 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 5472 ; 4 uses
  %i.ag = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 7348
  store i32 0, ptr %i.ah, align 4, !tbaa !431
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  tail call void @_ZN5ImGui10BeginGroupEv()
  %i.ai = lshr i32 %2, 4
  %i.aj = and i32 %i.ai, 16
  %i.ak = xor i32 %i.aj, 16
end_hunk_3
