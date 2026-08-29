Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_sbas:bb.a
bb.h:                                             ; preds = %.loopexit.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !256
  %i.y = load i32, ptr %i.o, align 4, !tbaa !255  ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.o, align 4, !tbaa !255
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.aa ; 4 uses
  store i32 %2, ptr %i.ab, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !486
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h
  %.1.i.ph = phi ptr [ %i.ab, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %i.ac = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !261 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !262 ; 2 uses
  br i1 %i.af, label %.lr.ph.i.i19, label %.loopexit.i17

.lr.ph.i.i19:                                     ; preds = %.loopexit
  %wide.trip.count.i.i20 = zext nneg i32 %i.ae to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i22 = add nuw nsw i64 %indvars.iv.i.i21, 1 ; 2 uses
  %exitcond.not.i.i23 = icmp eq i64 %indvars.iv.next.i.i22, %wide.trip.count.i.i20
  br i1 %exitcond.not.i.i23, label %.loopexit.i17, label %bb.j, !llvm.loop !267

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i19
  %indvars.iv.i.i21 = phi i64 [ 0, %.lr.ph.i.i19 ], [ %indvars.iv.next.i.i22, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i21
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !87
  %i.ak = icmp eq i32 %i.aj, %i.ac
  br i1 %i.ak, label %mov_add_tref_tag.exit, label %bb.i

.loopexit.i17:                                    ; preds = %bb.i, %.loopexit
  %i.al = add nsw i32 %i.ae, 1
  %i.am = sext i32 %i.al to i64
  %i.an = tail call ptr @av_realloc_array(ptr noundef %i.ah, i64 noundef %i.am, i64 noundef 4) #16 ; 3 uses
  %.not14.not.i = icmp eq ptr %i.an, null
  br i1 %.not14.not.i, label %mov_add_tref_tag.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i17
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !262
  %i.ao = load i32, ptr %i.ad, align 4, !tbaa !261 ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ad, align 4, !tbaa !261
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.aq
  store i32 %i.ac, ptr %i.ar, align 4, !tbaa !87
  br label %mov_add_tref_tag.exit

mov_add_tref_tag.exit:                            ; preds = %bb.j, %bb.k, %.loopexit.i17, %.loopexit.i, %bb.d, %bb.a, %bb.c
  %.2 = phi i32 [ -1094995529, %bb.d ], [ -1163346256, %bb.c ], [ 0, %bb.a ], [ -12, %.loopexit.i ], [ -12, %.loopexit.i17 ], [ 0, %bb.k ], [ 0, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_vdep(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %mov_add_tref_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %3, 4
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull @.str.118) #16
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre27 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !28
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %3, 4
  br i1 %.not, label %bb.d, label %mov_add_tref_tag.exit

bb.d:                                             ; preds = %.thread, %bb.c
  %i.g = phi i32 [ %.pre27, %.thread ], [ %i.d, %bb.c ]
  %i.h = phi ptr [ %.pre, %.thread ], [ %i.b, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = add i32 %i.g, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 292 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !255  ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 296 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !256  ; 2 uses
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.f, !llvm.loop !259

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i.i ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !257
  %.not.i.i = icmp eq i32 %i.w, %2
  br i1 %.not.i.i, label %.loopexit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %i.x = add nsw i32 %i.r, 1
  %i.y = sext i32 %i.x to i64
  %i.z = tail call ptr @av_realloc_array(ptr noundef %i.u, i64 noundef %i.y, i64 noundef 16) #16 ; 3 uses
  %.not19.not.i = icmp eq ptr %i.z, null
  br i1 %.not19.not.i, label %mov_add_tref_tag.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !256
  %i.aa = load i32, ptr %i.q, align 4, !tbaa !255 ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.q, align 4, !tbaa !255
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.ac ; 4 uses
  store i32 %2, ptr %i.ad, align 8, !tbaa !87
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !486
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  %.1.i.ph = phi ptr [ %i.ad, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %i.ae = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 4 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !261 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !262 ; 2 uses
  br i1 %i.ah, label %.lr.ph.i.i16, label %.loopexit.i14

.lr.ph.i.i16:                                     ; preds = %.loopexit
  %wide.trip.count.i.i17 = zext nneg i32 %i.ag to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i19 = add nuw nsw i64 %indvars.iv.i.i18, 1 ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %indvars.iv.next.i.i19, %wide.trip.count.i.i17
  br i1 %exitcond.not.i.i20, label %.loopexit.i14, label %bb.i, !llvm.loop !267

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i16
  %indvars.iv.i.i18 = phi i64 [ 0, %.lr.ph.i.i16 ], [ %indvars.iv.next.i.i19, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.i18
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !87
  %i.am = icmp eq i32 %i.al, %i.ae
  br i1 %i.am, label %mov_add_tref_tag.exit, label %bb.h

.loopexit.i14:                                    ; preds = %bb.h, %.loopexit
  %i.an = add nsw i32 %i.ag, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = tail call ptr @av_realloc_array(ptr noundef %i.aj, i64 noundef %i.ao, i64 noundef 4) #16 ; 3 uses
  %.not14.not.i = icmp eq ptr %i.ap, null
  br i1 %.not14.not.i, label %mov_add_tref_tag.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i14
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !262
  %i.aq = load i32, ptr %i.af, align 4, !tbaa !261 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.af, align 4, !tbaa !261
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.as
  store i32 %i.ae, ptr %i.at, align 4, !tbaa !87
  br label %mov_add_tref_tag.exit

mov_add_tref_tag.exit:                            ; preds = %bb.i, %bb.j, %.loopexit.i14, %.loopexit.i, %bb.c, %bb.a
  %.2 = phi i32 [ -1094995529, %bb.c ], [ 0, %bb.a ], [ -12, %.loopexit.i ], [ -12, %.loopexit.i14 ], [ 0, %bb.j ], [ 0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @mov_read_sidx(ptr noundef %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = tail call i64 @avio_size(ptr noundef %1) #16 ; 4 uses
  %i.b = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #16
  %i.c = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %3) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0         ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = select i1 %i.f, i64 9223372036854775807, i64 -9223372036854775808
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.e       ; 2 uses
  %i.i = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.j = and i32 %i.i, 255                        ; 3 uses
  %i.k = icmp samesign ugt i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.m, ptr noundef nonnull @.str.119, i32 noundef %i.j) #16
  br label %.thread181

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.o = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %wide.trip.count = zext i32 %i.s to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !487

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !241
  %i.ab = icmp eq i32 %i.aa, %i.o
  br i1 %i.ab, label %bb.f, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.q, i32 noundef 24, ptr noundef nonnull @.str.120, i32 noundef %i.o) #16
  br label %.thread181

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 3 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ac to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.121, i32 noundef %i.ac) #16
  br label %.thread181

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.j, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.aj = zext i32 %i.ai to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call i64 @avio_rb64(ptr noundef %1) #16
  %i.al = tail call i64 @avio_rb64(ptr noundef %1) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0150 = phi i64 [ %i.ah, %bb.i ], [ %i.ak, %bb.j ]
  %.0146 = phi i64 [ %i.aj, %bb.i ], [ %i.al, %bb.j ] ; 3 uses
  %i.am = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.h, i64 %.0146)
  %i.an = extractvalue { i64, i1 } %i.am, 1
  %4 = add nsw i64 %i.h, %.0146
  br i1 %i.an, label %.thread181, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call i32 @avio_rb16(ptr noundef %1) #16 ; 0 uses
  %i.ap = tail call i32 @avio_rb16(ptr noundef %1) #16 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread181, label %.preheader201

.preheader201:                                    ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.u
  %5 = add nsw i64 %.1151215, %i.bt               ; 3 uses
  %i.au = add nuw i32 %.1143216, 1                ; 2 uses
  %exitcond242.not = icmp eq i32 %i.au, %i.ap
  br i1 %exitcond242.not, label %bb.v, label %bb.n, !llvm.loop !488

bb.n:                                             ; preds = %.preheader201, %bb.m
  %.1143216 = phi i32 [ 0, %.preheader201 ], [ %i.au, %bb.m ]
  %.1151215 = phi i64 [ %.0150, %.preheader201 ], [ %5, %bb.m ] ; 3 uses
  %.0153214 = phi i64 [ %4, %.preheader201 ], [ %6, %bb.m ] ; 3 uses
  %i.av = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 2 uses
  %i.aw = tail call i32 @avio_rb32(ptr noundef %1) #16
  %.not173 = icmp sgt i32 %i.av, -1
  br i1 %.not173, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.ax, ptr noundef nonnull @.str.122) #16
  br label %.thread181

bb.p:                                             ; preds = %bb.n
  %i.ay = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.az = load i64, ptr %i.ar, align 8
  %i.ba = tail call fastcc i32 @update_frag_index(ptr noundef %0, i64 noundef %.0153214) ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %get_frag_stream_info.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.as, align 4, !tbaa !363
  %.not.i = icmp slt i32 %i.ba, %i.bc
  br i1 %.not.i, label %bb.r, label %get_frag_stream_info.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !364
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !365 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i, label %get_frag_stream_info.exit.thread

.lr.ph.i:                                         ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !366
  %wide.trip.count.i = zext nneg i32 %i.bh to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_frag_stream_info.exit.thread, label %bb.t, !llvm.loop !367

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.bk, i64 %indvars.iv.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !368
  %i.bn = icmp eq i32 %i.bm, %i.o
  br i1 %i.bn, label %get_frag_stream_info.exit, label %bb.s

get_frag_stream_info.exit:                        ; preds = %bb.t
  %i.bo = tail call i64 @av_rescale_q(i64 noundef %.1151215, i64 %.sroa.0.0.insert.insert.i, i64 %i.az) #19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !489
  br label %get_frag_stream_info.exit.thread

get_frag_stream_info.exit.thread:                 ; preds = %bb.s, %bb.r, %bb.p, %bb.q, %get_frag_stream_info.exit
  %i.bq = zext nneg i32 %i.av to i64              ; 2 uses
  %i.br = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.0153214, i64 %i.bq)
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  %6 = add nsw i64 %.0153214, %i.bq               ; 3 uses
  br i1 %i.bs, label %.thread181, label %bb.u

bb.u:                                             ; preds = %get_frag_stream_info.exit.thread
  %i.bt = zext i32 %i.aw to i64                   ; 2 uses
  %i.bu = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.1151215, i64 %i.bt)
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %.thread181, label %bb.m

bb.v:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 1368
  store i64 %5, ptr %i.bw, align 8, !tbaa !490
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i64 %5, ptr %i.bx, align 8, !tbaa !470
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 1596
  store i32 1, ptr %i.by, align 4, !tbaa !491
  %i.bz = icmp eq i64 %6, %i.a
  br i1 %i.bz, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !140
  %i.cc = trunc i32 %i.cb to i1
  %i.cd = icmp sgt i64 %i.a, 0
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.x, label %.thread181

bb.x:                                             ; preds = %bb.w
  %i.ce = tail call i64 @avio_seek(ptr noundef nonnull %1, i64 noundef 0, i32 noundef 1) #16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !474
  %.not168 = icmp eq i32 %i.cg, 0
  br i1 %.not168, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ch = add nsw i64 %i.a, -4
  %i.ci = tail call i64 @avio_seek(ptr noundef nonnull %1, i64 noundef %i.ch, i32 noundef 0) #16 ; 2 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = trunc i64 %i.ci to i32
  br label %.thread181

bb.aa:                                            ; preds = %bb.y
  %i.cl = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !473
  store i32 1, ptr %i.cf, align 4, !tbaa !474
  %i.cn = tail call i64 @avio_seek(ptr noundef nonnull %1, i64 noundef %i.ce, i32 noundef 0) #16 ; 2 uses
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = trunc i64 %i.cn to i32
  br label %.thread181

bb.ac:                                            ; preds = %bb.x, %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !473
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub nsw i64 %i.a, %i.cs
  %i.cu = icmp eq i64 %6, %i.ct
  br i1 %i.cu, label %select.unfold, label %.thread181

select.unfold:                                    ; preds = %bb.ac, %bb.v
  %i.cv = load i32, ptr %i.as, align 4, !tbaa !329 ; 2 uses
  %.not232 = icmp eq i32 %i.cv, 0
  br i1 %.not232, label %.loopexit, label %.lr.ph226

.lr.ph226:                                        ; preds = %select.unfold
  %i.cw = load ptr, ptr %i.at, align 8, !tbaa !330
  %wide.trip.count251 = zext i32 %i.cv to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph226, %.critedge
  %indvars.iv248 = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next249, %.critedge ] ; 2 uses
  %.0132225 = phi ptr [ null, %.lr.ph226 ], [ %.3135, %.critedge ] ; 3 uses
  %.0136224 = phi ptr [ null, %.lr.ph226 ], [ %.3139, %.critedge ] ; 2 uses
  %i.cx = icmp eq ptr %.0136224, null
  br i1 %i.cx, label %.lr.ph219, label %.critedge

.lr.ph219:                                        ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %indvars.iv248 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !365 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %wide.trip.count246 = zext i32 %i.da to i64
  %exitcond247.not298 = icmp eq i32 %i.da, 0
  br i1 %exitcond247.not298, label %.critedge, label %.lr.ph300.preheader

.lr.ph300.preheader:                              ; preds = %.lr.ph219
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !366
  br label %.lr.ph300

bb.ae:                                            ; preds = %.lr.ph300
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243299, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.critedge, label %.lr.ph300, !llvm.loop !492

.lr.ph300:                                        ; preds = %.lr.ph300.preheader, %bb.ae
  %indvars.iv243299 = phi i64 [ %indvars.iv.next244, %bb.ae ], [ 0, %.lr.ph300.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %indvars.iv243299
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !489
  %.not172 = icmp eq i64 %i.df, -9223372036854775808
  br i1 %.not172, label %bb.ae, label %bb.af, !llvm.loop !492

bb.af:                                            ; preds = %.lr.ph300
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv243299
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %.lr.ph219, %bb.ad, %bb.af
  %.3139 = phi ptr [ %i.dk, %bb.af ], [ %.0136224, %bb.ad ], [ null, %.lr.ph219 ], [ null, %bb.ae ] ; 3 uses
  %.3135 = phi ptr [ %i.dm, %bb.af ], [ %.0132225, %bb.ad ], [ %.0132225, %.lr.ph219 ], [ %.0132225, %bb.ae ] ; 2 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %._crit_edge227, label %bb.ad, !llvm.loop !493

._crit_edge227:                                   ; preds = %.critedge
  %.not170 = icmp eq ptr %.3139, null
  br i1 %.not170, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge227
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !9   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !28 ; 2 uses
  %.not233 = icmp eq i32 %i.dp, 0
  br i1 %.not233, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %.3139, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %.3135, i64 200
  %wide.trip.count256 = zext i32 %i.dp to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph231, %bb.ai
  %indvars.iv253 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next254, %bb.ai ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv253
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !42 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1596
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !491
  %.not171 = icmp eq i32 %i.dz, 0
  br i1 %.not171, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !470
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 200
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !285
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load i32, ptr %i.dt, align 8, !tbaa !285
  %i.ef = sext i32 %i.ee to i64
  %i.eg = tail call i64 @av_rescale(i64 noundef %i.ea, i64 noundef %i.ed, i64 noundef %i.ef) #19 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 1368
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !490
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  store i64 %i.eg, ptr %i.ei, align 8, !tbaa !470
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.loopexit, label %bb.ag, !llvm.loop !494

.loopexit:                                        ; preds = %bb.ai, %select.unfold, %.preheader, %._crit_edge227
  %i.ej = icmp eq i64 %.0146, 0
  br i1 %i.ej, label %bb.aj, label %.thread181

bb.aj:                                            ; preds = %.loopexit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 1, ptr %i.ek, align 4, !tbaa !142
  br label %.thread181

.thread181:                                       ; preds = %get_frag_stream_info.exit.thread, %bb.u, %bb.w, %bb.ac, %bb.ab, %bb.z, %bb.o, %bb.aj, %.loopexit, %bb.l, %bb.k, %bb.g, %._crit_edge, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ -1094995529, %bb.g ], [ 0, %._crit_edge ], [ -1094995529, %bb.k ], [ %i.ck, %bb.z ], [ -1094995529, %bb.l ], [ -1163346256, %bb.o ], [ 0, %.loopexit ], [ 0, %bb.aj ], [ 0, %bb.ac ], [ 0, %bb.w ], [ %i.cp, %bb.ab ], [ -1094995529, %bb.u ], [ -1094995529, %get_frag_stream_info.exit.thread ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -541478725, 1) i32 @mov_read_stps(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 24, ptr noundef nonnull @.str.123) #16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
end_hunk_0
begin_hunk_1_@mov_read_extradata:bb.a
bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !123
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = add i64 %3, %i.r                         ; 2 uses
  %i.t = add i64 %i.s, 72                         ; 2 uses
  %i.u = or i64 %i.t, %3
  %or.cond.not.i = icmp ult i64 %i.u, 2147483648
  br i1 %or.cond.not.i, label %mov_realloc_extradata.exit, label %mov_realloc_extradata.exit.thread

mov_realloc_extradata.exit:                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.w = tail call i32 @av_reallocp(ptr noundef nonnull %i.v, i64 noundef %i.t) #16 ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = trunc i64 %i.s to i32
  %i.z = add i32 %i.y, 8
  %.sink.i = select i1 %i.x, i32 0, i32 %i.z
  store i32 %.sink.i, ptr %i.p, align 8, !tbaa !123
  %.not21 = icmp sgt i32 %i.w, -1
  br i1 %.not21, label %bb.d, label %mov_realloc_extradata.exit.thread

bb.d:                                             ; preds = %mov_realloc_extradata.exit
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !51  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.r ; 3 uses
  %i.ae = trunc nuw nsw i64 %3 to i32             ; 4 uses
  %i.af = add nuw i32 %i.ae, 8
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %i.ag, ptr %i.ad, align 1, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %2, ptr %i.ah, align 1, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aj = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.ai, i32 noundef %i.ae) #16 ; 4 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !123
  %i.an = sub i32 %i.am, %i.ae
  store i32 %i.an, ptr %i.al, align 8, !tbaa !123
  br label %mov_realloc_extradata.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ao = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ap = icmp samesign ugt i64 %3, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aq, i32 noundef 24, ptr noundef nonnull @.str.41) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !123
  %i.at = sub nsw i32 %i.aj, %i.ae
  %i.au = add i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ar, align 8, !tbaa !123
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.av, i8 0, i64 64, i1 false)
  br label %mov_realloc_extradata.exit.thread

mov_realloc_extradata.exit.thread:                ; preds = %bb.h, %bb.e, %bb.c, %mov_realloc_extradata.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.w, %mov_realloc_extradata.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ -1094995529, %bb.c ], [ %i.aj, %bb.e ], [ 0, %bb.h ]
  ret i32 %.0
}

declare i32 @avio_rb24(ptr noundef) local_unnamed_addr #2

declare ptr @avpriv_new_chapter(ptr noundef, i64 noundef, i64, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_packet_side_data_new(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare ptr @av_color_primaries_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_color_transfer_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_color_space_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @av_sha_alloc() local_unnamed_addr #2

declare ptr @av_aes_alloc() local_unnamed_addr #2

declare i32 @avio_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ff_data_to_hex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_sha_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_sha_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_sha_final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_aes_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_aes_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @av_dict_set_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_aaxc_crypto(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i32, ptr %i.a, align 8, !tbaa !734
  %.not = icmp eq i32 %i.b, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 8, ptr noundef nonnull @.str.88) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i32, ptr %i.e, align 8, !tbaa !735
  %.not11 = icmp eq i32 %i.f, 16
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.h, i32 noundef 8, ptr noundef nonnull @.str.89) #16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr @av_aes_alloc() #16        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.i, ptr %i.j, align 8, !tbaa !361
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !737
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 1, ptr %i.q, align 4, !tbaa !360
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  ret void
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_metadata_creation_time(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @avio_rb64(ptr noundef %1) #16 ; 2 uses
  %i.c = tail call i64 @avio_rb64(ptr noundef %1) #16 ; 0 uses
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 48, ptr noundef nonnull @.str.97) #16
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.j = add i32 %i.g, -1
  %or.cond = icmp ult i32 %i.j, 2082844799
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.l, i32 noundef 24, ptr noundef nonnull @.str.98) #16
  %i.m = add nuw nsw i64 %i.h, 2082844800
  br label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.h, %bb.d ]  ; 3 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = icmp samesign ugt i64 %.0, 9225454881654
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.o, i32 noundef 48, ptr noundef nonnull @.str.99) #16
  br label %bb.i

bb.h:                                             ; preds = %.thread, %bb.f
  %.02327 = phi i64 [ %i.m, %.thread ], [ %.0, %bb.f ]
  %5 = mul nuw i64 %.02327, 1000000
  %mul.val = add i64 %5, -2082844800000000
  %i.p = tail call i32 @ff_dict_set_timestamp(ptr noundef %2, ptr noundef nonnull @.str.100, i64 noundef %mul.val) #16 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  ret void
}

declare i32 @ff_mov_lang_to_iso639(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_dict_set_timestamp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @update_frag_index(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !363  ; 7 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %search_frag_moof_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !364  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !332
  %i.j = icmp sge i64 %i.i, %1
  %i.k = icmp sgt i32 %i.c, 0
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %.lr.ph.i, label %search_frag_moof_offset.exit._crit_edge

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.027.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.c, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %.120.i, %.lr.ph.i ], [ -1, %bb.b ] ; 2 uses
  %i.l = add nsw i32 %.01926.i, %.027.i
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !332  ; 2 uses
  %.not24.i = icmp slt i64 %i.p, %1
  %spec.select.i = select i1 %.not24.i, i32 %.027.i, i32 %i.m ; 3 uses
  %.not25.i = icmp sgt i64 %i.p, %1
  %.120.i = select i1 %.not25.i, i32 %.01926.i, i32 %i.m ; 2 uses
  %i.q = sub nsw i32 %spec.select.i, %.120.i
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph.i, label %search_frag_moof_offset.exit, !llvm.loop !738

search_frag_moof_offset.exit:                     ; preds = %.lr.ph.i, %bb.a
  %.021.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ] ; 5 uses
  %i.s = icmp slt i32 %.021.i, %i.c
  br i1 %i.s, label %bb.c, label %search_frag_moof_offset.exit._crit_edge

search_frag_moof_offset.exit._crit_edge:          ; preds = %bb.b, %search_frag_moof_offset.exit
  %.021.i88 = phi i32 [ %.021.i, %search_frag_moof_offset.exit ], [ %i.c, %bb.b ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !330
  br label %bb.d

bb.c:                                             ; preds = %search_frag_moof_offset.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !330  ; 2 uses
  %i.v = sext i32 %.021.i to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !332
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %bb.k, label %bb.d

bb.d:                                             ; preds = %search_frag_moof_offset.exit._crit_edge, %bb.c
  %.021.i87 = phi i32 [ %.021.i88, %search_frag_moof_offset.exit._crit_edge ], [ %.021.i, %bb.c ] ; 5 uses
  %i.z = phi ptr [ %.pre, %search_frag_moof_offset.exit._crit_edge ], [ %i.u, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ab = add nsw i32 %i.c, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 5
  %i.ae = tail call ptr @av_fast_realloc(ptr noundef %i.z, ptr noundef nonnull %i.a, i64 noundef %i.ad) #16 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !330
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call ptr @av_realloc_array(ptr noundef null, i64 noundef %i.aj, i64 noundef 64) #16 ; 4 uses
  %.not71 = icmp eq ptr %i.ak, null
  br i1 %.not71, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !9  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28 ; 3 uses
  %.not73 = icmp eq i32 %i.an, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %wide.trip.count = zext i32 %i.an to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !241 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @av_free(ptr noundef nonnull %i.ak) #16
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %indvars.iv ; 6 uses
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !368
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.ay, align 8, !tbaa !178
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 -1, ptr %i.az, align 8, !tbaa !373
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  store i32 -1, ptr %i.ba, align 4, !tbaa !579
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store ptr null, ptr %i.bb, align 8, !tbaa !372
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store i32 -1, ptr %i.bc, align 8, !tbaa !371
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !739

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !329 ; 3 uses
  %i.be = icmp slt i32 %.021.i87, %i.bd
  br i1 %i.be, label %bb.i, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre79 = sext i32 %.021.i87 to i64
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.bg = sext i32 %.021.i87 to i64               ; 2 uses
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = sub nsw i32 %i.bd, %.021.i87
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bh, i64 %i.bl, i1 false)
  %.pre75 = load ptr, ptr %i.af, align 8, !tbaa !9
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %.pre75, i64 44
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !28
  %.pre78 = load i32, ptr %i.b, align 4, !tbaa !329
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge, %bb.i
  %.pre-phi = phi i64 [ %.pre79, %._crit_edge._crit_edge ], [ %i.bg, %bb.i ]
  %i.bm = phi i32 [ %i.bd, %._crit_edge._crit_edge ], [ %.pre78, %bb.i ]
  %i.bn = phi i32 [ %i.an, %._crit_edge._crit_edge ], [ %.pre77, %bb.i ]
  %i.bo = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.bp = getelementptr inbounds [32 x i8], ptr %i.bo, i64 %.pre-phi ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 8, !tbaa !335
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !522
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 %i.bn, ptr %i.bs, align 8, !tbaa !365
  store i64 %1, ptr %i.bp, align 8, !tbaa !332
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.ak, ptr %i.bt, align 8, !tbaa !366
  %i.bu = add nsw i32 %i.bm, 1
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !329
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c, %bb.j
  %.2 = phi i32 [ %.021.i, %bb.c ], [ -1094995529, %bb.g ], [ %.021.i87, %bb.j ], [ -1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.2
}

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_add_q(i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_sub_q(i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

end_hunk_1
begin_hunk_2_@mov_seek_stream:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !343 ; 2 uses
  %.not2124.i = icmp eq i64 %i.ip, 0
  br i1 %.not2124.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %bb.al
  %i.iq = phi i64 [ %i.ja, %bb.al ], [ %i.ip, %bb.aj ]
  %.026.i = phi i32 [ %i.ix, %bb.al ], [ %.083128, %bb.aj ] ; 2 uses
  %storemerge25.i = phi ptr [ %i.iy, %bb.al ], [ %i.im, %bb.aj ] ; 4 uses
  %i.ir = load i64, ptr %storemerge25.i, align 8, !tbaa !345 ; 2 uses
  %i.is = sub nsw i64 %i.iq, %i.ir                ; 2 uses
  %i.it = sext i32 %.026.i to i64                 ; 2 uses
  %i.iu = icmp sgt i64 %i.is, %i.it
  br i1 %i.iu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i
  store ptr %storemerge25.i, ptr %i.in, align 8, !tbaa !346
  %i.iv = add nsw i64 %i.ir, %i.it
  store i64 %i.iv, ptr %i.ik, align 8, !tbaa !341
  br label %mov_current_sample_set.exit

bb.al:                                            ; preds = %.lr.ph.i
  %i.iw = trunc i64 %i.is to i32
  %i.ix = sub i32 %.026.i, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %storemerge25.i, i64 16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge25.i, i64 24
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !343 ; 2 uses
  %.not21.i = icmp eq i64 %i.ja, 0
  br i1 %.not21.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !347

.loopexit.i:                                      ; preds = %bb.al, %bb.aj
  %storemerge.lcssa.i = phi ptr [ %i.im, %bb.aj ], [ %i.iy, %bb.al ]
  store ptr %storemerge.lcssa.i, ptr %i.in, align 8, !tbaa !346
  br label %mov_current_sample_set.exit

mov_current_sample_set.exit:                      ; preds = %can_seek_to_key_sample.exit120, %bb.ak, %.loopexit.i
  %i.jb = load i32, ptr %i.fh, align 8, !tbaa !168
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.580, i32 noundef %i.jb, i32 noundef %.083128) #16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !565 ; 2 uses
  %.not97 = icmp eq ptr %i.jd, null
  br i1 %.not97, label %.loopexit, label %.preheader144

.preheader144:                                    ; preds = %mov_current_sample_set.exit
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !563 ; 2 uses
  %.not193 = icmp eq i32 %i.jf, 0
  br i1 %.not193, label %.loopexit, label %.lr.ph189

.lr.ph189:                                        ; preds = %.preheader144
  %i.jg = load i32, ptr %i.ii, align 8, !tbaa !340 ; 2 uses
  %wide.trip.count = zext i32 %i.jf to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph189, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %.081187 = phi i32 [ 0, %.lr.ph189 ], [ %i.jj, %bb.ao ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [12 x i8], ptr %i.jd, i64 %indvars.iv
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !585
  %i.jj = add i32 %i.ji, %.081187                 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, %i.jg
  br i1 %i.jk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jl = trunc nuw i64 %indvars.iv to i32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !348
  %i.jn = sub nsw i32 %i.jg, %.081187
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %i.jn, ptr %i.jo, align 8, !tbaa !777
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.am, !llvm.loop !824

.loopexit:                                        ; preds = %bb.ao, %.preheader144, %bb.an, %mov_current_sample_set.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !169 ; 3 uses
  %.not98 = icmp eq i32 %i.jq, 0
  br i1 %.not98, label %.thread, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !171 ; 3 uses
  %.not194 = icmp eq i32 %i.js, 0
  br i1 %.not194, label %.thread, label %.lr.ph192

.lr.ph192:                                        ; preds = %.preheader
  %i.jt = add i32 %i.js, -1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !173 ; 3 uses
  %reass.sub.i = add i32 %i.jq, 1
  %i.jw = zext i32 %i.jt to i64
  %wide.trip.count233 = zext i32 %i.js to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph192, %bb.ax
  %indvars.iv230 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next231, %bb.ax ] ; 6 uses
  %.2190 = phi i32 [ 0, %.lr.ph192 ], [ %i.kw, %bb.ax ] ; 2 uses
  %i.jx = sext i32 %.2190 to i64
  %.not.i122 = icmp samesign ult i64 %indvars.iv230, %i.jw
  %i.jy = getelementptr inbounds nuw [12 x i8], ptr %i.jv, i64 %indvars.iv230 ; 2 uses
  br i1 %.not.i122, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !174
  %i.kb = getelementptr inbounds nuw [12 x i8], ptr %i.jv, i64 %indvars.iv230
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !174
  %i.kd = sub nsw i32 %i.ka, %i.kc
  br label %mov_get_stsc_samples.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ke = load i32, ptr %i.jy, align 4, !tbaa !174 ; 2 uses
  %.not16.i = icmp ugt i32 %i.ke, %i.jq
  br i1 %.not16.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.565, ptr noundef nonnull @.str.2, i32 noundef 3476) #16
  tail call void @abort() #17
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.kf = sub i32 %reass.sub.i, %i.ke
  br label %mov_get_stsc_samples.exit

mov_get_stsc_samples.exit:                        ; preds = %bb.aq, %bb.at
  %.0.i123 = phi i32 [ %i.kf, %bb.at ], [ %i.kd, %bb.aq ]
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %i.jv, i64 %indvars.iv230
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !499
  %i.kj = sext i32 %i.ki to i64
  %i.kk = sext i32 %.0.i123 to i64
  %i.kl = mul nsw i64 %i.kj, %i.kk
  %i.km = add nsw i64 %i.kl, %i.jx                ; 3 uses
  %i.kn = load i32, ptr %i.ii, align 8, !tbaa !340 ; 2 uses
  %i.ko = sext i32 %i.kn to i64
  %i.kp = icmp sgt i64 %i.km, %i.ko
  br i1 %i.kp, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %mov_get_stsc_samples.exit
  %i.kq = add nsw i64 %i.km, 2147483648
  %i.kr = icmp ult i64 %i.kq, 4294967296
  br i1 %i.kr, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.581, ptr noundef nonnull @.str.2, i32 noundef 12061) #16
  tail call void @abort() #17
  unreachable

bb.aw:                                            ; preds = %mov_get_stsc_samples.exit
  %i.ks = trunc nuw i64 %indvars.iv230 to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.ks, ptr %i.kt, align 8, !tbaa !813
  %i.ku = sub nsw i32 %i.kn, %.2190
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !814
  br label %.thread

bb.ax:                                            ; preds = %bb.au
  %i.kw = trunc nsw i64 %i.km to i32
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.thread, label %bb.ap, !llvm.loop !825

.thread:                                          ; preds = %can_seek_to_key_sample.exit, %bb.ax, %.preheader, %._crit_edge, %bb.u, %bb.aw, %.loopexit, %mov_seek_fragment.exit
  %.084 = phi i32 [ %.083128, %.loopexit ], [ %i.fe, %mov_seek_fragment.exit ], [ %.083128, %.preheader ], [ %.083128, %bb.aw ], [ -1094995529, %._crit_edge ], [ -1094995529, %bb.u ], [ %.083128, %bb.ax ], [ -1094995529, %can_seek_to_key_sample.exit ]
  ret i32 %.084
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 8}
!10 = !{!"MOVContext", !11, i64 0, !13, i64 8, !6, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !15, i64 56, !6, i64 64, !17, i64 72, !13, i64 80, !6, i64 88, !18, i64 96, !19, i64 144, !6, i64 152, !6, i64 156, !6, i64 160, !20, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !14, i64 208, !6, i64 216, !6, i64 220, !20, i64 224, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !21, i64 256, !6, i64 280, !6, i64 284, !7, i64 288, !7, i64 308, !12, i64 328, !6, i64 336, !12, i64 344, !6, i64 352, !12, i64 360, !6, i64 368, !12, i64 376, !6, i64 384, !23, i64 392, !24, i64 400, !6, i64 408, !6, i64 412, !7, i64 416, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !25, i64 472, !6, i64 480, !26, i64 488, !6, i64 496, !14, i64 504, !6, i64 512, !27, i64 520, !6, i64 528}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS15AVFormatContext", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"p1 _ZTS14DVDemuxContext", !12, i64 0}
!18 = !{!"MOVFragment", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!19 = !{!"p1 _ZTS11MOVTrackExt", !12, i64 0}
!20 = !{!"p1 int", !12, i64 0}
!21 = !{!"MOVFragmentIndex", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !22, i64 16}
!22 = !{!"p1 _ZTS20MOVFragmentIndexItem", !12, i64 0}
!23 = !{!"p1 _ZTS5AVAES", !12, i64 0}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"p2 _ZTS8HEIFItem", !16, i64 0}
!26 = !{!"p1 _ZTS8HEIFGrid", !12, i64 0}
!27 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!28 = !{!29, !6, i64 44}
!29 = !{!"AVFormatContext", !11, i64 0, !30, i64 8, !31, i64 16, !12, i64 24, !32, i64 32, !6, i64 40, !6, i64 44, !33, i64 48, !6, i64 56, !34, i64 64, !6, i64 72, !35, i64 80, !24, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !14, i64 136, !14, i64 144, !24, i64 152, !6, i64 160, !6, i64 164, !36, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !27, i64 192, !14, i64 200, !6, i64 208, !6, i64 212, !37, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !14, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !14, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !6, i64 368, !38, i64 376, !38, i64 384, !38, i64 392, !38, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !14, i64 432, !24, i64 440, !12, i64 448, !12, i64 456, !14, i64 464, !24, i64 472}
!30 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!31 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!32 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!33 = !{!"p2 _ZTS8AVStream", !16, i64 0}
!34 = !{!"p2 _ZTS13AVStreamGroup", !16, i64 0}
!35 = !{!"p2 _ZTS9AVChapter", !16, i64 0}
!36 = !{!"p2 _ZTS9AVProgram", !16, i64 0}
!37 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!38 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!39 = !{!29, !33, i64 48}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!42 = !{!43, !12, i64 24}
!43 = !{!"AVStream", !11, i64 0, !6, i64 8, !6, i64 12, !44, i64 16, !12, i64 24, !45, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !6, i64 64, !6, i64 68, !45, i64 72, !27, i64 80, !45, i64 88, !46, i64 96, !6, i64 200, !45, i64 204, !6, i64 212}
!44 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!45 = !{!"AVRational", !6, i64 0, !6, i64 4}
!46 = !{!"AVPacket", !47, i64 0, !14, i64 8, !14, i64 16, !24, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !48, i64 48, !6, i64 56, !14, i64 64, !14, i64 72, !12, i64 80, !47, i64 88, !45, i64 96}
!47 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!48 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!49 = !{!50, !6, i64 80}
!50 = !{!"AVIOContext", !11, i64 0, !24, i64 8, !6, i64 16, !24, i64 24, !24, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !14, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !14, i64 104, !24, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !24, i64 152, !24, i64 160, !12, i64 168, !6, i64 176, !24, i64 184, !14, i64 192, !14, i64 200}
!51 = !{!43, !44, i64 16}
!52 = !{!53, !6, i64 8}
!53 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !24, i64 16, !6, i64 24, !48, i64 32, !6, i64 40, !6, i64 44, !14, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !45, i64 80, !45, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !54, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!54 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!55 = !{!29, !6, i64 176}
!56 = !{!57, !6, i64 268}
!57 = !{!"MOVStreamContext", !32, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !58, i64 32, !6, i64 40, !6, i64 44, !59, i64 48, !6, i64 56, !6, i64 60, !60, i64 64, !6, i64 72, !24, i64 80, !6, i64 88, !6, i64 92, !61, i64 96, !6, i64 104, !62, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !20, i64 136, !63, i64 144, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !20, i64 176, !6, i64 184, !6, i64 188, !20, i64 192, !6, i64 200, !14, i64 208, !14, i64 216, !6, i64 224, !14, i64 232, !64, i64 240, !64, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !65, i64 272, !6, i64 276, !66, i64 280, !6, i64 288, !6, i64 292, !67, i64 296, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !7, i64 324, !6, i64 1348, !14, i64 1352, !6, i64 1360, !7, i64 1364, !14, i64 1368, !6, i64 1376, !68, i64 1384, !6, i64 1392, !68, i64 1400, !24, i64 1408, !6, i64 1416, !20, i64 1424, !6, i64 1432, !20, i64 1440, !6, i64 1448, !6, i64 1452, !6, i64 1456, !14, i64 1464, !15, i64 1472, !20, i64 1480, !6, i64 1488, !6, i64 1492, !6, i64 1496, !20, i64 1504, !69, i64 1512, !14, i64 1520, !70, i64 1528, !14, i64 1536, !71, i64 1544, !14, i64 1552, !72, i64 1560, !14, i64 1568, !73, i64 1576, !14, i64 1584, !6, i64 1592, !6, i64 1596, !74, i64 1600, !78, i64 1640, !6, i64 1648}
!58 = !{!"p1 long", !12, i64 0}
!59 = !{!"p1 _ZTS15MOVTimeToSample", !12, i64 0}
!60 = !{!"p1 _ZTS7MOVStts", !12, i64 0}
!61 = !{!"p1 _ZTS7MOVCtts", !12, i64 0}
!62 = !{!"p1 _ZTS7MOVStsc", !12, i64 0}
!63 = !{!"p1 _ZTS7MOVElst", !12, i64 0}
!64 = !{!"p1 _ZTS13MOVIndexRange", !12, i64 0}
!65 = !{!"short", !7, i64 0}
!66 = !{!"p1 _ZTS7MOVDref", !12, i64 0}
!67 = !{!"p1 _ZTS7MovTref", !12, i64 0}
!68 = !{!"p1 _ZTS7MOVSbgp", !12, i64 0}
!69 = !{!"p1 _ZTS10AVStereo3D", !12, i64 0}
!70 = !{!"p1 _ZTS18AVSphericalMapping", !12, i64 0}
!71 = !{!"p1 _ZTS26AVMasteringDisplayMetadata", !12, i64 0}
!72 = !{!"p1 _ZTS22AVContentLightMetadata", !12, i64 0}
!73 = !{!"p1 _ZTS27AVAmbientViewingEnvironment", !12, i64 0}
!74 = !{!"", !75, i64 0, !23, i64 8, !6, i64 16, !76, i64 24, !77, i64 32}
!75 = !{!"p1 _ZTS8AVAESCTR", !12, i64 0}
!76 = !{!"p1 _ZTS16AVEncryptionInfo", !12, i64 0}
!77 = !{!"p1 _ZTS18MOVEncryptionIndex", !12, i64 0}
!78 = !{!"p1 _ZTS16IAMFDemuxContext", !12, i64 0}
!79 = !{!57, !6, i64 288}
!80 = !{!57, !6, i64 1592}
!81 = !{!53, !6, i64 0}
!82 = !{!53, !6, i64 4}
!83 = !{!10, !6, i64 88}
!84 = !{!53, !6, i64 72}
!85 = !{!53, !6, i64 76}
!86 = !{!7, !7, i64 0}
!87 = !{!6, !6, i64 0}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = distinct !{!90, !89}
!91 = !{!53, !6, i64 56}
!92 = !{!57, !6, i64 1348}
!93 = !{!29, !27, i64 192}
!94 = !{!53, !6, i64 128}
!95 = !{!53, !6, i64 132}
!96 = !{!57, !65, i64 272}
!97 = !{!53, !6, i64 152}
!98 = !{!99, !24, i64 8}
!99 = !{!"AVDictionaryEntry", !24, i64 0, !24, i64 8}
!100 = !{!57, !6, i64 1496}
!101 = !{!57, !6, i64 256}
!102 = !{!57, !6, i64 260}
!103 = !{!104, !6, i64 808}
!104 = !{!"FFStream", !43, i64 0, !13, i64 216, !6, i64 224, !105, i64 232, !6, i64 240, !106, i64 248, !6, i64 256, !107, i64 264, !6, i64 280, !6, i64 284, !108, i64 288, !109, i64 312, !110, i64 320, !6, i64 328, !6, i64 332, !14, i64 336, !14, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !6, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !6, i64 424, !6, i64 428, !7, i64 432, !7, i64 568, !7, i64 592, !14, i64 728, !7, i64 736, !7, i64 737, !45, i64 740, !111, i64 752, !112, i64 784, !14, i64 792, !6, i64 800, !6, i64 804, !6, i64 808, !113, i64 816, !114, i64 824, !6, i64 832, !6, i64 836, !14, i64 840, !14, i64 848, !115, i64 856}
!105 = !{!"p1 _ZTS12AVBSFContext", !12, i64 0}
!106 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!107 = !{!"", !105, i64 0, !6, i64 8}
!108 = !{!"FFFrac", !14, i64 0, !14, i64 8, !14, i64 16}
!109 = !{!"p1 _ZTS12FFStreamInfo", !12, i64 0}
!110 = !{!"p1 _ZTS12AVIndexEntry", !12, i64 0}
!111 = !{!"AVProbeData", !24, i64 0, !24, i64 8, !6, i64 16, !24, i64 24}
!112 = !{!"p1 _ZTS15PacketListEntry", !12, i64 0}
!113 = !{!"p1 _ZTS20AVCodecParserContext", !12, i64 0}
!114 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!115 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!116 = !{!57, !6, i64 164}
!117 = distinct !{null}
!118 = !{!53, !24, i64 16}
!119 = !{!57, !6, i64 1360}
!120 = !{!43, !6, i64 88}
!121 = !{!43, !6, i64 92}
!122 = !{!57, !7, i64 1364}
!123 = !{!53, !6, i64 24}
!124 = !{!57, !15, i64 1472}
!125 = !{!57, !20, i64 1480}
!126 = !{!24, !24, i64 0}
!127 = !{!57, !6, i64 1492}
!128 = distinct !{!128, !89}
!129 = !{!10, !6, i64 280}
!130 = !{!10, !6, i64 236}
!131 = !{!29, !6, i64 272}
!132 = !{!133, !6, i64 0}
!133 = !{!"MOVParseTableEntry", !6, i64 0, !12, i64 8}
!134 = distinct !{!134, !89}
!135 = !{!133, !12, i64 8}
!136 = !{!10, !6, i64 48}
!137 = !{!10, !6, i64 64}
!138 = !{!10, !6, i64 32}
!139 = !{!10, !6, i64 44}
!140 = !{!50, !6, i64 144}
!141 = !{!29, !6, i64 128}
end_hunk_2
