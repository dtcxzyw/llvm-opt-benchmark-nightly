Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12dec?download=true
inline.NumInlined: 187
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_chunks:bb.a

bb.ld:                                            ; preds = %bb.lc
  %i.bik = getelementptr i8, ptr %i.big, i64 -8
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !56
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 500
  store i32 %spec.select, ptr %i.bim, align 4, !tbaa !217
  %i.bin = call i32 @ff_update_duplicate_context(ptr noundef nonnull %i.bih, ptr noundef nonnull %i.e) #11 ; 2 uses
  %i.bio = icmp slt i32 %i.bin, 0
  br i1 %i.bio, label %.thread, label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bih, i64 4384
  %or.cond.i400 = icmp ugt i32 %i.fp, 268435455
  %i.biq = shl nuw nsw i32 %i.fp, 3
  %i.bir = select i1 %or.cond.i400, i32 -8, i32 %i.biq ; 2 uses
  %or.cond.i.i401 = icmp ult i32 %i.bir, 2147483135 ; 2 uses
  %i.bis = icmp ne ptr %i.fm, null
  %or.cond3.i.i402 = and i1 %i.bis, %or.cond.i.i401 ; 2 uses
  %.014.i.i403 = select i1 %or.cond.i.i401, ptr %i.fm, ptr null
  %.013.i.i404 = select i1 %or.cond3.i.i402, i32 %i.bir, i32 0 ; 2 uses
  store ptr %.014.i.i403, ptr %i.bip, align 16, !tbaa !93
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bih, i64 4396
  store i32 %.013.i.i404, ptr %i.bit, align 4, !tbaa !94
  %i.biu = add nuw nsw i32 %.013.i.i404, 8
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bih, i64 4400
  store i32 %i.biu, ptr %i.biv, align 16, !tbaa !95
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bih, i64 4392
  store i32 0, ptr %i.biw, align 8, !tbaa !96
  br i1 %or.cond3.i.i402, label %bb.lf, label %.thread

bb.lf:                                            ; preds = %bb.le
  %i.bix = load i32, ptr %i.bn, align 4, !tbaa !86
  %i.biy = add nsw i32 %i.bix, 1
  store i32 %i.biy, ptr %i.bn, align 4, !tbaa !86
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lb, %bb.lf
  %i.biz = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  store ptr %i.biz, ptr %i.b, align 8, !tbaa !101
  br label %slice_end.exit

bb.lh:                                            ; preds = %bb.la, %bb.kz
  %i.bja = call fastcc i32 @mpeg_decode_slice(ptr noundef nonnull %i.e, i32 noundef %spec.select, ptr noundef %i.b, i32 noundef %i.fp) ; 2 uses
  %i.bjb = icmp slt i32 %i.bja, 0
  br i1 %i.bjb, label %bb.li, label %bb.lm

bb.li:                                            ; preds = %bb.lh
  %i.bjc = load i32, ptr %i.n, align 8, !tbaa !88
  %i.bjd = and i32 %i.bjc, 8
  %.not308 = icmp eq i32 %i.bjd, 0
  br i1 %.not308, label %bb.lj, label %.thread

bb.lj:                                            ; preds = %bb.li
  %i.bje = load i32, ptr %i.cp, align 16, !tbaa !218 ; 2 uses
  %i.bjf = icmp sgt i32 %i.bje, -1
  br i1 %i.bjf, label %bb.lk, label %slice_end.exit

bb.lk:                                            ; preds = %bb.lj
  %i.bjg = load i32, ptr %i.cq, align 4, !tbaa !219 ; 2 uses
  %i.bjh = icmp sgt i32 %i.bjg, -1
  br i1 %i.bjh, label %bb.ll, label %slice_end.exit

bb.ll:                                            ; preds = %bb.lk
  %i.bji = load i32, ptr %i.cr, align 4, !tbaa !220
  %i.bjj = load i32, ptr %i.cs, align 8, !tbaa !221
  call void @ff_er_add_slice(ptr noundef nonnull %i.co, i32 noundef %i.bje, i32 noundef %i.bjg, i32 noundef %i.bji, i32 noundef %i.bjj, i32 noundef 14) #11
  br label %slice_end.exit

bb.lm:                                            ; preds = %bb.lh
  %i.bjk = load i32, ptr %i.cp, align 16, !tbaa !218
  %i.bjl = load i32, ptr %i.cq, align 4, !tbaa !219
  %i.bjm = load i32, ptr %i.cr, align 4, !tbaa !220
  %i.bjn = add nsw i32 %i.bjm, -1
  %i.bjo = load i32, ptr %i.cs, align 8, !tbaa !221
  call void @ff_er_add_slice(ptr noundef nonnull %i.co, i32 noundef %i.bjk, i32 noundef %i.bjl, i32 noundef %i.bjn, i32 noundef %i.bjo, i32 noundef 112) #11
  br label %slice_end.exit

slice_end.exit:                                   ; preds = %bb.dw, %.thread437, %bb.ku, %bb.lg, %bb.lk, %bb.ll, %bb.lm, %bb.kn, %bb.kp, %bb.kr, %bb.lj, %bb.ks, %.thread442, %bb.ki, %bb.at, %bb.aw, %bb.aq, %mpeg1_decode_sequence.exit, %bb.ap, %bb.cy, %mpeg1_decode_picture.exit, %bb.jk, %bb.jj, %bb.jy, %bb.da, %bb.dh, %bb.ep, %check_marker.exit.i348, %bb.dg, %bb.dk, %bb.dl, %load_matrix.exit27.i, %.split31.us.i30.i, %bb.ee, %bb.ef, %mpeg_decode_picture_coding_extension.exit.thread, %bb.gh, %bb.gi, %switch.early.test.i, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.hc, %bb.hd, %bb.hg, %bb.hj, %bb.hl, %bb.hm, %bb.ho, %bb.hp, %bb.hs, %.critedge.i.i, %bb.ia, %.critedge12.i.i, %bb.ii, %.loopexit.i.i, %bb.im, %bb.in, %bb.io, %bb.ip, %bb.iv, %bb.iz, %bb.jd, %.critedge245.sink.split.i.i
  %.1251 = phi i32 [ %.0250500, %bb.jd ], [ %.0250500, %.critedge245.sink.split.i.i ], [ %.0250500, %bb.jy ], [ 0, %bb.ap ], [ 0, %mpeg1_decode_sequence.exit ], [ %.0250500, %bb.aq ], [ %.0250500, %bb.at ], [ %.0250500, %bb.aw ], [ 256, %mpeg1_decode_picture.exit ], [ %.0250500, %bb.cy ], [ %.0250500, %bb.jk ], [ 256, %mpeg_decode_picture_coding_extension.exit.thread ], [ 0, %bb.jj ], [ %.0250500, %bb.da ], [ %.0250500, %bb.dh ], [ %.0250500, %bb.ep ], [ 0, %check_marker.exit.i348 ], [ 0, %bb.dg ], [ %.0250500, %bb.dk ], [ %.0250500, %bb.dl ], [ %.0250500, %load_matrix.exit27.i ], [ 257, %bb.lg ], [ %.0250500, %.split31.us.i30.i ], [ %.0250500, %bb.ee ], [ %.0250500, %bb.ef ], [ %.0250500, %bb.gh ], [ %.0250500, %bb.gi ], [ %.0250500, %switch.early.test.i ], [ %.0250500, %bb.gq ], [ %.0250500, %bb.gr ], [ %.0250500, %bb.gs ], [ %.0250500, %bb.gt ], [ %.0250500, %bb.gu ], [ %.0250500, %bb.hc ], [ %.0250500, %bb.hd ], [ %.0250500, %bb.hg ], [ %.0250500, %bb.hj ], [ %.0250500, %bb.hl ], [ %.0250500, %bb.hm ], [ %.0250500, %bb.ho ], [ %.0250500, %bb.hp ], [ %.0250500, %bb.hs ], [ %.0250500, %.critedge.i.i ], [ %.0250500, %bb.ia ], [ %.0250500, %.critedge12.i.i ], [ %.0250500, %bb.ii ], [ %.0250500, %.loopexit.i.i ], [ %.0250500, %bb.im ], [ %.0250500, %bb.in ], [ %.0250500, %bb.io ], [ %.0250500, %bb.ip ], [ %.0250500, %bb.iv ], [ %.0250500, %bb.iz ], [ 257, %bb.ki ], [ 257, %.thread442 ], [ 257, %bb.ks ], [ 257, %bb.lj ], [ 257, %bb.kr ], [ 257, %bb.kp ], [ 257, %bb.kn ], [ 257, %bb.ku ], [ 257, %.thread437 ], [ 257, %bb.lm ], [ 257, %bb.ll ], [ 257, %bb.lk ], [ %.0250500, %bb.dw ]
  %.3248 = phi i32 [ %.0245501, %bb.jd ], [ %.0245501, %.critedge245.sink.split.i.i ], [ %.0245501, %bb.jy ], [ %.0245501, %bb.ap ], [ %.0245501, %mpeg1_decode_sequence.exit ], [ %.0245501, %bb.aq ], [ %.0245501, %bb.at ], [ %.0245501, %bb.aw ], [ %.0245501, %mpeg1_decode_picture.exit ], [ %.0245501, %bb.cy ], [ %.0245501, %bb.jk ], [ %.0245501, %mpeg_decode_picture_coding_extension.exit.thread ], [ %.0245501, %bb.jj ], [ %.0245501, %bb.da ], [ %.0245501, %bb.dh ], [ %.0245501, %bb.ep ], [ %.0245501, %check_marker.exit.i348 ], [ %.0245501, %bb.dg ], [ %.0245501, %bb.dk ], [ %.0245501, %bb.dl ], [ %.0245501, %load_matrix.exit27.i ], [ %.1246, %bb.lg ], [ %.0245501, %.split31.us.i30.i ], [ %.0245501, %bb.ee ], [ %.0245501, %bb.ef ], [ %.0245501, %bb.gh ], [ %.0245501, %bb.gi ], [ %.0245501, %switch.early.test.i ], [ %.0245501, %bb.gq ], [ %.0245501, %bb.gr ], [ %.0245501, %bb.gs ], [ %.0245501, %bb.gt ], [ %.0245501, %bb.gu ], [ %.0245501, %bb.hc ], [ %.0245501, %bb.hd ], [ %.0245501, %bb.hg ], [ %.0245501, %bb.hj ], [ %.0245501, %bb.hl ], [ %.0245501, %bb.hm ], [ %.0245501, %bb.ho ], [ %.0245501, %bb.hp ], [ %.0245501, %bb.hs ], [ %.0245501, %.critedge.i.i ], [ %.0245501, %bb.ia ], [ %.0245501, %.critedge12.i.i ], [ %.0245501, %bb.ii ], [ %.0245501, %.loopexit.i.i ], [ %.0245501, %bb.im ], [ %.0245501, %bb.in ], [ %.0245501, %bb.io ], [ %.0245501, %bb.ip ], [ %.0245501, %bb.iv ], [ %.0245501, %bb.iz ], [ 1, %bb.ki ], [ %.0245501, %.thread442 ], [ %.0245501, %bb.ks ], [ %.1246, %bb.lj ], [ %.0245501, %bb.kr ], [ 1, %bb.kp ], [ 1, %bb.kn ], [ %.0245501, %bb.ku ], [ 1, %.thread437 ], [ %.1246, %bb.lm ], [ %.1246, %bb.ll ], [ %.1246, %bb.lk ], [ %.0245501, %bb.dw ] ; 2 uses
  %.1243 = phi i32 [ %.0242502, %bb.jd ], [ %.0242502, %.critedge245.sink.split.i.i ], [ %.0242502, %bb.jy ], [ %.0242502, %bb.ap ], [ %.0242502, %mpeg1_decode_sequence.exit ], [ %.0242502, %bb.aq ], [ 1, %bb.at ], [ 1, %bb.aw ], [ 1, %mpeg1_decode_picture.exit ], [ 1, %bb.cy ], [ %.0242502, %bb.jk ], [ %.0242502, %mpeg_decode_picture_coding_extension.exit.thread ], [ %.0242502, %bb.jj ], [ %.0242502, %bb.da ], [ %.0242502, %bb.dh ], [ %.0242502, %bb.ep ], [ %.0242502, %check_marker.exit.i348 ], [ %.0242502, %bb.dg ], [ %.0242502, %bb.dk ], [ %.0242502, %bb.dl ], [ %.0242502, %load_matrix.exit27.i ], [ %.0242502, %bb.lg ], [ %.0242502, %.split31.us.i30.i ], [ %.0242502, %bb.ee ], [ %.0242502, %bb.ef ], [ %.0242502, %bb.gh ], [ %.0242502, %bb.gi ], [ %.0242502, %switch.early.test.i ], [ %.0242502, %bb.gq ], [ %.0242502, %bb.gr ], [ %.0242502, %bb.gs ], [ %.0242502, %bb.gt ], [ %.0242502, %bb.gu ], [ %.0242502, %bb.hc ], [ %.0242502, %bb.hd ], [ %.0242502, %bb.hg ], [ %.0242502, %bb.hj ], [ %.0242502, %bb.hl ], [ %.0242502, %bb.hm ], [ %.0242502, %bb.ho ], [ %.0242502, %bb.hp ], [ %.0242502, %bb.hs ], [ %.0242502, %.critedge.i.i ], [ %.0242502, %bb.ia ], [ %.0242502, %.critedge12.i.i ], [ %.0242502, %bb.ii ], [ %.0242502, %.loopexit.i.i ], [ %.0242502, %bb.im ], [ %.0242502, %bb.in ], [ %.0242502, %bb.io ], [ %.0242502, %bb.ip ], [ %.0242502, %bb.iv ], [ %.0242502, %bb.iz ], [ %.0242502, %bb.ki ], [ %.0242502, %.thread442 ], [ %.0242502, %bb.ks ], [ %.0242502, %bb.lj ], [ %.0242502, %bb.kr ], [ %.0242502, %bb.kp ], [ %.0242502, %bb.kn ], [ %.0242502, %bb.ku ], [ %.0242502, %.thread437 ], [ %.0242502, %bb.lm ], [ %.0242502, %bb.ll ], [ %.0242502, %bb.lk ], [ %.0242502, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 -1, ptr %i.c, align 4, !tbaa !51
  %i.bjp = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.bjq = call ptr @avpriv_find_start_code(ptr noundef %i.bjp, ptr noundef %i.g, ptr noundef nonnull %i.c) #11 ; 4 uses
  store ptr %i.bjq, ptr %i.b, align 8, !tbaa !101
  %i.bjr = load i32, ptr %i.c, align 4, !tbaa !51 ; 2 uses
  %i.bjs = icmp ugt i32 %i.bjr, 511
  br i1 %i.bjs, label %._crit_edge, label %bb.r

.thread:                                          ; preds = %bb.ej, %bb.ep, %bb.cz, %bb.dh, %bb.jk, %bb.jg, %bb.aq, %bb.cy, %bb.ku, %bb.ld, %bb.le, %bb.li, %bb.kw, %bb.q, %bb.o, %bb.p, %bb.ay, %mpeg_decode_postinit.exit, %bb.h, %bb.l, %bb.ky, %bb.kf, %bb.kd
  %.10.ph = phi i32 [ -1094995529, %bb.p ], [ %i.fk, %bb.q ], [ %i.ea, %bb.h ], [ %.0108.i, %mpeg_decode_postinit.exit ], [ -1094995529, %bb.ay ], [ -1094995529, %bb.ky ], [ -1094995529, %bb.kf ], [ -1094995529, %bb.kd ], [ %i.ev, %bb.o ], [ %i.eo, %bb.l ], [ -1094995529, %bb.ej ], [ -1094995529, %bb.cz ], [ -1094995529, %bb.dh ], [ -1094995529, %bb.ep ], [ -1094995529, %bb.jg ], [ -1094995529, %bb.aq ], [ -1094995529, %bb.jk ], [ -1094995529, %bb.cy ], [ -1094995529, %bb.ku ], [ %i.bin, %bb.ld ], [ %i.bhs, %bb.kw ], [ %i.bja, %bb.li ], [ -1094995529, %bb.le ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.10.ph
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @av_timecode_make_mpeg_tc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_mpv_common_end(ptr noundef) local_unnamed_addr #3

declare i32 @ff_mpv_common_init(ptr noundef) local_unnamed_addr #3

declare i32 @ff_get_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_find_start_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @mpeg_field_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !119
  %i.g = and i32 %i.f, 32768
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.i = load i32, ptr %i.h, align 4, !tbaa !222
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = load i32, ptr %i.j, align 8, !tbaa !118
  %i.l = mul nsw i32 %i.k, %i.i
  %i.m = sdiv i32 %i.l, 48
  %i.n = icmp sgt i32 %i.m, %2
  br i1 %i.n, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3884
  %i.p = load i32, ptr %i.o, align 4, !tbaa !77
  %.not145 = icmp eq i32 %i.p, 0
  br i1 %.not145, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3816 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.t = tail call i32 @ff_mpv_frame_start(ptr noundef nonnull %0, ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.w = load i32, ptr %i.v, align 8, !tbaa !76   ; 3 uses
  %.not148 = icmp eq i32 %i.w, 3
  br i1 %.not148, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i32 %i.w, 1
  %i.y = select i1 %i.x, i32 16, i32 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !103
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 276 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !226
  %i.ae = or i32 %i.ad, %i.y
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !226
  %i.af = icmp eq i32 %i.w, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !108 ; 3 uses
  br i1 %i.af, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.ai = shl nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 16, !tbaa !108
  %i.al = shl nsw <2 x i64> %i.ak, splat (i64 1)
  store <2 x i64> %i.al, ptr %i.aj, align 16, !tbaa !108
  br label %.loopexit

.split.us.preheader:                              ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !101
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ah
  store ptr %i.ao, ptr %i.am, align 16, !tbaa !101
  %i.ap = shl nsw i64 %i.ah, 1
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %3 = load i64, ptr %i.aq, align 16, !tbaa !108  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !101
  %4 = getelementptr inbounds i8, ptr %i.as, i64 %3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %4, ptr %i.at, align 8, !tbaa !101
  %5 = shl nsw i64 %3, 1
  store i64 %5, ptr %i.aq, align 16, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !108 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %7 = load ptr, ptr %6, align 16, !tbaa !101
  %i.aw = getelementptr inbounds i8, ptr %7, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.aw, ptr %i.ax, align 16, !tbaa !101
  %8 = shl nsw i64 %i.av, 1
  store i64 %8, ptr %i.au, align 8, !tbaa !108
  br label %.loopexit

.loopexit:                                        ; preds = %.split.preheader, %.split.us.preheader, %bb.f
  tail call void @ff_mpeg_er_frame_start(ptr noundef nonnull %0) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !103
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !227
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3848
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !111
  %.not149 = icmp eq i32 %i.bd, 0
  br i1 %.not149, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3796
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !74
  %.not150 = icmp eq i32 %i.bf, 0
  br i1 %.not150, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3828
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !112
  %.not152 = icmp eq i32 %i.bh, 0
  %. = select i1 %.not152, i32 2, i32 4
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3868
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75
  %.not151 = icmp eq i32 %i.bj, 0
  br i1 %.not151, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ %., %bb.i ], [ 1, %bb.j ]
  store i32 %.sink, ptr %i.bb, align 8, !tbaa !227
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %.loopexit
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.bl = call i32 @ff_frame_new_side_data(ptr noundef %i.bk, ptr noundef nonnull %i.ba, i32 noundef 0, i64 noundef 24, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !229 ; 2 uses
  %.not153 = icmp eq ptr %i.bn, null
  br i1 %.not153, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bp, ptr noundef nonnull align 16 dereferenceable(24) %i.bq, i64 24, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6000 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !117
  %.not154 = icmp eq ptr %i.bs, null
  br i1 %.not154, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.bu = load ptr, ptr %i.ay, align 16, !tbaa !103
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bw = call i32 @ff_frame_new_side_data_from_buf(ptr noundef %i.bt, ptr noundef %i.bv, i32 noundef 1, ptr noundef nonnull %i.br) #11 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5996 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !115
  %.not155 = icmp eq i32 %i.bz, 0
  br i1 %.not155, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.ay, align 16, !tbaa !103
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.cc = call ptr @av_stereo3d_create_side_data(ptr noundef %i.cb) #11 ; 2 uses
  %.not156.not = icmp eq ptr %i.cc, null
  br i1 %.not156.not, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5992
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !116
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !231
  store i32 0, ptr %i.by, align 4, !tbaa !115
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !113
  %.not157 = icmp eq i32 %i.cg, 0
  br i1 %.not157, label %.critedge.thread164, label %bb.t

.critedge.thread164:                              ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit169

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.ci = load ptr, ptr %i.ay, align 16, !tbaa !103
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  %i.ck = call i32 @ff_frame_new_side_data(ptr noundef %i.ch, ptr noundef %i.cj, i32 noundef 7, i64 noundef 1, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !229 ; 2 uses
  %.not158 = icmp eq ptr %i.cm, null
  br i1 %.not158, label %.critedge.thread167, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 6012
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !92
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !56
  br label %.critedge.thread167

.critedge.thread167:                              ; preds = %bb.u, %bb.v
  store i32 0, ptr %i.cf, align 16, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit169

.critedge.thread:                                 ; preds = %bb.q, %bb.e, %bb.k, %bb.o
  %.4.ph = phi i32 [ %i.bw, %bb.o ], [ %i.bl, %bb.k ], [ %i.t, %bb.e ], [ -12, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ah

.critedge:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ah

bb.w:                                             ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !103
  %.not146 = icmp eq ptr %i.ct, null
  br i1 %.not146, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef nonnull @.str.60) #11
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !102 ; 2 uses
  %.not147 = icmp eq ptr %i.cv, null
  br i1 %.not147, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !106
  %i.cy = tail call i32 %i.cx(ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef nonnull @.str.61) #11
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.da = tail call i32 @ff_mpv_alloc_dummy_frames(ptr noundef nonnull %0) #11 ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.ah, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.dc = load ptr, ptr %i.cs, align 16, !tbaa !103
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !61 ; 9 uses
  %i.de = load i32, ptr %i.q, align 8, !tbaa !76
  %i.df = icmp eq i32 %i.de, 2
  br i1 %i.df, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !101
  store ptr %i.dg, ptr %i.cr, align 16, !tbaa !101
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !101
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !101
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.dl, ptr %i.dm, align 16, !tbaa !101
  br label %.loopexit169

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.do = load ptr, ptr %i.dd, align 8, !tbaa !101
  %i.dp = load i32, ptr %i.dn, align 8, !tbaa !51
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 %i.dq
  store ptr %i.dr, ptr %i.cr, align 16, !tbaa !101
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101
end_hunk_0
