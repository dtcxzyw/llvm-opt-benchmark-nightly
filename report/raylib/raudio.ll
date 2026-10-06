Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@drmp3_version:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @drmp3_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @drmp3dec_init(ptr nofree noundef writeonly captures(none) initializes((6152, 6153)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6152
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 1153) i32 @drmp3dec_decode_frame(ptr noundef initializes((6155, 6156)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #27 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 12 uses
  %i.b = alloca [40 x i8], align 16               ; 12 uses
  %5 = alloca [1 x %struct.drmp3_bs], align 16    ; 7 uses
  %6 = alloca [1 x %struct.drmp3_L12_scale_info], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %i.c = icmp sgt i32 %2, 4
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %.lr.ph125.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %.lr.ph125.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1               ; 4 uses
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
  %i.r = load i8, ptr %i.q, align 1               ; 7 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.mask.i.i = and i32 %i.s, 240
  %.not6.i.i = icmp eq i32 %.mask.i.i, 240
  %i.t = and i32 %i.s, 12
  %.not8.i = icmp eq i32 %i.t, 12
  %or.cond.i = or i1 %.not6.i.i, %.not8.i
  br i1 %or.cond.i, label %.lr.ph125.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6153
  %i.v = load i8, ptr %i.u, align 1
  %i.w = xor i8 %i.v, %i.j
  %i.x = icmp ult i8 %i.w, 2
  br i1 %i.x, label %bb.g, label %.lr.ph125.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.z = load i8, ptr %i.y, align 2               ; 2 uses
  %i.aa = xor i8 %i.z, %i.r
  %i.ab = and i8 %i.aa, 12
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %drmp3_hdr_compare.exit, label %.lr.ph125.preheader.i

drmp3_hdr_compare.exit:                           ; preds = %bb.g
  %i.ad = icmp ult i8 %i.z, 16
  %i.ae = icmp ult i8 %i.r, 16                    ; 2 uses
  %.not = xor i1 %i.ae, %i.ad
  br i1 %.not, label %.lr.ph125.preheader.i, label %drmp3_hdr_padding.exit

drmp3_hdr_padding.exit:                           ; preds = %drmp3_hdr_compare.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6148
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.k, 6
  %i.ai = icmp eq i32 %i.ah, 6
  %i.aj = and i32 %i.k, 14
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = zext i1 %i.ak to i32
  %i.am = lshr exact i32 1152, %i.al
  %i.an = lshr i32 %i.k, 3
  %.lobit.i.i = and i32 %i.an, 1                  ; 2 uses
  %i.ao = zext nneg i32 %.lobit.i.i to i64
  %i.ap = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.ao
  %i.aq = lshr i32 %i.k, 1
  %i.ar = and i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [15 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -15
  %i.av = lshr i8 %i.r, 4
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.am, 250
  %i.bb = select i1 %i.ai, i32 96000, i32 %i.ba
  %i.bc = mul nuw nsw i32 %i.bb, %i.az
  %i.bd = lshr i8 %i.r, 2
  %i.be = and i8 %i.bd, 3
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
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
  br i1 %.not110, label %.thread216, label %bb.h

bb.h:                                             ; preds = %drmp3_hdr_padding.exit
  %i.bu = add nsw i32 %i.bt, 4
  %i.bv = icmp sgt i32 %i.bu, %2
  br i1 %i.bv, label %.lr.ph125.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, -1
  br i1 %i.bz, label %bb.j, label %.lr.ph125.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1             ; 3 uses
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
  %i.cj = load i8, ptr %i.ci, align 1             ; 3 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %.mask.i.i131 = and i32 %i.ck, 240
  %.not6.i.i132 = icmp ne i32 %.mask.i.i131, 240
  %i.cl = and i32 %i.ck, 12
  %.not8.i133 = icmp ne i32 %i.cl, 12
  %or.cond.i134.not233 = and i1 %.not6.i.i132, %.not8.i133
  %i.cm = xor i8 %i.cb, %i.j
  %i.cn = icmp ult i8 %i.cm, 2
  %or.cond232 = and i1 %i.cn, %or.cond.i134.not233
  br i1 %or.cond232, label %bb.l, label %.lr.ph125.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.co = xor i8 %i.cj, %i.r
  %i.cp = and i8 %i.co, 12
  %i.cq = icmp ne i8 %i.cp, 0
  %i.cr = icmp ult i8 %i.cj, 16
  %.not111 = xor i1 %i.ae, %i.cr
  %or.cond576 = or i1 %i.cq, %.not111
  %.not112 = icmp eq i32 %i.bt, 0
  %or.cond577 = or i1 %or.cond576, %.not112
  br i1 %or.cond577, label %.lr.ph125.preheader.i, label %.thread216

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  br label %drmp3d_find_frame.exit.thread

.lr.ph125.preheader.i:                            ; preds = %bb.h, %bb.l, %bb.i, %bb.k, %bb.j, %bb.d, %bb.e, %bb.c, %bb.f, %bb.g, %bb.b, %drmp3_hdr_compare.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22928) %0, i8 0, i64 22928, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6148 ; 2 uses
  %i.ct = add nsw i32 %2, -4                      ; 2 uses
  %i.cu = zext nneg i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.ct to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %drmp3_hdr_valid.exit.thread.i, %.lr.ph125.preheader.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %indvars.iv.next141.i, %drmp3_hdr_valid.exit.thread.i ] ; 6 uses
  %.063121.i = phi ptr [ %1, %.lr.ph125.preheader.i ], [ %i.ka, %drmp3_hdr_valid.exit.thread.i ] ; 6 uses
  %i.cv = load i8, ptr %.063121.i, align 1
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.n, label %drmp3_hdr_valid.exit.thread.i

bb.n:                                             ; preds = %.lr.ph125.i
  %i.cx = getelementptr i8, ptr %.063121.i, i64 1 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 7 uses
  %i.da = and i32 %i.cz, 240
  %i.db = icmp ne i32 %i.da, 240
  %i.dc = and i32 %i.cz, 254
  %i.dd = icmp ne i32 %i.dc, 226
  %or.cond.not11.i.i136 = and i1 %i.db, %i.dd
  %i.de = and i8 %i.cy, 6                         ; 2 uses
  %.not.i.i137 = icmp eq i8 %i.de, 0
  %or.cond8.i.i138 = or i1 %.not.i.i137, %or.cond.not11.i.i136
  br i1 %or.cond8.i.i138, label %drmp3_hdr_valid.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr i8, ptr %.063121.i, i64 2 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1             ; 4 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %.mask.i.i139 = and i32 %i.dh, 240
  %.not6.i.i140 = icmp eq i32 %.mask.i.i139, 240
  %i.di = and i32 %i.dh, 12
  %.not105.i = icmp eq i32 %i.di, 12
  %or.cond107.i = or i1 %.not6.i.i140, %.not105.i
  br i1 %or.cond107.i, label %drmp3_hdr_valid.exit.thread.i, label %drmp3_hdr_padding.exit.i

drmp3_hdr_padding.exit.i:                         ; preds = %bb.o
  %i.dj = and i32 %i.cz, 6
  %i.dk = icmp eq i32 %i.dj, 6
  %i.dl = and i32 %i.cz, 14
  %i.dm = icmp eq i32 %i.dl, 2
  %i.dn = zext i1 %i.dm to i32
  %i.do = lshr exact i32 1152, %i.dn
  %i.dp = lshr i32 %i.cz, 3
  %.lobit.i.i.i = and i32 %i.dp, 1                ; 2 uses
  %i.dq = zext nneg i32 %.lobit.i.i.i to i64
  %i.dr = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.dq
  %i.ds = lshr i32 %i.cz, 1
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr [15 x i8], ptr %i.dr, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -15
  %i.dx = lshr i8 %i.dg, 4
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.do, 250
  %i.ed = select i1 %i.dk, i32 96000, i32 %i.ec
  %i.ee = mul nuw nsw i32 %i.ed, %i.eb
  %i.ef = lshr i8 %i.dg, 2
  %i.eg = and i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
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

.lr.ph.i:                                         ; preds = %drmp3_hdr_padding.exit.i
  %i.ex = add nuw nsw i64 %indvars.iv140.i, 4
  br label %bb.p

bb.p:                                             ; preds = %drmp3_hdr_compare.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %drmp3_hdr_compare.exit.thread.i ] ; 6 uses
  %.054118.i = phi i32 [ %i.eu, %.lr.ph.i ], [ %.2.i, %drmp3_hdr_compare.exit.thread.i ] ; 12 uses
  %i.ey = shl nuw nsw i64 %indvars.iv.i, 1
  %i.ez = add nuw nsw i64 %i.ey, %indvars.iv140.i
  %i.fa = trunc nuw i64 %i.ez to i32
  %i.fb = icmp sgt i32 %i.ct, %i.fa
  br i1 %i.fb, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.fc = getelementptr inbounds nuw i8, ptr %.063121.i, i64 %indvars.iv.i ; 4 uses
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, -1
  br i1 %i.fe, label %bb.r, label %drmp3_hdr_compare.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fg = load i8, ptr %i.ff, align 1             ; 3 uses
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = and i32 %i.fh, 240
  %i.fj = icmp ne i32 %i.fi, 240
  %i.fk = and i32 %i.fh, 254
  %i.fl = icmp ne i32 %i.fk, 226
  %or.cond.not11.i.i.i = and i1 %i.fj, %i.fl
  %i.fm = and i8 %i.fg, 6                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fm, 0
  %or.cond8.i.i.i = or i1 %.not.i.i.i, %or.cond.not11.i.i.i
  br i1 %or.cond8.i.i.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fo = load i8, ptr %i.fn, align 1             ; 4 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %.mask.i.i.i = and i32 %i.fp, 240
  %.not6.i.i.i = icmp eq i32 %.mask.i.i.i, 240
  %i.fq = and i32 %i.fp, 12
  %.not8.i.i = icmp eq i32 %i.fq, 12
  %or.cond.i.i = or i1 %.not6.i.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fr = load i8, ptr %i.cx, align 1             ; 3 uses
  %i.fs = xor i8 %i.fr, %i.fg
  %i.ft = icmp ult i8 %i.fs, 2
  br i1 %i.ft, label %bb.u, label %drmp3_hdr_compare.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.fu = load i8, ptr %i.df, align 1             ; 4 uses
  %i.fv = xor i8 %i.fu, %i.fo
  %i.fw = and i8 %i.fv, 12
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %drmp3_hdr_compare.exit.i, label %drmp3_hdr_compare.exit.thread.i

drmp3_hdr_compare.exit.i:                         ; preds = %bb.u
  %i.fy = icmp ult i8 %i.fu, 16                   ; 2 uses
  %i.fz = icmp ult i8 %i.fo, 16
  %.not70.i = xor i1 %i.fz, %i.fy
  br i1 %.not70.i, label %drmp3_hdr_compare.exit.thread.i, label %drmp3_hdr_padding.exit78.i

drmp3_hdr_padding.exit78.i:                       ; preds = %drmp3_hdr_compare.exit.i
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
  br i1 %i.gn, label %drmp3_hdr_compare.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %drmp3_hdr_padding.exit78.i
  %i.go = sext i32 %i.gj to i64
  %i.gp = getelementptr inbounds i8, ptr %i.fc, i64 %i.go ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = icmp eq i8 %i.gq, -1
  br i1 %i.gr, label %bb.w, label %drmp3_hdr_compare.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gt = load i8, ptr %i.gs, align 1             ; 3 uses
  %i.gu = zext i8 %i.gt to i32                    ; 2 uses
  %i.gv = and i32 %i.gu, 240
  %i.gw = icmp ne i32 %i.gv, 240
  %i.gx = and i32 %i.gu, 254
  %i.gy = icmp ne i32 %i.gx, 226
  %or.cond.not11.i.i81.i = and i1 %i.gw, %i.gy
  %i.gz = and i8 %i.gt, 6
  %.not.i.i82.i = icmp eq i8 %i.gz, 0
  %or.cond8.i.i83.i = or i1 %.not.i.i82.i, %or.cond.not11.i.i81.i
  br i1 %or.cond8.i.i83.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.hb = load i8, ptr %i.ha, align 1             ; 3 uses
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %.mask.i.i84.i = and i32 %i.hc, 240
  %.not6.i.i85.i = icmp ne i32 %.mask.i.i84.i, 240
  %i.hd = and i32 %i.hc, 12
  %.not8.i86.i = icmp ne i32 %i.hd, 12
  %or.cond.i87.not157.i = and i1 %.not6.i.i85.i, %.not8.i86.i
  %i.he = xor i8 %i.gt, %i.fr
  %i.hf = icmp ult i8 %i.he, 2
  %or.cond155.i.a = and i1 %i.hf, %or.cond.i87.not157.i
  br i1 %or.cond155.i.a, label %bb.y, label %drmp3_hdr_compare.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.hg = xor i8 %i.hb, %i.fu
  %i.hh = and i8 %i.hg, 12
  %i.hi = icmp ne i8 %i.hh, 0
  %i.hj = icmp ult i8 %i.hb, 16
  %.not71.i = xor i1 %i.fy, %i.hj
  %or.cond156.i = or i1 %.not71.i, %i.hi
  br i1 %or.cond156.i, label %drmp3_hdr_compare.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.ge, ptr %i.cs, align 4
  br label %drmp3_hdr_compare.exit.thread.i

drmp3_hdr_compare.exit.thread.i:                  ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %drmp3_hdr_padding.exit78.i, %drmp3_hdr_compare.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.257.i = phi i32 [ 0, %drmp3_hdr_compare.exit.i ], [ %i.ge, %bb.z ], [ 0, %bb.x ], [ 0, %drmp3_hdr_padding.exit78.i ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %.2.i = phi i32 [ %.054118.i, %drmp3_hdr_compare.exit.i ], [ %i.gd, %bb.z ], [ %.054118.i, %bb.x ], [ %.054118.i, %drmp3_hdr_padding.exit78.i ], [ %.054118.i, %bb.r ], [ %.054118.i, %bb.u ], [ %.054118.i, %bb.t ], [ %.054118.i, %bb.q ], [ %.054118.i, %bb.s ], [ %.054118.i, %bb.y ], [ %.054118.i, %bb.w ], [ %.054118.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hk = icmp eq i32 %.257.i, 0                  ; 2 uses
  %i.hl = icmp samesign ult i64 %indvars.iv.i, 2303
  %or.cond.i143 = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond.i143, label %bb.p, label %.critedge.i

.critedge.i:                                      ; preds = %drmp3_hdr_compare.exit.thread.i, %drmp3_hdr_padding.exit.i
  %.055.lcssa.i = phi i32 [ %spec.select.i.i, %drmp3_hdr_padding.exit.i ], [ %.257.i, %drmp3_hdr_compare.exit.thread.i ]
  %.054.lcssa.i = phi i32 [ %i.eu, %drmp3_hdr_padding.exit.i ], [ %.2.i, %drmp3_hdr_compare.exit.thread.i ] ; 9 uses
  %.lcssa.i = phi i1 [ false, %drmp3_hdr_padding.exit.i ], [ %i.hk, %drmp3_hdr_compare.exit.thread.i ]
  %i.hm = add nsw i32 %.054.lcssa.i, %i.ew        ; 2 uses
  %.not67.i = icmp sgt i32 %i.hm, %2
  %or.cond72.i = select i1 %.lcssa.i, i1 true, i1 %.not67.i
  br i1 %or.cond72.i, label %.critedge.thread.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %i.hn = sub nuw nsw i64 %i.cu, %indvars.iv140.i
  %.val.pre.i.i = load i8, ptr %i.cx, align 1     ; 2 uses
  %.val16.pre.i.i = load i8, ptr %i.df, align 1   ; 3 uses
  %7 = icmp ult i8 %.val16.pre.i.i, 16
  br label %drmp3_hdr_padding.exit.i.i

drmp3_hdr_padding.exit.i.i:                       ; preds = %bb.af, %bb.aa
  %.val16.i.i = phi i8 [ %.val16.pre.i.i, %bb.aa ], [ %i.ju, %bb.af ] ; 3 uses
  %.val.i.i = phi i8 [ %.val.pre.i.i, %bb.aa ], [ %i.jm, %bb.af ] ; 2 uses
  %.021.i.i = phi i32 [ 0, %bb.aa ], [ %i.jy, %bb.af ] ; 2 uses
  %.01420.i.i = phi i32 [ 0, %bb.aa ], [ %i.jd, %bb.af ]
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
  %i.hx = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.hw
  %i.hy = lshr i32 %i.ho, 1
  %i.hz = and i32 %i.hy, 3
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr [15 x i8], ptr %i.hx, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 -15
  %i.id = lshr i8 %.val16.i.i, 4
  %i.ie = zext nneg i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.hu, 250
  %i.ij = select i1 %i.hq, i32 96000, i32 %i.ii
  %i.ik = mul nuw nsw i32 %i.ij, %i.ih
  %i.il = lshr i8 %.val16.i.i, 2
  %i.im = and i8 %i.il, 3
  %i.in = zext nneg i8 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4
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
  br i1 %i.jg, label %drmp3d_match_frame.exit.i, label %bb.ab

bb.ab:                                            ; preds = %drmp3_hdr_padding.exit.i.i
  %i.jh = sext i32 %i.jd to i64
  %i.ji = getelementptr inbounds i8, ptr %.063121.i, i64 %i.jh ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1
  %i.jk = icmp eq i8 %i.jj, -1
  br i1 %i.jk, label %bb.ac, label %.critedge.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.jm = load i8, ptr %i.jl, align 1             ; 4 uses
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
  %i.ju = load i8, ptr %i.jt, align 1             ; 4 uses
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %.mask.i.i.i.i = and i32 %i.jv, 240
  %.not6.i.i.i.i = icmp ne i32 %.mask.i.i.i.i, 240
  %i.jw = and i32 %i.jv, 12
  %.not8.i.i.i = icmp ne i32 %i.jw, 12
  %or.cond.i.not28.i.i = and i1 %.not6.i.i.i.i, %.not8.i.i.i
  %8 = xor i8 %i.jm, %.val.pre.i.i
  %9 = icmp ult i8 %8, 2
  %or.cond.i91.i = select i1 %or.cond.i.not28.i.i, i1 %9, i1 false
  br i1 %or.cond.i91.i, label %bb.ae, label %.critedge.thread.i

bb.ae:                                            ; preds = %bb.ad
  %10 = xor i8 %i.ju, %.val16.pre.i.i
  %11 = and i8 %10, 12
  %12 = icmp ne i8 %11, 0
  %i.jx = icmp ult i8 %i.ju, 16
  %.not.i92.i = xor i1 %7, %i.jx
  %or.cond27.i.i = select i1 %12, i1 true, i1 %.not.i92.i
  br i1 %or.cond27.i.i, label %.critedge.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jy = add nuw nsw i32 %.021.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jy, 10
  br i1 %exitcond.not.i.i, label %drmp3d_find_frame.exit, label %drmp3_hdr_padding.exit.i.i

drmp3d_match_frame.exit.i:                        ; preds = %drmp3_hdr_padding.exit.i.i
  %.not.i142 = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i142, label %.critedge.thread.i, label %drmp3d_find_frame.exit.loopexit339

.critedge.thread.i:                               ; preds = %bb.p, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %drmp3d_match_frame.exit.i, %.critedge.i
  %.054112.i = phi i32 [ %.054.lcssa.i, %bb.ae ], [ %.054.lcssa.i, %.critedge.i ], [ %.054.lcssa.i, %drmp3d_match_frame.exit.i ], [ %.054.lcssa.i, %bb.ab ], [ %.054.lcssa.i, %bb.ac ], [ %.054.lcssa.i, %bb.ad ], [ %.054118.i, %bb.p ]
  %.not69.i = icmp eq i64 %indvars.iv140.i, 0
  %i.jz = icmp eq i32 %.054112.i, %2
  %or.cond73.i = select i1 %.not69.i, i1 %i.jz, i1 false
  br i1 %or.cond73.i, label %drmp3d_find_frame.exit.loopexit339, label %.thread.i

.thread.i:                                        ; preds = %.critedge.thread.i
  store i32 0, ptr %i.cs, align 4
  br label %drmp3_hdr_valid.exit.thread.i

drmp3_hdr_valid.exit.thread.i:                    ; preds = %.thread.i, %bb.o, %bb.n, %.lr.ph125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.063121.i, i64 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %drmp3d_find_frame.exit.thread, label %.lr.ph125.i

drmp3d_find_frame.exit.loopexit339:               ; preds = %drmp3d_match_frame.exit.i, %.critedge.thread.i
  %storemerge.i.ph = phi i32 [ %2, %.critedge.thread.i ], [ %.054.lcssa.i, %drmp3d_match_frame.exit.i ] ; 2 uses
  %.3.i.ph = phi i32 [ 0, %.critedge.thread.i ], [ %i.ew, %drmp3d_match_frame.exit.i ] ; 2 uses
  %.pre419.a = add nsw i32 %.3.i.ph, %storemerge.i.ph
  br label %drmp3d_find_frame.exit

drmp3d_find_frame.exit:                           ; preds = %bb.af, %drmp3d_find_frame.exit.loopexit339
  %.pre-phi = phi i32 [ %.pre419.a, %drmp3d_find_frame.exit.loopexit339 ], [ %i.hm, %bb.af ]
  %storemerge.i = phi i32 [ %storemerge.i.ph, %drmp3d_find_frame.exit.loopexit339 ], [ %.054.lcssa.i, %bb.af ] ; 2 uses
  %.3.i = phi i32 [ %.3.i.ph, %drmp3d_find_frame.exit.loopexit339 ], [ %i.ew, %bb.af ] ; 2 uses
  %.not113 = icmp eq i32 %storemerge.i, 0
  %i.kb = icmp sgt i32 %.pre-phi, %2
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.kb
  br i1 %or.cond117, label %drmp3d_find_frame.exit.thread, label %.thread216

drmp3d_find_frame.exit.thread:                    ; preds = %drmp3_hdr_valid.exit.thread.i, %bb.m, %drmp3d_find_frame.exit
  %.3.i226 = phi i32 [ %.3.i, %drmp3d_find_frame.exit ], [ %2, %bb.m ], [ %2, %drmp3_hdr_valid.exit.thread.i ]
  store i32 %.3.i226, ptr %4, align 4
  br label %bb.gb

.thread216:                                       ; preds = %bb.l, %drmp3_hdr_padding.exit, %drmp3d_find_frame.exit
  %.1 = phi i32 [ %storemerge.i, %drmp3d_find_frame.exit ], [ %i.bt, %bb.l ], [ %2, %drmp3_hdr_padding.exit ] ; 2 uses
  %.095 = phi i32 [ %.3.i, %drmp3d_find_frame.exit ], [ 0, %bb.l ], [ 0, %drmp3_hdr_padding.exit ] ; 2 uses
  %i.kc = sext i32 %.095 to i64
  %i.kd = getelementptr inbounds i8, ptr %1, i64 %i.kc ; 6 uses
  %i.ke = load i32, ptr %i.kd, align 1
  store i32 %i.ke, ptr %i.d, align 8
  %i.kf = add nsw i32 %.095, %.1
  store i32 %i.kf, ptr %4, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 3 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = icmp ugt i8 %i.kh, -65
  %i.kj = select i1 %i.ki, i32 1, i32 2
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  store i32 %i.kj, ptr %i.kk, align 4
  %i.kl = getelementptr i8, ptr %i.kd, i64 1      ; 5 uses
  %.val121 = load i8, ptr %i.kl, align 1
  %i.km = getelementptr i8, ptr %i.kd, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.km, align 1
  %i.kn = lshr i8 %.val122, 2
  %i.ko = and i8 %i.kn, 3
  %i.kp = zext nneg i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr @drmp3_hdr_sample_rate_hz.g_hz, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4
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
  store i32 %i.ky, ptr %i.kz, align 4
  %i.la = load i8, ptr %i.kl, align 1
  %i.lb = lshr i8 %i.la, 1
  %i.lc = and i8 %i.lb, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.lc
  %i.ld = zext nneg i8 %narrow to i32
  %i.le = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4
  %.val119 = load i8, ptr %i.kl, align 1
  %.val120 = load i8, ptr %i.km, align 1
  %i.lf = zext i8 %.val119 to i32                 ; 2 uses
  %i.lg = lshr i32 %i.lf, 3
  %.lobit.i144 = and i32 %i.lg, 1
  %i.lh = zext nneg i32 %.lobit.i144 to i64
  %i.li = getelementptr inbounds nuw [45 x i8], ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 %i.lh
  %i.lj = lshr i32 %i.lf, 1
  %i.lk = and i32 %i.lj, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr [15 x i8], ptr %i.li, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 -15
  %i.lo = lshr i8 %.val120, 4
  %i.lp = zext nneg i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = zext i8 %i.lr to i32
  %i.lt = shl nuw nsw i32 %i.ls, 1
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lt, ptr %i.lu, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kd, i64 4 ; 9 uses
  store ptr %i.lv, ptr %5, align 16
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.lw, align 8
  %i.lx = shl i32 %.1, 3
  %i.ly = add i32 %i.lx, -32                      ; 10 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.ly, ptr %i.lz, align 4
  %i.ma = load i8, ptr %i.kl, align 1
  %.fr = freeze i8 %i.ma                          ; 4 uses
  %i.mb = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.mb, 0
  br i1 %.not114, label %bb.ag, label %drmp3_bs_get_bits.exit

bb.ag:                                            ; preds = %.thread216
  store i32 16, ptr %i.lw, align 8
  br label %drmp3_bs_get_bits.exit

drmp3_bs_get_bits.exit:                           ; preds = %bb.ag, %.thread216
  %.promoted = phi i32 [ 0, %.thread216 ], [ 16, %bb.ag ]
  %i.mc = icmp eq i8 %i.lc, 1
  br i1 %i.mc, label %bb.ah, label %bb.eo

bb.ah:                                            ; preds = %drmp3_bs_get_bits.exit
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 7 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.mf = call fastcc i32 @drmp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.me, ptr noundef nonnull %i.kd) ; 4 uses
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mh = load i32, ptr %i.lw, align 8            ; 3 uses
  %i.mi = load i32, ptr %i.lz, align 4            ; 2 uses
  %i.mj = icmp sgt i32 %i.mh, %i.mi
  br i1 %i.mj, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.d, align 8
  br label %bb.gb

bb.aj:                                            ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 8            ; 2 uses
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
  %i.mv = load ptr, ptr %5, align 16
  %i.mw = sdiv i32 %i.mh, 8
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.mx
  %i.mz = zext nneg i32 %i.ms to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr align 1 %i.my, i64 %i.mz, i1 false)
  %i.na = add nsw i32 %..i, %i.ms
  store ptr %i.mq, ptr %i.md, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.nb, align 8
  %i.nc = shl nsw i32 %i.na, 3                    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.nc, ptr %i.nd, align 4
  %i.ne = load i32, ptr %i.mk, align 8
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

bb.ak:                                            ; preds = %.preheader, %drmp3_L3_decode.exit
  %i.oa = phi i1 [ true, %.preheader ], [ false, %drmp3_L3_decode.exit ]
  %.093331 = phi i32 [ 0, %.preheader ], [ 1, %drmp3_L3_decode.exit ]
  %.0100330 = phi ptr [ %3, %.preheader ], [ %i.ble, %drmp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.ni, i8 0, i64 4608, i1 false)
  %i.ob = load i32, ptr %i.kk, align 4            ; 4 uses
  %i.oc = mul nuw nsw i32 %i.ob, %.093331
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [32 x i8], ptr %i.me, i64 %i.od ; 7 uses
end_hunk_0
begin_hunk_1_@jar_xm_handle_note_and_instrument:bb.a
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 130
  store i8 0, ptr %i.aj, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store i64 %i.al, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not42.i = icmp eq ptr %i.ao, null
  br i1 %.not42.i, label %jar_xm_trigger_note.exitthread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.ak, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store i64 %i.ap, ptr %i.aq, align 8
  br label %jar_xm_trigger_note.exitthread-pre-split

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i8 %i.b to i16
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float 0.000000e+00, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  br label %jar_xm_trigger_note.exitthread-pre-split

bb.n:                                             ; preds = %bb.l
  %i.ax = zext i8 %i.b to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr [272 x i8], ptr %i.az, i64 %i.ax
  %i.bb = getelementptr i8, ptr %i.ba, i64 -272
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = load i8, ptr %2, align 1                ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.o, label %jar_xm_trigger_note.exit

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not286 = icmp eq ptr %i.bg, null
  br i1 %.not286, label %jar_xm_trigger_note.exitthread-pre-split, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @jar_xm_trigger_note(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4)
  br label %jar_xm_trigger_note.exitthread-pre-split

jar_xm_trigger_note.exitthread-pre-split:         ; preds = %bb.a, %bb.m, %bb.p, %bb.o, %bb.j, %bb.k
  %.pr = load i8, ptr %2, align 1
  br label %jar_xm_trigger_note.exit

jar_xm_trigger_note.exit:                         ; preds = %jar_xm_trigger_note.exitthread-pre-split, %bb.n
  %i.bh = phi i8 [ %.pr, %jar_xm_trigger_note.exitthread-pre-split ], [ %i.bd, %bb.n ] ; 4 uses
  %i.bi = add i8 %i.bh, -1
  %or.cond325 = icmp ult i8 %i.bi, 96
  br i1 %or.cond325, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %jar_xm_trigger_note.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.bo = load i8, ptr %i.bn, align 1
  switch i8 %i.bo, label %bb.r [
    i8 3, label %bb.s
    i8 5, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp ugt i8 %i.bq, -17
  %i.bs = icmp ne ptr %i.bk, null
  %or.cond = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond, label %bb.t, label %bb.aa

bb.s:                                             ; preds = %bb.q, %bb.q
  %cond = icmp eq ptr %i.bk, null
  br i1 %cond, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not288 = icmp eq ptr %i.bu, null
  br i1 %.not288, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = zext nneg i8 %i.bh to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = sext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = sitofp i32 %i.bz to float
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = sitofp i8 %i.cc to float
  %i.ce = fmul nnan float %i.cd, 7.812500e-03
  %i.cf = fadd float %i.ce, %i.ca
  %i.cg = fadd float %i.cf, -1.000000e+00         ; 5 uses
  store float %i.cg, ptr %1, align 8
  %i.ch = getelementptr i8, ptr %0, i64 64
  %.val327 = load i32, ptr %i.ch, align 8
  switch i32 %.val327, label %jar_xm_period.exit [
    i32 0, label %bb.v
    i32 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.ci = fneg float %i.cg
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float 6.400000e+01, float 7.680000e+03)
  br label %jar_xm_period.exit

bb.w:                                             ; preds = %bb.u
  %i.ck = fptoui float %i.cg to i32               ; 2 uses
  %i.cl = urem i32 %i.ck, 12
  %i.cm = fdiv float %i.cg, 1.200000e+01
  %i.cn = fadd float %i.cm, -2.000000e+00
  %i.co = fptosi float %i.cn to i8                ; 3 uses
  %i.cp = zext nneg i32 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @amiga_frequencies, i64 %i.cp ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.ct = load i16, ptr %i.cs, align 2            ; 3 uses
  %i.cu = sext i8 %i.co to i32                    ; 3 uses
  %i.cv = icmp sgt i8 %i.co, 0
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = zext i16 %i.cr to i32
  %i.cx = lshr i32 %i.cw, %i.cu
  %i.cy = trunc nuw nsw i32 %i.cx to i16
  %i.cz = zext i16 %i.ct to i32
  %i.da = lshr i32 %i.cz, %i.cu
  %i.db = trunc nuw nsw i32 %i.da to i16
  br label %jar_xm_amiga_period.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dc = icmp slt i8 %i.co, 0
  br i1 %i.dc, label %bb.z, label %jar_xm_amiga_period.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dd = sub nsw i32 0, %i.cu                    ; 2 uses
  %i.de = zext i16 %i.cr to i32
  %i.df = shl i32 %i.de, %i.dd
  %i.dg = trunc i32 %i.df to i16
  %i.dh = zext i16 %i.ct to i32
  %i.di = shl i32 %i.dh, %i.dd
  %i.dj = trunc i32 %i.di to i16
  br label %jar_xm_amiga_period.exit.i

jar_xm_amiga_period.exit.i:                       ; preds = %bb.z, %bb.y, %bb.x
  %.019.i.i = phi i16 [ %i.cy, %bb.x ], [ %i.dg, %bb.z ], [ %i.cr, %bb.y ] ; 2 uses
  %.0.i.i = phi i16 [ %i.db, %bb.x ], [ %i.dj, %bb.z ], [ %i.ct, %bb.y ]
  %i.dk = zext i16 %.019.i.i to i32
  %i.dl = uitofp i16 %.019.i.i to float
  %i.dm = uitofp i32 %i.ck to float
  %i.dn = fsub float %i.cg, %i.dm
  %i.do = zext i16 %.0.i.i to i32
  %i.dp = sub nsw i32 %i.do, %i.dk
  %i.dq = sitofp i32 %i.dp to float
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dq, float %i.dl)
  br label %jar_xm_period.exit

jar_xm_period.exit:                               ; preds = %bb.u, %bb.v, %jar_xm_amiga_period.exit.i
  %.0.i = phi float [ %i.dr, %jar_xm_amiga_period.exit.i ], [ %i.cj, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %.0.i, ptr %i.ds, align 4
  br label %jar_xm_key_off.exit

bb.aa:                                            ; preds = %bb.r
  %i.dt = icmp eq ptr %i.bk, null
  br i1 %i.dt, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.t, %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.dv = load i16, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.s, %.thread, %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float 0.000000e+00, ptr %i.dx, align 4
  br label %jar_xm_key_off.exit

bb.ac:                                            ; preds = %.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bk, i64 26 ; 2 uses
  %i.dz = zext nneg i8 %i.bh to i64
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1             ; 2 uses
  %i.ed = zext i8 %i.ec to i16
  %i.ee = icmp ugt i16 %i.dv, %i.ed
  br i1 %i.ee, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.eg = load i16, ptr %i.ef, align 2
  %.not289 = icmp eq i16 %i.eg, 0
  br i1 %.not289, label %bb.ae, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ad
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 5)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 6)
  tail call fastcc void @jar_xm_next_of_sample(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 7)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 0, ptr %i.eh, align 8
  %.pre = load i8, ptr %2, align 1
  %.phi.trans.insert.a = zext i8 %.pre to i64
  %.phi.trans.insert338 = getelementptr i8, ptr %i.dy, i64 %.phi.trans.insert.a
  %.phi.trans.insert339 = getelementptr i8, ptr %.phi.trans.insert338, i64 -1
  %.pre340 = load i8, ptr %.phi.trans.insert339, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader.preheader, %bb.ad
  %3 = phi i8 [ %.pre340, %.preheader.preheader ], [ %i.ec, %bb.ad ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bk, i64 264
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = zext i8 %3 to i64
  %i.el = getelementptr inbounds nuw [80 x i8], ptr %i.ej, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.el, ptr %i.em, align 8
  %i.en = load i8, ptr %2, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 60
  %i.eq = load i8, ptr %i.ep, align 4
  %i.er = sext i8 %i.eq to i32
  %i.es = add nsw i32 %i.er, %i.eo
  %i.et = sitofp i32 %i.es to float
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.ev = load i8, ptr %i.eu, align 8
  %i.ew = sitofp i8 %i.ev to float
  %i.ex = fmul nnan float %i.ew, 7.812500e-03
  %i.ey = fadd float %i.ex, %i.et
  %i.ez = fadd float %i.ey, -1.000000e+00         ; 2 uses
  store float %i.ez, ptr %1, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ez, ptr %i.fa, align 4
  %i.fb = load i8, ptr %i.a, align 1
  %.not290 = icmp eq i8 %i.fb, 0
  br i1 %.not290, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @jar_xm_trigger_note(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %jar_xm_key_off.exit

bb.ag:                                            ; preds = %bb.ae
  tail call fastcc void @jar_xm_trigger_note(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %jar_xm_key_off.exit

bb.ah:                                            ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float 0.000000e+00, ptr %i.fc, align 4
  br label %jar_xm_key_off.exit

bb.ai:                                            ; preds = %jar_xm_trigger_note.exit
  %i.fd = icmp eq i8 %i.bh, 97
  br i1 %i.fd, label %bb.aj, label %jar_xm_key_off.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 0, ptr %i.fe, align 2
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 174
  %i.fj = load i8, ptr %i.fi, align 2, !range !66, !noundef !53
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %jar_xm_key_off.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float 0.000000e+00, ptr %i.fl, align 4
  br label %jar_xm_key_off.exit

jar_xm_key_off.exit:                              ; preds = %bb.al, %bb.ak, %jar_xm_period.exit, %bb.ah, %bb.ag, %bb.af, %bb.ab, %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fn = load i8, ptr %i.fm, align 1
  switch i8 %i.fn, label %bb.ea [
    i8 1, label %bb.am
    i8 2, label %bb.ao
    i8 3, label %bb.aq
    i8 4, label %bb.as
    i8 5, label %bb.aw
    i8 6, label %bb.ay
    i8 7, label %bb.ba
    i8 8, label %bb.be
    i8 9, label %bb.bf
    i8 10, label %bb.bu
    i8 11, label %bb.bw
    i8 12, label %bb.by
    i8 13, label %bb.bz
    i8 14, label %bb.ca
    i8 15, label %bb.dd
    i8 16, label %bb.dh
    i8 17, label %bb.di
    i8 21, label %bb.dk
    i8 25, label %bb.dl
    i8 27, label %bb.dn
    i8 29, label %bb.dr
    i8 33, label %bb.dt
  ]

bb.am:                                            ; preds = %jar_xm_key_off.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fp = load i8, ptr %i.fo, align 1             ; 2 uses
  %.not324 = icmp eq i8 %i.fp, 0
  br i1 %.not324, label %bb.ea, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 90
  store i8 %i.fp, ptr %i.fq, align 2
  br label %bb.ea

bb.ao:                                            ; preds = %jar_xm_key_off.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fs = load i8, ptr %i.fr, align 1             ; 2 uses
  %.not323 = icmp eq i8 %i.fs, 0
  br i1 %.not323, label %bb.ea, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 91
  store i8 %i.fs, ptr %i.ft, align 1
  br label %bb.ea

bb.aq:                                            ; preds = %jar_xm_key_off.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fv = load i8, ptr %i.fu, align 1             ; 2 uses
  %.not322 = icmp eq i8 %i.fv, 0
  br i1 %.not322, label %bb.ea, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 %i.fv, ptr %i.fw, align 8
  br label %bb.ea

bb.as:                                            ; preds = %jar_xm_key_off.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1             ; 2 uses
  %i.fz = and i8 %i.fy, 15                        ; 2 uses
  %.not320 = icmp eq i8 %i.fz, 0
  br i1 %.not320, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 117 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = and i8 %i.gb, -16
  %i.gd = or disjoint i8 %i.gc, %i.fz
  store i8 %i.gd, ptr %i.ga, align 1
  %.pr335 = load i8, ptr %i.fx, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ge = phi i8 [ %.pr335, %bb.at ], [ %i.fy, %bb.as ] ; 2 uses
  %.not321 = icmp ult i8 %i.ge, 16
  br i1 %.not321, label %bb.ea, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gf = and i8 %i.ge, -16
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 117 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = and i8 %i.gh, 15
  %i.gj = or disjoint i8 %i.gi, %i.gf
  store i8 %i.gj, ptr %i.gg, align 1
  br label %bb.ea

bb.aw:                                            ; preds = %jar_xm_key_off.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gl = load i8, ptr %i.gk, align 1             ; 2 uses
  %.not319 = icmp eq i8 %i.gl, 0
  br i1 %.not319, label %bb.ea, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 86
  store i8 %i.gl, ptr %i.gm, align 2
  br label %bb.ea

bb.ay:                                            ; preds = %jar_xm_key_off.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.go = load i8, ptr %i.gn, align 1             ; 2 uses
  %.not318 = icmp eq i8 %i.go, 0
  br i1 %.not318, label %bb.ea, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 86
  store i8 %i.go, ptr %i.gp, align 2
  br label %bb.ea

bb.ba:                                            ; preds = %jar_xm_key_off.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1             ; 2 uses
  %i.gs = and i8 %i.gr, 15                        ; 2 uses
  %.not316 = icmp eq i8 %i.gs, 0
  br i1 %.not316, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 129 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = and i8 %i.gu, -16
  %i.gw = or disjoint i8 %i.gv, %i.gs
  store i8 %i.gw, ptr %i.gt, align 1
  %.pr336 = load i8, ptr %i.gq, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gx = phi i8 [ %.pr336, %bb.bb ], [ %i.gr, %bb.ba ] ; 2 uses
  %.not317 = icmp ult i8 %i.gx, 16
  br i1 %.not317, label %bb.ea, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gy = and i8 %i.gx, -16
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 129 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = and i8 %i.ha, 15
  %i.hc = or disjoint i8 %i.hb, %i.gy
  store i8 %i.hc, ptr %i.gz, align 1
end_hunk_1
