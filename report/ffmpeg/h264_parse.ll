Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_parse?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_h264_check_intra4x4_pred_mode:bb.a
bb.g:                                             ; preds = %.preheader45.2
  %i.z = and i64 %i.x, 3842
  %.not38.not.2 = icmp eq i64 %i.z, 0
  br i1 %.not38.not.2, label %bb.h, label %.preheader45.3

bb.h:                                             ; preds = %bb.g
  store i8 %i.w, ptr %i.s, align 1, !tbaa !15
  br label %.preheader45.3

.preheader45.3:                                   ; preds = %bb.h, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = sext i8 %i.ab to i64                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr @ff_h264_check_intra4x4_pred_mode.top, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15  ; 2 uses
  %i.af = shl nuw i64 1, %i.ac                    ; 2 uses
  %i.ag = and i64 %i.af, 249
  %.not37.3 = icmp eq i64 %i.ag, 0
  br i1 %.not37.3, label %bb.i, label %bb.d

bb.i:                                             ; preds = %.preheader45.3
  %i.ah = and i64 %i.af, 3842
  %.not38.not.3 = icmp eq i64 %i.ah, 0
  br i1 %.not38.not.3, label %bb.j, label %.loopexit46

bb.j:                                             ; preds = %bb.i
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !15
  br label %.loopexit46

.loopexit46:                                      ; preds = %bb.i, %bb.j, %bb.a
  %i.ai = and i32 %3, 34952
  %.not39 = icmp eq i32 %i.ai, 34952
  br i1 %.not39, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit46
  %i.aj = and i32 %3, 32768
  %.not40 = icmp eq i32 %i.aj, 0
  br i1 %.not40, label %bb.k, label %.thread44

bb.k:                                             ; preds = %.preheader.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = sext i8 %i.al to i64                    ; 2 uses
  %i.an = getelementptr inbounds i8, ptr @ff_h264_check_intra4x4_pred_mode.left, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15  ; 2 uses
  %i.ap = shl nuw i64 1, %i.am                    ; 2 uses
  %i.aq = and i64 %i.ap, 370
  %.not41 = icmp eq i64 %i.aq, 0
  br i1 %.not41, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ar = and i64 %i.ap, 3209
  %.not42.not = icmp eq i64 %i.ar, 0
  br i1 %.not42.not, label %bb.m, label %.thread44

bb.m:                                             ; preds = %bb.l
  store i8 %i.ao, ptr %i.ak, align 1, !tbaa !15
  br label %.thread44

bb.n:                                             ; preds = %bb.u, %bb.r, %bb.o, %bb.k
  %.lcssa = phi i8 [ %i.ao, %bb.k ], [ %i.ay, %bb.o ], [ %i.bh, %bb.r ], [ %i.bq, %bb.u ]
  %i.as = sext i8 %.lcssa to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.as) #7
  br label %.loopexit

.thread44:                                        ; preds = %bb.l, %bb.m, %.preheader.preheader
  %i.at = and i32 %3, 8192
  %.not40.1 = icmp eq i32 %i.at, 0
  br i1 %.not40.1, label %bb.o, label %.thread44.1

bb.o:                                             ; preds = %.thread44
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !15
  %i.aw = sext i8 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr @ff_h264_check_intra4x4_pred_mode.left, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15  ; 2 uses
  %i.az = shl nuw i64 1, %i.aw                    ; 2 uses
  %i.ba = and i64 %i.az, 370
  %.not41.1 = icmp eq i64 %i.ba, 0
  br i1 %.not41.1, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.bb = and i64 %i.az, 3209
  %.not42.not.1 = icmp eq i64 %i.bb, 0
  br i1 %.not42.not.1, label %bb.q, label %.thread44.1

bb.q:                                             ; preds = %bb.p
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !15
  br label %.thread44.1

.thread44.1:                                      ; preds = %bb.q, %bb.p, %.thread44
  %i.bc = and i32 %3, 128
  %.not40.2 = icmp eq i32 %i.bc, 0
  br i1 %.not40.2, label %bb.r, label %.thread44.2

bb.r:                                             ; preds = %.thread44.1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = sext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr @ff_h264_check_intra4x4_pred_mode.left, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15  ; 2 uses
  %i.bi = shl nuw i64 1, %i.bf                    ; 2 uses
  %i.bj = and i64 %i.bi, 370
  %.not41.2 = icmp eq i64 %i.bj, 0
  br i1 %.not41.2, label %bb.s, label %bb.n

bb.s:                                             ; preds = %bb.r
  %i.bk = and i64 %i.bi, 3209
  %.not42.not.2 = icmp eq i64 %i.bk, 0
  br i1 %.not42.not.2, label %bb.t, label %.thread44.2

bb.t:                                             ; preds = %bb.s
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !15
  br label %.thread44.2

.thread44.2:                                      ; preds = %bb.t, %bb.s, %.thread44.1
  %i.bl = and i32 %3, 32
  %.not40.3 = icmp eq i32 %i.bl, 0
  br i1 %.not40.3, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.thread44.2
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = sext i8 %i.bn to i64                    ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr @ff_h264_check_intra4x4_pred_mode.left, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15  ; 2 uses
  %i.br = shl nuw i64 1, %i.bo                    ; 2 uses
  %i.bs = and i64 %i.br, 370
  %.not41.3 = icmp eq i64 %i.bs, 0
  br i1 %.not41.3, label %bb.v, label %bb.n

bb.v:                                             ; preds = %bb.u
  %i.bt = and i64 %i.br, 3209
  %.not42.not.3 = icmp eq i64 %i.bt, 0
  br i1 %.not42.not.3, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  store i8 %i.bq, ptr %i.bm, align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.thread44.2, %bb.v, %bb.w, %bb.n, %bb.d, %.loopexit46
  %.6 = phi i32 [ -1094995529, %bb.n ], [ -1094995529, %bb.d ], [ 0, %.loopexit46 ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %.thread44.2 ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 128) i32 @ff_h264_check_intra_pred_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %3, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.5) #7
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = and i32 %1, 32768
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i32 %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr @ff_h264_check_intra_pred_mode.top, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = sext i8 %i.e to i32
  %.not20 = icmp samesign ult i32 %3, 2
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c
  %.015 = phi i32 [ %3, %bb.c ], [ %i.f, %bb.d ]  ; 4 uses
  %i.g = and i32 %2, 32896                        ; 2 uses
  %.not21 = icmp eq i32 %i.g, 32896
  br i1 %.not21, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i32 %.015, -3
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.j = zext nneg i32 %.015 to i64
  %i.k = getelementptr inbounds nuw i8, ptr @ff_h264_check_intra_pred_mode.left, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = sext i8 %i.l to i32
  %.not22 = icmp eq i32 %4, 0
  %.not23 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not23, %.not22
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = shl i32 %2, 16
  %i.o = ashr i32 %i.n, 31
  %5 = add nsw i32 %i.o, 8
  %i.p = icmp eq i32 %.015, 4
  %i.q = select i1 %i.p, i32 2, i32 0
  %i.r = add nuw nsw i32 %5, %i.q
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.h ], [ -1094995529, %bb.e ], [ %i.r, %bb.j ], [ %.015, %bb.f ], [ %i.m, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_h264_parse_ref_count(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  store i32 %i.b, ptr %1, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !21
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %5, 3
  %i.g = select i1 %i.f, i32 15, i32 31           ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !12   ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.k = lshr i32 %i.i, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13   ; 3 uses
  %i.q = icmp slt i32 %i.i, %i.p
  %i.r = zext i1 %i.q to i32
  %spec.select.i = add i32 %i.i, %i.r             ; 5 uses
  %i.s = zext i8 %i.n to i32
  %i.t = and i32 %i.i, 7
  store i32 %spec.select.i, ptr %i.h, align 8, !tbaa !12
  %i.u = lshr exact i32 128, %i.t
  %i.v = and i32 %i.u, %i.s
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre59.pre = load i32, ptr %i.e, align 4, !tbaa !21
  %i.w = add nsw i32 %.pre59.pre, -1
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.x = lshr i32 %spec.select.i, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !15
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = and i32 %spec.select.i, 7
  %i.ad = shl i32 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp ugt i32 %i.ad, 134217727
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = lshr i32 %i.ad, 23
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add i32 %spec.select.i, %i.aj
  %..i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.ak)
  store i32 %..i, ptr %i.h, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ag
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = zext i8 %i.am to i32
  br label %get_ue_golomb.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = icmp samesign ugt i32 %i.ad, 65535      ; 2 uses
  %i.ap = lshr i32 %i.ad, 16
  %spec.select.i.i = select i1 %i.ao, i32 %i.ap, i32 %i.ad ; 3 uses
  %spec.select11.i.i = select i1 %i.ao, i32 16, i32 0 ; 2 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.aq = lshr i32 %spec.select.i.i, 8
  %i.ar = or disjoint i32 %spec.select11.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.aq
  %.1.i.i = select i1 %.not.i.i, i32 %spec.select11.i.i, i32 %i.ar
  %i.as = zext nneg i32 %.110.i.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %.1.i.i, %i.av          ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 1                ; 2 uses
  %i.ay = add nsw i32 %i.ax, -31
  %reass.sub.i = add i32 %spec.select.i, 63
  %i.az = sub i32 %reass.sub.i, %i.ax
  %.38.i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.az)
  store i32 %.38.i, ptr %i.h, align 8, !tbaa !12
  %i.ba = icmp samesign ult i32 %i.aw, 19
  %i.bb = lshr i32 %i.ad, %i.ay
  %i.bc = add nsw i32 %i.bb, -1
  %.0.i = select i1 %i.ba, i32 -1094995529, i32 %i.bc
  br label %get_ue_golomb.exit

get_ue_golomb.exit:                               ; preds = %bb.d, %bb.e
  %.1.i = phi i32 [ %i.an, %bb.d ], [ %.0.i, %bb.e ]
  %i.bd = add nsw i32 %.1.i, 1
  store i32 %i.bd, ptr %1, align 4, !tbaa !21
  %i.be = icmp eq i32 %4, 3
  br i1 %i.be, label %bb.f, label %bb.i

bb.f:                                             ; preds = %get_ue_golomb.exit
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !12  ; 4 uses
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.bh = lshr i32 %i.bf, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !15
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = and i32 %i.bf, 7
  %i.bn = shl i32 %i.bl, %i.bm                    ; 6 uses
  %i.bo = icmp ugt i32 %i.bn, 134217727
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = lshr i32 %i.bn, 23
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bf, %i.bt
  %..i55 = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bu)
  store i32 %..i55, ptr %i.h, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.bq
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15
  %i.bx = zext i8 %i.bw to i32
  br label %get_ue_golomb.exit56

bb.h:                                             ; preds = %bb.f
  %i.by = icmp samesign ugt i32 %i.bn, 65535      ; 2 uses
  %i.bz = lshr i32 %i.bn, 16
  %spec.select.i.i46 = select i1 %i.by, i32 %i.bz, i32 %i.bn ; 3 uses
  %spec.select11.i.i47 = select i1 %i.by, i32 16, i32 0 ; 2 uses
  %.not.i.i48 = icmp samesign ult i32 %spec.select.i.i46, 256 ; 2 uses
  %i.ca = lshr i32 %spec.select.i.i46, 8
  %i.cb = or disjoint i32 %spec.select11.i.i47, 8
  %.110.i.i49 = select i1 %.not.i.i48, i32 %spec.select.i.i46, i32 %i.ca
  %.1.i.i50 = select i1 %.not.i.i48, i32 %spec.select11.i.i47, i32 %i.cb
  %i.cc = zext nneg i32 %.110.i.i49 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %.1.i.i50, %i.cf        ; 2 uses
  %i.ch = shl nuw nsw i32 %i.cg, 1                ; 2 uses
  %i.ci = add nsw i32 %i.ch, -31
  %reass.sub.i51 = add i32 %i.bf, 63
  %i.cj = sub i32 %reass.sub.i51, %i.ch
  %.38.i52 = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.cj)
  store i32 %.38.i52, ptr %i.h, align 8, !tbaa !12
  %i.ck = icmp samesign ult i32 %i.cg, 19
  %i.cl = lshr i32 %i.bn, %i.ci
  %i.cm = add nsw i32 %i.cl, -1
  %.0.i53 = select i1 %i.ck, i32 -1094995529, i32 %i.cm
  br label %get_ue_golomb.exit56

get_ue_golomb.exit56:                             ; preds = %bb.g, %bb.h
  %.1.i54 = phi i32 [ %i.bx, %bb.g ], [ %.0.i53, %bb.h ] ; 2 uses
  %i.cn = add nsw i32 %.1.i54, 1
  store i32 %i.cn, ptr %i.e, align 4, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %get_ue_golomb.exit
  store i32 1, ptr %i.e, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %get_ue_golomb.exit56, %bb.i
  %.pre59 = phi i32 [ %i.w, %._crit_edge ], [ %.1.i54, %get_ue_golomb.exit56 ], [ 0, %bb.i ] ; 4 uses
  %i.co = icmp eq i32 %4, 3                       ; 2 uses
  %. = select i1 %i.co, i32 2, i32 1              ; 2 uses
  %i.cp = load i32, ptr %1, align 4, !tbaa !21
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, %i.g
  %i.cs = icmp ugt i32 %.pre59, %i.g
  %or.cond = select i1 %i.co, i1 %i.cs, i1 false
  %or.cond72 = select i1 %i.cr, i1 true, i1 %or.cond
  br i1 %or.cond72, label %._crit_edge62, label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.j
  %i.ct = icmp ugt i32 %.pre59, %i.g
  br i1 %i.ct, label %bb.k, label %.thread

bb.k:                                             ; preds = %._crit_edge61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %6, i32 noundef 48, ptr noundef nonnull @.str.9, i32 noundef %.pre59, i32 noundef %i.g) #7
  store i32 0, ptr %i.e, align 4, !tbaa !21
  br label %.thread

bb.l:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !21
  store i32 0, ptr %1, align 4, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.k, %._crit_edge61, %bb.l
  %.1 = phi i32 [ 0, %bb.l ], [ %., %._crit_edge61 ], [ %., %bb.k ]
  store i32 %.1, ptr %0, align 4, !tbaa !21
end_hunk_0
