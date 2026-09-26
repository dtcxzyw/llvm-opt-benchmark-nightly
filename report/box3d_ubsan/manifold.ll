Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/manifold?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0
@33 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 180, i32 4 } }
@34 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 180, i32 4 }, ptr @23, i8 2, i8 1 }
@35 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 13 }, ptr @20 }
@36 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 184, i32 4 } }
@37 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 184, i32 4 }, ptr @23, i8 2, i8 1 }
@38 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 185, i32 13 }, ptr @20 }
@.src.2 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/../include/box3d/collision.h\00", align 1
@39 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'const b3HullData' (aka 'const struct b3HullData')\00" }
@40 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 137, i32 13 }, ptr @39, i8 3, i8 3 }
@41 = private unnamed_addr constant { i16, i16, [24 x i8] } { i16 0, i16 13, [24 x i8] c"'intptr_t' (aka 'long')\00" }
@42 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.2, i32 142, i32 47 }, ptr @41 }
@43 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.2, i32 164, i32 49 }, ptr @41 }
@44 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.2, i32 175, i32 42 }, ptr @41 }
@45 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src.2, i32 153, i32 41 }, ptr @41 }

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 256) i32 @b3FindIncidentFace(ptr noundef %0, <2 x float> %1, float %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !16 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 10 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.b) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %b3GetHullVertices.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !9 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.f, !prof !12, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @42, i64 %i.b, i64 %i.i) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9
  %i.m = inttoptr i64 %i.l to ptr
  br label %b3GetHullVertices.exit

b3GetHullVertices.exit:                           ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %b3GetHullEdges.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullVertices.exit
  %i.q = sext i32 %i.o to i64                     ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.q), !nosanitize !9 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1, !nosanitize !9
  br i1 %i.s, label %bb.h, label %bb.i, !prof !12, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @43, i64 %i.b, i64 %i.q) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.t = extractvalue { i64, i1 } %i.r, 0, !nosanitize !9
  %i.u = inttoptr i64 %i.t to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %b3GetHullVertices.exit, %bb.i
  %.0.i103 = phi ptr [ %i.u, %bb.i ], [ null, %b3GetHullVertices.exit ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %b3GetHullPlanes.exit, label %bb.j

bb.j:                                             ; preds = %b3GetHullEdges.exit
  %i.y = sext i32 %i.w to i64                     ; 2 uses
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.y), !nosanitize !9 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1, !nosanitize !9
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !12, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @44, i64 %i.b, i64 %i.y) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { i64, i1 } %i.z, 0, !nosanitize !9
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %b3GetHullEdges.exit, %bb.l
  %.0.i104 = phi ptr [ %i.ac, %bb.l ], [ null, %b3GetHullEdges.exit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %b3GetHullPoints.exit, label %bb.m

bb.m:                                             ; preds = %b3GetHullPlanes.exit
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.ag), !nosanitize !9 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1, !nosanitize !9
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !12, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @45, i64 %i.b, i64 %i.ag) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.aj = extractvalue { i64, i1 } %i.ah, 0, !nosanitize !9
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullPlanes.exit, %bb.o
  %.0.i105 = phi ptr [ %i.ak, %bb.o ], [ null, %b3GetHullPlanes.exit ] ; 4 uses
  %i.al = sext i32 %3 to i64                      ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.0.i, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 3 uses
  %i.ao = add i64 %i.an, %i.al, !nosanitize !9    ; 3 uses
  %i.ap = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !9
  %i.at = icmp slt i32 %3, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !9
  br i1 %i.av, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @0, i64 %i.an, i64 %i.ao) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %b3GetHullPoints.exit
  br i1 %i.ap, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  %i.aw = ptrtoint ptr %i.am to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.aw) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr %i.am, align 1, !tbaa !27  ; 3 uses
  %i.ay = zext i8 %i.ax to i64                    ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0.i103, i64 %i.ay ; 2 uses
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = ptrtoint ptr %.0.i103 to i64, !nosanitize !9 ; 15 uses
  %i.bc = add i64 %i.ba, %i.bb, !nosanitize !9    ; 3 uses
  %i.bd = icmp ne ptr %.0.i103, null, !nosanitize !9 ; 2 uses
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = xor i1 %i.bd, %i.be
  %i.bg = icmp uge i64 %i.bc, %i.bb, !nosanitize !9
  %i.bh = and i1 %i.bg, %i.bf, !nosanitize !9
  br i1 %i.bh, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @3, i64 %i.bb, i64 %i.bc) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  br i1 %i.bd, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.bi = ptrtoint ptr %i.az to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @5, i64 %i.bi) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %.0.i105, i64 %i.bl ; 3 uses
  %i.bn = mul nuw nsw i64 %i.bl, 12
  %i.bo = ptrtoint ptr %.0.i105 to i64, !nosanitize !9 ; 6 uses
  %i.bp = add i64 %i.bn, %i.bo, !nosanitize !9    ; 3 uses
  %i.bq = icmp ne ptr %.0.i105, null, !nosanitize !9 ; 2 uses
  %i.br = icmp eq i64 %i.bp, 0
  %i.bs = xor i1 %i.bq, %i.br
  %i.bt = icmp uge i64 %i.bp, %i.bo, !nosanitize !9
  %i.bu = and i1 %i.bt, %i.bs, !nosanitize !9
  br i1 %i.bu, label %bb.y, label %bb.x, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @6, i64 %i.bo, i64 %i.bp) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  %i.bv = ptrtoint ptr %i.bm to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  %i.by = and i1 %i.bq, %i.bx
  br i1 %i.by, label %bb.aa, label %bb.z, !prof !10, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.bv) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.bm, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.443.0.copyload = load float, ptr %.sroa.443.0..sroa_idx, align 4, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ak, %bb.aa
  %i.bz = phi i64 [ %i.ay, %bb.aa ], [ %i.dd, %bb.ak ]
  %.078.in = phi i8 [ %i.ax, %bb.aa ], [ %i.dc, %bb.ak ]
  %.076 = phi float [ f0x7F7FFFFF, %bb.aa ], [ %.177, %bb.ak ] ; 2 uses
  %.0 = phi i32 [ -1, %bb.aa ], [ %.1, %bb.ak ]
  %.078 = zext i8 %.078.in to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i103, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !30
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0.i103, i64 %i.cd ; 2 uses
  %i.cf = shl nuw nsw i64 %i.cd, 2
  %i.cg = add i64 %i.cf, %i.bb, !nosanitize !9    ; 2 uses
  %.not122 = icmp ult i64 %i.cg, %i.bb, !nosanitize !9
  br i1 %.not122, label %bb.ac, label %bb.ad, !prof !12, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @9, i64 %i.bb, i64 %i.cg) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  %i.cj = zext i8 %i.ci to i64                    ; 2 uses
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %.0.i105, i64 %i.cj ; 3 uses
  %i.cl = mul nuw nsw i64 %i.cj, 12
  %i.cm = add i64 %i.cl, %i.bo, !nosanitize !9    ; 2 uses
  %.not123 = icmp ult i64 %i.cm, %i.bo, !nosanitize !9
  br i1 %.not123, label %bb.ae, label %bb.af, !prof !12, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @10, i64 %i.bo, i64 %i.cm) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %i.cn = ptrtoint ptr %i.ck to i64, !nosanitize !9 ; 2 uses
  %i.co = and i64 %i.cn, 3, !nosanitize !9
  %i.cp = icmp eq i64 %i.co, 0, !nosanitize !9
  br i1 %i.cp, label %bb.ah, label %bb.ag, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.cn) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.ck, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.439.0.copyload = load float, ptr %.sroa.439.0..sroa_idx, align 4, !tbaa !13
  %i.cq = fsub <2 x float> %.sroa.038.0.copyload, %.sroa.042.0.copyload ; 3 uses
  %i.cr = fsub float %.sroa.439.0.copyload, %.sroa.443.0.copyload ; 3 uses
  %i.cs = fmul <2 x float> %i.cq, %i.cq           ; 2 uses
  %shift = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cs, %shift
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cu = fmul float %i.cr, %i.cr
  %i.cv = fadd float %i.cu, %i.ct                 ; 2 uses
  %i.cw = fcmp ogt float %i.cv, f0x057A0000
  br i1 %i.cw, label %bb.ai, label %b3Normalize.exit

bb.ai:                                            ; preds = %bb.ah
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cv)
  %i.cx = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cq, %i.cz
  %i.db = fmul float %i.cr, %i.cx
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.ah, %bb.ai
  %.sroa.07.0.i = phi <2 x float> [ %i.da, %bb.ai ], [ zeroinitializer, %bb.ah ]
  %.sroa.5.0.i = phi float [ %i.db, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %i.dc = load i8, ptr %i.ce, align 1, !tbaa !31  ; 3 uses
  %i.dd = zext i8 %i.dc to i64                    ; 2 uses
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = add i64 %i.de, %i.bb, !nosanitize !9    ; 2 uses
  %.not124 = icmp ult i64 %i.df, %i.bb, !nosanitize !9
  br i1 %.not124, label %bb.aj, label %bb.ak, !prof !12, !nosanitize !9

bb.aj:                                            ; preds = %b3Normalize.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @12, i64 %i.bb, i64 %i.df) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %b3Normalize.exit
  %i.dg = fmul float %2, %.sroa.5.0.i
  %i.dh = fmul <2 x float> %1, %.sroa.07.0.i      ; 2 uses
  %shift288 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop289 = fadd <2 x float> %i.dh, %shift288
  %i.di = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %i.dj = fadd float %i.dg, %i.di                 ; 3 uses
  %i.dk = fcmp olt float %i.dj, 0.000000e+00
  %i.dl = fneg float %i.dj
  %i.dm = select i1 %i.dk, float %i.dl, float %i.dj ; 2 uses
  %i.dn = fcmp olt float %i.dm, %.076             ; 2 uses
  %.1 = select i1 %i.dn, i32 %.078, i32 %.0       ; 3 uses
  %.177 = select i1 %i.dn, float %i.dm, float %.076
  %.not99 = icmp eq i8 %i.dc, %i.ax
  br i1 %.not99, label %bb.al, label %bb.ab, !llvm.loop !15

bb.al:                                            ; preds = %bb.ak
  %i.do = sext i32 %.1 to i64                     ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %.0.i103, i64 %i.do ; 2 uses
  %i.dq = shl nsw i64 %i.do, 2
  %i.dr = add i64 %i.dq, %i.bb, !nosanitize !9    ; 3 uses
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = icmp uge i64 %i.dr, %i.bb, !nosanitize !9
  %i.du = icmp slt i32 %.1, 0
  %i.dv = xor i1 %i.du, %i.dt
  %i.dw = and i1 %i.ds, %i.dv, !nosanitize !9
  br i1 %i.dw, label %bb.an, label %bb.am, !prof !10, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @13, i64 %i.bb, i64 %i.dr) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !32  ; 2 uses
  %i.dz = zext i8 %i.dy to i64                    ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.0.i104, i64 %i.dz ; 3 uses
  %i.eb = shl nuw nsw i64 %i.dz, 4
  %i.ec = ptrtoint ptr %.0.i104 to i64, !nosanitize !9 ; 6 uses
  %i.ed = add i64 %i.eb, %i.ec, !nosanitize !9    ; 3 uses
  %i.ee = icmp ne ptr %.0.i104, null, !nosanitize !9 ; 2 uses
  %i.ef = icmp eq i64 %i.ed, 0
  %i.eg = xor i1 %i.ee, %i.ef
  %i.eh = icmp uge i64 %i.ed, %i.ec, !nosanitize !9
  %i.ei = and i1 %i.eh, %i.eg, !nosanitize !9
  br i1 %i.ei, label %bb.ap, label %bb.ao, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.ec, i64 %i.ed) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %i.ej = ptrtoint ptr %i.ea to i64, !nosanitize !9 ; 2 uses
  %i.ek = and i64 %i.ej, 3, !nosanitize !9
  %i.el = icmp eq i64 %i.ek, 0, !nosanitize !9
  %i.em = and i1 %i.ee, %i.el
  br i1 %i.em, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @16, i64 %i.ej) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.ea, align 4
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.410.0.copyload = load float, ptr %.sroa.410.0..sroa_idx, align 4, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !30
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 2
  %i.er = add i64 %i.eq, %i.bb, !nosanitize !9    ; 2 uses
  %.not125 = icmp ult i64 %i.er, %i.bb, !nosanitize !9
  br i1 %.not125, label %bb.as, label %bb.at, !prof !12, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.bb, i64 %i.er) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0.i103, i64 %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 3
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32  ; 2 uses
  %i.ev = zext i8 %i.eu to i64                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.0.i104, i64 %i.ev ; 3 uses
  %i.ex = shl nuw nsw i64 %i.ev, 4
  %i.ey = add i64 %i.ex, %i.ec, !nosanitize !9    ; 2 uses
  %.not126 = icmp ult i64 %i.ey, %i.ec, !nosanitize !9
  br i1 %.not126, label %bb.au, label %bb.av, !prof !12, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @18, i64 %i.ec, i64 %i.ey) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.at
  %i.ez = ptrtoint ptr %i.ew to i64, !nosanitize !9 ; 2 uses
  %i.fa = and i64 %i.ez, 3, !nosanitize !9
  %i.fb = icmp eq i64 %i.fa, 0, !nosanitize !9
  br i1 %i.fb, label %bb.ax, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @19, i64 %i.ez) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ew, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  %i.fc = fmul <2 x float> %1, %.sroa.09.0.copyload ; 2 uses
  %shift291 = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop292 = fadd <2 x float> %i.fc, %shift291
  %i.fd = extractelement <2 x float> %foldExtExtBinop292, i64 0
  %i.fe = fmul float %2, %.sroa.410.0.copyload
  %i.ff = fadd float %i.fe, %i.fd
  %i.fg = fmul <2 x float> %1, %.sroa.07.0.copyload ; 2 uses
  %shift294 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop295 = fadd <2 x float> %i.fg, %shift294
  %i.fh = extractelement <2 x float> %foldExtExtBinop295, i64 0
  %i.fi = fmul float %2, %.sroa.4.0.copyload
  %i.fj = fadd float %i.fi, %i.fh
  %i.fk = fcmp olt float %i.ff, %i.fj
  %.v = select i1 %i.fk, i8 %i.dy, i8 %i.eu
  %i.fl = zext i8 %.v to i32
  ret i32 %i.fl
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @b3MakeFeaturePair(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !func_sanitize !33 {
bb.a:
  %.sroa.4.0.insert.ext = shl i32 %3, 24
  %.sroa.3.0.insert.ext = shl i32 %2, 16
  %.sroa.3.0.insert.shift = and i32 %.sroa.3.0.insert.ext, 16711680
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.ext, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = shl i32 %1, 8
  %.sroa.2.0.insert.shift = and i32 %.sroa.2.0.insert.ext, 65280
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %0, 255
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @b3FlipPair(i32 %0) local_unnamed_addr #3 !func_sanitize !34 {
bb.a:
  %.sroa.8.0.extract.shift = lshr i32 %0, 16      ; 2 uses
  %i.a = sub nsw i32 1, %.sroa.8.0.extract.shift
  %i.b = shl i32 %0, 16                           ; 2 uses
  %.sroa.12.0.insert.ext = and i32 %i.b, -16777216
  %.sroa.8.0.insert.ext = sub i32 65536, %i.b
  %.sroa.8.0.insert.shift = and i32 %.sroa.8.0.insert.ext, 16711680
  %.sroa.6.0.insert.shift = and i32 %.sroa.8.0.extract.shift, 65280
  %.sroa.02.0.insert.ext = and i32 %i.a, 255
  %.sroa.8.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.12.0.insert.ext
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.8.0.insert.insert, %.sroa.8.0.insert.shift
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.02.0.insert.ext
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @b3ClipPolygon(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3, <2 x float> %4, i32 noundef %5, <2 x float> %6, <2 x float> %7) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1, !nosanitize !9
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @21, i64 %i.c, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i1 } %i.a, 0, !nosanitize !9 ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [20 x i8], ptr %1, i64 %i.e ; 4 uses
  %i.g = mul nsw i64 %i.e, 20
  %i.h = ptrtoint ptr %1 to i64, !nosanitize !9   ; 6 uses
  %i.i = add i64 %i.g, %i.h, !nosanitize !9       ; 3 uses
  %i.j = icmp ne ptr %1, null, !nosanitize !9     ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  %i.l = xor i1 %i.j, %i.k
  %i.m = icmp uge i64 %i.i, %i.h, !nosanitize !9
  %i.n = icmp slt i32 %i.d, 0
  %i.o = xor i1 %i.n, %i.m
  %i.p = and i1 %i.l, %i.o, !nosanitize !9
  br i1 %i.p, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @22, i64 %i.h, i64 %i.i) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.f to i64, !nosanitize !9 ; 2 uses
  %i.r = and i64 %i.q, 3, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  %i.t = and i1 %i.j, %i.s
  br i1 %i.t, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @24, i64 %i.q) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %.sroa.1.12.vec.extract.i = extractelement <2 x float> %4, i64 1 ; 2 uses
  %i.u = icmp sgt i32 %2, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %.sroa.1.8.vec.extract.i = extractelement <2 x float> %4, i64 0
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !13 ; 2 uses
  %i.v = fmul float %.sroa.1.8.vec.extract.i, %.sroa.8.0.copyload
  %.sroa.0171.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 2 uses
  %i.w = fmul <2 x float> %3, %.sroa.0171.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.w, %shift
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = fadd float %i.v, %i.x
  %i.z = fsub float %i.y, %.sroa.1.12.vec.extract.i
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.1.8.vec.extract.i135 = extractelement <2 x float> %7, i64 0 ; 2 uses
  %.sroa.1.12.vec.extract.i140 = extractelement <2 x float> %7, i64 1 ; 2 uses
  %.sroa.6.17.insert.ext = shl i32 %5, 8
  %.sroa.6.17.insert.shift = and i32 %.sroa.6.17.insert.ext, 65280
  %i.aa = ptrtoint ptr %0 to i64                  ; 12 uses
  %i.ab = icmp ne ptr %0, null                    ; 6 uses
  %.sroa.6145.19.insert.ext = shl i32 %5, 24
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.ap, %bb.g
  %.091.lcssa = phi i32 [ 0, %bb.g ], [ %.1, %bb.ap ]
  ret i32 %.091.lcssa

bb.h:                                             ; preds = %.lr.ph, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %.0262 = phi float [ %i.z, %.lr.ph ], [ %i.am, %bb.ap ] ; 6 uses
  %.091261 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ap ] ; 13 uses
  %.sroa.0171.0259 = phi <2 x float> [ %.sroa.0171.0.copyload, %.lr.ph ], [ %.sroa.0146.0.copyload, %bb.ap ] ; 4 uses
  %.sroa.8.0258 = phi float [ %.sroa.8.0.copyload, %.lr.ph ], [ %i.aj, %bb.ap ] ; 4 uses
  %.sroa.14.0257 = phi i32 [ %.sroa.14.0.copyload, %.lr.ph ], [ %.sroa.12164.0.copyload, %bb.ap ]
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.ad = mul nuw nsw i64 %indvars.iv, 20
  %i.ae = add i64 %i.ad, %i.h, !nosanitize !9     ; 2 uses
  %.not = icmp ult i64 %i.ae, %i.h, !nosanitize !9
  br i1 %.not, label %bb.i, label %bb.j, !prof !12, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %i.h, i64 %i.ae) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.af = ptrtoint ptr %i.ac to i64, !nosanitize !9 ; 2 uses
  %i.ag = and i64 %i.af, 3, !nosanitize !9
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !9
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @26, i64 %i.af) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %.sroa.0146.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !13 ; 4 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %.sroa.12164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.12164.0.copyload = load i32, ptr %.sroa.12164.0..sroa_idx, align 4 ; 4 uses
  %i.ak = fmul <2 x float> %3, %.sroa.0146.0.copyload ; 2 uses
  %shift487 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop488 = fadd <2 x float> %i.ak, %shift487
  %foldExtExtBinop490 = fmul <2 x float> %4, %i.ai
  %foldExtExtBinop492 = fadd <2 x float> %foldExtExtBinop490, %foldExtExtBinop488
  %i.al = extractelement <2 x float> %foldExtExtBinop492, i64 0
  %i.am = fsub float %i.al, %.sroa.1.12.vec.extract.i ; 5 uses
  %i.an = fcmp ole float %.0262, 0.000000e+00     ; 2 uses
  %i.ao = fcmp ole float %i.am, 0.000000e+00      ; 2 uses
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ap = sext i32 %.091261 to i64                ; 2 uses
  %i.aq = getelementptr inbounds [20 x i8], ptr %0, i64 %i.ap ; 4 uses
  %i.ar = mul nsw i64 %i.ap, 20
  %i.as = add i64 %i.ar, %i.aa, !nosanitize !9    ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = xor i1 %i.ab, %i.at
  %i.av = icmp uge i64 %i.as, %i.aa, !nosanitize !9
  %i.aw = icmp slt i32 %.091261, 0
  %i.ax = xor i1 %i.aw, %i.av
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !9
  br i1 %i.ay, label %bb.o, label %bb.n, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @27, i64 %i.aa, i64 %i.as) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.az = ptrtoint ptr %i.aq to i64, !nosanitize !9 ; 2 uses
  %i.ba = and i64 %i.az, 3, !nosanitize !9
  %i.bb = icmp eq i64 %i.ba, 0, !nosanitize !9
  %i.bc = and i1 %i.ab, %i.bb
  br i1 %i.bc, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @28, i64 %i.az) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  store <2 x float> %.sroa.0146.0.copyload, ptr %i.aq, align 4
  %.sroa.9.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store <2 x float> %i.ai, ptr %.sroa.9.0..sroa_idx152, align 4, !tbaa !13
  %.sroa.12164.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 %.sroa.12164.0.copyload, ptr %.sroa.12164.0..sroa_idx165, align 4
  %i.bd = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.091261, i32 1), !nosanitize !9 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 1, !nosanitize !9
  br i1 %i.be, label %bb.r, label %bb.s, !prof !12, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  %i.bf = zext nneg i32 %.091261 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @29, i64 %i.bf, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.bg = extractvalue { i32, i1 } %i.bd, 0, !nosanitize !9
  br label %bb.ap

bb.t:                                             ; preds = %bb.l
  %i.bh = fcmp ogt float %i.am, 0.000000e+00
  %or.cond3 = select i1 %i.an, i1 %i.bh, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bi = fsub float %.0262, %i.am
  %i.bj = fdiv float %.0262, %i.bi                ; 2 uses
  %i.bk = fsub float %i.aj, %.sroa.8.0258
  %i.bl = fsub <2 x float> %.sroa.0146.0.copyload, %.sroa.0171.0259
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bl, %i.bn
  %i.bp = fadd <2 x float> %.sroa.0171.0259, %i.bo ; 3 uses
  %i.bq = fmul float %i.bk, %i.bj
  %i.br = fadd float %.sroa.8.0258, %i.bq         ; 2 uses
  %foldExtExtBinop494 = fmul <2 x float> %6, %i.bp
  %foldExtExtBinop496 = fmul <2 x float> %6, %i.bp
  %shift498 = shufflevector <2 x float> %foldExtExtBinop496, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop499 = fadd <2 x float> %foldExtExtBinop494, %shift498
  %i.bs = extractelement <2 x float> %foldExtExtBinop499, i64 0
  %i.bt = fmul float %.sroa.1.8.vec.extract.i135, %i.br
  %i.bu = fadd float %i.bt, %i.bs
  %i.bv = fsub float %i.bu, %.sroa.1.12.vec.extract.i140
  %.sroa.6145.19.insert.mask = and i32 %.sroa.12164.0.copyload, 65535
  %.sroa.6145.19.insert.insert = or disjoint i32 %.sroa.6145.19.insert.mask, %.sroa.6145.19.insert.ext
  %i.bw = sext i32 %.091261 to i64                ; 2 uses
  %i.bx = getelementptr inbounds [20 x i8], ptr %0, i64 %i.bw ; 5 uses
  %i.by = mul nsw i64 %i.bw, 20
  %i.bz = add i64 %i.by, %i.aa, !nosanitize !9    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = xor i1 %i.ab, %i.ca
  %i.cc = icmp uge i64 %i.bz, %i.aa, !nosanitize !9
  %i.cd = icmp slt i32 %.091261, 0
  %i.ce = xor i1 %i.cd, %i.cc
  %i.cf = and i1 %i.cb, %i.ce, !nosanitize !9
  br i1 %i.cf, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.aa, i64 %i.bz) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.cg = ptrtoint ptr %i.bx to i64, !nosanitize !9 ; 2 uses
  %i.ch = and i64 %i.cg, 3, !nosanitize !9
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !9
  %i.cj = and i1 %i.ab, %i.ci
  br i1 %i.cj, label %bb.y, label %bb.x, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @31, i64 %i.cg) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  store <2 x float> %i.bp, ptr %i.bx, align 4
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.br, ptr %.sroa.4143.0..sroa_idx, align 4, !tbaa !13
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store float %i.bv, ptr %.sroa.5144.0..sroa_idx, align 4, !tbaa !13
  %.sroa.6145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 %.sroa.6145.19.insert.insert, ptr %.sroa.6145.0..sroa_idx, align 4
  %i.ck = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.091261, i32 1), !nosanitize !9 ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 1, !nosanitize !9
  br i1 %i.cl, label %bb.z, label %bb.aa, !prof !12, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  %i.cm = zext nneg i32 %.091261 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @32, i64 %i.cm, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %i.cn = extractvalue { i32, i1 } %i.ck, 0, !nosanitize !9
  br label %bb.ap

bb.ab:                                            ; preds = %bb.t
  %i.co = fcmp ogt float %.0262, 0.000000e+00
  %or.cond5 = select i1 %i.ao, i1 %i.co, i1 false
  br i1 %or.cond5, label %bb.ac, label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.cp = fsub float %.0262, %i.am
  %i.cq = fdiv float %.0262, %i.cp                ; 2 uses
  %i.cr = fsub float %i.aj, %.sroa.8.0258
  %i.cs = fsub <2 x float> %.sroa.0146.0.copyload, %.sroa.0171.0259
  %i.ct = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.cs, %i.cu
  %i.cw = fadd <2 x float> %.sroa.0171.0259, %i.cv ; 3 uses
  %i.cx = fmul float %i.cr, %i.cq
  %i.cy = fadd float %.sroa.8.0258, %i.cx         ; 2 uses
  %foldExtExtBinop501 = fmul <2 x float> %6, %i.cw
  %foldExtExtBinop503 = fmul <2 x float> %6, %i.cw
  %shift505 = shufflevector <2 x float> %foldExtExtBinop503, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop506 = fadd <2 x float> %foldExtExtBinop501, %shift505
  %i.cz = extractelement <2 x float> %foldExtExtBinop506, i64 0
  %i.da = fmul float %.sroa.1.8.vec.extract.i135, %i.cy
  %i.db = fadd float %i.da, %i.cz
  %i.dc = fsub float %i.db, %.sroa.1.12.vec.extract.i140
  %.sroa.6.17.insert.mask = and i32 %.sroa.14.0257, -65536
  %.sroa.6.17.insert.insert = or disjoint i32 %.sroa.6.17.insert.mask, %.sroa.6.17.insert.shift
  %i.dd = sext i32 %.091261 to i64                ; 2 uses
  %i.de = getelementptr inbounds [20 x i8], ptr %0, i64 %i.dd ; 5 uses
  %i.df = mul nsw i64 %i.dd, 20
  %i.dg = add i64 %i.df, %i.aa, !nosanitize !9    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 0
  %i.di = xor i1 %i.ab, %i.dh
  %i.dj = icmp uge i64 %i.dg, %i.aa, !nosanitize !9
  %i.dk = icmp slt i32 %.091261, 0
  %i.dl = xor i1 %i.dk, %i.dj
  %i.dm = and i1 %i.di, %i.dl, !nosanitize !9
  br i1 %i.dm, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.aa, i64 %i.dg) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.dn = ptrtoint ptr %i.de to i64, !nosanitize !9 ; 2 uses
  %i.do = and i64 %i.dn, 3, !nosanitize !9
  %i.dp = icmp eq i64 %i.do, 0, !nosanitize !9
  %i.dq = and i1 %i.ab, %i.dp
  br i1 %i.dq, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.dn) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  store <2 x float> %i.cw, ptr %i.de, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store float %i.cy, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store float %i.dc, ptr %.sroa.5.0..sroa_idx141, align 4, !tbaa !13
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i32 %.sroa.6.17.insert.insert, ptr %.sroa.6.0..sroa_idx, align 4
  %i.dr = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.091261, i32 1), !nosanitize !9 ; 2 uses
  %i.ds = extractvalue { i32, i1 } %i.dr, 0, !nosanitize !9 ; 4 uses
  %i.dt = extractvalue { i32, i1 } %i.dr, 1, !nosanitize !9
  br i1 %i.dt, label %bb.ah, label %bb.ai, !prof !12, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.du = zext nneg i32 %.091261 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @35, i64 %i.du, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.dv = sext i32 %i.ds to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [20 x i8], ptr %0, i64 %i.dv ; 4 uses
  %i.dx = mul nsw i64 %i.dv, 20
  %i.dy = add i64 %i.dx, %i.aa, !nosanitize !9    ; 3 uses
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = icmp uge i64 %i.dy, %i.aa, !nosanitize !9
  %i.eb = icmp slt i32 %i.ds, 0
  %i.ec = xor i1 %i.eb, %i.ea
  %i.ed = and i1 %i.dz, %i.ec, !nosanitize !9
  br i1 %i.ed, label %bb.ak, label %bb.aj, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.aa, i64 %i.dy) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.ee = ptrtoint ptr %i.dw to i64, !nosanitize !9 ; 2 uses
  %i.ef = and i64 %i.ee, 3, !nosanitize !9
  %i.eg = icmp eq i64 %i.ef, 0, !nosanitize !9
  br i1 %i.eg, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.ee) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak
  store <2 x float> %.sroa.0146.0.copyload, ptr %i.dw, align 4
  %.sroa.9.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store <2 x float> %i.ai, ptr %.sroa.9.0..sroa_idx154, align 4, !tbaa !13
  %.sroa.12164.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 %.sroa.12164.0.copyload, ptr %.sroa.12164.0..sroa_idx167, align 4
  %i.eh = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ds, i32 1), !nosanitize !9 ; 2 uses
  %i.ei = extractvalue { i32, i1 } %i.eh, 1, !nosanitize !9
  br i1 %i.ei, label %bb.an, label %bb.ao, !prof !12, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  %i.ej = zext nneg i32 %i.ds to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @38, i64 %i.ej, i64 1) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %bb.am
  %i.ek = extractvalue { i32, i1 } %i.eh, 0, !nosanitize !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.s, %bb.ab, %bb.ao, %bb.aa
  %.1 = phi i32 [ %i.bg, %bb.s ], [ %i.cn, %bb.aa ], [ %i.ek, %bb.ao ], [ %.091261, %bb.ab ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !35
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1048575, i32 1}
!11 = !{!"float", !5, i64 0}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = !{!11, !11, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{i32 -1056584962, i32 -232478663}
!17 = !{!"long", !5, i64 0}
!18 = !{!"b3Vec3", !11, i64 0, !11, i64 4, !11, i64 8}
!19 = !{!"b3AABB", !18, i64 0, !18, i64 12}
!20 = !{!"b3Matrix3", !18, i64 0, !18, i64 12, !18, i64 24}
!21 = !{!"b3HullData", !17, i64 0, !17, i64 8, !19, i64 16, !11, i64 40, !11, i64 44, !11, i64 48, !18, i64 52, !20, i64 64, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140}
!22 = !{!21, !6, i64 104}
!23 = !{!21, !6, i64 116}
!24 = !{!21, !6, i64 124}
!25 = !{!21, !6, i64 108}
!26 = !{!"b3HullVertex", !5, i64 0}
!27 = !{!26, !5, i64 0}
!28 = !{!"b3HullHalfEdge", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!29 = !{!28, !5, i64 2}
!30 = !{!28, !5, i64 1}
!31 = !{!28, !5, i64 0}
!32 = !{!28, !5, i64 3}
!33 = !{i32 -1056584962, i32 -1435862720}
!34 = !{i32 -1056584962, i32 -1668940752}
!35 = distinct !{!35, !14}
!36 = !{i32 -1056584962, i32 1240342547}
end_hunk_0
