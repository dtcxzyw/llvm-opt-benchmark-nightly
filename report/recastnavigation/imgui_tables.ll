Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_tables?download=true
inline.NumInlined: 682
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5ImGui23TableCalcMaxColumnWidthEPK10ImGuiTablei:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !210  ; 2 uses
  %i.r = and i32 %i.q, 16777216
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 86
  %i.t = load i16, ptr %i.s, align 2, !tbaa !296  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.v = load i16, ptr %i.u, align 2, !tbaa !368  ; 2 uses
  %i.w = icmp slt i16 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = sext i16 %i.v to i32
  %i.y = sext i16 %i.t to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load float, ptr %i.z, align 8, !tbaa !369
  %i.ab = sub nsw i32 %i.x, %i.y
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fneg float %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.o, float %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !366
  %i.ah = fsub float %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !238
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fsub float %i.ak, %i.h
  %i.am = fsub float %i.al, %i.n
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.an = and i32 %i.q, 262144
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !370
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 514
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !333
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.av = load i16, ptr %i.au, align 4, !tbaa !338
  %i.aw = xor i16 %i.av, -1
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, %i.at
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fneg float %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.o, float %i.aq)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !366
  %i.be = fsub float %i.bb, %i.bd
  %i.bf = fsub float %i.be, %i.n
  %i.bg = fneg float %i.h
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.000000e+00, float %i.bf)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !238
  %i.bk = fsub float %i.bh, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi float [ %i.am, %bb.c ], [ f0x7F7FFFFF, %bb.b ], [ %i.bk, %bb.e ], [ f0x7F7FFFFF, %bb.d ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui22TableSetupDrawChannelsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((560, 566)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !362
  %i.c = icmp sgt i16 %i.b, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !210
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 514
  %i.h = load i16, ptr %i.g, align 2, !tbaa !333
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  %. = select i1 %.not, i32 %i.i, i32 1           ; 3 uses
  %i.j = select i1 %i.c, i32 3, i32 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !214  ; 2 uses
  %i.m = icmp sgt i32 %i.l, %i.i
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !270
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !269
  %i.r = add nsw i32 %i.l, 31
  %i.s = ashr i32 %i.r, 5
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr %i.q, i64 %i.u)
  %bcmp.fr = freeze i32 %bcmp
  %i.v = icmp ne i32 %bcmp.fr, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %cond.fr = phi i1 [ true, %bb.a ], [ %i.v, %bb.b ] ; 2 uses
  %i.w = zext i1 %cond.fr to i32
  %i.x = zext i1 %i.c to i32
  %i.y = shl nsw i32 %., %i.x
  %i.z = add nsw i32 %i.y, %i.j
  %i.aa = add nsw i32 %i.z, %i.w                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !205
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !212
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 712
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !392
  tail call void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.ag, i32 noundef %i.aa) #4
  %i.ah = trunc i32 %i.aa to i16
  %i.ai = add i16 %i.ah, -1
  %spec.select61 = select i1 %cond.fr, i16 %i.ai, i16 -1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i16 %spec.select61, ptr %i.aj, align 8, !tbaa !533
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i16 1, ptr %i.ak, align 2, !tbaa !394
  %i.al = load i16, ptr %i.a, align 8, !tbaa !362 ; 2 uses
  %i.am = trunc nsw i32 %. to i16
  %i.an = add i16 %i.am, 2
  %.inv = icmp slt i16 %i.al, 1
  %i.ao = select i1 %.inv, i16 1, i16 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i16 %i.ao, ptr %i.ap, align 4, !tbaa !395
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !214 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !262
  %i.au = icmp sgt i16 %i.al, 0
  %i.av = add nsw i32 %., 1
  %i.aw = select i1 %i.au, i32 %i.av, i32 0
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !223
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 608
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !223
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !223
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.04854 = phi i32 [ 2, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [116 x i8], ptr %i.at, i64 %indvars.iv ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 105
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !372, !range !174, !noundef !175
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 106
  %i.bk = load i8, ptr %i.bj, align 2, !range !174
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = trunc i32 %.04854 to i16
  %i.bn = add nsw i32 %.04854, %i.aw
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !210
  %i.bq = lshr i32 %i.bp, 20
  %i.br = and i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 1
  %spec.select = add nsw i32 %i.bs, %.04854
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %spec.select53.sink57 = phi i16 [ %i.bm, %bb.e ], [ %spec.select61, %bb.d ] ; 2 uses
  %spec.select53.sink = phi i16 [ %i.bo, %bb.e ], [ %spec.select61, %bb.d ]
  %.1 = phi i32 [ %spec.select, %bb.e ], [ %.04854, %bb.d ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 98
  store i16 %spec.select53.sink57, ptr %i.bt, align 2, !tbaa !396
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 100
  store i16 %spec.select53.sink, ptr %i.bu, align 4, !tbaa !397
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  store i16 %spec.select53.sink57, ptr %i.bv, align 4, !tbaa !398
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !532
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui18TableUpdateBordersEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 4             ; 8 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.j = sext i16 %i.e to i64
  %i.k = getelementptr [24 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4416
  %i.n = load float, ptr %i.m, align 8, !tbaa !399
  %i.o = fmul float %i.n, 4.000000e+00
  %i.p = fptosi float %i.o to i32
  %i.q = sitofp i32 %i.p to float                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.s = load i16, ptr %i.r, align 8, !tbaa !362
  %i.t = icmp sgt i16 %i.s, 0
  %.in.v = select i1 %i.t, i64 244, i64 276
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.u = load float, ptr %.in, align 4, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load float, ptr %i.v, align 8, !tbaa !250 ; 2 uses
  %i.x = fadd float %i.u, %i.w                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.z = load float, ptr %i.y, align 4, !tbaa !354 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !355
  %i.ac = fadd float %i.x, %i.ab
  %i.ad = fsub float %i.ac, %i.w                  ; 2 uses
  %i.ae = fcmp oge float %i.z, %i.ad
  %i.af = select i1 %i.ae, float %i.z, float %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !385
  %i.ai = fadd float %i.x, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !214 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 571
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 542
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 530
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 122
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 5288
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 524
  br label %bb.d

._crit_edge:                                      ; preds = %bb.v, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.v
  %i.bd = phi i32 [ %i.ak, %.lr.ph ], [ %i.dr, %bb.v ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !268
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %i.bg = lshr i64 %indvars.iv, 5
  %i.bh = and i64 %i.bg, 134217727
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !286
  %i.bk = and i32 %i.bf, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = and i32 %i.bj, %i.bl
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !264
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !287 ; 6 uses
  %i.bq = sext i16 %i.bp to i32
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !262
  %i.bs = sext i16 %i.bp to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [116 x i8], ptr %i.br, i64 %i.bs ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !313
  %i.bv = and i32 %i.bu, 1073741856
  %.not59 = icmp eq i32 %i.bv, 0
  br i1 %.not59, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !210
  %i.bx = and i32 %i.bw, 2048
  %.not60 = icmp eq i32 %i.bx, 0                  ; 2 uses
  %i.by = select i1 %.not60, float %i.af, float %i.ai
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = load i8, ptr %i.aq, align 1, !tbaa !386, !range !174, !noundef !175
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 105
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !372, !range !174, !noundef !175
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load i16, ptr %i.ar, align 4, !tbaa !280
  %.not61 = icmp eq i16 %i.ce, %i.bp
  br i1 %.not61, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cf = load i16, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %_ZN5ImGui22TableGetColumnResizeIDEP10ImGuiTableii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !219
  %i.ci = sext i16 %i.cf to i64
  %i.cj = getelementptr [24 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  br label %_ZN5ImGui22TableGetColumnResizeIDEP10ImGuiTableii.exit

_ZN5ImGui22TableGetColumnResizeIDEP10ImGuiTableii.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi ptr [ %i.ck, %bb.k ], [ %i.at, %bb.j ]
  %i.cl = load i32, ptr %.0.i.i.i, align 4, !tbaa !220
  %i.cm = add nsw i32 %i.bq, 1
  %i.cn = add i32 %i.cm, %i.cl                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !365 ; 2 uses
  %i.cq = fsub float %i.cp, %i.q
  %i.cr = fadd float %i.cp, %i.q
  store float %i.cq, ptr %1, align 4, !tbaa !221
  store float %i.x, ptr %i.au, align 4, !tbaa !222
  store float %i.cr, ptr %i.av, align 4, !tbaa !221
  store float %i.by, ptr %i.aw, align 4, !tbaa !222
  %i.cs = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.cn, ptr noundef null, i32 noundef 2) #4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 0, ptr %i.a, align 1, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i8 0, ptr %i.b, align 1, !tbaa !288
  %i.ct = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.cn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264464) #4
  br i1 %i.ct, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN5ImGui22TableGetColumnResizeIDEP10ImGuiTableii.exit
  %i.cu = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0) #4
  br i1 %i.cu, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !262
  %i.cw = getelementptr inbounds [116 x i8], ptr %i.cv, i64 %i.bs ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 102
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !295, !range !174, !noundef !175
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.n, label %.thread.a

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  store i8 1, ptr %i.da, align 4, !tbaa !337
  store i16 %i.bp, ptr %2, align 8, !tbaa !283
  br label %.thread.a

bb.o:                                             ; preds = %bb.l, %_ZN5ImGui22TableGetColumnResizeIDEP10ImGuiTableii.exit
  %i.db = load i8, ptr %i.b, align 1, !tbaa !288
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.dd = load i16, ptr %i.ar, align 4, !tbaa !280
  %i.de = icmp eq i16 %i.dd, -1
  br i1 %i.de, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.df = load i16, ptr %i.ax, align 2, !tbaa !344 ; 2 uses
  %.not62 = icmp eq i16 %i.df, -1
  br i1 %.not62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.ao, align 8, !tbaa !262
  %i.dh = sext i16 %i.df to i64
  %i.di = getelementptr inbounds [116 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !365
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.dl = phi float [ %i.dk, %bb.r ], [ f0xFF7FFFFF, %bb.q ]
  store float %i.dl, ptr %i.ay, align 8, !tbaa !400
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  store i16 %i.bp, ptr %i.az, align 2, !tbaa !281
  %i.dm = load i16, ptr %i.d, align 8, !tbaa !209
  store i16 %i.dm, ptr %i.ba, align 2, !tbaa !278
  %3 = load i8, ptr %i.a, align 1, !tbaa !288, !range !174, !noundef !175
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.u, label %.thread69

.thread:                                          ; preds = %bb.o
  %5 = load i8, ptr %i.a, align 1, !tbaa !288, !range !174, !noundef !175
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.u, label %.thread63

.thread.a:                                        ; preds = %bb.m, %bb.n
  call void @_ZN5ImGui13ClearActiveIDEv() #4
  store i8 0, ptr %i.b, align 1, !tbaa !288
  %i.dn = load i8, ptr %i.a, align 1, !tbaa !288, !range !174, !noundef !175
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.u, label %.thread63

bb.u:                                             ; preds = %.thread, %.thread.a, %bb.t
  %7 = phi i1 [ false, %.thread.a ], [ true, %bb.t ], [ false, %.thread ]
  %i.dp = load float, ptr %i.bb, align 8, !tbaa !535
  %i.dq = fcmp ogt float %i.dp, 6.000000e-02
  %or.cond = or i1 %7, %i.dq
  br i1 %or.cond, label %.thread69, label %.thread63

.thread69:                                        ; preds = %bb.t, %bb.u
  store i16 %i.bp, ptr %i.bc, align 4, !tbaa !284
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 4) #4
  br label %.thread63

.thread63:                                        ; preds = %.thread, %.thread.a, %bb.u, %.thread69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !214
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.i, %bb.g, %.thread63, %bb.d
  %i.dr = phi i32 [ %i.bd, %bb.e ], [ %i.bd, %bb.i ], [ %i.bd, %bb.g ], [ %.pre, %.thread63 ], [ %i.bd, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.d, label %._crit_edge, !llvm.loop !534
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui26TableBeginContextMenuPopupEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !388, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i16, ptr %i.d, align 8, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.g = load i16, ptr %i.f, align 2, !tbaa !278
  %.not = icmp eq i16 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !211
  %i.i = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.12, i64 noundef 0, i32 noundef %i.h) #4
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %i.i, i32 noundef 321) #4
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 4, !tbaa !388
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui27TableDrawDefaultContextMenuEP10ImGuiTablei(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !173, !range !174, !noundef !175
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.h = load i16, ptr %i.g, align 4, !tbaa !279  ; 3 uses
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  %i.j = icmp sgt i16 %i.h, -1
  br i1 %i.j, label %bb.c, label %.thread66

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !214
  %i.m = icmp sgt i32 %i.l, %i.i
  br i1 %i.m, label %bb.d, label %.thread66

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !262  ; 2 uses
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [116 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.not51 = trunc i32 %1 to i1
  br i1 %.not51, label %bb.e, label %_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable.exit

.thread66:                                        ; preds = %bb.c, %bb.b
  %.not5167 = trunc i32 %1 to i1
  br i1 %.not5167, label %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit, label %_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable.exit

bb.e:                                             ; preds = %bb.d
  %.not52 = icmp eq ptr %i.o, null
  br i1 %.not52, label %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.q, align 4, !tbaa !313
  %i.s = and i32 %i.r, 32
  %.not53 = icmp eq i32 %i.s, 0
  br i1 %.not53, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 102
  %i.u = load i8, ptr %i.t, align 2, !tbaa !295, !range !174, !noundef !175
  %i.v = trunc nuw i8 %i.u to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = phi i1 [ false, %bb.f ], [ %i.v, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 9936
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !537  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  %i.z = select i1 %.not.i, ptr @.str.45, ptr %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull %i.z, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %i.w) #4
  br i1 %i.aa, label %bb.i, label %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !262
  %i.ac = getelementptr inbounds nuw [116 x i8], ptr %i.ab, i64 %i.p ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 102
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !295, !range !174, !noundef !175
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store i8 1, ptr %i.ag, align 4, !tbaa !337
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i16 %i.h, ptr %i.ah, align 8, !tbaa !283
  br label %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit

_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit: ; preds = %.thread66, %bb.j, %bb.i, %bb.h, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !345
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 514
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !333
  %i.am = icmp eq i16 %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit._crit_edge

_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit._crit_edge: ; preds = %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !20
  br label %bb.m

bb.k:                                             ; preds = %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !210
  %i.ap = and i32 %i.ao, 57344
  %.not54 = icmp eq i32 %i.ap, 16384
  %.pre82 = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre82, i64 9944
  br label %bb.n

bb.m:                                             ; preds = %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit._crit_edge, %bb.k
  %i.ar = phi ptr [ %.pre, %_ZN5ImGui29TableSetColumnWidthAutoSingleEP10ImGuiTablei.exit._crit_edge ], [ %.pre82, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 9952
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink86.in = phi ptr [ %i.as, %bb.m ], [ %i.aq, %bb.l ]
  %.sink86 = load ptr, ptr %.sink86.in, align 8, !tbaa !537 ; 2 uses
  %.not.i61 = icmp eq ptr %.sink86, null
  %i.at = select i1 %.not.i61, ptr @.str.45, ptr %.sink86
  %i.au = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull %i.at, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  br i1 %i.au, label %bb.o, label %_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable.exit

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !214 ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable.exit

.lr.ph.i:                                         ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !262 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.aw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ba = icmp eq i32 %i.aw, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.v ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.v ]
  %i.bb = getelementptr inbounds nuw [116 x i8], ptr %i.az, i64 %indvars.iv.i ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 102
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !295, !range !174, !noundef !175
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !313
  %i.bg = and i32 %i.bf, 8
  %.not.i62 = icmp eq i32 %i.bg, 0
  br i1 %.not.i62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store i8 1, ptr %i.bh, align 4, !tbaa !337
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 111
  store i8 2, ptr %i.bi, align 1, !tbaa !317
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw [116 x i8], ptr %i.az, i64 %indvars.iv.i ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui10NextColumnEv:bb.a
  %i.dj = load float, ptr %i.di, align 8, !tbaa !455
  %i.dk = fsub float %i.dj, %i.dh                 ; 2 uses
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.dk, float %i.df, float %i.dh)
  %i.dm = add nsw i32 %i.bf, 1
  %i.dn = icmp slt i32 %i.bf, -1
  br i1 %i.dn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !453
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.010.i54 = phi i32 [ %i.dp, %bb.m ], [ %i.dm, %bb.l ]
  %i.dq = sext i32 %.010.i54 to i64
  %i.dr = getelementptr inbounds [28 x i8], ptr %i.dc, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !459
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.dk, float %i.ds, float %i.dh)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit56

_ZN5ImGui15GetColumnOffsetEi.exit56:              ; preds = %bb.i, %bb.n
  %.0.i5259 = phi float [ %i.dl, %bb.n ], [ 0.000000e+00, %bb.i ]
  %.0.i55 = phi float [ %i.dt, %bb.n ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.du = fsub float %.0.i55, %.0.i5259
  %i.dv = fmul float %i.du, 6.500000e-01
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.dv) #4
  %i.dw = load float, ptr %i.cp, align 8, !tbaa !412
  %i.dx = fadd float %.0.i55, %i.dw
  %i.dy = fsub float %i.dx, %i.ay
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store float %i.dy, ptr %i.dz, align 8, !tbaa !441
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN5ImGui15GetColumnOffsetEi.exit56, %bb.a, %bb.b
  ret void
}

declare void @_ZN5ImGui12PopItemWidthEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui10EndColumnsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 4             ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449  ; 12 uses
  tail call void @_ZN5ImGui12PopItemWidthEv() #4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !454
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui11PopClipRectEv() #4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !392
  tail call void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.n) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !460  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !469 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 284 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !419 ; 2 uses
  %i.u = fcmp oge float %i.r, %i.t
  %i.v = select i1 %i.u, float %i.r, float %i.t   ; 4 uses
  store float %i.v, ptr %i.q, align 8, !tbaa !469
  store float %i.v, ptr %i.s, align 4, !tbaa !419
  %i.w = and i32 %i.p, 16
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load float, ptr %i.x, align 8, !tbaa !466
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store float %i.y, ptr %i.z, align 8, !tbaa !409
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = and i32 %i.p, 1
  %.not77 = icmp eq i32 %i.aa, 0
  br i1 %.not77, label %bb.f, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !173, !range !174, !noundef !175
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !465 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 612
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !442 ; 2 uses
  %i.ai = fcmp oge float %i.af, %i.ah
  %i.aj = select i1 %i.ai, float %i.af, float %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 620
  %i.al = load float, ptr %i.ak, align 4, !tbaa !677 ; 2 uses
  %i.am = fcmp olt float %i.v, %i.al
  %i.an = select i1 %i.am, float %i.v, float %i.al ; 2 uses
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !454
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4416
  %.sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = and i32 %i.p, 2
  %.not80 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.aw = fadd float %i.aj, 1.000000e+00
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.h

._crit_edge:                                      ; preds = %bb.o
  %.not78.not = icmp eq i32 %.2, -1
  br i1 %.not78.not, label %._crit_edge.thread, label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.07487 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.o ] ; 3 uses
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !457
  %i.ba = getelementptr inbounds nuw [28 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load float, ptr %i.ar, align 8, !tbaa !412
  %i.bc = load ptr, ptr @GImGui, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 5184
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !148
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 456
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !449 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN5ImGui15GetColumnOffsetEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !457
  %i.bk = getelementptr inbounds nuw [28 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !459
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !456 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !455
  %i.bq = fsub float %i.bp, %i.bn
  %i.br = call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bl, float %i.bn)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit

_ZN5ImGui15GetColumnOffsetEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi float [ %i.br, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bs = fadd float %i.bb, %.0.i                 ; 3 uses
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !464
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bv = add i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = load float, ptr %i.as, align 8, !tbaa !399
  %i.bx = fmul float %i.bw, 4.000000e+00
  %i.by = fptosi float %i.bx to i32
  %i.bz = sitofp i32 %i.by to float               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.ca = fsub float %i.bs, %i.bz
  %i.cb = fadd float %i.bs, %i.bz
  store float %i.ca, ptr %0, align 4, !tbaa !176
  store float %i.aj, ptr %.sroa_idx84, align 4, !tbaa !176
  store float %i.cb, ptr %i.at, align 4, !tbaa !176
  store float %i.an, ptr %.sroa_idx83, align 4, !tbaa !176
  %i.cc = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bv, ptr noundef null, i32 noundef 2) #4
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 0, ptr %i.a, align 1, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i8 0, ptr %i.b, align 1, !tbaa !288
  br i1 %.not80, label %bb.k, label %.thread108

bb.k:                                             ; preds = %bb.j
  %i.cd = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #4 ; 0 uses
  %i.ce = load i8, ptr %i.a, align 1, !tbaa !288, !range !174, !noundef !175
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i8, ptr %i.b, align 1, !range !174
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond, label %bb.l, label %.thread108

bb.l:                                             ; preds = %bb.k
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 4) #4
  %.pre = load i8, ptr %i.b, align 1, !tbaa !288
  %i.ci = trunc nuw i8 %.pre to i1
  br i1 %i.ci, label %bb.m, label %.thread108

.thread108:                                       ; preds = %bb.j, %bb.l, %bb.k
  %i.cj = load i8, ptr %i.a, align 1, !range !174
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = select i1 %i.ck, i32 28, i32 27
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !678
  %i.co = and i32 %i.cn, 2
  %.not81 = icmp eq i32 %i.co, 0
  %spec.select = select i1 %.not81, i32 %i.bu, i32 %.07487
  br label %bb.n

bb.n:                                             ; preds = %.thread108, %bb.m
  %.1110 = phi i32 [ %spec.select, %bb.m ], [ %.07487, %.thread108 ]
  %i.cp = phi i32 [ 29, %bb.m ], [ %i.cl, %.thread108 ]
  %i.cq = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.cp, float noundef 1.000000e+00) #4
  %i.cr = fptosi float %i.bs to i32
  %i.cs = sitofp i32 %i.cr to float               ; 2 uses
  %i.ct = load ptr, ptr %i.av, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store float %i.cs, ptr %1, align 4, !tbaa !221
  store float %i.aw, ptr %i.ax, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  store float %i.cs, ptr %2, align 4, !tbaa !221
  store float %i.an, ptr %i.ay, align 4, !tbaa !222
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ct, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.cq, float noundef 1.000000e+00) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit, %bb.n
  %.2 = phi i32 [ %.1110, %bb.n ], [ %.07487, %_ZN5ImGui15GetColumnOffsetEi.exit ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !454 ; 4 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %bb.h, label %._crit_edge, !llvm.loop !674

bb.p:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 9 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !462, !range !174, !noundef !175
  %i.cz = trunc nuw i8 %i.cy to i1
  %.not7991 = icmp slt i32 %i.cu, 0
  %or.cond94 = or i1 %.not7991, %i.cz
  br i1 %or.cond94, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !457 ; 5 uses
  %i.dc = add nuw i32 %i.cu, 1
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.dd = icmp ult i32 %i.cu, 3
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph93.new

.lr.ph93.new:                                     ; preds = %.lr.ph93
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph93.new
  %indvars.iv97 = phi i64 [ 0, %.lr.ph93.new ], [ %indvars.iv.next98.3, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph93.new ], [ %niter.next.3, %bb.q ]
  %i.de = getelementptr inbounds nuw [28 x i8], ptr %i.db, i64 %indvars.iv97 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !459
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !463
  %i.dh = getelementptr inbounds nuw [28 x i8], ptr %i.db, i64 %indvars.iv97 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load float, ptr %i.di, align 4, !tbaa !459
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store float %i.dj, ptr %i.dk, align 4, !tbaa !463
  %i.dl = getelementptr inbounds nuw [28 x i8], ptr %i.db, i64 %indvars.iv97 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !459
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 60
  store float %i.dn, ptr %i.do, align 4, !tbaa !463
  %i.dp = getelementptr inbounds nuw [28 x i8], ptr %i.db, i64 %indvars.iv97 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 84
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !459
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store float %i.dr, ptr %i.ds, align 4, !tbaa !463
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !675

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93
  %indvars.iv97.epil.init = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next98.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv97.epil = phi i64 [ %indvars.iv97.epil.init, %.epil.preheader ], [ %indvars.iv.next98.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dt = getelementptr inbounds nuw [28 x i8], ptr %i.db, i64 %indvars.iv97.epil ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !459
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %i.du, ptr %i.dv, align 4, !tbaa !463
  %indvars.iv.next98.epil = add nuw nsw i64 %indvars.iv97.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !676

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.r, %bb.p
  store i8 1, ptr %i.cx, align 1, !tbaa !462
  %i.dw = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 5184
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !148 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 224
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !358
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 5320
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !413
  %i.ed = fsub float %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 4416
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !399
  %i.eg = fmul float %i.ef, 4.000000e+00
  %i.eh = fptosi float %i.eg to i32
  %i.ei = sitofp i32 %i.eh to float
  %i.ej = fadd float %i.ed, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.el = load float, ptr %i.ek, align 8, !tbaa !412
  %i.em = fsub float %i.ej, %i.el                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 456
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !449 ; 9 uses
  %i.ep = icmp eq ptr %i.eo, null                 ; 2 uses
  br i1 %i.ep, label %_ZN5ImGui15GetColumnOffsetEi.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.eq = add nsw i32 %.2, -1
  %i.er = icmp slt i32 %.2, 1
  br i1 %i.er, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !453
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.010.i.i = phi i32 [ %i.et, %bb.t ], [ %i.eq, %bb.s ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !457
  %i.ew = sext i32 %.010.i.i to i64
  %i.ex = getelementptr inbounds [28 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !459
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !456 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !455
  %i.fd = fsub float %i.fc, %i.fa
  %i.fe = call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.ey, float %i.fa)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit.i

_ZN5ImGui15GetColumnOffsetEi.exit.i:              ; preds = %bb.u, %.loopexit
  %.0.i.i = phi float [ %i.fe, %bb.u ], [ 0.000000e+00, %.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 3264
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !461 ; 2 uses
  %i.fh = fadd float %.0.i.i, %i.fg               ; 2 uses
  %i.fi = fcmp oge float %i.em, %i.fh
  %i.fj = select i1 %i.fi, float %i.em, float %i.fh ; 3 uses
  %i.fk = load i32, ptr %i.o, align 4, !tbaa !460
  %i.fl = and i32 %i.fk, 4
  %.not.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i, label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i
  br i1 %i.ep, label %_ZN5ImGui15GetColumnOffsetEi.exit14.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fm = add nuw nsw i32 %.2, 1
  %i.fn = icmp slt i32 %.2, -1
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !453
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.010.i12.i = phi i32 [ %i.fp, %bb.x ], [ %i.fm, %bb.w ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !457
  %i.fs = sext i32 %.010.i12.i to i64
  %i.ft = getelementptr inbounds [28 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !459
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !456 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
end_hunk_1
