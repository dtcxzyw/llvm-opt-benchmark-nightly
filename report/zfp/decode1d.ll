Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode1d?download=true
inline.NumInlined: 44
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@zfp_decode_block_double_1:bb.a
  %.0.i.in.i = phi i64 [ %i.bd, %bb.n ], [ %i.bj, %.thread.i ]
  store i64 %.sink.i, ptr %i.g, align 8, !tbaa !13
  store i64 %storemerge.i, ptr %i.o, align 8, !tbaa !16
  %i.bm = trunc i64 %.0.i.in.i to i32
  %i.bn = and i32 %i.bm, 2047                     ; 2 uses
  %i.bo = load i32, ptr %0, align 8, !tbaa !25
  %i.bp = tail call i32 @llvm.usub.sat.i32(i32 %i.bo, i32 13)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !26
  %i.bs = add i32 %i.br, -13
  %i.bt = call fastcc i32 @rev_decode_block_int64_1(ptr noundef nonnull %i.g, i32 noundef %i.bp, i32 noundef %i.bs, ptr noundef %i.b)
  %i.bu = add i32 %i.bt, 13                       ; 2 uses
  %.not.i49.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i49.i, label %.preheader.preheader.i.i, label %bb.o

.preheader.preheader.i.i:                         ; preds = %stream_read_bits.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !tbaa !18
  br label %rev_decode_block_double_1.exit

bb.o:                                             ; preds = %stream_read_bits.exit.i
  %i.bv = add nsw i32 %i.bn, -1085
  %i.bw = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.bv) #8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load <2 x i64>, ptr %i.b, align 256, !tbaa !15
  %i.ca = sitofp <2 x i64> %i.bz to <2 x double>
  %i.cb = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = fmul <2 x double> %i.cc, %i.ca
  store <2 x double> %i.cd, ptr %1, align 8, !tbaa !18
  %i.ce = load <2 x i64>, ptr %i.bx, align 16, !tbaa !15
  %i.cf = sitofp <2 x i64> %i.ce to <2 x double>
  %i.cg = fmul <2 x double> %i.cc, %i.cf
  store <2 x double> %i.cg, ptr %i.by, align 8, !tbaa !18
  br label %rev_decode_block_double_1.exit

bb.p:                                             ; preds = %.preheader.preheader.i
  %i.ch = add i32 %i.r, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19 ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = shl i64 %i.cp, 3
  %i.cr = sub i64 %i.cq, %i.m
  %i.cs = add i64 %i.cr, %i.ci                    ; 2 uses
  %i.ct = and i64 %i.cs, 63                       ; 3 uses
  %i.cu = lshr i64 %i.cs, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu ; 3 uses
  store ptr %i.cv, ptr %i.cj, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %stream_skip.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.cj, align 8, !tbaa !14
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !15
  %i.cy = lshr i64 %i.cx, %i.ct
  %i.cz = sub nuw nsw i64 64, %i.ct
  br label %stream_skip.exit.i

stream_skip.exit.i:                               ; preds = %bb.q, %bb.p
  %.sink.i.i.i = phi i64 [ %i.cy, %bb.q ], [ 0, %bb.p ]
  %storemerge.i.i.i = phi i64 [ %i.cz, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i.i, ptr %i.o, align 8, !tbaa !16
  store i64 %storemerge.i.i.i, ptr %i.g, align 8, !tbaa !13
  br label %rev_decode_block_double_1.exit

rev_decode_block_double_1.exit:                   ; preds = %.preheader.preheader.i, %rev_inv_reinterpret_double.exit.i, %.preheader.preheader.i.i, %bb.o, %stream_skip.exit.i
  %.1.i = phi i32 [ %i.ah, %rev_inv_reinterpret_double.exit.i ], [ 1, %.preheader.preheader.i ], [ %i.r, %stream_skip.exit.i ], [ %i.bu, %.preheader.preheader.i.i ], [ %i.bu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %decode_block_double_1.exit

bb.r:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !24 ; 15 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %.not.i.i5 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i5, label %bb.s, label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %bb.r
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = add i64 %i.dc, -1
  br label %stream_read_bit.exit.i8

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !14
  br label %stream_read_bit.exit.i8

stream_read_bit.exit.i8:                          ; preds = %bb.s, %._crit_edge.i.i6
  %.in.i.i9 = phi ptr [ %i.df, %bb.s ], [ %.phi.trans.insert.i.i7, %._crit_edge.i.i6 ]
  %i.dh = phi i64 [ 63, %bb.s ], [ %i.dd, %._crit_edge.i.i6 ] ; 7 uses
  %i.di = load i64, ptr %.in.i.i9, align 8, !tbaa !15 ; 3 uses
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dk = lshr i64 %i.di, 1                       ; 3 uses
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !16
  %i.dl = and i64 %i.di, 1
  %.not.i10 = icmp eq i64 %i.dl, 0
  br i1 %.not.i10, label %.preheader.preheader.i16, label %bb.t

.preheader.preheader.i16:                         ; preds = %stream_read_bit.exit.i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !tbaa !18
  %i.dm = load i32, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.dn = icmp ugt i32 %i.dm, 1
  br i1 %i.dn, label %bb.y, label %decode_block_double_1.exit

bb.t:                                             ; preds = %stream_read_bit.exit.i8
  %i.do = icmp ult i64 %i.dh, 11
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !14 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !14
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !15 ; 2 uses
  %i.dt = shl i64 %i.ds, %i.dh
  %i.du = add i64 %i.dt, %i.dk
  %i.dv = add nuw nsw i64 %i.dh, 53
  %i.dw = sub nuw nsw i64 11, %i.dh
  %i.dx = lshr i64 %i.ds, %i.dw
  br label %stream_read_bits.exit.i11

bb.v:                                             ; preds = %bb.t
  %i.dy = add i64 %i.dh, -11
  %i.dz = lshr i64 %i.di, 12
  br label %stream_read_bits.exit.i11

stream_read_bits.exit.i11:                        ; preds = %bb.v, %bb.u
  %.sink.i12 = phi i64 [ %i.dv, %bb.u ], [ %i.dy, %bb.v ]
  %storemerge.i13 = phi i64 [ %i.dx, %bb.u ], [ %i.dz, %bb.v ]
  %.0.i.in.i14 = phi i64 [ %i.du, %bb.u ], [ %i.dk, %bb.v ]
  store i64 %.sink.i12, ptr %i.db, align 8, !tbaa !13
  store i64 %storemerge.i13, ptr %i.dj, align 8, !tbaa !16
  %i.ea = trunc i64 %.0.i.in.i14 to i32
  %i.eb = and i32 %i.ea, 2047                     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !27
  %reass.sub = sub nsw i32 %i.eb, %i.d            ; 2 uses
  %i.ee = add i32 %reass.sub, -1023
  %i.ef = add i32 %reass.sub, -1019
  %i.eg = icmp sgt i32 %i.ee, -5
  %spec.select15.i.i = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 %i.ef)
  %i.eh = select i1 %i.eg, i32 %spec.select15.i.i, i32 0
  %i.ei = load i32, ptr %0, align 8, !tbaa !25
  %i.ej = tail call i32 @llvm.usub.sat.i32(i32 %i.ei, i32 12) ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !26
  %i.em = add i32 %i.el, -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.en = call fastcc i32 @decode_ints_uint64(ptr noundef nonnull %i.db, i32 noundef %i.em, i32 noundef range(i32 0, -2147483648) %i.eh, ptr noundef %i.a) ; 3 uses
  %i.eo = icmp ult i32 %i.en, %i.ej
  br i1 %i.eo, label %bb.w, label %decode_block_int64_1.exit.i

bb.w:                                             ; preds = %stream_read_bits.exit.i11
  %i.ep = sub nuw i32 %i.ej, %i.en
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19 ; 2 uses
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = shl i64 %i.ex, 3
  %i.ez = load i64, ptr %i.db, align 8, !tbaa !13
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = add i64 %i.fa, %i.eq                    ; 2 uses
  %i.fc = and i64 %i.fb, 63                       ; 3 uses
  %i.fd = lshr i64 %i.fb, 6
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fd ; 3 uses
  store ptr %i.fe, ptr %i.er, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i.i, label %stream_skip.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ff, ptr %i.er, align 8, !tbaa !14
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !15
  %i.fh = lshr i64 %i.fg, %i.fc
  %i.fi = sub nuw nsw i64 64, %i.fc
  br label %stream_skip.exit.i.i

stream_skip.exit.i.i:                             ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i = phi i64 [ %i.fh, %bb.x ], [ 0, %bb.w ]
  %storemerge.i.i.i.i = phi i64 [ %i.fi, %bb.x ], [ 0, %bb.w ]
  store i64 %.sink.i.i.i.i, ptr %i.dj, align 8, !tbaa !16
  store i64 %storemerge.i.i.i.i, ptr %i.db, align 8, !tbaa !13
  br label %decode_block_int64_1.exit.i

decode_block_int64_1.exit.i:                      ; preds = %stream_skip.exit.i.i, %stream_read_bits.exit.i11
  %.0.i32.i = phi i32 [ %i.ej, %stream_skip.exit.i.i ], [ %i.en, %stream_read_bits.exit.i11 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = load i64, ptr %i.a, align 256, !tbaa !15
  %3 = xor i64 %2, -6148914691236517206           ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !15
  %i.fm = xor i64 %i.fl, -6148914691236517206
  %i.fn = add i64 %i.fm, 6148914691236517206
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fp = load i64, ptr %i.fk, align 16, !tbaa !15
  %4 = xor i64 %i.fp, -6148914691236517206        ; 2 uses
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !15
  %i.fr = xor i64 %i.fq, -6148914691236517206
  %i.fs = add i64 %i.fr, 6148914691236517206      ; 2 uses
  %i.ft = ashr i64 %i.fs, 1
  %i.fu = add nsw i64 %i.fn, %i.ft                ; 3 uses
  %i.fv = ashr i64 %i.fu, 1
  %5 = sub nsw i64 %i.fs, %i.fv                   ; 2 uses
  %6 = add nsw i64 %5, %i.fu                      ; 2 uses
  %i.fw = sub nsw i64 %5, %i.fu                   ; 2 uses
  %i.fx = add i64 %3, -6148914691236517204
  %i.fy = add i64 %i.fx, %4                       ; 2 uses
  %i.fz = sub i64 %3, %4                          ; 2 uses
  %i.ga = add nsw i64 %6, %i.fy
  %i.gb = sub nsw i64 %i.fy, %6
  %i.gc = add nsw i64 %i.fw, %i.fz
  %i.gd = sub nsw i64 %i.fz, %i.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %7 = add i32 %.0.i32.i, 12
  %8 = add nsw i32 %i.eb, -1085
  %i.ge = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %8) #8 ; 4 uses
  %i.gf = sitofp i64 %i.gd to double
  %9 = fmul double %i.ge, %i.gf
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %9, ptr %1, align 8, !tbaa !18
  %i.gg = sitofp i64 %i.ga to double
  %11 = fmul double %i.ge, %i.gg
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %11, ptr %10, align 8, !tbaa !18
  %13 = sitofp i64 %i.gb to double
  %14 = fmul double %i.ge, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %14, ptr %12, align 8, !tbaa !18
  %16 = sitofp i64 %i.gc to double
  %17 = fmul double %i.ge, %16
  store double %17, ptr %15, align 8, !tbaa !18
  br label %decode_block_double_1.exit

bb.y:                                             ; preds = %.preheader.preheader.i16
  %i.gh = add i32 %i.dm, -1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !19 ; 2 uses
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = shl i64 %i.gp, 3
  %i.gr = sub i64 %i.gq, %i.dh
  %i.gs = add i64 %i.gr, %i.gi                    ; 2 uses
  %i.gt = and i64 %i.gs, 63                       ; 3 uses
  %i.gu = lshr i64 %i.gs, 6
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gu ; 3 uses
  store ptr %i.gv, ptr %i.gj, align 8, !tbaa !14
  %.not.i.i.i17 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i.i17, label %stream_skip.exit.i18, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gw, ptr %i.gj, align 8, !tbaa !14
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !15
  %i.gy = lshr i64 %i.gx, %i.gt
  %i.gz = sub nuw nsw i64 64, %i.gt
  br label %stream_skip.exit.i18

stream_skip.exit.i18:                             ; preds = %bb.z, %bb.y
  %.sink.i.i.i19 = phi i64 [ %i.gy, %bb.z ], [ 0, %bb.y ]
  %storemerge.i.i.i20 = phi i64 [ %i.gz, %bb.z ], [ 0, %bb.y ]
  store i64 %.sink.i.i.i19, ptr %i.dj, align 8, !tbaa !16
  store i64 %storemerge.i.i.i20, ptr %i.db, align 8, !tbaa !13
  br label %decode_block_double_1.exit

decode_block_double_1.exit:                       ; preds = %stream_skip.exit.i18, %decode_block_int64_1.exit.i, %.preheader.preheader.i16, %rev_decode_block_double_1.exit
  %i.ha = phi i32 [ %.1.i, %rev_decode_block_double_1.exit ], [ %7, %decode_block_int64_1.exit.i ], [ %i.dm, %stream_skip.exit.i18 ], [ 1, %.preheader.preheader.i16 ]
  %i.hb = zext i32 %i.ha to i64
  ret i64 %i.hb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @rev_decode_block_int64_1(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 256              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.e = icmp ult i64 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !14
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.j = shl i64 %i.i, %i.d
  %i.k = add i64 %i.j, %i.c
  %i.l = add nuw nsw i64 %i.d, 58
  %i.m = sub nuw nsw i64 6, %i.d
  %i.n = lshr i64 %i.i, %i.m
  br label %stream_read_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, -6
  %i.p = lshr i64 %i.c, 6
  br label %stream_read_bits.exit

stream_read_bits.exit:                            ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.l, %bb.b ], [ %i.o, %bb.c ]
  %storemerge = phi i64 [ %i.n, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.in = phi i64 [ %i.k, %bb.b ], [ %i.c, %bb.c ]
  store i64 %.sink, ptr %0, align 8, !tbaa !13
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !16
  %i.q = trunc i64 %.0.i.in to i32
  %i.r = and i32 %i.q, 63
  %i.s = add nuw nsw i32 %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.t = add i32 %2, -6
  %i.u = call fastcc i32 @decode_ints_uint64(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.s, ptr noundef %i.a)
  %i.v = add i32 %i.u, 6                          ; 3 uses
  %i.w = icmp ult i32 %i.v, %1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %stream_read_bits.exit
  %i.x = sub nuw i32 %1, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
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
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.a, align 256, !tbaa !15
  %i.at = xor i64 %i.as, -6148914691236517206
  %i.au = add i64 %i.at, 6148914691236517206      ; 2 uses
  store i64 %i.au, ptr %3, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.ax = xor i64 %i.aw, -6148914691236517206
  %i.ay = add i64 %i.ax, 6148914691236517206      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.av, align 16, !tbaa !15
  %i.bc = xor i64 %i.bb, -6148914691236517206     ; 2 uses
  %i.bd = add i64 %i.bc, 6148914691236517206
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bg = xor i64 %i.bf, -6148914691236517206
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = add i64 %i.bd, %i.ay                    ; 2 uses
  %i.bj = add i64 %i.ay, %i.au                    ; 2 uses
  %i.bk = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = add i64 %i.bc, -6148914691236517204
  %i.bm = add i64 %i.bl, %i.bg
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = add i64 %i.bn, %i.bk
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !15
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !15
  store i64 %i.bj, ptr %i.az, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @decode_ints_uint64(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull captures(none) initializes((0, 32)) %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %2, 2
  %i.b = or disjoint i32 %i.a, 3
  %.not = icmp ugt i32 %i.b, %1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !15, !alias.scope !34, !noalias !35 ; 3 uses
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !34, !noalias !35 ; 3 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !36, !alias.scope !34, !noalias !35 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !tbaa !15, !alias.scope !35, !noalias !34
  %.not117.i = icmp eq i32 %1, 0
  br i1 %.not117.i, label %decode_few_ints_uint64.exit, label %.lr.ph124.preheader.i

.lr.ph124.preheader.i:                            ; preds = %bb.b
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %2) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp samesign ult i32 %i.c, 64
  br i1 %i.e, label %.lr.ph, label %decode_few_ints_uint64.exit

.loopexit.i:                                      ; preds = %.lr.ph116.i, %stream_read_bit.exit._crit_edge.i
  %.not.i = icmp eq i32 %.4.i, 0
  br i1 %.not.i, label %decode_few_ints_uint64.exit, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.loopexit.i
  %indvars.iv.next139.i = add nsw i64 %indvars.iv.next139.i24, -1
  %i.f = icmp samesign ugt i64 %indvars.iv.next139.i24, %i.d
  br i1 %i.f, label %.lr.ph, label %decode_few_ints_uint64.exit

.lr.ph:                                           ; preds = %.lr.ph124.preheader.i, %.lr.ph124.i
  %indvars.iv.next139.i24 = phi i64 [ %indvars.iv.next139.i, %.lr.ph124.i ], [ 63, %.lr.ph124.preheader.i ] ; 3 uses
  %.sroa.11.0118.i23 = phi i64 [ %.sroa.11.4.i, %.lr.ph124.i ], [ %.sroa.11.0.copyload.i, %.lr.ph124.preheader.i ] ; 3 uses
  %.sroa.19.0119.i22 = phi ptr [ %.sroa.19.4.i, %.lr.ph124.i ], [ %.sroa.19.0.copyload.i, %.lr.ph124.preheader.i ] ; 3 uses
  %.sroa.0.0120.i21 = phi i64 [ %.sroa.0.4.i, %.lr.ph124.i ], [ %.sroa.0.0.copyload.i, %.lr.ph124.preheader.i ] ; 4 uses
  %.050121.i20 = phi i32 [ %.4.i, %.lr.ph124.i ], [ %1, %.lr.ph124.preheader.i ] ; 2 uses
  %.045123.i19 = phi i32 [ %.146.lcssa.i, %.lr.ph124.i ], [ 0, %.lr.ph124.preheader.i ] ; 4 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %.045123.i19, i32 %.050121.i20) ; 2 uses
  %i.h = sub nuw i32 %.050121.i20, %i.g           ; 3 uses
  %i.i = zext i32 %i.g to i64                     ; 7 uses
  %i.j = icmp ult i64 %.sroa.0.0120.i21, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.19.0119.i22, i64 8 ; 2 uses
  %i.l = load i64, ptr %.sroa.19.0119.i22, align 8, !tbaa !15, !noalias !37 ; 2 uses
  %i.m = shl i64 %i.l, %.sroa.0.0120.i21
  %i.n = add i64 %i.m, %.sroa.11.0118.i23         ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.0120.i21, 64    ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %.not.i.i, label %stream_read_bits.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 %i.o, %i.i                   ; 2 uses
  %i.q = sub nsw i64 64, %i.p
  %i.r = lshr i64 %i.l, %i.q
  %i.s = add nsw i64 %i.i, -1
  %i.t = shl i64 2, %i.s
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %i.n, %i.u
  br label %stream_read_bits.exit.i

bb.e:                                             ; preds = %.lr.ph
  %i.w = sub nuw i64 %.sroa.0.0120.i21, %i.i
  %i.x = lshr i64 %.sroa.11.0118.i23, %i.i
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.y = xor i64 %notmask.i.i, -1
  %i.z = and i64 %.sroa.11.0118.i23, %i.y
  br label %stream_read_bits.exit.i

stream_read_bits.exit.i:                          ; preds = %bb.e, %bb.d, %bb.c
end_hunk_0
