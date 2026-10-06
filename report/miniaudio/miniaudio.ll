Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
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
  %i.cu = zext nneg i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.ct to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %.lr.ph125.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next141.i, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 6 uses
  %.063121.i = phi ptr [ %1, %.lr.ph125.preheader.i ], [ %i.ka, %ma_dr_mp3_hdr_valid.exit.thread.i ] ; 7 uses
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
  %i.eu = add nuw nsw i32 %spec.select.i.i, %spec.select.i141 ; 2 uses
  %i.ev = icmp eq i32 %spec.select.i.i, 0
  %i.ew = trunc nuw nsw i64 %indvars.iv140.i to i32 ; 3 uses
  br i1 %i.ev, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %ma_dr_mp3_hdr_padding.exit.i
  %i.ex = add nuw nsw i64 %indvars.iv140.i, 4
  br label %bb.p

bb.p:                                             ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 6 uses
  %.054118.i = phi i32 [ %i.eu, %.lr.ph.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 12 uses
  %i.ey = shl nuw nsw i64 %indvars.iv.i, 1
  %i.ez = add nuw nsw i64 %i.ey, %indvars.iv140.i
  %i.fa = trunc nuw i64 %i.ez to i32
  %i.fb = icmp sgt i32 %i.ct, %i.fa
  br i1 %i.fb, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.fc = getelementptr inbounds nuw i8, ptr %.063121.i, i64 %indvars.iv.i ; 4 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !119
  %i.fe = icmp eq i8 %i.fd, -1
  br i1 %i.fe, label %bb.r, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !119 ; 3 uses
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = and i32 %i.fh, 240
  %i.fj = icmp ne i32 %i.fi, 240
  %i.fk = and i32 %i.fh, 254
  %i.fl = icmp ne i32 %i.fk, 226
  %or.cond.not11.i.i.i = and i1 %i.fj, %i.fl
  %i.fm = and i8 %i.fg, 6                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fm, 0
  %or.cond8.i.i.i = or i1 %.not.i.i.i, %or.cond.not11.i.i.i
  br i1 %or.cond8.i.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !119 ; 4 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %.mask.i.i.i = and i32 %i.fp, 240
  %.not6.i.i.i = icmp eq i32 %.mask.i.i.i, 240
  %i.fq = and i32 %i.fp, 12
  %.not8.i.i = icmp eq i32 %i.fq, 12
  %or.cond.i.i = or i1 %.not6.i.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fr = load i8, ptr %i.cx, align 1, !tbaa !119 ; 3 uses
  %i.fs = xor i8 %i.fr, %i.fg
  %i.ft = icmp ult i8 %i.fs, 2
  br i1 %i.ft, label %bb.u, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.fu = load i8, ptr %i.df, align 1, !tbaa !119 ; 4 uses
  %i.fv = xor i8 %i.fu, %i.fo
  %i.fw = and i8 %i.fv, 12
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %ma_dr_mp3_hdr_compare.exit.i, label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.i:                     ; preds = %bb.u
  %i.fy = icmp ult i8 %i.fu, 16                   ; 2 uses
  %i.fz = icmp ult i8 %i.fo, 16
  %.not70.i = xor i1 %i.fz, %i.fy
  br i1 %.not70.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %ma_dr_mp3_hdr_padding.exit78.i

ma_dr_mp3_hdr_padding.exit78.i:                   ; preds = %ma_dr_mp3_hdr_compare.exit.i
  %i.ga = and i8 %i.fu, 2
  %.not.i77.i = icmp eq i8 %i.ga, 0
  %i.gb = and i8 %i.fr, 6
  %i.gc = icmp eq i8 %i.gb, 6
  %.neg.i = select i1 %i.gc, i32 -4, i32 -1
  %.neg106.i = select i1 %.not.i77.i, i32 0, i32 %.neg.i
  %i.gd = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ge = add nsw i32 %.neg106.i, %i.gd           ; 3 uses
  %i.gf = and i8 %i.fo, 2
  %.not.i79.i = icmp eq i8 %i.gf, 0
  %i.gg = icmp eq i8 %i.fm, 6
  %i.gh = select i1 %i.gg, i32 4, i32 1
  %i.gi = select i1 %.not.i79.i, i32 0, i32 %i.gh
  %i.gj = add nsw i32 %i.ge, %i.gi                ; 2 uses
  %i.gk = add nuw nsw i64 %i.ex, %indvars.iv.i
  %i.gl = trunc nuw i64 %i.gk to i32
  %i.gm = add i32 %i.gj, %i.gl
  %i.gn = icmp sgt i32 %i.gm, %2
  br i1 %i.gn, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %ma_dr_mp3_hdr_padding.exit78.i
  %i.go = sext i32 %i.gj to i64
  %i.gp = getelementptr inbounds i8, ptr %i.fc, i64 %i.go ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !119
  %i.gr = icmp eq i8 %i.gq, -1
  br i1 %i.gr, label %bb.w, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !119 ; 3 uses
  %i.gu = zext i8 %i.gt to i32                    ; 2 uses
  %i.gv = and i32 %i.gu, 240
  %i.gw = icmp ne i32 %i.gv, 240
  %i.gx = and i32 %i.gu, 254
  %i.gy = icmp ne i32 %i.gx, 226
  %or.cond.not11.i.i81.i = and i1 %i.gw, %i.gy
  %i.gz = and i8 %i.gt, 6
  %.not.i.i82.i = icmp eq i8 %i.gz, 0
  %or.cond8.i.i83.i = or i1 %.not.i.i82.i, %or.cond.not11.i.i81.i
  br i1 %or.cond8.i.i83.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !119 ; 3 uses
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %.mask.i.i84.i = and i32 %i.hc, 240
  %.not6.i.i85.i = icmp ne i32 %.mask.i.i84.i, 240
  %i.hd = and i32 %i.hc, 12
  %.not8.i86.i = icmp ne i32 %i.hd, 12
  %or.cond.i87.not157.i = and i1 %.not6.i.i85.i, %.not8.i86.i
  %i.he = xor i8 %i.gt, %i.fr
  %i.hf = icmp ult i8 %i.he, 2
  %or.cond155.i.a = and i1 %i.hf, %or.cond.i87.not157.i
  br i1 %or.cond155.i.a, label %bb.y, label %ma_dr_mp3_hdr_compare.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.hg = xor i8 %i.hb, %i.fu
  %i.hh = and i8 %i.hg, 12
  %i.hi = icmp ne i8 %i.hh, 0
  %i.hj = icmp ult i8 %i.hb, 16
  %.not71.i = xor i1 %i.fy, %i.hj
  %or.cond156.i = or i1 %.not71.i, %i.hi
  br i1 %or.cond156.i, label %ma_dr_mp3_hdr_compare.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.ge, ptr %i.cs, align 4, !tbaa !118
  br label %ma_dr_mp3_hdr_compare.exit.thread.i

ma_dr_mp3_hdr_compare.exit.thread.i:              ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %ma_dr_mp3_hdr_padding.exit78.i, %ma_dr_mp3_hdr_compare.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.257.i = phi i32 [ 0, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.ge, %bb.z ], [ 0, %bb.x ], [ 0, %ma_dr_mp3_hdr_padding.exit78.i ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.2.i = phi i32 [ %.054118.i, %ma_dr_mp3_hdr_compare.exit.i ], [ %i.gd, %bb.z ], [ %.054118.i, %bb.x ], [ %.054118.i, %ma_dr_mp3_hdr_padding.exit78.i ], [ %.054118.i, %bb.r ], [ %.054118.i, %bb.u ], [ %.054118.i, %bb.t ], [ %.054118.i, %bb.q ], [ %.054118.i, %bb.s ], [ %.054118.i, %bb.y ], [ %.054118.i, %bb.w ], [ %.054118.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hk = icmp eq i32 %.257.i, 0                  ; 2 uses
  %i.hl = icmp samesign ult i64 %indvars.iv.i, 2303
  %or.cond.i143 = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond.i143, label %bb.p, label %.critedge.i, !llvm.loop !2973

.critedge.i:                                      ; preds = %ma_dr_mp3_hdr_compare.exit.thread.i, %ma_dr_mp3_hdr_padding.exit.i
  %.055.lcssa.i = phi i32 [ %spec.select.i.i, %ma_dr_mp3_hdr_padding.exit.i ], [ %.257.i, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %.054.lcssa.i = phi i32 [ %i.eu, %ma_dr_mp3_hdr_padding.exit.i ], [ %.2.i, %ma_dr_mp3_hdr_compare.exit.thread.i ] ; 11 uses
  %.lcssa.i = phi i1 [ false, %ma_dr_mp3_hdr_padding.exit.i ], [ %i.hk, %ma_dr_mp3_hdr_compare.exit.thread.i ]
  %i.hm = add nsw i32 %.054.lcssa.i, %i.ew        ; 2 uses
  %.not67.i = icmp sgt i32 %i.hm, %2
  %or.cond72.i = select i1 %.lcssa.i, i1 true, i1 %.not67.i
  br i1 %or.cond72.i, label %.critedge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %i.hn = sub nuw nsw i64 %i.cu, %indvars.iv140.i
  br label %ma_dr_mp3_hdr_padding.exit.i.i

ma_dr_mp3_hdr_padding.exit.i.i:                   ; preds = %bb.af, %bb.aa
  %.021.i.i = phi i32 [ 0, %bb.aa ], [ %i.jy, %bb.af ] ; 2 uses
  %.01420.i.i = phi i32 [ 0, %bb.aa ], [ %i.jd, %bb.af ] ; 2 uses
  %7 = sext i32 %.01420.i.i to i64
  %8 = getelementptr inbounds i8, ptr %.063121.i, i64 %7 ; 2 uses
  %9 = getelementptr i8, ptr %8, i64 1
  %.val.i.i = load i8, ptr %9, align 1, !tbaa !119 ; 2 uses
  %10 = getelementptr i8, ptr %8, i64 2
  %.val16.i.i = load i8, ptr %10, align 1, !tbaa !119 ; 3 uses
  %i.ho = zext i8 %.val.i.i to i32                ; 5 uses
  %i.hp = and i32 %i.ho, 6
  %i.hq = icmp eq i32 %i.hp, 6
  %i.hr = and i32 %i.ho, 14
  %i.hs = icmp eq i32 %i.hr, 2
  %i.ht = zext i1 %i.hs to i32
  %i.hu = lshr exact i32 1152, %i.ht
  %i.hv = lshr i32 %i.ho, 3
  %.lobit.i.i.i.i = and i32 %i.hv, 1              ; 2 uses
  %i.hw = zext nneg i32 %.lobit.i.i.i.i to i64
  %i.hx = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.hw
  %i.hy = lshr i32 %i.ho, 1
  %i.hz = and i32 %i.hy, 3
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr [15 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 -15
  %i.id = lshr i8 %.val16.i.i, 4
  %i.ie = zext nneg i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !119
  %i.ih = zext i8 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.hu, 250
  %i.ij = select i1 %i.hq, i32 96000, i32 %i.ii
  %i.ik = mul nuw nsw i32 %i.ij, %i.ih
  %i.il = lshr i8 %.val16.i.i, 2
  %i.im = and i8 %i.il, 3
  %i.in = zext nneg i8 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !118
  %i.iq = xor i32 %.lobit.i.i.i.i, 1
  %i.ir = lshr i32 %i.ip, %i.iq
  %i.is = lshr i32 %i.ho, 4
  %.lobit3.i.i.i.i = and i32 %i.is, 1
  %i.it = xor i32 %.lobit3.i.i.i.i, 1
  %i.iu = lshr i32 %i.ir, %i.it
  %i.iv = udiv i32 %i.ik, %i.iu                   ; 2 uses
  %i.iw = and i8 %.val.i.i, 6
  %i.ix = icmp eq i8 %i.iw, 6                     ; 2 uses
  %i.iy = and i32 %i.iv, 134217724
  %spec.select.i.i.i = select i1 %i.ix, i32 %i.iy, i32 %i.iv ; 2 uses
  %.not.i.i89.i = icmp eq i32 %spec.select.i.i.i, 0
  %i.iz = select i1 %.not.i.i89.i, i32 %.055.lcssa.i, i32 %spec.select.i.i.i
  %i.ja = and i8 %.val16.i.i, 2
  %.not.i17.i.i = icmp eq i8 %i.ja, 0
  %i.jb = select i1 %i.ix, i32 4, i32 1
  %spec.select.i90.i = select i1 %.not.i17.i.i, i32 0, i32 %i.jb
  %i.jc = add i32 %spec.select.i90.i, %.01420.i.i
  %i.jd = add i32 %i.jc, %i.iz                    ; 3 uses
  %i.je = add nsw i32 %i.jd, 4
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %i.hn, %i.jf
  br i1 %i.jg, label %ma_dr_mp3d_match_frame.exit.i, label %bb.ab

bb.ab:                                            ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %i.jh = sext i32 %i.jd to i64
  %i.ji = getelementptr inbounds i8, ptr %.063121.i, i64 %i.jh ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !119
  %i.jk = icmp eq i8 %i.jj, -1
  br i1 %i.jk, label %bb.ac, label %.critedge.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !119 ; 3 uses
  %i.jn = zext i8 %i.jm to i32                    ; 2 uses
  %i.jo = and i32 %i.jn, 240
  %i.jp = icmp ne i32 %i.jo, 240
  %i.jq = and i32 %i.jn, 254
  %i.jr = icmp ne i32 %i.jq, 226
  %or.cond.not11.i.i.i.i = and i1 %i.jp, %i.jr
  %i.js = and i8 %i.jm, 6
  %.not.i.i.i.i = icmp eq i8 %i.js, 0
  %or.cond8.i.i.i.i = or i1 %.not.i.i.i.i, %or.cond.not11.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %.critedge.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !119 ; 3 uses
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %.mask.i.i.i.i = and i32 %i.jv, 240
  %.not6.i.i.i.i = icmp eq i32 %.mask.i.i.i.i, 240
  %i.jw = and i32 %i.jv, 12
  %.not8.i.i.i = icmp eq i32 %i.jw, 12
  %or.cond.i.i.i = or i1 %.not6.i.i.i.i, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge.thread.i, label %11

11:                                               ; preds = %bb.ad
  %12 = load i8, ptr %i.cx, align 1, !tbaa !119
  %13 = xor i8 %12, %i.jm
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %15, label %.critedge.thread.i

15:                                               ; preds = %11
  %16 = load i8, ptr %i.df, align 1, !tbaa !119   ; 2 uses
  %17 = xor i8 %16, %i.ju
  %18 = and i8 %17, 12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %bb.ae, label %.critedge.thread.i

bb.ae:                                            ; preds = %15
  %20 = icmp ult i8 %16, 16
  %i.jx = icmp ult i8 %i.ju, 16
  %.not.i92.i = xor i1 %i.jx, %20
  br i1 %.not.i92.i, label %.critedge.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jy = add nuw nsw i32 %.021.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jy, 10
  br i1 %exitcond.not.i.i, label %ma_dr_mp3d_find_frame.exit, label %ma_dr_mp3_hdr_padding.exit.i.i, !llvm.loop !2974

ma_dr_mp3d_match_frame.exit.i:                    ; preds = %ma_dr_mp3_hdr_padding.exit.i.i
  %.not.i142 = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i142, label %.critedge.thread.i, label %ma_dr_mp3d_find_frame.exit.loopexit332

.critedge.thread.i:                               ; preds = %bb.p, %bb.ae, %15, %11, %bb.ad, %bb.ac, %bb.ab, %ma_dr_mp3d_match_frame.exit.i, %.critedge.i
  %.054111.i = phi i32 [ %.054.lcssa.i, %bb.ae ], [ %.054.lcssa.i, %.critedge.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ], [ %.054.lcssa.i, %bb.ab ], [ %.054.lcssa.i, %bb.ac ], [ %.054.lcssa.i, %bb.ad ], [ %.054.lcssa.i, %11 ], [ %.054.lcssa.i, %15 ], [ %.054118.i, %bb.p ]
  %.not69.i = icmp eq i64 %indvars.iv140.i, 0
  %i.jz = icmp eq i32 %.054111.i, %2
  %or.cond73.i = select i1 %.not69.i, i1 %i.jz, i1 false
  br i1 %or.cond73.i, label %ma_dr_mp3d_find_frame.exit.loopexit332, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i32 0, ptr %i.cs, align 4, !tbaa !118
  br label %ma_dr_mp3_hdr_valid.exit.thread.i

ma_dr_mp3_hdr_valid.exit.thread.i:                ; preds = %.thread.i, %bb.o, %bb.n, %.lr.ph125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.063121.i, i64 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_mp3d_find_frame.exit.thread, label %.lr.ph125.i, !llvm.loop !2975

ma_dr_mp3d_find_frame.exit.loopexit332:           ; preds = %ma_dr_mp3d_match_frame.exit.i, %.critedge.thread.i
  %storemerge.i.ph = phi i32 [ %2, %.critedge.thread.i ], [ %.054.lcssa.i, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.3.i.ph = phi i32 [ 0, %.critedge.thread.i ], [ %i.ew, %ma_dr_mp3d_match_frame.exit.i ] ; 2 uses
  %.pre408.a = add nsw i32 %.3.i.ph, %storemerge.i.ph
  br label %ma_dr_mp3d_find_frame.exit

ma_dr_mp3d_find_frame.exit:                       ; preds = %bb.af, %ma_dr_mp3d_find_frame.exit.loopexit332
  %.pre-phi = phi i32 [ %.pre408.a, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.hm, %bb.af ]
  %storemerge.i = phi i32 [ %storemerge.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %.054.lcssa.i, %bb.af ] ; 2 uses
  %.3.i = phi i32 [ %.3.i.ph, %ma_dr_mp3d_find_frame.exit.loopexit332 ], [ %i.ew, %bb.af ] ; 2 uses
  %.not113 = icmp eq i32 %storemerge.i, 0
  %i.kb = icmp sgt i32 %.pre-phi, %2
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.kb
  br i1 %or.cond117, label %ma_dr_mp3d_find_frame.exit.thread, label %.thread212

ma_dr_mp3d_find_frame.exit.thread:                ; preds = %ma_dr_mp3_hdr_valid.exit.thread.i, %bb.m, %ma_dr_mp3d_find_frame.exit
  %.3.i222 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ %2, %bb.m ], [ %2, %ma_dr_mp3_hdr_valid.exit.thread.i ]
  store i32 %.3.i222, ptr %4, align 4, !tbaa !775
  br label %bb.fz

.thread212:                                       ; preds = %bb.l, %ma_dr_mp3_hdr_padding.exit, %ma_dr_mp3d_find_frame.exit
  %.1 = phi i32 [ %storemerge.i, %ma_dr_mp3d_find_frame.exit ], [ %i.bt, %bb.l ], [ %2, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %.095 = phi i32 [ %.3.i, %ma_dr_mp3d_find_frame.exit ], [ 0, %bb.l ], [ 0, %ma_dr_mp3_hdr_padding.exit ] ; 2 uses
  %i.kc = sext i32 %.095 to i64
  %i.kd = getelementptr inbounds i8, ptr %1, i64 %i.kc ; 6 uses
  %i.ke = load i32, ptr %i.kd, align 1
  store i32 %i.ke, ptr %i.d, align 8
  %i.kf = add nsw i32 %.095, %.1
  store i32 %i.kf, ptr %4, align 4, !tbaa !775
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 3 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !119
  %i.ki = icmp ugt i8 %i.kh, -65
  %i.kj = select i1 %i.ki, i32 1, i32 2
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !840
  %i.kl = getelementptr i8, ptr %i.kd, i64 1      ; 5 uses
  %.val121 = load i8, ptr %i.kl, align 1, !tbaa !119
  %i.km = getelementptr i8, ptr %i.kd, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.km, align 1, !tbaa !119
  %i.kn = lshr i8 %.val122, 2
  %i.ko = and i8 %i.kn, 3
  %i.kp = zext nneg i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !118
  %i.ks = zext i8 %.val121 to i32                 ; 2 uses
  %i.kt = lshr i32 %i.ks, 3
  %.lobit.i = and i32 %i.kt, 1
  %i.ku = xor i32 %.lobit.i, 1
  %i.kv = lshr i32 %i.kr, %i.ku
  %i.kw = lshr i32 %i.ks, 4
  %.lobit3.i = and i32 %i.kw, 1
  %i.kx = xor i32 %.lobit3.i, 1
  %i.ky = lshr i32 %i.kv, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !837
  %i.la = load i8, ptr %i.kl, align 1, !tbaa !119
  %i.lb = lshr i8 %i.la, 1
  %i.lc = and i8 %i.lb, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.lc
  %i.ld = zext nneg i8 %narrow to i32
  %i.le = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !838
  %.val119 = load i8, ptr %i.kl, align 1, !tbaa !119
  %.val120 = load i8, ptr %i.km, align 1, !tbaa !119
  %i.lf = zext i8 %.val119 to i32                 ; 2 uses
  %i.lg = lshr i32 %i.lf, 3
  %.lobit.i144 = and i32 %i.lg, 1
  %i.lh = zext nneg i32 %.lobit.i144 to i64
  %i.li = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.lh
  %i.lj = lshr i32 %i.lf, 1
  %i.lk = and i32 %i.lj, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr [15 x i8], ptr %i.li, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 -15
  %i.lo = lshr i8 %.val120, 4
  %i.lp = zext nneg i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !119
  %i.ls = zext i8 %i.lr to i32
  %i.lt = shl nuw nsw i32 %i.ls, 1
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !839
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kd, i64 4 ; 9 uses
  store ptr %i.lv, ptr %5, align 16, !tbaa !776
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.lw, align 8, !tbaa !777
  %i.lx = shl i32 %.1, 3
  %i.ly = add i32 %i.lx, -32                      ; 10 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !778
  %i.ma = load i8, ptr %i.kl, align 1, !tbaa !119
  %.fr = freeze i8 %i.ma                          ; 4 uses
  %i.mb = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.mb, 0
  br i1 %.not114, label %bb.ag, label %ma_dr_mp3_bs_get_bits.exit

bb.ag:                                            ; preds = %.thread212
  store i32 16, ptr %i.lw, align 8, !tbaa !777
  br label %ma_dr_mp3_bs_get_bits.exit

ma_dr_mp3_bs_get_bits.exit:                       ; preds = %bb.ag, %.thread212
  %.promoted = phi i32 [ 0, %.thread212 ], [ 16, %bb.ag ]
  %i.mc = icmp eq i8 %i.lc, 1
  br i1 %i.mc, label %bb.ah, label %bb.eo

bb.ah:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.mf = call fastcc i32 @ma_dr_mp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.me, ptr noundef nonnull %i.kd) ; 4 uses
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mh = load i32, ptr %i.lw, align 8, !tbaa !777 ; 3 uses
  %i.mi = load i32, ptr %i.lz, align 4, !tbaa !778 ; 2 uses
  %i.mj = icmp sgt i32 %i.mh, %i.mi
  br i1 %i.mj, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.d, align 8, !tbaa !119
  br label %bb.fz

bb.aj:                                            ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !3029 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ml, i32 range(i32 0, -2147483648) %i.mf) ; 2 uses
  %i.mm = sub nsw i32 %i.ml, %i.mf
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.mm, i32 0)
  %i.mn = zext nneg i32 %narrow.i to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 6688 ; 4 uses
  %i.mr = sub nsw i32 %i.mi, %i.mh
  %i.ms = lshr i32 %i.mr, 3                       ; 2 uses
  %i.mt = sext i32 %..i to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mq, ptr nonnull readonly align 1 %i.mp, i64 %i.mt, i1 false)
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  %i.mv = load ptr, ptr %5, align 16, !tbaa !776
  %i.mw = sdiv i32 %i.mh, 8
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.mx
  %i.mz = zext nneg i32 %i.ms to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr align 1 %i.my, i64 %i.mz, i1 false)
  %i.na = add nsw i32 %..i, %i.ms
  store ptr %i.mq, ptr %i.md, align 8, !tbaa !776
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.nb, align 8, !tbaa !777
  %i.nc = shl nsw i32 %i.na, 3                    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !778
  %i.ne = load i32, ptr %i.mk, align 8, !tbaa !3029
  %i.nf = icmp sge i32 %i.ne, %i.mf               ; 2 uses
  %i.ng = zext i1 %i.nf to i32
  %i.nh = icmp ne ptr %3, null
  %or.cond = and i1 %i.nh, %i.nf
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aj
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 9 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 6155 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 22848
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 14240 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 6153 ; 7 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 19 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 22887 ; 7 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 14400 ; 4 uses
  %i.nw = ptrtoint ptr %i.nv to i64               ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %ma_dr_mp3_L3_decode.exit
  %i.oa = phi i1 [ true, %.preheader ], [ false, %ma_dr_mp3_L3_decode.exit ]
  %.093324 = phi i32 [ 0, %.preheader ], [ 1, %ma_dr_mp3_L3_decode.exit ]
  %.0100323 = phi ptr [ %3, %.preheader ], [ %i.bkv, %ma_dr_mp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.ni, i8 0, i64 4608, i1 false)
  %i.ob = load i32, ptr %i.kk, align 4, !tbaa !840 ; 4 uses
  %i.oc = mul nuw nsw i32 %i.ob, %.093324
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [32 x i8], ptr %i.me, i64 %i.od ; 7 uses
end_hunk_0
