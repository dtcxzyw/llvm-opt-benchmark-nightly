Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iff?download=true
inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_init:bb.a
bb.ae:                                            ; preds = %bb.ac
  %i.fr = load i32, ptr %i.br, align 8, !tbaa !37
  %i.fs = shl nsw i32 %i.fr, 5
  %i.ft = add nsw i32 %i.fs, 64
  %i.fu = sext i32 %i.ft to i64
  %i.fv = tail call noalias ptr @av_malloc(i64 noundef %i.fu) #10 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !51
  %.not167.i = icmp eq ptr %i.fv, null
  br i1 %.not167.i, label %extract_header.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fx = load i32, ptr %i.ci, align 8, !tbaa !40
  %i.fy = shl i32 2, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nsw i64 %i.ga, 64
  %i.gc = tail call noalias ptr @av_malloc(i64 noundef %i.gb) #10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !52
  %.not168.i = icmp eq ptr %i.gc, null
  br i1 %.not168.i, label %extract_header.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %i.ge = load i32, ptr %i.ci, align 8, !tbaa !40
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.ci, align 8, !tbaa !40
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8) #10
  br label %extract_header.exit

bb.ai:                                            ; preds = %bb.ag, %bb.aa, %bb.aa
  %i.gg = load i32, ptr %i.ci, align 8, !tbaa !40 ; 3 uses
  %i.gh = add i32 %i.gg, -33
  %or.cond175.i = icmp ult i32 %i.gh, -32
  br i1 %or.cond175.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.gg) #10
  br label %extract_header.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !41 ; 2 uses
  %.not170.i = icmp eq i32 %i.gj, 0
  br i1 %.not170.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i32, ptr %i.br, align 8, !tbaa !37
  %i.gl = mul i32 %i.gk, %i.gg
  %i.gm = load i32, ptr %i.w, align 4, !tbaa !36
  %i.gn = mul i32 %i.gl, %i.gm
  %i.go = icmp ugt i32 %i.gn, %i.gj
  br i1 %i.go, label %extract_header.exit, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gp = load i32, ptr %i.cm, align 4, !tbaa !45 ; 3 uses
  %.not171.i = icmp eq i32 %i.gp, 0
  br i1 %.not171.i, label %extract_header.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gq = udiv i32 %i.bw, 3
  %i.gr = shl nuw i32 1, %i.gp
  %..i = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %i.gr) ; 3 uses
  %i.gs = load i16, ptr %i.bo, align 1, !tbaa !32
  %i.gt = tail call i16 @llvm.bswap.i16(i16 %i.gs)
  %i.gu = zext i16 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.gu
  %i.gw = load i32, ptr %i.al, align 4, !tbaa !33
  %i.gx = load i32, ptr %i.br, align 8, !tbaa !37
  %i.gy = shl nsw i32 %i.gx, 3
  %i.gz = add nsw i32 %i.gy, 64
  %i.ha = sext i32 %i.gz to i64
  %i.hb = tail call noalias ptr @av_mallocz(i64 noundef %i.ha) #10 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !53
  %.not172.i = icmp eq ptr %i.hb, null
  br i1 %.not172.i, label %extract_header.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hd = icmp eq i32 %i.gw, 541934160
  %i.he = icmp eq i32 %i.gp, 4
  %i.hf = and i1 %i.he, %i.hd
  %i.hg = load i32, ptr %i.cm, align 4, !tbaa !45
  %i.hh = shl i32 8, %i.hg                        ; 3 uses
  %i.hi = load i32, ptr %i.cz, align 8, !tbaa !48
  %i.hj = icmp eq i32 %i.hi, 1
  %i.hk = zext i1 %i.hj to i32
  %i.hl = shl i32 %i.hh, %i.hk
  %i.hm = select i1 %i.hf, i32 2, i32 0
  %i.hn = shl i32 %i.hl, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 2
  %i.hq = add nsw i64 %i.hp, 64
  %i.hr = tail call noalias ptr @av_malloc(i64 noundef %i.hq) #10 ; 10 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !54
  %.not173.i = icmp eq ptr %i.hr, null
  br i1 %.not173.i, label %extract_header.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not174.i = icmp eq i32 %..i, 0
  %i.ht = load i32, ptr %i.cm, align 4, !tbaa !45 ; 7 uses
  br i1 %.not174.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = shl i32 2, %i.ht
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i64 %i.hv, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hr, i8 0, i64 %i.hw, i1 false)
  %i.hx = icmp sgt i32 %..i, 0
  br i1 %i.hx, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aq
  %wide.trip.count.i = zext nneg i32 %..i to i64
  br label %bb.ar

._crit_edge.i:                                    ; preds = %bb.ar, %bb.aq
  %i.hy = shl nuw i32 1, %i.ht
  br label %.loopexit.i

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ar ] ; 3 uses
  %i.hz = mul nuw nsw i64 %indvars.iv.i, 3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hz ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 1
  %i.ic = load i16, ptr %i.ib, align 1
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 8
  %i.if = load i8, ptr %i.ia, align 1, !tbaa !32
  %i.ig = zext i8 %i.if to i32
  %i.ih = or disjoint i32 %i.ie, %i.ig
  %i.ii = or disjoint i32 %i.ih, -16777216
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ar, !llvm.loop !56

bb.as:                                            ; preds = %bb.ap
  %i.il = shl nuw i32 1, %i.ht                    ; 2 uses
  %.not198.i = icmp eq i32 %i.ht, 31
  br i1 %.not198.i, label %._crit_edge194.i, label %.lr.ph190.preheader.i

.lr.ph190.preheader.i:                            ; preds = %bb.as
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.il, i32 1)
  %wide.trip.count204.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph190.i

.lr.ph190.i:                                      ; preds = %.lr.ph190.i, %.lr.ph190.preheader.i
  %indvars.iv201.i = phi i64 [ 0, %.lr.ph190.preheader.i ], [ %indvars.iv.next202.i, %.lr.ph190.i ] ; 3 uses
  %.idx226.i = shl nuw nsw i64 %indvars.iv201.i, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx226.i ; 2 uses
  store i32 -16777216, ptr %i.im, align 4, !tbaa !55
  %i.in = trunc i64 %indvars.iv201.i to i32
  %i.io = mul i32 %i.in, 255
  %i.ip = lshr i32 %i.io, %i.ht                   ; 3 uses
  %i.iq = shl i32 %i.ip, 16
  %i.ir = shl i32 %i.ip, 8
  %i.is = or i32 %i.iq, %i.ir
  %i.it = or i32 %i.is, %i.ip
  %i.iu = or i32 %i.it, -16777216
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !55
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count204.i
  br i1 %exitcond205.not.i, label %.loopexit.i, label %.lr.ph190.i, !llvm.loop !58

.loopexit.i:                                      ; preds = %.lr.ph190.i, %._crit_edge.i
  %.0145.i = phi i32 [ %i.hy, %._crit_edge.i ], [ %i.il, %.lr.ph190.i ] ; 4 uses
  %i.iw = icmp sgt i32 %.0145.i, 0
  br i1 %i.iw, label %.lr.ph193.i, label %._crit_edge194.i

.lr.ph193.i:                                      ; preds = %.loopexit.i
  %i.ix = shl i32 %.0145.i, 2
  %i.iy = mul nuw nsw i32 %.0145.i, 3
  %i.iz = zext nneg i32 %.0145.i to i64           ; 2 uses
  %i.ja = zext nneg i32 %i.iy to i64
  %i.jb = sub i32 8, %i.ht
  br label %bb.at

._crit_edge194.i:                                 ; preds = %bb.at, %.loopexit.i, %bb.as
  %i.jc = load i32, ptr %i.cz, align 8, !tbaa !48
  %i.jd = icmp eq i32 %i.jc, 1
  %i.je = icmp sgt i32 %i.hh, 0
  %or.cond197.i = and i1 %i.je, %i.jd
  br i1 %or.cond197.i, label %.lr.ph196.i, label %extract_header.exit

.lr.ph196.i:                                      ; preds = %._crit_edge194.i
  %wide.trip.count214.i = zext nneg i32 %i.hh to i64
  %.pre.i = load i32, ptr %i.ci, align 8, !tbaa !40
  %i.jf = shl nuw i32 1, %.pre.i
  br label %bb.au

bb.at:                                            ; preds = %bb.at, %.lr.ph193.i
  %indvars.iv206.i = phi i64 [ 0, %.lr.ph193.i ], [ %indvars.iv.next207.i, %bb.at ] ; 4 uses
  %i.jg = trunc i64 %indvars.iv206.i to i32       ; 2 uses
  %i.jh = shl i32 %i.jg, %i.jb                    ; 2 uses
  %i.ji = lshr i32 %i.jh, %i.ht
  %i.jj = or i32 %i.ji, %i.jh                     ; 3 uses
  %i.jk = add nuw nsw i64 %indvars.iv206.i, %i.iz
  %.idx227.i = shl nuw nsw i64 %i.jk, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx227.i ; 2 uses
  store i32 -16711681, ptr %i.jl, align 4, !tbaa !55
  %i.jm = shl i32 %i.jg, 1
  %i.jn = add i32 %i.jm, %i.ix
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.jo ; 2 uses
  store i32 -256, ptr %i.jp, align 4, !tbaa !55
  %i.jq = add nuw nsw i64 %indvars.iv206.i, %i.ja
  %.idx228.i = shl nuw nsw i64 %i.jq, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx228.i ; 2 uses
  store i32 -65281, ptr %i.jr, align 4, !tbaa !55
  %i.js = shl i32 %i.jj, 16
  %i.jt = or i32 %i.js, -16777216
  %i.ju = getelementptr i8, ptr %i.jl, i64 4
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !55
  %i.jv = or i32 %i.jj, -16777216
  %i.jw = getelementptr i8, ptr %i.jp, i64 4
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !55
  %i.jx = shl i32 %i.jj, 8
  %i.jy = or i32 %i.jx, -16777216
  %i.jz = getelementptr i8, ptr %i.jr, i64 4
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !55
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %i.iz
  br i1 %exitcond210.not.i, label %._crit_edge194.i, label %bb.at, !llvm.loop !59

bb.au:                                            ; preds = %bb.au, %.lr.ph196.i
  %indvars.iv211.i = phi i64 [ 0, %.lr.ph196.i ], [ %indvars.iv.next212.i, %bb.au ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv211.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !55
  %i.kc = or i32 %i.kb, -16777216
  %i.kd = trunc nuw nsw i64 %indvars.iv211.i to i32
  %i.ke = add nuw nsw i32 %i.jf, %i.kd
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.kf
  store i32 %i.kc, ptr %i.kg, align 4, !tbaa !55
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count214.i
  br i1 %exitcond215.not.i, label %extract_header.exit, label %bb.au, !llvm.loop !60

extract_header.exit:                              ; preds = %bb.au, %bb.u, %bb.am, %._crit_edge194.i, %bb.r, %bb.t, %bb.ah, %bb.x, %bb.z, %bb.aj, %bb.af, %bb.al, %bb.ad, %bb.ae, %bb.ao, %bb.an, %bb.o, %bb.p, %bb.n, %bb.l, %bb.k, %bb.e, %bb.j
  %.055 = phi i32 [ -1094995529, %bb.e ], [ -12, %bb.p ], [ -12, %bb.o ], [ -1094995529, %bb.n ], [ -12, %bb.l ], [ %i.y, %bb.k ], [ -1163346256, %bb.j ], [ -1094995529, %bb.r ], [ 0, %bb.u ], [ 0, %bb.am ], [ 0, %._crit_edge194.i ], [ -12, %bb.an ], [ -12, %bb.ao ], [ -12, %bb.ae ], [ -12, %bb.ad ], [ -1094995529, %bb.al ], [ -12, %bb.af ], [ -1094995529, %bb.aj ], [ -1094995529, %bb.z ], [ -1094995529, %bb.x ], [ -1163346256, %bb.ah ], [ -1094995529, %bb.t ], [ 0, %bb.au ]
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.GetByteContext, align 8     ; 58 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 143 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63   ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 27 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g     ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.i = icmp ne ptr %i.d, null
  %i.j = icmp sgt i32 %i.f, -1
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.k, align 8, !tbaa !66
  %i.l = zext nneg i32 %i.f to i64                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l ; 53 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !67
  %i.o = getelementptr i8, ptr %0, i64 28         ; 10 uses
  %.val = load i32, ptr %i.o, align 4, !tbaa !33
  %.not.i = icmp eq i32 %.val, 1296649793
  br i1 %.not.i, label %bb.c, label %.loopexit1227

bb.c:                                             ; preds = %bytestream2_init.exit
  %i.p = ptrtoint ptr %i.m to i64                 ; 11 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !64
  %gepdiff1121 = sub nsw i64 %i.l, %i.q           ; 2 uses
  %i.s = icmp sgt i64 %gepdiff1121, 0
  br i1 %i.s, label %.lr.ph10.i, label %.loopexit1227

.lr.ph10.i:                                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph10.i
  %i.z = phi i64 [ %gepdiff1121, %.lr.ph10.i ], [ %i.dq, %.critedge.i ]
  %i.aa = phi ptr [ %i.r, %.lr.ph10.i ], [ %i.do, %.critedge.i ] ; 2 uses
  %i.ab = icmp slt i64 %i.z, 4
  br i1 %i.ab, label %bytestream2_get_le32.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !42
  %i.ad = load i32, ptr %i.aa, align 1, !tbaa !32
  %.pre.i = ptrtoint ptr %i.ac to i64
  br label %bytestream2_get_le32.exit.i

bytestream2_get_le32.exit.i:                      ; preds = %bb.e, %bb.d
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.e ], [ %i.p, %bb.d ]
  %i.ae = phi ptr [ %i.ac, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ad, %bb.e ], [ 0, %bb.d ]
  %i.af = sub i64 %i.p, %.pre-phi.i
  %i.ag = icmp slt i64 %i.af, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bytestream2_get_le32.exit.i
  store ptr %i.m, ptr %4, align 8, !tbaa !64
  br label %bytestream2_get_be32.exit77.i

bb.g:                                             ; preds = %bytestream2_get_le32.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !42
  %i.ai = load i32, ptr %i.ae, align 1, !tbaa !32
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  br label %bytestream2_get_be32.exit77.i

bytestream2_get_be32.exit77.i:                    ; preds = %bb.g, %bb.f
  %i.ak = phi ptr [ %i.m, %bb.f ], [ %i.ah, %bb.g ] ; 13 uses
  %.0.i76.i = phi i32 [ 0, %bb.f ], [ %i.aj, %bb.g ] ; 11 uses
  switch i32 %.0.i.i, label %bb.t [
    i32 1145589058, label %bb.h
    i32 1145589313, label %bb.i
    i32 1497648962, label %bb.m
    i32 1096043588, label %.loopexit1227
    i32 1346456899, label %bb.n
  ]

bb.h:                                             ; preds = %bytestream2_get_be32.exit77.i
  %i.al = and i32 %.0.i76.i, 1
  %i.am = add i32 %i.al, %.0.i76.i
  %i.an = ptrtoint ptr %i.ak to i64
  br label %.critedge.i

bb.i:                                             ; preds = %bytestream2_get_be32.exit77.i
  %i.ao = icmp ugt i32 %.0.i76.i, 39
  br i1 %i.ao, label %bb.j, label %parse_packet_header.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = sub i64 %i.p, %i.ap
  %i.ar = icmp slt i64 %i.aq, 1
  br i1 %i.ar, label %bytestream2_get_byte.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 3 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !42
  %i.at = load i8, ptr %i.ak, align 1, !tbaa !32
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %.pre25.i = ptrtoint ptr %i.as to i64
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.k, %bb.j
  %.pre-phi26.i = phi i64 [ %.pre25.i, %bb.k ], [ %i.p, %bb.j ]
  %i.aw = phi ptr [ %i.as, %bb.k ], [ %i.m, %bb.j ]
  %.0.i78.i = phi i32 [ %i.av, %bb.k ], [ 0, %bb.j ]
  %i.ax = load i32, ptr %i.v, align 8, !tbaa !44
  %i.ay = and i32 %i.ax, 255
  %i.az = or disjoint i32 %i.ay, %.0.i78.i
  store i32 %i.az, ptr %i.v, align 8, !tbaa !44
  %i.ba = sub i64 %i.p, %.pre-phi26.i
  %..i72.i = tail call i64 @llvm.smin.i64(i64 %i.ba, i64 19)
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %..i72.i ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.p, %i.bc
  %i.be = icmp slt i64 %i.bd, 4
  br i1 %i.be, label %bytestream2_get_be32.exit.i, label %bb.l

bb.l:                                             ; preds = %bytestream2_get_byte.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 3 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !42
  %i.bg = load i32, ptr %i.bb, align 1, !tbaa !32
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  %.pre27.i = ptrtoint ptr %i.bf to i64
  br label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.i:                      ; preds = %bb.l, %bytestream2_get_byte.exit.i
  %.pre-phi28.i = phi i64 [ %.pre27.i, %bb.l ], [ %i.p, %bytestream2_get_byte.exit.i ]
  %i.bi = phi ptr [ %i.bf, %bb.l ], [ %i.m, %bytestream2_get_byte.exit.i ]
  %.0.i75.i = phi i32 [ %i.bh, %bb.l ], [ 0, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.bj = and i32 %.0.i75.i, 1
  %i.bk = xor i32 %i.bj, 1
  store i32 %i.bk, ptr %i.w, align 4, !tbaa !68
  %i.bl = icmp eq i32 %.0.i75.i, 2
  %i.bm = zext i1 %i.bl to i32
  store i32 %i.bm, ptr %i.x, align 4, !tbaa !69
  %i.bn = lshr i32 %.0.i75.i, 6
  %.lobit.i = and i32 %i.bn, 1
end_hunk_0
begin_hunk_1_@decode_rgb8:bb.a
  %.227 = phi i32 [ %i.be, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.156, %.lr.ph ], [ %i.bf, %bb.d ] ; 2 uses
  %i.bg = add nuw nsw i32 %.02357, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %.02272
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !200

.critedge:                                        ; preds = %.loopexit, %bytestream2_get_be16.exit, %bb.d, %bb.a, %bytestream2_get_be16.exit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_rgbn(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.c, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph57, label %.critedge

.loopexit:                                        ; preds = %bb.e
  %i.i = ptrtoint ptr %i.ag to i64
  %i.j = sub i64 %i.c, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph57, label %.critedge, !llvm.loop !201

.lr.ph57:                                         ; preds = %bb.a, %.loopexit
  %i.m = phi ptr [ %i.ag, %.loopexit ], [ %i.d, %bb.a ] ; 3 uses
  %.02556 = phi i32 [ %.2, %.loopexit ], [ 0, %bb.a ]
  %.02655 = phi i32 [ %.228, %.loopexit ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !42
  %i.o = load i16, ptr %i.m, align 1, !tbaa !32
  %i.p = tail call i16 @llvm.bswap.i16(i16 %i.o)  ; 2 uses
  %i.q = and i16 %i.p, 7                          ; 2 uses
  %i.r = zext nneg i16 %i.q to i32
  %i.s = lshr i16 %i.p, 4
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %.lr.ph57
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.c, %i.t
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bytestream2_get_byte.exit.thread, label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !42
  %i.x = load i8, ptr %i.n, align 1, !tbaa !32    ; 2 uses
  %i.y = zext i8 %i.x to i32
  %.not37 = icmp eq i8 %i.x, 0
  br i1 %.not37, label %bytestream2_get_byte.exit._crit_edge, label %.lr.ph.preheader

bytestream2_get_byte.exit._crit_edge:             ; preds = %bytestream2_get_byte.exit
  %.pre = ptrtoint ptr %i.w to i64
  br label %bytestream2_get_byte.exit.thread

bytestream2_get_byte.exit.thread:                 ; preds = %bb.b, %bytestream2_get_byte.exit._crit_edge
  %.pre-phi = phi i64 [ %.pre, %bytestream2_get_byte.exit._crit_edge ], [ %i.c, %bb.b ]
  %i.z = phi ptr [ %i.w, %bytestream2_get_byte.exit._crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %i.aa = sub i64 %i.c, %.pre-phi
  %i.ab = icmp slt i64 %i.aa, 2
  br i1 %i.ab, label %bytestream2_get_be16.exit.thread, label %bytestream2_get_be16.exit

bytestream2_get_be16.exit.thread:                 ; preds = %bytestream2_get_byte.exit.thread
  store ptr %i.b, ptr %0, align 8, !tbaa !64
  br label %.critedge

bytestream2_get_be16.exit:                        ; preds = %bytestream2_get_byte.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !42
  %i.ad = load i16, ptr %i.z, align 1, !tbaa !32  ; 2 uses
  %.not38 = icmp eq i16 %i.ad, 0
  br i1 %.not38, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_be16.exit
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bytestream2_get_byte.exit, %.lr.ph57
  %.02364 = phi i32 [ %i.af, %bb.c ], [ %i.y, %bytestream2_get_byte.exit ], [ %i.r, %.lr.ph57 ]
  %i.ag = phi ptr [ %i.ac, %bb.c ], [ %i.w, %bytestream2_get_byte.exit ], [ %i.n, %.lr.ph57 ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.02453 = phi i32 [ %i.ap, %bb.e ], [ 0, %.lr.ph.preheader ]
  %.152 = phi i32 [ %.2, %bb.e ], [ %.02556, %.lr.ph.preheader ] ; 3 uses
  %.12751 = phi i32 [ %.228, %bb.e ], [ %.02655, %.lr.ph.preheader ] ; 2 uses
  %i.ah = mul nsw i32 %.152, %4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = sext i32 %.12751 to i64
  %i.al = shl nsw i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  store i16 %i.s, ptr %i.am, align 2, !tbaa !49
  %i.an = add nsw i32 %.12751, 1                  ; 2 uses
  %.not39 = icmp slt i32 %i.an, %2
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ao = add nsw i32 %.152, 1                    ; 2 uses
  %.not40 = icmp slt i32 %i.ao, %3
  br i1 %.not40, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.228 = phi i32 [ %i.an, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.152, %.lr.ph ], [ %i.ao, %bb.d ] ; 2 uses
  %i.ap = add nuw nsw i32 %.02453, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %.02364
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !202

.critedge:                                        ; preds = %.loopexit, %bytestream2_get_be16.exit, %bb.d, %bb.a, %bytestream2_get_be16.exit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decode_deep_tvdc32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = shl nsw i32 %2, 1                        ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph91, label %.critedge

.lr.ph91:                                         ; preds = %bb.a, %bb.i
  %.05290 = phi i32 [ %.3, %bb.i ], [ 0, %bb.a ]  ; 4 uses
  %.05389 = phi i8 [ %.356, %bb.i ], [ 0, %bb.a ] ; 6 uses
  %.05787 = phi i32 [ %.360, %bb.i ], [ 0, %bb.a ] ; 5 uses
  %.06186 = phi i32 [ %.364, %bb.i ], [ 0, %bb.a ] ; 5 uses
  %.06585 = phi i32 [ %.4, %bb.i ], [ 0, %bb.a ]  ; 5 uses
  %i.c = and i32 %.05290, 1
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = ashr i32 %.05290, 1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32    ; 2 uses
  %i.h = and i8 %i.g, 15
  %i.i = lshr i8 %i.g, 4
  %.in = select i1 %.not, i8 %i.i, i8 %i.h
  %i.j = zext nneg i8 %.in to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !49   ; 2 uses
  %i.m = add nsw i32 %.05290, 1                   ; 3 uses
  %.not77 = icmp eq i16 %i.l, 0
  br i1 %.not77, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph91
  %i.n = trunc i16 %i.l to i8
  %i.o = add i8 %.05389, %i.n                     ; 2 uses
  %i.p = mul nsw i32 %.06186, %5
  %i.q = shl nsw i32 %.06585, 2
  %i.r = add nsw i32 %i.p, %i.q
  %i.s = add nsw i32 %i.r, %.05787
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 %i.o, ptr %i.u, align 1, !tbaa !32
  %i.v = add nsw i32 %.06585, 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph91
  %.not78 = icmp slt i32 %i.m, %i.a
  br i1 %.not78, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = ashr i32 %i.m, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !32    ; 2 uses
  %i.aa = and i8 %i.z, 15
  %i.ab = lshr i8 %i.z, 4
  %.in80 = select i1 %.not, i8 %i.aa, i8 %i.ab
  %narrow = add nuw nsw i8 %.in80, 1
  %i.ac = zext nneg i8 %narrow to i32
  %i.ad = add nsw i32 %.05290, 2                  ; 2 uses
  %i.ae = sub nsw i32 %3, %.06585                 ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.ac) ; 4 uses
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ah = mul nsw i32 %.06186, %5
  %i.ai = add i32 %.05787, %i.ah                  ; 3 uses
  %i.aj = sext i32 %.06585 to i64                 ; 2 uses
  %xtraiter = and i32 %i.af, 1
  %i.ak = icmp eq i32 %i.af, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.af, 30
  %invariant.op = add i32 4, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.al = shl i32 %indvars.iv.tr, 2
  %i.am = add i32 %i.ai, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  store i8 %.05389, ptr %i.ao, align 1, !tbaa !32
  %i.ap = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ap, 2
  %.reass = add i32 %indvars.iv.tr.1, %invariant.op
  %i.aq = sext i32 %.reass to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  store i8 %.05389, ptr %i.ar, align 1, !tbaa !32
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !203

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod98 = trunc i32 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil.init to i32
  %i.as = shl i32 %indvars.iv.tr.epil, 2
  %i.at = add i32 %i.ai, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  store i8 %.05389, ptr %i.av, align 1, !tbaa !32
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.epil.preheader ]
  %i.aw = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.b
  %.267 = phi i32 [ %i.v, %bb.b ], [ %.06585, %bb.d ], [ %i.aw, %.loopexit.loopexit ] ; 2 uses
  %.154 = phi i8 [ %i.o, %bb.b ], [ %.05389, %bb.d ], [ %.05389, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.m, %bb.b ], [ %i.ad, %bb.d ], [ %i.ad, %.loopexit.loopexit ] ; 2 uses
  %.not81 = icmp slt i32 %.267, %3
  br i1 %.not81, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ax = add nsw i32 %.05787, 1
  %i.ay = icmp sgt i32 %.05787, 2
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = add nsw i32 %.06186, 1                  ; 2 uses
  %.not82 = icmp slt i32 %i.az, %4
  br i1 %.not82, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.f
  %.162 = phi i32 [ %.06186, %bb.f ], [ %i.az, %bb.g ]
  %.158 = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.g ]
  %i.ba = add nsw i32 %.1, 1
  %i.bb = and i32 %i.ba, -2
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  %.4 = phi i32 [ 0, %bb.h ], [ %.267, %.loopexit ]
  %.364 = phi i32 [ %.162, %bb.h ], [ %.06186, %.loopexit ]
  %.360 = phi i32 [ %.158, %bb.h ], [ %.05787, %.loopexit ]
  %.356 = phi i8 [ 0, %bb.h ], [ %.154, %.loopexit ]
  %.3 = phi i32 [ %i.bb, %bb.h ], [ %.1, %.loopexit ] ; 2 uses
  %i.bc = icmp slt i32 %.3, %i.a
  br i1 %i.bc, label %.lr.ph91, label %.critedge, !llvm.loop !204

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_long_vertical_delta(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %3, 31                           ; 2 uses
  %i.b = ashr i32 %i.a, 5                         ; 4 uses
  %i.c = add nsw i32 %3, 15
  %i.d = sdiv i32 %i.c, 16
  %i.e = shl nsw i32 %i.d, 1                      ; 2 uses
  %i.f = mul i32 %i.e, %4                         ; 21 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = icmp slt i64 %i.i, 65
  br i1 %i.j, label %.loopexit208, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv i32 %i.a, 32
  %i.l = shl nsw i32 %i.k, 2
  %.not.not = icmp ne i32 %i.e, %i.l              ; 2 uses
  %i.m = trunc i64 %i.i to i32                    ; 2 uses
  %i.n = icmp ne ptr %1, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i101 = and i1 %i.n, %i.o
  br i1 %or.cond.i101, label %bytestream2_init.exit102, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit102:                         ; preds = %bb.b
  %i.p = and i64 %i.i, 2147483647
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = icmp samesign ugt i32 %i.m, 31
  br i1 %i.s, label %bytestream2_init.exit100, label %bb.d

bb.d:                                             ; preds = %bytestream2_init.exit102
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit100:                         ; preds = %bytestream2_init.exit102
  %i.t = add nuw i64 %i.i, 4294967264
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u ; 3 uses
  %i.w = icmp ne ptr %0, null
  %i.x = icmp sgt i32 %5, -1
  %or.cond.i118 = and i1 %i.w, %i.x
  br i1 %or.cond.i118, label %bytestream2_init_writer.exit, label %bb.e

bb.e:                                             ; preds = %bytestream2_init.exit100
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 151) #10
  tail call void @abort() #11
  unreachable

bytestream2_init_writer.exit:                     ; preds = %bytestream2_init.exit100
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph241, label %.loopexit208

.lr.ph241:                                        ; preds = %bytestream2_init_writer.exit
  %i.z = zext nneg i32 %5 to i64                  ; 3 uses
  %i.aa = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ac = icmp sgt i32 %i.b, 0
  %invariant.op = add nsw i64 %i.z, -4            ; 3 uses
  %invariant.op213 = add nsw i64 %i.z, -2         ; 3 uses
  %i.ad = add nsw i32 %i.b, -1
  %i.ae = sext i32 %i.f to i64
  br i1 %i.ac, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %broadcast.splatinsert353 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat354 = shufflevector <4 x i32> %broadcast.splatinsert353, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert355 = insertelement <4 x i64> poison, i64 %invariant.op, i64 0
  %broadcast.splat356 = shufflevector <4 x i64> %broadcast.splatinsert355, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat360 = shufflevector <4 x i32> %broadcast.splatinsert359, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.af = mul <4 x i32> %broadcast.splat360, <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shl i32 %i.f, 2
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ah = shl i32 %i.f, 1
  %i.ai = mul i32 %i.f, 3
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %invariant.op213, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert330 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat331 = shufflevector <8 x i32> %broadcast.splatinsert330, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aj = mul <8 x i32> %broadcast.splat331, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ak = shl i32 %i.f, 3
  %broadcast.splatinsert332 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat333 = shufflevector <8 x i32> %broadcast.splatinsert332, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.al = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ap = shl i32 %i.f, 1
  %i.aq = mul i32 %i.f, 3
  %i.ar = mul <4 x i32> %i.ao, <i32 4, i32 5, i32 6, i32 7>
  br label %.lr.ph241.split.us

.lr.ph241.split.us:                               ; preds = %.lr.ph241.split.us.preheader, %..loopexit209_crit_edge.us
  %.0239.us = phi i32 [ %i.em, %..loopexit209_crit_edge.us ], [ 0, %.lr.ph241.split.us.preheader ] ; 3 uses
  %.sroa.0172.0238.us = phi ptr [ %.sroa.0172.1.us, %..loopexit209_crit_edge.us ], [ %i.r, %.lr.ph241.split.us.preheader ] ; 3 uses
  %.sroa.0183.0237.us = phi ptr [ %.sroa.0183.1.us, %..loopexit209_crit_edge.us ], [ %1, %.lr.ph241.split.us.preheader ] ; 3 uses
  %i.as = ptrtoint ptr %.sroa.0183.0237.us to i64
  %i.at = sub i64 %i.aa, %i.as
  %i.au = icmp slt i64 %i.at, 4
  br i1 %i.au, label %bytestream2_get_be32.exit109.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph241.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0183.0237.us, i64 4
  %i.aw = load i32, ptr %.sroa.0183.0237.us, align 1, !tbaa !32
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  br label %bytestream2_get_be32.exit109.us

bytestream2_get_be32.exit109.us:                  ; preds = %bb.f, %.lr.ph241.split.us
  %.sroa.0183.1.us = phi ptr [ %i.av, %bb.f ], [ %i.q, %.lr.ph241.split.us ]
  %.0.i108.us = phi i32 [ %i.ax, %bb.f ], [ 0, %.lr.ph241.split.us ] ; 2 uses
  %i.ay = ptrtoint ptr %.sroa.0172.0238.us to i64
  %i.az = sub i64 %i.ab, %i.ay
  %i.ba = icmp slt i64 %i.az, 4
  br i1 %i.ba, label %bytestream2_get_be32.exit107.us, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_be32.exit109.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238.us, i64 4
  %i.bc = load i32, ptr %.sroa.0172.0238.us, align 1, !tbaa !32
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = zext i32 %i.bd to i64
  br label %bytestream2_get_be32.exit107.us

bytestream2_get_be32.exit107.us:                  ; preds = %bb.g, %bytestream2_get_be32.exit109.us
  %.sroa.0172.1.us = phi ptr [ %i.bb, %bb.g ], [ %i.v, %bytestream2_get_be32.exit109.us ]
  %.0.i106.us = phi i64 [ %i.be, %bb.g ], [ 0, %bytestream2_get_be32.exit109.us ] ; 2 uses
  %.not86.us = icmp eq i32 %.0.i108.us, 0
  br i1 %.not86.us, label %..loopexit209_crit_edge.us, label %bb.h

bb.h:                                             ; preds = %bytestream2_get_be32.exit107.us
  %i.bf = zext i32 %.0.i108.us to i64             ; 2 uses
  %.not87.us = icmp sgt i64 %i.i, %i.bf
  %.not88.us = icmp samesign ugt i64 %i.i, %.0.i106.us
  %or.cond206.us = select i1 %.not87.us, i1 %.not88.us, i1 false
  br i1 %or.cond206.us, label %bb.i, label %.loopexit208

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.g, %i.bh                     ; 2 uses
  %i.bj = and i64 %i.bi, 2147483648
end_hunk_1
