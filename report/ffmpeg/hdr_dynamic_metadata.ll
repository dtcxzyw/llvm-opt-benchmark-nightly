Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdr_dynamic_metadata?download=true
inline.NumInlined: 158
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@av_dynamic_hdr_plus_to_t35:bb.a
  %i.aef = sub nsw i32 6, %.0.i.i392
  %i.aeg = lshr i32 %i.adw, %i.aef
  %i.aeh = or i32 %i.aeg, %i.aee
  %i.aei = tail call i32 @llvm.bswap.i32(i32 %i.aeh)
  store i32 %i.aei, ptr %.sroa.155.79, align 1, !tbaa !21
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.155.79, i64 4
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.sroa.155.82 = phi ptr [ %i.aej, %bb.fv ], [ %.sroa.155.79, %bb.fw ]
  %i.aek = add nsw i32 %.0.i.i392, 26
  br label %put_bits.exit401

put_bits.exit401:                                 ; preds = %bb.fx, %bb.ft, %put_bits.exit377, %put_bits.exit393
  %.sroa.155.12 = phi ptr [ %.sroa.155.71, %put_bits.exit377 ], [ %.sroa.155.79, %put_bits.exit393 ], [ %.sroa.155.79, %bb.ft ], [ %.sroa.155.82, %bb.fx ] ; 2 uses
  %.sroa.79.12 = phi i32 [ %.0.i.i376, %put_bits.exit377 ], [ %.0.i.i392, %put_bits.exit393 ], [ %i.aea, %bb.ft ], [ %i.aek, %bb.fx ] ; 2 uses
  %.sroa.0.12 = phi i32 [ %.026.i.i375, %put_bits.exit377 ], [ %.026.i.i391, %put_bits.exit393 ], [ %i.adz, %bb.ft ], [ %i.adw, %bb.fx ] ; 2 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %i.ael = load i8, ptr %i.d, align 2, !tbaa !24
  %i.aem = zext i8 %i.ael to i64
  %i.aen = icmp samesign ult i64 %indvars.iv.next726, %i.aem
  br i1 %i.aen, label %bb.en, label %._crit_edge676, !llvm.loop !89

.sink.split:                                      ; preds = %flush_put_bits.exit, %bb.m
  store i64 %i.bv, ptr %2, align 8, !tbaa !11
  br label %bb.fy

bb.fy:                                            ; preds = %.sink.split, %flush_put_bits.exit, %bb.p, %bb.o, %bb.d, %bb.c, %bb.a
  %.0246 = phi i32 [ -22, %bb.d ], [ -12, %bb.p ], [ -1397118274, %bb.o ], [ 0, %flush_put_bits.exit ], [ -22, %bb.a ], [ -22, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0246
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @put_bits(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 1, 28) %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51   ; 5 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.a, %1
  %i.f = or i32 %i.e, %2
  %i.g = sub nuw nsw i32 %i.c, %1
  br label %put_bits_no_assert.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = shl i32 %i.a, %i.c
  %i.q = sub nsw i32 %1, %i.c
  %i.r = lshr i32 %2, %i.q
  %i.s = or i32 %i.r, %i.p
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.k, align 1, !tbaa !21
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.j, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %reass.sub = sub i32 %i.c, %1
  %i.w = add i32 %reass.sub, 32
  br label %put_bits_no_assert.exit

put_bits_no_assert.exit:                          ; preds = %bb.b, %bb.f
  %.026.i = phi i32 [ %i.f, %bb.b ], [ %2, %bb.f ]
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.w, %bb.f ]
  store i32 %.026.i, ptr %0, align 8, !tbaa !50
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @flush_put_bits(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %i.c = icmp slt i32 %i.b, 32
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !50
  %i.e = shl i32 %i.d, %i.b
  store i32 %i.e, ptr %0, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !53   ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 160) #10
  tail call void @abort() #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !50
  %i.l = lshr i32 %i.k, 24
  %i.m = trunc nuw i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !53
  store i8 %i.m, ptr %i.h, align 1, !tbaa !21
  %i.o = load i32, ptr %0, align 8, !tbaa !50
  %i.p = shl i32 %i.o, 8
  store i32 %i.p, ptr %0, align 8, !tbaa !50
  %i.q = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %i.r = add nsw i32 %i.q, 8
  store i32 %i.r, ptr %i.a, align 4, !tbaa !51
  %i.s = icmp slt i32 %i.q, 24
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i32 32, ptr %i.a, align 4, !tbaa !51
  store i32 0, ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @av_dynamic_hdr_smpte2094_app5_alloc(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 890) #10 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq ptr %i.a, null
  %i.b = select i1 %.not4, i64 0, i64 890
  store i64 %i.b, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @av_dynamic_hdr_smpte2094_app5_create_side_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @av_frame_new_side_data(ptr noundef %0, i32 noundef 32, i64 noundef 890) #10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(890) %i.c, i8 0, i64 890, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @av_dynamic_hdr_smpte2094_app5_from_t35(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %2, 64
  %i.b = tail call noalias ptr @av_mallocz(i64 noundef %i.a) #10 ; 39 uses
  %.not213 = icmp eq ptr %i.b, null
  br i1 %.not213, label %bb.bn, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %1, i64 %2, i1 false)
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %or.cond.i = icmp ugt i32 %i.c, 268435455
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 3 uses
  %or.cond.i.i = icmp ugt i32 %i.e, 2147483134
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.e ; 21 uses
  %i.f = add nuw nsw i32 %.013.i.i, 8             ; 27 uses
  %3 = add i32 %i.e, -2147483136
  %or.cond = icmp ult i32 %3, -2147483134
  br i1 %or.cond, label %.thread435, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 1, !tbaa !21
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)  ; 3 uses
  %i.i = lshr i32 %i.h, 29
  %i.j = trunc nuw nsw i32 %i.i to i8
  store i8 %i.j, ptr %0, align 2, !tbaa !55
  %i.k = lshr i32 %i.h, 26
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = and i8 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !56
  %4 = icmp eq i32 %.013.i.i, 0
  br i1 %4, label %.thread435, label %5

5:                                                ; preds = %bb.d
  %6 = and i32 %i.h, 50331648
  %.not214 = icmp ne i32 %6, 0
  %7 = icmp samesign ult i32 %.013.i.i, 9
  %or.cond439 = select i1 %.not214, i1 true, i1 %7
  br i1 %or.cond439, label %.thread435, label %bb.e

bb.e:                                             ; preds = %5
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.p = load i32, ptr %i.o, align 1, !tbaa !21   ; 2 uses
  %i.q = trunc i32 %i.p to i8                     ; 3 uses
  %i.r = lshr i8 %i.q, 7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.r, ptr %i.s, align 2, !tbaa !57
  %i.t = icmp samesign ult i32 %.013.i.i, 10
  br i1 %i.t, label %.thread435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i8 %i.q, 6
  %i.v = and i8 %i.u, 1                           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !58
  %i.x = icmp samesign ugt i32 %.013.i.i, 15
  %i.y = and i32 %i.p, 63
  %.not215 = icmp eq i32 %i.y, 0
  %or.cond573 = select i1 %i.x, i1 %.not215, i1 false
  br i1 %or.cond573, label %bb.g, label %.thread435

bb.g:                                             ; preds = %bb.f
  %.not216 = icmp sgt i8 %i.q, -1
  br i1 %.not216, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp samesign ult i32 %.013.i.i, 32
  br i1 %i.z, label %.thread435, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !21
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.29.0 = phi i32 [ 16, %bb.g ], [ 32, %bb.i ] ; 7 uses
  %.not217 = icmp eq i8 %i.v, 0
  br i1 %.not217, label %.thread435, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = sub nsw i32 %.013.i.i, %.sroa.29.0
  %i.ah = icmp slt i32 %i.ag, 16
  br i1 %i.ah, label %.thread435, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = lshr exact i32 %.sroa.29.0, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !21
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = lshr i32 %i.am, 16
  %i.ao = add nuw nsw i32 %.sroa.29.0, 16         ; 2 uses
  %i.ap = trunc nuw i32 %i.an to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !60
  %.not443 = icmp samesign ult i32 %i.ao, %.013.i.i
  br i1 %.not443, label %bb.m, label %.thread435

bb.m:                                             ; preds = %bb.l
  %i.ar = lshr exact i32 %i.ao, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1, !tbaa !21 ; 4 uses
  %i.av = trunc i32 %i.au to i8                   ; 2 uses
  %i.aw = lshr i8 %i.av, 7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.aw, ptr %i.ax, align 2, !tbaa !61
  %.not218 = icmp sgt i8 %i.av, -1
  br i1 %.not218, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.mask = and i32 %i.au, 127
  %.not232 = icmp eq i32 %.mask, 0
  %i.ay = select i1 %.not232, i32 0, i32 -1094995529
  br label %.thread435

bb.o:                                             ; preds = %bb.m
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.au) ; 2 uses
  %i.ba = lshr i32 %i.az, 28                      ; 3 uses
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = icmp ugt i32 %i.az, 1342177279
  br i1 %i.bd, label %.thread435, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = lshr i32 %i.au, 2
  %i.bf = and i32 %i.be, 3                        ; 2 uses
  %i.bg = add nuw nsw i32 %.sroa.29.0, 22         ; 2 uses
  %i.bh = trunc nuw nsw i32 %i.bf to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !63
  %.not444 = icmp samesign ugt i32 %.013.i.i, %i.bg
  br i1 %.not444, label %bb.q, label %.thread435

bb.q:                                             ; preds = %bb.p
  %i.bj = lshr i32 %i.bg, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !21
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = shl i32 %i.bn, 6                        ; 2 uses
  %i.bp = lshr i32 %i.bo, 31
  %i.bq = add nuw nsw i32 %.sroa.29.0, 23         ; 2 uses
  %i.br = trunc nuw nsw i32 %i.bp to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !64
  %.not445 = icmp samesign ugt i32 %.013.i.i, %i.bq
  br i1 %.not445, label %bb.r, label %.thread435

bb.r:                                             ; preds = %bb.q
  %i.bt = lshr i32 %i.bq, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !21
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = shl i32 %i.bx, 7                        ; 2 uses
  %i.bz = lshr i32 %i.by, 31
  %i.ca = add nuw nsw i32 %.sroa.29.0, 24         ; 3 uses
  %i.cb = trunc nuw nsw i32 %i.bz to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.cb, ptr %i.cc, align 2, !tbaa !65
  %i.cd = icmp eq i32 %i.bf, 3
  %invariant.op = add nsw i32 %.013.i.i, -16      ; 18 uses
  br i1 %i.cd, label %.preheader459, label %.thread

.preheader459:                                    ; preds = %bb.r
  %i.ce = icmp samesign ugt i32 %i.ca, %invariant.op
  br i1 %i.ce, label %.thread435, label %bb.s

bb.s:                                             ; preds = %.preheader459
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cg = lshr exact i32 %i.ca, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !21
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = lshr i32 %i.ck, 16
  %i.cm = add nuw nsw i32 %.sroa.29.0, 40
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cm) ; 3 uses
  %i.co = trunc nuw i32 %i.cl to i16
  store i16 %i.co, ptr %i.cf, align 2, !tbaa !66
  %i.cp = icmp samesign ugt i32 %i.cn, %invariant.op
  br i1 %i.cp, label %.thread435, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = lshr exact i32 %i.cn, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !21
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = add nuw nsw i32 %i.cn, 16
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cw) ; 4 uses
  %i.cy = trunc nuw i32 %i.cv to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !66
  %i.da = icmp samesign ugt i32 %i.cx, %invariant.op
  br i1 %i.da, label %.thread435, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = lshr i32 %i.cx, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !21
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = and i32 %i.cx, 7
  %i.dh = shl i32 %i.df, %i.dg
  %i.di = lshr i32 %i.dh, 16
  %i.dj = add nuw nsw i32 %i.cx, 16
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.dj) ; 4 uses
  %i.dl = trunc nuw i32 %i.di to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !66
  %i.dn = icmp samesign ugt i32 %i.dk, %invariant.op
  br i1 %i.dn, label %.thread435, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = lshr i32 %i.dk, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !21
  %i.ds = tail call i32 @llvm.bswap.i32(i32 %i.dr)
  %i.dt = and i32 %i.dk, 7
  %i.du = shl i32 %i.ds, %i.dt
  %i.dv = lshr i32 %i.du, 16
  %i.dw = add nuw nsw i32 %i.dk, 16
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.dw) ; 4 uses
  %i.dy = trunc nuw i32 %i.dv to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !66
  %i.ea = icmp samesign ugt i32 %i.dx, %invariant.op
  br i1 %i.ea, label %.thread435, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = lshr i32 %i.dx, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !21
  %i.ef = tail call i32 @llvm.bswap.i32(i32 %i.ee)
  %i.eg = and i32 %i.dx, 7
  %i.eh = shl i32 %i.ef, %i.eg
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = add nuw nsw i32 %i.dx, 16
  %i.ek = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ej) ; 4 uses
  %i.el = trunc nuw i32 %i.ei to i16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.el, ptr %i.em, align 2, !tbaa !66
  %i.en = icmp samesign ugt i32 %i.ek, %invariant.op
  br i1 %i.en, label %.thread435, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = lshr i32 %i.ek, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 1, !tbaa !21
  %i.es = tail call i32 @llvm.bswap.i32(i32 %i.er)
  %i.et = and i32 %i.ek, 7
  %i.eu = shl i32 %i.es, %i.et
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = add nuw nsw i32 %i.ek, 16
  %i.ex = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ew) ; 4 uses
  %i.ey = trunc nuw i32 %i.ev to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !66
  %i.fa = icmp samesign ugt i32 %i.ex, %invariant.op
  br i1 %i.fa, label %.thread435, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = lshr i32 %i.ex, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 1, !tbaa !21
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = and i32 %i.ex, 7
  %i.fh = shl i32 %i.ff, %i.fg
  %i.fi = lshr i32 %i.fh, 16
  %i.fj = add nuw nsw i32 %i.ex, 16
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.fj) ; 4 uses
  %i.fl = trunc nuw i32 %i.fi to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !66
  %i.fn = icmp samesign ugt i32 %i.fk, %invariant.op
  br i1 %i.fn, label %.thread435, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.y
  %i.fo = lshr i32 %i.fk, 3
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 1, !tbaa !21
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.ft = and i32 %i.fk, 7
  %i.fu = shl i32 %i.fs, %i.ft
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = add nuw nsw i32 %i.fk, 16
  %i.fx = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.fw)
  %i.fy = trunc nuw i32 %i.fv to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.r, %.thread.loopexit
  %.sroa.29.2 = phi i32 [ %i.fx, %.thread.loopexit ], [ %i.ca, %bb.r ]
  %invariant.op488 = add nsw i32 %.013.i.i, -2    ; 2 uses
  %invariant.op489 = add nsw i32 %.013.i.i, -6
  %invariant.op490 = add nsw i32 %.013.i.i, -5
  %.not510 = icmp eq i32 %i.ba, 0
  br i1 %.not510, label %.thread435, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.not220 = icmp sgt i32 %i.bo, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 3 uses
  %.not224 = icmp sgt i32 %i.by, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 378
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 634
  %wide.trip.count = zext nneg i32 %i.ba to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.thread432
  %indvars.iv537 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next538, %.thread432 ] ; 17 uses
  %.sroa.29.3492 = phi i32 [ %.sroa.29.2, %.lr.ph ], [ %.sroa.29.12, %.thread432 ] ; 4 uses
  %i.gr = icmp sgt i32 %.sroa.29.3492, %invariant.op
  br i1 %i.gr, label %.thread435, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gs = lshr i32 %.sroa.29.3492, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 1, !tbaa !21
  %i.gw = tail call i32 @llvm.bswap.i32(i32 %i.gv)
  %i.gx = and i32 %.sroa.29.3492, 7
  %i.gy = shl i32 %i.gw, %i.gx
  %i.gz = lshr i32 %i.gy, 16
  %i.ha = add nsw i32 %.sroa.29.3492, 16
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ha) ; 6 uses
  %i.hc = trunc nuw i32 %i.gz to i16
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv537
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !66
  %.not219 = icmp eq i64 %indvars.iv537, 0        ; 2 uses
  %or.cond442 = select i1 %.not219, i1 true, i1 %.not220
  br i1 %or.cond442, label %bb.ab, label %bb.bb

bb.ab:                                            ; preds = %bb.aa
  %i.he = icmp sgt i32 %i.hb, %invariant.op488
  br i1 %i.he, label %.thread435, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hf = lshr i32 %i.hb, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 1, !tbaa !21
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = and i32 %i.hb, 7
  %i.hl = shl i32 %i.hj, %i.hk
  %i.hm = lshr i32 %i.hl, 30                      ; 2 uses
  %i.hn = add nuw i32 %i.hb, 2
  %i.ho = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.hn) ; 8 uses
  %i.hp = trunc nuw nsw i32 %i.hm to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv537
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !21
  %.not221 = icmp eq i32 %i.hm, 3
  br i1 %.not221, label %.preheader454, label %bb.ad

.preheader454:                                    ; preds = %bb.ac
  %i.hr = getelementptr inbounds nuw [6 x i8], ptr %i.gc, i64 %indvars.iv537 ; 6 uses
  %.not446 = icmp sgt i32 %.013.i.i, %i.ho
  br i1 %.not446, label %bb.af, label %.thread435

bb.ad:                                            ; preds = %bb.ac
  %i.hs = icmp sgt i32 %i.ho, %invariant.op489
  br i1 %i.hs, label %.thread435, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ht = lshr i32 %i.ho, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 1, !tbaa !21
  %i.hx = tail call i32 @llvm.bswap.i32(i32 %i.hw)
  %i.hy = and i32 %i.ho, 7
  %i.hz = shl i32 %i.hx, %i.hy
  %i.ia = add nuw i32 %i.ho, 6
  %i.ib = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ia)
  %.not223 = icmp ult i32 %i.hz, 67108864
  br i1 %.not223, label %.thread415, label %.thread435

bb.af:                                            ; preds = %.preheader454
  %i.ic = lshr i32 %i.ho, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 1, !tbaa !21
  %i.ig = tail call i32 @llvm.bswap.i32(i32 %i.if)
  %i.ih = and i32 %i.ho, 7
  %i.ii = shl i32 %i.ig, %i.ih                    ; 2 uses
  %i.ij = lshr i32 %i.ii, 31
  %i.ik = add nuw nsw i32 %i.ho, 1
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ik) ; 4 uses
  %i.im = trunc nuw nsw i32 %i.ij to i8
  store i8 %i.im, ptr %i.hr, align 1, !tbaa !21
  %.not446.1 = icmp sgt i32 %.013.i.i, %i.il
  br i1 %.not446.1, label %bb.ag, label %.thread435

bb.ag:                                            ; preds = %bb.af
  %i.in = lshr i32 %i.il, 3
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 1, !tbaa !21
  %i.ir = tail call i32 @llvm.bswap.i32(i32 %i.iq)
  %i.is = and i32 %i.il, 7
  %i.it = shl i32 %i.ir, %i.is                    ; 2 uses
  %i.iu = lshr i32 %i.it, 31
  %i.iv = add nuw nsw i32 %i.il, 1
  %i.iw = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.iv) ; 4 uses
  %i.ix = trunc nuw nsw i32 %i.iu to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !21
  %.not446.2 = icmp sgt i32 %.013.i.i, %i.iw
  br i1 %.not446.2, label %bb.ah, label %.thread435

bb.ah:                                            ; preds = %bb.ag
  %i.iz = lshr i32 %i.iw, 3
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 1, !tbaa !21
  %i.jd = tail call i32 @llvm.bswap.i32(i32 %i.jc)
  %i.je = and i32 %i.iw, 7
  %i.jf = shl i32 %i.jd, %i.je                    ; 2 uses
  %i.jg = lshr i32 %i.jf, 31
  %i.jh = add nuw nsw i32 %i.iw, 1
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.jh) ; 4 uses
  %i.jj = trunc nuw nsw i32 %i.jg to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !21
  %.not446.3 = icmp sgt i32 %.013.i.i, %i.ji
  br i1 %.not446.3, label %bb.ai, label %.thread435

bb.ai:                                            ; preds = %bb.ah
  %i.jl = lshr i32 %i.ji, 3
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 1, !tbaa !21
  %i.jp = tail call i32 @llvm.bswap.i32(i32 %i.jo)
  %i.jq = and i32 %i.ji, 7
  %i.jr = shl i32 %i.jp, %i.jq                    ; 2 uses
  %i.js = lshr i32 %i.jr, 31
  %i.jt = add nuw nsw i32 %i.ji, 1
  %i.ju = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.jt) ; 4 uses
  %i.jv = trunc nuw nsw i32 %i.js to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !21
  %.not446.4 = icmp sgt i32 %.013.i.i, %i.ju
  br i1 %.not446.4, label %bb.aj, label %.thread435

bb.aj:                                            ; preds = %bb.ai
  %i.jx = lshr i32 %i.ju, 3
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 1, !tbaa !21
  %i.kb = tail call i32 @llvm.bswap.i32(i32 %i.ka)
  %i.kc = and i32 %i.ju, 7
  %i.kd = shl i32 %i.kb, %i.kc                    ; 2 uses
  %i.ke = lshr i32 %i.kd, 31
  %i.kf = add nuw nsw i32 %i.ju, 1
  %i.kg = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.kf) ; 4 uses
  %i.kh = trunc nuw nsw i32 %i.ke to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !21
  %.not446.5 = icmp sgt i32 %.013.i.i, %i.kg
  br i1 %.not446.5, label %.preheader452, label %.thread435

.preheader452:                                    ; preds = %bb.aj
  %i.kj = lshr i32 %i.kg, 3
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 1, !tbaa !21
  %i.kn = tail call i32 @llvm.bswap.i32(i32 %i.km)
  %i.ko = and i32 %i.kg, 7
  %i.kp = shl i32 %i.kn, %i.ko                    ; 2 uses
  %i.kq = lshr i32 %i.kp, 31
  %i.kr = add nuw nsw i32 %i.kg, 1
  %i.ks = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.kr) ; 5 uses
  %i.kt = trunc nuw nsw i32 %i.kq to i8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hr, i64 5
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !21
  %i.kv = getelementptr inbounds nuw [12 x i8], ptr %i.gd, i64 %indvars.iv537 ; 6 uses
  %.not222 = icmp sgt i32 %i.ii, -1
  br i1 %.not222, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.preheader452
  %i.kw = icmp sgt i32 %i.ks, %invariant.op
  br i1 %i.kw, label %.thread435, label %bb.al

bb.al:                                            ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@av_dynamic_hdr_smpte2094_app5_from_t35:bb.a
  %i.pm = lshr i32 %i.pl, 31
  %i.pn = trunc nuw nsw i32 %i.pm to i8           ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv537
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !21
  %.not565 = icmp slt i32 %i.pc, %invariant.op488
  br i1 %.not565, label %bb.bf, label %.thread435

bb.bf:                                            ; preds = %bb.be
  %i.pp = add nuw nsw i32 %i.pc, 1                ; 2 uses
  %i.pq = lshr i32 %i.pp, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 1, !tbaa !21
  %i.pu = tail call i32 @llvm.bswap.i32(i32 %i.pt)
  %i.pv = and i32 %i.pp, 7
  %i.pw = shl i32 %i.pu, %i.pv
  %.not226 = icmp ult i32 %i.pw, 1073741824
  br i1 %.not226, label %.preheader449, label %.thread435

.preheader449:                                    ; preds = %bb.bf
  %i.px = add nuw i32 %i.pc, 3
  %i.py = getelementptr inbounds nuw [64 x i8], ptr %i.gg, i64 %indvars.iv537
  %i.pz = zext nneg i32 %i.pa to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.preheader449, %bb.bh
  %indvars.iv528 = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next529, %bb.bh ] ; 3 uses
  %.sroa.29.8478 = phi i32 [ %i.px, %.preheader449 ], [ %i.qk, %bb.bh ] ; 4 uses
  %i.qa = icmp sgt i32 %.sroa.29.8478, %invariant.op
  br i1 %i.qa, label %.thread435, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qb = lshr i32 %.sroa.29.8478, 3
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 1, !tbaa !21
  %i.qf = tail call i32 @llvm.bswap.i32(i32 %i.qe)
  %i.qg = and i32 %.sroa.29.8478, 7
  %i.qh = shl i32 %i.qf, %i.qg
  %i.qi = lshr i32 %i.qh, 16
  %i.qj = add nsw i32 %.sroa.29.8478, 16
  %i.qk = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.qj) ; 2 uses
  %i.ql = trunc nuw i32 %i.qi to i16
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %indvars.iv528
  store i16 %i.ql, ptr %i.qm, align 2, !tbaa !66
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1
  %.not227.not = icmp samesign ult i64 %indvars.iv528, %i.pz
  br i1 %.not227.not, label %bb.bg, label %.thread425, !llvm.loop !115

iter.check:                                       ; preds = %.thread418
  %i.qn = load i8, ptr %i.ge, align 2, !tbaa !21  ; 5 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv537
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !21
  %i.qp = load i8, ptr %i.gf, align 2, !tbaa !21  ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv537
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !21
  %i.qr = getelementptr inbounds nuw [64 x i8], ptr %i.gg, i64 %indvars.iv537 ; 3 uses
  %i.qs = zext i8 %i.qn to i64                    ; 2 uses
  %i.qt = add nuw nsw i64 %i.qs, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.qn, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check588 = icmp ult i8 %i.qn, 15
  br i1 %min.iters.check588, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qu = and i64 %i.qt, 12
  %n.vec = and i64 %i.qt, 496                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %index ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load = load <8 x i16>, ptr %i.qv, align 2, !tbaa !66
  %wide.load589 = load <8 x i16>, ptr %i.qw, align 2, !tbaa !66
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qr, i64 %index ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store <8 x i16> %wide.load, ptr %i.qx, align 2, !tbaa !66
  store <8 x i16> %wide.load589, ptr %i.qy, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.qz = icmp eq i64 %index.next, %n.vec
  br i1 %i.qz, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qt, %n.vec
  br i1 %cmp.n, label %.thread425.loopexit513, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !124

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec590 = and i64 %i.qt, 508                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index591 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next593, %vec.epilog.vector.body ] ; 3 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %index591
  %wide.load592 = load <4 x i16>, ptr %i.ra, align 2, !tbaa !66
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qr, i64 %index591
  store <4 x i16> %wide.load592, ptr %i.rb, align 2, !tbaa !66
  %index.next593 = add nuw i64 %index591, 4       ; 2 uses
  %i.rc = icmp eq i64 %index.next593, %n.vec590
  br i1 %i.rc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n594 = icmp eq i64 %i.qt, %n.vec590
  br i1 %cmp.n594, label %.thread425.loopexit513, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec590, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %indvars.iv
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !66
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.qr, i64 %indvars.iv
  store i16 %i.re, ptr %i.rf, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not228.not = icmp samesign ult i64 %indvars.iv, %i.qs
  br i1 %.not228.not, label %vec.epilog.scalar.ph, label %.thread425.loopexit513, !llvm.loop !118

.thread425.loopexit513:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.rg = zext i8 %i.qn to i32
  br label %.thread425

.thread425:                                       ; preds = %bb.bh, %.thread425.loopexit513
  %i.rh = phi i8 [ %i.qp, %.thread425.loopexit513 ], [ %i.pn, %bb.bh ]
  %i.ri = phi i32 [ %i.rg, %.thread425.loopexit513 ], [ %i.pa, %bb.bh ]
  %.sroa.29.9 = phi i32 [ %.sroa.29.7421, %.thread425.loopexit513 ], [ %i.qk, %bb.bh ]
  %i.rj = getelementptr inbounds nuw [64 x i8], ptr %i.gh, i64 %indvars.iv537
  %i.rk = zext nneg i32 %i.ri to i64              ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.thread425, %bb.bj
  %indvars.iv531 = phi i64 [ 0, %.thread425 ], [ %indvars.iv.next532, %bb.bj ] ; 3 uses
  %.sroa.29.10482 = phi i32 [ %.sroa.29.9, %.thread425 ], [ %i.rv, %bb.bj ] ; 4 uses
  %i.rl = icmp sgt i32 %.sroa.29.10482, %invariant.op
  br i1 %i.rl, label %.thread435, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rm = lshr i32 %.sroa.29.10482, 3
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 1, !tbaa !21
  %i.rq = tail call i32 @llvm.bswap.i32(i32 %i.rp)
  %i.rr = and i32 %.sroa.29.10482, 7
  %i.rs = shl i32 %i.rq, %i.rr
  %i.rt = lshr i32 %i.rs, 16
  %i.ru = add nsw i32 %.sroa.29.10482, 16
  %i.rv = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ru) ; 3 uses
  %i.rw = trunc nuw i32 %i.rt to i16
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.rj, i64 %indvars.iv531
  store i16 %i.rw, ptr %i.rx, align 2, !tbaa !66
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1
  %.not229.not = icmp samesign ult i64 %indvars.iv531, %i.rk
  br i1 %.not229.not, label %bb.bi, label %bb.bk, !llvm.loop !119

bb.bk:                                            ; preds = %bb.bj
  %.not230 = icmp eq i8 %i.rh, 0
  br i1 %.not230, label %.preheader, label %.thread432

.preheader:                                       ; preds = %bb.bk
  %i.ry = getelementptr inbounds nuw [64 x i8], ptr %i.gi, i64 %indvars.iv537
  br label %bb.bl

bb.bl:                                            ; preds = %.preheader, %bb.bm
  %indvars.iv534 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next535, %bb.bm ] ; 3 uses
  %.sroa.29.11485 = phi i32 [ %i.rv, %.preheader ], [ %i.sj, %bb.bm ] ; 4 uses
  %i.rz = icmp sgt i32 %.sroa.29.11485, %invariant.op
  br i1 %i.rz, label %.thread435, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sa = lshr i32 %.sroa.29.11485, 3
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 1, !tbaa !21
  %i.se = tail call i32 @llvm.bswap.i32(i32 %i.sd)
  %i.sf = and i32 %.sroa.29.11485, 7
  %i.sg = shl i32 %i.se, %i.sf
  %i.sh = lshr i32 %i.sg, 16
  %i.si = add nsw i32 %.sroa.29.11485, 16
  %i.sj = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.si) ; 2 uses
  %i.sk = trunc nuw i32 %i.sh to i16
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ry, i64 %indvars.iv534
  store i16 %i.sk, ptr %i.sl, align 2, !tbaa !66
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1
  %.not231.not = icmp samesign ult i64 %indvars.iv534, %i.rk
  br i1 %.not231.not, label %bb.bl, label %.thread432, !llvm.loop !120

.thread432:                                       ; preds = %bb.bm, %bb.bk
  %.sroa.29.12 = phi i32 [ %i.rv, %bb.bk ], [ %i.sj, %bb.bm ]
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count
  br i1 %exitcond.not, label %.thread435, label %bb.z, !llvm.loop !121

.thread435:                                       ; preds = %.thread432, %bb.ae, %bb.bc, %bb.bd, %bb.be, %bb.z, %bb.ab, %bb.ad, %bb.bf, %.preheader454, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bg, %bb.bi, %bb.bl, %.preheader459, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %.thread, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %5, %bb.d, %bb.c, %bb.n
  %.12 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.h ], [ -1094995529, %bb.v ], [ -1094995529, %bb.u ], [ -1094995529, %bb.d ], [ -1094995529, %5 ], [ -1094995529, %bb.q ], [ -1094995529, %bb.e ], [ -1094995529, %bb.f ], [ -1094995529, %bb.bi ], [ 0, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.l ], [ %i.ay, %bb.n ], [ -1094995529, %bb.t ], [ 0, %.thread ], [ -1094995529, %bb.o ], [ -1094995529, %bb.w ], [ -1094995529, %bb.p ], [ -1094995529, %bb.bg ], [ -1094995529, %.preheader459 ], [ -1094995529, %bb.s ], [ -1094995529, %bb.bl ], [ -1094995529, %bb.y ], [ -1094995529, %bb.x ], [ -1094995529, %bb.bd ], [ -1094995529, %bb.bc ], [ -1094995529, %bb.ae ], [ 0, %.thread432 ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.z ], [ -1094995529, %bb.be ], [ -1094995529, %bb.af ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ai ], [ -1094995529, %bb.aj ], [ -1094995529, %bb.an ], [ -1094995529, %bb.aq ], [ -1094995529, %bb.at ], [ -1094995529, %bb.aw ], [ -1094995529, %bb.az ], [ -1094995529, %bb.bf ], [ -1094995529, %.preheader454 ], [ -1094995529, %bb.ak ]
  tail call void @av_free(ptr noundef nonnull %i.b) #10
  br label %bb.bn

bb.bn:                                            ; preds = %.thread435, %bb.b, %bb.a
  %.1208 = phi i32 [ -22, %bb.a ], [ %.12, %.thread435 ], [ -12, %bb.b ]
  ret i32 %.1208
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1397118274, 1) i32 @av_dynamic_hdr_smpte2094_app5_to_t35(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PutBitContext, align 8      ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit276, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not191 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not191, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp ne ptr %2, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.e, label %.loopexit276

bb.d:                                             ; preds = %bb.b
  %.old1.not = icmp eq ptr %2, null
  br i1 %.old1.not, label %.loopexit276, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i8, ptr %0, align 2, !tbaa !55      ; 2 uses
  %i.e = icmp ugt i8 %i.d, 7
  br i1 %i.e, label %.loopexit276, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56
  %i.h = icmp ugt i8 %i.g, 2
  br i1 %i.h, label %.loopexit276, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !57
  %.not192 = icmp eq i8 %i.j, 0
  %spec.select = select i1 %.not192, i64 16, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58
  %.not193 = icmp eq i8 %i.l, 0
  br i1 %.not193, label %.thread264, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 2, !tbaa !61
  %.not194 = icmp eq i8 %i.n, 0
  br i1 %.not194, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw nsw i64 %spec.select, 24
  br label %.thread264

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.q = load i8, ptr %i.p, align 2, !tbaa !63
  %i.r = icmp eq i8 %i.q, 3
  %spec.select218.v = select i1 %i.r, i64 152, i64 24
  %spec.select218 = add nuw nsw i64 %spec.select218.v, %spec.select ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !62    ; 4 uses
  %i.u = icmp ugt i8 %i.t, 4
  br i1 %i.u, label %.loopexit276, label %.preheader275

.preheader275:                                    ; preds = %bb.j
  %.not200280.not = icmp eq i8 %i.t, 0
  br i1 %.not200280.not, label %.thread264, label %bb.k

bb.k:                                             ; preds = %.preheader275
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %wide.trip.count = zext nneg i8 %i.t to i64
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !21
  %.not197.peel = icmp eq i8 %i.ab, 3
  br i1 %.not197.peel, label %.loopexit274.loopexit.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nuw nsw i64 %spec.select218, 24
  br label %.loopexit274.peel

.loopexit274.loopexit.peel:                       ; preds = %bb.k
  %i.ad = load <4 x i8>, ptr %i.x, align 2, !tbaa !21
  %i.ae = icmp eq <4 x i8> %i.ad, zeroinitializer ; 4 uses
  %i.af = extractelement <4 x i1> %i.ae, i64 0
  %spec.select219.peel.v = select i1 %i.af, i64 24, i64 40
  %spec.select219.peel = add nuw nsw i64 %spec.select218, %spec.select219.peel.v ; 2 uses
  %i.ag = add nuw nsw i64 %spec.select219.peel, 16
  %i.ah = extractelement <4 x i1> %i.ae, i64 1
  %spec.select219.1.peel = select i1 %i.ah, i64 %spec.select219.peel, i64 %i.ag ; 2 uses
  %i.ai = add nuw nsw i64 %spec.select219.1.peel, 16
  %i.aj = extractelement <4 x i1> %i.ae, i64 2
  %spec.select219.2.peel = select i1 %i.aj, i64 %spec.select219.1.peel, i64 %i.ai ; 2 uses
  %i.ak = add nuw nsw i64 %spec.select219.2.peel, 16
  %i.al = extractelement <4 x i1> %i.ae, i64 3
  %spec.select219.3.peel = select i1 %i.al, i64 %spec.select219.2.peel, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.an = load i8, ptr %i.am, align 2, !tbaa !21
  %.not198.4.peel = icmp eq i8 %i.an, 0
  %i.ao = add nuw nsw i64 %spec.select219.3.peel, 16
  %spec.select219.4.peel = select i1 %.not198.4.peel, i64 %spec.select219.3.peel, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %.not198.5.peel = icmp eq i8 %i.aq, 0
  %i.ar = add nuw nsw i64 %spec.select219.4.peel, 16
  %spec.select219.5.peel = select i1 %.not198.5.peel, i64 %spec.select219.4.peel, i64 %i.ar
  br label %.loopexit274.peel

.loopexit274.peel:                                ; preds = %bb.l, %.loopexit274.loopexit.peel
  %.5.peel = phi i64 [ %i.ac, %bb.l ], [ %spec.select219.5.peel, %.loopexit274.loopexit.peel ]
  %i.as = load i8, ptr %i.z, align 2, !tbaa !21   ; 3 uses
  %i.at = icmp ugt i8 %i.as, 31
  br i1 %i.at, label %.loopexit276, label %bb.m

bb.m:                                             ; preds = %.loopexit274.peel
  %i.au = add nuw nsw i64 %.5.peel, 8
  %narrow.peel = add nuw nsw i8 %i.as, 1
  %i.av = zext nneg i8 %narrow.peel to i64
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = add nuw nsw i64 %i.au, %i.aw
  %i.ay = zext nneg i8 %i.as to i64
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.az, 16               ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  %i.bc = load i8, ptr %i.aa, align 2, !tbaa !21
  %.not201.peel = icmp eq i8 %i.bc, 0
  %i.bd = select i1 %.not201.peel, i64 %i.ba, i64 0
  %spec.select220.peel = add nuw nsw i64 %i.bb, %i.bd ; 2 uses
  %exitcond.peel.not = icmp eq i8 %i.t, 1
  br i1 %exitcond.peel.not, label %.thread264, label %.peel.next

.peel.next:                                       ; preds = %bb.m
  %i.be = load i8, ptr %i.v, align 1, !tbaa !64
  %.not196 = icmp eq i8 %i.be, 0
  %i.bf = load i8, ptr %i.y, align 2, !tbaa !65
  %.not199 = icmp eq i8 %i.bf, 0
  br label %bb.n

bb.n:                                             ; preds = %.thread._crit_edge, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %.thread._crit_edge ] ; 5 uses
  %.2281 = phi i64 [ %spec.select220.peel, %.peel.next ], [ %spec.select220, %.thread._crit_edge ] ; 3 uses
  %i.bg = add i64 %.2281, 16
  br i1 %.not196, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %.not197 = icmp eq i8 %i.bi, 3
  br i1 %.not197, label %.loopexit274.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = add i64 %.2281, 24
  br label %.thread

.loopexit274.loopexit:                            ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %indvars.iv ; 3 uses
  %i.bl = load <4 x i8>, ptr %i.bk, align 1, !tbaa !21
  %i.bm = icmp eq <4 x i8> %i.bl, zeroinitializer ; 4 uses
  %i.bn = extractelement <4 x i1> %i.bm, i64 0
  %spec.select219.v = select i1 %i.bn, i64 24, i64 40
  %spec.select219 = add i64 %.2281, %spec.select219.v ; 2 uses
  %i.bo = add i64 %spec.select219, 16
  %i.bp = extractelement <4 x i1> %i.bm, i64 1
  %spec.select219.1 = select i1 %i.bp, i64 %spec.select219, i64 %i.bo ; 2 uses
  %i.bq = add i64 %spec.select219.1, 16
  %i.br = extractelement <4 x i1> %i.bm, i64 2
  %spec.select219.2 = select i1 %i.br, i64 %spec.select219.1, i64 %i.bq ; 2 uses
  %i.bs = add i64 %spec.select219.2, 16
  %i.bt = extractelement <4 x i1> %i.bm, i64 3
  %spec.select219.3 = select i1 %i.bt, i64 %spec.select219.2, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %.not198.4 = icmp eq i8 %i.bv, 0
  %i.bw = add i64 %spec.select219.3, 16
  %spec.select219.4 = select i1 %.not198.4, i64 %spec.select219.3, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %.not198.5 = icmp eq i8 %i.by, 0
  %i.bz = add i64 %spec.select219.4, 16
  %spec.select219.5 = select i1 %.not198.5, i64 %spec.select219.4, i64 %i.bz
  br label %.thread

.thread:                                          ; preds = %bb.p, %.loopexit274.loopexit, %bb.n
  %.5262 = phi i64 [ %i.bg, %bb.n ], [ %i.bj, %bb.p ], [ %spec.select219.5, %.loopexit274.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21  ; 3 uses
end_hunk_1
