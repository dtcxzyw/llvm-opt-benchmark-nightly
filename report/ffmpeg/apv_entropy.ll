Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/apv_entropy?download=true
inline.NumInlined: 76
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Out-of-range DC coefficient value: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Out-of-range run value: %d leading zeroes.\0A\00", align 1
@ff_zigzag_direct = external local_unnamed_addr constant [64 x i8], align 16
@.str.2 = private unnamed_addr constant [46 x i8] c"Out-of-range AC coefficient value at %d: %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Block decode reached invalid scan position %d.\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @ff_apv_entropy_build_decode_lut(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  %i.b = alloca [16 x i8], align 16               ; 19 uses
  br label %.preheader319

.preheader319:                                    ; preds = %bb.a, %bb.b
  %indvars.iv334 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next335, %bb.b ] ; 6 uses
  %i.c = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %indvars.iv334
  %i.d = trunc nuw nsw i64 %indvars.iv334 to i32  ; 3 uses
  %i.e = trunc i64 %indvars.iv334 to i8           ; 2 uses
  %i.f = add nuw nsw i8 %i.e, 1
  %i.g = add nuw nsw i8 %i.e, 2
  %i.h = shl nuw nsw i32 1, %i.d
  %i.i = trunc i64 %indvars.iv334 to i32
  %i.j = sub i32 8, %i.i
  %i.k = trunc i64 %indvars.iv334 to i32
  %i.l = sub i32 7, %i.k
  br label %bb.c

.preheader318:                                    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104448
  %.sroa.7.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.6.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %.preheader317

bb.b:                                             ; preds = %bb.j
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next335, 6
  br i1 %exitcond337.not, label %.preheader318, label %.preheader319, !llvm.loop !18

bb.c:                                             ; preds = %.preheader319, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader319 ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 8 uses
  %.not181 = icmp samesign ult i64 %indvars.iv, 256
  %i.p = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  br i1 %.not181, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i32 %i.p, 255
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 %i.f, ptr %i.r, align 2, !tbaa !11
  %i.s = lshr i32 %i.q, %i.j
  %i.t = trunc nuw nsw i32 %i.s to i16
  store i16 %i.t, ptr %i.o, align 2, !tbaa !12
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not182 = icmp samesign ult i64 %indvars.iv, 128
  br i1 %.not182, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = and i64 %indvars.iv, 127
  %i.v = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = sub nsw i32 6, %i.x                      ; 2 uses
  %i.z = add nsw i32 %i.y, %i.d                   ; 3 uses
  %reass.sub = sub nsw i32 %i.z, %i.x             ; 2 uses
  %i.aa = add nsw i32 %reass.sub, 7
  %i.ab = icmp ult i32 %i.aa, 8
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = trunc nsw i32 %reass.sub to i8
  %i.ad = add nsw i8 %i.ac, 9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !11
  %notmask.neg = shl nuw nsw i32 1, %i.y
  %i.af = add nuw nsw i32 %notmask.neg, 1
  %i.ag = shl i32 %i.af, %i.d
  %i.ah = sub nsw i32 %i.x, %i.z
  %i.ai = lshr i32 %i.p, %i.ah
  %notmask = shl nsw i32 -1, %i.z
  %i.aj = xor i32 %notmask, -1
  %i.ak = and i32 %i.ai, %i.aj
  %i.al = add i32 %i.ak, %i.ag
  %i.am = trunc i32 %i.al to i16
  store i16 %i.am, ptr %i.o, align 2, !tbaa !12
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 2, ptr %i.an, align 2, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 %i.g, ptr %i.ao, align 2, !tbaa !11
  %i.ap = lshr i32 %i.p, %i.l
  %i.aq = add nuw nsw i32 %i.ap, %i.h
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  store i16 %i.ar, ptr %i.o, align 2, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %.sink = phi i8 [ 0, %bb.i ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 %.sink, ptr %i.as, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !19

.preheader317:                                    ; preds = %.preheader318, %bb.l
  %indvars.iv353 = phi i64 [ 0, %.preheader318 ], [ %indvars.iv.next354, %bb.l ] ; 5 uses
  %i.at = getelementptr inbounds nuw [30720 x i8], ptr %i.m, i64 %indvars.iv353
  %i.au = getelementptr inbounds nuw [30720 x i8], ptr %i.n, i64 %indvars.iv353
  %i.av = trunc nuw nsw i64 %indvars.iv353 to i32 ; 7 uses
  %i.aw = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %indvars.iv353 ; 2 uses
  %i.ax = shl nuw nsw i32 1, %i.av                ; 2 uses
  %i.ay = shl nuw nsw i32 1, %i.av                ; 2 uses
  br label %.preheader

bb.k:                                             ; preds = %bb.l
  ret void

.preheader:                                       ; preds = %.preheader317, %bb.m
  %indvars.iv349 = phi i64 [ 0, %.preheader317 ], [ %indvars.iv.next350, %bb.m ] ; 6 uses
  %i.az = getelementptr inbounds nuw [6144 x i8], ptr %i.at, i64 %indvars.iv349
  %i.ba = getelementptr inbounds nuw [6144 x i8], ptr %i.au, i64 %indvars.iv349
  %i.bb = trunc nuw nsw i64 %indvars.iv349 to i32 ; 7 uses
  %i.bc = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %indvars.iv349
  %i.bd = shl nuw i32 1, %i.bb                    ; 2 uses
  %i.be = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %indvars.iv349
  %i.bf = shl nuw i32 1, %i.bb                    ; 2 uses
  br label %flush_put_bits.exit

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next354, 3
  br i1 %exitcond356.not, label %bb.k, label %.preheader317, !llvm.loop !20

bb.m:                                             ; preds = %.thread301
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond352.not = icmp eq i64 %indvars.iv.next350, 5
  br i1 %exitcond352.not, label %bb.l, label %.preheader, !llvm.loop !21

flush_put_bits.exit:                              ; preds = %.thread301, %.preheader
  %indvars.iv345 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next346, %.thread301 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.0..sroa_idx360, i8 0, i64 14, i1 false)
  %indvars.iv345.tr = trunc i64 %indvars.iv345 to i8
  %i.bg = lshr i64 %indvars.iv345, 1
  %i.bh = trunc i64 %i.bg to i8                   ; 2 uses
  %i.bi = shl i8 %indvars.iv345.tr, 7             ; 2 uses
  store i8 %i.bh, ptr %i.a, align 16
  store i8 %i.bi, ptr %.sroa.6.0..sroa_idx, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  store i8 %i.bh, ptr %i.b, align 16
  store i8 %i.bi, ptr %.sroa.6.0..sroa_idx358, align 1
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %indvars.iv345 ; 16 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.bj, i8 0, i64 12, i1 false)
  %i.bo = load i32, ptr %i.a, align 16, !tbaa !13
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.bq = lshr i32 %i.bp, 23
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14, !alias.scope !48
  %.not.i203 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !11, !alias.scope !48
  %i.bx = tail call i8 @llvm.umin.i8(i8 %i.bw, i8 -120)
  %i.by = zext i8 %i.bx to i32                    ; 5 uses
  br i1 %.not.i203, label %bb.p, label %bb.n

bb.n:                                             ; preds = %flush_put_bits.exit
  %i.bz = lshr i32 %i.by, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !13
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = and i32 %i.by, 7
  %i.cf = shl i32 %i.cd, %i.ce                    ; 2 uses
  %.not.i.i206 = icmp ult i32 %i.cf, 16777216     ; 2 uses
  %.110.i.i207.v = select i1 %.not.i.i206, i32 16, i32 24
  %.110.i.i207 = lshr i32 %i.cf, %.110.i.i207.v
  %.1.i.i208 = select i1 %.not.i.i206, i32 0, i32 8
  %i.cg = zext nneg i32 %.110.i.i207 to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13, !noalias !49
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw nsw i32 %.1.i.i208, %i.cj       ; 3 uses
  %i.cl = icmp eq i32 %i.ck, 15
  br i1 %i.cl, label %apv_read_vlc.exit211, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = sub nsw i32 15, %i.ck                   ; 2 uses
  %reass.sub306 = add nuw nsw i32 %i.by, 16
  %i.cn = sub nsw i32 %reass.sub306, %i.ck
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 136) ; 3 uses
  %mulshl.i209 = shl nuw nsw i32 %i.ax, %i.cm
  %i.cp = add nsw i32 %i.cm, %i.av                ; 2 uses
  %i.cq = lshr i32 %i.co, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !13, !noalias !48
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = and i32 %i.co, 7
  %i.cw = shl i32 %i.cu, %i.cv
  %i.cx = sub nsw i32 32, %i.cp
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = add nsw i32 %i.co, %i.cp
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 136)
  %i.db = add nuw i32 %i.ax, %mulshl.i209
  %i.dc = add i32 %i.db, %i.cy
  br label %apv_read_vlc.exit211

bb.p:                                             ; preds = %flush_put_bits.exit
  %i.dd = load i16, ptr %i.bs, align 2, !tbaa !12, !alias.scope !48
  %i.de = zext i16 %i.dd to i32
  br label %apv_read_vlc.exit211

apv_read_vlc.exit211:                             ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.18246.7 = phi i32 [ %i.by, %bb.p ], [ %i.by, %bb.n ], [ %i.da, %bb.o ] ; 5 uses
  %.1.i210 = phi i32 [ %i.de, %bb.p ], [ 32768, %bb.n ], [ %i.dc, %bb.o ] ; 2 uses
  %i.df = icmp samesign ugt i32 %.sroa.18246.7, 9
  br i1 %i.df, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %apv_read_vlc.exit211
  %i.dg = trunc i32 %.1.i210 to i8
  store i8 %i.dg, ptr %i.bk, align 2, !tbaa !13
  %i.dh = trunc nuw nsw i32 %.sroa.18246.7 to i8
  store i8 %i.dh, ptr %i.bl, align 2, !tbaa !13
  store i8 1, ptr %i.bj, align 2, !tbaa !16
  %i.di = ashr i32 %.1.i210, 2
  %i.dj = tail call i32 @llvm.smin.i32(i32 %i.di, i32 2) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.dk = lshr i32 %.sroa.18246.7, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !13
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = and i32 %.sroa.18246.7, 7
  %i.dq = shl i32 %i.do, %i.dp
  %i.dr = lshr i32 %i.dq, 23
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !14, !alias.scope !50
  %.not.i194 = icmp eq i8 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !11, !alias.scope !50
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nuw nsw i32 %.sroa.18246.7, %i.dy
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 136) ; 5 uses
  br i1 %.not.i194, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = lshr i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !13
  %i.ef = tail call i32 @llvm.bswap.i32(i32 %i.ee)
  %i.eg = and i32 %i.ea, 7
  %i.eh = shl i32 %i.ef, %i.eg                    ; 2 uses
  %.not.i.i197 = icmp ult i32 %i.eh, 16777216     ; 2 uses
  %.110.i.i198.v = select i1 %.not.i.i197, i32 16, i32 24
  %.110.i.i198 = lshr i32 %i.eh, %.110.i.i198.v
  %.1.i.i199 = select i1 %.not.i.i197, i32 0, i32 8
  %i.ei = zext nneg i32 %.110.i.i198 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13, !noalias !51
  %i.el = zext i8 %i.ek to i32
  %i.em = add nuw nsw i32 %.1.i.i199, %i.el       ; 3 uses
  %i.en = icmp eq i32 %i.em, 15
  br i1 %i.en, label %apv_read_vlc.exit202, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eo = sub nsw i32 15, %i.em                   ; 2 uses
  %reass.sub307 = add nuw nsw i32 %i.ea, 16
  %i.ep = sub nsw i32 %reass.sub307, %i.em
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 136) ; 3 uses
  %mulshl.i200 = shl i32 %i.bd, %i.eo
  %i.er = add i32 %i.eo, %i.bb                    ; 2 uses
  %i.es = lshr i32 %i.eq, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !13, !noalias !50
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %i.eq, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = sub nsw i32 32, %i.er
  %i.fa = lshr i32 %i.ey, %i.ez
  %i.fb = add i32 %i.eq, %i.er
  %i.fc = tail call i32 @llvm.umin.i32(i32 %i.fb, i32 136)
  %i.fd = add i32 %i.bd, %mulshl.i200
  %i.fe = add i32 %i.fd, %i.fa
  br label %apv_read_vlc.exit202

bb.t:                                             ; preds = %bb.q
  %i.ff = load i16, ptr %i.dt, align 2, !tbaa !12, !alias.scope !50
  %i.fg = zext i16 %i.ff to i32
  br label %apv_read_vlc.exit202

apv_read_vlc.exit202:                             ; preds = %bb.r, %bb.s, %bb.t
  %.sroa.18246.6 = phi i32 [ %i.ea, %bb.t ], [ %i.ea, %bb.r ], [ %i.fc, %bb.s ] ; 4 uses
  %.1.i201 = phi i32 [ %i.fg, %bb.t ], [ 32768, %bb.r ], [ %i.fe, %bb.s ] ; 2 uses
  %i.fh = icmp samesign ult i32 %.sroa.18246.6, 136
  %i.fi = zext i1 %i.fh to i32
  %spec.select.i = add nuw nsw i32 %.sroa.18246.6, %i.fi ; 5 uses
  %i.fj = icmp samesign ugt i32 %spec.select.i, 9
  br i1 %i.fj, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %apv_read_vlc.exit202
  %i.fk = lshr i32 %.sroa.18246.6, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !13
  %i.fo = zext i8 %i.fn to i32
  %i.fp = and i32 %.sroa.18246.6, 7
  %i.fq = add nsw i32 %.1.i201, 1                 ; 2 uses
  %i.fr = lshr exact i32 128, %i.fp
  %i.fs = and i32 %i.fr, %i.fo
  %.not = icmp eq i32 %i.fs, 0
  %i.ft = xor i32 %.1.i201, -1
  %i.fu = select i1 %.not, i32 %i.fq, i32 %i.ft
  %i.fv = trunc i32 %i.fu to i16
  store i16 %i.fv, ptr %i.bm, align 2, !tbaa !17
  %i.fw = trunc nuw nsw i32 %spec.select.i to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !13
  store i8 2, ptr %i.bj, align 2, !tbaa !16
  %i.fy = ashr i32 %i.fq, 2
  %i.fz = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 4) ; 6 uses
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = shl i8 %i.ga, 2
  %i.gc = and i8 %i.gb, 28                        ; 4 uses
  store i8 %i.gc, ptr %i.bn, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.gd = lshr i32 %spec.select.i, 3
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 1, !tbaa !13
  %i.gh = tail call i32 @llvm.bswap.i32(i32 %i.gg)
  %i.gi = and i32 %spec.select.i, 7
  %i.gj = shl i32 %i.gh, %i.gi
  %i.gk = lshr i32 %i.gj, 23
  %i.gl = sext i32 %i.dj to i64
  %i.gm = getelementptr inbounds [2048 x i8], ptr %0, i64 %i.gl
  %i.gn = zext nneg i32 %i.gk to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gn ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !14, !alias.scope !52
  %.not.i203.1 = icmp eq i8 %i.gq, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !11, !alias.scope !52
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nuw nsw i32 %spec.select.i, %i.gt
  %i.gv = tail call i32 @llvm.umin.i32(i32 %i.gu, i32 136) ; 5 uses
  br i1 %.not.i203.1, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gw = lshr i32 %i.gv, 3
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 1, !tbaa !13
  %i.ha = tail call i32 @llvm.bswap.i32(i32 %i.gz)
  %i.hb = and i32 %i.gv, 7
  %i.hc = shl i32 %i.ha, %i.hb                    ; 2 uses
  %.not.i.i206.1 = icmp ult i32 %i.hc, 16777216   ; 2 uses
  %.110.i.i207.v.1 = select i1 %.not.i.i206.1, i32 16, i32 24
  %.110.i.i207.1 = lshr i32 %i.hc, %.110.i.i207.v.1
  %.1.i.i208.1 = select i1 %.not.i.i206.1, i32 0, i32 8
  %i.hd = zext nneg i32 %.110.i.i207.1 to i64
  %i.he = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !13, !noalias !53
  %i.hg = zext i8 %i.hf to i32
  %i.hh = add nuw nsw i32 %.1.i.i208.1, %i.hg     ; 3 uses
  %i.hi = icmp eq i32 %i.hh, 15
  br i1 %i.hi, label %apv_read_vlc.exit211.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hj = sub nsw i32 15, %i.hh                   ; 2 uses
  %reass.sub306.1 = add nuw nsw i32 %i.gv, 16
  %i.hk = sub nsw i32 %reass.sub306.1, %i.hh
  %i.hl = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 136) ; 3 uses
  %i.hm = shl nuw nsw i32 1, %i.dj                ; 2 uses
  %mulshl.i209.1 = shl i32 %i.hm, %i.hj
  %i.hn = add nsw i32 %i.hj, %i.dj                ; 2 uses
  %i.ho = lshr i32 %i.hl, 3
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 1, !tbaa !13, !noalias !52
  %i.hs = tail call i32 @llvm.bswap.i32(i32 %i.hr)
  %i.ht = and i32 %i.hl, 7
  %i.hu = shl i32 %i.hs, %i.ht
  %i.hv = sub nsw i32 32, %i.hn
  %i.hw = lshr i32 %i.hu, %i.hv
  %i.hx = add nsw i32 %i.hl, %i.hn
  %i.hy = tail call i32 @llvm.umin.i32(i32 %i.hx, i32 136)
  %i.hz = add i32 %i.hm, %mulshl.i209.1
  %i.ia = add i32 %i.hz, %i.hw
  br label %apv_read_vlc.exit211.1

bb.x:                                             ; preds = %bb.u
  %i.ib = load i16, ptr %i.go, align 2, !tbaa !12, !alias.scope !52
  %i.ic = zext i16 %i.ib to i32
  br label %apv_read_vlc.exit211.1

apv_read_vlc.exit211.1:                           ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.18246.7.1 = phi i32 [ %i.gv, %bb.x ], [ %i.gv, %bb.v ], [ %i.hy, %bb.w ] ; 5 uses
  %.1.i210.1 = phi i32 [ %i.ic, %bb.x ], [ 32768, %bb.v ], [ %i.ia, %bb.w ] ; 2 uses
  %i.id = icmp samesign ugt i32 %.sroa.18246.7.1, 9
  br i1 %i.id, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %apv_read_vlc.exit211.1
  %i.ie = trunc i32 %.1.i210.1 to i8
  %i.if = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !13
  %i.ig = trunc nuw nsw i32 %.sroa.18246.7.1 to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  store i8 %i.ig, ptr %i.ih, align 2, !tbaa !13
  store i8 3, ptr %i.bj, align 2, !tbaa !16
  %i.ii = ashr i32 %.1.i210.1, 2
  %i.ij = tail call i32 @llvm.smin.i32(i32 %i.ii, i32 2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.ik = lshr i32 %.sroa.18246.7.1, 3
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.il
  %i.in = load i32, ptr %i.im, align 1, !tbaa !13
  %i.io = tail call i32 @llvm.bswap.i32(i32 %i.in)
  %i.ip = and i32 %.sroa.18246.7.1, 7
  %i.iq = shl i32 %i.io, %i.ip
  %i.ir = lshr i32 %i.iq, 23
  %i.is = sext i32 %i.fz to i64
  %i.it = getelementptr inbounds [2048 x i8], ptr %0, i64 %i.is
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.iu ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !14, !alias.scope !54
  %.not.i194.1 = icmp eq i8 %i.ix, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !11, !alias.scope !54
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nuw nsw i32 %.sroa.18246.7.1, %i.ja
  %i.jc = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 136) ; 5 uses
  br i1 %.not.i194.1, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jd = lshr i32 %i.jc, 3
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 1, !tbaa !13
  %i.jh = tail call i32 @llvm.bswap.i32(i32 %i.jg)
  %i.ji = and i32 %i.jc, 7
  %i.jj = shl i32 %i.jh, %i.ji                    ; 2 uses
  %.not.i.i197.1 = icmp ult i32 %i.jj, 16777216   ; 2 uses
  %.110.i.i198.v.1 = select i1 %.not.i.i197.1, i32 16, i32 24
  %.110.i.i198.1 = lshr i32 %i.jj, %.110.i.i198.v.1
  %.1.i.i199.1 = select i1 %.not.i.i197.1, i32 0, i32 8
  %i.jk = zext nneg i32 %.110.i.i198.1 to i64
  %i.jl = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !13, !noalias !55
  %i.jn = zext i8 %i.jm to i32
  %i.jo = add nuw nsw i32 %.1.i.i199.1, %i.jn     ; 3 uses
  %i.jp = icmp eq i32 %i.jo, 15
  br i1 %i.jp, label %apv_read_vlc.exit202.1, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = sub nsw i32 15, %i.jo                   ; 2 uses
  %reass.sub307.1 = add nuw nsw i32 %i.jc, 16
  %i.jr = sub nsw i32 %reass.sub307.1, %i.jo
  %i.js = tail call i32 @llvm.umin.i32(i32 %i.jr, i32 136) ; 3 uses
  %i.jt = shl nuw nsw i32 1, %i.fz                ; 2 uses
  %mulshl.i200.1 = shl i32 %i.jt, %i.jq
  %i.ju = add nsw i32 %i.jq, %i.fz                ; 2 uses
  %i.jv = lshr i32 %i.js, 3
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 1, !tbaa !13, !noalias !54
  %i.jz = tail call i32 @llvm.bswap.i32(i32 %i.jy)
  %i.ka = and i32 %i.js, 7
  %i.kb = shl i32 %i.jz, %i.ka
  %i.kc = sub nsw i32 32, %i.ju
  %i.kd = lshr i32 %i.kb, %i.kc
  %i.ke = add nsw i32 %i.js, %i.ju
  %i.kf = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 136)
  %i.kg = add i32 %i.jt, %mulshl.i200.1
  %i.kh = add i32 %i.kg, %i.kd
  br label %apv_read_vlc.exit202.1

bb.ab:                                            ; preds = %bb.y
  %i.ki = load i16, ptr %i.iv, align 2, !tbaa !12, !alias.scope !54
  %i.kj = zext i16 %i.ki to i32
  br label %apv_read_vlc.exit202.1

apv_read_vlc.exit202.1:                           ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.18246.6.1 = phi i32 [ %i.jc, %bb.ab ], [ %i.jc, %bb.z ], [ %i.kf, %bb.aa ] ; 4 uses
  %.1.i201.1 = phi i32 [ %i.kj, %bb.ab ], [ 32768, %bb.z ], [ %i.kh, %bb.aa ] ; 2 uses
  %i.kk = icmp samesign ult i32 %.sroa.18246.6.1, 136
  %i.kl = zext i1 %i.kk to i32
  %spec.select.i.1 = add nuw nsw i32 %.sroa.18246.6.1, %i.kl ; 2 uses
  %i.km = icmp samesign ugt i32 %spec.select.i.1, 9
  br i1 %i.km, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %apv_read_vlc.exit202.1
  %i.kn = lshr i32 %.sroa.18246.6.1, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !13
  %i.kr = zext i8 %i.kq to i32
  %i.ks = and i32 %.sroa.18246.6.1, 7
  %i.kt = add nsw i32 %.1.i201.1, 1               ; 2 uses
  %i.ku = lshr exact i32 128, %i.ks
  %i.kv = and i32 %i.ku, %i.kr
  %.not.1 = icmp eq i32 %i.kv, 0
  %i.kw = xor i32 %.1.i201.1, -1
  %i.kx = select i1 %.not.1, i32 %i.kt, i32 %i.kw
  %i.ky = trunc i32 %i.kx to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !17
  %i.la = trunc nuw nsw i32 %spec.select.i.1 to i8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !13
  store i8 4, ptr %i.bj, align 2, !tbaa !16
  %i.lc = ashr i32 %i.kt, 2
  %i.ld = tail call i32 @llvm.smin.i32(i32 %i.lc, i32 4)
  br label %bb.ae

bb.ad:                                            ; preds = %apv_read_vlc.exit202, %apv_read_vlc.exit211.1, %apv_read_vlc.exit202.1
  %.ph = phi i8 [ %i.gc, %apv_read_vlc.exit202.1 ], [ %i.gc, %apv_read_vlc.exit211.1 ], [ 0, %apv_read_vlc.exit202 ]
  %.ph376 = phi i64 [ 3, %apv_read_vlc.exit202.1 ], [ 2, %apv_read_vlc.exit211.1 ], [ 1, %apv_read_vlc.exit202 ]
  %.0158.lcssa.ph = phi i32 [ %i.fz, %apv_read_vlc.exit202.1 ], [ %i.fz, %apv_read_vlc.exit211.1 ], [ %i.bb, %apv_read_vlc.exit202 ]
  %.2161.ph = phi i32 [ %i.ij, %apv_read_vlc.exit202.1 ], [ %i.dj, %apv_read_vlc.exit211.1 ], [ %i.dj, %apv_read_vlc.exit202 ]
  %i.le = getelementptr i8, ptr %i.bj, i64 %.ph376
  %i.lf = getelementptr i8, ptr %i.le, i64 7
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %apv_read_vlc.exit211, %bb.ac, %bb.ad
  %.2161382 = phi i32 [ %.2161.ph, %bb.ad ], [ %i.av, %apv_read_vlc.exit211 ], [ %i.ij, %bb.ac ]
  %.0158.lcssa380 = phi i32 [ %.0158.lcssa.ph, %bb.ad ], [ %i.bb, %apv_read_vlc.exit211 ], [ %i.ld, %bb.ac ]
  %i.li = phi i8 [ %.ph, %bb.ad ], [ 0, %apv_read_vlc.exit211 ], [ %i.gc, %bb.ac ]
  %i.lj = trunc i32 %.2161382 to i8
  %i.lk = and i8 %i.lj, 3
  %i.ll = or disjoint i8 %i.lk, %i.li
  %i.lm = trunc i32 %.0158.lcssa380 to i8
  %i.ln = shl i8 %i.lm, 5
  %i.lo = or disjoint i8 %i.ll, %i.ln
  store i8 %i.lo, ptr %i.bn, align 1
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %indvars.iv345 ; 16 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.lp, i8 0, i64 12, i1 false)
  %i.lu = load i32, ptr %i.b, align 16, !tbaa !13
  %i.lv = tail call i32 @llvm.bswap.i32(i32 %i.lu)
  %i.lw = lshr i32 %i.lv, 23
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.lx ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !14, !alias.scope !56
  %.not.i185 = icmp eq i8 %i.ma, 0
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.mc = load i8, ptr %i.mb, align 2, !tbaa !11, !alias.scope !56
  %i.md = tail call i8 @llvm.umin.i8(i8 %i.mc, i8 -120)
  %i.me = zext i8 %i.md to i32                    ; 5 uses
  br i1 %.not.i185, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mf = lshr i32 %i.me, 3
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 1, !tbaa !13
  %i.mj = tail call i32 @llvm.bswap.i32(i32 %i.mi)
  %i.mk = and i32 %i.me, 7
  %i.ml = shl i32 %i.mj, %i.mk                    ; 2 uses
  %.not.i.i188 = icmp ult i32 %i.ml, 16777216     ; 2 uses
  %.110.i.i189.v = select i1 %.not.i.i188, i32 16, i32 24
  %.110.i.i189 = lshr i32 %i.ml, %.110.i.i189.v
  %.1.i.i190 = select i1 %.not.i.i188, i32 0, i32 8
  %i.mm = zext nneg i32 %.110.i.i189 to i64
  %i.mn = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !13, !noalias !57
  %i.mp = zext i8 %i.mo to i32
  %i.mq = add nuw nsw i32 %.1.i.i190, %i.mp       ; 3 uses
  %i.mr = icmp eq i32 %i.mq, 15
  br i1 %i.mr, label %apv_read_vlc.exit193, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ms = sub nsw i32 15, %i.mq                   ; 2 uses
  %reass.sub308 = add nuw nsw i32 %i.me, 16
  %i.mt = sub nsw i32 %reass.sub308, %i.mq
  %i.mu = tail call i32 @llvm.umin.i32(i32 %i.mt, i32 136) ; 3 uses
  %mulshl.i191 = shl i32 %i.bf, %i.ms
  %i.mv = add i32 %i.ms, %i.bb                    ; 2 uses
  %i.mw = lshr i32 %i.mu, 3
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 1, !tbaa !13, !noalias !56
  %i.na = tail call i32 @llvm.bswap.i32(i32 %i.mz)
  %i.nb = and i32 %i.mu, 7
  %i.nc = shl i32 %i.na, %i.nb
  %i.nd = sub nsw i32 32, %i.mv
  %i.ne = lshr i32 %i.nc, %i.nd
  %i.nf = add i32 %i.mu, %i.mv
  %i.ng = tail call i32 @llvm.umin.i32(i32 %i.nf, i32 136)
  %i.nh = add i32 %i.bf, %mulshl.i191
  %i.ni = add i32 %i.nh, %i.ne
  br label %apv_read_vlc.exit193

bb.ah:                                            ; preds = %bb.ae
  %i.nj = load i16, ptr %i.ly, align 2, !tbaa !12, !alias.scope !56
  %i.nk = zext i16 %i.nj to i32
  br label %apv_read_vlc.exit193

apv_read_vlc.exit193:                             ; preds = %bb.af, %bb.ag, %bb.ah
  %.sroa.18246.5 = phi i32 [ %i.me, %bb.ah ], [ %i.me, %bb.af ], [ %i.ng, %bb.ag ] ; 4 uses
  %.1.i192 = phi i32 [ %i.nk, %bb.ah ], [ 32768, %bb.af ], [ %i.ni, %bb.ag ] ; 2 uses
  %i.nl = icmp samesign ult i32 %.sroa.18246.5, 136
  %i.nm = zext i1 %i.nl to i32
  %spec.select.i231 = add nuw nsw i32 %.sroa.18246.5, %i.nm ; 5 uses
  %i.nn = icmp samesign ugt i32 %spec.select.i231, 9
  br i1 %i.nn, label %.thread301, label %bb.ai

bb.ai:                                            ; preds = %apv_read_vlc.exit193
  %i.no = lshr i32 %.sroa.18246.5, 3
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !13
  %i.ns = zext i8 %i.nr to i32
  %i.nt = and i32 %.sroa.18246.5, 7
  %i.nu = add nsw i32 %.1.i192, 1                 ; 2 uses
  %i.nv = lshr exact i32 128, %i.nt
  %i.nw = and i32 %i.nv, %i.ns
  %.not179 = icmp eq i32 %i.nw, 0
  %i.nx = xor i32 %.1.i192, -1
  %i.ny = select i1 %.not179, i32 %i.nu, i32 %i.nx
  %i.nz = trunc i32 %i.ny to i16
  store i16 %i.nz, ptr %i.lq, align 2, !tbaa !17
  %i.oa = trunc nuw nsw i32 %spec.select.i231 to i8
  store i8 %i.oa, ptr %i.lr, align 2, !tbaa !13
  store i8 1, ptr %i.lp, align 2, !tbaa !16
  %i.ob = ashr i32 %i.nu, 2
  %i.oc = tail call i32 @llvm.smin.i32(i32 %i.ob, i32 4) ; 6 uses
  %i.od = trunc i32 %i.oc to i8
  %i.oe = shl i8 %i.od, 2
  %i.of = and i8 %i.oe, 28                        ; 3 uses
  store i8 %i.of, ptr %i.ls, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.og = lshr i32 %spec.select.i231, 3
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 1, !tbaa !13
  %i.ok = tail call i32 @llvm.bswap.i32(i32 %i.oj)
  %i.ol = and i32 %spec.select.i231, 7
  %i.om = shl i32 %i.ok, %i.ol
  %i.on = lshr i32 %i.om, 23
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.oo ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 3
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !14, !alias.scope !58
  %.not.i = icmp eq i8 %i.or, 0
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 2
  %i.ot = load i8, ptr %i.os, align 2, !tbaa !11, !alias.scope !58
  %i.ou = zext i8 %i.ot to i32
  %i.ov = add nuw nsw i32 %spec.select.i231, %i.ou
  %i.ow = tail call i32 @llvm.umin.i32(i32 %i.ov, i32 136) ; 5 uses
  br i1 %.not.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ox = lshr i32 %i.ow, 3
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 1, !tbaa !13
  %i.pb = tail call i32 @llvm.bswap.i32(i32 %i.pa)
  %i.pc = and i32 %i.ow, 7
  %i.pd = shl i32 %i.pb, %i.pc                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.pd, 16777216        ; 2 uses
  %.110.i.i.v = select i1 %.not.i.i, i32 16, i32 24
  %.110.i.i = lshr i32 %i.pd, %.110.i.i.v
  %.1.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.pe = zext nneg i32 %.110.i.i to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !13, !noalias !59
  %i.ph = zext i8 %i.pg to i32
  %i.pi = add nuw nsw i32 %.1.i.i, %i.ph          ; 3 uses
  %i.pj = icmp eq i32 %i.pi, 15
  br i1 %i.pj, label %apv_read_vlc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pk = sub nsw i32 15, %i.pi                   ; 2 uses
  %reass.sub309 = add nuw nsw i32 %i.ow, 16
  %i.pl = sub nsw i32 %reass.sub309, %i.pi
  %i.pm = tail call i32 @llvm.umin.i32(i32 %i.pl, i32 136) ; 3 uses
  %mulshl.i = shl nuw nsw i32 %i.ay, %i.pk
  %i.pn = add nsw i32 %i.pk, %i.av                ; 2 uses
  %i.po = lshr i32 %i.pm, 3
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 1, !tbaa !13, !noalias !58
  %i.ps = tail call i32 @llvm.bswap.i32(i32 %i.pr)
  %i.pt = and i32 %i.pm, 7
  %i.pu = shl i32 %i.ps, %i.pt
  %i.pv = sub nsw i32 32, %i.pn
  %i.pw = lshr i32 %i.pu, %i.pv
  %i.px = add nsw i32 %i.pm, %i.pn
  %i.py = tail call i32 @llvm.umin.i32(i32 %i.px, i32 136)
  %i.pz = add nuw i32 %i.ay, %mulshl.i
  %i.qa = add i32 %i.pz, %i.pw
  br label %apv_read_vlc.exit

bb.al:                                            ; preds = %bb.ai
  %i.qb = load i16, ptr %i.op, align 2, !tbaa !12, !alias.scope !58
  %i.qc = zext i16 %i.qb to i32
  br label %apv_read_vlc.exit

apv_read_vlc.exit:                                ; preds = %bb.aj, %bb.ak, %bb.al
  %.sroa.18246.4 = phi i32 [ %i.ow, %bb.al ], [ %i.ow, %bb.aj ], [ %i.py, %bb.ak ] ; 5 uses
  %.1.i = phi i32 [ %i.qc, %bb.al ], [ 32768, %bb.aj ], [ %i.qa, %bb.ak ] ; 2 uses
  %i.qd = icmp samesign ugt i32 %.sroa.18246.4, 9
  br i1 %i.qd, label %bb.av, label %bb.am

bb.am:                                            ; preds = %apv_read_vlc.exit
  %i.qe = trunc i32 %.1.i to i8
  store i8 %i.qe, ptr %i.lt, align 2, !tbaa !13
  %i.qf = trunc nuw nsw i32 %.sroa.18246.4 to i8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lp, i64 9
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !13
  store i8 2, ptr %i.lp, align 2, !tbaa !16
  %i.qh = ashr i32 %.1.i, 2
  %i.qi = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 2) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.qj = lshr i32 %.sroa.18246.4, 3
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 1, !tbaa !13
  %i.qn = tail call i32 @llvm.bswap.i32(i32 %i.qm)
  %i.qo = and i32 %.sroa.18246.4, 7
  %i.qp = shl i32 %i.qn, %i.qo
  %i.qq = lshr i32 %i.qp, 23
  %i.qr = sext i32 %i.oc to i64
  %i.qs = getelementptr inbounds [2048 x i8], ptr %0, i64 %i.qr
  %i.qt = zext nneg i32 %i.qq to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.qt ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 3
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !14, !alias.scope !60
  %.not.i185.1 = icmp eq i8 %i.qw, 0
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  %i.qy = load i8, ptr %i.qx, align 2, !tbaa !11, !alias.scope !60
  %i.qz = zext i8 %i.qy to i32
  %i.ra = add nuw nsw i32 %.sroa.18246.4, %i.qz
  %i.rb = tail call i32 @llvm.umin.i32(i32 %i.ra, i32 136) ; 5 uses
  br i1 %.not.i185.1, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rc = lshr i32 %i.rb, 3
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 1, !tbaa !13
  %i.rg = tail call i32 @llvm.bswap.i32(i32 %i.rf)
  %i.rh = and i32 %i.rb, 7
  %i.ri = shl i32 %i.rg, %i.rh                    ; 2 uses
  %.not.i.i188.1 = icmp ult i32 %i.ri, 16777216   ; 2 uses
  %.110.i.i189.v.1 = select i1 %.not.i.i188.1, i32 16, i32 24
  %.110.i.i189.1 = lshr i32 %i.ri, %.110.i.i189.v.1
  %.1.i.i190.1 = select i1 %.not.i.i188.1, i32 0, i32 8
  %i.rj = zext nneg i32 %.110.i.i189.1 to i64
  %i.rk = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !13, !noalias !61
  %i.rm = zext i8 %i.rl to i32
  %i.rn = add nuw nsw i32 %.1.i.i190.1, %i.rm     ; 3 uses
  %i.ro = icmp eq i32 %i.rn, 15
  br i1 %i.ro, label %apv_read_vlc.exit193.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rp = sub nsw i32 15, %i.rn                   ; 2 uses
  %reass.sub308.1 = add nuw nsw i32 %i.rb, 16
  %i.rq = sub nsw i32 %reass.sub308.1, %i.rn
  %i.rr = tail call i32 @llvm.umin.i32(i32 %i.rq, i32 136) ; 3 uses
  %i.rs = shl nuw nsw i32 1, %i.oc                ; 2 uses
  %mulshl.i191.1 = shl i32 %i.rs, %i.rp
  %i.rt = add nsw i32 %i.rp, %i.oc                ; 2 uses
  %i.ru = lshr i32 %i.rr, 3
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 1, !tbaa !13, !noalias !60
  %i.ry = tail call i32 @llvm.bswap.i32(i32 %i.rx)
  %i.rz = and i32 %i.rr, 7
  %i.sa = shl i32 %i.ry, %i.rz
  %i.sb = sub nsw i32 32, %i.rt
  %i.sc = lshr i32 %i.sa, %i.sb
  %i.sd = add nsw i32 %i.rr, %i.rt
  %i.se = tail call i32 @llvm.umin.i32(i32 %i.sd, i32 136)
  %i.sf = add i32 %i.rs, %mulshl.i191.1
  %i.sg = add i32 %i.sf, %i.sc
  br label %apv_read_vlc.exit193.1

bb.ap:                                            ; preds = %bb.am
  %i.sh = load i16, ptr %i.qu, align 2, !tbaa !12, !alias.scope !60
  %i.si = zext i16 %i.sh to i32
  br label %apv_read_vlc.exit193.1

apv_read_vlc.exit193.1:                           ; preds = %bb.ap, %bb.ao, %bb.an
  %.sroa.18246.5.1 = phi i32 [ %i.rb, %bb.ap ], [ %i.rb, %bb.an ], [ %i.se, %bb.ao ] ; 4 uses
  %.1.i192.1 = phi i32 [ %i.si, %bb.ap ], [ 32768, %bb.an ], [ %i.sg, %bb.ao ] ; 2 uses
  %i.sj = icmp samesign ult i32 %.sroa.18246.5.1, 136
  %i.sk = zext i1 %i.sj to i32
  %spec.select.i231.1 = add nuw nsw i32 %.sroa.18246.5.1, %i.sk ; 5 uses
  %i.sl = icmp samesign ugt i32 %spec.select.i231.1, 9
  br i1 %i.sl, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %apv_read_vlc.exit193.1
  %i.sm = lshr i32 %.sroa.18246.5.1, 3
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !13
  %i.sq = zext i8 %i.sp to i32
  %i.sr = and i32 %.sroa.18246.5.1, 7
  %i.ss = add nsw i32 %.1.i192.1, 1               ; 2 uses
  %i.st = lshr exact i32 128, %i.sr
  %i.su = and i32 %i.st, %i.sq
  %.not179.1 = icmp eq i32 %i.su, 0
  %i.sv = xor i32 %.1.i192.1, -1
  %i.sw = select i1 %.not179.1, i32 %i.ss, i32 %i.sv
  %i.sx = trunc i32 %i.sw to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.lp, i64 6
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !17
  %i.sz = trunc nuw nsw i32 %spec.select.i231.1 to i8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.lp, i64 10
  store i8 %i.sz, ptr %i.ta, align 2, !tbaa !13
  store i8 3, ptr %i.lp, align 2, !tbaa !16
  %i.tb = ashr i32 %i.ss, 2
  %i.tc = tail call i32 @llvm.smin.i32(i32 %i.tb, i32 4) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.td = lshr i32 %spec.select.i231.1, 3
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 1, !tbaa !13
  %i.th = tail call i32 @llvm.bswap.i32(i32 %i.tg)
  %i.ti = and i32 %spec.select.i231.1, 7
  %i.tj = shl i32 %i.th, %i.ti
  %i.tk = lshr i32 %i.tj, 23
  %i.tl = sext i32 %i.qi to i64
  %i.tm = getelementptr inbounds [2048 x i8], ptr %0, i64 %i.tl
  %i.tn = zext nneg i32 %i.tk to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.tn ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 3
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !14, !alias.scope !62
  %.not.i.1 = icmp eq i8 %i.tq, 0
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 2
  %i.ts = load i8, ptr %i.tr, align 2, !tbaa !11, !alias.scope !62
  %i.tt = zext i8 %i.ts to i32
  %i.tu = add nuw nsw i32 %spec.select.i231.1, %i.tt
  %i.tv = tail call i32 @llvm.umin.i32(i32 %i.tu, i32 136) ; 5 uses
  br i1 %.not.i.1, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.tw = lshr i32 %i.tv, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 1, !tbaa !13
  %i.ua = tail call i32 @llvm.bswap.i32(i32 %i.tz)
  %i.ub = and i32 %i.tv, 7
  %i.uc = shl i32 %i.ua, %i.ub                    ; 2 uses
  %.not.i.i.1 = icmp ult i32 %i.uc, 16777216      ; 2 uses
  %.110.i.i.v.1 = select i1 %.not.i.i.1, i32 16, i32 24
  %.110.i.i.1 = lshr i32 %i.uc, %.110.i.i.v.1
  %.1.i.i.1 = select i1 %.not.i.i.1, i32 0, i32 8
  %i.ud = zext nneg i32 %.110.i.i.1 to i64
  %i.ue = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !13, !noalias !63
  %i.ug = zext i8 %i.uf to i32
  %i.uh = add nuw nsw i32 %.1.i.i.1, %i.ug        ; 3 uses
  %i.ui = icmp eq i32 %i.uh, 15
  br i1 %i.ui, label %apv_read_vlc.exit.1, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.uj = sub nsw i32 15, %i.uh                   ; 2 uses
  %reass.sub309.1 = add nuw nsw i32 %i.tv, 16
  %i.uk = sub nsw i32 %reass.sub309.1, %i.uh
  %i.ul = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 136) ; 3 uses
  %i.um = shl nuw nsw i32 1, %i.qi                ; 2 uses
  %mulshl.i.1 = shl i32 %i.um, %i.uj
  %i.un = add nsw i32 %i.uj, %i.qi                ; 2 uses
  %i.uo = lshr i32 %i.ul, 3
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 1, !tbaa !13, !noalias !62
  %i.us = tail call i32 @llvm.bswap.i32(i32 %i.ur)
  %i.ut = and i32 %i.ul, 7
  %i.uu = shl i32 %i.us, %i.ut
  %i.uv = sub nsw i32 32, %i.un
  %i.uw = lshr i32 %i.uu, %i.uv
  %i.ux = add nsw i32 %i.ul, %i.un
  %i.uy = tail call i32 @llvm.umin.i32(i32 %i.ux, i32 136)
  %i.uz = add i32 %i.um, %mulshl.i.1
  %i.va = add i32 %i.uz, %i.uw
  br label %apv_read_vlc.exit.1

bb.at:                                            ; preds = %bb.aq
  %i.vb = load i16, ptr %i.to, align 2, !tbaa !12, !alias.scope !62
  %i.vc = zext i16 %i.vb to i32
  br label %apv_read_vlc.exit.1

apv_read_vlc.exit.1:                              ; preds = %bb.at, %bb.as, %bb.ar
  %.sroa.18246.4.1 = phi i32 [ %i.tv, %bb.at ], [ %i.tv, %bb.ar ], [ %i.uy, %bb.as ] ; 2 uses
  %.1.i.1 = phi i32 [ %i.vc, %bb.at ], [ 32768, %bb.ar ], [ %i.va, %bb.as ] ; 2 uses
  %i.vd = icmp samesign ugt i32 %.sroa.18246.4.1, 9
  br i1 %i.vd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %apv_read_vlc.exit.1
  %i.ve = trunc i32 %.1.i.1 to i8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  store i8 %i.ve, ptr %i.vf, align 1, !tbaa !13
  %i.vg = trunc nuw nsw i32 %.sroa.18246.4.1 to i8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.lp, i64 11
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !13
  store i8 4, ptr %i.lp, align 2, !tbaa !16
  %i.vi = ashr i32 %.1.i.1, 2
  %i.vj = tail call i32 @llvm.smin.i32(i32 %i.vi, i32 2)
  br label %.thread301

bb.av:                                            ; preds = %apv_read_vlc.exit, %apv_read_vlc.exit193.1, %apv_read_vlc.exit.1
  %.ph384 = phi i64 [ 3, %apv_read_vlc.exit.1 ], [ 2, %apv_read_vlc.exit193.1 ], [ 1, %apv_read_vlc.exit ]
  %.3162.lcssa.ph = phi i32 [ %i.qi, %apv_read_vlc.exit.1 ], [ %i.qi, %apv_read_vlc.exit193.1 ], [ %i.av, %apv_read_vlc.exit ]
  %.5.ph = phi i32 [ %i.tc, %apv_read_vlc.exit.1 ], [ %i.oc, %apv_read_vlc.exit193.1 ], [ %i.oc, %apv_read_vlc.exit ]
  %i.vk = getelementptr i8, ptr %i.lp, i64 %.ph384
  %i.vl = getelementptr i8, ptr %i.vk, i64 7
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !13
  %i.vn = getelementptr inbounds nuw i8, ptr %i.lp, i64 11
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !13
  br label %.thread301

.thread301:                                       ; preds = %apv_read_vlc.exit193, %bb.au, %bb.av
  %.5390 = phi i32 [ %.5.ph, %bb.av ], [ %i.tc, %bb.au ], [ %i.bb, %apv_read_vlc.exit193 ]
  %.3162.lcssa388 = phi i32 [ %.3162.lcssa.ph, %bb.av ], [ %i.vj, %bb.au ], [ %i.av, %apv_read_vlc.exit193 ]
  %i.vo = phi i8 [ %i.of, %bb.av ], [ %i.of, %bb.au ], [ 0, %apv_read_vlc.exit193 ]
  %i.vp = trunc i32 %.3162.lcssa388 to i8
  %i.vq = and i8 %i.vp, 3
  %i.vr = or disjoint i8 %i.vq, %i.vo
  %i.vs = trunc i32 %.5390 to i8
  %i.vt = shl i8 %i.vs, 5
  %i.vu = or disjoint i8 %i.vr, %i.vt
  store i8 %i.vu, ptr %i.ls, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next346, 512
  br i1 %exitcond348.not, label %bb.m, label %flush_put_bits.exit, !llvm.loop !46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_apv_entropy_decode_block(ptr noalias nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !71    ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %.val397 = load ptr, ptr %1, align 8, !tbaa !75 ; 12 uses
  %i.f = getelementptr i8, ptr %1, i64 8          ; 19 uses
  %.val398 = load i32, ptr %i.f, align 8, !tbaa !76 ; 3 uses
  %i.g = lshr i32 %.val398, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.h
  %i.j = load i32, ptr %i.i, align 1, !tbaa !13
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = and i32 %.val398, 7
  %i.m = shl i32 %i.k, %i.l
  %i.n = lshr i32 %i.m, 23
  %i.o = zext i8 %i.d to i64
  %i.p = getelementptr inbounds nuw [2048 x i8], ptr %i.b, i64 %i.o
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14, !alias.scope !72
  %.not.i393 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.v = load i8, ptr %i.u, align 2, !tbaa !11, !alias.scope !72
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !77, !noalias !72 ; 23 uses
  %i.z = add i32 %.val398, %i.w
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.z) ; 6 uses
  br i1 %.not.i393, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !13
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = and i32 %i.aa, 7                        ; 2 uses
  %i.ah = shl i32 %i.af, %i.ag                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.ah, 16777216        ; 2 uses
  %.110.i.i.v = select i1 %.not.i.i, i32 16, i32 24
  %.110.i.i = lshr i32 %i.ah, %.110.i.i.v
  %.1.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.ai = zext nneg i32 %.110.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13, !noalias !78
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i32 %.1.i.i, %i.al          ; 3 uses
  %i.an = icmp eq i32 %i.am, 15
  br i1 %i.an, label %apv_read_vlc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = sub nsw i32 15, %i.am                   ; 2 uses
  %reass.sub466 = add i32 %i.aa, 16
  %i.ap = sub i32 %reass.sub466, %i.am
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ap) ; 3 uses
  %i.ar = shl nuw i32 1, %i.e                     ; 2 uses
  %mulshl.i = shl i32 %i.ar, %i.ao
  %i.as = add nsw i32 %i.ao, %i.e                 ; 2 uses
  %i.at = lshr i32 %i.aq, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !13, !noalias !72
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = and i32 %i.aq, 7
  %i.az = shl i32 %i.ax, %i.ay
  %i.ba = sub nsw i32 32, %i.as
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = add i32 %i.aq, %i.as
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.bc) ; 2 uses
  store i32 %i.bd, ptr %i.f, align 8, !tbaa !76, !noalias !72
  %i.be = add i32 %i.ar, %mulshl.i
  %i.bf = add i32 %i.be, %i.bb
  br label %apv_read_vlc.exit

bb.d:                                             ; preds = %bb.a
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !76, !noalias !72
  %i.bg = load i16, ptr %i.r, align 2, !tbaa !12, !alias.scope !72
  %i.bh = zext i16 %i.bg to i32
  br label %apv_read_vlc.exit

apv_read_vlc.exit:                                ; preds = %bb.c, %bb.d
  %i.bi = phi i32 [ %i.aa, %bb.d ], [ %i.bd, %bb.c ] ; 4 uses
  %.1.i394 = phi i32 [ %i.bh, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %.1.i394, 0
  br i1 %.not, label %bb.g, label %apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge

apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge: ; preds = %apv_read_vlc.exit
  %.pre660 = lshr i32 %i.bi, 3
  %.pre661 = zext nneg i32 %.pre660 to i64
  %.pre663 = and i32 %i.bi, 7
  br label %apv_read_vlc.exit.thread

apv_read_vlc.exit.thread:                         ; preds = %apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge, %bb.b
  %.pre-phi664 = phi i32 [ %.pre663, %apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge ], [ %i.ag, %bb.b ]
  %.pre-phi662 = phi i64 [ %.pre661, %apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge ], [ %i.ac, %bb.b ]
  %i.bj = phi i32 [ %i.bi, %apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge ], [ %i.aa, %bb.b ] ; 2 uses
  %.1.i394409 = phi i32 [ %.1.i394, %apv_read_vlc.exit.apv_read_vlc.exit.thread_crit_edge ], [ 32768, %bb.b ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val397, i64 %.pre-phi662
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = icmp slt i32 %i.bj, %i.y
  %i.bn = zext i1 %i.bm to i32
  %spec.select.i = add i32 %i.bj, %i.bn           ; 3 uses
  %i.bo = zext i8 %i.bl to i32
  store i32 %spec.select.i, ptr %i.f, align 8, !tbaa !76
  %i.bp = lshr exact i32 128, %.pre-phi664
  %i.bq = and i32 %i.bp, %i.bo
  %.not369 = icmp eq i32 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !79
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  br i1 %.not369, label %bb.f, label %bb.e

bb.e:                                             ; preds = %apv_read_vlc.exit.thread
  %i.bu = sub nsw i32 %i.bt, %.1.i394409
  br label %bb.h

bb.f:                                             ; preds = %apv_read_vlc.exit.thread
  %i.bv = add nsw i32 %.1.i394409, %i.bt
  br label %bb.h

bb.g:                                             ; preds = %apv_read_vlc.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !79
  %i.by = sext i16 %i.bx to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.val406 = phi i32 [ %spec.select.i, %bb.e ], [ %spec.select.i, %bb.f ], [ %i.bi, %bb.g ] ; 8 uses
  %.1.i394410 = phi i32 [ %.1.i394409, %bb.e ], [ %.1.i394409, %bb.f ], [ 0, %bb.g ]
  %.0296 = phi i32 [ %i.bu, %bb.e ], [ %i.bv, %bb.f ], [ %i.by, %bb.g ] ; 3 uses
  %i.bz = add i32 %.0296, 32768
  %or.cond = icmp ult i32 %i.bz, 65536
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr %2, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ca, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.0296) #7
  br label %.thread464

bb.j:                                             ; preds = %bb.h
  %i.cb = trunc nsw i32 %.0296 to i16             ; 2 uses
  store i16 %i.cb, ptr %0, align 2, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 %i.cb, ptr %i.cc, align 8, !tbaa !79
  %i.cd = ashr i32 %.1.i394410, 1
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 5)
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.c, align 2, !tbaa !71
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 19 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81  ; 2 uses
  %i.ci = zext i8 %i.ch to i32
  %i.cj = lshr i32 %.val406, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !13
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = and i32 %.val406, 7
  %i.cp = shl i32 %i.cn, %i.co                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 12288 ; 2 uses
  %i.cs = zext i8 %i.ch to i64
  %i.ct = getelementptr inbounds nuw [6144 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = zext nneg i32 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.cu ; 12 uses
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !16  ; 5 uses
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = lshr i32 %i.cp, 14
  %i.cz = and i32 %i.cy, 65535                    ; 4 uses
  %.not.i390 = icmp samesign ult i32 %i.cz, 256   ; 2 uses
  %i.da = lshr i32 %i.cz, 8
  %.110.i391 = select i1 %.not.i390, i32 %i.cz, i32 %i.da
  %.1.i392 = select i1 %.not.i390, i32 0, i32 8
  %i.db = zext nneg i32 %.110.i391 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %.1.i392, %i.de         ; 2 uses
  %i.dg = sub nsw i32 15, %i.df                   ; 6 uses
  %i.dh = icmp ugt i32 %i.dg, 5
  br i1 %i.dh, label %.thread411, label %bb.l

.thread411:                                       ; preds = %bb.k
  %i.di = load ptr, ptr %2, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.di, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.dg) #7
  br label %.thread464

bb.l:                                             ; preds = %bb.k
  %i.dj = shl nuw nsw i32 %i.dg, 1
  %i.dk = sub nuw nsw i32 15, %i.dj
  %i.dl = lshr i32 %i.cz, %i.dk
  %notmask.i395 = shl nsw i32 -1, %i.dg
  %i.dm = xor i32 %notmask.i395, -1
  %i.dn = and i32 %i.dl, %i.dm
  %notmask.neg = shl nuw nsw i32 1, %i.dg
  %i.do = add nuw nsw i32 %notmask.neg, 1
  %i.dp = add nuw nsw i32 %i.do, %i.dn            ; 3 uses
  %reass.sub = add i32 %.val406, 18
  %i.dq = sub i32 %reass.sub, %i.df
  %i.dr = add i32 %i.dq, %i.dg
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.dr) ; 2 uses
  store i32 %i.ds, ptr %i.f, align 8, !tbaa !76
  %i.dt = add nuw nsw i32 %i.dp, 1                ; 2 uses
  %i.du = icmp samesign ugt i32 %i.dp, 62
  br i1 %i.du, label %.thread427, label %.thread415

.thread415:                                       ; preds = %bb.l
  %i.dv = lshr i32 %i.dp, 2
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 2)
  br label %bb.y

bb.m:                                             ; preds = %bb.j
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !13  ; 3 uses
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = add nuw nsw i32 %i.dz, 1                ; 3 uses
  %i.eb = icmp ugt i8 %i.dy, 62
  br i1 %i.eb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  br label %.thread427.sink.split

bb.o:                                             ; preds = %bb.m
  %.not370 = icmp eq i8 %i.cw, 1                  ; 2 uses
  br i1 %.not370, label %..thread421_crit_edge, label %bb.p

..thread421_crit_edge:                            ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.thread421

bb.p:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !17
  %i.ef = zext nneg i32 %i.ea to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ei
  store i16 %i.ee, ptr %i.ej, align 2, !tbaa !17
  %i.ek = add nuw nsw i32 %i.dz, 2                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.em = load i8, ptr %i.el, align 1             ; 4 uses
  %i.en = lshr i8 %i.em, 2
  %i.eo = and i8 %i.en, 7
  store i8 %i.eo, ptr %i.cg, align 1, !tbaa !81
  %i.ep = icmp eq i8 %i.dy, 62
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cv, i64 9
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !13
  %i.es = zext i8 %i.er to i32
  %i.et = add i32 %.val406, %i.es
  %i.eu = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.et)
  store i32 %i.eu, ptr %i.f, align 8, !tbaa !76
  br label %.thread464

bb.r:                                             ; preds = %bb.p
  %i.ev = icmp ugt i8 %i.cw, 2
  br i1 %i.ev, label %bb.s, label %.thread421

bb.s:                                             ; preds = %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nuw nsw i32 %i.ek, %i.ey            ; 6 uses
  %i.fa = icmp samesign ugt i32 %i.ez, 63
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  br label %.thread427.sink.split

bb.u:                                             ; preds = %bb.s
  %.not467 = icmp eq i8 %i.cw, 3
  br i1 %.not467, label %.thread421, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !17
  %i.fe = zext nneg i32 %i.ez to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !13
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fh
  store i16 %i.fd, ptr %i.fi, align 2, !tbaa !17
  %i.fj = add nuw nsw i32 %i.ez, 1
  %i.fk = icmp eq i32 %i.ez, 63
  br i1 %i.fk, label %bb.w, label %.thread421

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add i32 %.val406, %i.fn
  %i.fp = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.fo)
  store i32 %i.fp, ptr %i.f, align 8, !tbaa !76
  br label %.thread464

.thread421:                                       ; preds = %..thread421_crit_edge, %bb.r, %bb.v, %bb.u
  %i.fq = phi i8 [ %i.em, %bb.v ], [ %i.em, %bb.u ], [ %i.em, %bb.r ], [ %.pre, %..thread421_crit_edge ] ; 2 uses
  %.3310 = phi i32 [ %i.fj, %bb.v ], [ %i.ez, %bb.u ], [ %i.ek, %bb.r ], [ %i.ea, %..thread421_crit_edge ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add i32 %.val406, %i.ft
  %i.fv = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.fu) ; 4 uses
  store i32 %i.fv, ptr %i.f, align 8, !tbaa !76
  %i.fw = and i8 %i.fq, 3
  %i.fx = zext nneg i8 %i.fw to i32               ; 3 uses
  %i.fy = lshr i8 %i.fq, 5
  %i.fz = zext nneg i8 %i.fy to i32               ; 3 uses
  br i1 %.not370, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread421
  %i.ga = and i8 %i.cw, 1
  %.not371 = icmp eq i8 %i.ga, 0
  br i1 %.not371, label %.preheader485.preheader, label %.preheader

bb.y:                                             ; preds = %.thread415, %.thread421
  %.val404 = phi i32 [ %i.ds, %.thread415 ], [ %i.fv, %.thread421 ] ; 8 uses
  %.4311 = phi i32 [ %i.dt, %.thread415 ], [ %.3310, %.thread421 ] ; 7 uses
  %.1303 = phi i32 [ %i.dw, %.thread415 ], [ %i.fx, %.thread421 ] ; 2 uses
  %.0297 = phi i32 [ %i.ci, %.thread415 ], [ %i.fz, %.thread421 ] ; 4 uses
  %i.gb = lshr i32 %.val404, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 1, !tbaa !13
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = and i32 %.val404, 7
  %i.gh = shl i32 %i.gf, %i.gg                    ; 2 uses
  %i.gi = lshr i32 %i.gh, 23
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 104448
  %i.gk = zext nneg i32 %.1303 to i64
  %i.gl = getelementptr inbounds nuw [30720 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = zext nneg i32 %.0297 to i64
  %i.gn = getelementptr inbounds nuw [6144 x i8], ptr %i.gl, i64 %i.gm
  %i.go = zext nneg i32 %i.gi to i64
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %i.go ; 11 uses
  %i.gq = load i8, ptr %i.gp, align 2, !tbaa !16  ; 5 uses
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gs = lshr i32 %i.gh, 14
  %i.gt = and i32 %i.gs, 65535                    ; 3 uses
  %.not.i387 = icmp samesign ult i32 %i.gt, 256   ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %.110.i388 = select i1 %.not.i387, i32 %i.gt, i32 %i.gu
  %.1.i389 = select i1 %.not.i387, i32 0, i32 8
  %i.gv = zext nneg i32 %.110.i388 to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nuw nsw i32 %.1.i389, %i.gy         ; 2 uses
  %i.ha = sub nsw i32 15, %i.gz                   ; 2 uses
  %reass.sub470 = add i32 %.val404, 18
  %i.hb = sub i32 %reass.sub470, %i.gz
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.hb) ; 3 uses
  %i.hd = shl i32 2, %.0297
  %i.he = shl nuw i32 1, %.0297
  %.fr = freeze i32 %i.he                         ; 2 uses
  %mulshl = shl i32 %.fr, %i.ha
  %i.hf = add nsw i32 %i.ha, %.0297               ; 2 uses
  %i.hg = lshr i32 %i.hc, 3
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 1, !tbaa !13
  %i.hk = tail call i32 @llvm.bswap.i32(i32 %i.hj)
  %i.hl = and i32 %i.hc, 7
  %i.hm = shl i32 %i.hk, %i.hl
  %i.hn = sub nsw i32 32, %i.hf
  %i.ho = lshr i32 %i.hm, %i.hn
  %i.hp = add i32 %i.hc, %i.hf
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.hp) ; 3 uses
  %i.hr = sub i32 %i.hd, %.fr
  %i.hs = add i32 %i.hr, %mulshl
  %i.ht = add i32 %i.hs, %i.ho                    ; 2 uses
  %i.hu = add i32 %i.ht, 1                        ; 2 uses
  %i.hv = lshr i32 %i.hq, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !13
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = and i32 %i.hq, 7
  %i.ib = shl i32 %i.hz, %i.ia
  %i.ic = add i32 %i.hq, 1
  %i.id = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ic) ; 2 uses
  store i32 %i.id, ptr %i.f, align 8, !tbaa !76
  %i.ie = xor i32 %i.ht, -1
  %.not373471 = icmp slt i32 %i.ib, 0
  %.0294 = select i1 %.not373471, i32 %i.ie, i32 %i.hu ; 3 uses
  %i.if = add i32 %.0294, -32768
  %or.cond3 = icmp ult i32 %i.if, -65536
  br i1 %or.cond3, label %.thread423, label %bb.aa

.thread423:                                       ; preds = %bb.z
  %i.ig = load ptr, ptr %2, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ig, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %.4311, i32 noundef %.0294) #7
  br label %.thread464

bb.aa:                                            ; preds = %bb.z
  %i.ih = trunc nsw i32 %.0294 to i16
  %i.ii = zext nneg i32 %.4311 to i64
  %i.ij = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !13
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.il
  store i16 %i.ih, ptr %i.im, align 2, !tbaa !17
  %i.in = add nuw nsw i32 %.4311, 1               ; 2 uses
  %i.io = ashr i32 %i.hu, 2
  %i.ip = tail call i32 @llvm.smin.i32(i32 %i.io, i32 4) ; 2 uses
  %i.iq = trunc i32 %i.ip to i8
  store i8 %i.iq, ptr %i.cg, align 1, !tbaa !81
  %i.ir = icmp samesign ugt i32 %.4311, 62
  br i1 %i.ir, label %.thread427, label %.preheader485.preheader

bb.ab:                                            ; preds = %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.it = load i16, ptr %i.is, align 2, !tbaa !17
  %i.iu = zext nneg i32 %.4311 to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !13
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ix
  store i16 %i.it, ptr %i.iy, align 2, !tbaa !17
  %i.iz = add nuw nsw i32 %.4311, 1               ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.jb = load i8, ptr %i.ja, align 1             ; 3 uses
  %i.jc = lshr i8 %i.jb, 2
  %i.jd = and i8 %i.jc, 7
  store i8 %i.jd, ptr %i.cg, align 1, !tbaa !81
  %i.je = icmp samesign ugt i32 %.4311, 62
  br i1 %i.je, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  br label %.thread427.sink.split

bb.ad:                                            ; preds = %bb.ab
  %.not468 = icmp eq i8 %i.gq, 1
  br i1 %.not468, label %.thread434, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.jh = load i8, ptr %i.jg, align 2, !tbaa !13
  %i.ji = zext i8 %i.jh to i32
  %i.jj = add nuw nsw i32 %i.iz, %i.ji            ; 6 uses
  %i.jk = icmp samesign ugt i32 %i.jj, 63
  br i1 %i.jk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gp, i64 9
  br label %.thread427.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.jm = icmp ugt i8 %i.gq, 2
  br i1 %i.jm, label %bb.ah, label %.thread434

bb.ah:                                            ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gp, i64 6
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !17
  %i.jp = zext nneg i32 %i.jj to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !13
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.js
  store i16 %i.jo, ptr %i.jt, align 2, !tbaa !17
  %i.ju = add nuw nsw i32 %i.jj, 1                ; 2 uses
  %i.jv = icmp eq i32 %i.jj, 63
  br i1 %i.jv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gp, i64 10
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !13
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add i32 %.val404, %i.jy
  %i.ka = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.jz)
  store i32 %i.ka, ptr %i.f, align 8, !tbaa !76
  br label %.thread464

bb.aj:                                            ; preds = %bb.ah
  %.not469 = icmp eq i8 %i.gq, 3
  br i1 %.not469, label %.thread434, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gp, i64 3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !13
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add nuw nsw i32 %i.ju, %i.kd            ; 3 uses
  %i.kf = icmp samesign ugt i32 %i.ke, 63
  br i1 %i.kf, label %bb.al, label %.thread434

bb.al:                                            ; preds = %bb.ak
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gp, i64 11
  br label %.thread427.sink.split

.thread434:                                       ; preds = %bb.ad, %bb.ag, %bb.ak, %bb.aj
  %.8 = phi i32 [ %i.ke, %bb.ak ], [ %i.ju, %bb.aj ], [ %i.jj, %bb.ag ], [ %i.iz, %bb.ad ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gp, i64 11
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !13
  %i.kj = zext i8 %i.ki to i32
  %i.kk = add i32 %.val404, %i.kj
  %i.kl = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.kk) ; 3 uses
  store i32 %i.kl, ptr %i.f, align 8, !tbaa !76
  %i.km = and i8 %i.jb, 3
  %i.kn = zext nneg i8 %i.km to i32               ; 2 uses
  %i.ko = lshr i8 %i.jb, 5
  %i.kp = zext nneg i8 %i.ko to i32               ; 2 uses
  %i.kq = and i8 %i.gq, 1
  %.not372 = icmp eq i8 %i.kq, 0
  br i1 %.not372, label %.preheader, label %.preheader485.preheader

.preheader485.preheader:                          ; preds = %.thread461, %bb.x, %.thread434, %bb.aa, %bb.bc
  %.ph = phi i32 [ %i.fv, %bb.x ], [ %i.id, %bb.aa ], [ %i.qp, %bb.bc ], [ %i.kl, %.thread434 ], [ %i.ss, %.thread461 ]
  %.9.ph = phi i32 [ %.3310, %bb.x ], [ %i.in, %bb.aa ], [ %i.qz, %bb.bc ], [ %.8, %.thread434 ], [ %.18, %.thread461 ]
  %.2304.ph = phi i32 [ %i.fx, %bb.x ], [ %.1303, %bb.aa ], [ %.4306, %bb.bc ], [ %i.kn, %.thread434 ], [ %i.sw, %.thread461 ]
  %.2299.ph = phi i32 [ %i.fz, %bb.x ], [ %i.ip, %bb.aa ], [ %i.rb, %bb.bc ], [ %i.kp, %.thread434 ], [ %i.sy, %.thread461 ]
  br label %.preheader485

.preheader485:                                    ; preds = %.preheader485.preheader, %.thread447
  %i.kr = phi i32 [ %i.oe, %.thread447 ], [ %.ph, %.preheader485.preheader ] ; 8 uses
  %.9 = phi i32 [ %.13, %.thread447 ], [ %.9.ph, %.preheader485.preheader ] ; 2 uses
  %.2304 = phi i32 [ %i.oi, %.thread447 ], [ %.2304.ph, %.preheader485.preheader ] ; 5 uses
  %.2299 = phi i32 [ %i.ok, %.thread447 ], [ %.2299.ph, %.preheader485.preheader ] ; 2 uses
  %i.ks = lshr i32 %i.kr, 3
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 1, !tbaa !13
  %i.kw = tail call i32 @llvm.bswap.i32(i32 %i.kv)
  %i.kx = and i32 %i.kr, 7
  %i.ky = shl i32 %i.kw, %i.kx                    ; 2 uses
  %i.kz = lshr i32 %i.ky, 23
  %i.la = sext i32 %.2304 to i64
  %i.lb = getelementptr inbounds [30720 x i8], ptr %i.cr, i64 %i.la
  %i.lc = sext i32 %.2299 to i64
  %i.ld = getelementptr inbounds [6144 x i8], ptr %i.lb, i64 %i.lc
  %i.le = zext nneg i32 %i.kz to i64
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.ld, i64 %i.le ; 11 uses
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !16  ; 5 uses
  %i.lh = icmp eq i8 %i.lg, 0
  br i1 %i.lh, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.preheader485
  %i.li = lshr i32 %i.ky, 14
  %i.lj = and i32 %i.li, 65535                    ; 4 uses
  %.not.i384 = icmp samesign ult i32 %i.lj, 256   ; 2 uses
  %i.lk = lshr i32 %i.lj, 8
  %.110.i385 = select i1 %.not.i384, i32 %i.lj, i32 %i.lk
  %.1.i386 = select i1 %.not.i384, i32 0, i32 8
  %i.ll = zext nneg i32 %.110.i385 to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !13
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nuw nsw i32 %.1.i386, %i.lo         ; 3 uses
  %i.lq = sub nsw i32 15, %i.lp                   ; 4 uses
  %i.lr = icmp ugt i32 %i.lq, 5
  br i1 %i.lr, label %.thread436, label %bb.an

.thread436:                                       ; preds = %bb.am
  %i.ls = load ptr, ptr %2, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ls, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %i.lq) #7
  br label %.thread464

bb.an:                                            ; preds = %bb.am
  %i.lt = add nsw i32 %i.lq, %.2304               ; 2 uses
  %.neg = shl nuw nsw i32 %i.lp, 1
  %i.lu = sub nsw i32 %.neg, %.2304
  %i.lv = add nsw i32 %i.lu, -15
  %i.lw = lshr i32 %i.lj, %i.lv
  %notmask.i = shl nsw i32 -1, %i.lt
  %i.lx = xor i32 %notmask.i, -1
  %i.ly = and i32 %i.lw, %i.lx
  %i.lz = shl nuw nsw i32 2, %.2304
  %i.ma = shl nuw nsw i32 1, %.2304
  %.fr376 = freeze i32 %i.ma                      ; 2 uses
  %mulshl377 = shl i32 %.fr376, %i.lq
  %i.mb = sub i32 %i.lz, %.fr376
  %i.mc = add i32 %i.mb, %mulshl377
  %i.md = add i32 %i.mc, %i.ly                    ; 2 uses
  %reass.sub378 = add i32 %i.kr, 18
  %i.me = sub i32 %reass.sub378, %i.lp
  %i.mf = add i32 %i.me, %i.lt
  %i.mg = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.mf) ; 2 uses
  store i32 %i.mg, ptr %i.f, align 8, !tbaa !76
  %i.mh = add nsw i32 %i.md, %.9                  ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 63
  br i1 %i.mi, label %.thread427, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mj = ashr i32 %i.md, 2
  %i.mk = tail call i32 @llvm.smin.i32(i32 %i.mj, i32 2)
  br label %.preheader

bb.ap:                                            ; preds = %.preheader485
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.mm = load i8, ptr %i.ml, align 2, !tbaa !13
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add nsw i32 %.9, %i.mn                  ; 6 uses
  %i.mp = icmp sgt i32 %i.mo, 63
  br i1 %i.mp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  br label %.thread427.sink.split

bb.ar:                                            ; preds = %bb.ap
  %.not374 = icmp eq i8 %i.lg, 1
  br i1 %.not374, label %.thread447, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !17
  %i.mt = sext i32 %i.mo to i64
  %i.mu = getelementptr inbounds i8, ptr @ff_zigzag_direct, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !13
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.mw
  store i16 %i.ms, ptr %i.mx, align 2, !tbaa !17
  %i.my = add nsw i32 %i.mo, 1                    ; 2 uses
  %i.mz = icmp eq i32 %i.mo, 63
  br i1 %i.mz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.na = getelementptr inbounds nuw i8, ptr %i.lf, i64 9
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !13
  %i.nc = zext i8 %i.nb to i32
  %i.nd = add i32 %i.kr, %i.nc
  %i.ne = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.nd)
  store i32 %i.ne, ptr %i.f, align 8, !tbaa !76
  br label %.thread464

bb.au:                                            ; preds = %bb.as
  %i.nf = icmp ugt i8 %i.lg, 2
  br i1 %i.nf, label %bb.av, label %.thread447

bb.av:                                            ; preds = %bb.au
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.ni = zext i8 %i.nh to i32
  %i.nj = add nsw i32 %i.my, %i.ni                ; 6 uses
  %i.nk = icmp sgt i32 %i.nj, 63
  br i1 %i.nk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lf, i64 10
  br label %.thread427.sink.split

bb.ax:                                            ; preds = %bb.av
  %.not472 = icmp eq i8 %i.lg, 3
  br i1 %.not472, label %.thread447, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lf, i64 6
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !17
  %i.no = sext i32 %i.nj to i64
  %i.np = getelementptr inbounds i8, ptr @ff_zigzag_direct, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !13
  %i.nr = zext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.nr
  store i16 %i.nn, ptr %i.ns, align 2, !tbaa !17
  %i.nt = add nsw i32 %i.nj, 1
  %i.nu = icmp eq i32 %i.nj, 63
  br i1 %i.nu, label %bb.az, label %.thread447

bb.az:                                            ; preds = %bb.ay
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lf, i64 11
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !13
  %i.nx = zext i8 %i.nw to i32
  %i.ny = add i32 %i.kr, %i.nx
  %i.nz = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ny)
  store i32 %i.nz, ptr %i.f, align 8, !tbaa !76
  br label %.thread464

.thread447:                                       ; preds = %bb.ar, %bb.au, %bb.ay, %bb.ax
  %.13 = phi i32 [ %i.nt, %bb.ay ], [ %i.nj, %bb.ax ], [ %i.my, %bb.au ], [ %i.mo, %bb.ar ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lf, i64 11
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !13
  %i.oc = zext i8 %i.ob to i32
  %i.od = add i32 %i.kr, %i.oc
  %i.oe = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.od) ; 3 uses
  store i32 %i.oe, ptr %i.f, align 8, !tbaa !76
  %i.of = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.og = load i8, ptr %i.of, align 1             ; 2 uses
  %i.oh = and i8 %i.og, 3
  %i.oi = zext nneg i8 %i.oh to i32               ; 2 uses
  %i.oj = lshr i8 %i.og, 5
  %i.ok = zext nneg i8 %i.oj to i32               ; 2 uses
  %i.ol = and i8 %i.lg, 1
  %.not375 = icmp eq i8 %i.ol, 0
  br i1 %.not375, label %.preheader485, label %.preheader

.preheader:                                       ; preds = %.thread447, %bb.x, %.thread434, %bb.ao
  %.promoted569 = phi i32 [ %i.fv, %bb.x ], [ %i.kl, %.thread434 ], [ %i.mg, %bb.ao ], [ %i.oe, %.thread447 ]
  %.14.ph = phi i32 [ %.3310, %bb.x ], [ %.8, %.thread434 ], [ %i.mh, %bb.ao ], [ %.13, %.thread447 ]
  %.4306.ph = phi i32 [ %i.fx, %bb.x ], [ %i.kn, %.thread434 ], [ %i.mk, %bb.ao ], [ %i.oi, %.thread447 ]
  %.3300.ph = phi i32 [ %i.fz, %bb.x ], [ %i.kp, %.thread434 ], [ %.2299, %bb.ao ], [ %i.ok, %.thread447 ]
  %i.om = getelementptr inbounds nuw i8, ptr %i.b, i64 104448
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader, %.thread461
  %i.on = phi i32 [ %i.ss, %.thread461 ], [ %.promoted569, %.preheader ] ; 8 uses
  %.14 = phi i32 [ %.18, %.thread461 ], [ %.14.ph, %.preheader ] ; 7 uses
  %.4306 = phi i32 [ %i.sw, %.thread461 ], [ %.4306.ph, %.preheader ] ; 2 uses
  %.3300 = phi i32 [ %i.sy, %.thread461 ], [ %.3300.ph, %.preheader ] ; 4 uses
  %i.oo = lshr i32 %i.on, 3
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 1, !tbaa !13
  %i.os = tail call i32 @llvm.bswap.i32(i32 %i.or)
  %i.ot = and i32 %i.on, 7
  %i.ou = shl i32 %i.os, %i.ot                    ; 2 uses
  %i.ov = lshr i32 %i.ou, 23
  %i.ow = sext i32 %.4306 to i64
  %i.ox = getelementptr inbounds [30720 x i8], ptr %i.om, i64 %i.ow
  %i.oy = sext i32 %.3300 to i64
  %i.oz = getelementptr inbounds [6144 x i8], ptr %i.ox, i64 %i.oy
  %i.pa = zext nneg i32 %i.ov to i64
  %i.pb = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %i.pa ; 11 uses
  %i.pc = load i8, ptr %i.pb, align 2, !tbaa !16  ; 5 uses
  %i.pd = icmp eq i8 %i.pc, 0
  br i1 %i.pd, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.pe = lshr i32 %i.ou, 14
  %i.pf = and i32 %i.pe, 65535                    ; 3 uses
  %.not.i = icmp samesign ult i32 %i.pf, 256      ; 2 uses
  %i.pg = lshr i32 %i.pf, 8
  %.110.i = select i1 %.not.i, i32 %i.pf, i32 %i.pg
  %.1.i = select i1 %.not.i, i32 0, i32 8
  %i.ph = zext nneg i32 %.110.i to i64
  %i.pi = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !13
  %i.pk = zext i8 %i.pj to i32
  %i.pl = add nuw nsw i32 %.1.i, %i.pk            ; 2 uses
  %i.pm = sub nsw i32 15, %i.pl                   ; 2 uses
  %reass.sub475 = add i32 %i.on, 18
  %i.pn = sub i32 %reass.sub475, %i.pl
  %i.po = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.pn) ; 3 uses
  %i.pp = shl nuw nsw i32 2, %.3300
  %i.pq = shl nuw nsw i32 1, %.3300
  %.fr380 = freeze i32 %i.pq                      ; 2 uses
  %mulshl381 = shl i32 %.fr380, %i.pm
  %i.pr = add nsw i32 %i.pm, %.3300               ; 2 uses
  %i.ps = lshr i32 %i.po, 3
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 1, !tbaa !13
  %i.pw = tail call i32 @llvm.bswap.i32(i32 %i.pv)
  %i.px = and i32 %i.po, 7
  %i.py = shl i32 %i.pw, %i.px
  %i.pz = sub nsw i32 32, %i.pr
  %i.qa = lshr i32 %i.py, %i.pz
  %i.qb = add i32 %i.po, %i.pr
  %i.qc = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.qb) ; 3 uses
  %i.qd = sub i32 %i.pp, %.fr380
  %i.qe = add i32 %i.qd, %mulshl381
  %i.qf = add i32 %i.qe, %i.qa                    ; 2 uses
  %i.qg = add i32 %i.qf, 1                        ; 2 uses
  %i.qh = lshr i32 %i.qc, 3
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 1, !tbaa !13
  %i.ql = tail call i32 @llvm.bswap.i32(i32 %i.qk)
  %i.qm = and i32 %i.qc, 7
  %i.qn = shl i32 %i.ql, %i.qm
  %i.qo = add i32 %i.qc, 1
  %i.qp = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.qo) ; 2 uses
  store i32 %i.qp, ptr %i.f, align 8, !tbaa !76
  %i.qq = xor i32 %i.qf, -1
  %.not382476 = icmp slt i32 %i.qn, 0
  %.0 = select i1 %.not382476, i32 %i.qq, i32 %i.qg ; 3 uses
  %i.qr = add i32 %.0, -32768
  %or.cond5 = icmp ult i32 %i.qr, -65536
  br i1 %or.cond5, label %.thread450, label %bb.bc

.thread450:                                       ; preds = %bb.bb
  %i.qs = load ptr, ptr %2, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qs, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %.14, i32 noundef %.0) #7
  br label %.thread464

bb.bc:                                            ; preds = %bb.bb
  %i.qt = trunc nsw i32 %.0 to i16
  %i.qu = sext i32 %.14 to i64
  %i.qv = getelementptr inbounds i8, ptr @ff_zigzag_direct, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !13
  %i.qx = zext i8 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.qx
  store i16 %i.qt, ptr %i.qy, align 2, !tbaa !17
  %i.qz = add nsw i32 %.14, 1                     ; 2 uses
  %i.ra = ashr i32 %i.qg, 2
  %i.rb = tail call i32 @llvm.smin.i32(i32 %i.ra, i32 4)
  %i.rc = icmp sgt i32 %.14, 62
  br i1 %i.rc, label %.thread427, label %.preheader485.preheader

bb.bd:                                            ; preds = %bb.ba
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !17
  %i.rf = sext i32 %.14 to i64
  %i.rg = getelementptr inbounds i8, ptr @ff_zigzag_direct, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !13
  %i.ri = zext i8 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ri
  store i16 %i.re, ptr %i.rj, align 2, !tbaa !17
  %i.rk = add nsw i32 %.14, 1                     ; 3 uses
  %i.rl = icmp sgt i32 %.14, 62
  br i1 %i.rl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  br label %.thread427.sink.split

bb.bf:                                            ; preds = %bb.bd
  %.not473 = icmp eq i8 %i.pc, 1
  br i1 %.not473, label %.thread461, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  %i.ro = load i8, ptr %i.rn, align 2, !tbaa !13
  %i.rp = zext i8 %i.ro to i32
  %i.rq = add nsw i32 %i.rk, %i.rp                ; 6 uses
  %i.rr = icmp sgt i32 %i.rq, 63
  br i1 %i.rr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pb, i64 9
  br label %.thread427.sink.split

bb.bi:                                            ; preds = %bb.bg
  %i.rt = icmp ugt i8 %i.pc, 2
  br i1 %i.rt, label %bb.bj, label %.thread461

bb.bj:                                            ; preds = %bb.bi
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pb, i64 6
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !17
  %i.rw = sext i32 %i.rq to i64
  %i.rx = getelementptr inbounds i8, ptr @ff_zigzag_direct, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !13
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.rz
  store i16 %i.rv, ptr %i.sa, align 2, !tbaa !17
  %i.sb = add nsw i32 %i.rq, 1                    ; 2 uses
  %i.sc = icmp eq i32 %i.rq, 63
  br i1 %i.sc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pb, i64 10
  %i.se = load i8, ptr %i.sd, align 2, !tbaa !13
  %i.sf = zext i8 %i.se to i32
  %i.sg = add i32 %i.on, %i.sf
  %i.sh = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.sg)
  store i32 %i.sh, ptr %i.f, align 8, !tbaa !76
  br label %.thread464

bb.bl:                                            ; preds = %bb.bj
  %.not474 = icmp eq i8 %i.pc, 3
  br i1 %.not474, label %.thread461, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.si = getelementptr inbounds nuw i8, ptr %i.pb, i64 3
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !13
  %i.sk = zext i8 %i.sj to i32
  %i.sl = add nsw i32 %i.sb, %i.sk                ; 3 uses
  %i.sm = icmp sgt i32 %i.sl, 63
  br i1 %i.sm, label %bb.bn, label %.thread461

bb.bn:                                            ; preds = %bb.bm
  %i.sn = getelementptr inbounds nuw i8, ptr %i.pb, i64 11
  br label %.thread427.sink.split

.thread461:                                       ; preds = %bb.bf, %bb.bi, %bb.bm, %bb.bl
  %.18 = phi i32 [ %i.sl, %bb.bm ], [ %i.sb, %bb.bl ], [ %i.rq, %bb.bi ], [ %i.rk, %bb.bf ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.pb, i64 11
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !13
  %i.sq = zext i8 %i.sp to i32
  %i.sr = add i32 %i.on, %i.sq
  %i.ss = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.sr) ; 3 uses
  store i32 %i.ss, ptr %i.f, align 8, !tbaa !76
  %i.st = getelementptr inbounds nuw i8, ptr %i.pb, i64 1
  %i.su = load i8, ptr %i.st, align 1             ; 2 uses
  %i.sv = and i8 %i.su, 3
  %i.sw = zext nneg i8 %i.sv to i32               ; 2 uses
  %i.sx = lshr i8 %i.su, 5
  %i.sy = zext nneg i8 %i.sx to i32               ; 2 uses
  %i.sz = and i8 %i.pc, 1
  %.not379 = icmp eq i8 %i.sz, 0
  br i1 %.not379, label %bb.ba, label %.preheader485.preheader

.thread427.sink.split:                            ; preds = %bb.n, %bb.t, %bb.ac, %bb.af, %bb.al, %bb.aq, %bb.aw, %bb.be, %bb.bh, %bb.bn
  %.sink780.in = phi ptr [ %i.sn, %bb.bn ], [ %i.rs, %bb.bh ], [ %i.rm, %bb.be ], [ %i.nl, %bb.aw ], [ %i.mq, %bb.aq ], [ %i.kg, %bb.al ], [ %i.jl, %bb.af ], [ %i.jf, %bb.ac ], [ %i.fb, %bb.t ], [ %i.ec, %bb.n ]
  %.lcssa725.sink = phi i32 [ %i.on, %bb.bn ], [ %i.on, %bb.bh ], [ %i.on, %bb.be ], [ %i.kr, %bb.aw ], [ %i.kr, %bb.aq ], [ %.val404, %bb.al ], [ %.val404, %bb.af ], [ %.val404, %bb.ac ], [ %.val406, %bb.t ], [ %.val406, %bb.n ]
  %.19.ph = phi i32 [ %i.sl, %bb.bn ], [ %i.rq, %bb.bh ], [ %i.rk, %bb.be ], [ %i.nj, %bb.aw ], [ %i.mo, %bb.aq ], [ %i.ke, %bb.al ], [ %i.jj, %bb.af ], [ %i.iz, %bb.ac ], [ %i.ez, %bb.t ], [ %i.ea, %bb.n ]
  %.sink780 = load i8, ptr %.sink780.in, align 1, !tbaa !13
  %i.ta = zext i8 %.sink780 to i32
  %i.tb = add i32 %.lcssa725.sink, %i.ta
  %i.tc = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.tb)
  store i32 %i.tc, ptr %i.f, align 8, !tbaa !76
  br label %.thread427

.thread427:                                       ; preds = %.thread427.sink.split, %bb.bc, %bb.an, %bb.aa, %bb.l
  %.19 = phi i32 [ %i.mh, %bb.an ], [ %i.qz, %bb.bc ], [ %i.in, %bb.aa ], [ %i.dt, %bb.l ], [ %.19.ph, %.thread427.sink.split ] ; 2 uses
  %i.td = icmp samesign ugt i32 %.19, 64
  br i1 %i.td, label %bb.bo, label %.thread464

bb.bo:                                            ; preds = %.thread427
  %i.te = load ptr, ptr %2, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.te, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %.19) #7
  br label %.thread464

.thread464:                                       ; preds = %bb.q, %bb.w, %bb.ai, %bb.az, %bb.at, %bb.bk, %.thread450, %.thread436, %.thread423, %.thread411, %bb.i, %.thread427, %bb.bo
  %.8320 = phi i32 [ -1094995529, %.thread411 ], [ -1094995529, %.thread423 ], [ -1094995529, %.thread436 ], [ -1094995529, %.thread450 ], [ -1094995529, %bb.bo ], [ -1094995529, %bb.i ], [ 0, %.thread427 ], [ 0, %bb.bk ], [ 0, %bb.at ], [ 0, %bb.az ], [ 0, %bb.ai ], [ 0, %bb.w ], [ 0, %bb.q ]
  ret i32 %.8320
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!"APVSingleVLCLUTEntry", !9, i64 0, !5, i64 2, !5, i64 3}
!11 = !{!10, !5, i64 2}
!12 = !{!10, !9, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!10, !5, i64 3}
!15 = !{!"APVMultiVLCLUTEntry", !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 8}
!16 = !{!15, !5, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !47}
!19 = distinct !{!19, !47}
!20 = distinct !{!20, !47}
!21 = distinct !{!21, !47}
!22 = distinct !{!22, i1 true, !"apv_read_vlc"}
!23 = distinct !{!23, !22, !"apv_read_vlc: argument 1"}
!24 = distinct !{!24, !22, !"apv_read_vlc: argument 0"}
!25 = distinct !{!25, i1 true, !"apv_read_vlc"}
!26 = distinct !{!26, !25, !"apv_read_vlc: argument 1"}
!27 = distinct !{!27, !25, !"apv_read_vlc: argument 0"}
!28 = distinct !{!28, i1 true, !"apv_read_vlc"}
!29 = distinct !{!29, !28, !"apv_read_vlc: argument 1:It1"}
!30 = distinct !{!30, !28, !"apv_read_vlc: argument 0:It1"}
!31 = distinct !{!31, i1 true, !"apv_read_vlc"}
!32 = distinct !{!32, !31, !"apv_read_vlc: argument 1:It1"}
!33 = distinct !{!33, !31, !"apv_read_vlc: argument 0:It1"}
!34 = distinct !{!34, i1 true, !"apv_read_vlc"}
!35 = distinct !{!35, !34, !"apv_read_vlc: argument 1"}
!36 = distinct !{!36, !34, !"apv_read_vlc: argument 0"}
!37 = distinct !{!37, i1 true, !"apv_read_vlc"}
!38 = distinct !{!38, !37, !"apv_read_vlc: argument 1"}
!39 = distinct !{!39, !37, !"apv_read_vlc: argument 0"}
!40 = distinct !{!40, i1 true, !"apv_read_vlc"}
!41 = distinct !{!41, !40, !"apv_read_vlc: argument 1:It1"}
!42 = distinct !{!42, !40, !"apv_read_vlc: argument 0:It1"}
!43 = distinct !{!43, i1 true, !"apv_read_vlc"}
!44 = distinct !{!44, !43, !"apv_read_vlc: argument 1:It1"}
!45 = distinct !{!45, !43, !"apv_read_vlc: argument 0:It1"}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!23}
!49 = !{!24, !23}
!50 = !{!26}
!51 = !{!27, !26}
!52 = !{!29}
!53 = !{!30, !29}
!54 = !{!32}
!55 = !{!33, !32}
!56 = !{!35}
!57 = !{!36, !35}
!58 = !{!38}
!59 = !{!39, !38}
!60 = !{!41}
!61 = !{!42, !41}
!62 = !{!44}
!63 = !{!45, !44}
!64 = distinct !{!64, i1 true, !"apv_read_vlc"}
!65 = distinct !{!65, !64, !"apv_read_vlc: argument 1"}
!66 = distinct !{!66, !64, !"apv_read_vlc: argument 0"}
!67 = !{!"any pointer", !5, i64 0}
!68 = !{!"p1 _ZTS9APVVLCLUT", !67, i64 0}
!69 = !{!"APVEntropyState", !67, i64 0, !68, i64 8, !9, i64 16, !5, i64 18, !5, i64 19}
!70 = !{!69, !68, i64 8}
!71 = !{!69, !5, i64 18}
!72 = !{!65}
!73 = !{!"p1 omnipotent char", !67, i64 0}
!74 = !{!"GetBitContext", !73, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!75 = !{!74, !73, i64 0}
!76 = !{!74, !6, i64 8}
!77 = !{!74, !6, i64 16}
!78 = !{!66, !65}
!79 = !{!69, !9, i64 16}
!80 = !{!69, !67, i64 0}
!81 = !{!69, !5, i64 19}
end_hunk_0
