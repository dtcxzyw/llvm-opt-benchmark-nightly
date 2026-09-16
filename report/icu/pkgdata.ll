Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/pkgdata?download=true
inline.NumInlined: 60
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a
  %.str.12..str.13.13 = select i1 %.not106.13, ptr @.str.13, ptr @.str.12
  %spec.select.13 = select i1 %.not106.13, ptr @.str.11, ptr %i.fc
  %i.fd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.fb, ptr noundef nonnull %.str.12..str.13.13, ptr noundef nonnull %spec.select.13, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 4480)) #17 ; 0 uses
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ff = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 632), align 8, !tbaa !40
  %i.fg = sext i8 %i.ff to i32
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 600), align 8, !tbaa !41 ; 2 uses
  %.not106.14 = icmp eq ptr %i.fh, null           ; 2 uses
  %.str.12..str.13.14 = select i1 %.not106.14, ptr @.str.13, ptr @.str.12
  %spec.select.14 = select i1 %.not106.14, ptr @.str.11, ptr %i.fh
  %i.fi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.fg, ptr noundef nonnull %.str.12..str.13.14, ptr noundef nonnull %spec.select.14, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 4800)) #17 ; 0 uses
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 672), align 16, !tbaa !40
  %i.fl = sext i8 %i.fk to i32
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 640), align 16, !tbaa !41 ; 2 uses
  %.not106.15 = icmp eq ptr %i.fm, null           ; 2 uses
  %.str.12..str.13.15 = select i1 %.not106.15, ptr @.str.13, ptr @.str.12
  %spec.select.15 = select i1 %.not106.15, ptr @.str.11, ptr %i.fm
  %i.fn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fj, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.fl, ptr noundef nonnull %.str.12..str.13.15, ptr noundef nonnull %spec.select.15, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 5120)) #17 ; 0 uses
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 712), align 8, !tbaa !40
  %i.fq = sext i8 %i.fp to i32
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 680), align 8, !tbaa !41 ; 2 uses
  %.not106.16 = icmp eq ptr %i.fr, null           ; 2 uses
  %.str.12..str.13.16 = select i1 %.not106.16, ptr @.str.13, ptr @.str.12
  %spec.select.16 = select i1 %.not106.16, ptr @.str.11, ptr %i.fr
  %i.fs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.fq, ptr noundef nonnull %.str.12..str.13.16, ptr noundef nonnull %spec.select.16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 5440)) #17 ; 0 uses
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 752), align 16, !tbaa !40
  %i.fv = sext i8 %i.fu to i32
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 720), align 16, !tbaa !41 ; 2 uses
  %.not106.17 = icmp eq ptr %i.fw, null           ; 2 uses
  %.str.12..str.13.17 = select i1 %.not106.17, ptr @.str.13, ptr @.str.12
  %spec.select.17 = select i1 %.not106.17, ptr @.str.11, ptr %i.fw
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ft, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.fv, ptr noundef nonnull %.str.12..str.13.17, ptr noundef nonnull %spec.select.17, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 5760)) #17 ; 0 uses
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 792), align 8, !tbaa !40
  %i.ga = sext i8 %i.fz to i32
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 760), align 8, !tbaa !41 ; 2 uses
  %.not106.18 = icmp eq ptr %i.gb, null           ; 2 uses
  %.str.12..str.13.18 = select i1 %.not106.18, ptr @.str.13, ptr @.str.12
  %spec.select.18 = select i1 %.not106.18, ptr @.str.11, ptr %i.gb
  %i.gc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.ga, ptr noundef nonnull %.str.12..str.13.18, ptr noundef nonnull %spec.select.18, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 6080)) #17 ; 0 uses
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ge = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 832), align 16, !tbaa !40
  %i.gf = sext i8 %i.ge to i32
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !41 ; 2 uses
  %.not106.19 = icmp eq ptr %i.gg, null           ; 2 uses
  %.str.12..str.13.19 = select i1 %.not106.19, ptr @.str.13, ptr @.str.12
  %spec.select.19 = select i1 %.not106.19, ptr @.str.11, ptr %i.gg
  %i.gh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gd, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.gf, ptr noundef nonnull %.str.12..str.13.19, ptr noundef nonnull %spec.select.19, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 6400)) #17 ; 0 uses
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 872), align 8, !tbaa !40
  %i.gk = sext i8 %i.gj to i32
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 840), align 8, !tbaa !41 ; 2 uses
  %.not106.20 = icmp eq ptr %i.gl, null           ; 2 uses
  %.str.12..str.13.20 = select i1 %.not106.20, ptr @.str.13, ptr @.str.12
  %spec.select.20 = select i1 %.not106.20, ptr @.str.11, ptr %i.gl
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.gk, ptr noundef nonnull %.str.12..str.13.20, ptr noundef nonnull %spec.select.20, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 6720)) #17 ; 0 uses
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.go = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 912), align 16, !tbaa !40
  %i.gp = sext i8 %i.go to i32
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 880), align 16, !tbaa !41 ; 2 uses
  %.not106.21 = icmp eq ptr %i.gq, null           ; 2 uses
  %.str.12..str.13.21 = select i1 %.not106.21, ptr @.str.13, ptr @.str.12
  %spec.select.21 = select i1 %.not106.21, ptr @.str.11, ptr %i.gq
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gn, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %i.gp, ptr noundef nonnull %.str.12..str.13.21, ptr noundef nonnull %spec.select.21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12options_help, i64 7040)) #17 ; 0 uses
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite103 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 19, i64 1, ptr %i.gs) #19 ; 0 uses
  %i.gt = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.46) #17 ; 0 uses
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite105 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 11, i64 1, ptr %i.gv) #19 ; 0 uses
  %.pre309 = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre309, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.47) #17 ; 0 uses
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.48) #17 ; 0 uses
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ha = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gz, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.49) #17 ; 0 uses
  %.pre310 = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre310, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.50) #17 ; 0 uses
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.51) #17 ; 0 uses
  %.pre311 = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre311, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.52) #17 ; 0 uses
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.53) #17 ; 0 uses
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.53) #17 ; 0 uses
  %.pre312 = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre312, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.54) #17 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 88), align 8, !tbaa !37
  %i.hn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 594), align 2, !tbaa !38
  %.not73 = icmp eq i8 %i.hn, 0
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 568), align 8 ; 13 uses
  %i.hp = select i1 %.not73, ptr null, ptr %i.ho  ; 3 uses
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 8), align 8, !tbaa !37 ; 9 uses
  %i.hr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hq) #18
  %i.hs = shl i64 %i.hr, 32
  %sext = add i64 %i.hs, 8589934592
  %i.ht = ashr exact i64 %sext, 32
  %i.hu = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ht) #20 ; 6 uses
  %i.hv = load i8, ptr %i.hq, align 1, !tbaa !14  ; 3 uses
  %.not74 = icmp eq i8 %i.hv, 0
  br i1 %.not74, label %.loopexit215, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hw = sext i8 %i.hv to i32
  %i.hx = tail call i32 @isalpha(i32 noundef %i.hw) #18
  %.not75 = icmp eq i32 %i.hx, 0
  %spec.select107 = select i1 %.not75, i8 95, i8 %i.hv
  store i8 %spec.select107, ptr %i.hu, align 1, !tbaa !14
  %.0240 = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 2 uses
  %.051241 = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  %i.hy = load i8, ptr %.0240, align 1, !tbaa !14 ; 2 uses
  %.not76242 = icmp eq i8 %i.hy, 0
  br i1 %.not76242, label %.loopexit215, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %i.hz = phi i8 [ %i.ic, %.lr.ph ], [ %i.hy, %bb.t ] ; 2 uses
  %.051244 = phi ptr [ %.051, %.lr.ph ], [ %.051241, %bb.t ] ; 2 uses
  %.0243 = phi ptr [ %.0, %.lr.ph ], [ %.0240, %bb.t ]
  %i.ia = sext i8 %i.hz to i32
  %i.ib = tail call i32 @isalnum(i32 noundef %i.ia) #18
  %.not100 = icmp eq i32 %i.ib, 0
  %spec.select108 = select i1 %.not100, i8 95, i8 %i.hz
  store i8 %spec.select108, ptr %.051244, align 1, !tbaa !14
  %.0 = getelementptr inbounds nuw i8, ptr %.0243, i64 1 ; 2 uses
  %.051 = getelementptr inbounds nuw i8, ptr %.051244, i64 1 ; 2 uses
  %i.ic = load i8, ptr %.0, align 1, !tbaa !14    ; 2 uses
  %.not76 = icmp eq i8 %i.ic, 0
  br i1 %.not76, label %.loopexit215, label %.lr.ph, !llvm.loop !24

.loopexit215:                                     ; preds = %.lr.ph, %bb.t, %bb.s
  %.1 = phi ptr [ %i.hu, %bb.s ], [ %.051241, %bb.t ], [ %.051, %.lr.ph ]
  store i8 0, ptr %.1, align 1, !tbaa !14
  %i.id = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 674), align 2, !tbaa !38
  %.not77 = icmp eq i8 %i.id, 0
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 648), align 8
  %spec.select205 = select i1 %.not77, ptr %i.hq, ptr %i.ie
  %i.if = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 794), align 2, !tbaa !38
  %.not79 = icmp eq i8 %i.if, 0
  br i1 %.not79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit215
  %i.ig = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite80 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 63, i64 1, ptr %i.ig) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.loopexit215, %bb.u
  %i.ih = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 234), align 2, !tbaa !38 ; 5 uses
  %i.ii = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 74), align 2, !tbaa !38
  %.not81 = icmp eq i8 %i.ii, 0
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 48), align 16 ; 4 uses
  %spec.select206 = select i1 %.not81, ptr null, ptr %i.ij ; 2 uses
  %i.ik = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 274), align 2, !tbaa !38
  %.not82 = icmp eq i8 %i.ik, 0
  %i.il = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 314), align 2
  %.not83 = icmp eq i8 %i.il, 0
  %i.im = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 288), align 16
  %spec.select207 = select i1 %.not83, ptr null, ptr %i.im
  %.sroa.66.0 = select i1 %.not82, ptr %spec.select207, ptr @.str.20 ; 2 uses
  %i.in = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 354), align 2, !tbaa !38
  %.not84 = icmp eq i8 %i.in, 0
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 328), align 8
  %spec.select208 = select i1 %.not84, ptr @.str.21, ptr %i.io ; 2 uses
  %i.ip = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 394), align 2, !tbaa !38 ; 2 uses
  %i.iq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 434), align 2, !tbaa !38
  %.not85 = icmp eq i8 %i.iq, 0
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 408), align 8
  %.sroa.38138.0 = select i1 %.not85, ptr %spec.select208, ptr %i.ir ; 5 uses
  %i.is = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 474), align 2, !tbaa !38
  %.not86 = icmp eq i8 %i.is, 0
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448), align 16 ; 13 uses
  %.sroa.70.0 = select i1 %.not86, ptr null, ptr %i.it ; 7 uses
  %i.iu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 514), align 2, !tbaa !38
  %.not87 = icmp eq i8 %i.iu, 0
  %i.iv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8
  %.sroa.45.0 = select i1 %.not87, ptr @.str.21, ptr %i.iv ; 8 uses
  %i.iw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 554), align 2, !tbaa !38
  %.not88 = icmp eq i8 %i.iw, 0
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 528), align 16
  %.sroa.29.0 = select i1 %.not88, ptr %i.hu, ptr %i.ix ; 3 uses
  %i.iy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 754), align 2, !tbaa !38
  %.not89 = icmp eq i8 %i.iy, 0                   ; 2 uses
  %i.iz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 914), align 2, !tbaa !38
  %.not90 = icmp eq i8 %i.iz, 0
  br i1 %.not90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ja = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite91 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 48, i64 1, ptr %i.ja) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 874), align 2, !tbaa !38 ; 2 uses
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 848), align 16 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !43
  %i.jd = icmp sgt i32 %i.ad, 1
  br i1 %i.jd, label %.lr.ph247.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x
  %.not92406 = icmp eq i8 %i.jb, 0
  %spec.select209407 = select i1 %.not92406, ptr null, ptr %i.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #16
  br label %.loopexit214

.lr.ph247.preheader:                              ; preds = %bb.x
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %indvars.iv = phi i64 [ 1, %.lr.ph247.preheader ], [ %indvars.iv.next, %.lr.ph247 ] ; 2 uses
  %.sroa.0.0245 = phi ptr [ null, %.lr.ph247.preheader ], [ %i.jh, %.lr.ph247 ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !11
  %i.jg = call ptr @uprv_strdup_78(ptr noundef %i.jf)
  %i.jh = call ptr @pkg_appendToList(ptr noundef %.sroa.0.0245, ptr noundef nonnull %i.ab, ptr noundef %i.jg) ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph247, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph247
  %.not92 = icmp eq i8 %i.jb, 0
  %spec.select209 = select i1 %.not92, ptr null, ptr %i.jc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #16
  store ptr null, ptr %i.y, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #16
  store ptr null, ptr %i.z, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #16
  %.not126.i = icmp eq ptr %i.jh, null
  br i1 %.not126.i, label %.loopexit214, label %.lr.ph130.i.preheader

.lr.ph130.i.preheader:                            ; preds = %._crit_edge
  %.not81.i = icmp eq i8 %i.ih, 0
  br label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %._crit_edge.i110
  %.sroa.10.0 = phi ptr [ %.sroa.10.3, %._crit_edge.i110 ], [ null, %.lr.ph130.i.preheader ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.14.3, %._crit_edge.i110 ], [ null, %.lr.ph130.i.preheader ] ; 2 uses
  %.072128.i = phi ptr [ %.072.i, %._crit_edge.i110 ], [ %i.jh, %.lr.ph130.i.preheader ] ; 7 uses
  %.0127.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i110 ], [ 0, %.lr.ph130.i.preheader ] ; 2 uses
  br i1 %.not81.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph130.i
  %i.ji = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.jj = load ptr, ptr %.072128.i, align 8, !tbaa !45
  %i.jk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ji, ptr noundef nonnull @.str.149, ptr noundef %i.jj) #16 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph130.i
  %i.jl = load ptr, ptr %.072128.i, align 8, !tbaa !45
  %i.jm = call ptr @T_FileStream_open(ptr noundef %i.jl, ptr noundef nonnull @.str.104) ; 4 uses
  %.not82.i = icmp eq ptr %i.jm, null
  br i1 %.not82.i, label %bb.ar, label %.preheader96.i

.preheader96.i:                                   ; preds = %bb.z
  %i.jn = call ptr @T_FileStream_readLine(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.aa, i32 noundef 16384)
  %.not83123.i = icmp eq ptr %i.jn, null
  br i1 %.not83123.i, label %._crit_edge.i110, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.preheader96.i, %.backedge.i
  %.sroa.10.1 = phi ptr [ %.sroa.10.2, %.backedge.i ], [ %.sroa.10.0, %.preheader96.i ] ; 3 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.2, %.backedge.i ], [ %.sroa.14.0, %.preheader96.i ] ; 3 uses
  %.1124.i = phi i32 [ %i.jo, %.backedge.i ], [ %.0127.i, %.preheader96.i ]
  %i.jo = add nsw i32 %.1124.i, 1                 ; 5 uses
  %i.jp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #18
  %i.jq = icmp ugt i64 %i.jp, 16300
  br i1 %i.jq, label %bb.aa, label %.preheader95.i

bb.aa:                                            ; preds = %.lr.ph.i109
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.js = load ptr, ptr %.072128.i, align 8, !tbaa !45
  %i.jt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jr, ptr noundef nonnull @.str.151, ptr noundef %i.js, i32 noundef %i.jo, i32 noundef 16300) #17 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

.preheader95.i:                                   ; preds = %.lr.ph.i109, %.preheader95.i
  %.070.i = phi ptr [ %i.jx, %.preheader95.i ], [ %i.aa, %.lr.ph.i109 ] ; 5 uses
  %i.ju = load i8, ptr %.070.i, align 1, !tbaa !14 ; 3 uses
  %i.jv = sext i8 %i.ju to i32
  %i.jw = call i32 @isspace(i32 noundef %i.jv) #18
  %.not84.i = icmp eq i32 %i.jw, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %.070.i, i64 1
  br i1 %.not84.i, label %.preheader94.i, label %.preheader95.i, !llvm.loop !26

.preheader94.i:                                   ; preds = %.preheader95.i, %bb.ac
  %i.jy = phi i8 [ %.pr.i, %bb.ac ], [ %i.ju, %.preheader95.i ]
  %.068.i = phi ptr [ %i.jz, %bb.ac ], [ %.070.i, %.preheader95.i ] ; 2 uses
  switch i8 %i.jy, label %bb.ac [
    i8 0, label %.loopexit.i
    i8 13, label %bb.ab
    i8 10, label %bb.ab
  ]

bb.ab:                                            ; preds = %.preheader94.i, %.preheader94.i
  store i8 0, ptr %.068.i, align 1, !tbaa !14
  %.pre.i = load i8, ptr %.070.i, align 1, !tbaa !14
  br label %.loopexit.i

bb.ac:                                            ; preds = %.preheader94.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.jz, align 1, !tbaa !14
  br label %.preheader94.i, !llvm.loop !27

.loopexit.i:                                      ; preds = %.preheader94.i, %bb.ab
  %i.ka = phi i8 [ %.pre.i, %bb.ab ], [ %i.ju, %.preheader94.i ]
  switch i8 %i.ka, label %.preheader93.i [
    i8 0, label %.backedge.i
    i8 35, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %bb.aq, %.preheader93.i, %.loopexit.i, %.loopexit.i
  %.sroa.10.2 = phi ptr [ %.sroa.10.1, %.loopexit.i ], [ %.sroa.10.1, %.loopexit.i ], [ %i.lz, %bb.aq ], [ %.sroa.10.4, %.preheader93.i ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %.loopexit.i ], [ %.sroa.14.1, %.loopexit.i ], [ %i.la, %bb.aq ], [ %.sroa.14.4, %.preheader93.i ] ; 2 uses
  %i.kb = call ptr @T_FileStream_readLine(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.aa, i32 noundef 16384)
  %.not83.i = icmp eq ptr %i.kb, null
  br i1 %.not83.i, label %._crit_edge.i110, label %.lr.ph.i109, !llvm.loop !28

.preheader93.i:                                   ; preds = %.loopexit.i, %bb.aq
  %.sroa.10.4 = phi ptr [ %i.lz, %bb.aq ], [ %.sroa.10.1, %.loopexit.i ] ; 2 uses
  %.sroa.14.4 = phi ptr [ %i.la, %bb.aq ], [ %.sroa.14.1, %.loopexit.i ] ; 2 uses
  %.171122.i = phi ptr [ %.069.i, %bb.aq ], [ %.070.i, %.loopexit.i ] ; 2 uses
  %i.kc = load i8, ptr %.171122.i, align 1, !tbaa !14 ; 2 uses
  %.not87.i = icmp eq i8 %i.kc, 0
  br i1 %.not87.i, label %.backedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader93.i, %bb.ad
  %i.kd = phi i8 [ %.pr92.i, %bb.ad ], [ %i.kc, %.preheader93.i ]
  %.2.i = phi ptr [ %i.ke, %bb.ad ], [ %.171122.i, %.preheader93.i ] ; 5 uses
  switch i8 %i.kd, label %bb.aj [
    i8 32, label %bb.ad
    i8 34, label %bb.ae
  ]

bb.ad:                                            ; preds = %.preheader.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pr92.i = load i8, ptr %i.ke, align 1, !tbaa !14
  br label %.preheader.i, !llvm.loop !29

bb.ae:                                            ; preds = %.preheader.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %i.kg = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.kf, i32 noundef 34) #18 ; 3 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.kj = load ptr, ptr %.072128.i, align 8, !tbaa !45
  %i.kk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.152, ptr noundef %i.kj, i32 noundef %i.jo) #17 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 4 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.km, label %bb.ah [
    i8 0, label %bb.al
    i8 32, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.kn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ko = load ptr, ptr %.072128.i, align 8, !tbaa !45
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = ptrtoint ptr %i.aa to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = sext i8 %i.km to i32
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kn, ptr noundef nonnull @.str.153, ptr noundef %i.ko, i32 noundef %i.jo, i32 noundef %i.ks, i32 noundef %i.kt) #17 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.ai:                                            ; preds = %bb.ag
  store i8 0, ptr %i.kl, align 1, !tbaa !14
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  br label %bb.al

bb.aj:                                            ; preds = %.preheader.i
  %i.kw = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2.i, i32 noundef 32) #18 ; 3 uses
  %.not88.i = icmp eq ptr %i.kw, null
  br i1 %.not88.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.kw, align 1, !tbaa !14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.069.i = phi ptr [ %i.kv, %bb.ai ], [ %i.kl, %bb.ag ], [ %i.kx, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %i.ky = call ptr @getLongPathname(ptr noundef nonnull %.2.i) ; 5 uses
  %i.kz = call ptr @uprv_strdup_78(ptr noundef nonnull %.2.i)
  %i.la = call ptr @pkg_appendToList(ptr noundef %.sroa.14.4, ptr noundef nonnull %i.y, ptr noundef %i.kz) ; 2 uses
  %i.lb = call signext i8 @uprv_pathIsAbsolute_78(ptr noundef %i.ky)
  %.not91.i = icmp eq i8 %i.lb, 0
  br i1 %.not91.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lc = load i8, ptr %i.ky, align 1, !tbaa !14
  %i.ld = icmp eq i8 %i.lc, 46
  br i1 %i.ld, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.le, ptr noundef nonnull @.str.154, i32 noundef 47, ptr noundef %i.ky) #17 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.lg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.45.0) #18
  %i.lh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ky) #18
  %i.li = add i64 %i.lh, %i.lg
  %i.lj = trunc i64 %i.li to i32
  %i.lk = add i32 %i.lj, 5                        ; 2 uses
  %i.ll = sext i32 %i.lk to i64
  %i.lm = call noalias ptr @uprv_malloc_78(i64 noundef %i.ll) #20 ; 5 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.155, i32 noundef %i.lk) #17 ; 0 uses
  call void @exit(i32 noundef 7) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.lq = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.lm, ptr noundef nonnull dereferenceable(1) %.sroa.45.0) #16 ; 0 uses
  %i.lr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.45.0) #18
  %i.ls = getelementptr i8, ptr %.sroa.45.0, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 -1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !14
  %i.lv = icmp eq i8 %i.lu, 47
  %i.lw = select i1 %i.lv, ptr @.str.11, ptr @.str.55
  %i.lx = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.lm, ptr noundef nonnull dereferenceable(1) %i.lw) #16 ; 0 uses
  %i.ly = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.lm, ptr noundef nonnull dereferenceable(1) %i.ky) #16 ; 0 uses
  %i.lz = call ptr @pkg_appendToList(ptr noundef %.sroa.10.4, ptr noundef nonnull %i.z, ptr noundef nonnull %i.lm) ; 2 uses
  %.not86.i = icmp eq ptr %.069.i, null
  br i1 %.not86.i, label %.backedge.i, label %.preheader93.i, !llvm.loop !30

._crit_edge.i110:                                 ; preds = %.backedge.i, %.preheader96.i
  %.sroa.10.3 = phi ptr [ %.sroa.10.0, %.preheader96.i ], [ %.sroa.10.2, %.backedge.i ] ; 2 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.0, %.preheader96.i ], [ %.sroa.14.2, %.backedge.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0127.i, %.preheader96.i ], [ %i.jo, %.backedge.i ]
  call void @T_FileStream_close(ptr noundef nonnull %i.jm)
  %i.ma = getelementptr inbounds nuw i8, ptr %.072128.i, i64 8
  %.072.i = load ptr, ptr %i.ma, align 8, !tbaa !43 ; 2 uses
  %.not.i111 = icmp eq ptr %.072.i, null
  br i1 %.not.i111, label %.loopexit214, label %.lr.ph130.i, !llvm.loop !31

bb.ar:                                            ; preds = %bb.z
  %i.mb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.mc = load ptr, ptr %.072128.i, align 8, !tbaa !45
  %i.md = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mb, ptr noundef nonnull @.str.150, ptr noundef %i.mc) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #16
  %i.me = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.mf = call ptr @u_errorName_78(i32 noundef 4)
  %i.mg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.me, ptr noundef nonnull @.str.23, ptr noundef %i.mf) #17 ; 0 uses
  br label %.loopexit

.loopexit214:                                     ; preds = %._crit_edge.i110, %._crit_edge.thread, %._crit_edge
  %.not126.i415 = phi i1 [ true, %._crit_edge ], [ true, %._crit_edge.thread ], [ false, %._crit_edge.i110 ]
  %spec.select209417 = phi ptr [ %spec.select209, %._crit_edge ], [ %spec.select209407, %._crit_edge.thread ], [ %spec.select209, %._crit_edge.i110 ]
  %.sroa.0.0.lcssa407 = phi ptr [ null, %._crit_edge ], [ null, %._crit_edge.thread ], [ %i.jh, %._crit_edge.i110 ] ; 4 uses
  %.sroa.10.5.ph = phi ptr [ null, %._crit_edge ], [ null, %._crit_edge.thread ], [ %.sroa.10.3, %._crit_edge.i110 ] ; 5 uses
  %.sroa.14.5.ph = phi ptr [ null, %._crit_edge ], [ null, %._crit_edge.thread ], [ %.sroa.14.3, %._crit_edge.i110 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #16
  %i.mh = load i8, ptr %i.hm, align 1, !tbaa !14  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.p, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.q, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.r, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.s, i8 0, i64 16384, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.t, i8 0, i64 16384, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 0, ptr %i.o, align 4, !tbaa !16
  %i.mi = call noalias dereferenceable_or_null(136) ptr @uprv_malloc_78(i64 noundef 136) #20 ; 2 uses
  store ptr %i.mi, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %.not59.i.i = icmp eq ptr %i.mi, null
  %.lcssa268.sroa.gep273.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.lcssa268.sroa.gep274.i = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %.lcssa268.sroa.gep275.i = getelementptr inbounds nuw i8, ptr %i.w, i64 3 ; 2 uses
  %.lcssa268.sroa.gep276.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.lcssa268.sroa.gep277.i = getelementptr inbounds nuw i8, ptr %i.w, i64 5 ; 2 uses
  %.lcssa268.sroa.gep278.i = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 2 uses
  %.lcssa268.sroa.gep279.i = getelementptr inbounds nuw i8, ptr %i.w, i64 7 ; 2 uses
  %.lcssa268.sroa.gep280.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.lcssa268.sroa.gep281.i = getelementptr inbounds nuw i8, ptr %i.w, i64 9 ; 2 uses
  br i1 %.not59.i.i, label %._crit_edge.i.i, label %.preheader51.i.i.preheader

.preheader51.i.i.preheader:                       ; preds = %.loopexit214
  %i.mj = icmp eq ptr %spec.select206, null
  %.not44.i.i = icmp eq i8 %i.ih, 0               ; 2 uses
  br label %.preheader51.i.i

thread-pre-split.i.i:                             ; preds = %bb.cg
  %.pr.i.i = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.preheader51.i.i

.preheader51.i.i:                                 ; preds = %.preheader51.i.i.preheader, %thread-pre-split.i.i
  %.03560.i.i = phi i32 [ %.1.i.i, %thread-pre-split.i.i ], [ 4096, %.preheader51.i.i.preheader ] ; 3 uses
  %i.mk = sext i32 %.03560.i.i to i64             ; 17 uses
  %i.ml = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.mm = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !11
  %.not42.i.i = icmp eq ptr %i.ml, null
  br i1 %.not42.i.i, label %.lr.ph.i.i, label %bb.as

bb.as:                                            ; preds = %.preheader51.i.i
  store i8 0, ptr %i.ml, align 1, !tbaa !14
  %i.mn = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.mo = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %i.mn, ptr %i.mp, align 8, !tbaa !11
  %.not42.1.i.i = icmp eq ptr %i.mn, null
  br i1 %.not42.1.i.i, label %.lr.ph.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.mn, align 1, !tbaa !14
  %i.mq = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.mr = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store ptr %i.mq, ptr %i.ms, align 8, !tbaa !11
  %.not42.2.i.i = icmp eq ptr %i.mq, null
  br i1 %.not42.2.i.i, label %.lr.ph.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 0, ptr %i.mq, align 1, !tbaa !14
  %i.mt = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.mu = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store ptr %i.mt, ptr %i.mv, align 8, !tbaa !11
  %.not42.3.i.i = icmp eq ptr %i.mt, null
  br i1 %.not42.3.i.i, label %.lr.ph.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.mt, align 1, !tbaa !14
  %i.mw = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.mx = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  store ptr %i.mw, ptr %i.my, align 8, !tbaa !11
  %.not42.4.i.i = icmp eq ptr %i.mw, null
  br i1 %.not42.4.i.i, label %.lr.ph.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 0, ptr %i.mw, align 1, !tbaa !14
  %i.mz = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.na = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  store ptr %i.mz, ptr %i.nb, align 8, !tbaa !11
  %.not42.5.i.i = icmp eq ptr %i.mz, null
  br i1 %.not42.5.i.i, label %.lr.ph.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.mz, align 1, !tbaa !14
  %i.nc = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.nd = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  store ptr %i.nc, ptr %i.ne, align 8, !tbaa !11
  %.not42.6.i.i = icmp eq ptr %i.nc, null
  br i1 %.not42.6.i.i, label %.lr.ph.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i8 0, ptr %i.nc, align 1, !tbaa !14
  %i.nf = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.ng = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  store ptr %i.nf, ptr %i.nh, align 8, !tbaa !11
  %.not42.7.i.i = icmp eq ptr %i.nf, null
  br i1 %.not42.7.i.i, label %.lr.ph.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i8 0, ptr %i.nf, align 1, !tbaa !14
  %i.ni = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.nj = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 64
  store ptr %i.ni, ptr %i.nk, align 8, !tbaa !11
  %.not42.8.i.i = icmp eq ptr %i.ni, null
  br i1 %.not42.8.i.i, label %.lr.ph.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.ni, align 1, !tbaa !14
  %i.nl = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.nm = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 72
  store ptr %i.nl, ptr %i.nn, align 8, !tbaa !11
  %.not42.9.i.i = icmp eq ptr %i.nl, null
  br i1 %.not42.9.i.i, label %.lr.ph.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.nl, align 1, !tbaa !14
  %i.no = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.np = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 80
  store ptr %i.no, ptr %i.nq, align 8, !tbaa !11
  %.not42.10.i.i = icmp eq ptr %i.no, null
  br i1 %.not42.10.i.i, label %.lr.ph.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 0, ptr %i.no, align 1, !tbaa !14
  %i.nr = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.ns = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 88
  store ptr %i.nr, ptr %i.nt, align 8, !tbaa !11
  %.not42.11.i.i = icmp eq ptr %i.nr, null
  br i1 %.not42.11.i.i, label %.lr.ph.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.nr, align 1, !tbaa !14
  %i.nu = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.nv = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  store ptr %i.nu, ptr %i.nw, align 8, !tbaa !11
  %.not42.12.i.i = icmp eq ptr %i.nu, null
  br i1 %.not42.12.i.i, label %.lr.ph.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 0, ptr %i.nu, align 1, !tbaa !14
  %i.nx = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.ny = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 104
  store ptr %i.nx, ptr %i.nz, align 8, !tbaa !11
  %.not42.13.i.i = icmp eq ptr %i.nx, null
  br i1 %.not42.13.i.i, label %.lr.ph.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i8 0, ptr %i.nx, align 1, !tbaa !14
  %i.oa = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.ob = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 112
  store ptr %i.oa, ptr %i.oc, align 8, !tbaa !11
  %.not42.14.i.i = icmp eq ptr %i.oa, null
  br i1 %.not42.14.i.i, label %.lr.ph.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i8 0, ptr %i.oa, align 1, !tbaa !14
  %i.od = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.oe = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 120
  store ptr %i.od, ptr %i.of, align 8, !tbaa !11
  %.not42.15.i.i = icmp eq ptr %i.od, null
  br i1 %.not42.15.i.i, label %.lr.ph.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i8 0, ptr %i.od, align 1, !tbaa !14
  %i.og = call noalias ptr @uprv_malloc_78(i64 noundef %i.mk) #20 ; 3 uses
  %i.oh = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 128
  store ptr %i.og, ptr %i.oi, align 8, !tbaa !11
  %.not42.16.i.i = icmp eq ptr %i.og, null
  br i1 %.not42.16.i.i, label %bb.bi, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bh
  store i8 0, ptr %i.og, align 1, !tbaa !14
  br i1 %i.mj, label %_ZL22initializePkgDataFlagsP12UPKGOptions_.exit.i, label %bb.bj

end_hunk_0
begin_hunk_1_@main:bb.a
bb.fx:                                            ; preds = %bb.ge, %bb.fw
  %indvars.iv102.i.i = phi i64 [ %indvars.iv.next103.i.i, %bb.ge ], [ 0, %bb.fw ] ; 3 uses
  store i8 0, ptr %i.g, align 16, !tbaa !14
  %i.agi = getelementptr inbounds nuw [10 x i8], ptr @_ZL11DATA_PREFIX, i64 %indvars.iv102.i.i ; 3 uses
  %i.agj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef nonnull %i.agi, ptr noundef nonnull @.str.55) #16 ; 0 uses
  %i.agk = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.agh, ptr noundef nonnull dereferenceable(1) %i.g) #18
  %.not78.i.i = icmp eq ptr %i.agk, null
  br i1 %.not78.i.i, label %bb.ge, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.h, i8 0, i64 4096, i1 false)
  %i.agl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #18
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.agl
  br label %bb.fz

bb.fz:                                            ; preds = %bb.gd, %bb.fy
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.gd ], [ 0, %bb.fy ] ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %indvars.iv.i.i ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !14 ; 2 uses
  %i.agp = icmp eq i8 %i.ago, 46
  %i.agq = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.agp, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i8 95, ptr %i.agq, align 1, !tbaa !14
  br label %bb.gd

bb.gb:                                            ; preds = %bb.fz
  store i8 %i.ago, ptr %i.agq, align 1, !tbaa !14
  %i.agr = load i8, ptr %i.agn, align 1, !tbaa !14
  %i.ags = icmp eq i8 %i.agr, 0
  br i1 %i.ags, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.agt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 4096, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.agi, ptr noundef nonnull %i.h) #16 ; 0 uses
  %i.agu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 4096, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.agi) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb, %bb.ga
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br label %bb.fz, !llvm.loop !33

bb.ge:                                            ; preds = %bb.gc, %bb.fx
  %i.agv = load i8, ptr %i.e, align 16, !tbaa !14 ; 2 uses
  %.not79.i.i = icmp eq i8 %i.agv, 0
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1
  %i.agw = icmp samesign ult i64 %indvars.iv102.i.i, 8
  %or.cond100.i.i = select i1 %.not79.i.i, i1 %i.agw, i1 false
  br i1 %or.cond100.i.i, label %bb.fx, label %bb.gf, !llvm.loop !34

bb.gf:                                            ; preds = %bb.ge
  br i1 %.not.i114, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.agx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull %i.c) ; 0 uses
  %.pre = load i8, ptr %i.e, align 16, !tbaa !14
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.agy = phi i8 [ %.pre, %bb.gg ], [ %i.agv, %bb.gf ]
  %i.agz = load i8, ptr %i.f, align 16, !tbaa !14
  %.not81.i.i = icmp eq i8 %i.agz, 0
  %spec.select213 = select i1 %.not81.i.i, ptr %i.hq, ptr %i.f
  %.not82.i.i = icmp eq i8 %i.agy, 0
  %i.aha = select i1 %.not82.i.i, ptr null, ptr %i.e
  call void @writeCCode(ptr noundef %i.agg, ptr noundef nonnull %.sroa.38138.0, ptr noundef null, ptr noundef nonnull %spec.select213, ptr noundef %i.aha, ptr noundef nonnull %i.c, i64 noundef 4096)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.fv
  %i.ahb = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c) #16 ; 0 uses
  %i.ahc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #18
  %i.ahd = getelementptr i8, ptr %i.d, i64 %i.ahc
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 -1
  store i8 111, ptr %i.ahe, align 1, !tbaa !14
  %i.ahf = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 48
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !11
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 56
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !11
  %i.ahk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.afw, ptr noundef nonnull dereferenceable(1) @.str.120, ptr noundef %i.ahh, ptr noundef %i.ahj, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #16 ; 0 uses
  %i.ahl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afw) #18
  %i.ahm = and i64 %i.ahl, 4294967295
  %i.ahn = icmp eq i64 %i.ahm, 0
  br i1 %i.ahn, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aho = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull %i.afw) ; 0 uses
  %i.ahp = call i32 @system(ptr noundef nonnull %i.afw) ; 2 uses
  %.not.i.i231.i = icmp eq i32 %i.ahp, 0
  br i1 %.not.i.i231.i, label %bb.gk, label %bb.gn

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.agb)
  %endptr.i.i = getelementptr inbounds i8, ptr %i.agb, i64 %strlen.i.i
  store i16 32, ptr %endptr.i.i, align 1
  %i.ahq = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.agb, ptr noundef nonnull dereferenceable(1) %i.d) #16 ; 0 uses
  br i1 %i.age, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ahr = getelementptr inbounds nuw i8, ptr %.06897.i.i, i64 8
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !46
  %i.aht = getelementptr inbounds nuw i8, ptr %.06798.i.i, i64 8
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !46
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.270.ph.i.i = phi ptr [ %.06897.i.i, %bb.gk ], [ %i.ahs, %bb.gl ]
  %.2.ph.i.i = phi ptr [ %.06798.i.i, %bb.gk ], [ %i.ahu, %bb.gl ]
  %i.ahv = add nuw i32 %.06599.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.06599.i.i, %i.afq
  br i1 %exitcond.not.i.i, label %.critedge.i233.i, label %.lr.ph.i230.i, !llvm.loop !35

bb.gn:                                            ; preds = %bb.gj
  %i.ahw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ahx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahw, ptr noundef nonnull @.str.110, i32 noundef %i.ahp) #17 ; 0 uses
  %i.ahy = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ahz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahy, ptr noundef nonnull @.str.126, ptr noundef nonnull %i.afw) #17 ; 0 uses
  br label %bb.go

.critedge.i233.i:                                 ; preds = %bb.gm, %.preheader.i229.i
  %i.aia = call fastcc noundef i32 @_ZL23pkg_generateLibraryFilePKccS0_Pca(ptr noundef nonnull %i.p, i8 noundef signext %i.mh, ptr noundef %i.agb, ptr noundef nonnull %i.afw)
  br label %bb.go

bb.go:                                            ; preds = %.critedge.i233.i, %bb.gn
  %.273.i.i = phi i32 [ %i.aia, %.critedge.i233.i ], [ 1, %bb.gn ]
  call void @uprv_free_78(ptr noundef nonnull %i.agb)
  call void @uprv_free_78(ptr noundef nonnull %i.afw)
  br label %_ZL29pkg_createWithoutAssemblyCodeP12UPKGOptions_PKcc.exit.i

_ZL29pkg_createWithoutAssemblyCodeP12UPKGOptions_PKcc.exit.i: ; preds = %bb.go, %bb.fu, %bb.fs, %bb.fq
  %.0.i232.i = phi i32 [ %.273.i.i, %bb.go ], [ -1, %bb.fs ], [ -1, %bb.fu ], [ -1, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.ha

bb.gp:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.x, i8 0, i64 10, i1 false)
  %i.aib = call ptr @T_FileStream_open(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.131) ; 3 uses
  %.not.i235.i = icmp eq ptr %i.aib, null
  br i1 %.not.i235.i, label %bb.gx, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aic = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.aib, ptr noundef nonnull @.str.128) ; 0 uses
  call void @T_FileStream_close(ptr noundef nonnull %i.aib)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.aid = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 48
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !11
  %i.aig = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 16384, ptr noundef nonnull @.str.132, ptr noundef %i.aif, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) #16 ; 0 uses
  %i.aih = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  %i.aii = and i64 %i.aih, 4294967295
  %i.aij = icmp eq i64 %i.aii, 0
  br i1 %i.aij, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aik = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull %i.b) ; 0 uses
  %i.ail = call i32 @system(ptr noundef nonnull %i.b) ; 2 uses
  %.not.i.i236.i = icmp eq i32 %i.ail, 0
  br i1 %.not.i.i236.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  store i64 29944577190358383, ptr %i.x, align 8
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.aim = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ain = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aim, ptr noundef nonnull @.str.110, i32 noundef %i.ail) #17 ; 0 uses
  %i.aio = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aio, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.129) #17 ; 0 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.aiq = call signext i8 @T_FileStream_remove(ptr noundef nonnull @.str.129)
  %.not13.i.i = icmp eq i8 %i.aiq, 0
  br i1 %.not13.i.i, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.air = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ais = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.air, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.129) #17 ; 0 uses
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZL22pkg_createOptMatchArchPc.exit.i

bb.gx:                                            ; preds = %bb.gp
  %i.ait = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aiu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ait, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.129) #17 ; 0 uses
  br label %_ZL22pkg_createOptMatchArchPc.exit.i

_ZL22pkg_createOptMatchArchPc.exit.i:             ; preds = %bb.gx, %bb.gw
  %i.aiv = load i8, ptr %i.x, align 8, !tbaa !14
  %i.aiw = icmp eq i8 %i.aiv, 0
  %i.aix = select i1 %i.aiw, ptr null, ptr %i.x
  call void @writeObjectCode(ptr noundef nonnull %i.s, ptr noundef nonnull %.sroa.38138.0, ptr noundef %.sroa.29.0, ptr noundef %i.aix, ptr noundef %spec.select209417, ptr noundef null, ptr noundef nonnull %i.v, i64 noundef 4096, i8 noundef signext 1)
  %i.aiy = call signext i8 @T_FileStream_file_exists(ptr noundef nonnull %i.x)
  %.not.i237.i = icmp eq i8 %i.aiy, 0
  br i1 %.not.i237.i, label %_ZL23pkg_destroyOptMatchArchPc.exit.i, label %bb.gy

bb.gy:                                            ; preds = %_ZL22pkg_createOptMatchArchPc.exit.i
  %i.aiz = call signext i8 @T_FileStream_remove(ptr noundef nonnull %i.x)
  %.not3.i.i = icmp eq i8 %i.aiz, 0
  br i1 %.not3.i.i, label %bb.gz, label %_ZL23pkg_destroyOptMatchArchPc.exit.i

bb.gz:                                            ; preds = %bb.gy
  %i.aja = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ajb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aja, ptr noundef nonnull @.str.135, ptr noundef nonnull %i.x) #17 ; 0 uses
  br label %_ZL23pkg_destroyOptMatchArchPc.exit.i

_ZL23pkg_destroyOptMatchArchPc.exit.i:            ; preds = %bb.gz, %bb.gy, %_ZL22pkg_createOptMatchArchPc.exit.i
  %i.ajc = call fastcc noundef i32 @_ZL23pkg_generateLibraryFilePKccS0_Pca(ptr noundef %i.p, i8 noundef signext %i.mh, ptr noundef %i.v, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #16
  br label %bb.ha

bb.ha:                                            ; preds = %_ZL23pkg_destroyOptMatchArchPc.exit.i, %_ZL29pkg_createWithoutAssemblyCodeP12UPKGOptions_PKcc.exit.i
  %.7.i = phi i32 [ %.0.i232.i, %_ZL29pkg_createWithoutAssemblyCodeP12UPKGOptions_PKcc.exit.i ], [ %i.ajc, %_ZL23pkg_destroyOptMatchArchPc.exit.i ] ; 2 uses
  %.not187.i = icmp eq i32 %.7.i, 0
  br i1 %.not187.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ajd = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite199.i = call i64 @fwrite(ptr nonnull @.str.74, i64 31, i64 1, ptr %i.ajd) #19 ; 0 uses
  br label %.thread257.i

bb.hc:                                            ; preds = %bb.ha
  br i1 %i.act, label %bb.hr, label %.thread244.i

.thread244.i:                                     ; preds = %bb.hc, %bb.fi
  br i1 %.not.i114, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.thread244.i
  %i.aje = load ptr, ptr @stdout, align 8, !tbaa !13
  %fwrite189.i = call i64 @fwrite(ptr nonnull @.str.75, i64 40, i64 1, ptr %i.aje) ; 0 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %.thread244.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ajf = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19 ; 4 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !11
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !11 ; 4 uses
  %i.ajk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajh, ptr noundef nonnull dereferenceable(1) %i.ajj) #18
  %.not.i238.i = icmp eq i32 %i.ajk, 0
  br i1 %.not.i238.i, label %bb.hm, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajf, i64 24
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !11
  %i.ajn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajm, ptr noundef nonnull dereferenceable(1) %i.ajj) #18
  %i.ajo = icmp eq i32 %i.ajn, 0
  br i1 %i.ajo, label %bb.hg, label %bb.hm

bb.hg:                                            ; preds = %bb.hf
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajf, i64 40
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !11
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !14
  %i.ajs = icmp eq i8 %i.ajr, 46
  %i.ajt = select i1 %i.ajs, ptr @.str.21, ptr @.str.11
  %..i.i = select i1 %i.aaz, ptr %i.hp, ptr %i.ajj
  %spec.select.i.i = select i1 %i.aaz, ptr %i.ajj, ptr %i.hp
  %i.aju = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 512), i64 noundef 256, ptr noundef nonnull @.str.142, ptr noundef nonnull @_ZL12libFileNames, ptr noundef nonnull %i.ajt, ptr noundef %..i.i, ptr noundef %spec.select.i.i) #16 ; 0 uses
  %i.ajv = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 104
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !11
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajv, i64 112
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !11
  %i.aka = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16384, ptr noundef nonnull @.str.143, ptr noundef %i.ajx, ptr noundef %i.ajz, ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 512), ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 768)) #16 ; 0 uses
  %i.akb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.akc = and i64 %i.akb, 4294967295
  %i.akd = icmp eq i64 %i.akc, 0
  br i1 %i.akd, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ake = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull %i.a) ; 0 uses
  %i.akf = call i32 @system(ptr noundef nonnull %i.a) ; 2 uses
  %.not.i.i239.i = icmp eq i32 %i.akf, 0
  br i1 %.not.i.i239.i, label %bb.hi, label %bb.hn

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.akg = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 120
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !11
  %i.akj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16384, ptr noundef nonnull @.str.139, ptr noundef %i.aki, ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 512)) #16 ; 0 uses
  %i.akk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.akl = and i64 %i.akk, 4294967295
  %i.akm = icmp eq i64 %i.akl, 0
  br i1 %i.akm, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.akn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull %i.a) ; 0 uses
  %i.ako = call i32 @system(ptr noundef nonnull %i.a) ; 2 uses
  %.not.i23.i.i = icmp eq i32 %i.ako, 0
  br i1 %.not.i23.i.i, label %bb.hk, label %bb.hn

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.akp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16384, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 768)) #16 ; 0 uses
  %i.akq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.akr = and i64 %i.akq, 4294967295
  %i.aks = icmp eq i64 %i.akr, 0
  br i1 %i.aks, label %bb.ho, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.akt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull %i.a) ; 0 uses
  %i.aku = call i32 @system(ptr noundef nonnull %i.a) ; 2 uses
  %.not.i26.i.i = icmp eq i32 %i.aku, 0
  br i1 %.not.i26.i.i, label %bb.ho, label %bb.hn

bb.hm:                                            ; preds = %bb.hf, %bb.he
  %i.akv = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 512), ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZL12libFileNames, i64 768)) #16 ; 0 uses
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hl, %bb.hj, %bb.hh
  %.sink366.i = phi i32 [ %i.ako, %bb.hj ], [ %i.akf, %bb.hh ], [ %i.aku, %bb.hl ]
  %i.akw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.akx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akw, ptr noundef nonnull @.str.110, i32 noundef %.sink366.i) #17 ; 0 uses
  %i.aky = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.akz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aky, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.a) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ala = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite194.i = call i64 @fwrite(ptr nonnull @.str.76, i64 42, i64 1, ptr %i.ala) #19 ; 0 uses
  br label %.thread257.i

bb.ho:                                            ; preds = %bb.hm, %bb.hl, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %.not169.not.i, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.alb = call fastcc noundef i32 @_ZL18pkg_createSymLinksPKca(ptr noundef nonnull %i.p)
  %.not192.i = icmp eq i32 %i.alb, 0
  br i1 %.not192.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.alc = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite193.i = call i64 @fwrite(ptr nonnull @.str.77, i64 56, i64 1, ptr %i.alc) #19 ; 0 uses
  br label %.thread257.i

bb.hr:                                            ; preds = %bb.hp, %bb.ho, %bb.hc
  %.not195.i = icmp eq ptr %.sroa.70.0, null
  br i1 %.not195.i, label %bb.hw, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  br i1 %.not.i114, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ald = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ale = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ald, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.it) #16 ; 0 uses
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.alf = call fastcc noundef i32 @_ZL18pkg_installLibraryPKcS0_a(ptr noundef nonnull %i.it, ptr noundef %i.p, i8 noundef signext %.0129.i)
  %.not197.i = icmp eq i32 %i.alf, 0
  br i1 %.not197.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.alg = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite198.i = call i64 @fwrite(ptr nonnull @.str.79, i64 35, i64 1, ptr %i.alg) #19 ; 0 uses
  br label %.thread257.i

.thread257.i:                                     ; preds = %bb.hv, %bb.hq, %bb.hn, %bb.hb, %bb.fn, %bb.fm, %bb.fj, %bb.fh, %bb.ep, %bb.eo, %bb.en
  %.3138.ph.i = phi i32 [ 0, %bb.ep ], [ %i.adh, %bb.en ], [ 1, %bb.hn ], [ 0, %bb.eo ], [ 1, %bb.hv ], [ %.7.i, %bb.hb ], [ 1, %bb.hq ], [ %i.afl, %bb.fm ], [ 0, %bb.fj ], [ -1, %bb.fn ], [ %.0.i.i, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #16
  br label %_ZL18pkg_executeOptionsP12UPKGOptions_.exit

bb.hw:                                            ; preds = %bb.hu, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #16
  br label %_ZL18pkg_executeOptionsP12UPKGOptions_.exit

_ZL18pkg_executeOptionsP12UPKGOptions_.exit:      ; preds = %bb.ch, %_ZL19pkg_installFileModePKcS0_S0_.exit.i, %bb.cz, %bb.dq, %.thread257.i, %bb.hw
  %.5140.i = phi i32 [ %.121.i.i, %_ZL19pkg_installFileModePKcS0_S0_.exit.i ], [ 0, %bb.ch ], [ 0, %bb.hw ], [ %.3138.ph.i, %.thread257.i ], [ %.3134.i, %bb.dq ], [ %i.xz, %bb.cz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  %i.alh = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19 ; 3 uses
  %.not94 = icmp eq ptr %i.alh, null
  br i1 %.not94, label %bb.ip, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZL18pkg_executeOptionsP12UPKGOptions_.exit
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !11 ; 2 uses
  %.not99 = icmp eq ptr %i.ali, null
  br i1 %.not99, label %.preheader.1, label %bb.hx

bb.hx:                                            ; preds = %.preheader.preheader
  call void @uprv_free_78(ptr noundef nonnull %i.ali)
  %.pre292 = load ptr, ptr @_ZL12pkgDataFlags, align 8, !tbaa !19
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.hx
  %i.alj = phi ptr [ %i.alh, %.preheader.preheader ], [ %.pre292, %bb.hx ] ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !11 ; 2 uses
end_hunk_1
