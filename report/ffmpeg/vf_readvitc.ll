Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_readvitc?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@filter_frame:bb.a
  br i1 %i.dm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i.us
  %i.dn = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.do = or i8 %i.dn, 1
  store i8 %i.do, ptr %i.cw, align 1, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.i.us
  %i.dp = add nsw i32 %spec.select.i.us, %i.am
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %.06886.i.us, i64 %i.dq ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !49
  %i.du = zext i8 %i.dt to i16
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !49
  %i.dw = zext i8 %i.dv to i16
  %i.dx = add nuw nsw i16 %i.dw, %i.du
  %i.dy = getelementptr i8, ptr %i.dr, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !49
  %i.ea = zext i8 %i.dz to i16
  %i.eb = add nuw nsw i16 %i.dx, %i.ea
  %i.ec = udiv i16 %i.eb, 3
  %i.ed = zext nneg i16 %i.ec to i32
  %i.ee = icmp slt i32 %i.cv, %i.ed
  br i1 %i.ee, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ef = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.eg = or i8 %i.ef, 2
  store i8 %i.eg, ptr %i.cw, align 1, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eh = add nsw i32 %spec.select.i.us, %i.ao
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %.06886.i.us, i64 %i.ei ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !49
  %i.em = zext i8 %i.el to i16
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !49
  %i.eo = zext i8 %i.en to i16
  %i.ep = add nuw nsw i16 %i.eo, %i.em
  %i.eq = getelementptr i8, ptr %i.ej, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !49
  %i.es = zext i8 %i.er to i16
  %i.et = add nuw nsw i16 %i.ep, %i.es
  %i.eu = udiv i16 %i.et, 3
  %i.ev = zext nneg i16 %i.eu to i32
  %i.ew = icmp slt i32 %i.cv, %i.ev
  br i1 %i.ew, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ex = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.ey = or i8 %i.ex, 4
  store i8 %i.ey, ptr %i.cw, align 1, !tbaa !49
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ez = add nsw i32 %spec.select.i.us, %i.ap
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %.06886.i.us, i64 %i.fa ; 3 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !49
  %i.fe = zext i8 %i.fd to i16
  %i.ff = load i8, ptr %i.fb, align 1, !tbaa !49
  %i.fg = zext i8 %i.ff to i16
  %i.fh = add nuw nsw i16 %i.fg, %i.fe
  %i.fi = getelementptr i8, ptr %i.fb, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !49
  %i.fk = zext i8 %i.fj to i16
  %i.fl = add nuw nsw i16 %i.fh, %i.fk
  %i.fm = udiv i16 %i.fl, 3
  %i.fn = zext nneg i16 %i.fm to i32
  %i.fo = icmp slt i32 %i.cv, %i.fn
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fp = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.fq = or i8 %i.fp, 8
  store i8 %i.fq, ptr %i.cw, align 1, !tbaa !49
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fr = add nsw i32 %spec.select.i.us, %i.aq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr i8, ptr %.06886.i.us, i64 %i.fs ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !49
  %i.fw = zext i8 %i.fv to i16
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !49
  %i.fy = zext i8 %i.fx to i16
  %i.fz = add nuw nsw i16 %i.fy, %i.fw
  %i.ga = getelementptr i8, ptr %i.ft, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !49
  %i.gc = zext i8 %i.gb to i16
  %i.gd = add nuw nsw i16 %i.fz, %i.gc
  %i.ge = udiv i16 %i.gd, 3
  %i.gf = zext nneg i16 %i.ge to i32
  %i.gg = icmp slt i32 %i.cv, %i.gf
  br i1 %i.gg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gh = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.gi = or i8 %i.gh, 16
  store i8 %i.gi, ptr %i.cw, align 1, !tbaa !49
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gj = add nsw i32 %spec.select.i.us, %i.as
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr i8, ptr %.06886.i.us, i64 %i.gk ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 -1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !49
  %i.go = zext i8 %i.gn to i16
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !49
  %i.gq = zext i8 %i.gp to i16
  %i.gr = add nuw nsw i16 %i.gq, %i.go
  %i.gs = getelementptr i8, ptr %i.gl, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !49
  %i.gu = zext i8 %i.gt to i16
  %i.gv = add nuw nsw i16 %i.gr, %i.gu
  %i.gw = udiv i16 %i.gv, 3
  %i.gx = zext nneg i16 %i.gw to i32
  %i.gy = icmp slt i32 %i.cv, %i.gx
  br i1 %i.gy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.ha = or i8 %i.gz, 32
  store i8 %i.ha, ptr %i.cw, align 1, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.hb = add nsw i32 %spec.select.i.us, %i.au
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr i8, ptr %.06886.i.us, i64 %i.hc ; 3 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !49
  %i.hg = zext i8 %i.hf to i16
  %i.hh = load i8, ptr %i.hd, align 1, !tbaa !49
  %i.hi = zext i8 %i.hh to i16
  %i.hj = add nuw nsw i16 %i.hi, %i.hg
  %i.hk = getelementptr i8, ptr %i.hd, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !49
  %i.hm = zext i8 %i.hl to i16
  %i.hn = add nuw nsw i16 %i.hj, %i.hm
  %i.ho = udiv i16 %i.hn, 3
  %i.hp = zext nneg i16 %i.ho to i32
  %i.hq = icmp slt i32 %i.cv, %i.hp
  br i1 %i.hq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hr = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.hs = or i8 %i.hr, 64
  store i8 %i.hs, ptr %i.cw, align 1, !tbaa !49
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ht = add nsw i32 %spec.select.i.us, %i.aw    ; 3 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr i8, ptr %.06886.i.us, i64 %i.hu ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !49
  %i.hy = zext i8 %i.hx to i16
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !49
  %i.ia = zext i8 %i.hz to i16
  %i.ib = add nuw nsw i16 %i.ia, %i.hy
  %i.ic = getelementptr i8, ptr %i.hv, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !49
  %i.ie = zext i8 %i.id to i16
  %i.if = add nuw nsw i16 %i.ib, %i.ie
  %i.ig = udiv i16 %i.if, 3
  %i.ih = zext nneg i16 %i.ig to i32
  %i.ii = icmp slt i32 %i.cv, %i.ih
  br i1 %i.ii, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ij = load i8, ptr %i.cw, align 1, !tbaa !49
  %i.ik = or i8 %i.ij, -128
  store i8 %i.ik, ptr %i.cw, align 1, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next100.i.us = add nuw nsw i64 %indvars.iv99.i.us, 1 ; 2 uses
  %i.il = icmp slt i32 %i.ht, %i.i
  %i.im = icmp samesign ult i64 %indvars.iv99.i.us, 8
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  br i1 %i.in, label %.preheader72.i.us, label %._crit_edge.i.us, !llvm.loop !42

._crit_edge.i.us:                                 ; preds = %bb.w, %bb.g, %bb.f, %.critedge2.i.us
  %.066.lcssa.ph.in.i.us = phi i64 [ %indvars.iv.next100.i.us, %bb.w ], [ %indvars.iv99.i.us, %.critedge2.i.us ], [ %indvars.iv99.i.us, %bb.f ], [ %indvars.iv99.i.us, %bb.g ]
  %i.io = and i64 %.066.lcssa.ph.in.i.us, 4294967295
  %i.ip = icmp eq i64 %i.io, 9
  br i1 %i.ip, label %bb.x, label %._crit_edge.thread.i.us

bb.x:                                             ; preds = %._crit_edge.i.us
  %i.iq = load i8, ptr %i.r, align 8, !tbaa !49   ; 2 uses
  %i.ir = shl i8 %i.iq, 2
  %i.is = lshr i8 %i.iq, 6
  %i.it = load i8, ptr %i.v, align 1, !tbaa !49   ; 2 uses
  %i.iu = shl i8 %i.it, 4
  %i.iv = or disjoint i8 %i.iu, %i.is
  %2 = or disjoint i8 %i.iv, 4
  %3 = lshr i8 %i.it, 4
  %i.iw = load i8, ptr %i.w, align 2, !tbaa !49   ; 2 uses
  %i.ix = shl i8 %i.iw, 6
  %4 = or disjoint i8 %i.ix, %3
  %i.iy = or disjoint i8 %4, 16
  %i.iz = lshr i8 %i.iw, 2
  %i.ja = or disjoint i8 %i.iz, 64
  %i.jb = load i8, ptr %i.x, align 1, !tbaa !49
  %i.jc = load i8, ptr %i.y, align 4, !tbaa !49   ; 2 uses
  %i.jd = shl i8 %i.jc, 2
  %i.je = or disjoint i8 %i.jd, 1
  %i.jf = lshr i8 %i.jc, 6
  %i.jg = load i8, ptr %i.z, align 1, !tbaa !49   ; 2 uses
  %i.jh = shl i8 %i.jg, 4
  %i.ji = or disjoint i8 %i.jh, %i.jf
  %5 = or disjoint i8 %i.ji, 4
  %6 = lshr i8 %i.jg, 4
  %i.jj = load i8, ptr %i.aa, align 2, !tbaa !49  ; 2 uses
  %i.jk = shl i8 %i.jj, 6
  %7 = or disjoint i8 %i.jk, %6
  %i.jl = or disjoint i8 %7, 16
  %i.jm = lshr i8 %i.jj, 2
  %i.jn = or disjoint i8 %i.jm, 64
  %i.jo = load i8, ptr %i.ab, align 1, !tbaa !49
  %i.jp = xor i8 %i.jb, %i.ir
  %i.jq = xor i8 %i.jp, %2
  %i.jr = xor i8 %i.jq, %i.ja
  %i.js = xor i8 %i.jr, %i.iy
  %i.jt = xor i8 %i.js, %i.je
  %i.ju = xor i8 %i.jt, %i.jo
  %i.jv = xor i8 %i.ju, %5
  %i.jw = xor i8 %i.jv, %i.jn
  %i.jx = xor i8 %i.jw, %i.jl                     ; 2 uses
  %i.jy = tail call i8 @llvm.fshl.i8(i8 %i.jx, i8 %i.jx, i8 6)
  %i.jz = load i8, ptr %i.ac, align 8, !tbaa !49
  %i.ka = icmp eq i8 %i.jy, %i.jz
  br i1 %i.ka, label %.split.us, label %._crit_edge.thread.i.us

._crit_edge.thread.i.us:                          ; preds = %bb.x, %._crit_edge.i.us
  %i.kb = getelementptr inbounds i8, ptr %.06886.i.us, i64 %i.ad
  %i.kc = add nuw nsw i32 %.06387.i.us, 1         ; 2 uses
  %exitcond102.not.i.us = icmp eq i32 %i.kc, %.067.i
  br i1 %exitcond102.not.i.us, label %read_vitc_line.exit.thread, label %.preheader72.lr.ph.i.us, !llvm.loop !43

.lr.ph89.i.split:                                 ; preds = %.lr.ph89.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  br label %read_vitc_line.exit.thread

read_vitc_line.exit.thread:                       ; preds = %._crit_edge.thread.i.us, %.lr.ph89.i.split, %bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ke = tail call i32 @av_dict_set(ptr noundef nonnull %i.kd, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef 0) #6 ; 0 uses
  br label %bb.y

.split.us:                                        ; preds = %bb.x
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.kg = tail call i32 @av_dict_set(ptr noundef nonnull %i.kf, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0) #6 ; 0 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.g, i64 57 ; 2 uses
  %i.ki = load <8 x i8>, ptr %i.r, align 8, !tbaa !49 ; 2 uses
  %i.kj = load i8, ptr %i.v, align 1, !tbaa !49
  %i.kk = shufflevector <8 x i8> %i.ki, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.kl = and <4 x i8> %i.kk, <i8 3, i8 7, i8 7, i8 3>
  %i.km = shufflevector <8 x i8> %i.ki, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %i.kn = and <4 x i8> %i.km, splat (i8 15)       ; 2 uses
  %i.ko = icmp samesign ugt <4 x i8> %i.kn, splat (i8 9)
  %i.kp = mul nuw nsw <4 x i8> %i.kl, splat (i8 10)
  %i.kq = add nuw nsw <4 x i8> %i.kp, %i.kn
  %i.kr = select <4 x i1> %i.ko, <4 x i8> zeroinitializer, <4 x i8> %i.kq ; 4 uses
  %i.ks = extractelement <4 x i8> %i.kr, i64 0
  %.0.i.i = zext nneg i8 %i.ks to i32
  %i.kt = extractelement <4 x i8> %i.kr, i64 1
  %.0.i18.i = zext nneg i8 %i.kt to i32
  %i.ku = extractelement <4 x i8> %i.kr, i64 2
  %.0.i22.i = zext nneg i8 %i.ku to i32
  %i.kv = extractelement <4 x i8> %i.kr, i64 3
  %.0.i26.i = zext nneg i8 %i.kv to i32
  %i.kw = and i8 %i.kj, 4
  %.not.i = icmp eq i8 %i.kw, 0
  %i.kx = select i1 %.not.i, i32 58, i32 59
  %i.ky = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.kh, i64 noundef 23, ptr noundef nonnull @.str.7, i32 noundef %.0.i.i, i32 noundef %.0.i18.i, i32 noundef %.0.i22.i, i32 noundef %i.kx, i32 noundef %.0.i26.i) #6 ; 0 uses
  %i.kz = tail call i32 @av_dict_set(ptr noundef nonnull %i.kf, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.kh, i32 noundef 0) #6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %read_vitc_line.exit.thread, %.split.us
  %i.la = tail call i32 @ff_filter_frame(ptr noundef %i.e, ptr noundef nonnull %1) #6
  ret i32 %i.la
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_props(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = mul nsw i32 %i.f, 5
  %i.h = sdiv i32 %i.g, 48                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.h, ptr %i.i, align 4, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.8, i32 noundef %i.f, i32 noundef %i.k, i32 noundef %i.h, i32 noundef %i.m) #6
  ret i32 0
}

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"double", !5, i64 0}
!21 = !{!"ReadVitcContext", !10, i64 0, !6, i64 8, !20, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !5, i64 48, !5, i64 57}
!22 = !{!21, !6, i64 32}
!23 = !{!21, !6, i64 36}
!24 = !{!21, !6, i64 40}
!25 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!26 = !{!"AVRational", !6, i64 0, !6, i64 4}
!27 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!28 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!29 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!30 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!31 = !{!"AVFilterFormatsConfig", !29, i64 0, !29, i64 8, !30, i64 16, !29, i64 24, !29, i64 32, !29, i64 40}
!32 = !{!"AVFilterLink", !25, i64 0, !13, i64 8, !25, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !26, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !27, i64 72, !26, i64 96, !28, i64 104, !6, i64 112, !6, i64 116, !31, i64 120, !31, i64 168}
!33 = !{!32, !25, i64 16}
!34 = !{!32, !6, i64 40}
!35 = !{!32, !6, i64 44}
!36 = !{!21, !6, i64 8}
!37 = !{!21, !6, i64 44}
!38 = !{!21, !20, i64 16}
!39 = !{!21, !20, i64 24}
!40 = distinct !{!40, !50}
!41 = distinct !{!41, !50}
!42 = distinct !{!42, !50}
!43 = distinct !{!43, !50}
!44 = !{!18, !15, i64 56}
!45 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!12, !12, i64 0}
!49 = !{!5, !5, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
end_hunk_0
