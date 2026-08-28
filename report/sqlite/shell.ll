Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@base85:bb.a
    i32 4, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %.thread.i
  %i.jt = lshr i64 %.042.lcssa.i, 24
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.04583.i, i64 1
  store i8 %i.ju, ptr %.04583.i, align 1, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i
  %.146.i = phi ptr [ %i.jv, %bb.al ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.jw = lshr i64 %.042.lcssa.i, 16
  %i.jx = trunc i64 %i.jw to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.146.i, i64 1
  store i8 %i.jx, ptr %.146.i, align 1, !tbaa !16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %.247.i = phi ptr [ %i.jy, %bb.am ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.jz = lshr i64 %.042.lcssa.i, 8
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %.247.i, i64 1
  store i8 %i.ka, ptr %.247.i, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread.i
  %.3.i54 = phi ptr [ %i.kb, %bb.an ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.kc = trunc i64 %.042.lcssa.i to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.3.i54, i64 1
  store i8 %i.kc, ptr %.3.i54, align 1, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread.i
  %.5.i = phi ptr [ %i.kd, %bb.ao ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.ke = icmp sgt i32 %.351.i, 0
  br i1 %i.ke, label %.lr.ph84.i, label %fromBase85.exit

fromBase85.exit:                                  ; preds = %skipNonB85.exit.i, %bb.ap, %bb.ac, %bb.ad
  %.045.lcssa.i = phi ptr [ %i.ef, %bb.ad ], [ %i.ef, %bb.ac ], [ %.04583.i, %skipNonB85.exit.i ], [ %.5.i, %bb.ap ]
  %i.kf = ptrtoint ptr %.045.lcssa.i to i64
  %i.kg = ptrtoint ptr %i.ef to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = trunc i64 %i.kh to i32
  tail call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef %i.ki, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.as

bb.aq:                                            ; preds = %bb.a
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.313, i32 noundef -1) #45
  br label %bb.as

bb.ar:                                            ; preds = %bb.ab, %bb.z, %bb.g, %bb.e
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.314, i32 noundef -1) #45
  br label %bb.as

bb.as:                                            ; preds = %bb.f, %toBase85.exit, %bb.aa, %fromBase85.exit, %bb.ar, %bb.aq, %bb.x, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_ieee_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr @sqlite3_ieee_init.aFunc, i64 %indvars.iv ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.h = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.d, i32 noundef 2097153, ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.i = icmp samesign ult i64 %indvars.iv, 8
  %i.j = icmp eq i32 %i.h, 0
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !199

bb.c:                                             ; preds = %bb.b
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.c = load ptr, ptr %2, align 8, !tbaa !154
  %i.d = tail call i32 @sqlite3_value_type(ptr noundef %i.c) #45
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !154
  %i.g = tail call i32 @sqlite3_value_bytes(ptr noundef %i.f) #45
  %i.h = icmp eq i32 %i.g, 8
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !154
  %i.j = tail call ptr @sqlite3_value_blob(ptr noundef %i.i) #45 ; 8 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.l, 16
  %i.q = shl nuw nsw i64 %i.o, 8
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.v, 16
  %i.aa = shl nuw nsw i64 %i.y, 8
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.af, 16
  %i.ak = shl nuw nsw i64 %i.ai, 8
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i64
  %i.ap = or disjoint i64 %i.al, %i.ao
  %i.aq = shl nuw i64 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.aq, %i.at
  %i.av = bitcast i64 %i.au to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.aw = load ptr, ptr %2, align 8, !tbaa !154
  %i.ax = tail call double @sqlite3_value_double(ptr noundef %i.aw) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.082 = phi double [ %i.av, %bb.d ], [ %i.ax, %bb.e ] ; 3 uses
  %i.ay = fcmp uge double %.082, 0.000000e+00     ; 2 uses
  %i.az = fneg double %.082
  %.183 = select i1 %i.ay, double %.082, double %i.az
  %i.ba = bitcast double %.183 to i64             ; 5 uses
  switch i64 %i.ba, label %bb.h [
    i64 0, label %bb.i
    i64 -9223372036854775808, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bb = ashr i64 %i.ba, 52                      ; 3 uses
  %i.bc = trunc nsw i64 %i.bb to i32              ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 0
  %i.be = shl nuw nsw i64 %i.ba, 1
  %i.bf = and i64 %i.ba, 4503599627370495
  %i.bg = or disjoint i64 %i.bf, 4503599627370496
  %.084 = select i1 %i.bd, i64 %i.be, i64 %i.bg   ; 4 uses
  %i.bh = icmp slt i64 %i.bb, 1075
  %i.bi = icmp ne i64 %.084, 0
  %i.bj = and i64 %.084, 1
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = and i1 %i.bi, %i.bk
  %i.bm = select i1 %i.bh, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.h, %.lr.ph111
  %.080109 = phi i32 [ %i.bo, %.lr.ph111 ], [ %i.bc, %bb.h ] ; 2 uses
  %.185108 = phi i64 [ %i.bn, %.lr.ph111 ], [ %.084, %bb.h ] ; 3 uses
  %i.bn = lshr exact i64 %.185108, 1              ; 2 uses
  %i.bo = add nsw i32 %.080109, 1                 ; 2 uses
  %i.bp = icmp slt i32 %.080109, 1074
  %i.bq = icmp ne i64 %.185108, 0
  %i.br = and i64 %.185108, 2
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = and i1 %i.bq, %i.bs
  %i.bu = select i1 %i.bp, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph111, label %._crit_edge112, !llvm.loop !200

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.h
  %.185.lcssa = phi i64 [ %.084, %bb.h ], [ %i.bn, %.lr.ph111 ] ; 2 uses
  %.080.lcssa = phi i32 [ %i.bc, %bb.h ], [ %i.bo, %.lr.ph111 ]
  %3 = sub nsw i64 0, %.185.lcssa
  %spec.select = select i1 %i.ay, i64 %.185.lcssa, i64 %3
  %4 = add nsw i32 %.080.lcssa, -1075
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge112, %bb.f, %bb.g
  %.286 = phi i64 [ %spec.select, %._crit_edge112 ], [ -1, %bb.g ], [ %i.ba, %bb.f ] ; 2 uses
  %.181 = phi i32 [ %4, %._crit_edge112 ], [ -3071, %bb.g ], [ -1075, %bb.f ] ; 2 uses
  %i.bv = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  switch i32 %i.bw, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bx = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.315, i64 noundef %.286, i32 noundef %.181) #45 ; 0 uses
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %.286) #45
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @sqlite3_result_int(ptr noundef %0, i32 noundef %.181) #45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.by = load ptr, ptr %2, align 8, !tbaa !154
  %i.bz = tail call i64 @sqlite3_value_int64(ptr noundef %i.by) #45 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !154
  %i.cc = tail call i64 @sqlite3_value_int64(ptr noundef %i.cb) #45
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 -10000)
  %.072 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 10000) ; 3 uses
  %i.cd = icmp sgt i64 %i.bz, -1
  br i1 %i.cd, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = icmp eq i64 %i.bz, -9223372036854775808
  br i1 %i.ce, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = sub nsw i64 0, %i.bz
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cg = icmp eq i64 %i.bz, 0
  %i.ch = add nsw i64 %.072, 999
  %i.ci = icmp ult i64 %i.ch, 1999
  %or.cond5 = and i1 %i.cg, %i.ci
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef 0.000000e+00) #45
  br label %bb.w

bb.s:                                             ; preds = %bb.q, %bb.p
  %.073 = phi i64 [ %i.cf, %bb.p ], [ %i.bz, %bb.q ] ; 3 uses
  %.not97 = icmp samesign ult i64 %.073, 9007199254740992
  br i1 %.not97, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.s
  %.174.lcssa = phi i64 [ %.073, %bb.s ], [ %i.cl, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i64 [ %.072, %bb.s ], [ %i.cm, %.lr.ph ] ; 2 uses
  %i.cj = add nsw i64 %.174.lcssa, -1
  %i.ck = icmp ult i64 %i.cj, 4503599627370495
  br i1 %i.ck, label %.lr.ph103, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.199 = phi i64 [ %i.cm, %.lr.ph ], [ %.072, %bb.s ]
  %.17498 = phi i64 [ %i.cl, %.lr.ph ], [ %.073, %bb.s ] ; 2 uses
  %i.cl = lshr i64 %.17498, 1                     ; 2 uses
  %i.cm = add nsw i64 %.199, 1                    ; 2 uses
  %.not = icmp ult i64 %.17498, 18014398509481984
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !201

.lr.ph103:                                        ; preds = %.preheader, %.lr.ph103
  %.2102 = phi i64 [ %i.co, %.lr.ph103 ], [ %.1.lcssa, %.preheader ]
  %.275101 = phi i64 [ %i.cn, %.lr.ph103 ], [ %.174.lcssa, %.preheader ] ; 2 uses
  %i.cn = shl nuw nsw i64 %.275101, 1             ; 2 uses
  %i.co = add nsw i64 %.2102, -1                  ; 2 uses
  %i.cp = icmp ult i64 %.275101, 2251799813685248
  br i1 %i.cp, label %.lr.ph103, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph103, %.preheader
  %.275.lcssa = phi i64 [ %.174.lcssa, %.preheader ], [ %i.cn, %.lr.ph103 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader ], [ %i.co, %.lr.ph103 ] ; 4 uses
  %i.cq = icmp slt i64 %.2.lcssa, -1074
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.cr = icmp samesign ult i64 %.2.lcssa, -1137
  %i.cs = sub nuw nsw i64 -1074, %.2.lcssa
  %i.ct = lshr i64 %.275.lcssa, %i.cs
  %.376 = select i1 %i.cr, i64 0, i64 %i.ct
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cu = tail call i64 @llvm.smin.i64(i64 %.2.lcssa, i64 972)
  %spec.store.select6 = shl nsw i64 %i.cu, 52
  %i.cv = add nsw i64 %spec.store.select6, 4841369599423283200
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.4 = phi i64 [ %.376, %bb.t ], [ %.275.lcssa, %bb.u ]
  %.3 = phi i64 [ 0, %bb.t ], [ %i.cv, %bb.u ]
  %i.cw = and i64 %.4, 4503599627370495
  %i.cx = and i64 %i.bz, -9223372036854775808
  %i.cy = or i64 %.3, %i.cx
  %spec.select.a = or i64 %i.cy, %i.cw
  %i.cz = bitcast i64 %spec.select.a to double
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.cz) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.o, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func_to_blob(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !154
  %i.c = tail call i32 @sqlite3_value_type(ptr noundef %i.b) #45
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !154
  %i.f = tail call i32 @sqlite3_value_type(ptr noundef %i.e) #45
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !154
  %i.i = tail call double @sqlite3_value_double(ptr noundef %i.h) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.j = bitcast double %i.i to i64               ; 8 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.k, ptr %i.l, align 1, !tbaa !16
  %i.m = lshr i64 %i.j, 8
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.n, ptr %i.o, align 1, !tbaa !16
  %i.p = lshr i64 %i.j, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !16
  %i.s = lshr i64 %i.j, 24
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.t, ptr %i.u, align 1, !tbaa !16
  %i.v = lshr i64 %i.j, 32
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !16
  %i.y = lshr i64 %i.j, 40
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !16
  %i.ab = lshr i64 %i.j, 48
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !16
  %i.ae = lshr i64 %i.j, 56
  %i.af = trunc nuw i64 %i.ae to i8
  store i8 %i.af, ptr %i.a, align 1, !tbaa !16
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func_from_blob(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !154
  %i.b = tail call i32 @sqlite3_value_type(ptr noundef %i.a) #45
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !154
  %i.e = tail call i32 @sqlite3_value_bytes(ptr noundef %i.d) #45
  %i.f = icmp eq i32 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !154
  %i.h = tail call ptr @sqlite3_value_blob(ptr noundef %i.g) #45 ; 8 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.j, 16
  %i.o = shl nuw nsw i64 %i.m, 8
  %i.p = or disjoint i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.t, 16
  %i.y = shl nuw nsw i64 %i.w, 8
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ad, 16
  %i.ai = shl nuw nsw i64 %i.ag, 8
end_hunk_0
begin_hunk_1_@seriesOpen:bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %1, align 8, !tbaa !909
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @seriesClose(ptr noundef %0) #4 {
bb.a:
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @seriesFilter(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !911

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.d = tail call i32 @sqlite3_value_type(ptr noundef %i.c) #45
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %seriesRealToI64.exit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = and i32 %1, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = load ptr, ptr %4, align 8, !tbaa !154
  %i.h = tail call i64 @sqlite3_value_int64(ptr noundef %i.g) #45
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.sink = phi i64 [ %i.h, %bb.c ], [ 0, %._crit_edge ]
  %.0223 = phi i32 [ 1, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sink, ptr %i.i, align 8, !tbaa !912
  %i.j = and i32 %1, 2
  %.not246 = icmp eq i32 %i.j, 0
  br i1 %.not246, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %.0223, 1
  %i.l = zext nneg i32 %.0223 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.o = tail call i64 @sqlite3_value_int64(ptr noundef %i.n) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink317 = phi i64 [ %i.o, %bb.e ], [ 4294967295, %bb.d ]
  %.1224 = phi i32 [ %i.k, %bb.e ], [ %.0223, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %.sink317, ptr %i.p, align 8, !tbaa !915
  %i.q = and i32 %1, 4
  %.not247 = icmp eq i32 %i.q, 0
  br i1 %.not247, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nuw nsw i32 %.1224, 1
  %i.s = zext nneg i32 %.1224 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154
  %i.v = tail call i64 @sqlite3_value_int64(ptr noundef %i.u) #45
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = phi i64 [ %spec.store.select, %bb.g ], [ 1, %bb.f ] ; 4 uses
  %.2225 = phi i32 [ %i.r, %bb.g ], [ %.1224, %bb.f ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.x, align 8
  %i.y = and i32 %1, 5
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = and i32 %1, 896
  %.not248 = icmp eq i32 %i.aa, 0
  %or.cond = or i1 %i.z, %.not248
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.i, align 8, !tbaa !912
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = and i32 %1, 6
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = and i32 %1, 12416
  %.not249 = icmp eq i32 %i.ad, 0
  %or.cond268 = or i1 %i.ac, %.not249
  br i1 %or.cond268, label %._crit_edge318, label %bb.k

._crit_edge318:                                   ; preds = %bb.j
  %.pre = load i64, ptr %i.p, align 8, !tbaa !915
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 9223372036854775807, ptr %i.p, align 8, !tbaa !915
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge318, %bb.k
  %i.ae = phi i64 [ %.pre, %._crit_edge318 ], [ 9223372036854775807, %bb.k ] ; 3 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !912 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !916
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !917
  %i.ai = icmp sgt i64 %i.w, 0
  br i1 %i.ai, label %bb.m, label %.thread286

.thread286:                                       ; preds = %bb.l
  %i.aj = sub i64 0, %i.w
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !918
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 1, ptr %i.al, align 8, !tbaa !919
  %i.am = icmp slt i64 %i.af, %i.ae
  br i1 %i.am, label %seriesRealToI64.exit, label %.thread338.a

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.w, ptr %i.an, align 8, !tbaa !918
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 0, ptr %i.ao, align 8, !tbaa !919
  %i.ap = icmp sgt i64 %i.af, %i.ae
  br i1 %i.ap, label %seriesRealToI64.exit, label %.thread338.a

.thread338.a:                                     ; preds = %bb.m, %.thread286
  %i.aq = phi ptr [ %i.al, %.thread286 ], [ %i.ao, %bb.m ] ; 3 uses
  %i.ar = and i32 %1, 32
  %.not252 = icmp eq i32 %i.ar, 0                 ; 2 uses
  br i1 %.not252, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.thread338.a
  %i.as = add nuw nsw i32 %.2225, 1               ; 2 uses
  %i.at = zext nneg i32 %.2225 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.aw = tail call i64 @sqlite3_value_int64(ptr noundef %i.av) #45 ; 2 uses
  %i.ax = and i32 %1, 64
  %.not253 = icmp eq i32 %i.ax, 0
  br i1 %.not253, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = add nuw nsw i32 %.2225, 2
  %i.az = zext nneg i32 %i.as to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154
  %i.bc = tail call i64 @sqlite3_value_int64(ptr noundef %i.bb) #45
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.thread338.a
  %.3226 = phi i32 [ %i.ay, %bb.o ], [ %i.as, %bb.n ], [ %.2225, %.thread338.a ] ; 4 uses
  %.0211 = phi i64 [ %i.aw, %bb.o ], [ %i.aw, %bb.n ], [ 0, %.thread338.a ] ; 3 uses
  %.0210 = phi i64 [ %i.bc, %bb.o ], [ 0, %bb.n ], [ 0, %.thread338.a ] ; 3 uses
  %i.bd = and i32 %1, 13184
  %.not254 = icmp eq i32 %i.bd, 0
  br i1 %.not254, label %bb.au, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = and i32 %1, 128
  %.not255 = icmp eq i32 %i.be, 0
  br i1 %.not255, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = zext nneg i32 %.3226 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !154
  %i.bi = tail call i32 @sqlite3_value_numeric_type(ptr noundef %i.bh) #45
  %i.bj = icmp eq i32 %i.bi, 2
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !154 ; 2 uses
  br i1 %i.bj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bl = tail call double @sqlite3_value_double(ptr noundef %i.bk) #45 ; 6 uses
  %i.bm = tail call double @llvm.trunc.f64(double %i.bl)
  %i.bn = fcmp oeq double %i.bm, %i.bl
  %i.bo = tail call double @llvm.fabs.f64(double %i.bl)
  %i.bp = fcmp ole double %i.bo, f0x43E0000000000000
  %or.cond3 = and i1 %i.bn, %i.bp
  br i1 %or.cond3, label %bb.t, label %seriesRealToI64.exit

bb.t:                                             ; preds = %bb.s
  %5 = fcmp olt double %i.bl, f0xC3DFFFFFFFFFFFFF
  %6 = fcmp ogt double %i.bl, f0x43DFFFFFFFFFFFFF
  %i.bq = fptosi double %i.bl to i64
  %spec.select.i = select i1 %6, i64 9223372036854775807, i64 %i.bq
  %.0.i = select i1 %5, i64 -9223372036854775808, i64 %spec.select.i ; 2 uses
  br label %seriesRealToI64.exit.thread

bb.u:                                             ; preds = %bb.r
  %i.br = tail call i64 @sqlite3_value_int64(ptr noundef %i.bk) #45 ; 2 uses
  br label %seriesRealToI64.exit.thread

bb.v:                                             ; preds = %bb.q
  %i.bs = and i32 %1, 768
  %.not256 = icmp eq i32 %i.bs, 0
  br i1 %.not256, label %.thread291, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = zext nneg i32 %.3226 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !154
  %i.bw = tail call i32 @sqlite3_value_numeric_type(ptr noundef %i.bv) #45
  %i.bx = icmp eq i32 %i.bw, 2
  %i.by = add nuw nsw i32 %.3226, 1               ; 5 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !154 ; 2 uses
  br i1 %i.bx, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ca = tail call double @sqlite3_value_double(ptr noundef %i.bz) #45 ; 4 uses
  %i.cb = fcmp ugt double %i.ca, f0xC3E0000000000000
  br i1 %i.cb, label %bb.y, label %.thread291

bb.y:                                             ; preds = %bb.x
  %i.cc = fcmp ogt double %i.ca, f0x43E0000000000000
  br i1 %i.cc, label %seriesRealToI64.exit, label %seriesRealToI64.exit277

seriesRealToI64.exit277:                          ; preds = %bb.y
  %7 = tail call noundef double @llvm.ceil.f64(double %i.ca) ; 4 uses
  %8 = fcmp olt double %7, f0xC3DFFFFFFFFFFFFF
  %i.cd = fcmp ogt double %7, f0x43DFFFFFFFFFFFFF
  %i.ce = fptosi double %7 to i64
  %spec.select.i276 = select i1 %i.cd, i64 9223372036854775807, i64 %i.ce
  %.0.i276 = select i1 %8, i64 -9223372036854775808, i64 %spec.select.i276 ; 3 uses
  %i.cf = and i32 %1, 512
  %.not258 = icmp ne i32 %i.cf, 0
  %i.cg = fcmp oeq double %i.ca, %7
  %or.cond313 = and i1 %.not258, %i.cg
  br i1 %or.cond313, label %bb.z, label %.thread291

bb.z:                                             ; preds = %seriesRealToI64.exit277
  %i.ch = icmp eq i64 %.0.i276, 9223372036854775807
  %i.ci = add nsw i64 %.0.i276, 1
  br i1 %i.ch, label %seriesRealToI64.exit, label %.thread291

bb.aa:                                            ; preds = %bb.w
  %i.cj = tail call i64 @sqlite3_value_int64(ptr noundef %i.bz) #45 ; 3 uses
  %i.ck = and i32 %1, 512
  %.not257 = icmp eq i32 %i.ck, 0
  br i1 %.not257, label %.thread291, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = icmp eq i64 %i.cj, 9223372036854775807
  br i1 %i.cl, label %seriesRealToI64.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = add nsw i64 %i.cj, 1
  br label %.thread291

.thread291:                                       ; preds = %seriesRealToI64.exit277, %bb.x, %bb.z, %bb.ac, %bb.aa, %bb.v
  %.4227 = phi i32 [ %.3226, %bb.v ], [ %i.by, %bb.ac ], [ %i.by, %bb.aa ], [ %i.by, %bb.z ], [ %i.by, %bb.x ], [ %i.by, %seriesRealToI64.exit277 ]
  %.3220 = phi i64 [ -9223372036854775808, %bb.v ], [ %i.cm, %bb.ac ], [ %i.cj, %bb.aa ], [ %i.ci, %bb.z ], [ -9223372036854775808, %bb.x ], [ %.0.i276, %seriesRealToI64.exit277 ] ; 2 uses
  %i.cn = and i32 %1, 12288
  %.not259 = icmp eq i32 %i.cn, 0
  br i1 %.not259, label %.thread296, label %bb.ad

bb.ad:                                            ; preds = %.thread291
  %i.co = zext nneg i32 %.4227 to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !154
  %i.cr = tail call i32 @sqlite3_value_numeric_type(ptr noundef %i.cq) #45
  %i.cs = icmp eq i32 %i.cr, 2
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !154 ; 2 uses
  br i1 %i.cs, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cu = tail call double @sqlite3_value_double(ptr noundef %i.ct) #45 ; 4 uses
  %i.cv = fcmp ult double %i.cu, f0x43E0000000000000
  br i1 %i.cv, label %bb.af, label %.thread296

bb.af:                                            ; preds = %bb.ae
  %i.cw = fcmp ugt double %i.cu, f0xC3E0000000000000
  br i1 %i.cw, label %seriesRealToI64.exit279, label %seriesRealToI64.exit

seriesRealToI64.exit279:                          ; preds = %bb.af
  %9 = tail call noundef double @llvm.floor.f64(double %i.cu) ; 4 uses
  %10 = fcmp olt double %9, f0xC3DFFFFFFFFFFFFF
  %11 = fcmp ogt double %9, f0x43DFFFFFFFFFFFFF
  %12 = fptosi double %9 to i64
  %spec.select.i278 = select i1 %11, i64 9223372036854775807, i64 %12
  %.0.i279 = select i1 %10, i64 -9223372036854775808, i64 %spec.select.i278 ; 3 uses
  %i.cx = and i32 %1, 8192
  %.not261 = icmp ne i32 %i.cx, 0
  %i.cy = fcmp oeq double %i.cu, %9
  %or.cond314 = and i1 %.not261, %i.cy
  br i1 %or.cond314, label %bb.ag, label %.thread296

bb.ag:                                            ; preds = %seriesRealToI64.exit279
  %i.cz = icmp eq i64 %.0.i279, -9223372036854775808
  %i.da = add nsw i64 %.0.i279, -1
  br i1 %i.cz, label %seriesRealToI64.exit, label %.thread296

bb.ah:                                            ; preds = %bb.ad
  %i.db = tail call i64 @sqlite3_value_int64(ptr noundef %i.ct) #45 ; 3 uses
  %i.dc = and i32 %1, 8192
  %.not260 = icmp eq i32 %i.dc, 0
  br i1 %.not260, label %.thread296, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = icmp eq i64 %i.db, -9223372036854775808
  br i1 %i.dd, label %seriesRealToI64.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = add nsw i64 %i.db, -1
  br label %.thread296

.thread296:                                       ; preds = %seriesRealToI64.exit279, %bb.ae, %bb.ag, %bb.aj, %bb.ah, %.thread291
  %.3215 = phi i64 [ 9223372036854775807, %.thread291 ], [ %i.de, %bb.aj ], [ %i.db, %bb.ah ], [ %i.da, %bb.ag ], [ 9223372036854775807, %bb.ae ], [ %.0.i279, %seriesRealToI64.exit279 ] ; 2 uses
  %i.df = icmp sgt i64 %.3220, %.3215
  br i1 %i.df, label %seriesRealToI64.exit, label %seriesRealToI64.exit.thread

seriesRealToI64.exit.thread:                      ; preds = %bb.t, %.thread296, %bb.u
  %.4221 = phi i64 [ %.0.i, %bb.t ], [ %i.br, %bb.u ], [ %.3220, %.thread296 ] ; 5 uses
  %.4216 = phi i64 [ %.0.i, %bb.t ], [ %i.br, %bb.u ], [ %.3215, %.thread296 ] ; 5 uses
  %i.dg = load i8, ptr %i.aq, align 8, !tbaa !919
  %i.dh = icmp eq i8 %i.dg, 0
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !916 ; 6 uses
  br i1 %i.dh, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %seriesRealToI64.exit.thread
  %i.dj = icmp slt i64 %i.di, %.4221
  br i1 %i.dj, label %bb.al, label %.thread300

bb.al:                                            ; preds = %bb.ak
  %i.dk = sub i64 %.4221, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !918 ; 3 uses
  %.fr262 = freeze i64 %i.dk                      ; 2 uses
  %i.dn = urem i64 %.fr262, %i.dm
  %i.do = sub nuw i64 %.fr262, %i.dn
  %i.dp = add i64 %i.do, %i.di                    ; 4 uses
  store i64 %i.dp, ptr %i.ag, align 8, !tbaa !916
  %i.dq = icmp slt i64 %i.dp, %.4221
  br i1 %i.dq, label %bb.am, label %.thread300

bb.am:                                            ; preds = %bb.al
  %i.dr = sub i64 9223372036854775807, %i.dm
  %i.ds = icmp sgt i64 %i.dp, %i.dr
  br i1 %i.ds, label %seriesRealToI64.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = add i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.ag, align 8, !tbaa !916
  br label %.thread300

.thread300:                                       ; preds = %bb.al, %bb.an, %bb.ak
  %i.du = load i64, ptr %i.ah, align 8, !tbaa !917
  %i.dv = icmp sgt i64 %i.du, %.4216
  br i1 %i.dv, label %bb.ao, label %.thread351

bb.ao:                                            ; preds = %.thread300
  store i64 %.4216, ptr %i.ah, align 8, !tbaa !917
  br label %.thread351

bb.ap:                                            ; preds = %seriesRealToI64.exit.thread
  %i.dw = icmp sgt i64 %i.di, %.4216
  br i1 %i.dw, label %bb.aq, label %.thread303

bb.aq:                                            ; preds = %bb.ap
  %i.dx = sub i64 %i.di, %.4216
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !918 ; 3 uses
  %.fr = freeze i64 %i.dx                         ; 2 uses
  %i.ea = urem i64 %.fr, %i.dz
  %.neg = sub i64 %i.ea, %.fr
  %i.eb = add i64 %.neg, %i.di                    ; 4 uses
  store i64 %i.eb, ptr %i.ag, align 8, !tbaa !916
  %i.ec = icmp sgt i64 %i.eb, %.4216
  br i1 %i.ec, label %bb.ar, label %.thread303

bb.ar:                                            ; preds = %bb.aq
  %i.ed = xor i64 %i.dz, -9223372036854775808
  %i.ee = icmp slt i64 %i.eb, %i.ed
  br i1 %i.ee, label %seriesRealToI64.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = sub i64 %i.eb, %i.dz
  store i64 %i.ef, ptr %i.ag, align 8, !tbaa !916
  br label %.thread303

.thread303:                                       ; preds = %bb.aq, %bb.as, %bb.ap
  %i.eg = load i64, ptr %i.ah, align 8, !tbaa !917
  %i.eh = icmp slt i64 %i.eg, %.4221
  br i1 %i.eh, label %bb.at, label %.thread353

bb.at:                                            ; preds = %.thread303
  store i64 %.4221, ptr %i.ah, align 8, !tbaa !917
  br label %.thread353

bb.au:                                            ; preds = %bb.p
  %.pre320 = load i8, ptr %i.aq, align 8, !tbaa !919
  %i.ei = icmp eq i8 %.pre320, 0
  br i1 %i.ei, label %.thread351, label %.thread353

.thread351:                                       ; preds = %.thread300, %bb.ao, %bb.au
  %i.ej = load i64, ptr %i.ag, align 8, !tbaa !916 ; 4 uses
  %i.ek = load i64, ptr %i.ah, align 8, !tbaa !917 ; 3 uses
  %i.el = icmp sgt i64 %i.ej, %i.ek
  br i1 %i.el, label %seriesRealToI64.exit, label %bb.av

.thread353:                                       ; preds = %.thread303, %bb.at, %bb.au
  %i.em = load i64, ptr %i.ag, align 8, !tbaa !916 ; 4 uses
  %i.en = load i64, ptr %i.ah, align 8, !tbaa !917 ; 3 uses
  %i.eo = icmp slt i64 %i.em, %i.en
  br i1 %i.eo, label %seriesRealToI64.exit, label %.thread311

bb.av:                                            ; preds = %.thread351
  %i.ep = sub i64 %i.ek, %i.ej
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !918 ; 3 uses
  %i.es = urem i64 %i.ep, %i.er
  %i.et = sub i64 %i.ek, %i.es                    ; 2 uses
  store i64 %i.et, ptr %i.ah, align 8, !tbaa !917
  %i.eu = and i32 %1, 8
  %.not263 = icmp eq i32 %i.eu, 0
  br i1 %.not263, label %.thread311.thread, label %bb.aw

.thread311:                                       ; preds = %.thread353
  %i.ev = sub i64 %i.em, %i.en
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !918 ; 3 uses
  %i.ey = urem i64 %i.ev, %i.ex
  %i.ez = add i64 %i.ey, %i.en                    ; 2 uses
  store i64 %i.ez, ptr %i.ah, align 8, !tbaa !917
  %i.fa = and i32 %1, 16
  %.not264 = icmp eq i32 %i.fa, 0
  br i1 %.not264, label %.thread311.thread, label %bb.aw

bb.aw:                                            ; preds = %.thread311, %bb.av
  %i.fb = phi i1 [ true, %.thread311 ], [ false, %bb.av ]
  %i.fc = phi i8 [ 0, %.thread311 ], [ 1, %bb.av ]
  %i.fd = phi i64 [ %i.ex, %.thread311 ], [ %i.er, %bb.av ]
  %i.fe = phi i64 [ %i.em, %.thread311 ], [ %i.ej, %bb.av ]
  %storemerge308 = phi i64 [ %i.ez, %.thread311 ], [ %i.et, %bb.av ] ; 2 uses
  store i64 %storemerge308, ptr %i.ag, align 8, !tbaa !916
  store i64 %i.fe, ptr %i.ah, align 8, !tbaa !917
  store i8 %i.fc, ptr %i.aq, align 8, !tbaa !919
  br label %.thread311.thread

.thread311.thread:                                ; preds = %bb.av, %.thread311, %bb.aw
  %i.ff = phi i64 [ %i.em, %.thread311 ], [ %storemerge308, %bb.aw ], [ %i.ej, %bb.av ] ; 4 uses
  %i.fg = phi i64 [ %i.ex, %.thread311 ], [ %i.fd, %bb.aw ], [ %i.er, %bb.av ] ; 4 uses
  %.not.i280 = phi i1 [ false, %.thread311 ], [ %i.fb, %bb.aw ], [ true, %bb.av ] ; 6 uses
  br i1 %.not252, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.thread311.thread
  %i.fh = icmp sgt i64 %.0210, 0
  br i1 %i.fh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %..i = select i1 %.not.i280, i64 40, i64 32
  %.11.i = select i1 %.not.i280, i64 32, i64 40
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !159
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %.11.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !159
  %i.fm = sub i64 %i.fj, %i.fl
  %i.fn = udiv i64 %i.fm, %i.fg
  %i.fo = icmp ult i64 %i.fn, %.0210
  br i1 %i.fo, label %seriesRealToI64.exit, label %.sink.split

.sink.split:                                      ; preds = %bb.ay
  %i.fp = mul i64 %i.fg, %.0210                   ; 2 uses
  %i.fq = add i64 %i.ff, %i.fp                    ; 2 uses
  %i.fr = sub i64 %i.ff, %i.fp                    ; 2 uses
  %.sink361 = select i1 %.not.i280, i64 %i.fq, i64 %i.fr
  %.ph = select i1 %.not.i280, i64 %i.fq, i64 %i.fr
  store i64 %.sink361, ptr %i.ag, align 8, !tbaa !916
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.ax
  %i.fs = phi i64 [ %i.ff, %bb.ax ], [ %.ph, %.sink.split ] ; 4 uses
  %i.ft = icmp sgt i64 %.0211, -1
  br i1 %i.ft, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %..i281 = select i1 %.not.i280, i64 40, i64 32
  %.11.i282 = select i1 %.not.i280, i64 32, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %..i281
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !159
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 %.11.i282
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !159
  %i.fy = sub i64 %i.fv, %i.fx
  %i.fz = udiv i64 %i.fy, %i.fg
  %i.ga = icmp ugt i64 %i.fz, %.0211
  br i1 %i.ga, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gb = add nsw i64 %.0211, -1
  %i.gc = mul i64 %i.fg, %i.gb
  %i.gd = add i64 %i.fs, %i.gc
  store i64 %i.gd, ptr %i.ah, align 8, !tbaa !917
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.bb, %.thread311.thread
  %i.ge = phi i64 [ %i.fs, %bb.az ], [ %i.fs, %bb.ba ], [ %i.fs, %bb.bb ], [ %i.ff, %.thread311.thread ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !920
  br label %bb.bd

seriesRealToI64.exit:                             ; preds = %.lr.ph, %bb.ag, %bb.z, %bb.ar, %bb.am, %bb.af, %bb.y, %bb.s, %bb.ay, %.thread353, %.thread351, %.thread296, %bb.ai, %bb.ab, %.thread286, %bb.m
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.gh, align 8, !tbaa !918
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.gi, align 8, !tbaa !919
  br label %bb.bd

bb.bd:                                            ; preds = %seriesRealToI64.exit, %bb.bc
  %.sink362 = phi i8 [ 1, %seriesRealToI64.exit ], [ 0, %bb.bc ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %.sink362, ptr %i.gj, align 1, !tbaa !921
  ret i32 0
end_hunk_1
