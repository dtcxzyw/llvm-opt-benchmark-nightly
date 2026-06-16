inline.NumInlined: 271
inline.NumDeleted: 53
begin_hunk_0_@strio_getline:bb.a
  store <2 x i64> %broadcast.splat, ptr %i.jt, align 16, !tbaa !10
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 1616
  store <2 x i64> %broadcast.splat, ptr %i.ju, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.jv, align 16, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 1648
  store <2 x i64> %broadcast.splat, ptr %i.jw, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.jx, align 16, !tbaa !10
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 1664
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  store <2 x i64> %broadcast.splat, ptr %i.jy, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.jz, align 16, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 1712
  store <2 x i64> %broadcast.splat, ptr %i.ka, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kb, align 16, !tbaa !10
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 1744
  store <2 x i64> %broadcast.splat, ptr %i.kc, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kd, align 16, !tbaa !10
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 1776
  store <2 x i64> %broadcast.splat, ptr %i.ke, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kf, align 16, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 1808
  store <2 x i64> %broadcast.splat, ptr %i.kg, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kh, align 16, !tbaa !10
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 1840
  store <2 x i64> %broadcast.splat, ptr %i.ki, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kj, align 16, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 1856
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 1872
  store <2 x i64> %broadcast.splat, ptr %i.kk, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kl, align 16, !tbaa !10
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 1888
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 1904
  store <2 x i64> %broadcast.splat, ptr %i.km, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kn, align 16, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 1936
  store <2 x i64> %broadcast.splat, ptr %i.ko, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kp, align 16, !tbaa !10
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 1952
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 1968
  store <2 x i64> %broadcast.splat, ptr %i.kq, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kr, align 16, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 1984
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 2000
  store <2 x i64> %broadcast.splat, ptr %i.ks, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kt, align 16, !tbaa !10
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 2032
  store <2 x i64> %broadcast.splat, ptr %i.ku, align 16, !tbaa !10
  store <2 x i64> %broadcast.splat, ptr %i.kv, align 16, !tbaa !10
  %i.kw = add i64 %i.bc, -1                       ; 3 uses
  %i.kx = add i64 %i.bc, -2
  %xtraiter = and i64 %i.kw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %vector.ph, %.lr.ph.i.prol
  %i.ky = phi i64 [ %i.ld, %.lr.ph.i.prol ], [ %i.kw, %vector.ph ] ; 2 uses
  %.0913.i.prol = phi ptr [ %i.kz, %.lr.ph.i.prol ], [ %i.fy, %vector.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %vector.ph ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0913.i.prol, i64 1 ; 2 uses
  %i.la = load i8, ptr %.0913.i.prol, align 1, !tbaa !31
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.lb
  store i64 %i.ky, ptr %i.lc, align 8, !tbaa !10
  %i.ld = add nsw i64 %i.ky, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !55

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %vector.ph
  %.unr = phi i64 [ %i.kw, %vector.ph ], [ %i.ld, %.lr.ph.i.prol ]
  %.0913.i.unr = phi ptr [ %i.fy, %vector.ph ], [ %i.kz, %.lr.ph.i.prol ]
  %i.le = icmp ult i64 %i.kx, 3
  br i1 %i.le, label %bm_init_skip.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.lf = phi i64 [ %i.lz, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.0913.i = phi ptr [ %i.lv, %.lr.ph.i ], [ %.0913.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0913.i, i64 1
  %i.lh = load i8, ptr %.0913.i, align 1, !tbaa !31
  %i.li = zext i8 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.li
  store i64 %i.lf, ptr %i.lj, align 8, !tbaa !10
  %i.lk = add nsw i64 %i.lf, -1
  %i.ll = getelementptr inbounds nuw i8, ptr %.0913.i, i64 2
  %i.lm = load i8, ptr %i.lg, align 1, !tbaa !31
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ln
  store i64 %i.lk, ptr %i.lo, align 8, !tbaa !10
  %i.lp = add nsw i64 %i.lf, -2
  %i.lq = getelementptr inbounds nuw i8, ptr %.0913.i, i64 3
  %i.lr = load i8, ptr %i.ll, align 1, !tbaa !31
  %i.ls = zext i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ls
  store i64 %i.lp, ptr %i.lt, align 8, !tbaa !10
  %i.lu = add nsw i64 %i.lf, -3
  %i.lv = getelementptr inbounds nuw i8, ptr %.0913.i, i64 4
  %i.lw = load i8, ptr %i.lq, align 1, !tbaa !31
  %i.lx = zext i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.lx
  store i64 %i.lu, ptr %i.ly, align 8, !tbaa !10
  %i.lz = add nsw i64 %i.lf, -4                   ; 2 uses
  %.not.i205.3 = icmp eq i64 %i.lz, 0
  br i1 %.not.i205.3, label %bm_init_skip.exit, label %.lr.ph.i, !llvm.loop !57

bm_init_skip.exit:                                ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ma = call fastcc i64 @bm_search(ptr noundef %i.fy, i64 noundef %i.bc, ptr noundef %i.v, i64 noundef %i.ex, ptr noundef %i.a) ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ma
  %.not174 = icmp eq i8 %i.fa, 0
  %i.mc = select i1 %.not174, i64 %i.bc, i64 0
  %i.md = getelementptr inbounds i8, ptr %i.mb, i64 %i.mc
  %i.me = icmp slt i64 %i.ma, 0
  %.4 = select i1 %i.me, ptr %.0152, ptr %i.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph231, %.lr.ph233, %.preheader, %bm_init_skip.exit, %.split.us, %bb.aq
  %.5 = phi ptr [ %.us-phi, %.split.us ], [ %.0152, %bb.aq ], [ %.4, %bm_init_skip.exit ], [ %.0152, %.preheader ], [ %.0152, %.lr.ph233 ], [ %.0152, %.lr.ph231 ] ; 3 uses
  %.3 = phi i64 [ %i.ft, %.split.us ], [ 0, %bb.aq ], [ 0, %bm_init_skip.exit ], [ 0, %.preheader ], [ 0, %.lr.ph233 ], [ 0, %.lr.ph231 ]
  %i.mf = load i64, ptr %i.k, align 8, !tbaa !24  ; 2 uses
  %i.mg = ptrtoint ptr %.5 to i64
  %i.mh = add i64 %.3, %i.ew
  %i.mi = sub i64 %i.mg, %i.mh
  %.val = load i64, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.mj = inttoptr i64 %.val to ptr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !25
  %i.mm = sub nsw i64 %i.ml, %i.mf
  %spec.select.i206 = tail call i64 @llvm.smin.i64(i64 %i.mi, i64 %i.mm) ; 2 uses
  %i.mn = icmp slt i64 %spec.select.i206, 1
  br i1 %i.mn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit
  %i.mo = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.ph) #15
  br label %strio_substr.exit

bb.av:                                            ; preds = %.loopexit
  %i.mp = tail call i64 @rb_str_subseq(i64 noundef %.val, i64 noundef %i.mf, i64 noundef %spec.select.i206) #15 ; 2 uses
  %i.mq = tail call i64 @rb_enc_associate(i64 noundef %i.mp, ptr noundef %.ph) #15 ; 0 uses
  br label %strio_substr.exit

strio_substr.exit:                                ; preds = %bb.ag, %bb.ah, %bb.av, %bb.au, %bb.ap, %bb.ao, %bb.r, %bb.q
  %.6 = phi ptr [ %.3155, %bb.ap ], [ %.5, %bb.av ], [ %.0152, %bb.r ], [ %.0152, %bb.q ], [ %.3155, %bb.ao ], [ %.5, %bb.au ], [ %.1153, %bb.ah ], [ %.1153, %bb.ag ]
  %.1151 = phi i64 [ %i.et, %bb.ap ], [ %i.mp, %bb.av ], [ %i.ay, %bb.r ], [ %i.ax, %bb.q ], [ %i.es, %bb.ao ], [ %i.mo, %bb.au ], [ %i.do, %bb.ah ], [ %i.dn, %bb.ag ]
  %i.mr = load i64, ptr %1, align 8, !tbaa !12
  %i.ms = inttoptr i64 %i.mr to ptr               ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !20
  %i.mu = and i64 %i.mt, 8192
  %.not.i209 = icmp eq i64 %i.mu, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 24 ; 2 uses
  br i1 %.not.i209, label %RSTRING_PTR.exit210, label %bb.aw

bb.aw:                                            ; preds = %strio_substr.exit
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !31
  br label %RSTRING_PTR.exit210

RSTRING_PTR.exit210:                              ; preds = %strio_substr.exit, %bb.aw
  %i.mx = phi ptr [ %i.mw, %bb.aw ], [ %i.mv, %strio_substr.exit ]
  %i.my = ptrtoint ptr %.6 to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  store i64 %i.na, ptr %i.k, align 8, !tbaa !24
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !22
  %i.nd = add nsw i64 %i.nc, 1
  store i64 %i.nd, ptr %i.nb, align 8, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.b, %bb.d, %bb.e, %RSTRING_PTR.exit210
  %.1 = phi i64 [ 4, %bb.b ], [ %.1151, %RSTRING_PTR.exit210 ], [ 4, %bb.e ], [ 4, %bb.d ], [ 4, %bb.t ]
  ret i64 %.1
}

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_buf_cat_ascii(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #9

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 -9223372036854775807, -9223372036854775808) i64 @bm_search(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 2, 0) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 1024, -9223372036854775808) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %i.a = add nsw i64 %1, -1                       ; 2 uses
  %.not = icmp sgt i64 %1, %3
  br i1 %.not, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i64 %1, 0
  br i1 %i.b, label %.preheader.us, label %.loopexit

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.critedge.us
  %.01925.us = phi i64 [ %i.m, %.critedge.us ], [ %i.a, %.preheader.lr.ph ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %.023.us = phi i64 [ %.01925.us, %.preheader.us ], [ %i.o, %bb.c ] ; 2 uses
  %.01822.us = phi i64 [ %i.a, %.preheader.us ], [ %i.p, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.023.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.01822.us
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31
  %i.g = icmp eq i8 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %.critedge.us

.critedge.us:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.01925.us
  %i.i = load i8, ptr %i.h, align 1, !tbaa !31
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add nsw i64 %i.l, %.01925.us             ; 2 uses
  %i.n = icmp slt i64 %i.m, %3
  br i1 %i.n, label %.preheader.us, label %.loopexit, !llvm.loop !58

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i64 %.023.us, -1
  %i.p = add nsw i64 %.01822.us, -1
  %i.q = icmp sgt i64 %.01822.us, 0
  br i1 %i.q, label %bb.b, label %.loopexit.loopexit, !llvm.loop !59

.loopexit.loopexit:                               ; preds = %bb.c
  %reass.sub.le = sub i64 %.01925.us, %1
  %i.r = add i64 %reass.sub.le, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.us, %.loopexit.loopexit, %.preheader.lr.ph, %bb.a
  %.020 = phi i64 [ %i.r, %.loopexit.loopexit ], [ -1, %bb.a ], [ %1, %.preheader.lr.ph ], [ -1, %.critedge.us ]
  ret i64 %.020
}

declare ptr @onigenc_get_right_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare i32 @rb_enc_codepoint_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_enc_codelen(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_enc_uint_chr(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @strio_unget_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef range(i64 1, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !12     ; 5 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.g = sub nsw i64 %i.b, %i.f                   ; 6 uses
  %i.h = icmp sgt i64 %2, %i.b
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0                     ; 2 uses
  %i.j = select i1 %i.i, i64 %i.b, i64 %i.f
  %i.k = sub nsw i64 %2, %i.j                     ; 2 uses
  tail call void @rb_str_modify_expand(i64 noundef %i.c, i64 noundef %i.k) #15
  %i.l = add nsw i64 %i.k, %i.f
  tail call void @rb_str_set_len(i64 noundef %i.c, i64 noundef %i.l) #15
  %i.m = load i64, ptr %i.d, align 8, !tbaa !20
  %i.n = and i64 %i.m, 8192
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 4 uses
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %2
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.b
  %i.t = sub nsw i64 0, %i.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @rb_str_modify_expand(i64 noundef %i.c, i64 noundef %i.g) #15
  tail call void @rb_str_set_len(i64 noundef %i.c, i64 noundef %i.b) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load i64, ptr %i.d, align 8, !tbaa !20
  %i.w = and i64 %i.v, 8192
  %.not.i51 = icmp eq i64 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %.not.i51, label %RSTRING_PTR.exit52, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  br label %RSTRING_PTR.exit52

RSTRING_PTR.exit52:                               ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %i.aa = icmp sgt i64 %i.g, %2
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %RSTRING_PTR.exit52
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.f
  %i.ac = sub nsw i64 %i.g, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %RSTRING_PTR.exit52
  %i.ad = sub nsw i64 %i.b, %2
  br label %bb.k

bb.k:                                             ; preds = %RSTRING_PTR.exit, %bb.d, %bb.j
  %.045 = phi ptr [ %i.z, %bb.j ], [ %i.q, %bb.d ], [ %i.q, %RSTRING_PTR.exit ] ; 2 uses
  %.0 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.d ], [ 0, %RSTRING_PTR.exit ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.045, i64 %.0
  %.not = icmp eq ptr %1, null
  %i.af = select i1 %.not, ptr %.045, ptr %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.af, i64 %2, i1 false)
  store i64 %.0, ptr %i.a, align 8, !tbaa !24
  ret void
}

declare i64 @rb_str_conv_enc(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @rb_lastline_set(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_enc_copy(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_syserr_fail_str(i32 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_eof_error() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @strio_write(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call i64 @rb_io_taint_check(i64 noundef %0) #15
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @strio_data_type) #15 ; 12 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %get_strio.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.76) #18
  unreachable

get_strio.exit.i:                                 ; preds = %bb.a
end_hunk_0
