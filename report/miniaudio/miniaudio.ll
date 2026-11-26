Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_dr_mp3_version:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_dr_mp3_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_dr_mp3dec_init(ptr nofree noundef writeonly captures(none) initializes((6152, 6153)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6152
  store i8 0, ptr %i.a, align 8, !tbaa !119
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 1153) i32 @ma_dr_mp3dec_decode_frame(ptr noundef initializes((6155, 6156)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #27 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 12 uses
  %i.b = alloca [40 x i8], align 16               ; 12 uses
  %5 = alloca [1 x %struct.ma_dr_mp3_bs], align 16 ; 7 uses
  %6 = alloca [1 x %struct.ma_dr_mp3_L12_scale_info], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.c = icmp sgt i32 %2, 4
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !119
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %.lr.ph125.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !119
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %.lr.ph125.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !119   ; 4 uses
  %i.k = zext i8 %i.j to i32                      ; 7 uses
  %i.l = and i32 %i.k, 240
  %i.m = icmp ne i32 %i.l, 240
  %i.n = and i32 %i.k, 254
  %i.o = icmp ne i32 %i.n, 226
  %or.cond.not11.i.i = and i1 %i.m, %i.o
  %i.p = and i8 %i.j, 6                           ; 2 uses
  %.not.i.i = icmp eq i8 %i.p, 0
  %or.cond8.i.i = or i1 %.not.i.i, %or.cond.not11.i.i
  br i1 %or.cond8.i.i, label %.lr.ph125.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !119   ; 7 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.mask.i.i = and i32 %i.s, 240
  %.not6.i.i = icmp eq i32 %.mask.i.i, 240
  %i.t = and i32 %i.s, 12
  %.not8.i = icmp eq i32 %i.t, 12
  %or.cond.i = or i1 %.not6.i.i, %.not8.i
  br i1 %or.cond.i, label %.lr.ph125.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6153
  %i.v = load i8, ptr %i.u, align 1, !tbaa !119
  %i.w = xor i8 %i.v, %i.j
  %i.x = icmp ult i8 %i.w, 2
  br i1 %i.x, label %bb.g, label %.lr.ph125.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.z = load i8, ptr %i.y, align 2, !tbaa !119   ; 2 uses
  %i.aa = xor i8 %i.z, %i.r
  %i.ab = and i8 %i.aa, 12
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %ma_dr_mp3_hdr_compare.exit, label %.lr.ph125.preheader.i

ma_dr_mp3_hdr_compare.exit:                       ; preds = %bb.g
  %i.ad = icmp ult i8 %i.z, 16
  %i.ae = icmp ult i8 %i.r, 16                    ; 2 uses
  %.not = xor i1 %i.ae, %i.ad
  br i1 %.not, label %.lr.ph125.preheader.i, label %ma_dr_mp3_hdr_padding.exit

ma_dr_mp3_hdr_padding.exit:                       ; preds = %ma_dr_mp3_hdr_compare.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6148
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3025
  %i.ah = and i32 %i.k, 6
  %i.ai = icmp eq i32 %i.ah, 6
  %i.aj = and i32 %i.k, 14
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = zext i1 %i.ak to i32
  %i.am = lshr exact i32 1152, %i.al
  %i.an = lshr i32 %i.k, 3
  %.lobit.i.i = and i32 %i.an, 1                  ; 2 uses
  %i.ao = zext nneg i32 %.lobit.i.i to i64
  %i.ap = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.ao
  %i.aq = lshr i32 %i.k, 1
  %i.ar = and i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [15 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -15
  %i.av = lshr i8 %i.r, 4
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !119
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.am, 250
  %i.bb = select i1 %i.ai, i32 96000, i32 %i.ba
  %i.bc = mul nuw nsw i32 %i.bb, %i.az
  %i.bd = lshr i8 %i.r, 2
  %i.be = and i8 %i.bd, 3
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !118
  %i.bi = xor i32 %.lobit.i.i, 1
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = lshr i32 %i.k, 4
  %.lobit3.i.i = and i32 %i.bk, 1
  %i.bl = xor i32 %.lobit3.i.i, 1
  %i.bm = lshr i32 %i.bj, %i.bl
  %i.bn = udiv i32 %i.bc, %i.bm                   ; 2 uses
  %i.bo = icmp eq i8 %i.p, 6                      ; 2 uses
  %i.bp = and i32 %i.bn, 134217724
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 %i.bn ; 2 uses
  %.not.i = icmp eq i32 %spec.select.i, 0
  %i.bq = select i1 %.not.i, i32 %i.ag, i32 %spec.select.i
  %i.br = and i8 %i.r, 2
  %.not.i127 = icmp eq i8 %i.br, 0
  %i.bs = select i1 %i.bo, i32 4, i32 1
  %spec.select = select i1 %.not.i127, i32 0, i32 %i.bs
  %i.bt = add nsw i32 %i.bq, %spec.select         ; 5 uses
  %.not110 = icmp eq i32 %i.bt, %2
  br i1 %.not110, label %.thread212, label %bb.h

bb.h:                                             ; preds = %ma_dr_mp3_hdr_padding.exit
  %i.bu = add nsw i32 %i.bt, 4
  %i.bv = icmp sgt i32 %i.bu, %2
  br i1 %i.bv, label %.lr.ph125.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !119
  %i.bz = icmp eq i8 %i.by, -1
  br i1 %i.bz, label %bb.j, label %.lr.ph125.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !119 ; 3 uses
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %i.cd = and i32 %i.cc, 240
  %i.ce = icmp ne i32 %i.cd, 240
  %i.cf = and i32 %i.cc, 254
  %i.cg = icmp ne i32 %i.cf, 226
  %or.cond.not11.i.i128 = and i1 %i.ce, %i.cg
  %i.ch = and i8 %i.cb, 6
  %.not.i.i129 = icmp eq i8 %i.ch, 0
  %or.cond8.i.i130 = or i1 %.not.i.i129, %or.cond.not11.i.i128
  br i1 %or.cond8.i.i130, label %.lr.ph125.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !119 ; 3 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %.mask.i.i131 = and i32 %i.ck, 240
  %.not6.i.i132 = icmp ne i32 %.mask.i.i131, 240
  %i.cl = and i32 %i.ck, 12
  %.not8.i133 = icmp ne i32 %i.cl, 12
  %or.cond.i134.not229 = and i1 %.not6.i.i132, %.not8.i133
  %i.cm = xor i8 %i.cb, %i.j
  %i.cn = icmp ult i8 %i.cm, 2
  %or.cond228 = and i1 %i.cn, %or.cond.i134.not229
  br i1 %or.cond228, label %bb.l, label %.lr.ph125.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.co = xor i8 %i.cj, %i.r
  %i.cp = and i8 %i.co, 12
  %i.cq = icmp ne i8 %i.cp, 0
  %i.cr = icmp ult i8 %i.cj, 16
  %.not111 = xor i1 %i.ae, %i.cr
  %or.cond563 = or i1 %i.cq, %.not111
  %.not112 = icmp eq i32 %i.bt, 0
  %or.cond564 = or i1 %or.cond563, %.not112
  br i1 %or.cond564, label %.lr.ph125.preheader.i, label %.thread212

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  br label %ma_dr_mp3d_find_frame.exit.thread

.lr.ph125.preheader.i:                            ; preds = %bb.h, %bb.l, %bb.i, %bb.k, %bb.j, %bb.d, %bb.e, %bb.c, %bb.f, %bb.g, %bb.b, %ma_dr_mp3_hdr_compare.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6148 ; 2 uses
  %i.ct = add nsw i32 %2, -4                      ; 3 uses
  %i.cu = zext nneg i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.ct to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %.lr.ph125.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next141.i, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 7 uses
  %.063121.i = phi ptr [ %1, %.lr.ph125.preheader.i ], [ %i.kd, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 6 uses
  %i.cv = load i8, ptr %.063121.i, align 1, !tbaa !119
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.n, label %ma_dr_mp3_hdr_valid.exit.thread.i

bb.n:                                             ; preds = %.lr.ph125.i
  %i.cx = getelementptr i8, ptr %.063121.i, i64 1 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !119 ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 7 uses
  %i.da = and i32 %i.cz, 240
  %i.db = icmp ne i32 %i.da, 240
  %i.dc = and i32 %i.cz, 254
  %i.dd = icmp ne i32 %i.dc, 226
  %or.cond.not11.i.i136 = and i1 %i.db, %i.dd
  %i.de = and i8 %i.cy, 6                         ; 2 uses
  %.not.i.i137 = icmp eq i8 %i.de, 0
  %or.cond8.i.i138 = or i1 %.not.i.i137, %or.cond.not11.i.i136
  br i1 %or.cond8.i.i138, label %ma_dr_mp3_hdr_valid.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr i8, ptr %.063121.i, i64 2 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !119 ; 4 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %.mask.i.i139 = and i32 %i.dh, 240
  %.not6.i.i140 = icmp eq i32 %.mask.i.i139, 240
  %i.di = and i32 %i.dh, 12
  %.not105.i = icmp eq i32 %i.di, 12
  %or.cond107.i = or i1 %.not6.i.i140, %.not105.i
  br i1 %or.cond107.i, label %ma_dr_mp3_hdr_valid.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit.i

ma_dr_mp3_hdr_padding.exit.i:                     ; preds = %bb.o
  %i.dj = and i32 %i.cz, 6
  %i.dk = icmp eq i32 %i.dj, 6
  %i.dl = and i32 %i.cz, 14
  %i.dm = icmp eq i32 %i.dl, 2
  %i.dn = zext i1 %i.dm to i32
  %i.do = lshr exact i32 1152, %i.dn
  %i.dp = lshr i32 %i.cz, 3
  %.lobit.i.i.i = and i32 %i.dp, 1                ; 2 uses
  %i.dq = zext nneg i32 %.lobit.i.i.i to i64
  %i.dr = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.dq
  %i.ds = lshr i32 %i.cz, 1
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr [15 x i8], ptr %i.dr, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -15
  %i.dx = lshr i8 %i.dg, 4
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !119
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.do, 250
  %i.ed = select i1 %i.dk, i32 96000, i32 %i.ec
  %i.ee = mul nuw nsw i32 %i.ed, %i.eb
  %i.ef = lshr i8 %i.dg, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !118
  %i.ek = xor i32 %.lobit.i.i.i, 1
  %i.el = lshr i32 %i.ej, %i.ek
  %i.em = lshr i32 %i.cz, 4
  %.lobit3.i.i.i = and i32 %i.em, 1
  %i.en = xor i32 %.lobit3.i.i.i, 1
  %i.eo = lshr i32 %i.el, %i.en
  %i.ep = udiv i32 %i.ee, %i.eo                   ; 2 uses
  %i.eq = icmp eq i8 %i.de, 6                     ; 2 uses
  %i.er = and i32 %i.ep, 134217724
  %spec.select.i.i = select i1 %i.eq, i32 %i.er, i32 %i.ep ; 3 uses
  %i.es = and i8 %i.dg, 2
  %.not.i76.i = icmp eq i8 %i.es, 0
  %i.et = select i1 %i.eq, i32 4, i32 1
  %spec.select.i141 = select i1 %.not.i76.i, i32 0, i32 %i.et
  %i.eu = add nuw nsw i32 %spec.select.i.i, %spec.select.i141 ; 3 uses
  %i.ev = icmp eq i32 %spec.select.i.i, 0
  %i.ew = trunc nuw nsw i64 %indvars.iv140.i to i32 ; 3 uses
  br i1 %i.ev, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %ma_dr_mp3_hdr_padding.exit.i
  %i.ex = add nuw nsw i64 %indvars.iv140.i, 4
  %i.ey = trunc i64 %indvars.iv140.i to i32
  %i.ez = add i32 %i.ey, 8
  %i.fa = icmp sgt i32 %i.ct, %i.ez
  br i1 %i.fa, label %.lr.ph, label %.critedge.thread.i

bb.p:                                             ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i641, 1 ; 2 uses
  %i.fb = shl nuw nsw i64 %indvars.iv.next.i, 1
  %i.fc = add nuw nsw i64 %i.fb, %indvars.iv140.i
  %i.fd = trunc nuw i64 %i.fc to i32
  %i.fe = icmp sgt i32 %i.ct, %i.fd
  br i1 %i.fe, label %.lr.ph, label %.critedge.thread.i, !llvm.loop !2970

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.p
  %.054118.i642 = phi i32 [ %.2.i, %bb.p ], [ %i.eu, %.lr.ph.i ] ; 11 uses
  %indvars.iv.i641 = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 4, %.lr.ph.i ] ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.063121.i, i64 %indvars.iv.i641 ; 4 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !119
  %i.fh = icmp eq i8 %i.fg, -1
  br i1 %i.fh, label %bb.q, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.q:                                             ; preds = %.lr.ph
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !119 ; 3 uses
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = and i32 %i.fk, 240
  %i.fm = icmp ne i32 %i.fl, 240
  %i.fn = and i32 %i.fk, 254
  %i.fo = icmp ne i32 %i.fn, 226
  %or.cond.not11.i.i.i = and i1 %i.fm, %i.fo
  %i.fp = and i8 %i.fj, 6                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fp, 0
  %or.cond8.i.i.i = or i1 %.not.i.i.i, %or.cond.not11.i.i.i
  br i1 %or.cond8.i.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !119 ; 4 uses
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %.mask.i.i.i = and i32 %i.fs, 240
  %.not6.i.i.i = icmp eq i32 %.mask.i.i.i, 240
  %i.ft = and i32 %i.fs, 12
  %.not8.i.i = icmp eq i32 %i.ft, 12
  %or.cond.i.i = or i1 %.not6.i.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fu = load i8, ptr %i.cx, align 1, !tbaa !119 ; 3 uses
  %i.fv = xor i8 %i.fu, %i.fj
  %i.fw = icmp ult i8 %i.fv, 2
  br i1 %i.fw, label %bb.t, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.fx = load i8, ptr %i.df, align 1, !tbaa !119 ; 4 uses
  %i.fy = xor i8 %i.fx, %i.fr
  %i.fz = and i8 %i.fy, 12
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %ma_dr_mp3_hdr_compare.exit.i, label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.i:                     ; preds = %bb.t
  %i.gb = icmp ult i8 %i.fx, 16                   ; 2 uses
  %i.gc = icmp ult i8 %i.fr, 16
  %.not70.i = xor i1 %i.gc, %i.gb
  br i1 %.not70.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit78.i

ma_dr_mp3_hdr_padding.exit78.i:                   ; preds = %ma_dr_mp3_hdr_compare.exit.i
  %i.gd = and i8 %i.fx, 2
  %.not.i77.i = icmp eq i8 %i.gd, 0
  %i.ge = and i8 %i.fu, 6
  %i.gf = icmp eq i8 %i.ge, 6
  %.neg.i = select i1 %i.gf, i32 -4, i32 -1
  %.neg106.i = select i1 %.not.i77.i, i32 0, i32 %.neg.i
  %i.gg = trunc nuw nsw i64 %indvars.iv.i641 to i32 ; 2 uses
  %i.gh = add nsw i32 %.neg106.i, %i.gg           ; 3 uses
  %i.gi = and i8 %i.fr, 2
  %.not.i79.i = icmp eq i8 %i.gi, 0
  %i.gj = icmp eq i8 %i.fp, 6
  %i.gk = select i1 %i.gj, i32 4, i32 1
  %i.gl = select i1 %.not.i79.i, i32 0, i32 %i.gk
  %i.gm = add nsw i32 %i.gh, %i.gl                ; 2 uses
  %i.gn = add nuw nsw i64 %i.ex, %indvars.iv.i641
  %i.go = trunc nuw i64 %i.gn to i32
  %i.gp = add i32 %i.gm, %i.go
  %i.gq = icmp sgt i32 %i.gp, %2
  br i1 %i.gq, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %ma_dr_mp3_hdr_padding.exit78.i
  %i.gr = sext i32 %i.gm to i64
  %i.gs = getelementptr inbounds i8, ptr %i.ff, i64 %i.gr ; 3 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !119
  %i.gu = icmp eq i8 %i.gt, -1
  br i1 %i.gu, label %bb.v, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !119 ; 3 uses
  %i.gx = zext i8 %i.gw to i32                    ; 2 uses
  %i.gy = and i32 %i.gx, 240
  %i.gz = icmp ne i32 %i.gy, 240
  %i.ha = and i32 %i.gx, 254
  %i.hb = icmp ne i32 %i.ha, 226
  %or.cond.not11.i.i81.i = and i1 %i.gz, %i.hb
  %i.hc = and i8 %i.gw, 6
  %.not.i.i82.i = icmp eq i8 %i.hc, 0
  %or.cond8.i.i83.i = or i1 %.not.i.i82.i, %or.cond.not11.i.i81.i
  br i1 %or.cond8.i.i83.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !119 ; 3 uses
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %.mask.i.i84.i = and i32 %i.hf, 240
  %.not6.i.i85.i = icmp ne i32 %.mask.i.i84.i, 240
  %i.hg = and i32 %i.hf, 12
  %.not8.i86.i = icmp ne i32 %i.hg, 12
  %or.cond.i87.not157.i = and i1 %.not6.i.i85.i, %.not8.i86.i
  %i.hh = xor i8 %i.gw, %i.fu
  %i.hi = icmp ult i8 %i.hh, 2
  %or.cond155.i.a = and i1 %i.hi, %or.cond.i87.not157.i
  br i1 %or.cond155.i.a, label %bb.x, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.hj = xor i8 %i.he, %i.fx
  %i.hk = and i8 %i.hj, 12
  %i.hl = icmp ne i8 %i.hk, 0
  %i.hm = icmp ult i8 %i.he, 16
  %.not71.i = xor i1 %i.gb, %i.hm
  %or.cond156.i = or i1 %.not71.i, %i.hl
  br i1 %or.cond156.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.gh, ptr %i.cs, align 4, !tbaa !118
  br label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.thread.i:              ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %ma_dr_mp3_hdr_padding.exit78.i, %ma_dr_mp3_hdr_compare.exit.i, %bb.t, %bb.s, %bb.r, %bb.q, %.lr.ph
  %.257.i = phi i32 [ 0, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gh, %bb.y ], [ 0, %bb.w ], [ 0, %ma_dr_mp3_hdr_padding.exit78.i ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %.lr.ph ], [ 0, %bb.r ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.2.i = phi i32 [ %.054118.i642, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gg, %bb.y ], [ %.054118.i642, %bb.w ], [ %.054118.i642, %ma_dr_mp3_hdr_padding.exit78.i ], [ %.054118.i642, %bb.q ], [ %.054118.i642, %bb.t ], [ %.054118.i642, %bb.s ], [ %.054118.i642, %.lr.ph ], [ %.054118.i642, %bb.r ], [ %.054118.i642, %bb.x ], [ %.054118.i642, %bb.v ], [ %.054118.i642, %bb.u ] ; 3 uses
  %i.hn = icmp eq i32 %.257.i, 0                  ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.i641, 2303
  %or.cond.i143 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond.i143, label %bb.p, label %.critedge.i, !llvm.loop !2970

.critedge.i:                                      ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %ma_dr_mp3_hdr_padding.exit.i
  %.055.lcssa.i = phi i32 [ %spec.select.i.i, %ma_dr_mp3_hdr_padding.exit.i ], [ %.257.i, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %.054.lcssa.i = phi i32 [ %i.eu, %ma_dr_mp3_hdr_padding.exit.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 9 uses
  %.lcssa.i = phi i1 [ false, %ma_dr_mp3_hdr_padding.exit.i ], [ %i.hn, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %i.hp = add nsw i32 %.054.lcssa.i, %i.ew        ; 2 uses
  %.not67.i = icmp sgt i32 %i.hp, %2
  %or.cond72.i = select i1 %.lcssa.i, i1 true, i1 %.not67.i
  br i1 %or.cond72.i, label %.critedge.thread.i, label %bb.z

bb.z:                                             ; preds = %.critedge.i
  %i.hq = sub nuw nsw i64 %i.cu, %indvars.iv140.i
  %.val.pre.i.i = load i8, ptr %i.cx, align 1, !tbaa !119 ; 2 uses
  %.val16.pre.i.i = load i8, ptr %i.df, align 1, !tbaa !119 ; 3 uses
  %7 = icmp ult i8 %.val16.pre.i.i, 16
  br label %ma_dr_mp3_hdr_padding.exit.i.i

ma_dr_mp3_hdr_padding.exit.i.i:                   ; preds = %bb.ae, %bb.z
  %.val16.i.i = phi i8 [ %.val16.pre.i.i, %bb.z ], [ %i.jx, %bb.ae ] ; 3 uses
  %.val.i.i = phi i8 [ %.val.pre.i.i, %bb.z ], [ %i.jp, %bb.ae ] ; 2 uses
  %.021.i.i = phi i32 [ 0, %bb.z ], [ %i.kb, %bb.ae ] ; 2 uses
  %.01420.i.i = phi i32 [ 0, %bb.z ], [ %i.jg, %bb.ae ]
  %i.hr = zext i8 %.val.i.i to i32                ; 5 uses
  %i.hs = and i32 %i.hr, 6
  %i.ht = icmp eq i32 %i.hs, 6
  %i.hu = and i32 %i.hr, 14
  %i.hv = icmp eq i32 %i.hu, 2
  %i.hw = zext i1 %i.hv to i32
  %i.hx = lshr exact i32 1152, %i.hw
  %i.hy = lshr i32 %i.hr, 3
  %.lobit.i.i.i.i = and i32 %i.hy, 1              ; 2 uses
  %i.hz = zext nneg i32 %.lobit.i.i.i.i to i64
  %i.ia = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.hz
  %i.ib = lshr i32 %i.hr, 1
  %i.ic = and i32 %i.ib, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr [15 x i8], ptr %i.ia, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 -15
  %i.ig = lshr i8 %.val16.i.i, 4
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !119
  %i.ik = zext i8 %i.ij to i32
  %i.il = mul nuw nsw i32 %i.hx, 250
  %i.im = select i1 %i.ht, i32 96000, i32 %i.il
  %i.in = mul nuw nsw i32 %i.im, %i.ik
  %i.io = lshr i8 %.val16.i.i, 2
  %i.ip = and i8 %i.io, 3
  %i.iq = zext nneg i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !118
  %i.it = xor i32 %.lobit.i.i.i.i, 1
  %i.iu = lshr i32 %i.is, %i.it
  %i.iv = lshr i32 %i.hr, 4
  %.lobit3.i.i.i.i = and i32 %i.iv, 1
  %i.iw = xor i32 %.lobit3.i.i.i.i, 1
  %i.ix = lshr i32 %i.iu, %i.iw
  %i.iy = udiv i32 %i.in, %i.ix                   ; 2 uses
  %i.iz = and i8 %.val.i.i, 6
  %i.ja = icmp eq i8 %i.iz, 6                     ; 2 uses
  %i.jb = and i32 %i.iy, 134217724
  %spec.select.i.i.i = select i1 %i.ja, i32 %i.jb, i32 %i.iy ; 2 uses
  %.not.i.i89.i = icmp eq i32 %spec.select.i.i.i, 0
  %i.jc = select i1 %.not.i.i89.i, i32 %.055.lcssa.i, i32 %spec.select.i.i.i
  %i.jd = and i8 %.val16.i.i, 2
  %.not.i17.i.i = icmp eq i8 %i.jd, 0
  %i.je = select i1 %i.ja, i32 4, i32 1
  %spec.select.i90.i = select i1 %.not.i17.i.i, i32 0, i32 %i.je
  %i.jf = add i32 %spec.select.i90.i, %.01420.i.i
  %i.jg = add i32 %i.jf, %i.jc                    ; 3 uses
  %i.jh = add nsw i32 %i.jg, 4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %i.hq, %i.ji
  br i1 %i.jj, label %ma_dr_mp3d_match_frame.exit.i, label %bb.aa

bb.aa:                                            ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %i.jk = sext i32 %i.jg to i64
  %i.jl = getelementptr inbounds i8, ptr %.063121.i, i64 %i.jk ; 3 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !119
  %i.jn = icmp eq i8 %i.jm, -1
  br i1 %i.jn, label %bb.ab, label %.critedge.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !119 ; 4 uses
  %i.jq = zext i8 %i.jp to i32                    ; 2 uses
  %i.jr = and i32 %i.jq, 240
  %i.js = icmp ne i32 %i.jr, 240
  %i.jt = and i32 %i.jq, 254
  %i.ju = icmp ne i32 %i.jt, 226
  %or.cond.not11.i.i.i.i = and i1 %i.js, %i.ju
  %i.jv = and i8 %i.jp, 6
  %.not.i.i.i.i = icmp eq i8 %i.jv, 0
  %or.cond8.i.i.i.i = or i1 %.not.i.i.i.i, %or.cond.not11.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %.critedge.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !119 ; 4 uses
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %.mask.i.i.i.i = and i32 %i.jy, 240
  %.not6.i.i.i.i = icmp ne i32 %.mask.i.i.i.i, 240
  %i.jz = and i32 %i.jy, 12
  %.not8.i.i.i = icmp ne i32 %i.jz, 12
  %or.cond.i.not28.i.i = and i1 %.not6.i.i.i.i, %.not8.i.i.i
  %8 = xor i8 %i.jp, %.val.pre.i.i
  %9 = icmp ult i8 %8, 2
  %or.cond.i91.i = select i1 %or.cond.i.not28.i.i, i1 %9, i1 false
  br i1 %or.cond.i91.i, label %bb.ad, label %.critedge.thread.i

bb.ad:                                            ; preds = %bb.ac
  %10 = xor i8 %i.jx, %.val16.pre.i.i
  %11 = and i8 %10, 12
  %12 = icmp ne i8 %11, 0
  %i.ka = icmp ult i8 %i.jx, 16
  %.not.i92.i = xor i1 %7, %i.ka
  %or.cond27.i.i = select i1 %12, i1 true, i1 %.not.i92.i
  br i1 %or.cond27.i.i, label %.critedge.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kb = add nuw nsw i32 %.021.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.kb, 10
  br i1 %exitcond.not.i.i, label %ma_dr_mp3d_find_frame.exit, label %ma_dr_mp3_hdr_padding.exit.i.i, !llvm.loop !2971

ma_dr_mp3d_match_frame.exit.i:                    ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %.not.i142 = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i142, label %.critedge.thread.i, label %ma_dr_mp3d_find_frame.exit.loopexit332

.critedge.thread.i:                               ; preds = %bb.p, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i, %ma_dr_mp3d_match_frame.exit.i, %.critedge.i
  %.054112.i = phi i32 [ %i.eu, %.lr.ph.i ], [ %.054.lcssa.i, %.critedge.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ], [ %.054.lcssa.i, %bb.ad ], [ %.054.lcssa.i, %bb.aa ], [ %.054.lcssa.i, %bb.ab ], [ %.054.lcssa.i, %bb.ac ], [ %.2.i, %bb.p ]
  %.not69.i = icmp eq i64 %indvars.iv140.i, 0
  %i.kc = icmp eq i32 %.054112.i, %2
  %or.cond73.i = select i1 %.not69.i, i1 %i.kc, i1 false
  br i1 %or.cond73.i, label %ma_dr_mp3d_find_frame.exit.loopexit332, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i32 0, ptr %i.cs, align 4, !tbaa !118
  br label %ma_dr_mp3_hdr_valid.exit.thread.i

ma_dr_mp3_hdr_valid.exit.thread.i:                ; preds = %.thread.i, %bb.o, %bb.n, %.lr.ph125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.063121.i, i64 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_mp3d_find_frame.exit.thread, label %.lr.ph125.i, !llvm.loop !2972

ma_dr_mp3d_find_frame.exit.loopexit332:           ; preds = %ma_dr_mp3d_match_frame.exit.i, %.critedge.thread.i
  %storemerge.i.ph = phi i32 [ %2, %.critedge.thread.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.3.i.ph = phi i32 [ 0, %.critedge.thread.i ], [ %i.ew, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.pre408.a = add nsw i32 %.3.i.ph, %storemerge.i.ph
  br label %ma_dr_mp3d_find_frame.exit

ma_dr_mp3d_find_frame.exit:                       ; preds = %bb.ae, %ma_dr_mp3d_find_frame.exit.loopexit332
  %.pre-phi = phi i32 [ %.pre408.a, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.hp, %bb.ae ]
  %storemerge.i = phi i32 [ %storemerge.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %.054.lcssa.i, %bb.ae ] ; 2 uses
  %.3.i = phi i32 [ %.3.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.ew, %bb.ae ] ; 2 uses
  %.not113 = icmp eq i32 %storemerge.i, 0
  %i.ke = icmp sgt i32 %.pre-phi, %2
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.ke
  br i1 %or.cond117, label %ma_dr_mp3d_find_frame.exit.thread, label %.thread212

ma_dr_mp3d_find_frame.exit.thread:                ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %bb.m, %ma_dr_mp3d_find_frame.exit
  %.3.i222 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ %2, %bb.m ], [ %2, %ma_dr_mp3_hdr_valid.exit.thread.i ]
  store i32 %.3.i222, ptr %4, align 4, !tbaa !775
  br label %bb.fy

.thread212:                                       ; preds = %bb.l, %ma_dr_mp3_hdr_padding.exit, %ma_dr_mp3d_find_frame.exit
  %.1 = phi i32 [ %storemerge.i, %ma_dr_mp3d_find_frame.exit ], [ %i.bt, %bb.l ], [ %2, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %.095 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ 0, %bb.l ], [ 0, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %i.kf = sext i32 %.095 to i64
  %i.kg = getelementptr inbounds i8, ptr %1, i64 %i.kf ; 6 uses
  %i.kh = load i32, ptr %i.kg, align 1
  store i32 %i.kh, ptr %i.d, align 8
  %i.ki = add nsw i32 %.095, %.1
  store i32 %i.ki, ptr %4, align 4, !tbaa !775
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 3 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !119
  %i.kl = icmp ugt i8 %i.kk, -65
  %i.km = select i1 %i.kl, i32 1, i32 2
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !840
  %i.ko = getelementptr i8, ptr %i.kg, i64 1      ; 5 uses
  %.val121 = load i8, ptr %i.ko, align 1, !tbaa !119
  %i.kp = getelementptr i8, ptr %i.kg, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.kp, align 1, !tbaa !119
  %i.kq = lshr i8 %.val122, 2
  %i.kr = and i8 %i.kq, 3
  %i.ks = zext nneg i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !118
  %i.kv = zext i8 %.val121 to i32                 ; 2 uses
  %i.kw = lshr i32 %i.kv, 3
  %.lobit.i = and i32 %i.kw, 1
  %i.kx = xor i32 %.lobit.i, 1
  %i.ky = lshr i32 %i.ku, %i.kx
  %i.kz = lshr i32 %i.kv, 4
  %.lobit3.i = and i32 %i.kz, 1
  %i.la = xor i32 %.lobit3.i, 1
  %i.lb = lshr i32 %i.ky, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !837
  %i.ld = load i8, ptr %i.ko, align 1, !tbaa !119
  %i.le = lshr i8 %i.ld, 1
  %i.lf = and i8 %i.le, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.lf
  %i.lg = zext nneg i8 %narrow to i32
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !838
  %.val119 = load i8, ptr %i.ko, align 1, !tbaa !119
  %.val120 = load i8, ptr %i.kp, align 1, !tbaa !119
  %i.li = zext i8 %.val119 to i32                 ; 2 uses
  %i.lj = lshr i32 %i.li, 3
  %.lobit.i144 = and i32 %i.lj, 1
  %i.lk = zext nneg i32 %.lobit.i144 to i64
  %i.ll = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.lk
  %i.lm = lshr i32 %i.li, 1
  %i.ln = and i32 %i.lm, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr [15 x i8], ptr %i.ll, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 -15
  %i.lr = lshr i8 %.val120, 4
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !119
  %i.lv = zext i8 %i.lu to i32
  %i.lw = shl nuw nsw i32 %i.lv, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !839
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 9 uses
  store ptr %i.ly, ptr %5, align 16, !tbaa !776
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.lz, align 8, !tbaa !777
  %i.ma = shl i32 %.1, 3
  %i.mb = add i32 %i.ma, -32                      ; 10 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !778
  %i.md = load i8, ptr %i.ko, align 1, !tbaa !119
  %.fr = freeze i8 %i.md                          ; 4 uses
  %i.me = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.me, 0
  br i1 %.not114, label %bb.af, label %ma_dr_mp3_bs_get_bits.exit

bb.af:                                            ; preds = %.thread212
  store i32 16, ptr %i.lz, align 8, !tbaa !777
  br label %ma_dr_mp3_bs_get_bits.exit

ma_dr_mp3_bs_get_bits.exit:                       ; preds = %bb.af, %.thread212
  %.promoted = phi i32 [ 0, %.thread212 ], [ 16, %bb.af ]
  %i.mf = icmp eq i8 %i.lf, 1
  br i1 %i.mf, label %bb.ag, label %bb.en

bb.ag:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.mi = call fastcc i32 @ma_dr_mp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.mh, ptr noundef nonnull %i.kg) ; 4 uses
  %i.mj = icmp slt i32 %i.mi, 0
  br i1 %i.mj, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mk = load i32, ptr %i.lz, align 8, !tbaa !777 ; 3 uses
  %i.ml = load i32, ptr %i.mc, align 4, !tbaa !778 ; 2 uses
  %i.mm = icmp sgt i32 %i.mk, %i.ml
  br i1 %i.mm, label %.critedge, label %bb.ai

.critedge:                                        ; preds = %bb.ah, %bb.ag
  store i8 0, ptr %i.d, align 8, !tbaa !119
  br label %bb.fy

bb.ai:                                            ; preds = %bb.ah
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !3026 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.mo, i32 range(i32 0, -2147483648) %i.mi) ; 2 uses
  %i.mp = sub nsw i32 %i.mo, %i.mi
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.mp, i32 0)
  %i.mq = zext nneg i32 %narrow.i to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mq
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 6688 ; 4 uses
  %i.mu = sub nsw i32 %i.ml, %i.mk
  %i.mv = lshr i32 %i.mu, 3                       ; 2 uses
  %i.mw = sext i32 %..i to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mt, ptr nonnull readonly align 1 %i.ms, i64 %i.mw, i1 false)
  %i.mx = getelementptr inbounds i8, ptr %i.mt, i64 %i.mw
  %i.my = load ptr, ptr %5, align 16, !tbaa !776
  %i.mz = sdiv i32 %i.mk, 8
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 %i.na
  %i.nc = zext nneg i32 %i.mv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mx, ptr align 1 %i.nb, i64 %i.nc, i1 false)
  %i.nd = add nsw i32 %..i, %i.mv
  store ptr %i.mt, ptr %i.mg, align 8, !tbaa !776
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.ne, align 8, !tbaa !777
  %i.nf = shl nsw i32 %i.nd, 3                    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !778
  %i.nh = load i32, ptr %i.mn, align 8, !tbaa !3026
  %i.ni = icmp sge i32 %i.nh, %i.mi               ; 2 uses
  %i.nj = zext i1 %i.ni to i32
  %i.nk = icmp ne ptr %3, null
  %or.cond = and i1 %i.nk, %i.ni
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ai
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 9 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 6155 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 22848
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 14240 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 6153 ; 7 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 19 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 22887 ; 7 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 14400 ; 4 uses
  %i.nz = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %ma_dr_mp3_L3_decode.exit
  %i.od = phi i1 [ true, %.preheader ], [ false, %ma_dr_mp3_L3_decode.exit ]
  %.093324 = phi i32 [ 0, %.preheader ], [ 1, %ma_dr_mp3_L3_decode.exit ]
  %.0100323 = phi ptr [ %3, %.preheader ], [ %i.blx, %ma_dr_mp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.nl, i8 0, i64 4608, i1 false)
  %i.oe = load i32, ptr %i.kn, align 4, !tbaa !840 ; 4 uses
  %i.of = mul nuw nsw i32 %i.oe, %.093324
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [32 x i8], ptr %i.mh, i64 %i.og ; 7 uses
end_hunk_0
