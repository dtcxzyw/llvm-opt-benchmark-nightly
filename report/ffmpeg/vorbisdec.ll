Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vorbisdec?download=true
inline.NumInlined: 163
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@vorbis_floor1_decode:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !48
  %i.em = sext i16 %i.el to i32
  br label %get_vlc2.exit141

get_vlc2.exit141:                                 ; preds = %bb.d, %bb.e, %bb.f
  %.167.i138 = phi i32 [ %i.cv, %bb.d ], [ %i.ej, %bb.f ], [ %i.dp, %bb.e ]
  %.165.i139 = phi i32 [ %i.bp, %bb.d ], [ %i.dv, %bb.f ], [ %i.db, %bb.e ]
  %.1.i140 = phi i32 [ %i.cy, %bb.d ], [ %i.em, %bb.f ], [ %i.ds, %bb.e ]
  %i.en = add i32 %.1.i140, %.165.i139
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.en) ; 2 uses
  store i32 %i.eo, ptr %i.l, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %get_vlc2.exit141, %bb.c
  %i.ep = phi i32 [ %i.eo, %get_vlc2.exit141 ], [ %i.bp, %bb.c ] ; 2 uses
  %.0122 = phi i32 [ %.167.i138, %get_vlc2.exit141 ], [ 0, %bb.c ]
  %.not168 = icmp eq i8 %i.bu, 0
  br i1 %.not168, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bs
  %wide.trip.count = zext i8 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %i.er = phi i32 [ %i.ep, %.lr.ph ], [ %i.hn, %bb.m ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.1123156 = phi i32 [ %.0122, %.lr.ph ], [ %i.ew, %bb.m ] ; 2 uses
  %i.es = and i32 %.1123156, %i.bz
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !93 ; 2 uses
  %i.ew = lshr i32 %.1123156, %i.by
  %i.ex = icmp sgt i16 %i.ev, -1
  br i1 %i.ex, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ey = zext nneg i16 %i.ev to i64
  %i.ez = load ptr, ptr %i.bm, align 8, !tbaa !77
  %i.fa = getelementptr inbounds nuw [48 x i8], ptr %i.ez, i64 %i.ey ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !91 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !92 ; 2 uses
  %i.ff = lshr i32 %i.er, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 1, !tbaa !48
  %i.fj = and i32 %i.er, 7
  %i.fk = lshr i32 %i.fi, %i.fj
  %i.fl = sub i32 32, %i.fe
  %i.fm = lshr i32 -1, %i.fl
  %i.fn = and i32 %i.fk, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fo ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !48
  %i.fr = sext i16 %i.fq to i32                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !48 ; 2 uses
  %i.fu = sext i16 %i.ft to i32                   ; 3 uses
  %i.fv = icmp slt i16 %i.ft, 0
  br i1 %i.fv, label %bb.j, label %get_vlc2.exit

bb.j:                                             ; preds = %bb.i
  %i.fw = add i32 %i.er, %i.fe
  %i.fx = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.fw) ; 4 uses
  %i.fy = lshr i32 %i.fx, 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 1, !tbaa !48
  %i.gc = and i32 %i.fx, 7
  %i.gd = lshr i32 %i.gb, %i.gc
  %i.ge = add nsw i32 %i.fu, 32
  %i.gf = lshr i32 -1, %i.ge
  %i.gg = and i32 %i.gd, %i.gf
  %i.gh = add i32 %i.gg, %i.fr
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.gi ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !48
  %i.gl = sext i16 %i.gk to i32                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !48 ; 2 uses
  %i.go = sext i16 %i.gn to i32                   ; 2 uses
  %i.gp = icmp slt i16 %i.gn, 0
  br i1 %i.gp, label %bb.k, label %get_vlc2.exit

bb.k:                                             ; preds = %bb.j
  %i.gq = sub i32 %i.fx, %i.fu
  %i.gr = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.gq) ; 3 uses
  %i.gs = lshr i32 %i.gr, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 1, !tbaa !48
  %i.gw = and i32 %i.gr, 7
  %i.gx = lshr i32 %i.gv, %i.gw
  %i.gy = add nsw i32 %i.go, 32
  %i.gz = lshr i32 -1, %i.gy
  %i.ha = and i32 %i.gx, %i.gz
  %i.hb = add i32 %i.ha, %i.gl
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.hc ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !48
  %i.hf = sext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !48
  %i.hi = sext i16 %i.hh to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.i, %bb.j, %bb.k
  %.167.i = phi i32 [ %i.fr, %bb.i ], [ %i.hf, %bb.k ], [ %i.gl, %bb.j ] ; 2 uses
  %.165.i = phi i32 [ %i.er, %bb.i ], [ %i.gr, %bb.k ], [ %i.fx, %bb.j ]
  %.1.i137 = phi i32 [ %i.fu, %bb.i ], [ %i.hi, %bb.k ], [ %i.go, %bb.j ]
  %i.hj = add i32 %.1.i137, %.165.i
  %i.hk = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.hj) ; 2 uses
  store i32 %i.hk, ptr %i.l, align 8, !tbaa !47
  %i.hl = icmp sgt i32 %.167.i, -1
  br i1 %i.hl, label %bb.l, label %.critedge

bb.l:                                             ; preds = %get_vlc2.exit
  %i.hm = trunc nuw nsw i32 %.167.i to i16
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  %.sink = phi i16 [ %i.hm, %bb.l ], [ 0, %bb.h ]
  %i.hn = phi i32 [ %i.hk, %bb.l ], [ %i.er, %bb.h ] ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv to i32
  %i.hp = add i32 %.0121158, %i.ho
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.hq
  store i16 %.sink, ptr %i.hr, align 2, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.m, %bb.g
  %i.hs = phi i32 [ %i.ep, %bb.g ], [ %i.hn, %bb.m ]
  %i.ht = add i32 %.0121158, %i.bv
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge162.loopexit, label %bb.c, !llvm.loop !233

._crit_edge162.loopexit:                          ; preds = %._crit_edge
  %.pre = load i16, ptr %i.a, align 16, !tbaa !93
  %.pre180 = load i16, ptr %i.bh, align 2, !tbaa !93
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.b
  %i.hu = phi i16 [ %.pre180, %._crit_edge162.loopexit ], [ %i.bg, %bb.b ]
  %i.hv = phi i16 [ %.pre, %._crit_edge162.loopexit ], [ %i.aw, %bb.b ]
  store i32 1, ptr %i.c, align 16, !tbaa !43
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.hw, align 4, !tbaa !43
  store i16 %i.hv, ptr %i.b, align 16, !tbaa !93
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.hu, ptr %i.hx, align 2, !tbaa !93
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.hz = load i16, ptr %i.hy, align 4, !tbaa !239 ; 3 uses
  %i.ia = zext i16 %i.hz to i32
  %i.ib = icmp ugt i16 %i.hz, 2
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !240 ; 5 uses
  br i1 %i.ib, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %._crit_edge162
  %wide.trip.count178 = zext i16 %i.hz to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph165, %bb.v
  %indvars.iv175 = phi i64 [ 2, %.lr.ph165 ], [ %indvars.iv.next176, %bb.v ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv175 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !241
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 6
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !242
  %i.ij = zext i16 %i.ii to i64                   ; 3 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ij
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !93
  %i.im = zext i16 %i.il to i32
  %i.in = zext i16 %i.ig to i64                   ; 3 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !93
  %i.iq = zext i16 %i.ip to i32                   ; 2 uses
  %i.ir = sub nsw i32 %i.im, %i.iq                ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ij
  %i.it = load i16, ptr %i.is, align 2, !tbaa !108
  %i.iu = zext i16 %i.it to i32
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.in
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !108
  %i.ix = zext i16 %i.iw to i32                   ; 2 uses
  %i.iy = sub nsw i32 %i.iu, %i.ix
  %i.iz = tail call i32 @llvm.abs.i32(i32 %i.ir, i1 true)
  %i.ja = load i16, ptr %i.ie, align 2, !tbaa !108
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ix
  %i.jd = mul nsw i32 %i.jc, %i.iz
  %i.je = sdiv i32 %i.jd, %i.iy                   ; 2 uses
  %i.jf = icmp slt i32 %i.ir, 0
  %i.jg = sub i32 0, %i.je
  %.0118.p = select i1 %i.jf, i32 %i.jg, i32 %i.je
  %.0118 = add i32 %.0118.p, %i.iq                ; 8 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv175
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !93 ; 3 uses
  %i.jj = zext i16 %i.ji to i32                   ; 5 uses
  %i.jk = sub i32 %i.k, %.0118                    ; 2 uses
  %.not133 = icmp eq i16 %i.ji, 0
  br i1 %.not133, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.in = tail call i32 @llvm.umin.i32(i32 %i.jk, i32 %.0118)
  %.0 = shl i32 %.0.in, 1
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.in
  store i32 1, ptr %i.jl, align 4, !tbaa !43
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ij
  store i32 1, ptr %i.jm, align 4, !tbaa !43
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv175
  store i32 1, ptr %i.jn, align 4, !tbaa !43
  %.not134 = icmp ugt i32 %.0, %i.jj
  br i1 %.not134, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jo = icmp ugt i32 %i.jk, %.0118
  br i1 %i.jo, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jp = xor i32 %i.jj, -1
  %i.jq = add nsw i32 %i.jp, %i.k                 ; 3 uses
  %.not.i149 = icmp ult i32 %i.jq, 65536
  %isnotneg.i150 = icmp sgt i32 %i.jq, -1
  %3 = sext i1 %isnotneg.i150 to i16
  %i.jr = trunc nuw i32 %i.jq to i16
  %.0.i151 = select i1 %.not.i149, i16 %i.jr, i16 %3
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.js = and i32 %i.jj, 1
  %.not135 = icmp eq i32 %i.js, 0
  br i1 %.not135, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jt = add nuw nsw i32 %i.jj, 1
  %i.ju = lshr exact i32 %i.jt, 1
  %i.jv = sub i32 %.0118, %i.ju                   ; 3 uses
  %.not.i146 = icmp ult i32 %i.jv, 65536
  %isnotneg.i147 = icmp sgt i32 %i.jv, -1
  %4 = sext i1 %isnotneg.i147 to i16
  %i.jw = trunc nuw i32 %i.jv to i16
  %.0.i148 = select i1 %.not.i146, i16 %i.jw, i16 %4
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.jx = lshr exact i32 %i.jj, 1
  %i.jy = add i32 %i.jx, %.0118                   ; 3 uses
  %.not.i143 = icmp ult i32 %i.jy, 65536
  %isnotneg.i144 = icmp sgt i32 %i.jy, -1
  %5 = sext i1 %isnotneg.i144 to i16
  %i.jz = trunc nuw i32 %i.jy to i16
  %.0.i145 = select i1 %.not.i143, i16 %i.jz, i16 %5
  br label %bb.v

bb.u:                                             ; preds = %bb.n
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv175
  store i32 0, ptr %i.ka, align 4, !tbaa !43
  %.not.i142 = icmp ult i32 %.0118, 65536
  %isnotneg.i = icmp sgt i32 %.0118, -1
  %6 = sext i1 %isnotneg.i to i16
  %i.kb = trunc nuw i32 %.0118 to i16
  %.0.i = select i1 %.not.i142, i16 %i.kb, i16 %6
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u, %bb.s, %bb.t, %bb.q
  %.0.i.sink = phi i16 [ %.0.i, %bb.u ], [ %.0.i148, %bb.s ], [ %.0.i145, %bb.t ], [ %.0.i151, %bb.q ], [ %i.ji, %bb.p ]
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv175
  store i16 %.0.i.sink, ptr %i.kc, align 2, !tbaa !93
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %._crit_edge166, label %bb.n, !llvm.loop !234

._crit_edge166:                                   ; preds = %bb.v, %._crit_edge162
  %i.kd = zext i8 %i.f to i32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !108
  %i.kg = zext i16 %i.kf to i32
  call void @ff_vorbis_floor1_render_list(ptr noundef %i.id, i32 noundef %i.ia, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.kd, ptr noundef %2, i32 noundef %i.kg) #11
  br label %.critedge

.critedge:                                        ; preds = %get_vlc2.exit, %bb.a, %._crit_edge166
  %.4 = phi i32 [ 1, %bb.a ], [ 0, %._crit_edge166 ], [ -1094995529, %get_vlc2.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.4
}

declare i32 @ff_vorbis_ready_floor1_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 2) i32 @vorbis_floor0_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i8, ptr %i.f, align 8, !tbaa !59
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load i8, ptr %i.i, align 2, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !254   ; 5 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.critedge143, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = zext i8 %i.l to i32                      ; 8 uses
  %i.o = icmp ult i8 %i.l, 33
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i8 %i.l, 26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !47   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46   ; 4 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !44   ; 3 uses
  %i.v = lshr i32 %i.r, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1, !tbaa !48
  %i.z = and i32 %i.r, 7
  %i.aa = lshr i32 %i.y, %i.z                     ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nuw nsw i32 32, %i.n
  %i.ac = lshr i32 -1, %i.ab
  %i.ad = and i32 %i.aa, %i.ac
  %i.ae = add i32 %i.r, %i.n
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.ae)
  br label %get_bits_long.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %i.aa, 65535
  %i.ah = add i32 %i.r, 16
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.ah) ; 4 uses
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !47
  %i.aj = add nsw i32 %i.n, -16
  %i.ak = lshr i32 %i.ai, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1, !tbaa !48
  %i.ao = and i32 %i.ai, 7
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = sub nuw nsw i32 48, %i.n
  %i.ar = lshr i32 -1, %i.aq
  %i.as = and i32 %i.ap, %i.ar
  %i.at = add i32 %i.aj, %i.ai
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.at)
  %i.av = shl nuw i32 %i.as, 16
  %i.aw = or disjoint i32 %i.av, %i.ag
  br label %get_bits_long.exit.i

get_bits_long.exit.i:                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.af, %bb.d ], [ %i.au, %bb.e ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ad, %bb.d ], [ %i.aw, %bb.e ]
  store i32 %.sink.i, ptr %i.q, align 8, !tbaa !47
  %i.ax = zext i32 %.0.i.i to i64
  br label %get_bits64.exit

bb.f:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !47 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !46 ; 6 uses
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !44  ; 5 uses
  %i.bd = lshr i32 %i.az, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !48
  %i.bh = and i32 %i.az, 7
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bi, 65535
  %i.bk = add i32 %i.az, 16
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.bk) ; 4 uses
  store i32 %i.bl, ptr %i.ay, align 8, !tbaa !47
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !48
  %i.bq = and i32 %i.bl, 7
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = add i32 %i.bl, 16
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.bs) ; 5 uses
  store i32 %i.bt, ptr %i.ay, align 8, !tbaa !47
  %i.bu = shl i32 %i.br, 16
  %i.bv = or disjoint i32 %i.bu, %i.bj
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp ult i8 %i.l, 58
  %i.by = lshr i32 %i.bt, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !48
  %i.cc = and i32 %i.bt, 7
  %i.cd = lshr i32 %i.cb, %i.cc                   ; 2 uses
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ce = add nsw i32 %i.n, -32
  %i.cf = sub nuw nsw i32 64, %i.n
  %i.cg = lshr i32 -1, %i.cf
  %i.ch = and i32 %i.cd, %i.cg
  %i.ci = add i32 %i.ce, %i.bt
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.ci)
  br label %get_bits_long.exit10.i

bb.h:                                             ; preds = %bb.f
  %i.ck = and i32 %i.cd, 65535
  %i.cl = add i32 %i.bt, 16
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.cl) ; 4 uses
  store i32 %i.cm, ptr %i.ay, align 8, !tbaa !47
  %i.cn = add nsw i32 %i.n, -48
  %i.co = lshr i32 %i.cm, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !48
  %i.cs = and i32 %i.cm, 7
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = sub nsw i32 80, %i.n
  %i.cv = lshr i32 -1, %i.cu
  %i.cw = and i32 %i.ct, %i.cv
  %i.cx = add i32 %i.cn, %i.cm
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.cx)
  %i.cz = shl i32 %i.cw, 16
  %i.da = or disjoint i32 %i.cz, %i.ck
  br label %get_bits_long.exit10.i

get_bits_long.exit10.i:                           ; preds = %bb.h, %bb.g
  %.sink11.i = phi i32 [ %i.cj, %bb.g ], [ %i.cy, %bb.h ] ; 2 uses
  %.0.i9.i = phi i32 [ %i.ch, %bb.g ], [ %i.da, %bb.h ]
  store i32 %.sink11.i, ptr %i.ay, align 8, !tbaa !47
  %i.db = zext i32 %.0.i9.i to i64
  %i.dc = shl nuw i64 %i.db, 32
  %i.dd = or disjoint i64 %i.dc, %i.bw
  br label %get_bits64.exit

get_bits64.exit:                                  ; preds = %get_bits_long.exit.i, %get_bits_long.exit10.i
  %i.de = phi ptr [ %i.u, %get_bits_long.exit.i ], [ %i.bc, %get_bits_long.exit10.i ]
  %i.df = phi i32 [ %i.t, %get_bits_long.exit.i ], [ %i.bb, %get_bits_long.exit10.i ]
  %i.dg = phi i32 [ %.sink.i, %get_bits_long.exit.i ], [ %.sink11.i, %get_bits_long.exit10.i ] ; 3 uses
  %.0.i = phi i64 [ %i.ax, %get_bits_long.exit.i ], [ %i.dd, %get_bits_long.exit10.i ] ; 2 uses
  %.not138 = icmp eq i64 %.0.i, 0
  br i1 %.not138, label %.critedge143, label %bb.i

bb.i:                                             ; preds = %get_bits64.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !255 ; 2 uses
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %.not.i = icmp sgt i8 %i.di, -1                 ; 2 uses
  %.1.i = select i1 %.not.i, i32 0, i32 8
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = select i1 %.not.i, i64 %i.dl, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !48
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nuw nsw i32 %.1.i, %i.dp            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = lshr i32 %i.dg, 3
  %i.du = zext nneg i32 %i.dt to i64
end_hunk_0
