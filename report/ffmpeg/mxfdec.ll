Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfdec?download=true
inline.NumInlined: 142
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 78
begin_hunk_0_@mxf_read_header:bb.a
mxf_read_sync.exit:                               ; preds = %select.unfold.i
  %.not = icmp eq i32 %.1.i, 14
  br i1 %.not, label %bb.e, label %mxf_read_sync.exit.thread

mxf_read_sync.exit.thread:                        ; preds = %bb.b, %mxf_read_sync.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #12
  br label %.thread191

bb.e:                                             ; preds = %mxf_read_sync.exit
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.s = tail call i64 @avio_seek(ptr noundef %i.r, i64 noundef -14, i32 noundef 1) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 22 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !44
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.v = tail call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12 ; 2 uses
  %or.cond = icmp ugt i64 %i.v, 65536
  br i1 %or.cond, label %.thread191, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 3 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !228
  %i.ac = and i32 %i.ab, 1
  %.not.i119 = icmp eq i32 %i.ac, 0
  br i1 %.not.i119, label %mxf_read_random_index_pack.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i64 @avio_size(ptr noundef nonnull %i.z) #12 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 552 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !45
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ah = add nsw i64 %i.ad, -4
  %i.ai = tail call i64 @avio_seek(ptr noundef %i.ag, i64 noundef %i.ah, i32 noundef 0) #12 ; 0 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ak = tail call i32 @avio_rb32(ptr noundef %i.aj) #12 ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp ult i32 %i.ak, 45
  br i1 %i.am, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sext i32 %i.af to i64
  %i.ao = sub nsw i64 %i.ad, %i.an
  %i.ap = sdiv i64 %i.ao, 105
  %i.aq = mul nsw i64 %i.ap, 12
  %i.ar = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 2147483619)
  %i.as = add nsw i64 %i.ar, 28
  %i.at = icmp slt i64 %i.as, %i.al
  br i1 %i.at, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.av = sub nsw i64 %i.ad, %i.al
  %i.aw = tail call i64 @avio_seek(ptr noundef %i.au, i64 noundef %i.av, i32 noundef 0) #12 ; 0 uses
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ay = call fastcc i32 @klv_read_packet(ptr noundef nonnull %i.y, ptr noundef %1, ptr noundef %i.ax)
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i128, ptr %1, align 8
  %i.bb = load i128, ptr @ff_mxf_random_index_pack_key, align 16
  %i.bc = icmp ne i128 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %.not34.i = icmp eq i32 %i.bd, 0
  br i1 %.not34.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !46
  %i.bg = icmp ne i64 %i.bf, %i.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 5
  %or.cond.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = add i64 %i.bi, -4
  %i.bl = urem i64 %i.bk, 12
  %.not35.i = icmp eq i64 %i.bl, 0
  br i1 %.not35.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.14) #12
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.bn = add i64 %i.bi, -12
  %i.bo = call i64 @avio_skip(ptr noundef %i.bm, i64 noundef %i.bn) #12 ; 0 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.bq = call i64 @avio_rb64(ptr noundef %i.bp) #12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 504 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !47
  %i.bs = load i32, ptr %i.ae, align 8, !tbaa !45
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt
  %.not36.i = icmp ult i64 %i.bu, %i.ad
  br i1 %.not36.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15) #12
  store i64 0, ptr %i.br, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.bw = load i32, ptr %i.ae, align 8, !tbaa !45
  %i.bx = sext i32 %i.bw to i64
  %i.by = call i64 @avio_seek(ptr noundef %i.bv, i64 noundef %i.bx, i32 noundef 0) #12 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %mxf_read_random_index_pack.exit

mxf_read_random_index_pack.exit:                  ; preds = %bb.f, %bb.p
  %i.bz = phi ptr [ %i.z, %bb.f ], [ %.pre, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ca = call i32 @avio_feof(ptr noundef %i.bz) #12
  %.not94225 = icmp eq i32 %i.ca, 0
  br i1 %.not94225, label %.lr.ph, label %.thread186.thread

.lr.ph:                                           ; preds = %mxf_read_random_index_pack.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 504 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %mxf_parse_handle_partition_or_eof.exit.thread
  %.080226 = phi i64 [ 0, %.lr.ph ], [ %.2, %mxf_parse_handle_partition_or_eof.exit.thread ] ; 10 uses
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.cx = call fastcc i32 @klv_read_packet(ptr noundef %i.e, ptr noundef %2, ptr noundef %i.cw)
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = load i128, ptr %2, align 16
  %i.da = load i128, ptr @ff_mxf_random_index_pack_key, align 16
  %i.db = icmp ne i128 %i.cz, %i.da
  %i.dc = zext i1 %i.db to i32
  %.not95 = icmp eq i32 %i.dc, 0
  br i1 %.not95, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.de = call i64 @avio_size(ptr noundef %i.dd) #12
  %i.df = load i64, ptr %i.cv, align 16, !tbaa !46
  %i.dg = icmp sgt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.7) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s
  %i.dh = load i32, ptr %i.cf, align 8, !tbaa !48
  %.not.i120 = icmp eq i32 %i.dh, 0
  br i1 %.not.i120, label %mxf_parse_handle_partition_or_eof.exit.thread, label %mxf_parse_handle_partition_or_eof.exit

mxf_parse_handle_partition_or_eof.exit:           ; preds = %bb.u
  %i.di = call fastcc i32 @mxf_seek_to_previous_partition(ptr noundef nonnull %i.e)
  %.fr = freeze i32 %i.di
  %i.dj = icmp slt i32 %.fr, 1
  br i1 %i.dj, label %.thread186, label %mxf_parse_handle_partition_or_eof.exit.thread

bb.v:                                             ; preds = %bb.r
  %i.dk = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.dl = load i64, ptr %i.cc, align 16, !tbaa !50
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.8, i64 noundef %i.dk, i64 noundef %i.dl) #12
  %i.dm = load <9 x i8>, ptr %2, align 16
  %i.dn = shufflevector <9 x i8> %i.dm, <9 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %.fr387 = freeze <8 x i8> %i.dn
  %i.do = icmp eq <8 x i8> %.fr387, <i8 6, i8 14, i8 43, i8 52, i8 2, i8 4, i8 1, i8 13> ; 2 uses
  %i.dp = load <4 x i8>, ptr %i.co, align 1
  %.fr388 = freeze <4 x i8> %i.dp
  %i.dq = icmp eq <4 x i8> %.fr388, <i8 1, i8 3, i8 1, i8 2>
  %i.dr = load i8, ptr %i.cd, align 1
  %.not9.i.13 = icmp eq i8 %i.dr, 126
  %i.ds = load i8, ptr %i.cs, align 2
  %.not9.i.14 = icmp eq i8 %i.ds, 1
  %i.dt = load i8, ptr %i.ct, align 1
  %.not9.i.15 = icmp eq i8 %i.dt, 0
  %i.du = shufflevector <8 x i1> %i.do, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.du, %i.dq
  %i.dv = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i1> %i.dv, <8 x i1> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dx = bitcast <8 x i1> %i.dw to i8
  %i.dy = icmp eq i8 %i.dx, -1
  %op.rdx = select i1 %i.dy, i1 %.not9.i.13, i1 false
  %3 = select i1 %op.rdx, i1 %.not9.i.14, i1 false
  %op.rdx386 = select i1 %3, i1 %.not9.i.15, i1 false
  br i1 %op.rdx386, label %mxf_match_uid.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = load i64, ptr %2, align 16
  %i.ea = xor i64 %i.dz, 72341273208098310
  %i.eb = getelementptr i8, ptr %2, i64 8
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = zext i32 %i.ec to i64
  %i.ee = xor i64 %i.ed, 16974093
  %i.ef = or i64 %i.ea, %i.ee
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %.not98 = icmp eq i32 %i.eh, 0
  br i1 %.not98, label %mxf_match_uid.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = load i64, ptr %2, align 16
  %i.ej = xor i64 %i.ei, 720859619549449734
  %i.ek = getelementptr i8, ptr %2, i64 8
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = zext i32 %i.el to i64
  %i.en = xor i64 %i.em, 16977678
  %i.eo = or i64 %i.ej, %i.en
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %.not100 = icmp eq i32 %i.eq, 0
  br i1 %.not100, label %mxf_match_uid.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = load i64, ptr %2, align 16
  %i.es = xor i64 %i.er, 72341273208098310
  %i.et = getelementptr i8, ptr %2, i64 8
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = zext i32 %i.eu to i64
  %i.ew = xor i64 %i.ev, 16974862
  %i.ex = or i64 %i.es, %i.ew
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %.not102 = icmp eq i32 %i.ez, 0
  br i1 %.not102, label %mxf_match_uid.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = load i64, ptr %2, align 16
  %i.fb = xor i64 %i.fa, 72344576037948934
  %i.fc = getelementptr i8, ptr %2, i64 5
  %i.fd = load i64, ptr %i.fc, align 1
  %i.fe = xor i64 %i.fd, 288515154176442629
  %i.ff = or i64 %i.fb, %i.fe
  %i.fg = icmp ne i64 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %.not104 = icmp eq i32 %i.fh, 0
  br i1 %.not104, label %mxf_match_uid.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = load i64, ptr %2, align 16
  %i.fj = xor i64 %i.fi, 72430337944915462
  %i.fk = getelementptr i8, ptr %2, i64 5
  %i.fl = load i64, ptr %i.fk, align 1
  %i.fm = xor i64 %i.fl, 1441436658783289683
  %i.fn = or i64 %i.fj, %i.fm
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %.not106 = icmp eq i32 %i.fp, 0
  br i1 %.not106, label %mxf_match_uid.exit, label %bb.am

mxf_match_uid.exit:                               ; preds = %bb.v, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.fq = load ptr, ptr %i.ce, align 8, !tbaa !51 ; 3 uses
  %.not113 = icmp eq ptr %i.fq, null
  br i1 %.not113, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %mxf_match_uid.exit
  %i.fr = load ptr, ptr %i.t, align 8, !tbaa !44
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fr, i32 noundef 16, ptr noundef nonnull @.str.9) #12
  br label %.thread191

bb.ac:                                            ; preds = %mxf_match_uid.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !229
  %.not114 = icmp eq i64 %i.ft, 0
  br i1 %.not114, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 16 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !54
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not115 = icmp eq i64 %.080226, 0
  %i.fv = load i64, ptr %i.cc, align 16
  %spec.select = select i1 %.not115, i64 %i.fv, i64 %.080226 ; 5 uses
  %i.fw = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !43 ; 3 uses
  %i.fz = load i32, ptr %i.cf, align 8, !tbaa !48
  %.not.i122 = icmp eq i32 %i.fz, 0
  br i1 %.not.i122, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = call fastcc i32 @mxf_seek_to_previous_partition(ptr noundef nonnull %i.e)
  br label %mxf_parse_handle_essence.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gb = load i64, ptr %i.cu, align 8, !tbaa !47
  %.not21.i = icmp eq i64 %i.gb, 0
  br i1 %.not21.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.fw, i32 noundef 56, ptr noundef nonnull @.str.39) #12
  br label %.thread186

bb.ai:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.fw, i32 noundef 56, ptr noundef nonnull @.str.40) #12
  %i.gc = call i64 @avio_seek(ptr noundef %i.fy, i64 noundef 0, i32 noundef 1) #12
  store i64 %i.gc, ptr %i.f, align 8, !tbaa !42
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 144
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !228
  %i.gf = and i32 %i.ge, 1
  %.not22.i = icmp eq i32 %i.gf, 0
  br i1 %.not22.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load ptr, ptr %i.t, align 8, !tbaa !44
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gg, i32 noundef 32, ptr noundef nonnull @.str.41) #12
  br label %.thread186

bb.ak:                                            ; preds = %bb.ai
  %i.gh = load i32, ptr %i.x, align 8, !tbaa !45
  %i.gi = sext i32 %i.gh to i64
  %i.gj = load i64, ptr %i.cu, align 8, !tbaa !47
  %i.gk = add i64 %i.gj, %i.gi
  %i.gl = call i64 @avio_seek(ptr noundef nonnull %i.fy, i64 noundef %i.gk, i32 noundef 0) #12 ; 3 uses
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.al, label %mxf_parse_handle_essence.exit.thread170

bb.al:                                            ; preds = %bb.ak
  %i.gn = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.go = load i32, ptr %i.x, align 8, !tbaa !45
  %i.gp = sext i32 %i.go to i64
  %i.gq = load i64, ptr %i.cu, align 8, !tbaa !47
  %i.gr = add i64 %i.gq, %i.gp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gn, i32 noundef 16, ptr noundef nonnull @.str.42, i64 noundef %i.gr, i64 noundef %i.gl) #12
  %i.gs = trunc i64 %i.gl to i32
  br label %mxf_parse_handle_essence.exit

mxf_parse_handle_essence.exit.thread170:          ; preds = %bb.ak
  store ptr null, ptr %i.ce, align 8, !tbaa !51
  store i32 1, ptr %i.cf, align 8, !tbaa !48
  br label %mxf_parse_handle_partition_or_eof.exit.thread

mxf_parse_handle_essence.exit:                    ; preds = %bb.af, %bb.al
  %.0.i = phi i32 [ %i.ga, %bb.af ], [ %i.gs, %bb.al ]
  %.0.i.fr = freeze i32 %.0.i
  %i.gt = icmp slt i32 %.0.i.fr, 1
  br i1 %i.gt, label %.thread186, label %mxf_parse_handle_partition_or_eof.exit.thread

bb.am:                                            ; preds = %bb.aa
  %i.gu = load i64, ptr %2, align 16
  %i.gv = xor i64 %i.gu, 72344576037948934
  %i.gw = getelementptr i8, ptr %2, i64 5
  %i.gx = load i64, ptr %i.gw, align 1
  %i.gy = xor i64 %i.gx, 72341272551031045
  %i.gz = or i64 %i.gv, %i.gy
  %i.ha = icmp ne i64 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %.not.i124 = icmp eq i32 %i.hb, 0
  br i1 %.not.i124, label %bb.an, label %mxf_is_partition_pack_key.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.hc = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.hd = add i8 %i.hc, -5
  %or.cond199 = icmp ult i8 %i.hd, -3
  br i1 %or.cond199, label %mxf_is_partition_pack_key.exit.thread.preheader, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.he = load ptr, ptr %i.ce, align 8, !tbaa !51
  %.not108 = icmp eq ptr %i.he, null
  br i1 %.not108, label %mxf_is_partition_pack_key.exit.thread.preheader, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = load i32, ptr %i.cf, align 8, !tbaa !48
  %.not.i125 = icmp eq i32 %i.hf, 0
  br i1 %.not.i125, label %mxf_is_partition_pack_key.exit.thread.preheader, label %mxf_parse_handle_partition_or_eof.exit126

mxf_parse_handle_partition_or_eof.exit126:        ; preds = %bb.ap
  %i.hg = call fastcc i32 @mxf_seek_to_previous_partition(ptr noundef nonnull %i.e)
  %i.hh = icmp slt i32 %i.hg, 1
  br i1 %i.hh, label %.thread186, label %bb.aq

bb.aq:                                            ; preds = %mxf_parse_handle_partition_or_eof.exit126
  %.pr = load i32, ptr %i.cf, align 8, !tbaa !48
  %.not109 = icmp eq i32 %.pr, 0
  br i1 %.not109, label %mxf_is_partition_pack_key.exit.thread.preheader, label %mxf_parse_handle_partition_or_eof.exit.thread, !llvm.loop !205

mxf_is_partition_pack_key.exit.thread.preheader:  ; preds = %bb.ap, %bb.am, %bb.an, %bb.ao, %bb.aq
  br label %mxf_is_partition_pack_key.exit.thread

mxf_is_partition_pack_key.exit.thread:            ; preds = %mxf_is_partition_pack_key.exit.thread.preheader, %bb.au
  %.078224 = phi i64 [ %i.hy, %bb.au ], [ 0, %mxf_is_partition_pack_key.exit.thread.preheader ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr @mxf_metadata_read_table, i64 %.078224 ; 4 uses
  %i.hj = load i128, ptr %2, align 16
end_hunk_0
begin_hunk_1_@mxf_read_header:bb.a
  store i64 %i.afd, ptr %i.afe, align 8, !tbaa !123
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %mxf_get_wrapping_by_body_sid.exit.thread._crit_edge.i
  %i.aff = phi i64 [ %.pre.i151, %mxf_get_wrapping_by_body_sid.exit.thread._crit_edge.i ], [ %i.afd, %bb.fb ]
  %i.afg = icmp slt i64 %i.aff, 0
  br i1 %i.afg, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adv, i64 40
  store i64 0, ptr %i.afh, align 8, !tbaa !123
  %i.afi = load ptr, ptr %i.ads, align 8, !tbaa !44
  %i.afj = add nuw nsw i64 %indvars.iv.i142, 1    ; 2 uses
  %i.afk = getelementptr inbounds nuw [136 x i8], ptr %i.adu, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 80
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !124
  %i.afn = load i32, ptr %i.adr, align 8, !tbaa !45
  %i.afo = sext i32 %i.afn to i64
  %i.afp = sub nsw i64 %i.afm, %i.afo
  %i.afq = trunc nuw i64 %i.afj to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.afi, i32 noundef 16, ptr noundef nonnull @.str.137, i32 noundef %i.afq, i64 noundef %i.afp) #12
  %.pre38.i = load i32, ptr %i.adm, align 8, !tbaa !110
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %.critedge.i, %bb.eu
  %i.afr = phi i32 [ %i.adt, %.critedge.i ], [ %.pre38.i, %bb.fd ], [ %i.adt, %bb.fc ], [ %i.adt, %bb.eu ] ; 2 uses
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i142, 1 ; 2 uses
  %i.afs = zext i32 %i.afr to i64
  %i.aft = icmp samesign ult i64 %indvars.iv.next.i152, %i.afs
  br i1 %i.aft, label %bb.eu, label %mxf_compute_essence_containers.exit, !llvm.loop !225

mxf_compute_essence_containers.exit:              ; preds = %bb.fe, %bb.et
  %i.afu = load i32, ptr %i.jo, align 4, !tbaa !55 ; 2 uses
  %.not235 = icmp eq i32 %i.afu, 0
  br i1 %.not235, label %.thread191, label %.lr.ph233

.lr.ph233:                                        ; preds = %mxf_compute_essence_containers.exit
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !91
  %i.afx = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %wide.trip.count = zext i32 %i.afu to i64
  br label %bb.ff

bb.ff:                                            ; preds = %.lr.ph233, %mxf_compute_edit_units_per_packet.exit
  %indvars.iv259 = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next260, %mxf_compute_edit_units_per_packet.exit ] ; 2 uses
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %indvars.iv259
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !93 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !99 ; 6 uses
  %.not.i154 = icmp eq ptr %i.agb, null
  br i1 %.not.i154, label %mxf_compute_edit_units_per_packet.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 108 ; 2 uses
  store i32 1, ptr %i.agc, align 4, !tbaa !125
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 104
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !108
  %.not19.i = icmp eq i32 %i.age, 2
  br i1 %.not19.i, label %bb.fh, label %mxf_compute_edit_units_per_packet.exit

bb.fh:                                            ; preds = %bb.fg
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 96
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !102
  %i.agh = load i32, ptr %i.acw, align 4, !tbaa !76 ; 2 uses
  %i.agi = icmp sgt i32 %i.agh, 0
  br i1 %i.agi, label %.lr.ph.i.i157, label %mxf_find_index_table.exit.i

.lr.ph.i.i157:                                    ; preds = %bb.fh
  %i.agj = load ptr, ptr %i.afx, align 8, !tbaa !77
  %wide.trip.count.i.i158 = zext nneg i32 %i.agh to i64
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fj
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 2 uses
  %exitcond.not.i.i161 = icmp eq i64 %indvars.iv.next.i.i160, %wide.trip.count.i.i158
  br i1 %exitcond.not.i.i161, label %mxf_find_index_table.exit.i, label %bb.fj, !llvm.loop !0

bb.fj:                                            ; preds = %bb.fi, %.lr.ph.i.i157
  %indvars.iv.i.i159 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i160, %bb.fi ] ; 2 uses
  %i.agk = getelementptr inbounds nuw [64 x i8], ptr %i.agj, i64 %indvars.iv.i.i159 ; 2 uses
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !103
  %i.agm = icmp eq i32 %i.agl, %i.agg
  br i1 %i.agm, label %mxf_find_index_table.exit.i, label %bb.fi

mxf_find_index_table.exit.i:                      ; preds = %bb.fj, %bb.fi, %bb.fh
  %.08.i.i = phi ptr [ null, %bb.fh ], [ null, %bb.fi ], [ %i.agk, %bb.fj ] ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !113 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !116
  %.not20.i = icmp eq i32 %i.agp, 1
  br i1 %.not20.i, label %bb.fk, label %mxf_compute_edit_units_per_packet.exit

bb.fk:                                            ; preds = %mxf_find_index_table.exit.i
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 4
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !117
  %i.ags = and i32 %i.agr, -16
  %i.agt = icmp eq i32 %i.ags, 65536
  %i.agu = icmp ne ptr %.08.i.i, null
  %or.cond.i155 = and i1 %i.agu, %i.agt
  br i1 %or.cond.i155, label %bb.fl, label %mxf_compute_edit_units_per_packet.exit

bb.fl:                                            ; preds = %bb.fk
  %i.agv = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32
  %i.agw = load i32, ptr %i.agv, align 8, !tbaa !80
  %.not21.i156 = icmp eq i32 %i.agw, 1
  br i1 %.not21.i156, label %bb.fm, label %mxf_compute_edit_units_per_packet.exit

bb.fm:                                            ; preds = %bb.fl
  %i.agx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 40
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !81
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !71
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !68
  %i.ahc = icmp ugt i32 %i.ahb, 31
  br i1 %i.ahc, label %mxf_compute_edit_units_per_packet.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agb, i64 68
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !126
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agb, i64 72
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !127
  %i.ahh = sdiv i32 %i.ahe, %i.ahg                ; 2 uses
  %i.ahi = icmp slt i32 %i.ahh, 25
  %i.ahj = sdiv i32 %i.ahh, 25
  %i.ahk = select i1 %i.ahi, i32 1, i32 %i.ahj
  store i32 %i.ahk, ptr %i.agc, align 4, !tbaa !125
  br label %mxf_compute_edit_units_per_packet.exit

mxf_compute_edit_units_per_packet.exit:           ; preds = %bb.ff, %bb.fg, %mxf_find_index_table.exit.i, %bb.fk, %bb.fl, %bb.fm, %bb.fn
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count
  br i1 %exitcond262.not, label %.thread191, label %bb.ff, !llvm.loop !226

.thread191:                                       ; preds = %bb.as, %mxf_compute_edit_units_per_packet.exit, %mxf_compute_essence_containers.exit, %bb.ab, %mxf_compute_index_tables.exit.thread196, %bb.aw, %bb.e, %bb.es, %.thread186.thread, %mxf_read_sync.exit.thread
  %.5 = phi i32 [ -1094995529, %mxf_read_sync.exit.thread ], [ 0, %mxf_compute_essence_containers.exit ], [ -1094995529, %bb.e ], [ %i.jm, %bb.aw ], [ %.7.i.ph, %mxf_compute_index_tables.exit.thread196 ], [ -1094995529, %bb.es ], [ -1094995529, %.thread186.thread ], [ -1094995529, %bb.ab ], [ 0, %mxf_compute_edit_units_per_packet.exit ], [ %i.ht, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mxf_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %2 = alloca %struct.KLVPacket, align 16         ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 30 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 512 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 15
  br label %bb.b

bb.b:                                             ; preds = %bb.dc, %bb.a
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.v = call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12 ; 4 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !248  ; 2 uses
  %i.x = load i64, ptr %i.h, align 8, !tbaa !249
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp uge i64 %i.v, %i.y
  %.not = icmp slt i64 %i.v, %i.w
  %or.cond138 = and i1 %.not, %i.z
  br i1 %or.cond138, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ab = call fastcc i32 @klv_read_packet(ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %i.aa) ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.dd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !49  ; 3 uses
  %i.ae = load i64, ptr %i.j, align 16, !tbaa !46
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = load i64, ptr %i.k, align 16, !tbaa !50
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.8, i64 noundef %i.ad, i64 noundef %i.ag) #12
  %i.ah = load <9 x i8>, ptr %2, align 16
  %i.ai = shufflevector <9 x i8> %i.ah, <9 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %.fr = freeze <8 x i8> %i.ai
  %i.aj = icmp eq <8 x i8> %.fr, <i8 6, i8 14, i8 43, i8 52, i8 2, i8 4, i8 1, i8 13> ; 2 uses
  %i.ak = load <4 x i8>, ptr %i.q, align 1
  %.fr348 = freeze <4 x i8> %i.ak
  %i.al = icmp eq <4 x i8> %.fr348, <i8 1, i8 3, i8 1, i8 2>
  %i.am = load i8, ptr %i.r, align 1
  %.not9.i.13 = icmp eq i8 %i.am, 126
  %i.an = load i8, ptr %i.s, align 2
  %.not9.i.14 = icmp eq i8 %i.an, 1
  %i.ao = load i8, ptr %i.t, align 1
  %.not9.i.15 = icmp eq i8 %i.ao, 0
  %i.ap = shufflevector <8 x i1> %i.aj, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.ap, %i.al
  %i.aq = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <8 x i1> %i.aq, <8 x i1> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.as = bitcast <8 x i1> %i.ar to i8
  %i.at = icmp eq i8 %i.as, -1
  %op.rdx = select i1 %i.at, i1 %.not9.i.13, i1 false
  %3 = select i1 %op.rdx, i1 %.not9.i.14, i1 false
  %op.rdx347 = select i1 %3, i1 %.not9.i.15, i1 false
  br i1 %op.rdx347, label %mxf_match_uid.exit, label %mxf_match_uid.exit.thread

mxf_match_uid.exit:                               ; preds = %bb.d
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !35  ; 3 uses
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !43  ; 20 uses
  %i.aw = call i64 @avio_seek(ptr noundef %i.av, i64 noundef 0, i32 noundef 1) #12
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !49
  %i.ay = add i64 %i.ax, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 480 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !250
  %.not.i140 = icmp eq ptr %i.ba, null
  br i1 %.not.i140, label %bb.e, label %bb.i

bb.e:                                             ; preds = %mxf_match_uid.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !251
  %.not80.i = icmp eq ptr %i.bc, null
  br i1 %.not80.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !252
  %i.bf = icmp eq i32 %i.be, 16
  br i1 %i.bf, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = call ptr @av_aes_alloc() #12            ; 3 uses
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !250
  %.not81.i = icmp eq ptr %i.bg, null
  br i1 %.not81.i, label %mxf_decrypt_triplet.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !251
  %i.bi = call i32 @av_aes_init(ptr noundef nonnull %i.bg, ptr noundef %i.bh, i32 noundef 128, i32 noundef 1) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %mxf_match_uid.exit
  %i.bj = call i32 @avio_r8(ptr noundef %i.av) #12 ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = and i32 %i.bj, 128
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = and i32 %i.bj, 127                      ; 3 uses
  %i.bn = icmp samesign ult i32 %i.bm, 9
  br i1 %i.bn, label %bb.k, label %mxf_decrypt_triplet.exit.thread

bb.k:                                             ; preds = %bb.j
  %.not2425.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not2425.i.i, label %klv_decode_ber_length.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.01527.i.i = phi i32 [ %i.bo, %.lr.ph.i.i ], [ %i.bm, %bb.k ]
  %.01626.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ 0, %bb.k ]
  %i.bo = add nsw i32 %.01527.i.i, -1             ; 2 uses
  %i.bp = shl i64 %.01626.i.i, 8
  %i.bq = call i32 @avio_r8(ptr noundef %i.av) #12
  %i.br = sext i32 %i.bq to i64
  %i.bs = or i64 %i.bp, %i.br                     ; 2 uses
  %.not24.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not24.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.i
  %.2.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bs, %.lr.ph.i.i ]
  %.2.fr.i.i = freeze i64 %.2.i.i                 ; 2 uses
  %i.bt = icmp slt i64 %.2.fr.i.i, 0
  br i1 %i.bt, label %mxf_decrypt_triplet.exit.thread, label %klv_decode_ber_length.exit.i

klv_decode_ber_length.exit.i:                     ; preds = %.loopexit.i.i, %bb.k
  %.118.i.i = phi i64 [ %.2.fr.i.i, %.loopexit.i.i ], [ 0, %bb.k ]
  %i.bu = call i64 @avio_skip(ptr noundef %i.av, i64 noundef %.118.i.i) #12 ; 0 uses
  %i.bv = call i32 @avio_r8(ptr noundef %i.av) #12 ; 2 uses
  %i.bw = and i32 %i.bv, 128
  %.not.i88.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i88.i, label %klv_decode_ber_length.exit99.i, label %bb.l

bb.l:                                             ; preds = %klv_decode_ber_length.exit.i
  %i.bx = and i32 %i.bv, 127                      ; 2 uses
  %i.by = add nsw i32 %i.bx, -9
  %or.cond.i = icmp ult i32 %i.by, -8
  br i1 %or.cond.i, label %klv_decode_ber_length.exit99.i, label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %bb.l, %.lr.ph.i91.i
  %.01527.i92.i = phi i32 [ %i.bz, %.lr.ph.i91.i ], [ %i.bx, %bb.l ]
  %i.bz = add nsw i32 %.01527.i92.i, -1           ; 2 uses
  %i.ca = call i32 @avio_r8(ptr noundef %i.av) #12 ; 0 uses
  %.not24.i94.i = icmp eq i32 %i.bz, 0
  br i1 %.not24.i94.i, label %klv_decode_ber_length.exit99.i, label %.lr.ph.i91.i, !llvm.loop !1

klv_decode_ber_length.exit99.i:                   ; preds = %.lr.ph.i91.i, %bb.l, %klv_decode_ber_length.exit.i
  %i.cb = call i64 @avio_rb64(ptr noundef %i.av) #12 ; 4 uses
  %i.cc = call i32 @avio_r8(ptr noundef %i.av) #12 ; 2 uses
  %i.cd = and i32 %i.cc, 128
  %.not.i100.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i100.i, label %klv_decode_ber_length.exit111.i, label %bb.m

bb.m:                                             ; preds = %klv_decode_ber_length.exit99.i
  %i.ce = and i32 %i.cc, 127                      ; 2 uses
  %i.cf = add nsw i32 %i.ce, -9
  %or.cond148.i = icmp ult i32 %i.cf, -8
  br i1 %or.cond148.i, label %klv_decode_ber_length.exit111.i, label %.lr.ph.i103.i

.lr.ph.i103.i:                                    ; preds = %bb.m, %.lr.ph.i103.i
  %.01527.i104.i = phi i32 [ %i.cg, %.lr.ph.i103.i ], [ %i.ce, %bb.m ]
  %i.cg = add nsw i32 %.01527.i104.i, -1          ; 2 uses
  %i.ch = call i32 @avio_r8(ptr noundef %i.av) #12 ; 0 uses
  %.not24.i106.i = icmp eq i32 %i.cg, 0
  br i1 %.not24.i106.i, label %klv_decode_ber_length.exit111.i, label %.lr.ph.i103.i, !llvm.loop !1

klv_decode_ber_length.exit111.i:                  ; preds = %.lr.ph.i103.i, %bb.m, %klv_decode_ber_length.exit99.i
  %i.ci = call i32 @avio_read(ptr noundef %i.av, ptr noundef nonnull %2, i32 noundef 16) #12 ; 0 uses
  %i.cj = load i64, ptr %2, align 16
  %i.ck = xor i64 %i.cj, 72341273208098310
  %i.cl = getelementptr i8, ptr %2, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = zext i32 %i.cm to i64
  %i.co = xor i64 %i.cn, 16974093
  %i.cp = or i64 %i.ck, %i.co
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %.not82.i = icmp eq i32 %i.cr, 0
  br i1 %.not82.i, label %bb.n, label %mxf_decrypt_triplet.exit.thread

bb.n:                                             ; preds = %klv_decode_ber_length.exit111.i
  %i.cs = load i64, ptr %i.k, align 16, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !110 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i112.i, label %find_body_sid_by_absolute_offset.exit.i

.lr.ph.i112.i:                                    ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !111 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i112.i
  %.018.i.i = phi i32 [ %i.cu, %.lr.ph.i112.i ], [ %..0.i.i, %bb.o ] ; 2 uses
  %.01417.i.i = phi i32 [ -1, %.lr.ph.i112.i ], [ %.014..i.i, %bb.o ] ; 2 uses
  %i.cy = add nsw i32 %.01417.i.i, %.018.i.i
  %i.cz = ashr i32 %i.cy, 1                       ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [136 x i8], ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !124
  %.not.i113.i = icmp sgt i64 %i.dd, %i.cs        ; 2 uses
  %.014..i.i = select i1 %.not.i113.i, i32 %.01417.i.i, i32 %i.cz ; 4 uses
  %..0.i.i = select i1 %.not.i113.i, i32 %i.cz, i32 %.018.i.i ; 2 uses
  %i.de = sub nsw i32 %..0.i.i, %.014..i.i
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.o, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %bb.o
  %i.dg = icmp eq i32 %.014..i.i, -1
  br i1 %i.dg, label %find_body_sid_by_absolute_offset.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.dh = zext nneg i32 %.014..i.i to i64
  %i.di = getelementptr inbounds nuw [136 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !112
  br label %find_body_sid_by_absolute_offset.exit.i

find_body_sid_by_absolute_offset.exit.i:          ; preds = %bb.p, %._crit_edge.i.i, %bb.n
  %.016.i.i = phi i32 [ %i.dk, %bb.p ], [ 0, %._crit_edge.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.dl = load i32, ptr %i.n, align 4, !tbaa !55  ; 3 uses
  %.not36.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not36.i.i, label %mxf_decrypt_triplet.exit.thread, label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %find_body_sid_by_absolute_offset.exit.i
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !91  ; 3 uses
  %.not23.i.i = icmp eq i32 %.016.i.i, 0
  %wide.trip.count45.i.i = zext i32 %i.dl to i64  ; 2 uses
  br i1 %.not23.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i114.i, %bb.r
  %indvars.iv42.i.i = phi i64 [ %indvars.iv.next43.i.i, %bb.r ], [ 0, %.lr.ph.i114.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv42.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !93
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !99 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.us.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load i32, ptr %i.p, align 1
  %i.dt = load i32, ptr %i.dr, align 1
  %i.du = icmp ne i32 %i.ds, %i.dt
  %i.dv = zext i1 %i.du to i32
  %.not25.us.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not25.us.i.i, label %.loopexit.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.us.i.i
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 2 uses
  %exitcond46.not.i.i = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count45.i.i
  br i1 %exitcond46.not.i.i, label %._crit_edge.i117.i, label %.lr.ph.split.us.i.i, !llvm.loop !244

end_hunk_1
