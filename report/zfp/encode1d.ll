Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode1d?download=true
inline.NumInlined: 52
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_block_double_1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 256              ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [4 x i64], align 256              ; 7 uses
  %i.d = alloca [4 x double], align 256           ; 10 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 2 uses
  %i.h = icmp slt i32 %i.g, -1074
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load double, ptr %1, align 8             ; 5 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp one double %i.l, 0.000000e+00
  %.1.i.i = select i1 %i.n, double %i.m, double 0.000000e+00 ; 2 uses
  %i.o = load double, ptr %i.i, align 8           ; 4 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.q = fcmp olt double %.1.i.i, %i.p
  %.1.1.i.i = select i1 %i.q, double %i.p, double %.1.i.i ; 2 uses
  %i.r = load double, ptr %i.j, align 8           ; 4 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r) ; 2 uses
  %i.t = fcmp olt double %.1.1.i.i, %i.s
  %.1.2.i.i = select i1 %i.t, double %i.s, double %.1.1.i.i ; 2 uses
  %i.u = load double, ptr %i.k, align 8           ; 4 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u) ; 2 uses
  %i.w = fcmp olt double %.1.2.i.i, %i.v
  %.1.3.i.i = select i1 %i.w, double %i.v, double %.1.2.i.i ; 3 uses
  %i.x = fcmp ogt double %.1.3.i.i, 0.000000e+00  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 -1023, ptr %i.e, align 4, !tbaa !22
  %i.y = bitcast double %i.l to i64               ; 3 uses
  %i.z = bitcast double %i.o to i64               ; 3 uses
  %i.aa = bitcast double %i.r to i64              ; 3 uses
  %i.ab = bitcast double %i.u to i64              ; 3 uses
  br i1 %i.x, label %rev_fwd_reversible_double.exit.i, label %rev_fwd_reversible_double.exit.thread.i

rev_fwd_reversible_double.exit.i:                 ; preds = %bb.b
  %i.ac = call double @frexp(double noundef %.1.3.i.i, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !22
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -1022) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.af = sub nsw i32 62, %i.ae
  %i.ag = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.af) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.ah = add nsw i32 %i.ae, -62
  %i.ai = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ah) #9
  %i.aj = fmul double %i.l, %i.ag
  %i.ak = fptosi double %i.aj to i64              ; 2 uses
  %i.al = fmul double %i.o, %i.ag
  %i.am = fptosi double %i.al to i64              ; 2 uses
  %i.an = fmul double %i.r, %i.ag
  %i.ao = fptosi double %i.an to i64              ; 2 uses
  %i.ap = fmul double %i.u, %i.ag
  %i.aq = fptosi double %i.ap to i64              ; 2 uses
  %i.ar = sitofp i64 %i.ak to double
  %i.as = sitofp i64 %i.am to double
  %i.at = sitofp i64 %i.ao to double
  %i.au = sitofp i64 %i.aq to double
  %i.av = insertelement <4 x double> poison, double %i.ai, i64 0
  %i.aw = shufflevector <4 x double> %i.av, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ax = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %i.as, i64 1
  %i.az = insertelement <4 x double> %i.ay, double %i.at, i64 2
  %i.ba = insertelement <4 x double> %i.az, double %i.au, i64 3
  %i.bb = fmul <4 x double> %i.aw, %i.ba
  store <4 x double> %i.bb, ptr %i.d, align 256, !tbaa !11
  %i.bc = add nsw i32 %i.ae, 1023
  %i.bd = load i128, ptr %1, align 1
  %i.be = load i128, ptr %i.d, align 256
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = getelementptr i8, ptr %1, i64 16
  %i.bh = getelementptr i8, ptr %i.d, i64 16
  %i.bi = load i128, ptr %i.bg, align 1
  %i.bj = load i128, ptr %i.bh, align 16
  %i.bk = xor i128 %i.bi, %i.bj
  %i.bl = or i128 %i.bf, %i.bk
  %i.bm = icmp ne i128 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not.i36.not.i = icmp eq i32 %i.bn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br i1 %.not.i36.not.i, label %bb.c, label %rev_fwd_reinterpret_double.exit.i

rev_fwd_reversible_double.exit.thread.i:          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !tbaa !11
  %i.bo = load i128, ptr %1, align 1
  %i.bp = load i128, ptr %i.d, align 256
  %i.bq = xor i128 %i.bo, %i.bp
  %i.br = getelementptr i8, ptr %1, i64 16
  %i.bs = getelementptr i8, ptr %i.d, i64 16
  %i.bt = load i128, ptr %i.br, align 1
  %i.bu = load i128, ptr %i.bs, align 16
  %i.bv = xor i128 %i.bt, %i.bu
  %i.bw = or i128 %i.bq, %i.bv
  %i.bx = icmp ne i128 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %.not.i36.not100.i = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br i1 %.not.i36.not100.i, label %bb.f, label %rev_fwd_reinterpret_double.exit.i

bb.c:                                             ; preds = %rev_fwd_reversible_double.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23 ; 10 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25 ; 3 uses
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cf = add i64 %i.ce, %i.cc                    ; 2 uses
  %i.cg = add i64 %i.cb, 2                        ; 3 uses
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !25
  %i.ch = icmp ugt i64 %i.cg, 63
  br i1 %i.ch, label %bb.d, label %stream_write_bits.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ci = add i64 %i.cb, -62
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !27 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !27
  store i64 %i.cf, ptr %i.ck, align 8, !tbaa !14
  %i.cm = load i64, ptr %i.ca, align 8, !tbaa !25
  br label %stream_write_bits.exit.i

stream_write_bits.exit.i:                         ; preds = %bb.d, %bb.c
  %i.cn = phi i64 [ 0, %bb.d ], [ %i.cf, %bb.c ]
  %i.co = phi i64 [ %i.cm, %bb.d ], [ %i.cg, %bb.c ] ; 4 uses
  %notmask.i.i = shl nsw i64 -1, %i.co
  %i.cp = xor i64 %notmask.i.i, -1
  %i.cq = and i64 %i.cn, %i.cp
  %i.cr = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.cs = shl i64 %i.cr, %i.co
  %i.ct = add i64 %i.cq, %i.cs                    ; 2 uses
  %i.cu = add i64 %i.co, 11                       ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 63
  br i1 %i.cv, label %bb.e, label %stream_write_bit.exit.i

bb.e:                                             ; preds = %stream_write_bits.exit.i
  %i.cw = lshr i64 %i.cr, 1
  %i.cx = add i64 %i.co, -53
  store i64 %i.cx, ptr %i.ca, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !27 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !27
  store i64 %i.ct, ptr %i.cz, align 8, !tbaa !14
  %i.db = load i64, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %i.dc = sub i64 10, %i.db
  %i.dd = lshr i64 %i.cw, %i.dc
  br label %stream_write_bit.exit.i

bb.f:                                             ; preds = %rev_fwd_reversible_double.exit.thread.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23 ; 5 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !26
  %i.dj = add i64 %i.dg, 1                        ; 2 uses
  store i64 %i.dj, ptr %i.df, align 8, !tbaa !25
  %i.dk = icmp eq i64 %i.dj, 64
  br i1 %i.dk, label %bb.g, label %rev_encode_block_double_1.exit

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !27 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !27
  store i64 %i.di, ptr %i.dm, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %rev_encode_block_double_1.exit

stream_write_bit.exit.i:                          ; preds = %bb.e, %stream_write_bits.exit.i
  %i.do = phi i64 [ %i.dd, %bb.e ], [ %i.ct, %stream_write_bits.exit.i ]
  %i.dp = phi i64 [ %i.db, %bb.e ], [ %i.cu, %stream_write_bits.exit.i ] ; 2 uses
  %notmask.i39.i = shl nsw i64 -1, %i.dp
  %i.dq = xor i64 %notmask.i39.i, -1
  %i.dr = and i64 %i.do, %i.dq                    ; 2 uses
  store i64 %i.dr, ptr %i.cd, align 8, !tbaa !26
  br label %bb.i

rev_fwd_reinterpret_double.exit.i:                ; preds = %rev_fwd_reversible_double.exit.thread.i, %rev_fwd_reversible_double.exit.i
  %i.ds = icmp slt i64 %i.y, 0
  %i.dt = xor i64 %i.y, 9223372036854775807
  %spec.select.i = select i1 %i.ds, i64 %i.dt, i64 %i.y
  %i.du = icmp slt i64 %i.z, 0
  %i.dv = xor i64 %i.z, 9223372036854775807
  %.sroa.9.2.i = select i1 %i.du, i64 %i.dv, i64 %i.z
  %i.dw = icmp slt i64 %i.aa, 0
  %i.dx = xor i64 %i.aa, 9223372036854775807
  %.sroa.15.2.i = select i1 %i.dw, i64 %i.dx, i64 %i.aa
  %i.dy = icmp slt i64 %i.ab, 0
  %i.dz = xor i64 %i.ab, 9223372036854775807
  %.sroa.21.2.i = select i1 %i.dy, i64 %i.dz, i64 %i.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !23 ; 6 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !25 ; 3 uses
  %i.ed = shl i64 3, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, %i.ed                    ; 2 uses
  %i.eh = add i64 %i.ec, 2                        ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 63
  br i1 %i.ei, label %bb.h, label %stream_write_bits.exit44.i

bb.h:                                             ; preds = %rev_fwd_reinterpret_double.exit.i
  %i.ej = add i64 %i.ec, -62
  store i64 %i.ej, ptr %i.eb, align 8, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !27 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !27
  store i64 %i.eg, ptr %i.el, align 8, !tbaa !14
  %i.en = load i64, ptr %i.eb, align 8, !tbaa !25 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 1
  %i.ep = zext i1 %i.eo to i64
  br label %stream_write_bits.exit44.i

stream_write_bits.exit44.i:                       ; preds = %bb.h, %rev_fwd_reinterpret_double.exit.i
  %i.eq = phi i64 [ %i.ep, %bb.h ], [ %i.eg, %rev_fwd_reinterpret_double.exit.i ]
  %i.er = phi i64 [ %i.en, %bb.h ], [ %i.eh, %rev_fwd_reinterpret_double.exit.i ] ; 2 uses
  %notmask.i43.i = shl nsw i64 -1, %i.er
  %i.es = xor i64 %notmask.i43.i, -1
  %i.et = and i64 %i.eq, %i.es                    ; 2 uses
  store i64 %i.et, ptr %i.ee, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %stream_write_bits.exit44.i, %stream_write_bit.exit.i
  %i.eu = phi i64 [ %i.et, %stream_write_bits.exit44.i ], [ %i.dr, %stream_write_bit.exit.i ]
  %i.ev = phi i64 [ %i.er, %stream_write_bits.exit44.i ], [ %i.dp, %stream_write_bit.exit.i ] ; 3 uses
  %i.ew = phi ptr [ %i.eb, %stream_write_bits.exit44.i ], [ %i.ca, %stream_write_bit.exit.i ] ; 9 uses
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %stream_write_bits.exit44.i ], [ %i.ak, %stream_write_bit.exit.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.9.2.i, %stream_write_bits.exit44.i ], [ %i.am, %stream_write_bit.exit.i ] ; 2 uses
  %.sroa.15.0.i = phi i64 [ %.sroa.15.2.i, %stream_write_bits.exit44.i ], [ %i.ao, %stream_write_bit.exit.i ] ; 2 uses
  %.sroa.21.0.i = phi i64 [ %.sroa.21.2.i, %stream_write_bits.exit44.i ], [ %i.aq, %stream_write_bit.exit.i ]
  %.1.i = phi i32 [ 2, %stream_write_bits.exit44.i ], [ 13, %stream_write_bit.exit.i ] ; 3 uses
  %i.ex = load i32, ptr %0, align 8, !tbaa !28
  %i.ey = tail call i32 @llvm.usub.sat.i32(i32 %i.ex, i32 %.1.i) ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.fd = sub i64 %.sroa.15.0.i, %.sroa.9.0.i     ; 2 uses
  %i.fe = sub i64 %.sroa.9.0.i, %.sroa.0.0.i      ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = add i64 %.sroa.0.0.i, -6148914691236517206
  %i.fh = xor i64 %i.fg, -6148914691236517206     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.fh, ptr %i.c, align 256, !tbaa !14
  %i.fj = add i64 %i.fe, -6148914691236517206
  %i.fk = xor i64 %i.fj, -6148914691236517206     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !14
  %i.fm = add i64 %i.ff, -6148914691236517206
  %i.fn = xor i64 %i.fm, -6148914691236517206     ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.fn, ptr %i.fl, align 16, !tbaa !14
  %i.fp = add i64 %.sroa.21.0.i, -6148914691236517206
  %i.fq = add i64 %.sroa.15.0.i, %i.fd
  %i.fr = add i64 %i.fq, %i.ff
  %i.fs = sub i64 %i.fp, %i.fr
  %i.ft = xor i64 %i.fs, -6148914691236517206     ; 2 uses
  store i64 %i.ft, ptr %i.fo, align 8, !tbaa !14
  %i.fu = or i64 %i.fk, %i.fh
  %i.fv = or i64 %i.fu, %i.fn
  %i.fw = or i64 %i.fv, %i.ft                     ; 2 uses
  %.not1824.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not1824.i.i.i, label %rev_precision_uint64.exit.i.i, label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.i, %select.unfold.i.i.i
  %.127.i.i.i = phi i64 [ %spec.select20.i.i.i, %select.unfold.i.i.i ], [ %i.fw, %bb.i ] ; 2 uses
  %.01226.i.i.i = phi i32 [ %i.gb, %select.unfold.i.i.i ], [ 64, %bb.i ] ; 3 uses
  %.01325.i.i.i = phi i32 [ %spec.select.i.i.i, %select.unfold.i.i.i ], [ 0, %bb.i ]
  %i.fx = add nsw i32 %.01226.i.i.i, -1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl i64 %.127.i.i.i, %i.fy              ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.fz, 0            ; 2 uses
  %i.ga = shl i64 %i.fz, 1
  %i.gb = lshr i32 %.01226.i.i.i, 1
  %i.gc = select i1 %.not19.i.i.i, i32 0, i32 %.01226.i.i.i
  %spec.select.i.i.i = add i32 %i.gc, %.01325.i.i.i ; 2 uses
  %spec.select20.i.i.i = select i1 %.not19.i.i.i, i64 %.127.i.i.i, i64 %i.ga ; 2 uses
  %.not18.i.i.i = icmp eq i64 %spec.select20.i.i.i, 0
  br i1 %.not18.i.i.i, label %rev_precision_uint64.exit.loopexit.i.i, label %select.unfold.i.i.i

rev_precision_uint64.exit.loopexit.i.i:           ; preds = %select.unfold.i.i.i
  %i.gd = tail call i32 @llvm.umin.i32(i32 %spec.select.i.i.i, i32 %i.fc)
  %i.ge = tail call i32 @llvm.umax.i32(i32 %i.gd, i32 1)
  br label %rev_precision_uint64.exit.i.i

rev_precision_uint64.exit.i.i:                    ; preds = %rev_precision_uint64.exit.loopexit.i.i, %bb.i
  %.013.lcssa.i.i.i = phi i32 [ 1, %bb.i ], [ %i.ge, %rev_precision_uint64.exit.loopexit.i.i ] ; 2 uses
  %i.gf = add i32 %.013.lcssa.i.i.i, -1
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = shl i64 %i.gg, %i.ev
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.gj = add i64 %i.gh, %i.eu                    ; 2 uses
  %i.gk = add i64 %i.ev, 6                        ; 3 uses
  store i64 %i.gk, ptr %i.ew, align 8, !tbaa !25
  %i.gl = icmp ugt i64 %i.gk, 63
  br i1 %i.gl, label %bb.j, label %stream_write_bits.exit.i.i

bb.j:                                             ; preds = %rev_precision_uint64.exit.i.i
  %i.gm = lshr i64 %i.gg, 1
  %i.gn = add i64 %i.ev, -58
  store i64 %i.gn, ptr %i.ew, align 8, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !27 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !27
  store i64 %i.gj, ptr %i.gp, align 8, !tbaa !14
  %i.gr = load i64, ptr %i.ew, align 8, !tbaa !25 ; 2 uses
  %i.gs = sub i64 5, %i.gr
  %i.gt = lshr i64 %i.gm, %i.gs
  br label %stream_write_bits.exit.i.i

stream_write_bits.exit.i.i:                       ; preds = %bb.j, %rev_precision_uint64.exit.i.i
  %i.gu = phi i64 [ %i.gt, %bb.j ], [ %i.gj, %rev_precision_uint64.exit.i.i ]
  %i.gv = phi i64 [ %i.gr, %bb.j ], [ %i.gk, %rev_precision_uint64.exit.i.i ]
  %notmask.i.i.i = shl nsw i64 -1, %i.gv
  %i.gw = xor i64 %notmask.i.i.i, -1
  %i.gx = and i64 %i.gu, %i.gw
  store i64 %i.gx, ptr %i.gi, align 8, !tbaa !26
  %reass.sub = sub i32 %i.fa, %.1.i
  %i.gy = add i32 %reass.sub, -6
  %i.gz = call fastcc i32 @encode_ints_uint64(ptr noundef nonnull %i.ew, i32 noundef %i.gy, i32 noundef %.013.lcssa.i.i.i, ptr noundef %i.c)
  %i.ha = add i32 %i.gz, 6                        ; 3 uses
  %i.hb = icmp ult i32 %i.ha, %i.ey
  br i1 %i.hb, label %bb.k, label %rev_encode_block_int64_1.exit.i

bb.k:                                             ; preds = %stream_write_bits.exit.i.i
  %i.hc = sub nuw i32 %i.ey, %i.ha
  %i.hd = zext i32 %i.hc to i64
  %i.he = load i64, ptr %i.ew, align 8, !tbaa !25
  %i.hf = add i64 %i.he, %i.hd                    ; 5 uses
  %i.hg = icmp ugt i64 %i.hf, 63
  br i1 %i.hg, label %.lr.ph.i.i.i, label %stream_pad.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.hh, align 8, !tbaa !27 ; 3 uses
  %.pre.i.i.i = load i64, ptr %i.gi, align 8, !tbaa !26
  %i.hi = getelementptr i8, ptr %.promoted.i.i.i, i64 8 ; 2 uses
  store i64 %.pre.i.i.i, ptr %.promoted.i.i.i, align 8, !tbaa !14
  store i64 0, ptr %i.gi, align 8, !tbaa !26
  %i.hj = add i64 %i.hf, -64                      ; 2 uses
  %i.hk = icmp ugt i64 %i.hj, 63
  br i1 %i.hk, label %.peel.next.i.preheader.i, label %._crit_edge.i.i.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i.i.i
  %i.hl = add i64 %i.hf, -128                     ; 2 uses
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = and i64 %i.hm, 2305843009213693944
  %i.ho = add nuw nsw i64 %i.hn, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hi, i8 0, i64 %i.ho, i1 false), !tbaa !14
  store i64 0, ptr %i.gi, align 8, !tbaa !26
  %i.hp = lshr i64 %i.hl, 3
  %i.hq = and i64 %i.hp, 2305843009213693944
  %i.hr = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.hq
  %scevgep38 = getelementptr i8, ptr %i.hr, i64 16
  %i.hs = and i64 %i.hf, 63
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.peel.next.i.preheader.i, %.lr.ph.i.i.i
  %.lcssa28.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i ], [ %scevgep38, %.peel.next.i.preheader.i ]
  %.lcssa.i.i = phi i64 [ %i.hj, %.lr.ph.i.i.i ], [ %i.hs, %.peel.next.i.preheader.i ]
  store ptr %.lcssa28.i.i, ptr %i.hh, align 8, !tbaa !27
  br label %stream_pad.exit.i.i

stream_pad.exit.i.i:                              ; preds = %._crit_edge.i.i.i, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ %.lcssa.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.k ]
  store i64 %.0.lcssa.i.i.i, ptr %i.ew, align 8, !tbaa !25
  br label %rev_encode_block_int64_1.exit.i

rev_encode_block_int64_1.exit.i:                  ; preds = %stream_pad.exit.i.i, %stream_write_bits.exit.i.i
  %.0.i45.i = phi i32 [ %i.ey, %stream_pad.exit.i.i ], [ %i.ha, %stream_write_bits.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ht = add i32 %.0.i45.i, %.1.i
  br label %rev_encode_block_double_1.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 -1023, ptr %i.b, align 4, !tbaa !22
  br i1 %i.x, label %bb.m, label %exponent_block_double.exit.i

bb.m:                                             ; preds = %bb.l
  %i.hu = call double @frexp(double noundef %.1.3.i.i, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !22
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 -1022)
  br label %exponent_block_double.exit.i

exponent_block_double.exit.i:                     ; preds = %bb.m, %bb.l
  %i.hx = phi i32 [ %i.hw, %bb.m ], [ -1023, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !30
  %i.ia = sub nsw i32 %i.hx, %i.g                 ; 2 uses
  %i.ib = add nsw i32 %i.ia, 4
  %i.ic = icmp sgt i32 %i.ia, -5
  %spec.select15.i.i = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.ib)
  %i.id = select i1 %i.ic, i32 %spec.select15.i.i, i32 0 ; 2 uses
end_hunk_0
