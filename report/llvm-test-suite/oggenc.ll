inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@_ov_open2:bb.a
  %i.jw = load ptr, ptr %i.i, align 8
  %i.jx = call i32 %i.jw(ptr noundef nonnull %i.jv, i64 noundef %.1.lcssa45.i.i.i, i32 noundef 0) #62, !inline_history !195 ; 0 uses
  store i64 %.1.lcssa45.i.i.i, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit28.i.i.i

_seek_helper.exit28.i.i.i:                        ; preds = %bb.bc, %._crit_edge32.thread.i.i.i
  %i.jy = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 8500)
  %i.jz = icmp slt i64 %i.jy, 0
  br i1 %i.jz, label %select.unfold.i.i, label %_get_prev_page.exit.i.i

select.unfold.i.i:                                ; preds = %_seek_helper.exit28.i.i.i, %.lr.ph.i96.i.i
  %i.ka = load ptr, ptr %i.at, align 8
  %i.kb = getelementptr inbounds nuw [56 x i8], ptr %i.ka, i64 %indvars.iv.i.i
  call void @vorbis_info_clear(ptr noundef %i.kb)
  %i.kc = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %indvars.iv.i.i ; 6 uses
  %.not.i99.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i99.i.i, label %vorbis_comment_clear.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %select.unfold.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8            ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph.i101.i.i, label %._crit_edge.i100.i.i

.lr.ph.i101.i.i:                                  ; preds = %.preheader.i.i.i, %bb.be
  %i.kh = phi i32 [ %i.kl, %bb.be ], [ %i.kf, %.preheader.i.i.i ]
  %.023.i.i.i = phi i64 [ %i.km, %bb.be ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.ki = load ptr, ptr %i.kd, align 8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %.023.i.i.i
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not22.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i101.i.i
  call void @free(ptr noundef nonnull %i.kk) #62
  %.pre.i102.i.i = load i32, ptr %i.ke, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i101.i.i
  %i.kl = phi i32 [ %i.kh, %.lr.ph.i101.i.i ], [ %.pre.i102.i.i, %bb.bd ] ; 2 uses
  %i.km = add nuw nsw i64 %.023.i.i.i, 1          ; 2 uses
  %i.kn = sext i32 %i.kl to i64
  %i.ko = icmp slt i64 %i.km, %i.kn
  br i1 %i.ko, label %.lr.ph.i101.i.i, label %._crit_edge.i100.i.i, !llvm.loop !11

._crit_edge.i100.i.i:                             ; preds = %bb.be, %.preheader.i.i.i
  %i.kp = load ptr, ptr %i.kd, align 8            ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not19.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i100.i.i
  call void @free(ptr noundef nonnull %i.kp) #62
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge.i100.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not20.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @free(ptr noundef nonnull %i.kr) #62
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8            ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not21.i.i.i, label %vorbis_comment_clear.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.kt) #62
  br label %vorbis_comment_clear.exit.i.i

vorbis_comment_clear.exit.i.i:                    ; preds = %bb.bj, %bb.bi, %select.unfold.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kd, i8 0, i64 32, i1 false)
  br label %bb.bm

_get_prev_page.exit.i.i:                          ; preds = %_seek_helper.exit28.i.i.i
  %i.ku = load ptr, ptr %1, align 8
  %i.kv = getelementptr i8, ptr %i.ku, i64 6
  %i.kw = load i64, ptr %i.kv, align 1            ; 2 uses
  %.not84.i.i = icmp eq i64 %i.kw, -1
  br i1 %.not84.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_get_prev_page.exit.i.i
  %i.kx = load ptr, ptr %i.bq, align 8
  %.idx200.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx200.i.i ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = sub nsw i64 %i.kw, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %i.la, ptr %i.lb, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %_get_prev_page.exit.i.i
  store i64 %.1.lcssa45.i.i.i, ptr %i.g, align 8
  br label %_seek_helper.exit94.i.i

bb.bm:                                            ; preds = %bb.bk, %vorbis_comment_clear.exit.i.i
  %i.lc = load i32, ptr %i.av, align 8
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next.i.i, %i.ld
  br i1 %i.le, label %bb.l, label %_open_seekable2.exit, !llvm.loop !196

_open_seekable2.exit.thread:                      ; preds = %.lr.ph.i.i, %bb.j, %bb.i, %_seek_helper.exit28.i.i
  %.0.i.ph = phi i32 [ -128, %bb.j ], [ -129, %_seek_helper.exit28.i.i ], [ -128, %bb.i ], [ -128, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  br label %bb.bn

_open_seekable2.exit:                             ; preds = %bb.bm, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #62
  %i.lf = call i32 @ov_raw_seek(ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  %.not10 = icmp eq i32 %i.lf, 0
  br i1 %.not10, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_open_seekable2.exit.thread, %_open_seekable2.exit
  %.0.i13 = phi i32 [ %.0.i.ph, %_open_seekable2.exit.thread ], [ %i.lf, %_open_seekable2.exit ]
  store ptr null, ptr %0, align 8
  %i.lg = call i32 @ov_clear(ptr noundef nonnull %0) ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.b
  store i32 3, ptr %i.a, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %_open_seekable2.exit, %bb.bn, %bb.a, %bb.bo
  %.0 = phi i32 [ 0, %bb.bo ], [ -131, %bb.a ], [ %.0.i13, %bb.bn ], [ 0, %_open_seekable2.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -138, 1) i32 @ov_open(ptr noundef %0, ptr noundef initializes((0, 944)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_open1(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull byval(%struct.ov_callbacks) align 8 @__const.ov_test.callbacks) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %ov_open_callbacks.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @_ov_open2(ptr noundef %1)
  br label %ov_open_callbacks.exit

ov_open_callbacks.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @_fseek64_wrap(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -131, 1) i32 @ov_halfrate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ov_halfrate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ov_halfrate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @vorbis_dsp_clear(ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.k = tail call i32 @vorbis_block_clear(ptr noundef nonnull %i.j) ; 0 uses
  store i32 2, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %ov_halfrate.exit

.lr.ph:                                           ; preds = %bb.e
  %2 = icmp ne i32 %1, 0                          ; 2 uses
  %3 = zext i1 %2 to i32                          ; 2 uses
  br i1 %2, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp slt i64 %i.r, 65
  br i1 %i.s, label %vorbis_synthesis_halfrate.exit, label %.lr.ph37

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5808
  store i32 %3, ptr %i.x, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.l, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph.split.us, label %ov_halfrate.exit, !llvm.loop !197

.lr.ph.split:                                     ; preds = %.lr.ph37
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv.next25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp slt i64 %i.af, 65
  br i1 %i.ag, label %vorbis_synthesis_halfrate.exit, label %.lr.ph37, !llvm.loop !197

vorbis_synthesis_halfrate.exit:                   ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  %.lcssa = phi i32 [ %i.m, %.lr.ph.split.preheader ], [ %i.az, %.lr.ph.split ]
  %i.ah = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %ov_halfrate.exit, label %bb.f

bb.f:                                             ; preds = %vorbis_synthesis_halfrate.exit
  %i.ai = load i32, ptr %i.f, align 8
  %i.aj = icmp sgt i32 %i.ai, 2
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @vorbis_dsp_clear(ptr noundef nonnull %i.ak), !inline_history !198
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.am = tail call i32 @vorbis_block_clear(ptr noundef nonnull %i.al), !inline_history !198 ; 0 uses
  store i32 2, ptr %i.f, align 8
  %.pre = load i32, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = phi i32 [ %.pre, %bb.g ], [ %.lcssa, %bb.f ]
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph20, label %ov_halfrate.exit

.lr.ph20:                                         ; preds = %bb.h, %.lr.ph20
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph20 ], [ 0, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %indvars.iv27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5808
  store i32 0, ptr %i.at, align 8
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.au = load i32, ptr %i.l, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next28, %i.av
  br i1 %i.aw, label %.lr.ph20, label %ov_halfrate.exit, !llvm.loop !197

.lr.ph37:                                         ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %i.ax = phi ptr [ %i.ae, %.lr.ph.split ], [ %i.q, %.lr.ph.split.preheader ]
  %indvars.iv2436 = phi i64 [ %indvars.iv.next25, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 5808
  store i32 %3, ptr %i.ay, align 8
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2436, 1 ; 3 uses
  %i.az = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next25, %i.ba
  br i1 %i.bb, label %.lr.ph.split, label %ov_halfrate.exit, !llvm.loop !197

ov_halfrate.exit:                                 ; preds = %.lr.ph.split.us, %.lr.ph37, %.lr.ph20, %bb.e, %bb.h, %vorbis_synthesis_halfrate.exit, %bb.b, %bb.a
  %.011 = phi i32 [ -131, %bb.a ], [ -131, %bb.h ], [ -131, %bb.b ], [ 0, %.lr.ph37 ], [ -131, %vorbis_synthesis_halfrate.exit ], [ 0, %bb.e ], [ -131, %.lr.ph20 ], [ 0, %.lr.ph.split.us ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_synthesis_halfrate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp slt i64 %i.c, 65
  %i.e = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5808
  store i32 %i.f, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ov_halfrate_p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5808
  %i.g = load i32, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -131, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @vorbis_synthesis_halfrate_p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5808
  %i.d = load i32, ptr %i.c, align 8
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -134, 1) i32 @ov_test_callbacks(ptr noundef %0, ptr nofree noundef captures(address_is_null) initializes((0, 944)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly byval(%struct.ov_callbacks) align 8 captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_open1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%struct.ov_callbacks) align 8 %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -134, 1) i32 @ov_test(ptr noundef %0, ptr nofree noundef captures(address_is_null) initializes((0, 944)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 -134, 1) i32 @_ov_open1(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef nonnull byval(%struct.ov_callbacks) align 8 @__const.ov_test.callbacks)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -138, 1) i32 @ov_test_open(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @_ov_open2(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -131, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ov_streams(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ov_seekable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ov_bitrate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %ov_bitrate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %.not = icmp slt i32 %1, %i.e
  br i1 %.not, label %bb.c, label %ov_bitrate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = icmp ne i32 %1, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp sgt i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %ov_bitrate.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %ov_bitrate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %ov_bitrate.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %ov_bitrate.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i64 %i.s, %i.p
  %i.v = lshr i64 %i.u, 1
  br label %ov_bitrate.exit

bb.i:                                             ; preds = %bb.c
  %i.w = icmp slt i32 %1, 0
  br i1 %i.w, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.x = icmp sgt i32 %i.e, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi59 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %wide.load = load <2 x i64>, ptr %i.ad, align 8
  %wide.load60 = load <2 x i64>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load61 = load <2 x i64>, ptr %i.af, align 8
  %wide.load62 = load <2 x i64>, ptr %i.ag, align 8
  %i.ah = sub nsw <2 x i64> %wide.load, %wide.load61
  %i.ai = sub nsw <2 x i64> %wide.load60, %wide.load62
  %i.aj = shl nsw <2 x i64> %i.ah, splat (i64 3)
  %i.ak = shl nsw <2 x i64> %i.ai, splat (i64 3)
  %i.al = add <2 x i64> %i.aj, %vec.phi           ; 2 uses
  %i.am = add <2 x i64> %i.ak, %vec.phi59         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
end_hunk_0
begin_hunk_1_@decode_packed_entry_number:bb.a
  %i.l = add nsw i64 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp sge i64 %i.l, %i.n               ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = shl nsw i64 %i.k, 3
  %i.p = sext i32 %i.j to i64
  %i.q = add nsw i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.n, 3
  %i.s = icmp sgt i64 %i.q, %i.r
  br i1 %i.s, label %oggpack_look.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 6 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = lshr i32 %i.w, %.fr
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = icmp sgt i32 %i.j, 8
  br i1 %i.z, label %bb.d, label %oggpack_look.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 8, %.fr
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = or i64 %i.af, %i.y                      ; 2 uses
  %i.ah = icmp samesign ugt i32 %i.j, 16
  br i1 %i.ah, label %bb.e, label %oggpack_look.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = sub nsw i32 16, %.fr
  %i.am = shl i32 %i.ak, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = or i64 %i.ag, %i.an                     ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.j, 24
  br i1 %i.ap, label %bb.f, label %oggpack_look.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 24, %.fr
  %i.au = shl i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.ao, %i.av                     ; 2 uses
  %i.ax = icmp samesign ult i32 %i.j, 33
  %.not33.i = icmp eq i32 %.fr, 0
  %or.cond.i = or i1 %.not33.i, %i.ax
  br i1 %or.cond.i, label %oggpack_look.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 32, %.fr
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = or i64 %i.aw, %i.bd
  br label %oggpack_look.exit

oggpack_look.exit:                                ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.029.i = phi i64 [ %i.be, %bb.g ], [ %i.y, %bb.c ], [ %i.aw, %bb.f ], [ %i.ao, %bb.e ], [ %i.ag, %bb.d ]
  %i.bf = and i64 %.029.i, %i.g                   ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.h, label %oggpack_look.exit.thread

bb.h:                                             ; preds = %oggpack_look.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 3 uses
  %.not = icmp slt i32 %i.bk, 0
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.bm = lshr i64 %i.bl, 15
  %i.bn = and i64 %i.bm, 32767
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = and i64 %i.bl, 32767
  %i.br = sub nsw i64 %i.bp, %i.bq
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = add nsw i64 %i.bl, -1                   ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %.fr, %i.bx                 ; 2 uses
  %i.bz = sdiv i32 %i.by, 8
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.u, i64 %i.ca
  store ptr %i.cb, ptr %i.t, align 8
  br label %.sink.split

oggpack_look.exit.thread:                         ; preds = %bb.b, %oggpack_look.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread, %oggpack_look.exit.thread
  %.156 = phi i64 [ %i.br, %.thread ], [ %i.cd, %oggpack_look.exit.thread ] ; 2 uses
  %.151 = phi i64 [ %i.bn, %.thread ], [ 0, %oggpack_look.exit.thread ] ; 3 uses
  %i.ce = sext i32 %i.b to i64                    ; 3 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr @mask, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add nsw i32 %.fr, %i.b                  ; 5 uses
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = shl nsw i64 %i.k, 3
  %i.cj = sext i32 %i.ch to i64
  %i.ck = add nsw i64 %i.ci, %i.cj
  %i.cl = shl nsw i64 %i.n, 3
  %i.cm = icmp sgt i64 %i.ck, %i.cl
  br i1 %i.cm, label %oggpack_look.exit68, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8            ; 5 uses
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = lshr i32 %i.cq, %.fr
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = icmp sgt i32 %i.ch, 8
  br i1 %i.ct, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 8, %.fr
  %i.cy = shl i32 %i.cw, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = or i64 %i.cz, %i.cs                     ; 2 uses
  %i.db = icmp samesign ugt i32 %i.ch, 16
  br i1 %i.db, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = zext i8 %i.dd to i32
  %i.df = sub nsw i32 16, %.fr
  %i.dg = shl i32 %i.de, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = or i64 %i.da, %i.dh                     ; 2 uses
  %i.dj = icmp samesign ugt i32 %i.ch, 24
  br i1 %i.dj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i32
  %i.dn = sub nsw i32 24, %.fr
  %i.do = shl i32 %i.dm, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = or i64 %i.di, %i.dp                     ; 2 uses
  %i.dr = icmp samesign ult i32 %i.ch, 33
  %.not33.i66 = icmp eq i32 %.fr, 0
  %or.cond.i67 = or i1 %.not33.i66, %i.dr
  br i1 %or.cond.i67, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = sub nsw i32 32, %.fr
  %i.dw = shl i32 %i.du, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = or i64 %i.dq, %i.dx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.029.i64 = phi i64 [ %i.dy, %bb.p ], [ %i.cs, %bb.l ], [ %i.dq, %bb.o ], [ %i.di, %bb.n ], [ %i.da, %bb.m ]
  %i.dz = and i64 %.029.i64, %i.cg
  br label %oggpack_look.exit68

oggpack_look.exit68:                              ; preds = %bb.k, %bb.q
  %.0.i65 = phi i64 [ %i.dz, %bb.q ], [ -1, %bb.k ] ; 2 uses
  %i.ea = icmp slt i64 %.0.i65, 0                 ; 2 uses
  %i.eb = icmp sgt i32 %i.b, 1
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %oggpack_look.exit68
  %i.ed = shl nsw i64 %i.k, 3                     ; 2 uses
  %i.ee = shl nsw i64 %i.n, 3                     ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.eg = sub nsw i32 8, %.fr                     ; 3 uses
  %i.eh = sub nsw i32 16, %.fr                    ; 3 uses
  %i.ei = sub nsw i32 24, %.fr                    ; 3 uses
  %.not33.i72 = icmp eq i32 %.fr, 0
  %i.ej = sub nsw i32 32, %.fr                    ; 2 uses
  br i1 %.not33.i72, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %oggpack_look.exit74.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %oggpack_look.exit74.us ], [ %i.ce, %.lr.ph ] ; 5 uses
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @mask, i64 %indvars.iv.next117
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = add nsw i64 %i.ed, %indvars.iv.next117
  %i.en = icmp sgt i64 %i.em, %i.ee
  %or.cond = select i1 %.not.i, i1 %i.en, i1 false
  br i1 %or.cond, label %oggpack_look.exit74.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us
  %i.eo = load ptr, ptr %i.ef, align 8            ; 4 uses
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i64                    ; 2 uses
  %i.er = icmp samesign ugt i64 %indvars.iv116, 9
  br i1 %i.er, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.et = load i8, ptr %i.es, align 1
  %2 = zext i8 %i.et to i32
  %3 = shl nuw nsw i32 %2, %i.eg
  %4 = zext nneg i32 %3 to i64
  %i.eu = or disjoint i64 %4, %i.eq               ; 2 uses
  %i.ev = icmp samesign ugt i64 %indvars.iv116, 17
  br i1 %i.ev, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.ex = load i8, ptr %i.ew, align 1
  %5 = zext i8 %i.ex to i32
  %6 = shl nuw nsw i32 %5, %i.eh
  %7 = zext nneg i32 %6 to i64
  %i.ey = or disjoint i64 %i.eu, %7               ; 2 uses
  %i.ez = icmp samesign ugt i64 %indvars.iv116, 25
  br i1 %i.ez, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, %i.ei
  %i.fe = sext i32 %i.fd to i64
  %i.ff = or i64 %i.ey, %i.fe
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.029.i70.us = phi i64 [ %i.eu, %bb.s ], [ %i.eq, %bb.r ], [ %i.ff, %bb.u ], [ %i.ey, %bb.t ]
  %i.fg = and i64 %.029.i70.us, %i.el
  br label %oggpack_look.exit74.us

oggpack_look.exit74.us:                           ; preds = %.lr.ph.split.us, %bb.v
  %.0.i71.us = phi i64 [ %i.fg, %bb.v ], [ -1, %.lr.ph.split.us ] ; 2 uses
  %i.fh = icmp slt i64 %.0.i71.us, 0              ; 2 uses
  %i.fi = icmp samesign ugt i64 %indvars.iv116, 2
  %i.fj = and i1 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !474

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i, label %.lr.ph.split.split.preheader, label %.lr.ph.split.split.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.fk = sext i32 %.fr to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.fl = load ptr, ptr %i.ef, align 8            ; 5 uses
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = lshr i32 %i.fn, %.fr
  %i.fp = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fu = zext nneg i32 %i.b to i64
  %i.fv = sext i32 %.fr to i64
  br label %bb.w

bb.w:                                             ; preds = %oggpack_look.exit74.us88, %.lr.ph.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %oggpack_look.exit74.us88 ], [ %i.fu, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, -1 ; 4 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr @mask, i64 %indvars.iv.next114
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = add nsw i64 %indvars.iv.next114, %i.fv  ; 4 uses
  %i.fz = icmp sgt i64 %i.fy, 8
  br i1 %i.fz, label %bb.x, label %oggpack_look.exit74.us88

bb.x:                                             ; preds = %bb.w
  %i.ga = load i8, ptr %i.fq, align 1
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl i32 %i.gb, %i.eg
  %i.gd = sext i32 %i.gc to i64
  %i.ge = or i64 %i.gd, %i.fp                     ; 2 uses
  %i.gf = icmp samesign ugt i64 %i.fy, 16
  br i1 %i.gf, label %bb.y, label %oggpack_look.exit74.us88

bb.y:                                             ; preds = %bb.x
  %i.gg = load i8, ptr %i.fr, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = shl i32 %i.gh, %i.eh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = or i64 %i.ge, %i.gj                     ; 2 uses
  %i.gl = icmp samesign ugt i64 %i.fy, 24
  br i1 %i.gl, label %bb.z, label %oggpack_look.exit74.us88

bb.z:                                             ; preds = %bb.y
  %i.gm = load i8, ptr %i.fs, align 1
  %i.gn = zext i8 %i.gm to i32
  %i.go = shl i32 %i.gn, %i.ei
  %i.gp = sext i32 %i.go to i64
  %i.gq = or i64 %i.gk, %i.gp                     ; 2 uses
  %i.gr = icmp samesign ult i64 %i.fy, 33
  br i1 %i.gr, label %oggpack_look.exit74.us88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gs = load i8, ptr %i.ft, align 1
  %i.gt = zext i8 %i.gs to i32
  %i.gu = shl i32 %i.gt, %i.ej
  %i.gv = sext i32 %i.gu to i64
  %i.gw = or i64 %i.gq, %i.gv
  br label %oggpack_look.exit74.us88

oggpack_look.exit74.us88:                         ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.029.i70.us87 = phi i64 [ %i.gw, %bb.aa ], [ %i.fp, %bb.w ], [ %i.gq, %bb.z ], [ %i.gk, %bb.y ], [ %i.ge, %bb.x ]
  %i.gx = and i64 %.029.i70.us87, %i.fx           ; 2 uses
  %i.gy = icmp slt i64 %i.gx, 0                   ; 2 uses
  %i.gz = icmp samesign ugt i64 %indvars.iv113, 2
  %i.ha = and i1 %i.gy, %i.gz
  br i1 %i.ha, label %bb.w, label %._crit_edge.loopexit102, !llvm.loop !474

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %oggpack_look.exit74
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %oggpack_look.exit74 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @mask, i64 %indvars.iv.next
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = add nsw i64 %indvars.iv.next, %i.fk     ; 5 uses
  %i.he = add nsw i64 %i.ed, %i.hd
  %i.hf = icmp sgt i64 %i.he, %i.ee
  br i1 %i.hf, label %oggpack_look.exit74, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.split
  %i.hg = load ptr, ptr %i.ef, align 8            ; 5 uses
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = zext i8 %i.hh to i32
  %i.hj = lshr i32 %i.hi, %.fr
  %i.hk = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.hl = icmp sgt i64 %i.hd, 8
  br i1 %i.hl, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i32
  %i.hp = shl i32 %i.ho, %i.eg
  %i.hq = sext i32 %i.hp to i64
  %i.hr = or i64 %i.hq, %i.hk                     ; 2 uses
  %i.hs = icmp samesign ugt i64 %i.hd, 16
  br i1 %i.hs, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl i32 %i.hv, %i.eh
  %i.hx = sext i32 %i.hw to i64
  %i.hy = or i64 %i.hr, %i.hx                     ; 2 uses
  %i.hz = icmp samesign ugt i64 %i.hd, 24
  br i1 %i.hz, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i32
  %i.id = shl i32 %i.ic, %i.ei
  %i.ie = sext i32 %i.id to i64
  %i.if = or i64 %i.hy, %i.ie                     ; 2 uses
  %i.ig = icmp samesign ult i64 %i.hd, 33
  br i1 %i.ig, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl i32 %i.ij, %i.ej
  %i.il = sext i32 %i.ik to i64
  %i.im = or i64 %i.if, %i.il
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.029.i70 = phi i64 [ %i.im, %bb.af ], [ %i.hk, %bb.ab ], [ %i.if, %bb.ae ], [ %i.hy, %bb.ad ], [ %i.hr, %bb.ac ]
  %i.in = and i64 %.029.i70, %i.hc
  br label %oggpack_look.exit74

oggpack_look.exit74:                              ; preds = %.lr.ph.split.split, %bb.ag
  %.0.i71 = phi i64 [ %i.in, %bb.ag ], [ -1, %.lr.ph.split.split ] ; 2 uses
  %i.io = icmp slt i64 %.0.i71, 0                 ; 2 uses
  %i.ip = icmp samesign ugt i64 %indvars.iv, 2
  %i.iq = and i1 %i.io, %i.ip
  br i1 %i.iq, label %.lr.ph.split.split, label %._crit_edge.loopexit103, !llvm.loop !474

._crit_edge.loopexit:                             ; preds = %oggpack_look.exit74.us
  %i.ir = trunc nuw nsw i64 %indvars.iv.next117 to i32
  br i1 %i.fh, label %bb.al, label %bb.ah

._crit_edge.loopexit102:                          ; preds = %oggpack_look.exit74.us88
  %i.is = trunc nuw nsw i64 %indvars.iv.next114 to i32
  br i1 %i.gy, label %bb.al, label %bb.ah

._crit_edge.loopexit103:                          ; preds = %oggpack_look.exit74
  %i.it = trunc nuw nsw i64 %indvars.iv.next to i32
  br i1 %i.io, label %bb.al, label %bb.ah

._crit_edge:                                      ; preds = %oggpack_look.exit68
  br i1 %i.ea, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.loopexit, %._crit_edge.loopexit103, %._crit_edge.loopexit102, %._crit_edge
  %.049.lcssa129 = phi i32 [ %i.is, %._crit_edge.loopexit102 ], [ %i.b, %._crit_edge ], [ %i.it, %._crit_edge.loopexit103 ], [ %i.ir, %._crit_edge.loopexit ] ; 2 uses
  %.058.lcssa128 = phi i64 [ %i.gx, %._crit_edge.loopexit102 ], [ %.0.i65, %._crit_edge ], [ %.0.i71, %._crit_edge.loopexit103 ], [ %.0.i71.us, %._crit_edge.loopexit ]
  %i.iu = trunc i64 %.058.lcssa128 to i32
  %rev10.i = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.iu)
  %i.iv = sub nsw i64 %.156, %.151                ; 2 uses
  %i.iw = icmp sgt i64 %i.iv, 1
  br i1 %i.iw, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.ah
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph99, %bb.ai
  %i.iz = phi i64 [ %i.iv, %.lr.ph99 ], [ %i.jj, %bb.ai ]
  %.25297 = phi i64 [ %.151, %.lr.ph99 ], [ %i.jg, %bb.ai ] ; 2 uses
  %.25796 = phi i64 [ %.156, %.lr.ph99 ], [ %i.ji, %bb.ai ]
  %i.ja = lshr i64 %i.iz, 1                       ; 3 uses
  %i.jb = getelementptr [4 x i8], ptr %i.iy, i64 %.25297
  %i.jc = getelementptr [4 x i8], ptr %i.jb, i64 %i.ja
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = icmp ugt i32 %i.jd, %rev10.i            ; 2 uses
  %i.jf = select i1 %i.je, i64 0, i64 %i.ja
  %i.jg = add nuw nsw i64 %i.jf, %.25297          ; 3 uses
  %i.jh = select i1 %i.je, i64 %i.ja, i64 0
  %i.ji = sub nsw i64 %.25796, %i.jh              ; 2 uses
  %i.jj = sub nsw i64 %i.ji, %i.jg                ; 2 uses
end_hunk_1
