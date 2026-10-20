Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh?download=true
inline.NumInlined: 435
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3WeldVertices:bb.a
  %i.si = sext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %.sroa.0.02398, i64 %i.si ; 2 uses
  %i.sk = shl nsw i64 %i.si, 2
  %i.sl = add i64 %i.sk, %i.ro, !nosanitize !9    ; 3 uses
  %i.sm = icmp ne i64 %i.sl, 0
  %i.sn = icmp uge i64 %i.sl, %i.ro, !nosanitize !9
  %i.so = icmp slt i32 %i.sh, 0
  %i.sp = xor i1 %i.so, %i.sn
  %i.sq = and i1 %i.sm, %i.sp, !nosanitize !9
  br i1 %i.sq, label %bb.cz, label %.split1404.us, !prof !10, !nosanitize !9

bb.cz:                                            ; preds = %bb.cy
  %i.sr = ptrtoint ptr %i.sj to i64, !nosanitize !9 ; 2 uses
  %i.ss = and i64 %i.sr, 3, !nosanitize !9
  %i.st = icmp eq i64 %i.ss, 0, !nosanitize !9
  br i1 %i.st, label %bb.da, label %.split1408, !prof !10, !nosanitize !9

bb.da:                                            ; preds = %bb.cz
  %i.su = load i32, ptr %i.sj, align 4, !tbaa !23
  %i.sv = load ptr, ptr %i.rp, align 8, !tbaa !42 ; 3 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv2358 ; 2 uses
  %i.sx = ptrtoint ptr %i.sv to i64, !nosanitize !9 ; 3 uses
  %i.sy = add i64 %i.sc, %i.sx, !nosanitize !9    ; 3 uses
  %i.sz = icmp ne ptr %i.sv, null, !nosanitize !9 ; 2 uses
  %i.ta = icmp eq i64 %i.sy, 0
  %i.tb = xor i1 %i.sz, %i.ta
  %i.tc = icmp uge i64 %i.sy, %i.sx, !nosanitize !9
  %i.td = and i1 %i.tc, %i.tb, !nosanitize !9
  br i1 %i.td, label %bb.db, label %.split1425.us, !prof !10, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  %i.te = ptrtoint ptr %i.sw to i64, !nosanitize !9 ; 2 uses
  %i.tf = and i64 %i.te, 3, !nosanitize !9
  %i.tg = icmp eq i64 %i.tf, 0, !nosanitize !9
  %i.th = and i1 %i.sz, %i.tg
  br i1 %i.th, label %bb.dc, label %.split1429.us, !prof !10, !nosanitize !9

bb.dc:                                            ; preds = %bb.db
  store i32 %i.su, ptr %i.sw, align 4, !tbaa !23
  %indvars.iv.next2359 = add nuw nsw i64 %indvars.iv2358, 1 ; 2 uses
  %exitcond2362.not = icmp eq i64 %indvars.iv.next2359, %wide.trip.count2361
  br i1 %exitcond2362.not, label %._crit_edge1387, label %.lr.ph1386.split.split.split.split.us, !llvm.loop !158

._crit_edge1387:                                  ; preds = %bb.dc, %._crit_edge
  %i.ti = load i64, ptr %i.w, align 8, !tbaa !74  ; 2 uses
  %.not.i.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i.i, label %b3DestroySpatialHash.exit, label %b3VertexMap_init.exit.i.i

b3VertexMap_init.exit.i.i:                        ; preds = %._crit_edge1387
  %i.tj = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.tk = mul i64 %i.ti, 18
  %i.tl = add i64 %i.tk, 26
  call void @b3Free(ptr noundef %i.tj, i64 noundef %i.tl) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.y, align 8, !tbaa !66
  br label %b3DestroySpatialHash.exit

b3DestroySpatialHash.exit:                        ; preds = %b3VertexMap_init.exit.i.i, %._crit_edge1387
  %i.tm = load ptr, ptr %5, align 8, !tbaa !168
  %i.tn = load i32, ptr %i.u, align 4, !tbaa !170
  %i.to = sext i32 %i.tn to i64
  %i.tp = shl nsw i64 %i.to, 3
  call void @b3Free(ptr noundef %i.tm, i64 noundef %i.tp) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @b3Free(ptr noundef %.sroa.0.02398, i64 noundef %.sroa.11.02399) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.037.lcssa

.split1389.us:                                    ; preds = %.lr.ph1386.split.split.split.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @339, i64 %i.rs, i64 %i.sd) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1393:                                       ; preds = %bb.cx, %.lr.ph1386, %.lr.ph1386.split.split.split.us
  %.us-phi1394 = phi i64 [ 0, %.lr.ph1386 ], [ %i.rs, %.lr.ph1386.split.split.split.us ], [ %i.se, %bb.cx ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @340, i64 %.us-phi1394) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1404.us:                                    ; preds = %bb.cy, %bb.cw
  %.us-phi1406 = phi i64 [ %i.rx, %bb.cw ], [ %i.sl, %bb.cy ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @341, i64 %i.ro, i64 %.us-phi1406) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1408:                                       ; preds = %bb.cz, %bb.cw
  %.us-phi1409 = phi i64 [ 0, %bb.cw ], [ %i.sr, %bb.cz ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @342, i64 %.us-phi1409) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1425.us:                                    ; preds = %bb.da
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @343, i64 %i.sx, i64 %i.sy) #13, !nosanitize !9
  unreachable, !nosanitize !9

.split1429.us:                                    ; preds = %bb.db
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @344, i64 %i.te) #13, !nosanitize !9
  unreachable, !nosanitize !9
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_nonnull_arg_abort(ptr) local_unnamed_addr #2

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #5

declare zeroext i1 @b3IsSaneAABB(ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @b3BuildRecursive(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull %5) unnamed_addr #6 !func_sanitize !198 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 9 uses
  %i.b = alloca [3 x float], align 8              ; 9 uses
  %i.c = alloca [3 x float], align 4              ; 7 uses
  %i.d = alloca [3 x float], align 4              ; 7 uses
  %i.e = alloca [3 x float], align 4              ; 9 uses
  %i.f = alloca [3 x float], align 8              ; 9 uses
  %i.g = alloca [3 x float], align 4              ; 7 uses
  %i.h = alloca [3 x float], align 4              ; 7 uses
  %i.i = alloca [3 x float], align 8              ; 6 uses
  %6 = alloca [8 x %struct.b3Bucket], align 16    ; 75 uses
  %7 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %8 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %9 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %10 = alloca %struct.b3Primitive, align 4       ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = icmp sgt i32 %1, 4
  br i1 %i.l, label %bb.b, label %bb.eu

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ne ptr %2, null, !nosanitize !9
  %i.n = ptrtoint ptr %2 to i64                   ; 61 uses
  %i.o = and i64 %i.n, 3, !nosanitize !9
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !9
  %i.q = and i1 %i.m, %i.p, !nosanitize !9        ; 2 uses
  br i1 %4, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @479, i64 %i.n) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0126.0.copyload.i = load <2 x float>, ptr %i.r, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.7129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7129.0.copyload.i = load float, ptr %.sroa.7129.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.i
  %i.s = fsub <2 x float> %i.an, %i.al            ; 2 uses
  %i.t = fsub float %i.ap, %i.aj                  ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.an, %i.al
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop2364 = fadd <2 x float> %i.an, %i.al
  %i.v = extractelement <2 x float> %foldExtExtBinop2364, i64 1
  %i.w = fadd float %i.ap, %i.aj
  %i.x = fmul float %i.u, 5.000000e-01            ; 2 uses
  %i.y = fmul float %i.v, 5.000000e-01            ; 2 uses
  %i.z = fmul float %i.w, 5.000000e-01            ; 2 uses
  %i.aa = extractelement <2 x float> %i.s, i64 0  ; 2 uses
  %i.ab = extractelement <2 x float> %i.s, i64 1  ; 2 uses
  %i.ac = fcmp ult float %i.aa, %i.ab
  %i.ad = fcmp ult float %i.aa, %i.t
  %or.cond.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %bb.u, label %.preheader311.i

bb.g:                                             ; preds = %bb.i, %bb.e
  %indvars.iv.i = phi i64 [ 1, %bb.e ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %.sroa.7129.0517.i = phi float [ %.sroa.7129.0.copyload.i, %bb.e ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.0126.0516.i = phi <2 x float> [ %.sroa.0126.0.copyload.i, %bb.e ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.7.0515.i = phi float [ %.sroa.7129.0.copyload.i, %bb.e ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.0123.0514.i = phi <2 x float> [ %.sroa.0126.0.copyload.i, %bb.e ], [ %i.an, %bb.i ] ; 2 uses
  %i.ae = mul nuw nsw i64 %indvars.iv.i, 40
  %i.af = add i64 %i.ae, %i.n, !nosanitize !9     ; 2 uses
  %.not307.i = icmp ult i64 %i.af, %i.n, !nosanitize !9
  br i1 %.not307.i, label %bb.h, label %bb.i, !prof !17, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @480, i64 %i.n, i64 %i.af) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0113.0.copyload.i = load <2 x float>, ptr %i.ah, align 4, !noalias !199 ; 4 uses
  %.sroa.2114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.2114.0.copyload.i = load float, ptr %.sroa.2114.0..sroa_idx.i, align 4, !noalias !199 ; 4 uses
  %i.ai = fcmp olt float %.sroa.7129.0517.i, %.sroa.2114.0.copyload.i
  %i.aj = select i1 %i.ai, float %.sroa.7129.0517.i, float %.sroa.2114.0.copyload.i ; 3 uses
  %i.ak = fcmp olt <2 x float> %.sroa.0126.0516.i, %.sroa.0113.0.copyload.i
  %i.al = select <2 x i1> %i.ak, <2 x float> %.sroa.0126.0516.i, <2 x float> %.sroa.0113.0.copyload.i ; 4 uses
  %i.am = fcmp ogt <2 x float> %.sroa.0123.0514.i, %.sroa.0113.0.copyload.i
  %i.an = select <2 x i1> %i.am, <2 x float> %.sroa.0123.0514.i, <2 x float> %.sroa.0113.0.copyload.i ; 4 uses
  %i.ao = fcmp ogt float %.sroa.7.0515.i, %.sroa.2114.0.copyload.i
  %i.ap = select i1 %i.ao, float %.sroa.7.0515.i, float %.sroa.2114.0.copyload.i ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.f, label %bb.g, !llvm.loop !174

.preheader311.i:                                  ; preds = %bb.f, %.critedge182.i
  %.0160520.i = phi i32 [ %.2.i, %.critedge182.i ], [ %1, %bb.f ] ; 3 uses
  %.0161519.i = phi i32 [ %.2163.i, %.critedge182.i ], [ 0, %bb.f ] ; 2 uses
  %i.aq = sext i32 %.0161519.i to i64
  %i.ar = sext i32 %.0160520.i to i64             ; 3 uses
  %11 = add nsw i32 %.0161519.i, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0160520.i, i32 %11)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.preheader311.i
  %indvars.iv712.i = phi i64 [ %i.aq, %.preheader311.i ], [ %indvars.iv.next713.i, %bb.m ] ; 5 uses
  %i.as = mul nsw i64 %indvars.iv712.i, 40
  %i.at = add i64 %i.as, %i.n, !nosanitize !9     ; 3 uses
  %i.au = icmp ne i64 %i.at, 0, !nosanitize !9
  %i.av = icmp uge i64 %i.at, %i.n, !nosanitize !9
  %i.aw = icmp slt i64 %indvars.iv712.i, 0
  %i.ax = xor i1 %i.aw, %i.av
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !9
  br i1 %i.ay, label %bb.l, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @481, i64 %i.n, i64 %i.at) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv712.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !201, !noalias !199
  %i.bc = fcmp olt float %i.bb, %i.x
  br i1 %i.bc, label %bb.m, label %.critedge.split.loop.exit912.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next713.i = add nsw i64 %indvars.iv712.i, 1 ; 2 uses
  %i.bd = icmp slt i64 %indvars.iv.next713.i, %i.ar
  br i1 %i.bd, label %bb.j, label %.critedge.i, !llvm.loop !175

.critedge.split.loop.exit912.i:                   ; preds = %bb.l
  %i.be = trunc nsw i64 %indvars.iv712.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %.critedge.split.loop.exit912.i
  %.1162.lcssa.i = phi i32 [ %i.be, %.critedge.split.loop.exit912.i ], [ %smax.i, %bb.m ] ; 7 uses
  %12 = sext i32 %.1162.lcssa.i to i64            ; 4 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ar, i64 %12) ; 2 uses
  %13 = icmp sgt i32 %.0160520.i, %.1162.lcssa.i
  br i1 %13, label %.lr.ph2358, label %.critedge182.i

bb.n:                                             ; preds = %bb.p
  %i.bf = icmp sgt i64 %indvars.iv.next716.i, %12
  br i1 %i.bf, label %.lr.ph2358, label %.critedge182.i, !llvm.loop !176

.lr.ph2358:                                       ; preds = %.critedge.i, %bb.n
  %indvars.iv715.i2357 = phi i64 [ %indvars.iv.next716.i, %bb.n ], [ %i.ar, %.critedge.i ] ; 2 uses
  %indvars.iv.next716.i = add nsw i64 %indvars.iv715.i2357, -1 ; 5 uses
  %i.bg = mul nsw i64 %indvars.iv.next716.i, 40
  %i.bh = add i64 %i.bg, %i.n, !nosanitize !9     ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 0, !nosanitize !9
  %i.bj = icmp uge i64 %i.bh, %i.n, !nosanitize !9
  %i.bk = icmp slt i64 %indvars.iv715.i2357, 1
  %i.bl = xor i1 %i.bk, %i.bj
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !9
  br i1 %i.bm, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %.lr.ph2358
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @482, i64 %i.n, i64 %i.bh) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %.lr.ph2358
  %i.bn = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv.next716.i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !201, !noalias !199
  %i.bq = fcmp ult float %i.bp, %i.x
  br i1 %i.bq, label %.critedge2.i, label %bb.n, !llvm.loop !176

.critedge2.i:                                     ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.br = mul nsw i64 %12, 40
  %i.bs = add i64 %i.br, %i.n, !nosanitize !9     ; 3 uses
  %i.bt = icmp ne i64 %i.bs, 0, !nosanitize !9
  %i.bu = icmp uge i64 %i.bs, %i.n, !nosanitize !9
  %i.bv = icmp slt i32 %.1162.lcssa.i, 0
  %i.bw = xor i1 %i.bv, %i.bu
  %i.bx = and i1 %i.bt, %i.bw, !nosanitize !9
  br i1 %i.bx, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %.critedge2.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @483, i64 %i.n, i64 %i.bs) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %.critedge2.i
  %i.by = getelementptr inbounds [40 x i8], ptr %2, i64 %12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %8, ptr noundef nonnull align 4 dereferenceable(40) %i.by, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.by, ptr noundef nonnull align 4 dereferenceable(40) %i.bn, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bn, ptr noundef nonnull align 4 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  %i.bz = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1162.lcssa.i, i32 1), !nosanitize !9 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 1, !nosanitize !9
  br i1 %i.ca, label %bb.s, label %bb.t, !prof !17, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.cb = zext nneg i32 %.1162.lcssa.i to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @484, i64 %i.cb, i64 1) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.cc = extractvalue { i32, i1 } %i.bz, 0, !nosanitize !9
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge182.i

.critedge182.i:                                   ; preds = %bb.n, %.critedge.i, %bb.t
  %.2163.i = phi i32 [ %i.cc, %bb.t ], [ %.1162.lcssa.i, %.critedge.i ], [ %.1162.lcssa.i, %bb.n ] ; 3 uses
  %.2.in.i = phi i64 [ %indvars.iv.next716.i, %bb.t ], [ %smin, %.critedge.i ], [ %smin, %bb.n ]
  %.2.i = trunc i64 %.2.in.i to i32               ; 2 uses
  %i.cd = icmp slt i32 %.2163.i, %.2.i
  br i1 %i.cd, label %.preheader311.i, label %.loopexit.i, !llvm.loop !177

bb.u:                                             ; preds = %bb.f
  %i.ce = fcmp ult float %i.ab, %i.t
  br i1 %i.ce, label %.preheader308.i, label %.preheader309.i

.preheader309.i:                                  ; preds = %bb.u, %.critedge183.i
  %.3523.i = phi i32 [ %.5.i, %.critedge183.i ], [ %1, %bb.u ] ; 3 uses
  %.3164522.i = phi i32 [ %.5166.i, %.critedge183.i ], [ 0, %bb.u ] ; 2 uses
  %i.cf = sext i32 %.3164522.i to i64
  %i.cg = sext i32 %.3523.i to i64                ; 3 uses
  %14 = add nsw i32 %.3164522.i, 1
  %smax720.i = tail call i32 @llvm.smax.i32(i32 %.3523.i, i32 %14)
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.preheader309.i
  %indvars.iv718.i = phi i64 [ %i.cf, %.preheader309.i ], [ %indvars.iv.next719.i, %bb.y ] ; 5 uses
  %i.ch = mul nsw i64 %indvars.iv718.i, 40
  %i.ci = add i64 %i.ch, %i.n, !nosanitize !9     ; 3 uses
  %i.cj = icmp ne i64 %i.ci, 0, !nosanitize !9
  %i.ck = icmp uge i64 %i.ci, %i.n, !nosanitize !9
  %i.cl = icmp slt i64 %indvars.iv718.i, 0
  %i.cm = xor i1 %i.cl, %i.ck
  %i.cn = and i1 %i.cj, %i.cm, !nosanitize !9
  br i1 %i.cn, label %bb.x, label %bb.w, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @485, i64 %i.n, i64 %i.ci) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv718.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !203, !noalias !199
  %i.cr = fcmp olt float %i.cq, %i.y
  br i1 %i.cr, label %bb.y, label %.critedge4.split.loop.exit914.i

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next719.i = add nsw i64 %indvars.iv718.i, 1 ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next719.i, %i.cg
  br i1 %i.cs, label %bb.v, label %.critedge4.i, !llvm.loop !178

.critedge4.split.loop.exit914.i:                  ; preds = %bb.x
  %i.ct = trunc nsw i64 %indvars.iv718.i to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.y, %.critedge4.split.loop.exit914.i
  %.4165.lcssa.i = phi i32 [ %i.ct, %.critedge4.split.loop.exit914.i ], [ %smax720.i, %bb.y ] ; 7 uses
  %15 = sext i32 %.4165.lcssa.i to i64            ; 4 uses
  %smin1499 = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 %15) ; 2 uses
  %16 = icmp sgt i32 %.3523.i, %.4165.lcssa.i
  br i1 %16, label %.lr.ph2360, label %.critedge183.i

bb.z:                                             ; preds = %bb.ab
  %i.cu = icmp sgt i64 %indvars.iv.next723.i, %15
  br i1 %i.cu, label %.lr.ph2360, label %.critedge183.i, !llvm.loop !179

.lr.ph2360:                                       ; preds = %.critedge4.i, %bb.z
  %indvars.iv722.i2359 = phi i64 [ %indvars.iv.next723.i, %bb.z ], [ %i.cg, %.critedge4.i ] ; 2 uses
  %indvars.iv.next723.i = add nsw i64 %indvars.iv722.i2359, -1 ; 5 uses
  %i.cv = mul nsw i64 %indvars.iv.next723.i, 40
  %i.cw = add i64 %i.cv, %i.n, !nosanitize !9     ; 3 uses
  %i.cx = icmp ne i64 %i.cw, 0, !nosanitize !9
  %i.cy = icmp uge i64 %i.cw, %i.n, !nosanitize !9
  %i.cz = icmp slt i64 %indvars.iv722.i2359, 1
  %i.da = xor i1 %i.cz, %i.cy
  %i.db = and i1 %i.cx, %i.da, !nosanitize !9
  br i1 %i.db, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %.lr.ph2360
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @486, i64 %i.n, i64 %i.cw) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %.lr.ph2360
  %i.dc = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv.next723.i ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.de = load float, ptr %i.dd, align 4, !tbaa !203, !noalias !199
  %i.df = fcmp ult float %i.de, %i.y
  br i1 %i.df, label %.critedge6.i, label %bb.z, !llvm.loop !179

.critedge6.i:                                     ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.dg = mul nsw i64 %15, 40
  %i.dh = add i64 %i.dg, %i.n, !nosanitize !9     ; 3 uses
  %i.di = icmp ne i64 %i.dh, 0, !nosanitize !9
  %i.dj = icmp uge i64 %i.dh, %i.n, !nosanitize !9
  %i.dk = icmp slt i32 %.4165.lcssa.i, 0
  %i.dl = xor i1 %i.dk, %i.dj
  %i.dm = and i1 %i.di, %i.dl, !nosanitize !9
  br i1 %i.dm, label %bb.ad, label %bb.ac, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %.critedge6.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @487, i64 %i.n, i64 %i.dh) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %.critedge6.i
  %i.dn = getelementptr inbounds [40 x i8], ptr %2, i64 %15 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(40) %i.dn, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.dn, ptr noundef nonnull align 4 dereferenceable(40) %i.dc, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.dc, ptr noundef nonnull align 4 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  %i.do = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.4165.lcssa.i, i32 1), !nosanitize !9 ; 2 uses
  %i.dp = extractvalue { i32, i1 } %i.do, 1, !nosanitize !9
  br i1 %i.dp, label %bb.ae, label %bb.af, !prof !17, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.dq = zext nneg i32 %.4165.lcssa.i to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @488, i64 %i.dq, i64 1) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %i.dr = extractvalue { i32, i1 } %i.do, 0, !nosanitize !9
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.critedge183.i

.critedge183.i:                                   ; preds = %bb.z, %.critedge4.i, %bb.af
  %.5166.i = phi i32 [ %i.dr, %bb.af ], [ %.4165.lcssa.i, %.critedge4.i ], [ %.4165.lcssa.i, %bb.z ] ; 3 uses
  %.5.in.i = phi i64 [ %indvars.iv.next723.i, %bb.af ], [ %smin1499, %.critedge4.i ], [ %smin1499, %bb.z ]
  %.5.i = trunc i64 %.5.in.i to i32               ; 2 uses
  %i.ds = icmp slt i32 %.5166.i, %.5.i
  br i1 %i.ds, label %.preheader309.i, label %.loopexit.i, !llvm.loop !180

.preheader308.i:                                  ; preds = %bb.u, %.critedge184.i
  %.6526.i = phi i32 [ %.8.i, %.critedge184.i ], [ %1, %bb.u ] ; 3 uses
  %.6167525.i = phi i32 [ %.8169.i, %.critedge184.i ], [ 0, %bb.u ] ; 2 uses
  %i.dt = sext i32 %.6167525.i to i64
  %i.du = sext i32 %.6526.i to i64                ; 3 uses
  %17 = add nsw i32 %.6167525.i, 1
  %smax727.i = tail call i32 @llvm.smax.i32(i32 %.6526.i, i32 %17)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.preheader308.i
  %indvars.iv725.i = phi i64 [ %i.dt, %.preheader308.i ], [ %indvars.iv.next726.i, %bb.aj ] ; 5 uses
  %i.dv = mul nsw i64 %indvars.iv725.i, 40
  %i.dw = add i64 %i.dv, %i.n, !nosanitize !9     ; 3 uses
  %i.dx = icmp ne i64 %i.dw, 0, !nosanitize !9
  %i.dy = icmp uge i64 %i.dw, %i.n, !nosanitize !9
  %i.dz = icmp slt i64 %indvars.iv725.i, 0
  %i.ea = xor i1 %i.dz, %i.dy
  %i.eb = and i1 %i.dx, %i.ea, !nosanitize !9
  br i1 %i.eb, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @489, i64 %i.n, i64 %i.dw) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv725.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !204, !noalias !199
  %i.ef = fcmp olt float %i.ee, %i.z
  br i1 %i.ef, label %bb.aj, label %.critedge8.split.loop.exit916.i

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next726.i = add nsw i64 %indvars.iv725.i, 1 ; 2 uses
  %i.eg = icmp slt i64 %indvars.iv.next726.i, %i.du
  br i1 %i.eg, label %bb.ag, label %.critedge8.i, !llvm.loop !181

.critedge8.split.loop.exit916.i:                  ; preds = %bb.ai
  %i.eh = trunc nsw i64 %indvars.iv725.i to i32
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %bb.aj, %.critedge8.split.loop.exit916.i
  %.7168.lcssa.i = phi i32 [ %i.eh, %.critedge8.split.loop.exit916.i ], [ %smax727.i, %bb.aj ] ; 6 uses
  %18 = sext i32 %.7168.lcssa.i to i64            ; 4 uses
  %smin1500 = tail call i64 @llvm.smin.i64(i64 %i.du, i64 %18) ; 2 uses
  %19 = icmp sgt i32 %.6526.i, %.7168.lcssa.i
  br i1 %19, label %.lr.ph2362, label %.critedge184.i

bb.ak:                                            ; preds = %bb.am
  %i.ei = icmp sgt i64 %indvars.iv.next730.i, %18
  br i1 %i.ei, label %.lr.ph2362, label %.critedge184.i, !llvm.loop !182

.lr.ph2362:                                       ; preds = %.critedge8.i, %bb.ak
  %indvars.iv729.i2361 = phi i64 [ %indvars.iv.next730.i, %bb.ak ], [ %i.du, %.critedge8.i ] ; 2 uses
  %indvars.iv.next730.i = add nsw i64 %indvars.iv729.i2361, -1 ; 5 uses
  %i.ej = mul nsw i64 %indvars.iv.next730.i, 40
  %i.ek = add i64 %i.ej, %i.n, !nosanitize !9     ; 3 uses
  %i.el = icmp ne i64 %i.ek, 0, !nosanitize !9
  %i.em = icmp uge i64 %i.ek, %i.n, !nosanitize !9
  %i.en = icmp slt i64 %indvars.iv729.i2361, 1
  %i.eo = xor i1 %i.en, %i.em
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !9
  br i1 %i.ep, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %.lr.ph2362
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @490, i64 %i.n, i64 %i.ek) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %.lr.ph2362
  %i.eq = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv.next730.i ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load float, ptr %i.er, align 4, !tbaa !204, !noalias !199
  %i.et = fcmp ult float %i.es, %i.z
  br i1 %i.et, label %.critedge10.i, label %bb.ak, !llvm.loop !182

.critedge10.i:                                    ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.eu = mul nsw i64 %18, 40
  %i.ev = add i64 %i.eu, %i.n, !nosanitize !9     ; 3 uses
  %i.ew = icmp ne i64 %i.ev, 0, !nosanitize !9
  %i.ex = icmp uge i64 %i.ev, %i.n, !nosanitize !9
  %i.ey = icmp slt i32 %.7168.lcssa.i, 0
  %i.ez = xor i1 %i.ey, %i.ex
  %i.fa = and i1 %i.ew, %i.ez, !nosanitize !9
  br i1 %i.fa, label %bb.ao, label %bb.an, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %.critedge10.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @491, i64 %i.n, i64 %i.ev) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %.critedge10.i
  %i.fb = getelementptr inbounds [40 x i8], ptr %2, i64 %18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %10, ptr noundef nonnull align 4 dereferenceable(40) %i.fb, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.fb, ptr noundef nonnull align 4 dereferenceable(40) %i.eq, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.eq, ptr noundef nonnull align 4 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !202, !noalias !199
  %i.fc = add nsw i32 %.7168.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %.critedge184.i

.critedge184.i:                                   ; preds = %bb.ak, %.critedge8.i, %bb.ao
  %.8169.i = phi i32 [ %i.fc, %bb.ao ], [ %.7168.lcssa.i, %.critedge8.i ], [ %.7168.lcssa.i, %bb.ak ] ; 3 uses
  %.8.in.i = phi i64 [ %indvars.iv.next730.i, %bb.ao ], [ %smin1500, %.critedge8.i ], [ %smin1500, %bb.ak ]
  %.8.i = trunc i64 %.8.in.i to i32               ; 2 uses
  %i.fd = icmp slt i32 %.8169.i, %.8.i
  br i1 %i.fd, label %.preheader308.i, label %.loopexit.i, !llvm.loop !183

.loopexit.i:                                      ; preds = %.critedge182.i, %.critedge183.i, %.critedge184.i
  %.sroa.12196.0 = phi i32 [ 2, %.critedge184.i ], [ 1, %.critedge183.i ], [ 0, %.critedge182.i ] ; 2 uses
  %.9.i = phi i32 [ %.8169.i, %.critedge184.i ], [ %.5166.i, %.critedge183.i ], [ %.2163.i, %.critedge182.i ] ; 3 uses
  %i.fe = icmp eq i32 %.9.i, 0
  %i.ff = add nsw i32 %1, -1
  %i.fg = icmp eq i32 %.9.i, %i.ff
  %or.cond186.i = select i1 %i.fe, i1 true, i1 %i.fg
  %i.fh = lshr i32 %1, 1
  %.10.i = select i1 %or.cond186.i, i32 %i.fh, i32 %.9.i ; 6 uses
  %i.fi = icmp sgt i32 %.10.i, 0
  br i1 %i.fi, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %wide.trip.count735.i = zext nneg i32 %.10.i to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.aq, %.loopexit.i
  %.sroa.8271.0.lcssa.i = phi float [ f0xFF7FFFFF, %.loopexit.i ], [ %i.fv, %bb.aq ] ; 2 uses
  %.sroa.7267.0.lcssa.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.loopexit.i ], [ %i.ft, %bb.aq ] ; 2 uses
  %.sroa.6263.0.lcssa.i = phi float [ f0x7F7FFFFF, %.loopexit.i ], [ %i.fr, %bb.aq ] ; 2 uses
  %.sroa.0260.0.lcssa.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.loopexit.i ], [ %i.fp, %bb.aq ] ; 2 uses
  %i.fj = icmp slt i32 %.10.i, %1
  br i1 %i.fj, label %.lr.ph540.preheader.i, label %b3SplitMedian.exit.thread

.lr.ph540.preheader.i:                            ; preds = %.preheader.i
  %i.fk = sext i32 %.10.i to i64
  br label %.lr.ph540.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.preheader.i
  %indvars.iv732.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next733.i, %bb.aq ] ; 3 uses
  %.sroa.0260.0530.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.fp, %bb.aq ] ; 2 uses
  %.sroa.6263.0529.i = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.i ], [ %i.fr, %bb.aq ] ; 2 uses
  %.sroa.7267.0528.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.i ], [ %i.ft, %bb.aq ] ; 2 uses
  %.sroa.8271.0527.i = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.i ], [ %i.fv, %bb.aq ] ; 2 uses
  %i.fl = mul nuw nsw i64 %indvars.iv732.i, 40
  %i.fm = add i64 %i.fl, %i.n, !nosanitize !9     ; 2 uses
  %.not.i = icmp ult i64 %i.fm, %i.n, !nosanitize !9
  br i1 %.not.i, label %bb.ap, label %bb.aq, !prof !17, !nosanitize !9

bb.ap:                                            ; preds = %.lr.ph.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @492, i64 %i.n, i64 %i.fm) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %.lr.ph.i
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv732.i ; 4 uses
  %.sroa.0290.0.copyload.i = load <2 x float>, ptr %i.fn, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.4291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.4291.0.copyload.i = load float, ptr %.sroa.4291.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %.sroa.5292.0.copyload.i = load <2 x float>, ptr %.sroa.5292.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.6293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %.sroa.6293.0.copyload.i = load float, ptr %.sroa.6293.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %i.fo = fcmp olt <2 x float> %.sroa.0260.0530.i, %.sroa.0290.0.copyload.i
  %i.fp = select <2 x i1> %i.fo, <2 x float> %.sroa.0260.0530.i, <2 x float> %.sroa.0290.0.copyload.i ; 2 uses
  %i.fq = fcmp olt float %.sroa.6263.0529.i, %.sroa.4291.0.copyload.i
  %i.fr = select i1 %i.fq, float %.sroa.6263.0529.i, float %.sroa.4291.0.copyload.i ; 2 uses
  %i.fs = fcmp ogt <2 x float> %.sroa.7267.0528.i, %.sroa.5292.0.copyload.i
  %i.ft = select <2 x i1> %i.fs, <2 x float> %.sroa.7267.0528.i, <2 x float> %.sroa.5292.0.copyload.i ; 2 uses
  %i.fu = fcmp ogt float %.sroa.8271.0527.i, %.sroa.6293.0.copyload.i
  %i.fv = select i1 %i.fu, float %.sroa.8271.0527.i, float %.sroa.6293.0.copyload.i ; 2 uses
  %indvars.iv.next733.i = add nuw nsw i64 %indvars.iv732.i, 1 ; 2 uses
  %exitcond736.not.i = icmp eq i64 %indvars.iv.next733.i, %wide.trip.count735.i
  br i1 %exitcond736.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !184

.lr.ph540.i:                                      ; preds = %bb.as, %.lr.ph540.preheader.i
  %indvars.iv737.i = phi i64 [ %i.fk, %.lr.ph540.preheader.i ], [ %indvars.iv.next738.i, %bb.as ] ; 4 uses
  %.sroa.0243.0538.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph540.preheader.i ], [ %i.gf, %bb.as ] ; 2 uses
  %.sroa.6246.0537.i = phi float [ f0x7F7FFFFF, %.lr.ph540.preheader.i ], [ %i.gh, %bb.as ] ; 2 uses
  %.sroa.7.0306536.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph540.preheader.i ], [ %i.gj, %bb.as ] ; 2 uses
  %.sroa.8.0535.i = phi float [ f0xFF7FFFFF, %.lr.ph540.preheader.i ], [ %i.gl, %bb.as ] ; 2 uses
  %i.fw = mul nsw i64 %indvars.iv737.i, 40
  %i.fx = add i64 %i.fw, %i.n, !nosanitize !9     ; 3 uses
  %i.fy = icmp ne i64 %i.fx, 0, !nosanitize !9
  %i.fz = icmp uge i64 %i.fx, %i.n, !nosanitize !9
  %i.ga = icmp slt i64 %indvars.iv737.i, 0
  %i.gb = xor i1 %i.ga, %i.fz
  %i.gc = and i1 %i.fy, %i.gb, !nosanitize !9
  br i1 %i.gc, label %bb.as, label %bb.ar, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %.lr.ph540.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @493, i64 %i.n, i64 %i.fx) #13, !noalias !199, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %.lr.ph540.i
  %i.gd = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv737.i ; 4 uses
  %.sroa.0302.0.copyload.i = load <2 x float>, ptr %i.gd, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.4303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.4303.0.copyload.i = load float, ptr %.sroa.4303.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.5304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %.sroa.5304.0.copyload.i = load <2 x float>, ptr %.sroa.5304.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %.sroa.6305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %.sroa.6305.0.copyload.i = load float, ptr %.sroa.6305.0..sroa_idx.i, align 4, !tbaa !22, !noalias !199 ; 2 uses
  %i.ge = fcmp olt <2 x float> %.sroa.0243.0538.i, %.sroa.0302.0.copyload.i
  %i.gf = select <2 x i1> %i.ge, <2 x float> %.sroa.0243.0538.i, <2 x float> %.sroa.0302.0.copyload.i ; 2 uses
  %i.gg = fcmp olt float %.sroa.6246.0537.i, %.sroa.4303.0.copyload.i
  %i.gh = select i1 %i.gg, float %.sroa.6246.0537.i, float %.sroa.4303.0.copyload.i ; 2 uses
  %i.gi = fcmp ogt <2 x float> %.sroa.7.0306536.i, %.sroa.5304.0.copyload.i
  %i.gj = select <2 x i1> %i.gi, <2 x float> %.sroa.7.0306536.i, <2 x float> %.sroa.5304.0.copyload.i ; 2 uses
  %i.gk = fcmp ogt float %.sroa.8.0535.i, %.sroa.6305.0.copyload.i
  %i.gl = select i1 %i.gk, float %.sroa.8.0535.i, float %.sroa.6305.0.copyload.i ; 2 uses
  %indvars.iv.next738.i = add nsw i64 %indvars.iv737.i, 1 ; 2 uses
  %exitcond741.not.i = icmp eq i64 %indvars.iv.next738.i, %wide.trip.count.i
  br i1 %exitcond741.not.i, label %b3SplitMedian.exit.thread, label %.lr.ph540.i, !llvm.loop !185

bb.at:                                            ; preds = %bb.b
  br i1 %i.q, label %bb.av, label %bb.au, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @494, i64 %i.n) #13, !noalias !205, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.0304.0.copyload309.i = load <2 x float>, ptr %i.gm, align 4, !tbaa !22, !noalias !205 ; 2 uses
  %.sroa.10.0..sroa_idx310.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.10.0.copyload311.i = load float, ptr %.sroa.10.0..sroa_idx310.i, align 4, !tbaa !22, !noalias !205 ; 2 uses
  %wide.trip.count.i78 = zext nneg i32 %1 to i64  ; 5 uses
  br label %bb.aw

.preheader361.split.i:                            ; preds = %bb.ay
  %i.gn = fsub <2 x float> %i.jb, %i.ix
  %i.go = fsub float %i.jd, %i.iz
  %i.gp = fmul <2 x float> %i.gn, splat (float 5.000000e-01)
  %i.gq = fmul float %i.go, 5.000000e-01
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gs = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 3 uses
  %i.gt = ptrtoint ptr %6 to i64                  ; 33 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gw = ptrtoint ptr %i.h to i64                ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gz = ptrtoint ptr %i.g to i64                ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.hb = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.he = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.hf = add i64 %i.gt, 28
  %i.hg = add i64 %i.gt, 56
  %i.hh = add i64 %i.gt, 84
  %i.hi = add i64 %i.gt, 112
  %i.hj = add i64 %i.gt, 140
  %i.hk = add i64 %i.gt, 168
  %i.hl = add i64 %i.gt, 196
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.not141.1.i = icmp ugt ptr %6, inttoptr (i64 -29 to ptr)
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.not141.2.i = icmp ugt ptr %6, inttoptr (i64 -57 to ptr)
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 84
  %.not141.3.i = icmp ugt ptr %6, inttoptr (i64 -85 to ptr)
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 112
  %.not141.4.i = icmp ugt ptr %6, inttoptr (i64 -113 to ptr)
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 140
  %.not141.5.i = icmp ugt ptr %6, inttoptr (i64 -141 to ptr)
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 168
  %.not141.6.i = icmp ugt ptr %6, inttoptr (i64 -169 to ptr)
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 172
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 196
  %.not141.7.i = icmp ugt ptr %6, inttoptr (i64 -197 to ptr)
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.ib = extractelement <2 x float> %i.ix, i64 0 ; 6 uses
  %i.ic = extractelement <2 x float> %i.ix, i64 1 ; 6 uses
  %i.id = extractelement <2 x float> %i.jb, i64 0 ; 2 uses
  %i.ie = extractelement <2 x float> %i.jb, i64 1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.4342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.5343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.not139.i.1 = icmp ugt ptr %6, inttoptr (i64 -29 to ptr)
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.4342.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.5343.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.6344.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %6, i64 52
  %.not139.i.2 = icmp ugt ptr %6, inttoptr (i64 -57 to ptr)
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 60
  %.sroa.4342.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %6, i64 68
  %.sroa.5343.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %6, i64 72
end_hunk_0
