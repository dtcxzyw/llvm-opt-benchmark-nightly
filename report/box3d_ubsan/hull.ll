Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3HullMap_cleanup:bb.a
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @185, i64 %i.b) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %b3HullMap_init.exit

b3HullMap_init.exit:                              ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = mul i64 %i.g, 18
  %i.k = add i64 %i.j, 26
  tail call void @b3Free(ptr noundef %i.i, i64 noundef %i.k) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @vt_empty_placeholder_metadatum, ptr %i.l, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %b3HullMap_init.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @b3HullMapByteCount(ptr noundef %0) local_unnamed_addr #7 !func_sanitize !256 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %b3HullMap_bucket_count.exit, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @136, i64 %i.b) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullMap_bucket_count.exit:                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = add i64 %i.g, 1
  %.not = icmp ult i64 %i.h, 2
  %i.i = mul i64 %i.g, 18
  %i.j = add i64 %i.i, 58
  %.0 = select i1 %.not, i64 32, i64 %i.j
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define ptr @b3CloneAndTransformHull(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, <2 x float> %2, float %3) local_unnamed_addr #0 !func_sanitize !266 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.do, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @186, i64 %i.b) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !72
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @b3Alloc(i64 noundef %i.g) #14 ; 22 uses
  %i.i = load i32, ptr %i.e, align 4, !tbaa !72
  %i.j = sext i32 %i.i to i64
  %.not = icmp eq ptr %i.h, null, !nosanitize !12
  br i1 %.not, label %bb.e, label %bb.f, !prof !22, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @187) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.k = ptrtoint ptr %i.h to i64, !nosanitize !12 ; 18 uses
  %i.l = and i64 %i.k, 7, !nosanitize !12
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !12
  br i1 %i.m, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @188, i64 %i.k) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %0, i64 %i.j, i1 false)
  %i.n = fcmp olt float %3, 0.000000e+00
  %i.o = fneg float %3
  %i.p = select i1 %i.n, float %i.o, float %3     ; 2 uses
  %i.q = fcmp oge float %3, 0.000000e+00
  %i.r = fcmp ogt float %i.p, f0x3C23D70A
  %i.s = select i1 %i.r, float %i.p, float f0x3C23D70A ; 2 uses
  %i.t = fcmp olt <2 x float> %2, zeroinitializer
  %i.u = fneg <2 x float> %2
  %i.v = select <2 x i1> %i.t, <2 x float> %i.u, <2 x float> %2 ; 2 uses
  %i.w = fcmp oge <2 x float> %2, zeroinitializer
  %i.x = fcmp ogt <2 x float> %i.v, splat (float f0x3C23D70A)
  %i.y = select <2 x i1> %i.x, <2 x float> %i.v, <2 x float> splat (float f0x3C23D70A) ; 2 uses
  %i.z = fneg <2 x float> %i.y
  %i.aa = select <2 x i1> %i.w, <2 x float> %i.y, <2 x float> %i.z ; 3 uses
  %i.ab = fneg float %i.s
  %i.ac = select i1 %i.q, float %i.s, float %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !68 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %b3GetHullEdgesWrite.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 %i.ag), !nosanitize !12
  %.fr1228 = freeze { i64, i1 } %i.ah             ; 2 uses
  %i.ai = extractvalue { i64, i1 } %.fr1228, 1, !nosanitize !12
  br i1 %i.ai, label %bb.j, label %bb.k, !prof !22, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @549, i64 %i.k, i64 %i.ag) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.k:                                             ; preds = %bb.i
  %i.aj = extractvalue { i64, i1 } %.fr1228, 0, !nosanitize !12
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %b3GetHullEdgesWrite.exit

b3GetHullEdgesWrite.exit:                         ; preds = %bb.h, %bb.k
  %.0.i = phi ptr [ %i.ak, %bb.k ], [ null, %bb.h ] ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.am = load i32, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %b3GetHullFaces.exit, label %bb.l

bb.l:                                             ; preds = %b3GetHullEdgesWrite.exit
  %i.ao = sext i32 %i.am to i64                   ; 2 uses
  %i.ap = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 %i.ao), !nosanitize !12
  %.fr1230 = freeze { i64, i1 } %i.ap             ; 2 uses
  %i.aq = extractvalue { i64, i1 } %.fr1230, 1, !nosanitize !12
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !22, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @643, i64 %i.k, i64 %i.ao) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  %i.ar = extractvalue { i64, i1 } %.fr1230, 0, !nosanitize !12
  %i.as = inttoptr i64 %i.ar to ptr
  br label %b3GetHullFaces.exit

b3GetHullFaces.exit:                              ; preds = %b3GetHullEdgesWrite.exit, %bb.n
  %.0.i307 = phi ptr [ %i.as, %bb.n ], [ null, %b3GetHullEdgesWrite.exit ] ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.au = load i32, ptr %i.at, align 8, !tbaa !24 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 100 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20 ; 9 uses
  %shift = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.aa, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ay = fmul float %i.ac, %i.ax
  %i.az = fcmp olt float %i.ay, 0.000000e+00
  br i1 %i.az, label %.preheader423, label %.loopexit

.preheader423:                                    ; preds = %b3GetHullFaces.exit
  %i.ba = icmp sgt i32 %i.au, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader423
  %i.bb = ptrtoint ptr %.0.i307 to i64, !nosanitize !12 ; 3 uses
  %.not1231 = icmp eq ptr %.0.i307, null, !nosanitize !12
  %i.bc = ptrtoint ptr %.0.i to i64               ; 9 uses
  br i1 %.not1231, label %.split1070.us, label %.lr.ph.split, !prof !22

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not1229 = icmp eq ptr %.0.i, null
  br i1 %.not1229, label %.split.us, label %.lr.ph.split.split.us.preheader, !prof !22

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.au to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.bd = add i64 %indvars.iv, %i.bb, !nosanitize !12 ; 2 uses
  %.not1233 = icmp ult i64 %i.bd, %i.bb, !nosanitize !12
  br i1 %.not1233, label %.split1066.us, label %.split.us1074, !prof !22, !nosanitize !12

.split.us1074:                                    ; preds = %.lr.ph.split.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i307, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !82  ; 3 uses
  %i.bg = zext i8 %i.bf to i32                    ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.split.us1074
  %.0248.us1076 = phi i32 [ %i.bg, %.split.us1074 ], [ %.1249.us, %bb.p ] ; 3 uses
  %i.bh = zext nneg i32 %.0248.us1076 to i64      ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = add i64 %i.bi, %i.bc, !nosanitize !12   ; 2 uses
  %.not1235 = icmp ult i64 %i.bj, %i.bc, !nosanitize !12
  br i1 %.not1235, label %.split1041.us, label %bb.p, !prof !22, !nosanitize !12

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !76  ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = icmp eq i8 %i.bl, %i.bf                 ; 3 uses
  %.1249.us = select i1 %i.bn, i32 %.0248.us1076, i32 %i.bm ; 2 uses
  %.not304.us = icmp eq i32 %.1249.us, %i.bg
  %or.cond.us = or i1 %i.bn, %.not304.us
  br i1 %or.cond.us, label %.preheader422.us.preheader, label %bb.o, !llvm.loop !257

.preheader422.us.preheader:                       ; preds = %bb.p
  %.1251.us = select i1 %i.bn, i32 %.0248.us1076, i32 -1
  br label %.preheader422.us

.preheader422.us:                                 ; preds = %.preheader422.us.preheader, %bb.t
  %.2252.us = phi i32 [ %.2.us, %bb.t ], [ %.1251.us, %.preheader422.us.preheader ]
  %.2.us = phi i32 [ %i.cg, %bb.t ], [ %i.bg, %.preheader422.us.preheader ] ; 3 uses
  %i.bo = zext nneg i32 %.2.us to i64             ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.bo ; 4 uses
  %i.bq = shl nuw nsw i64 %i.bo, 2
  %i.br = add i64 %i.bq, %i.bc, !nosanitize !12   ; 2 uses
  %.not417.us = icmp ult i64 %i.br, %i.bc, !nosanitize !12
  br i1 %.not417.us, label %.split1090.us, label %bb.q, !prof !22, !nosanitize !12

bb.q:                                             ; preds = %.preheader422.us
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !76  ; 2 uses
  %i.bt = trunc i32 %.2252.us to i8
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !76
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !77  ; 2 uses
  %i.bw = zext i8 %i.bv to i32
  %i.bx = icmp samesign ult i32 %.2.us, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.by = zext i8 %i.bv to i64                    ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = add i64 %i.bz, %i.bc, !nosanitize !12   ; 2 uses
  %.not418.us = icmp ult i64 %i.ca, %i.bc, !nosanitize !12
  br i1 %.not418.us, label %.split1100.us, label %bb.s, !prof !22, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  store i8 %i.cf, ptr %i.cc, align 1
  store i8 %i.cd, ptr %i.ce, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.cg = zext i8 %i.bs to i32
  %.not306.us = icmp eq i8 %i.bs, %i.bf
  br i1 %.not306.us, label %bb.u, label %.preheader422.us, !llvm.loop !258

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.u, %.preheader423
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !67 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %b3GetHullVerticesWrite.exit.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ck = sext i32 %i.ci to i64                   ; 2 uses
  %i.cl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 %i.ck), !nosanitize !12
  %.fr1236 = freeze { i64, i1 } %i.cl             ; 2 uses
  %i.cm = extractvalue { i64, i1 } %.fr1236, 1, !nosanitize !12
  br i1 %i.cm, label %bb.w, label %b3GetHullVerticesWrite.exit, !prof !22, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @548, i64 %i.k, i64 %i.ck) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3GetHullVerticesWrite.exit:                      ; preds = %bb.v
  %i.cn = extractvalue { i64, i1 } %.fr1236, 0, !nosanitize !12 ; 5 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = icmp sgt i32 %i.aw, 0
  br i1 %i.cp, label %.lr.ph1110, label %.loopexit

b3GetHullVerticesWrite.exit.thread:               ; preds = %._crit_edge
  %i.cq = icmp sgt i32 %i.aw, 0
  br i1 %i.cq, label %.split1115.us, label %.loopexit

.lr.ph1110:                                       ; preds = %b3GetHullVerticesWrite.exit
  %.not1237 = icmp eq i64 %i.cn, 0
  %i.cr = ptrtoint ptr %.0.i to i64               ; 3 uses
  br i1 %.not1237, label %.split1115.us, label %.lr.ph1110.split, !prof !26

.lr.ph1110.split:                                 ; preds = %.lr.ph1110
  %.not1238 = icmp eq ptr %.0.i, null
  br i1 %.not1238, label %.lr.ph1110.split.split.us, label %.lr.ph1110.split.split.preheader, !prof !22

.lr.ph1110.split.split.preheader:                 ; preds = %.lr.ph1110.split
  %wide.trip.count1783 = zext nneg i32 %i.aw to i64
  br label %.lr.ph1110.split.split

.lr.ph1110.split.split.us:                        ; preds = %.lr.ph1110.split
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !74  ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = icmp eq i8 %i.cs, 0
  br i1 %i.cv, label %.split1130.us, label %.split1126.us, !prof !13, !nosanitize !12

.split1066.us:                                    ; preds = %.lr.ph.split.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @189, i64 %i.bb, i64 %i.bd) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1070.us:                                    ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @191, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split.us:                                        ; preds = %.lr.ph.split
  %i.cw = load i8, ptr %.0.i307, align 1, !tbaa !82 ; 2 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = icmp eq i8 %i.cw, 0
  br i1 %i.cz, label %.split1044.us, label %.split1041.us, !prof !13, !nosanitize !12

.split1041.us:                                    ; preds = %bb.o, %.split.us
  %.us-phi1042 = phi i64 [ %i.cy, %.split.us ], [ %i.bj, %bb.o ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @192, i64 %i.bc, i64 %.us-phi1042) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1044.us:                                    ; preds = %.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @193, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1090.us:                                    ; preds = %.preheader422.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @194, i64 %i.bc, i64 %i.br) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1100.us:                                    ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @195, i64 %i.bc, i64 %i.ca) #13, !nosanitize !12
  unreachable, !nosanitize !12

.lr.ph1110.split.split:                           ; preds = %.lr.ph1110.split.split.preheader, %bb.y
  %indvars.iv1780 = phi i64 [ 0, %.lr.ph1110.split.split.preheader ], [ %indvars.iv.next1781, %bb.y ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv1780 ; 2 uses
  %i.db = add i64 %indvars.iv1780, %i.cn, !nosanitize !12 ; 2 uses
  %.not1240 = icmp ult i64 %i.db, %i.cn, !nosanitize !12
  br i1 %.not1240, label %.split.us1111, label %bb.x, !prof !22, !nosanitize !12

.split.us1111:                                    ; preds = %.lr.ph1110.split.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @196, i64 %i.cn, i64 %i.db) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1115.us:                                    ; preds = %b3GetHullVerticesWrite.exit.thread, %.lr.ph1110
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @197, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.x:                                             ; preds = %.lr.ph1110.split.split
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !74
  %i.dd = zext i8 %i.dc to i64                    ; 2 uses
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = add i64 %i.de, %i.cr, !nosanitize !12   ; 2 uses
  %.not1242 = icmp ult i64 %i.df, %i.cr, !nosanitize !12
  br i1 %.not1242, label %.split1126.us, label %bb.y, !prof !22, !nosanitize !12

.split1126.us:                                    ; preds = %bb.x, %.lr.ph1110.split.split.us
  %.us-phi1128 = phi i64 [ %i.cu, %.lr.ph1110.split.split.us ], [ %i.df, %bb.x ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @198, i64 %i.cr, i64 %.us-phi1128) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1130.us:                                    ; preds = %.lr.ph1110.split.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @200, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !77
  store i8 %i.di, ptr %i.da, align 1, !tbaa !74
  %indvars.iv.next1781 = add nuw nsw i64 %indvars.iv1780, 1 ; 2 uses
  %exitcond1784.not = icmp eq i64 %indvars.iv.next1781, %wide.trip.count1783
  br i1 %exitcond1784.not, label %.loopexit, label %.lr.ph1110.split.split, !llvm.loop !260

.loopexit:                                        ; preds = %bb.y, %b3GetHullVerticesWrite.exit.thread, %b3GetHullVerticesWrite.exit, %b3GetHullFaces.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dk = load <2 x float>, ptr %i.dj, align 4    ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load <2 x float>, ptr %i.dl, align 4    ; 6 uses
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = fmul <2 x float> %i.dk, %i.dn           ; 2 uses
  %i.dp = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.dp, %i.dq           ; 2 uses
  %shift2548 = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2549 = fmul <2 x float> %i.dk, %shift2548 ; 2 uses
  %foldExtExtBinop2551 = fmul <2 x float> %i.dm, %i.dm
  %i.ds = fmul <2 x float> %i.dk, %i.dk           ; 3 uses
  %shift2553 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2554 = fmul <2 x float> %i.dm, %shift2553 ; 2 uses
  %i.dt = shufflevector <2 x float> %foldExtExtBinop2551, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fadd <2 x float> %i.ds, %i.dt
  %i.dv = fmul <2 x float> %i.du, splat (float 2.000000e+00)
  %foldExtExtBinop2556 = fadd <2 x float> %foldExtExtBinop2549, %foldExtExtBinop2554
  %foldExtExtBinop2558 = fsub <2 x float> %foldExtExtBinop2549, %foldExtExtBinop2554
  %i.dw = shufflevector <2 x float> %foldExtExtBinop2556, <2 x float> %foldExtExtBinop2558, <2 x i32> <i32 0, i32 2>
  %i.dx = fmul <2 x float> %i.dw, splat (float 2.000000e+00)
  %i.dy = fsub <2 x float> splat (float 1.000000e+00), %i.dv
  %i.dz = fsub <2 x float> %i.dr, %i.do           ; 2 uses
  %i.ea = fadd <2 x float> %i.dr, %i.do           ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 1, i32 2>
  %i.ec = fmul <2 x float> %i.eb, splat (float 2.000000e+00)
  %i.ed = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 3>
  %i.ee = fmul <2 x float> %i.ed, splat (float 2.000000e+00)
  %shift2560 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2561 = fadd <2 x float> %i.ds, %shift2560
  %i.ef = extractelement <2 x float> %foldExtExtBinop2561, i64 0
  %i.eg = fmul float %i.ef, 2.000000e+00
  %i.eh = fsub float 1.000000e+00, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 108
end_hunk_0
