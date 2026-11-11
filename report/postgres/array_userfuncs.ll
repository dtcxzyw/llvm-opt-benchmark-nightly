Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/array_userfuncs?download=true
inline.NumInlined: 98
inline.NumDeleted: 31
begin_hunk_0_@array_shuffle_n
define internal fastcc ptr @array_shuffle_n(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i16, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.o = load i8, ptr %i.n, align 2, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = icmp slt i32 %i.g, 1
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.h, align 4
  %i.u = icmp slt i32 %i.t, 1
  %i.v = icmp slt i32 %1, 1
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = tail call ptr @construct_empty_array(i32 noundef %3) #8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.x = sext i16 %i.m to i32                     ; 2 uses
  call void @deconstruct_array(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.x, i1 noundef zeroext %i.p, i8 noundef signext %i.r, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #8
  %i.y = load i32, ptr %i.h, align 4              ; 2 uses
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = sdiv i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.a, align 4
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = add i32 %i.y, -1
  %i.ae = sext i32 %i.ad to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 4 %i.h, i64 %i.j, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 4 %i.k, i64 %i.j, i1 false)
  store i32 %1, ptr %i.b, align 16
  br i1 %2, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.05466 = phi ptr [ %i.ac, %bb.d ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05565 = phi ptr [ %i.ab, %bb.d ], [ %.156.lcssa, %._crit_edge ] ; 2 uses
  %i.af = call i64 @pg_prng_uint64_range(ptr noundef nonnull @pg_global_prng_state, i64 noundef %indvars.iv, i64 noundef %i.ae) #8
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = trunc i64 %i.af to i32
  %i.ak = mul i32 %i.ag, %i.aj
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.al
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.156.lcssa = phi ptr [ %.05565, %bb.f ], [ %i.as, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.05466, %bb.f ], [ %i.au, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05063 = phi i32 [ %i.ax, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05162 = phi ptr [ %i.aw, %.lr.ph ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.05261 = phi ptr [ %i.av, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ] ; 3 uses
  %.160 = phi ptr [ %i.au, %.lr.ph ], [ %.05466, %.lr.ph.preheader ] ; 3 uses
  %.15659 = phi ptr [ %i.as, %.lr.ph ], [ %.05565, %.lr.ph.preheader ] ; 3 uses
  %i.ap = load i64, ptr %.15659, align 8
  %i.aq = load i8, ptr %.160, align 1, !range !4, !noundef !5
  %i.ar = load i64, ptr %.05261, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.15659, i64 8 ; 2 uses
  store i64 %i.ar, ptr %.15659, align 8
  %i.at = load i8, ptr %.05162, align 1, !range !4, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.160, i64 1 ; 2 uses
  store i8 %i.at, ptr %.160, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.05261, i64 8
  store i64 %i.ap, ptr %.05261, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.05162, i64 1
  store i8 %i.aq, ptr %.05162, align 1
  %i.ax = add nuw nsw i32 %.05063, 1              ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !58

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %i.c, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ba = load ptr, ptr %i.d, align 8
  %i.bb = load ptr, ptr %i.e, align 8
  %i.bc = call ptr @construct_md_array(ptr noundef %i.ba, ptr noundef %i.bb, i32 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %i.x, i1 noundef zeroext %i.p, i8 noundef signext %i.r) #8
  %i.bd = load ptr, ptr %i.d, align 8
  call void @pfree(ptr noundef %i.bd) #8
  %i.be = load ptr, ptr %i.e, align 8
  call void @pfree(ptr noundef %i.be) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.0 = phi ptr [ %i.w, %bb.c ], [ %i.bc, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_sample(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i32, ptr %i.k, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.n = icmp slt i32 %i.g, 0
  %i.o = icmp slt i32 %i.m, %i.g
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 50856066) #8 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, i32 noundef %i.m) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1759, ptr noundef nonnull @__func__.array_sample) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 8
  %.not = icmp eq i32 %i.y, %i.t
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = tail call ptr @lookup_type_cache(i32 noundef %i.t, i32 noundef 0) #8 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.z, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.z, %bb.g ], [ %i.w, %bb.f ]
  %i.ac = tail call fastcc ptr @array_shuffle_n(ptr noundef nonnull %i.d, i32 noundef %i.g, i1 noundef zeroext false, i32 noundef %i.t, ptr noundef %.0)
  %i.ad = ptrtoint ptr %i.ac to i64
  ret i64 %i.ad
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_reverse(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum(ptr noundef %i.h) #8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp slt i32 %i.n, 2
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.q = load i32, ptr %i.p, align 4              ; 4 uses
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 8
  %.not = icmp eq i32 %i.v, %i.q
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call ptr @lookup_type_cache(i32 noundef %i.q, i32 noundef 0) #8 ; 2 uses
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.w, ptr %i.y, align 8
  %.pre = load i32, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %.pre, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %.0 = phi ptr [ %i.w, %bb.e ], [ %i.t, %bb.d ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 10
  %i.ad = load i8, ptr %i.ac, align 2, !range !4, !noundef !5
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 11
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = sext i16 %i.ab to i32                   ; 2 uses
  call void @deconstruct_array(ptr noundef nonnull %i.i, i32 noundef %i.q, i32 noundef %i.ah, i1 noundef zeroext %i.ae, i8 noundef signext %i.ag, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #8
  %i.ai = load i32, ptr %i.m, align 4             ; 5 uses
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = sdiv i32 %i.aj, %i.ai                   ; 3 uses
  store i32 %i.ak, ptr %i.a, align 4
  %i.al = sdiv i32 %i.ai, 2
  %i.am = icmp sgt i32 %i.ai, 1
  %.pre63.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %.pre65.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %i.an = icmp sgt i32 %i.ak, 0
  %or.cond.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i, label %.lr.ph59.split.i, label %array_reverse_n.exit

._crit_edge60.loopexit.i:                         ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.d, align 8
  %.pre64.i = load ptr, ptr %i.e, align 8
  br label %array_reverse_n.exit

.lr.ph59.split.i:                                 ; preds = %bb.f, %._crit_edge.i
  %i.ao = phi i32 [ %i.aw, %._crit_edge.i ], [ %i.ak, %bb.f ] ; 3 uses
  %.04557.i = phi i32 [ %i.ax, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %.04656.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %.pre65.i, %bb.f ] ; 2 uses
  %.04755.i = phi ptr [ %.148.lcssa.i, %._crit_edge.i ], [ %.pre63.i, %bb.f ] ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph59.split.i
  %1 = load ptr, ptr %i.e, align 8
  %i.aq = xor i32 %.04557.i, -1
  %i.ar = add nsw i32 %i.ai, %i.aq
  %i.as = mul i32 %i.ar, %i.ao
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %2 = load ptr, ptr %i.d, align 8
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph59.split.i
  %i.aw = phi i32 [ %i.ao, %.lr.ph59.split.i ], [ %i.bh, %.lr.ph.i ]
  %.148.lcssa.i = phi ptr [ %.04755.i, %.lr.ph59.split.i ], [ %i.bb, %.lr.ph.i ]
  %.1.lcssa.i = phi ptr [ %.04656.i, %.lr.ph59.split.i ], [ %i.bd, %.lr.ph.i ]
  %i.ax = add nuw nsw i32 %.04557.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ax, %i.al
  br i1 %exitcond.not.i, label %._crit_edge60.loopexit.i, label %.lr.ph59.split.i, !llvm.loop !59

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.053.i = phi i32 [ %i.bg, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.04352.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.au, %.lr.ph.preheader.i ] ; 3 uses
  %.04451.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.av, %.lr.ph.preheader.i ] ; 3 uses
  %.150.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.04656.i, %.lr.ph.preheader.i ] ; 3 uses
  %.14849.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.04755.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ay = load i64, ptr %.14849.i, align 8
  %i.az = load i8, ptr %.150.i, align 1, !range !4, !noundef !5
  %i.ba = load i64, ptr %.04451.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.14849.i, i64 8 ; 2 uses
  store i64 %i.ba, ptr %.14849.i, align 8
  %i.bc = load i8, ptr %.04352.i, align 1, !range !4, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %.150.i, i64 1 ; 2 uses
  store i8 %i.bc, ptr %.150.i, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.04451.i, i64 8
  store i64 %i.ay, ptr %.04451.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.04352.i, i64 1
  store i8 %i.az, ptr %.04352.i, align 1
  %i.bg = add nuw nsw i32 %.053.i, 1              ; 2 uses
  %i.bh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !60

array_reverse_n.exit:                             ; preds = %bb.f, %._crit_edge60.loopexit.i
  %i.bj = phi ptr [ %.pre65.i, %bb.f ], [ %.pre64.i, %._crit_edge60.loopexit.i ]
  %i.bk = phi ptr [ %.pre63.i, %bb.f ], [ %.pre.i, %._crit_edge60.loopexit.i ]
  %i.bl = sext i32 %i.z to i64
  %i.bm = shl nsw i64 %i.bl, 2                    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 4 %i.m, i64 %i.bm, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 4 %i.bn, i64 %i.bm, i1 false)
  store i32 %i.ai, ptr %i.b, align 16
  %i.bo = call ptr @construct_md_array(ptr noundef %i.bk, ptr noundef %i.bj, i32 noundef %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.q, i32 noundef %i.ah, i1 noundef zeroext %i.ae, i8 noundef signext %i.ag) #8
  %i.bp = load ptr, ptr %i.d, align 8
  call void @pfree(ptr noundef %i.bp) #8
  %i.bq = load ptr, ptr %i.e, align 8
  call void @pfree(ptr noundef %i.bq) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %array_reverse_n.exit
  %.016.in = phi ptr [ %i.bo, %array_reverse_n.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.a ]
  %.016 = ptrtoint ptr %.016.in to i64
  ret i64 %.016
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_sort(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #8
  %i.e = tail call fastcc ptr @array_sort_internal(ptr noundef %i.d, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %0)
  %i.f = ptrtoint ptr %i.e to i64
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @array_sort_internal(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i32, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = sext i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp slt i32 %i.f, 1
  br i1 %i.k, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.g, align 4
  %i.m = icmp slt i32 %i.l, 2
  br i1 %i.m, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @MemoryContextAllocZero(ptr noundef %i.s, i64 noundef 88) #8 ; 2 uses
  %i.u = load ptr, ptr %3, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.065 = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ] ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4              ; 6 uses
  %i.y = load i32, ptr %.065, align 8
  %.not = icmp eq i32 %i.x, %i.y
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @lookup_type_cache(i32 noundef %i.x, i32 noundef 6) #8 ; 6 uses
  store i32 %i.x, ptr %.065, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.065, i64 4
  store i16 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !range !4, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.065, i64 6
  store i8 %i.ae, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.065, i64 7
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.065, i64 72
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.065, i64 76
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.065, i64 80
  store i32 %i.aq, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = icmp eq i32 %i.f, 1
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.065, i64 80
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.av = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.aw = tail call i32 @errcode(i32 noundef 67137668) #8 ; 0 uses
  %i.ax = tail call ptr @format_type_be(i32 noundef %i.x) #8
  %i.ay = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef %i.ax) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1960, ptr noundef nonnull @__func__.array_sort_internal) #8
  unreachable

.thread:                                          ; preds = %bb.h
  %i.az = select i1 %1, i32 1073, i32 1072
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.in.v = select i1 %1, i64 76, i64 72
  %.in = getelementptr inbounds nuw i8, ptr %.065, i64 %.in.v
  %i.ba = load i32, ptr %.in, align 4             ; 2 uses
  %.not71 = icmp eq i32 %i.ba, 0
  br i1 %.not71, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bc = tail call i32 @errcode(i32 noundef 1088) #8 ; 0 uses
  %i.bd = tail call ptr @format_type_be(i32 noundef %i.x) #8
  %i.be = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21, ptr noundef %i.bd) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1973, ptr noundef nonnull @__func__.array_sort_internal) #8
  unreachable

bb.l:                                             ; preds = %.thread, %bb.j
  %.06376 = phi i32 [ %i.az, %.thread ], [ %i.ba, %bb.j ]
  %.06475 = phi i32 [ %i.au, %.thread ], [ %i.x, %bb.j ] ; 2 uses
  %i.bf = load i32, ptr @work_mem, align 4
  %i.bg = tail call ptr @tuplesort_begin_datum(i32 noundef %.06475, i32 noundef %.06376, i32 noundef %i.d, i1 noundef zeroext %2, i32 noundef %i.bf, ptr noundef null, i32 noundef 0) #8 ; 5 uses
  %i.bh = add nsw i32 %i.f, -1
  %i.bi = tail call ptr @array_create_iterator(ptr noundef nonnull %0, i32 noundef %i.bh, ptr noundef nonnull %.065) #8 ; 3 uses
  %i.bj = call zeroext i1 @array_iterate(ptr noundef %i.bi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.bm = trunc nuw i8 %i.bl to i1
  call void @tuplesort_putdatum(ptr noundef %i.bg, i64 noundef %i.bk, i1 noundef zeroext %i.bm) #8
  %i.bn = call zeroext i1 @array_iterate(ptr noundef %i.bi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  call void @array_free_iterator(ptr noundef %i.bi) #8
  call void @tuplesort_performsort(ptr noundef %i.bg) #8
  %i.bo = call zeroext i1 @tuplesort_getdatum(ptr noundef %i.bg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #8
  br i1 %i.bo, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %._crit_edge, %.lr.ph79
  %.06277 = phi ptr [ %i.bt, %.lr.ph79 ], [ null, %._crit_edge ]
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = load ptr, ptr @CurrentMemoryContext, align 8
  %i.bt = call ptr @accumArrayResultAny(ptr noundef %.06277, i64 noundef %i.bp, i1 noundef zeroext %i.br, i32 noundef %.06475, ptr noundef %i.bs) #8 ; 2 uses
  %i.bu = call zeroext i1 @tuplesort_getdatum(ptr noundef %i.bg, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #8
  br i1 %i.bu, label %.lr.ph79, label %._crit_edge80, !llvm.loop !63

._crit_edge80:                                    ; preds = %.lr.ph79, %._crit_edge
  %.062.lcssa = phi ptr [ null, %._crit_edge ], [ %i.bt, %.lr.ph79 ]
  call void @tuplesort_end(ptr noundef %i.bg) #8
  %i.bv = load ptr, ptr @CurrentMemoryContext, align 8
  %i.bw = call i64 @makeArrayResultAny(ptr noundef %.062.lcssa, ptr noundef %i.bv, i1 noundef zeroext true) #8
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = call ptr @pg_detoast_datum(ptr noundef %i.bx) #8 ; 3 uses
  %i.bz = load i32, ptr %i.j, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ce
  store i32 %i.bz, ptr %i.cf, align 4
  br label %bb.m

end_hunk_0
