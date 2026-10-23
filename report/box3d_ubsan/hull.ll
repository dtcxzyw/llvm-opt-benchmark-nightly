Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3CreateCylinder:bb.a
  %i.n = tail call <2 x float> @b3ComputeCosSin(float noundef 0.000000e+00) #15 ; 0 uses
  br label %.split61

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.o = tail call ptr @b3CreateHull(ptr noundef %.fr63, i32 noundef %i.a, i32 noundef %i.a)
  tail call void @b3Free(ptr noundef %.fr63, i64 noundef %i.f) #15
  ret ptr %i.o

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %.03054 = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %i.ah, %bb.j ] ; 3 uses
  %i.p = tail call <2 x float> @b3ComputeCosSin(float noundef %.03054) #15
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.p, i64 1
  %i.q = tail call <2 x float> @b3ComputeCosSin(float noundef %.03054) #15
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.q, i64 0
  %i.r = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 1073741824
  br i1 %exitcond.not, label %.split.us, label %bb.d, !prof !22, !nosanitize !12

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @9, i64 2, i64 1073741824) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.d:                                             ; preds = %.lr.ph.split
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %.fr63, i64 %i.r ; 4 uses
  %i.t = mul nuw nsw i64 %indvars.iv, 24
  %i.u = add i64 %i.t, %i.k, !nosanitize !12      ; 2 uses
  %.not65 = icmp ult i64 %i.u, %i.k, !nosanitize !12
  br i1 %.not65, label %.split57.us, label %bb.e, !prof !22, !nosanitize !12

.split57.us:                                      ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @10, i64 %i.k, i64 %i.u) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.s to i64, !nosanitize !12 ; 2 uses
  %i.w = and i64 %i.v, 3, !nosanitize !12
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !12
  br i1 %i.x, label %bb.f, label %.split61, !prof !13, !nosanitize !12

.split61:                                         ; preds = %bb.e, %.split61.us
  %.us-phi62 = phi i64 [ 0, %.split61.us ], [ %i.v, %bb.e ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @12, i64 %.us-phi62) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  %i.y = fmul float %1, %.sroa.0.0.vec.extract.i  ; 2 uses
  %i.z = fmul float %1, %.sroa.0.4.vec.extract.i  ; 2 uses
  store float %i.y, ptr %i.s, align 4, !tbaa !28
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store float %2, ptr %.sroa.234.0..sroa_idx, align 4, !tbaa !28
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store float %i.z, ptr %.sroa.335.0..sroa_idx, align 4, !tbaa !28
  %i.aa = or disjoint i64 %i.r, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.fr63, i64 %i.aa ; 4 uses
  %i.ac = mul nuw nsw i64 %i.aa, 12
  %i.ad = add i64 %i.ac, %i.k, !nosanitize !12    ; 2 uses
  %.not = icmp ult i64 %i.ad, %i.k, !nosanitize !12
  br i1 %.not, label %bb.g, label %bb.h, !prof !22, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @13, i64 %i.k, i64 %i.ad) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %bb.f
  %i.ae = ptrtoint ptr %i.ab to i64, !nosanitize !12 ; 2 uses
  %i.af = and i64 %i.ae, 3, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  br i1 %i.ag, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @14, i64 %i.ae) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.j:                                             ; preds = %bb.h
  store float %i.y, ptr %i.ab, align 4, !tbaa !28
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store float %i.l, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !28
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float %i.z, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = fadd float %i.i, %.03054
  %exitcond85.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond85.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !155
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_mul_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateHull(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !func_sanitize !166 {
bb.a:
  %3 = alloca %struct.b3HullBuilder, align 8      ; 27 uses
  %i.a = alloca [256 x ptr], align 16             ; 7 uses
  %i.b = alloca [256 x ptr], align 16             ; 7 uses
  %i.c = alloca [256 x ptr], align 16             ; 8 uses
  %i.d = icmp slt i32 %1, 4
  br i1 %i.d, label %bb.fv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %0, null, !nosanitize !12
  %i.f = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.g = and i64 %i.f, 3, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  %i.i = and i1 %i.e, %i.h, !nosanitize !12
  br i1 %i.i, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @24, i64 %i.f) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.d:                                             ; preds = %bb.b
  %.sroa.0190.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %i.j = tail call i32 @llvm.smax.i32(i32 %2, i32 4)
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 128) ; 5 uses
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 range(i32 4, -2147483648) %1, i32 4), !nosanitize !12 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1, !nosanitize !12
  br i1 %i.m, label %bb.e, label %bb.f, !prof !22, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  %i.n = zext nneg i32 %1 to i64, !nosanitize !12
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @339, i64 %i.n, i64 4) #14, !noalias !167, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.l, 0, !nosanitize !12 ; 2 uses
  %i.p = mul nuw nsw i32 %i.k, 24
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = mul nuw nsw i32 %i.k, 5
  %i.s = tail call i32 @llvm.umax.i32(i32 %i.r, i32 26)
  %i.t = add nsw i32 %i.s, -10                    ; 2 uses
  %i.u = mul nuw nsw i32 %i.k, 3
  %i.v = add nsw i32 %i.u, -6                     ; 3 uses
  %i.w = shl nuw nsw i32 %i.k, 1
  %i.x = add nsw i32 %i.w, -4                     ; 3 uses
  %i.y = zext nneg i32 %i.o to i64                ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 48                 ; 2 uses
  %i.aa = zext nneg i32 %i.q to i64
  %i.ab = add nuw nsw i64 %i.aa, %i.y
  %i.ac = mul nuw nsw i64 %i.ab, 48               ; 3 uses
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = shl nuw nsw i64 %i.ad, 7
  %i.af = add nuw nsw i64 %i.ac, %i.ae            ; 3 uses
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = add nuw nsw i64 %i.af, %i.ah            ; 3 uses
  %i.aj = add nuw nsw i64 %i.ai, %i.ah            ; 3 uses
  %i.ak = zext nneg i32 %i.x to i64               ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.aj, %i.al            ; 3 uses
  %i.an = shl nuw nsw i64 %i.ak, 5
  %i.ao = add nuw nsw i64 %i.am, %i.an
  %i.ap = and i64 %i.ao, -8                       ; 3 uses
  %i.aq = zext nneg i32 %1 to i64
  %i.ar = mul nuw nsw i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ap, %i.ar            ; 6 uses
  %i.at = tail call ptr @b3Alloc(i64 noundef %i.as) #15 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i64 384, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.au, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  store ptr %i.aw, ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  store ptr %i.ay, ptr %i.ay, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !33
  %i.ba = ptrtoint ptr %i.at to i64, !nosanitize !12 ; 21 uses
  %i.bb = icmp ne ptr %i.at, null, !nosanitize !12 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 248
  store ptr %i.at, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i32 %i.o, ptr %i.bd, align 8, !tbaa !168
  %i.be = add i64 %i.z, %i.ba, !nosanitize !12    ; 3 uses
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = icmp uge i64 %i.be, %i.ba, !nosanitize !12
  %i.bh = and i1 %i.bf, %i.bg
  %i.bi = and i1 %i.bh, %i.bb
  br i1 %i.bi, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @341, i64 %i.ba, i64 %i.be) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.z
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i32 %i.q, ptr %i.bl, align 8, !tbaa !169
  %i.bm = add i64 %i.ac, %i.ba, !nosanitize !12   ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.ba, !nosanitize !12
  %i.bo = and i1 %i.bn, %i.bb
  br i1 %i.bo, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @342, i64 %i.ba, i64 %i.bm) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.j:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 288
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i32 %i.t, ptr %i.br, align 8, !tbaa !170
  %i.bs = add i64 %i.af, %i.ba, !nosanitize !12   ; 2 uses
  %i.bt = icmp uge i64 %i.bs, %i.ba, !nosanitize !12
  %i.bu = and i1 %i.bt, %i.bb
  br i1 %i.bu, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @344, i64 %i.ba, i64 %i.bs) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.l:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.af
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 312
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %i.v, ptr %i.bx, align 8, !tbaa !171
  %i.by = add i64 %i.ai, %i.ba, !nosanitize !12   ; 2 uses
  %i.bz = icmp uge i64 %i.by, %i.ba, !nosanitize !12
  %i.ca = and i1 %i.bz, %i.bb
  br i1 %i.ca, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @345, i64 %i.ba, i64 %i.by) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %i.v, ptr %i.cd, align 8, !tbaa !172
  %i.ce = add i64 %i.aj, %i.ba, !nosanitize !12   ; 2 uses
  %i.cf = icmp uge i64 %i.ce, %i.ba, !nosanitize !12
  %i.cg = and i1 %i.cf, %i.bb
  br i1 %i.cg, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @346, i64 %i.ba, i64 %i.ce) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i32 %i.x, ptr %i.cj, align 8, !tbaa !173
  %i.ck = add i64 %i.am, %i.ba, !nosanitize !12   ; 2 uses
  %i.cl = icmp uge i64 %i.ck, %i.ba, !nosanitize !12
  %i.cm = and i1 %i.cl, %i.bb
  br i1 %i.cm, label %b3HullBuilder_Init.exit, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @347, i64 %i.ba, i64 %i.ck) #14, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_Init.exit:                          ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 360
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !52
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i32 %i.x, ptr %i.cp, align 8, !tbaa !174
  %i.cq = add i64 %i.ap, %i.ba, !nosanitize !12   ; 2 uses
  %i.cr = icmp uge i64 %i.cq, %i.ba, !nosanitize !12
  %i.cs = and i1 %i.cr, %i.bb
  br i1 %i.cs, label %bb.s, label %bb.r, !prof !13, !nosanitize !12

bb.r:                                             ; preds = %b3HullBuilder_Init.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.ba, i64 %i.cq) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.s:                                             ; preds = %b3HullBuilder_Init.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ap
  %i.cu = call fastcc zeroext i1 @b3HullBuilder_Construct(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %i.k, <2 x float> %.sroa.0190.0.copyload, float %.sroa.4.0.copyload, ptr noundef nonnull %i.ct)
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #15
  br label %bb.fu

bb.u:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 372
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !53 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 128
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.cw, i32 noundef 128) #15
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #15
  br label %bb.fu

bb.w:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 380
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !54 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 128
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %i.cz, i32 noundef 128) #15
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #15
  br label %bb.fu

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !55 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 256
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %i.dc, i32 noundef 256) #15
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #15
  br label %bb.fu

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.de = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %.not1333 = icmp eq ptr %i.de, %i.aw
  br i1 %.not1333, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.df = ptrtoint ptr %i.a to i64                ; 3 uses
  br label %bb.ab

._crit_edge.loopexit:                             ; preds = %bb.ah
  %i.dg = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aa
  %.0207.lcssa = phi i32 [ 0, %bb.aa ], [ %i.dg, %._crit_edge.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %.not2651336 = icmp eq ptr %i.dh, %i.ay
  br i1 %.not2651336, label %._crit_edge1342, label %.lr.ph1341

.lr.ph1341:                                       ; preds = %._crit_edge
  %i.di = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.dj = ptrtoint ptr %i.c to i64                ; 6 uses
  br label %bb.ai

bb.ab:                                            ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 5 uses
  %.02061335 = phi ptr [ %i.de, %.lr.ph ], [ %i.dv, %bb.ah ] ; 5 uses
  %i.dk = icmp ne ptr %.02061335, null, !nosanitize !12
  %i.dl = ptrtoint ptr %.02061335 to i64, !nosanitize !12 ; 2 uses
  %i.dm = and i64 %i.dl, 7, !nosanitize !12
  %i.dn = icmp eq i64 %i.dm, 0, !nosanitize !12
  %i.do = and i1 %i.dk, %i.dn, !nosanitize !12
  br i1 %i.do, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @30, i64 %i.dl) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.ad:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.02061335, i64 36
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !58
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 256
  br i1 %exitcond.not, label %bb.ae, label %bb.af, !prof !22, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @32, i64 256) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.af:                                            ; preds = %bb.ad
  %i.dr = shl nuw nsw i64 %indvars.iv, 3
  %i.ds = add i64 %i.dr, %i.df, !nosanitize !12   ; 2 uses
  %.not279 = icmp ult i64 %i.ds, %i.df, !nosanitize !12
  br i1 %.not279, label %bb.ag, label %bb.ah, !prof !22, !nosanitize !12

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.df, i64 %i.ds) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.ah:                                            ; preds = %bb.af
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.02061335, ptr %i.dt, align 8, !tbaa !175
  %i.du = getelementptr inbounds nuw i8, ptr %.02061335, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.aw
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ab, !llvm.loop !158

bb.ai:                                            ; preds = %.lr.ph1341, %bb.bg
  %indvars.iv2515 = phi i64 [ 0, %.lr.ph1341 ], [ %indvars.iv.next2516, %bb.bg ] ; 5 uses
  %.02031339 = phi ptr [ %i.dh, %.lr.ph1341 ], [ %i.fr, %bb.bg ] ; 6 uses
  %.02041338 = phi i32 [ 0, %.lr.ph1341 ], [ %.2, %bb.bg ]
  %i.dw = icmp ne ptr %.02031339, null, !nosanitize !12
  %i.dx = ptrtoint ptr %.02031339 to i64, !nosanitize !12 ; 2 uses
end_hunk_0
