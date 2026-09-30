Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdr_dynamic_metadata?download=true
inline.NumInlined: 158
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@av_dynamic_hdr_plus_to_t35:bb.a

bb.fu:                                            ; preds = %bb.fs
  %i.aeb = ptrtoint ptr %.sroa.155.79 to i64
  %i.aec = sub i64 %i.yt, %i.aeb
  %i.aed = icmp ugt i64 %i.aec, 3
  br i1 %i.aed, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.aee = shl i32 %.026.i.i391, %.0.i.i392
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
define noalias ptr @av_dynamic_hdr_smpte2094_app5_alloc(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
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
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 14 uses
  %or.cond.i.i = icmp ugt i32 %i.e, 2147483134    ; 2 uses
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.e ; 9 uses
  %i.f = add nuw nsw i32 %.013.i.i, 8             ; 27 uses
  %i.g = icmp eq i32 %.013.i.i, 0
  %or.cond = or i1 %or.cond.i.i, %i.g
  br i1 %or.cond, label %.thread435, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 1, !tbaa !21
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)  ; 3 uses
  %i.j = lshr i32 %i.i, 29
  %i.k = trunc nuw nsw i32 %i.j to i8
  store i8 %i.k, ptr %0, align 2, !tbaa !55
  %i.l = lshr i32 %i.i, 26
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = and i8 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !56
  %i.p = and i32 %i.i, 50331648
  %.not214 = icmp ne i32 %i.p, 0
  %i.q = icmp samesign ult i32 %i.e, 9
  %or.cond439 = select i1 %.not214, i1 true, i1 %i.q
  br i1 %or.cond439, label %.thread435, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = load i32, ptr %i.r, align 1, !tbaa !21   ; 2 uses
  %i.t = trunc i32 %i.s to i8                     ; 3 uses
  %i.u = lshr i8 %i.t, 7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.u, ptr %i.v, align 2, !tbaa !57
  %i.w = icmp samesign ult i32 %i.e, 10
  br i1 %i.w, label %.thread435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i8 %i.t, 6
  %i.y = and i8 %i.x, 1                           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !58
  %i.aa = icmp samesign ugt i32 %i.e, 15
  %i.ab = and i32 %i.s, 63
  %.not215 = icmp eq i32 %i.ab, 0
  %or.cond573 = select i1 %i.aa, i1 %.not215, i1 false
  br i1 %or.cond573, label %bb.g, label %.thread435

bb.g:                                             ; preds = %bb.f
  %.not216 = icmp sgt i8 %i.t, -1
  br i1 %.not216, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp samesign ult i32 %i.e, 32
  br i1 %i.ac, label %.thread435, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !21
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = lshr i32 %i.af, 16
  %i.ah = trunc nuw i32 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.29.0 = phi i32 [ 16, %bb.g ], [ 32, %bb.i ] ; 7 uses
  %.not217 = icmp eq i8 %i.y, 0
  br i1 %.not217, label %.thread435, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = sub nsw i32 %i.e, %.sroa.29.0
  %i.ak = icmp slt i32 %i.aj, 16
  br i1 %i.ak, label %.thread435, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = lshr exact i32 %.sroa.29.0, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !21
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = add nuw nsw i32 %.sroa.29.0, 16         ; 2 uses
  %i.as = trunc nuw i32 %i.aq to i16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.as, ptr %i.at, align 2, !tbaa !60
  %.not443 = icmp samesign ult i32 %i.ar, %i.e
  br i1 %.not443, label %bb.m, label %.thread435

bb.m:                                             ; preds = %bb.l
  %i.au = lshr exact i32 %i.ar, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !21 ; 4 uses
  %i.ay = trunc i32 %i.ax to i8                   ; 2 uses
  %i.az = lshr i8 %i.ay, 7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.az, ptr %i.ba, align 2, !tbaa !61
  %.not218 = icmp sgt i8 %i.ay, -1
  br i1 %.not218, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.mask = and i32 %i.ax, 127
  %.not232 = icmp eq i32 %.mask, 0
  %i.bb = select i1 %.not232, i32 0, i32 -1094995529
  br label %.thread435

bb.o:                                             ; preds = %bb.m
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.ax) ; 2 uses
  %i.bd = lshr i32 %i.bc, 28                      ; 3 uses
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !62
  %i.bg = icmp ugt i32 %i.bc, 1342177279
  br i1 %i.bg, label %.thread435, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = lshr i32 %i.ax, 2
  %i.bi = and i32 %i.bh, 3                        ; 2 uses
  %i.bj = add nuw nsw i32 %.sroa.29.0, 22         ; 2 uses
  %i.bk = trunc nuw nsw i32 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !63
  %.not444 = icmp samesign ugt i32 %i.e, %i.bj
  br i1 %.not444, label %bb.q, label %.thread435

bb.q:                                             ; preds = %bb.p
  %i.bm = lshr i32 %i.bj, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !21
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.br = shl i32 %i.bq, 6                        ; 2 uses
  %i.bs = lshr i32 %i.br, 31
  %i.bt = add nuw nsw i32 %.sroa.29.0, 23         ; 2 uses
  %i.bu = trunc nuw nsw i32 %i.bs to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !64
  %.not445 = icmp samesign ugt i32 %i.e, %i.bt
  br i1 %.not445, label %bb.r, label %.thread435

bb.r:                                             ; preds = %bb.q
  %i.bw = lshr i32 %i.bt, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !21
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cb = shl i32 %i.ca, 7                        ; 2 uses
  %i.cc = lshr i32 %i.cb, 31
  %i.cd = add nuw nsw i32 %.sroa.29.0, 24         ; 3 uses
  %i.ce = trunc nuw nsw i32 %i.cc to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ce, ptr %i.cf, align 2, !tbaa !65
  %i.cg = icmp eq i32 %i.bi, 3
  %invariant.op = add nsw i32 %i.e, -16           ; 18 uses
  br i1 %i.cg, label %.preheader459, label %.thread

.preheader459:                                    ; preds = %bb.r
  %i.ch = icmp samesign ugt i32 %i.cd, %invariant.op
  br i1 %i.ch, label %.thread435, label %bb.s

bb.s:                                             ; preds = %.preheader459
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cj = lshr exact i32 %i.cd, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !21
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = lshr i32 %i.cn, 16
  %i.cp = add nuw nsw i32 %.sroa.29.0, 40
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cp) ; 3 uses
  %i.cr = trunc nuw i32 %i.co to i16
  store i16 %i.cr, ptr %i.ci, align 2, !tbaa !66
  %i.cs = icmp samesign ugt i32 %i.cq, %invariant.op
  br i1 %i.cs, label %.thread435, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = lshr exact i32 %i.cq, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !21
  %i.cx = tail call i32 @llvm.bswap.i32(i32 %i.cw)
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = add nuw nsw i32 %i.cq, 16
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.cz) ; 4 uses
  %i.db = trunc nuw i32 %i.cy to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !66
  %i.dd = icmp samesign ugt i32 %i.da, %invariant.op
  br i1 %i.dd, label %.thread435, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = lshr i32 %i.da, 3
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 1, !tbaa !21
  %i.di = tail call i32 @llvm.bswap.i32(i32 %i.dh)
  %i.dj = and i32 %i.da, 7
  %i.dk = shl i32 %i.di, %i.dj
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = add nuw nsw i32 %i.da, 16
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.dm) ; 4 uses
  %i.do = trunc nuw i32 %i.dl to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !66
  %i.dq = icmp samesign ugt i32 %i.dn, %invariant.op
  br i1 %i.dq, label %.thread435, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = lshr i32 %i.dn, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !21
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = and i32 %i.dn, 7
  %i.dx = shl i32 %i.dv, %i.dw
  %i.dy = lshr i32 %i.dx, 16
  %i.dz = add nuw nsw i32 %i.dn, 16
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.dz) ; 4 uses
  %i.eb = trunc nuw i32 %i.dy to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !66
  %i.ed = icmp samesign ugt i32 %i.ea, %invariant.op
  br i1 %i.ed, label %.thread435, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = lshr i32 %i.ea, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !21
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = and i32 %i.ea, 7
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = lshr i32 %i.ek, 16
  %i.em = add nuw nsw i32 %i.ea, 16
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.em) ; 4 uses
  %i.eo = trunc nuw i32 %i.el to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !66
  %i.eq = icmp samesign ugt i32 %i.en, %invariant.op
  br i1 %i.eq, label %.thread435, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.er = lshr i32 %i.en, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 1, !tbaa !21
  %i.ev = tail call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = and i32 %i.en, 7
  %i.ex = shl i32 %i.ev, %i.ew
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = add nuw nsw i32 %i.en, 16
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.ez) ; 4 uses
  %i.fb = trunc nuw i32 %i.ey to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !66
  %i.fd = icmp samesign ugt i32 %i.fa, %invariant.op
  br i1 %i.fd, label %.thread435, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = lshr i32 %i.fa, 3
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 1, !tbaa !21
  %i.fi = tail call i32 @llvm.bswap.i32(i32 %i.fh)
  %i.fj = and i32 %i.fa, 7
  %i.fk = shl i32 %i.fi, %i.fj
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = add nuw nsw i32 %i.fa, 16
  %i.fn = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.fm) ; 4 uses
  %i.fo = trunc nuw i32 %i.fl to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !66
  %i.fq = icmp samesign ugt i32 %i.fn, %invariant.op
  br i1 %i.fq, label %.thread435, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.y
  %i.fr = lshr i32 %i.fn, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 1, !tbaa !21
  %i.fv = tail call i32 @llvm.bswap.i32(i32 %i.fu)
  %i.fw = and i32 %i.fn, 7
  %i.fx = shl i32 %i.fv, %i.fw
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = add nuw nsw i32 %i.fn, 16
  %i.ga = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.fz)
  %i.gb = trunc nuw i32 %i.fy to i16
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.r, %.thread.loopexit
  %.sroa.29.2 = phi i32 [ %i.ga, %.thread.loopexit ], [ %i.cd, %bb.r ]
  %invariant.op488 = add nsw i32 %i.e, -2         ; 2 uses
  %invariant.op489 = add nsw i32 %i.e, -6
  %invariant.op490 = add nsw i32 %i.e, -5
  %.not510 = icmp eq i32 %i.bd, 0
  br i1 %.not510, label %.thread435, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.not220 = icmp sgt i32 %i.br, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 3 uses
  %.not224 = icmp sgt i32 %i.cb, -1
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 378
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 634
  %wide.trip.count = zext nneg i32 %i.bd to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 43
end_hunk_0
