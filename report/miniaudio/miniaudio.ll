Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_mp3_version:bb.a
bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
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
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3028
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
  %i.ct = add nsw i32 %2, -4                      ; 2 uses
  %7 = zext nneg i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.ct to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %.lr.ph125.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next141.i, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 6 uses
  %.063121.i = phi ptr [ %1, %.lr.ph125.preheader.i ], [ %i.kc, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 6 uses
  %i.cu = load i8, ptr %.063121.i, align 1, !tbaa !119
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.n, label %ma_dr_mp3_hdr_valid.exit.thread.i

bb.n:                                             ; preds = %.lr.ph125.i
  %i.cw = getelementptr i8, ptr %.063121.i, i64 1 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !119 ; 2 uses
  %i.cy = zext i8 %i.cx to i32                    ; 7 uses
  %i.cz = and i32 %i.cy, 240
  %i.da = icmp ne i32 %i.cz, 240
  %i.db = and i32 %i.cy, 254
  %i.dc = icmp ne i32 %i.db, 226
  %or.cond.not11.i.i136 = and i1 %i.da, %i.dc
  %i.dd = and i8 %i.cx, 6                         ; 2 uses
  %.not.i.i137 = icmp eq i8 %i.dd, 0
  %or.cond8.i.i138 = or i1 %.not.i.i137, %or.cond.not11.i.i136
  br i1 %or.cond8.i.i138, label %ma_dr_mp3_hdr_valid.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr i8, ptr %.063121.i, i64 2 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !119 ; 4 uses
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %.mask.i.i139 = and i32 %i.dg, 240
  %.not6.i.i140 = icmp eq i32 %.mask.i.i139, 240
  %i.dh = and i32 %i.dg, 12
  %.not105.i = icmp eq i32 %i.dh, 12
  %or.cond107.i = or i1 %.not6.i.i140, %.not105.i
  br i1 %or.cond107.i, label %ma_dr_mp3_hdr_valid.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit.i

ma_dr_mp3_hdr_padding.exit.i:                     ; preds = %bb.o
  %i.di = and i32 %i.cy, 6
  %i.dj = icmp eq i32 %i.di, 6
  %i.dk = and i32 %i.cy, 14
  %i.dl = icmp eq i32 %i.dk, 2
  %i.dm = zext i1 %i.dl to i32
  %i.dn = lshr exact i32 1152, %i.dm
  %i.do = lshr i32 %i.cy, 3
  %.lobit.i.i.i = and i32 %i.do, 1                ; 2 uses
  %i.dp = zext nneg i32 %.lobit.i.i.i to i64
  %i.dq = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.dp
  %i.dr = lshr i32 %i.cy, 1
  %i.ds = and i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr [15 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -15
  %i.dw = lshr i8 %i.df, 4
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !119
  %i.ea = zext i8 %i.dz to i32
  %i.eb = mul nuw nsw i32 %i.dn, 250
  %i.ec = select i1 %i.dj, i32 96000, i32 %i.eb
  %i.ed = mul nuw nsw i32 %i.ec, %i.ea
  %i.ee = lshr i8 %i.df, 2
  %i.ef = and i8 %i.ee, 3
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !118
  %i.ej = xor i32 %.lobit.i.i.i, 1
  %i.ek = lshr i32 %i.ei, %i.ej
  %i.el = lshr i32 %i.cy, 4
  %.lobit3.i.i.i = and i32 %i.el, 1
  %i.em = xor i32 %.lobit3.i.i.i, 1
  %i.en = lshr i32 %i.ek, %i.em
  %i.eo = udiv i32 %i.ed, %i.en                   ; 2 uses
  %i.ep = icmp eq i8 %i.dd, 6                     ; 2 uses
  %i.eq = and i32 %i.eo, 134217724
  %spec.select.i.i = select i1 %i.ep, i32 %i.eq, i32 %i.eo ; 3 uses
  %i.er = and i8 %i.df, 2
  %.not.i76.i = icmp eq i8 %i.er, 0
  %i.es = select i1 %i.ep, i32 4, i32 1
  %spec.select.i141 = select i1 %.not.i76.i, i32 0, i32 %i.es
  %i.et = add nuw nsw i32 %spec.select.i.i, %spec.select.i141 ; 2 uses
  %i.eu = icmp eq i32 %spec.select.i.i, 0
  %i.ev = trunc nuw nsw i64 %indvars.iv140.i to i32 ; 3 uses
  br i1 %i.eu, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %ma_dr_mp3_hdr_padding.exit.i
  %i.ew = add nuw nsw i64 %indvars.iv140.i, 4
  br label %bb.p

bb.p:                                             ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 6 uses
  %.054118.i = phi i32 [ %i.et, %.lr.ph.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 12 uses
  %i.ex = shl nuw nsw i64 %indvars.iv.i, 1
  %i.ey = add nuw nsw i64 %i.ex, %indvars.iv140.i
  %i.ez = trunc nuw i64 %i.ey to i32
  %i.fa = icmp sgt i32 %i.ct, %i.ez
  br i1 %i.fa, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.fb = getelementptr inbounds nuw i8, ptr %.063121.i, i64 %indvars.iv.i ; 4 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !119
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %bb.r, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !119 ; 3 uses
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  %i.fh = and i32 %i.fg, 240
  %i.fi = icmp ne i32 %i.fh, 240
  %i.fj = and i32 %i.fg, 254
  %i.fk = icmp ne i32 %i.fj, 226
  %or.cond.not11.i.i.i = and i1 %i.fi, %i.fk
  %i.fl = and i8 %i.ff, 6                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fl, 0
  %or.cond8.i.i.i = or i1 %.not.i.i.i, %or.cond.not11.i.i.i
  br i1 %or.cond8.i.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !119 ; 4 uses
  %i.fo = zext i8 %i.fn to i32                    ; 2 uses
  %.mask.i.i.i = and i32 %i.fo, 240
  %.not6.i.i.i = icmp eq i32 %.mask.i.i.i, 240
  %i.fp = and i32 %i.fo, 12
  %.not8.i.i = icmp eq i32 %i.fp, 12
  %or.cond.i.i = or i1 %.not6.i.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fq = load i8, ptr %i.cw, align 1, !tbaa !119 ; 3 uses
  %i.fr = xor i8 %i.fq, %i.ff
  %i.fs = icmp ult i8 %i.fr, 2
  br i1 %i.fs, label %bb.u, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.ft = load i8, ptr %i.de, align 1, !tbaa !119 ; 4 uses
  %i.fu = xor i8 %i.ft, %i.fn
  %i.fv = and i8 %i.fu, 12
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %ma_dr_mp3_hdr_compare.exit.i, label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.i:                     ; preds = %bb.u
  %i.fx = icmp ult i8 %i.ft, 16                   ; 2 uses
  %i.fy = icmp ult i8 %i.fn, 16
  %.not70.i = xor i1 %i.fy, %i.fx
  br i1 %.not70.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit78.i

ma_dr_mp3_hdr_padding.exit78.i:                   ; preds = %ma_dr_mp3_hdr_compare.exit.i
  %i.fz = and i8 %i.ft, 2
  %.not.i77.i = icmp eq i8 %i.fz, 0
  %i.ga = and i8 %i.fq, 6
  %i.gb = icmp eq i8 %i.ga, 6
  %.neg.i = select i1 %i.gb, i32 -4, i32 -1
  %.neg106.i = select i1 %.not.i77.i, i32 0, i32 %.neg.i
  %i.gc = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.gd = add nsw i32 %.neg106.i, %i.gc           ; 3 uses
  %i.ge = and i8 %i.fn, 2
  %.not.i79.i = icmp eq i8 %i.ge, 0
  %i.gf = icmp eq i8 %i.fl, 6
  %i.gg = select i1 %i.gf, i32 4, i32 1
  %i.gh = select i1 %.not.i79.i, i32 0, i32 %i.gg
  %i.gi = add nsw i32 %i.gd, %i.gh                ; 2 uses
  %i.gj = add nuw nsw i64 %i.ew, %indvars.iv.i
  %i.gk = trunc nuw i64 %i.gj to i32
  %i.gl = add i32 %i.gi, %i.gk
  %i.gm = icmp sgt i32 %i.gl, %2
  br i1 %i.gm, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %ma_dr_mp3_hdr_padding.exit78.i
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr inbounds i8, ptr %i.fb, i64 %i.gn ; 3 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !119
  %i.gq = icmp eq i8 %i.gp, -1
  br i1 %i.gq, label %bb.w, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !119 ; 3 uses
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = and i32 %i.gt, 240
  %i.gv = icmp ne i32 %i.gu, 240
  %i.gw = and i32 %i.gt, 254
  %i.gx = icmp ne i32 %i.gw, 226
  %or.cond.not11.i.i81.i = and i1 %i.gv, %i.gx
  %i.gy = and i8 %i.gs, 6
  %.not.i.i82.i = icmp eq i8 %i.gy, 0
  %or.cond8.i.i83.i = or i1 %.not.i.i82.i, %or.cond.not11.i.i81.i
  br i1 %or.cond8.i.i83.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !119 ; 3 uses
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %.mask.i.i84.i = and i32 %i.hb, 240
  %.not6.i.i85.i = icmp ne i32 %.mask.i.i84.i, 240
  %i.hc = and i32 %i.hb, 12
  %.not8.i86.i = icmp ne i32 %i.hc, 12
  %or.cond.i87.not157.i = and i1 %.not6.i.i85.i, %.not8.i86.i
  %i.hd = xor i8 %i.gs, %i.fq
  %i.he = icmp ult i8 %i.hd, 2
  %or.cond155.i = and i1 %i.he, %or.cond.i87.not157.i
  br i1 %or.cond155.i, label %bb.y, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.hf = xor i8 %i.ha, %i.ft
  %i.hg = and i8 %i.hf, 12
  %i.hh = icmp ne i8 %i.hg, 0
  %i.hi = icmp ult i8 %i.ha, 16
  %.not71.i = xor i1 %i.fx, %i.hi
  %or.cond156.i = or i1 %.not71.i, %i.hh
  br i1 %or.cond156.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.gd, ptr %i.cs, align 4, !tbaa !118
  br label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.thread.i:              ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %ma_dr_mp3_hdr_padding.exit78.i, %ma_dr_mp3_hdr_compare.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.257.i = phi i32 [ 0, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gd, %bb.z ], [ 0, %bb.x ], [ 0, %ma_dr_mp3_hdr_padding.exit78.i ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.2.i = phi i32 [ %.054118.i, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gc, %bb.z ], [ %.054118.i, %bb.x ], [ %.054118.i, %ma_dr_mp3_hdr_padding.exit78.i ], [ %.054118.i, %bb.r ], [ %.054118.i, %bb.u ], [ %.054118.i, %bb.t ], [ %.054118.i, %bb.q ], [ %.054118.i, %bb.s ], [ %.054118.i, %bb.y ], [ %.054118.i, %bb.w ], [ %.054118.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hj = icmp eq i32 %.257.i, 0                  ; 2 uses
  %i.hk = icmp samesign ult i64 %indvars.iv.i, 2303
  %or.cond.i143 = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %or.cond.i143, label %bb.p, label %.critedge.i, !llvm.loop !2973

.critedge.i:                                      ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %ma_dr_mp3_hdr_padding.exit.i
  %.055.lcssa.i = phi i32 [ %spec.select.i.i, %ma_dr_mp3_hdr_padding.exit.i ], [ %.257.i, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %.054.lcssa.i = phi i32 [ %i.et, %ma_dr_mp3_hdr_padding.exit.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 9 uses
  %.lcssa.i = phi i1 [ false, %ma_dr_mp3_hdr_padding.exit.i ], [ %i.hj, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %i.hl = add nsw i32 %.054.lcssa.i, %i.ev        ; 2 uses
  %.not67.i = icmp sgt i32 %i.hl, %2
  %or.cond72.i = select i1 %.lcssa.i, i1 true, i1 %.not67.i
  br i1 %or.cond72.i, label %.critedge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %8 = sub nuw nsw i64 %7, %indvars.iv140.i
  %.val.pre.i.i = load i8, ptr %i.cw, align 1, !tbaa !119 ; 2 uses
  %.val16.pre.i.i = load i8, ptr %i.de, align 1, !tbaa !119 ; 3 uses
  %i.hm = icmp ult i8 %.val16.pre.i.i, 16
  br label %ma_dr_mp3_hdr_padding.exit.i.i

ma_dr_mp3_hdr_padding.exit.i.i:                   ; preds = %bb.af, %bb.aa
  %.val16.i.i = phi i8 [ %.val16.pre.i.i, %bb.aa ], [ %i.jr, %bb.af ] ; 3 uses
  %.val.i.i = phi i8 [ %.val.pre.i.i, %bb.aa ], [ %i.jj, %bb.af ] ; 2 uses
  %.021.i.i = phi i32 [ 0, %bb.aa ], [ %i.ka, %bb.af ] ; 2 uses
  %.01420.i.i = phi i32 [ 0, %bb.aa ], [ %i.jc, %bb.af ]
  %i.hn = zext i8 %.val.i.i to i32                ; 5 uses
  %i.ho = and i32 %i.hn, 6
  %i.hp = icmp eq i32 %i.ho, 6
  %i.hq = and i32 %i.hn, 14
  %i.hr = icmp eq i32 %i.hq, 2
  %i.hs = zext i1 %i.hr to i32
  %i.ht = lshr exact i32 1152, %i.hs
  %i.hu = lshr i32 %i.hn, 3
  %.lobit.i.i.i.i = and i32 %i.hu, 1              ; 2 uses
  %i.hv = zext nneg i32 %.lobit.i.i.i.i to i64
  %i.hw = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.hv
  %i.hx = lshr i32 %i.hn, 1
  %i.hy = and i32 %i.hx, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr [15 x i8], ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -15
  %i.ic = lshr i8 %.val16.i.i, 4
  %i.id = zext nneg i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !119
  %i.ig = zext i8 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.ht, 250
  %i.ii = select i1 %i.hp, i32 96000, i32 %i.ih
  %i.ij = mul nuw nsw i32 %i.ii, %i.ig
  %i.ik = lshr i8 %.val16.i.i, 2
  %i.il = and i8 %i.ik, 3
  %i.im = zext nneg i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !118
  %i.ip = xor i32 %.lobit.i.i.i.i, 1
  %i.iq = lshr i32 %i.io, %i.ip
  %i.ir = lshr i32 %i.hn, 4
  %.lobit3.i.i.i.i = and i32 %i.ir, 1
  %i.is = xor i32 %.lobit3.i.i.i.i, 1
  %i.it = lshr i32 %i.iq, %i.is
  %i.iu = udiv i32 %i.ij, %i.it                   ; 2 uses
  %i.iv = and i8 %.val.i.i, 6
  %i.iw = icmp eq i8 %i.iv, 6                     ; 2 uses
  %i.ix = and i32 %i.iu, 134217724
  %spec.select.i.i.i = select i1 %i.iw, i32 %i.ix, i32 %i.iu ; 2 uses
  %.not.i.i89.i = icmp eq i32 %spec.select.i.i.i, 0
  %i.iy = select i1 %.not.i.i89.i, i32 %.055.lcssa.i, i32 %spec.select.i.i.i
  %i.iz = and i8 %.val16.i.i, 2
  %.not.i17.i.i = icmp eq i8 %i.iz, 0
  %i.ja = select i1 %i.iw, i32 4, i32 1
  %spec.select.i90.i = select i1 %.not.i17.i.i, i32 0, i32 %i.ja
  %i.jb = add i32 %spec.select.i90.i, %.01420.i.i
  %i.jc = add i32 %i.jb, %i.iy                    ; 3 uses
  %i.jd = add nsw i32 %i.jc, 4
  %9 = sext i32 %i.jd to i64
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %ma_dr_mp3d_match_frame.exit.i, label %bb.ab

bb.ab:                                            ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %i.je = sext i32 %i.jc to i64
  %i.jf = getelementptr inbounds i8, ptr %.063121.i, i64 %i.je ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !119
  %i.jh = icmp eq i8 %i.jg, -1
  br i1 %i.jh, label %bb.ac, label %.critedge.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !119 ; 4 uses
  %i.jk = zext i8 %i.jj to i32                    ; 2 uses
  %i.jl = and i32 %i.jk, 240
  %i.jm = icmp ne i32 %i.jl, 240
  %i.jn = and i32 %i.jk, 254
  %i.jo = icmp ne i32 %i.jn, 226
  %or.cond.not11.i.i.i.i = and i1 %i.jm, %i.jo
  %i.jp = and i8 %i.jj, 6
  %.not.i.i.i.i = icmp eq i8 %i.jp, 0
  %or.cond8.i.i.i.i = or i1 %.not.i.i.i.i, %or.cond.not11.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %.critedge.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !119 ; 4 uses
  %i.js = zext i8 %i.jr to i32                    ; 2 uses
  %.mask.i.i.i.i = and i32 %i.js, 240
  %.not6.i.i.i.i = icmp ne i32 %.mask.i.i.i.i, 240
  %i.jt = and i32 %i.js, 12
  %.not8.i.i.i = icmp ne i32 %i.jt, 12
  %or.cond.i.not28.i.i = and i1 %.not6.i.i.i.i, %.not8.i.i.i
  %i.ju = xor i8 %i.jj, %.val.pre.i.i
  %i.jv = icmp ult i8 %i.ju, 2
  %or.cond.i91.i = select i1 %or.cond.i.not28.i.i, i1 %i.jv, i1 false
  br i1 %or.cond.i91.i, label %bb.ae, label %.critedge.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.jw = xor i8 %i.jr, %.val16.pre.i.i
  %i.jx = and i8 %i.jw, 12
  %i.jy = icmp ne i8 %i.jx, 0
  %i.jz = icmp ult i8 %i.jr, 16
  %.not.i92.i = xor i1 %i.hm, %i.jz
  %or.cond27.i.i = select i1 %i.jy, i1 true, i1 %.not.i92.i
  br i1 %or.cond27.i.i, label %.critedge.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ka = add nuw nsw i32 %.021.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ka, 10
  br i1 %exitcond.not.i.i, label %ma_dr_mp3d_find_frame.exit, label %ma_dr_mp3_hdr_padding.exit.i.i, !llvm.loop !2974

ma_dr_mp3d_match_frame.exit.i:                    ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %.not.i142 = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i142, label %.critedge.thread.i, label %ma_dr_mp3d_find_frame.exit.loopexit332

.critedge.thread.i:                               ; preds = %bb.p, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %ma_dr_mp3d_match_frame.exit.i, %.critedge.i
  %.054112.i = phi i32 [ %.054.lcssa.i, %bb.ae ], [ %.054.lcssa.i, %.critedge.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ], [ %.054.lcssa.i, %bb.ab ], [ %.054.lcssa.i, %bb.ac ], [ %.054.lcssa.i, %bb.ad ], [ %.054118.i, %bb.p ]
  %.not69.i = icmp eq i64 %indvars.iv140.i, 0
  %i.kb = icmp eq i32 %.054112.i, %2
  %or.cond73.i = select i1 %.not69.i, i1 %i.kb, i1 false
  br i1 %or.cond73.i, label %ma_dr_mp3d_find_frame.exit.loopexit332, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i32 0, ptr %i.cs, align 4, !tbaa !118
  br label %ma_dr_mp3_hdr_valid.exit.thread.i

ma_dr_mp3_hdr_valid.exit.thread.i:                ; preds = %.thread.i, %bb.o, %bb.n, %.lr.ph125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.063121.i, i64 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_mp3d_find_frame.exit.thread, label %.lr.ph125.i, !llvm.loop !2975

ma_dr_mp3d_find_frame.exit.loopexit332:           ; preds = %ma_dr_mp3d_match_frame.exit.i, %.critedge.thread.i
  %storemerge.i.ph = phi i32 [ %2, %.critedge.thread.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.3.i.ph = phi i32 [ 0, %.critedge.thread.i ], [ %i.ev, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.pre408 = add nsw i32 %.3.i.ph, %storemerge.i.ph
  br label %ma_dr_mp3d_find_frame.exit

ma_dr_mp3d_find_frame.exit:                       ; preds = %bb.af, %ma_dr_mp3d_find_frame.exit.loopexit332
  %.pre-phi = phi i32 [ %.pre408, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.hl, %bb.af ]
  %storemerge.i = phi i32 [ %storemerge.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %.054.lcssa.i, %bb.af ] ; 2 uses
  %.3.i = phi i32 [ %.3.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.ev, %bb.af ] ; 2 uses
  %.not113 = icmp eq i32 %storemerge.i, 0
  %i.kd = icmp sgt i32 %.pre-phi, %2
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.kd
  br i1 %or.cond117, label %ma_dr_mp3d_find_frame.exit.thread, label %.thread212

ma_dr_mp3d_find_frame.exit.thread:                ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %bb.m, %ma_dr_mp3d_find_frame.exit
  %.3.i222 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ %2, %bb.m ], [ %2, %ma_dr_mp3_hdr_valid.exit.thread.i ]
  store i32 %.3.i222, ptr %4, align 4, !tbaa !775
  br label %bb.fz

.thread212:                                       ; preds = %bb.l, %ma_dr_mp3_hdr_padding.exit, %ma_dr_mp3d_find_frame.exit
  %.1 = phi i32 [ %storemerge.i, %ma_dr_mp3d_find_frame.exit ], [ %i.bt, %bb.l ], [ %2, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %.095 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ 0, %bb.l ], [ 0, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %i.ke = sext i32 %.095 to i64
  %i.kf = getelementptr inbounds i8, ptr %1, i64 %i.ke ; 6 uses
  %i.kg = load i32, ptr %i.kf, align 1
  store i32 %i.kg, ptr %i.d, align 8
  %i.kh = add nsw i32 %.095, %.1
  store i32 %i.kh, ptr %4, align 4, !tbaa !775
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 3 ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !119
  %i.kk = icmp ugt i8 %i.kj, -65
  %i.kl = select i1 %i.kk, i32 1, i32 2
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !840
  %i.kn = getelementptr i8, ptr %i.kf, i64 1      ; 5 uses
  %.val121 = load i8, ptr %i.kn, align 1, !tbaa !119
  %i.ko = getelementptr i8, ptr %i.kf, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.ko, align 1, !tbaa !119
  %i.kp = lshr i8 %.val122, 2
  %i.kq = and i8 %i.kp, 3
  %i.kr = zext nneg i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !118
  %i.ku = zext i8 %.val121 to i32                 ; 2 uses
  %i.kv = lshr i32 %i.ku, 3
  %.lobit.i = and i32 %i.kv, 1
  %i.kw = xor i32 %.lobit.i, 1
  %i.kx = lshr i32 %i.kt, %i.kw
  %i.ky = lshr i32 %i.ku, 4
  %.lobit3.i = and i32 %i.ky, 1
  %i.kz = xor i32 %.lobit3.i, 1
  %i.la = lshr i32 %i.kx, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !837
  %i.lc = load i8, ptr %i.kn, align 1, !tbaa !119
  %i.ld = lshr i8 %i.lc, 1
  %i.le = and i8 %i.ld, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.le
  %i.lf = zext nneg i8 %narrow to i32
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !838
  %.val119 = load i8, ptr %i.kn, align 1, !tbaa !119
  %.val120 = load i8, ptr %i.ko, align 1, !tbaa !119
  %i.lh = zext i8 %.val119 to i32                 ; 2 uses
  %i.li = lshr i32 %i.lh, 3
  %.lobit.i144 = and i32 %i.li, 1
  %i.lj = zext nneg i32 %.lobit.i144 to i64
  %i.lk = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.lj
  %i.ll = lshr i32 %i.lh, 1
  %i.lm = and i32 %i.ll, 3
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr [15 x i8], ptr %i.lk, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 -15
  %i.lq = lshr i8 %.val120, 4
  %i.lr = zext nneg i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !119
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 1
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !839
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kf, i64 4 ; 9 uses
  store ptr %i.lx, ptr %5, align 16, !tbaa !776
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.ly, align 8, !tbaa !777
  %i.lz = shl i32 %.1, 3
  %i.ma = add i32 %i.lz, -32                      ; 10 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !778
  %i.mc = load i8, ptr %i.kn, align 1, !tbaa !119
  %.fr = freeze i8 %i.mc                          ; 4 uses
  %i.md = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.md, 0
  br i1 %.not114, label %bb.ag, label %ma_dr_mp3_bs_get_bits.exit

bb.ag:                                            ; preds = %.thread212
  store i32 16, ptr %i.ly, align 8, !tbaa !777
  br label %ma_dr_mp3_bs_get_bits.exit

ma_dr_mp3_bs_get_bits.exit:                       ; preds = %bb.ag, %.thread212
  %.promoted = phi i32 [ 0, %.thread212 ], [ 16, %bb.ag ]
  %i.me = icmp eq i8 %i.le, 1
  br i1 %i.me, label %bb.ah, label %bb.eo

bb.ah:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.mh = call fastcc i32 @ma_dr_mp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.mg, ptr noundef nonnull %i.kf) ; 4 uses
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mj = load i32, ptr %i.ly, align 8, !tbaa !777 ; 3 uses
  %i.mk = load i32, ptr %i.mb, align 4, !tbaa !778 ; 2 uses
  %i.ml = icmp sgt i32 %i.mj, %i.mk
  br i1 %i.ml, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.d, align 8, !tbaa !119
  br label %bb.fz

bb.aj:                                            ; preds = %bb.ai
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !3029 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.mn, i32 range(i32 0, -2147483648) %i.mh) ; 2 uses
  %i.mo = sub nsw i32 %i.mn, %i.mh
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 0)
  %i.mp = zext nneg i32 %narrow.i to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mp
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 6688 ; 4 uses
  %i.mt = sub nsw i32 %i.mk, %i.mj
  %i.mu = lshr i32 %i.mt, 3                       ; 2 uses
  %i.mv = sext i32 %..i to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ms, ptr nonnull readonly align 1 %i.mr, i64 %i.mv, i1 false)
  %i.mw = getelementptr inbounds i8, ptr %i.ms, i64 %i.mv
  %i.mx = load ptr, ptr %5, align 16, !tbaa !776
  %i.my = sdiv i32 %i.mj, 8
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds i8, ptr %i.mx, i64 %i.mz
  %i.nb = zext nneg i32 %i.mu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mw, ptr align 1 %i.na, i64 %i.nb, i1 false)
  %i.nc = add nsw i32 %..i, %i.mu
  store ptr %i.ms, ptr %i.mf, align 8, !tbaa !776
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.nd, align 8, !tbaa !777
  %i.ne = shl nsw i32 %i.nc, 3                    ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !778
  %i.ng = load i32, ptr %i.mm, align 8, !tbaa !3029
  %i.nh = icmp sge i32 %i.ng, %i.mh               ; 2 uses
  %i.ni = zext i1 %i.nh to i32
  %i.nj = icmp ne ptr %3, null
  %or.cond = and i1 %i.nj, %i.nh
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aj
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 9 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 6155 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 22848
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 14240 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 6153 ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 19 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 22887 ; 7 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 14400 ; 4 uses
  %i.ny = ptrtoint ptr %i.nx to i64               ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %ma_dr_mp3_L3_decode.exit
  %i.oc = phi i1 [ true, %.preheader ], [ false, %ma_dr_mp3_L3_decode.exit ]
  %.093324 = phi i32 [ 0, %.preheader ], [ 1, %ma_dr_mp3_L3_decode.exit ]
  %.0100323 = phi ptr [ %3, %.preheader ], [ %i.bkx, %ma_dr_mp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.nk, i8 0, i64 4608, i1 false)
  %i.od = load i32, ptr %i.km, align 4, !tbaa !840 ; 4 uses
  %i.oe = mul nuw nsw i32 %i.od, %.093324
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [32 x i8], ptr %i.mg, i64 %i.of ; 7 uses
  %i.oh = icmp sgt i32 %i.od, 0                   ; 2 uses
  br i1 %i.oh, label %.lr.ph.i149, label %._crit_edge.i146

.lr.ph.i149:                                      ; preds = %bb.ak
  %i.oi = load ptr, ptr %i.mf, align 8, !tbaa !776 ; 6 uses
  %i.oj = ptrtoint ptr %i.oi to i64
  %wide.trip.count.i150 = zext nneg i32 %i.od to i64
  %.pre.i = load i32, ptr %i.nd, align 8, !tbaa !3030
  br label %bb.al

bb.al:                                            ; preds = %ma_dr_mp3_L3_huffman.exit.i, %.lr.ph.i149
  %.promoted.i = phi i32 [ %.pre.i, %.lr.ph.i149 ], [ %i.oo, %ma_dr_mp3_L3_huffman.exit.i ] ; 5 uses
  %indvars.iv.i151 = phi i64 [ 0, %.lr.ph.i149 ], [ %indvars.iv.next.i156, %ma_dr_mp3_L3_huffman.exit.i ] ; 5 uses
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %indvars.iv.i151 ; 17 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i16, ptr %i.ol, align 8, !tbaa !1121
  %i.on = zext i16 %i.om to i32
  %i.oo = add nsw i32 %.promoted.i, %i.on         ; 3 uses
  %i.op = getelementptr inbounds nuw [39 x i8], ptr %i.nm, i64 %indvars.iv.i151 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 18 ; 2 uses
  %i.or = load i8, ptr %i.oq, align 2, !tbaa !1122
  %i.os = icmp ne i8 %i.or, 0
  %i.ot = zext i1 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 17 ; 3 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !1123
  %.not.i.i152 = icmp eq i8 %i.ov, 0
  %i.ow = zext i1 %.not.i.i152 to i64
  %i.ox = getelementptr inbounds nuw [28 x i8], ptr @ma_dr_mp3_L3_decode_scalefactors.g_scf_partitions, i64 %i.ot
  %i.oy = getelementptr inbounds nuw [28 x i8], ptr %i.ox, i64 %i.ow ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ok, i64 29
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !1124
  %i.pb = zext i8 %i.pa to i32                    ; 2 uses
  %i.pc = add nuw nsw i32 %i.pb, 1
  %i.pd = load i8, ptr %i.no, align 1, !tbaa !119
  %i.pe = and i8 %i.pd, 8
end_hunk_0
