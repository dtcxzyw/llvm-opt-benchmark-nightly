Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode1f?download=true
inline.NumInlined: 44
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@zfp_decode_block_float_1:bb.a
  store i64 %.sink.i, ptr %i.g, align 8, !tbaa !13
  store i64 %storemerge.i, ptr %i.o, align 8, !tbaa !16
  %i.bm = trunc i64 %.0.i.in.i to i32
  %i.bn = and i32 %i.bm, 255                      ; 2 uses
  %i.bo = load i32, ptr %0, align 8, !tbaa !26
  %i.bp = tail call i32 @llvm.usub.sat.i32(i32 %i.bo, i32 10)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !27
  %i.bs = add i32 %i.br, -10
  %i.bt = call fastcc i32 @rev_decode_block_int32_1(ptr noundef nonnull %i.g, i32 noundef %i.bp, i32 noundef %i.bs, ptr noundef %i.b)
  %i.bu = add i32 %i.bt, 10                       ; 2 uses
  %.not.i49.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i49.i, label %.preheader.preheader.i.i, label %bb.o

.preheader.preheader.i.i:                         ; preds = %stream_read_bits.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !tbaa !18
  br label %rev_decode_block_float_1.exit

bb.o:                                             ; preds = %stream_read_bits.exit.i
  %i.bv = add nsw i32 %i.bn, -157
  %i.bw = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.bv) #8
  %i.bx = load <4 x i32>, ptr %i.b, align 256, !tbaa !19
  %i.by = sitofp <4 x i32> %i.bx to <4 x float>
  %i.bz = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fmul <4 x float> %i.ca, %i.by
  store <4 x float> %i.cb, ptr %1, align 4, !tbaa !18
  br label %rev_decode_block_float_1.exit

bb.p:                                             ; preds = %.preheader.preheader.i
  %i.cc = add i32 %i.r, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20 ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = shl i64 %i.ck, 3
  %i.cm = sub i64 %i.cl, %i.m
  %i.cn = add i64 %i.cm, %i.cd                    ; 2 uses
  %i.co = and i64 %i.cn, 63                       ; 3 uses
  %i.cp = lshr i64 %i.cn, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cp ; 3 uses
  store ptr %i.cq, ptr %i.ce, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i, label %stream_skip.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.ce, align 8, !tbaa !14
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.ct = lshr i64 %i.cs, %i.co
  %i.cu = sub nuw nsw i64 64, %i.co
  br label %stream_skip.exit.i

stream_skip.exit.i:                               ; preds = %bb.q, %bb.p
  %.sink.i.i.i = phi i64 [ %i.ct, %bb.q ], [ 0, %bb.p ]
  %storemerge.i.i.i = phi i64 [ %i.cu, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i.i, ptr %i.o, align 8, !tbaa !16
  store i64 %storemerge.i.i.i, ptr %i.g, align 8, !tbaa !13
  br label %rev_decode_block_float_1.exit

rev_decode_block_float_1.exit:                    ; preds = %.preheader.preheader.i, %rev_inv_reinterpret_float.exit.i, %.preheader.preheader.i.i, %bb.o, %stream_skip.exit.i
  %.1.i = phi i32 [ %i.ah, %rev_inv_reinterpret_float.exit.i ], [ 1, %.preheader.preheader.i ], [ %i.r, %stream_skip.exit.i ], [ %i.bu, %.preheader.preheader.i.i ], [ %i.bu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %decode_block_float_1.exit

bb.r:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 15 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %.not.i.i5 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i5, label %bb.s, label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %bb.r
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = add i64 %i.cx, -1
  br label %stream_read_bit.exit.i8

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !14 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !14
  br label %stream_read_bit.exit.i8

stream_read_bit.exit.i8:                          ; preds = %bb.s, %._crit_edge.i.i6
  %.in.i.i9 = phi ptr [ %i.da, %bb.s ], [ %.phi.trans.insert.i.i7, %._crit_edge.i.i6 ]
  %i.dc = phi i64 [ 63, %bb.s ], [ %i.cy, %._crit_edge.i.i6 ] ; 7 uses
  %i.dd = load i64, ptr %.in.i.i9, align 8, !tbaa !15 ; 3 uses
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.df = lshr i64 %i.dd, 1                       ; 3 uses
  store i64 %i.df, ptr %i.de, align 8, !tbaa !16
  %i.dg = and i64 %i.dd, 1
  %.not.i10 = icmp eq i64 %i.dg, 0
  br i1 %.not.i10, label %.preheader.preheader.i16, label %bb.t

.preheader.preheader.i16:                         ; preds = %stream_read_bit.exit.i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !tbaa !18
  %i.dh = load i32, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.di = icmp ugt i32 %i.dh, 1
  br i1 %i.di, label %bb.y, label %decode_block_float_1.exit

bb.t:                                             ; preds = %stream_read_bit.exit.i8
  %i.dj = icmp ult i64 %i.dc, 8
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !14 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !14
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !15 ; 2 uses
  %i.do = shl i64 %i.dn, %i.dc
  %i.dp = add i64 %i.do, %i.df
  %i.dq = or disjoint i64 %i.dc, 56
  %i.dr = sub nuw nsw i64 8, %i.dc
  %i.ds = lshr i64 %i.dn, %i.dr
  br label %stream_read_bits.exit.i11

bb.v:                                             ; preds = %bb.t
  %i.dt = add i64 %i.dc, -8
  %i.du = lshr i64 %i.dd, 9
  br label %stream_read_bits.exit.i11

stream_read_bits.exit.i11:                        ; preds = %bb.v, %bb.u
  %.sink.i12 = phi i64 [ %i.dq, %bb.u ], [ %i.dt, %bb.v ]
  %storemerge.i13 = phi i64 [ %i.ds, %bb.u ], [ %i.du, %bb.v ]
  %.0.i.in.i14 = phi i64 [ %i.dp, %bb.u ], [ %i.df, %bb.v ]
  store i64 %.sink.i12, ptr %i.cw, align 8, !tbaa !13
  store i64 %storemerge.i13, ptr %i.de, align 8, !tbaa !16
  %i.dv = trunc i64 %.0.i.in.i14 to i32
  %i.dw = and i32 %i.dv, 255                      ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !28
  %reass.sub = sub nsw i32 %i.dw, %i.d            ; 2 uses
  %i.dz = add i32 %reass.sub, -127
  %i.ea = add i32 %reass.sub, -123
  %i.eb = icmp sgt i32 %i.dz, -5
  %spec.select15.i.i = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %i.ea)
  %i.ec = select i1 %i.eb, i32 %spec.select15.i.i, i32 0
  %i.ed = load i32, ptr %0, align 8, !tbaa !26
  %i.ee = tail call i32 @llvm.usub.sat.i32(i32 %i.ed, i32 9) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !27
  %i.eh = add i32 %i.eg, -9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ei = call fastcc i32 @decode_ints_uint32(ptr noundef nonnull %i.cw, i32 noundef %i.eh, i32 noundef range(i32 0, -2147483648) %i.ec, ptr noundef %i.a) ; 3 uses
  %i.ej = icmp ult i32 %i.ei, %i.ee
  br i1 %i.ej, label %bb.w, label %decode_block_int32_1.exit.i

bb.w:                                             ; preds = %stream_read_bits.exit.i11
  %i.ek = sub nuw i32 %i.ee, %i.ei
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !14
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !20 ; 2 uses
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = shl i64 %i.es, 3
  %i.eu = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = add i64 %i.ev, %i.el                    ; 2 uses
  %i.ex = and i64 %i.ew, 63                       ; 3 uses
  %i.ey = lshr i64 %i.ew, 6
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ey ; 3 uses
  store ptr %i.ez, ptr %i.em, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i.i, label %stream_skip.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.fa, ptr %i.em, align 8, !tbaa !14
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !15
  %i.fc = lshr i64 %i.fb, %i.ex
  %i.fd = sub nuw nsw i64 64, %i.ex
  br label %stream_skip.exit.i.i

stream_skip.exit.i.i:                             ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i = phi i64 [ %i.fc, %bb.x ], [ 0, %bb.w ]
  %storemerge.i.i.i.i = phi i64 [ %i.fd, %bb.x ], [ 0, %bb.w ]
  store i64 %.sink.i.i.i.i, ptr %i.de, align 8, !tbaa !16
  store i64 %storemerge.i.i.i.i, ptr %i.cw, align 8, !tbaa !13
  br label %decode_block_int32_1.exit.i

decode_block_int32_1.exit.i:                      ; preds = %stream_skip.exit.i.i, %stream_read_bits.exit.i11
  %.0.i32.i = phi i32 [ %i.ee, %stream_skip.exit.i.i ], [ %i.ei, %stream_read_bits.exit.i11 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fh = xor i32 %i.fg, -1431655766
  %i.fi = add i32 %i.fh, 1431655766
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fk = add i32 %.0.i32.i, 9
  %i.fl = add nsw i32 %i.dw, -157
  %i.fm = load i32, ptr %i.ff, align 8, !tbaa !19
  %2 = load i32, ptr %i.fj, align 4, !tbaa !19
  %i.fn = load i32, ptr %i.a, align 256, !tbaa !19
  %i.fo = xor i32 %2, -1431655766
  %i.fp = xor i32 %i.fn, -1431655766              ; 2 uses
  %i.fq = add i32 %i.fo, 1431655766               ; 2 uses
  %i.fr = ashr i32 %i.fq, 1
  %i.fs = add nsw i32 %i.fi, %i.fr                ; 3 uses
  %3 = xor i32 %i.fm, -1431655766                 ; 2 uses
  %i.ft = ashr i32 %i.fs, 1
  %4 = add i32 %i.fp, -1431655764
  %5 = sub nsw i32 %i.fq, %i.ft                   ; 2 uses
  %i.fu = sub nsw i32 %5, %i.fs                   ; 2 uses
  %i.fv = add i32 %4, %3                          ; 2 uses
  %i.fw = add nsw i32 %5, %i.fs                   ; 2 uses
  %i.fx = sub i32 %i.fp, %3                       ; 2 uses
  %i.fy = add nsw i32 %i.fu, %i.fx
  %i.fz = sub nsw i32 %i.fv, %i.fw
  %i.ga = add nsw i32 %i.fw, %i.fv
  %i.gb = sub nsw i32 %i.fx, %i.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.gc = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.fl) #8
  %i.gd = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ga, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.fz, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.fy, i64 3
  %i.gh = sitofp <4 x i32> %i.gg to <4 x float>
  %i.gi = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %i.gj, %i.gh
  store <4 x float> %i.gk, ptr %1, align 4, !tbaa !18
  br label %decode_block_float_1.exit

bb.y:                                             ; preds = %.preheader.preheader.i16
  %i.gl = add i32 %i.dh, -1
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !14
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !20 ; 2 uses
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = shl i64 %i.gt, 3
  %i.gv = sub i64 %i.gu, %i.dc
  %i.gw = add i64 %i.gv, %i.gm                    ; 2 uses
  %i.gx = and i64 %i.gw, 63                       ; 3 uses
  %i.gy = lshr i64 %i.gw, 6
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gy ; 3 uses
  store ptr %i.gz, ptr %i.gn, align 8, !tbaa !14
  %.not.i.i.i17 = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i17, label %stream_skip.exit.i18, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.ha, ptr %i.gn, align 8, !tbaa !14
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !15
  %i.hc = lshr i64 %i.hb, %i.gx
  %i.hd = sub nuw nsw i64 64, %i.gx
  br label %stream_skip.exit.i18

stream_skip.exit.i18:                             ; preds = %bb.z, %bb.y
  %.sink.i.i.i19 = phi i64 [ %i.hc, %bb.z ], [ 0, %bb.y ]
  %storemerge.i.i.i20 = phi i64 [ %i.hd, %bb.z ], [ 0, %bb.y ]
  store i64 %.sink.i.i.i19, ptr %i.de, align 8, !tbaa !16
  store i64 %storemerge.i.i.i20, ptr %i.cw, align 8, !tbaa !13
  br label %decode_block_float_1.exit

decode_block_float_1.exit:                        ; preds = %stream_skip.exit.i18, %decode_block_int32_1.exit.i, %.preheader.preheader.i16, %rev_decode_block_float_1.exit
  %i.he = phi i32 [ %.1.i, %rev_decode_block_float_1.exit ], [ %i.fk, %decode_block_int32_1.exit.i ], [ %i.dh, %stream_skip.exit.i18 ], [ 1, %.preheader.preheader.i16 ]
  %i.hf = zext i32 %i.he to i64
  ret i64 %i.hf
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @rev_decode_block_int32_1(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i32], align 256              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !14
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.j = shl i64 %i.i, %i.d
  %i.k = add i64 %i.j, %i.c
  %i.l = add nuw nsw i64 %i.d, 59
  %i.m = sub nuw nsw i64 5, %i.d
  %i.n = lshr i64 %i.i, %i.m
  br label %stream_read_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, -5
  %i.p = lshr i64 %i.c, 5
  br label %stream_read_bits.exit

stream_read_bits.exit:                            ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.l, %bb.b ], [ %i.o, %bb.c ]
  %storemerge = phi i64 [ %i.n, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.in = phi i64 [ %i.k, %bb.b ], [ %i.c, %bb.c ]
  store i64 %.sink, ptr %0, align 8, !tbaa !13
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !16
  %i.q = trunc i64 %.0.i.in to i32
  %i.r = and i32 %i.q, 31
  %i.s = add nuw nsw i32 %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.t = add i32 %2, -5
  %i.u = call fastcc i32 @decode_ints_uint32(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.s, ptr noundef %i.a)
  %i.v = add i32 %i.u, 5                          ; 3 uses
  %i.w = icmp ult i32 %i.v, %1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %stream_read_bits.exit
  %i.x = sub nuw i32 %1, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = load i64, ptr %0, align 8, !tbaa !13
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, %i.y                     ; 2 uses
  %i.ak = and i64 %i.aj, 63                       ; 3 uses
  %i.al = lshr i64 %i.aj, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al ; 3 uses
  store ptr %i.am, ptr %i.z, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %stream_skip.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.z, align 8, !tbaa !14
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ap = lshr i64 %i.ao, %i.ak
  %i.aq = sub nuw nsw i64 64, %i.ak
  br label %stream_skip.exit

stream_skip.exit:                                 ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i64 [ %i.ap, %bb.e ], [ 0, %bb.d ]
  %storemerge.i.i = phi i64 [ %i.aq, %bb.e ], [ 0, %bb.d ]
  store i64 %.sink.i.i, ptr %i.b, align 8, !tbaa !16
  store i64 %storemerge.i.i, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %stream_skip.exit, %stream_read_bits.exit
  %.0 = phi i32 [ %1, %stream_skip.exit ], [ %i.v, %stream_read_bits.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.a, align 256, !tbaa !19
  %i.at = xor i32 %i.as, -1431655766
  %i.au = add i32 %i.at, 1431655766               ; 2 uses
  store i32 %i.au, ptr %3, align 4, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !19
  %i.ax = xor i32 %i.aw, -1431655766
  %i.ay = add i32 %i.ax, 1431655766               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !19
  %i.bc = xor i32 %i.bb, -1431655766              ; 2 uses
  %i.bd = add i32 %i.bc, 1431655766
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.bg = xor i32 %i.bf, -1431655766
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bi = add i32 %i.bd, %i.ay                    ; 2 uses
  %i.bj = add i32 %i.ay, %i.au                    ; 2 uses
  %i.bk = add i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.bc, -1431655764
  %i.bm = add i32 %i.bl, %i.bg
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = add i32 %i.bn, %i.bk
  store i32 %i.bo, ptr %i.bh, align 4, !tbaa !19
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !19
  store i32 %i.bj, ptr %i.az, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @decode_ints_uint32(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull captures(none) initializes((0, 16)) %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %2, 2
  %i.b = or disjoint i32 %i.a, 3
  %.not = icmp ugt i32 %i.b, %1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %2) ; 4 uses
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !15, !alias.scope !35, !noalias !36 ; 3 uses
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !35, !noalias !36 ; 3 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !37, !alias.scope !35, !noalias !36 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false), !tbaa !19, !alias.scope !36, !noalias !35
  %.not117.i = icmp eq i32 %1, 0
  br i1 %.not117.i, label %decode_few_ints_uint32.exit, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %bb.b
  %i.d = icmp samesign ult i32 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %decode_few_ints_uint32.exit

.loopexit.i:                                      ; preds = %.lr.ph116.i, %stream_read_bit.exit._crit_edge.i
  %.not.i = icmp eq i32 %.4.i, 0
  br i1 %.not.i, label %decode_few_ints_uint32.exit, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.loopexit.i
  %i.e = add nsw i32 %i.g, -1
  %i.f = icmp samesign ugt i32 %i.g, %i.c
end_hunk_0
