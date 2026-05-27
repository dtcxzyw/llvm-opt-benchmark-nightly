inline.NumInlined: 37
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4absl12lts_2024011612crc_internal5CRC32D0Ev = comdat any

$_ZTIN4absl12lts_2024011612crc_internal7CRCImplE = comdat any

$_ZTSN4absl12lts_2024011612crc_internal7CRCImplE = comdat any

@_ZTVN4absl12lts_2024011612crc_internal3CRCE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2024011612crc_internal3CRCE, ptr @_ZN4absl12lts_2024011612crc_internal3CRCD1Ev, ptr @_ZN4absl12lts_2024011612crc_internal3CRCD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZZN4absl12lts_2024011612crc_internal3CRC6Crc32cEvE9singleton = internal unnamed_addr global ptr null, align 8
@_ZGVZN4absl12lts_2024011612crc_internal3CRC6Crc32cEvE9singleton = internal global i64 0, align 8
@_ZTVN4absl12lts_2024011612crc_internal5CRC32E = unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2024011612crc_internal5CRC32E, ptr @_ZN4absl12lts_2024011612crc_internal3CRCD2Ev, ptr @_ZN4absl12lts_2024011612crc_internal5CRC32D0Ev, ptr @_ZNK4absl12lts_2024011612crc_internal5CRC326ExtendEPjPKvm, ptr @_ZNK4absl12lts_2024011612crc_internal5CRC3214ExtendByZeroesEPjm, ptr @_ZNK4absl12lts_2024011612crc_internal5CRC3216UnextendByZeroesEPjm, ptr @_ZNK4absl12lts_2024011612crc_internal5CRC328ScrambleEPj, ptr @_ZNK4absl12lts_2024011612crc_internal5CRC3210UnscrambleEPj, ptr @_ZN4absl12lts_2024011612crc_internal5CRC3210InitTablesEv] }, align 8
@_ZTIN4absl12lts_2024011612crc_internal5CRC32E = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal5CRC32E, ptr @_ZTIN4absl12lts_2024011612crc_internal7CRCImplE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2024011612crc_internal5CRC32E = constant [42 x i8] c"N4absl12lts_2024011612crc_internal5CRC32E\00", align 1
@_ZTIN4absl12lts_2024011612crc_internal7CRCImplE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal7CRCImplE, ptr @_ZTIN4absl12lts_2024011612crc_internal3CRCE }, comdat, align 8
@_ZTSN4absl12lts_2024011612crc_internal7CRCImplE = linkonce_odr constant [44 x i8] c"N4absl12lts_2024011612crc_internal7CRCImplE\00", comdat, align 1
@_ZTIN4absl12lts_2024011612crc_internal3CRCE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2024011612crc_internal3CRCE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2024011612crc_internal3CRCE = constant [40 x i8] c"N4absl12lts_2024011612crc_internal3CRCE\00", align 1

@_ZN4absl12lts_2024011612crc_internal3CRCD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011612crc_internal3CRCD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2024011612crc_internal7CRCImpl13FillWordTableEjjiPA256_j(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not57 = icmp eq i32 %2, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64
  %i.b = and i32 %1, 1
  %.not53.1 = icmp eq i32 %i.b, 0
  %i.c = lshr i32 %1, 1
  %i.d = xor i32 %i.c, %0
  %i.e = lshr exact i32 %1, 1
  %. = select i1 %.not53.1, i32 %i.e, i32 %i.d    ; 4 uses
  %i.f = and i32 %., 1
  %.not53.2 = icmp eq i32 %i.f, 0
  %i.g = lshr i32 %., 1
  %i.h = xor i32 %i.g, %0
  %i.i = lshr exact i32 %., 1
  %.sink123 = select i1 %.not53.2, i32 %i.i, i32 %i.h ; 4 uses
  %i.j = and i32 %.sink123, 1
  %.not53.3 = icmp eq i32 %i.j, 0
  %i.k = lshr i32 %.sink123, 1
  %i.l = xor i32 %i.k, %0
  %i.m = lshr exact i32 %.sink123, 1
  %.sink125 = select i1 %.not53.3, i32 %i.m, i32 %i.l ; 4 uses
  %i.n = and i32 %.sink125, 1
  %.not53.4 = icmp eq i32 %i.n, 0
  %i.o = lshr i32 %.sink125, 1
  %i.p = xor i32 %i.o, %0
  %i.q = lshr exact i32 %.sink125, 1
  %.sink127 = select i1 %.not53.4, i32 %i.q, i32 %i.p ; 4 uses
  %i.r = and i32 %.sink127, 1
  %.not53.5 = icmp eq i32 %i.r, 0
  %i.s = lshr i32 %.sink127, 1
  %i.t = xor i32 %i.s, %0
  %i.u = lshr exact i32 %.sink127, 1
  %.sink129 = select i1 %.not53.5, i32 %i.u, i32 %i.t ; 4 uses
  %i.v = and i32 %.sink129, 1
  %.not53.6 = icmp eq i32 %i.v, 0
  %i.w = lshr i32 %.sink129, 1
  %i.x = xor i32 %i.w, %0
  %i.y = lshr exact i32 %.sink129, 1
  %.sink131 = select i1 %.not53.6, i32 %i.y, i32 %i.x ; 5 uses
  %i.z = and i32 %.sink131, 1
  %.not53.7 = icmp eq i32 %i.z, 0                 ; 2 uses
  %i.aa = lshr exact i32 %.sink131, 1             ; 2 uses
  %i.ab = lshr i32 %.sink131, 1
  %i.ac = xor i32 %i.ab, %0                       ; 2 uses
  %.sink133 = select i1 %.not53.7, i32 %i.aa, i32 %i.ac
  %.pre73 = select i1 %.not53.7, i32 %i.aa, i32 %i.ac
  br label %.lr.ph

._crit_edge:                                      ; preds = %iter.check155, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %iter.check155
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %iter.check155 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [1024 x i8], ptr %3, i64 %indvars.iv ; 135 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !3
  %i.ae = icmp eq i64 %indvars.iv, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 512 ; 14 uses
  br i1 %i.ae, label %.split.2, label %.split.us.preheader

.split.us.preheader:                              ; preds = %.lr.ph
  %i.ag = getelementptr i8, ptr %i.ad, i64 -1020
  %.046.us = load i32, ptr %i.ag, align 4, !tbaa !3 ; 2 uses
  %i.ah = and i32 %.046.us, 1
  %.not53.us = icmp eq i32 %i.ah, 0
  %i.ai = lshr i32 %.046.us, 1
  %i.aj = select i1 %.not53.us, i32 0, i32 %0
  %.sink = xor i32 %i.ai, %i.aj                   ; 4 uses
  store i32 %.sink, ptr %i.af, align 4, !tbaa !3
  %i.ak = and i32 %.sink, 1
  %.not53.us.1 = icmp eq i32 %i.ak, 0
  %i.al = lshr exact i32 %.sink, 1
  %i.am = lshr i32 %.sink, 1
  %i.an = xor i32 %i.am, %0
  %.sink62 = select i1 %.not53.us.1, i32 %i.al, i32 %i.an ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  store i32 %.sink62, ptr %i.ao, align 4, !tbaa !3
  %i.ap = and i32 %.sink62, 1
  %.not53.us.2 = icmp eq i32 %i.ap, 0
  %i.aq = lshr exact i32 %.sink62, 1
  %i.ar = lshr i32 %.sink62, 1
  %i.as = xor i32 %i.ar, %0
  %.sink63 = select i1 %.not53.us.2, i32 %i.aq, i32 %i.as ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i32 %.sink63, ptr %i.at, align 4, !tbaa !3
  %i.au = and i32 %.sink63, 1
  %.not53.us.3 = icmp eq i32 %i.au, 0
  %i.av = lshr exact i32 %.sink63, 1
  %i.aw = lshr i32 %.sink63, 1
  %i.ax = xor i32 %i.aw, %0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sink64 = select i1 %.not53.us.3, i32 %i.av, i32 %i.ax ; 5 uses
  store i32 %.sink64, ptr %i.ay, align 4, !tbaa !3
  %i.bc = and i32 %.sink64, 1
  %.not53.us.4 = icmp eq i32 %i.bc, 0
  %i.bd = lshr exact i32 %.sink64, 1
  %i.be = lshr i32 %.sink64, 1
  %i.bf = xor i32 %i.be, %0
  %.sink65 = select i1 %.not53.us.4, i32 %i.bd, i32 %i.bf ; 5 uses
  store i32 %.sink65, ptr %i.az, align 4, !tbaa !3
  %i.bg = and i32 %.sink65, 1
  %.not53.us.5 = icmp eq i32 %i.bg, 0
  %i.bh = lshr exact i32 %.sink65, 1
  %i.bi = lshr i32 %.sink65, 1
  %i.bj = xor i32 %i.bi, %0
  %.sink66 = select i1 %.not53.us.5, i32 %i.bh, i32 %i.bj ; 5 uses
  store i32 %.sink66, ptr %i.ba, align 4, !tbaa !3
  %i.bk = and i32 %.sink66, 1
  %.not53.us.6 = icmp eq i32 %i.bk, 0
  %i.bl = lshr exact i32 %.sink66, 1
  %i.bm = lshr i32 %.sink66, 1
  %i.bn = xor i32 %i.bm, %0
  %.sink67 = select i1 %.not53.us.6, i32 %i.bl, i32 %i.bn ; 5 uses
  store i32 %.sink67, ptr %i.bb, align 4, !tbaa !3
  %i.bo = and i32 %.sink67, 1
  %.not53.us.7 = icmp eq i32 %i.bo, 0
  %i.bp = lshr exact i32 %.sink67, 1
  %i.bq = lshr i32 %.sink67, 1
  %i.br = xor i32 %i.bq, %0
  %.sink68 = select i1 %.not53.us.7, i32 %i.bp, i32 %i.br ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %.sink68, ptr %i.bs, align 4, !tbaa !3
  br label %iter.check155

iter.check155:                                    ; preds = %.split.us.preheader, %.split.2
  %i.bt = phi i32 [ %.sink64, %.split.us.preheader ], [ %.pre95, %.split.2 ] ; 12 uses
  %i.bu = phi i32 [ %.sink65, %.split.us.preheader ], [ %.pre81, %.split.2 ] ; 8 uses
  %i.bv = phi i32 [ %.sink66, %.split.us.preheader ], [ %.pre75, %.split.2 ] ; 4 uses
  %i.bw = phi i32 [ %.sink68, %.split.us.preheader ], [ %.pre73, %.split.2 ] ; 3 uses
  %i.bx = phi i32 [ %.sink67, %.split.us.preheader ], [ %.sink131, %.split.2 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %4 = insertelement <4 x i32> poison, i32 %i.bw, i64 0 ; 2 uses
  %5 = insertelement <4 x i32> %4, i32 %i.bx, i64 1
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %7 = insertelement <4 x i32> %4, i32 %i.bv, i64 1
  %8 = insertelement <4 x i32> %7, i32 %i.bu, i64 3
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %10 = xor <4 x i32> %6, %9                      ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %11 = extractelement <4 x i32> %10, i64 0       ; 3 uses
  store i32 %11, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %12 = extractelement <4 x i32> %10, i64 1       ; 3 uses
  store i32 %12, ptr %i.cc, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %13 = extractelement <4 x i32> %10, i64 2       ; 3 uses
  store i32 %13, ptr %i.cd, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %15 = extractelement <4 x i32> %10, i64 3       ; 2 uses
  store i32 %15, ptr %14, align 4, !tbaa !3
  %i.cg = xor i32 %i.bx, %i.bu                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !3
  %i.ci = xor i32 %11, %i.bu                      ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 76
  %i.cs = xor i32 %i.bv, %i.bt                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.cy = xor i32 %15, %i.bt                      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 100
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = xor i32 %i.cg, %i.bt                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i32 %i.da, ptr %i.db, align 4, !tbaa !3
  %i.dc = xor i32 %i.ci, %i.bt                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 108
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 116
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 124
  %i.di = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.dj = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 132
  %i.dl = load i32, ptr %i.by, align 4, !tbaa !3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.dn = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.do = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.dp = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %i.dq = insertelement <8 x i32> %i.dp, i32 %i.dn, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ad, i64 172
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.du = load i32, ptr %i.di, align 4, !tbaa !3  ; 15 uses
  %i.dv = load i32, ptr %i.co, align 4, !tbaa !3  ; 3 uses
  %16 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %17 = insertelement <4 x i32> %16, i32 %i.dv, i64 0
  %18 = insertelement <4 x i32> %17, i32 %i.bw, i64 1
  %19 = insertelement <4 x i32> %18, i32 %i.bx, i64 2
  %20 = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.bt, i64 1
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %22 = xor <4 x i32> %19, %21                    ; 3 uses
  %i.dw = xor i32 %i.bw, %i.bt
  %i.dx = xor i32 %13, %i.bu                      ; 3 uses
  %i.dy = xor i32 %12, %i.bu                      ; 3 uses
  %i.dz = xor i32 %i.bv, %i.bu                    ; 3 uses
  store i32 %i.dz, ptr %i.ck, align 4, !tbaa !3
  store i32 %i.dy, ptr %i.cl, align 4, !tbaa !3
  store i32 %i.dx, ptr %i.cm, align 4, !tbaa !3
  store i32 %i.dw, ptr %i.cp, align 4, !tbaa !3
  %23 = extractelement <4 x i32> %22, i64 2
  store i32 %23, ptr %i.cq, align 4, !tbaa !3
  %24 = extractelement <4 x i32> %22, i64 3
  store i32 %24, ptr %i.cr, align 4, !tbaa !3
  %i.ea = xor i32 %i.dz, %i.bt                    ; 2 uses
  store i32 %i.ea, ptr %i.de, align 4, !tbaa !3
  %i.eb = xor i32 %i.dy, %i.bt                    ; 2 uses
  store i32 %i.eb, ptr %i.df, align 4, !tbaa !3
  %i.ec = xor i32 %i.dx, %i.dv                    ; 2 uses
  store i32 %i.ec, ptr %i.dg, align 4, !tbaa !3
  %25 = xor i32 %i.dj, %i.du
  store i32 %25, ptr %i.dk, align 4, !tbaa !3
  %i.ed = insertelement <8 x i32> %i.dq, i32 %i.du, i64 2 ; 2 uses
  %i.ee = insertelement <8 x i32> %i.ed, i32 %i.do, i64 3
  %26 = shufflevector <4 x i32> %10, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <8 x i32> %i.ee, <8 x i32> %26, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ef = shufflevector <8 x i32> %i.ed, <8 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %i.eg = xor i32 %i.cg, %i.du
  store i32 %i.eg, ptr %i.dr, align 4, !tbaa !3
  %i.eh = xor i32 %i.ci, %i.du
  store i32 %i.eh, ptr %i.ds, align 4, !tbaa !3
  %i.ei = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %i.ej = insertelement <8 x i32> %i.ei, i32 %i.dy, i64 1
  %i.ek = insertelement <8 x i32> %i.ej, i32 %i.dx, i64 2
  %i.el = insertelement <8 x i32> %i.ek, i32 %i.du, i64 3
  %28 = shufflevector <4 x i32> %22, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <8 x i32> %i.el, <8 x i32> %28, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.em = insertelement <8 x i32> poison, i32 %i.du, i64 0
  %i.en = xor i32 %i.cs, %i.du
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 212
  %i.eq = xor i32 %11, %i.bv                      ; 4 uses
  %i.er = xor i32 %i.bu, %i.bt                    ; 2 uses
  %i.es = xor i32 %i.eq, %i.bt                    ; 2 uses
  %i.et = xor i32 %13, %i.bt                      ; 2 uses
  %i.eu = xor i32 %12, %i.bt                      ; 2 uses
  store i32 %i.eu, ptr %i.cu, align 4, !tbaa !3
  store i32 %i.et, ptr %i.cv, align 4, !tbaa !3
  store i32 %i.er, ptr %i.cx, align 4, !tbaa !3
  store i32 %i.eq, ptr %i.ce, align 4, !tbaa !3
  store i32 %i.es, ptr %i.cw, align 4, !tbaa !3
  %i.ev = xor i32 %i.eq, %i.bu                    ; 3 uses
  store i32 %i.ev, ptr %i.cn, align 4, !tbaa !3
  %i.ew = xor i32 %i.ev, %i.dv                    ; 2 uses
  store i32 %i.ew, ptr %i.dh, align 4, !tbaa !3
  %i.ex = insertelement <2 x i32> %i.ef, i32 %i.eq, i64 0
  %30 = shufflevector <2 x i32> %i.ex, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1>
  %31 = xor <8 x i32> %27, %30
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 6, i32 2, i32 3, i32 7>
  store <8 x i32> %32, ptr %i.dm, align 4, !tbaa !3
  %i.ey = insertelement <8 x i32> %i.em, i32 %i.ev, i64 1
  %i.ez = shufflevector <8 x i32> %i.ey, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0>
  %i.fa = xor <8 x i32> %29, %i.ez
  store <8 x i32> %i.fa, ptr %i.dt, align 4, !tbaa !3
  %i.fb = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.et, i64 1
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.es, i64 2
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.er, i64 3
  %i.ff = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fh = xor <4 x i32> %i.fe, %i.fg
  store <4 x i32> %i.fh, ptr %i.ep, align 4, !tbaa !3
  %i.fi = xor i32 %i.cy, %i.du
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 228
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = xor i32 %i.da, %i.du
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !3
  %i.fm = xor i32 %i.dc, %i.du
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ad, i64 236
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !3
  %i.fo = xor i32 %i.ea, %i.du
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !3
  %i.fq = xor i32 %i.eb, %i.du
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ad, i64 244
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = xor i32 %i.ec, %i.du
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !3
  %i.fu = xor i32 %i.ew, %i.du
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ad, i64 252
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ad, i64 256 ; 8 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %broadcast.splatinsert150 = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat151 = shufflevector <8 x i32> %broadcast.splatinsert150, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fy = getelementptr i8, ptr %i.ad, i64 260
  %i.fz = getelementptr i8, ptr %i.ad, i64 4
  %i.ga = getelementptr i8, ptr %i.ad, i64 36
  %wide.load148 = load <8 x i32>, ptr %i.fz, align 4, !tbaa !3
  %wide.load149 = load <8 x i32>, ptr %i.ga, align 4, !tbaa !3
  %i.gb = xor <8 x i32> %wide.load148, %broadcast.splat151
  %i.gc = xor <8 x i32> %wide.load149, %broadcast.splat151
  %i.gd = getelementptr i8, ptr %i.ad, i64 292
  store <8 x i32> %i.gb, ptr %i.fy, align 4, !tbaa !3
  store <8 x i32> %i.gc, ptr %i.gd, align 4, !tbaa !3
  %i.ge = load i32, ptr %i.fw, align 4, !tbaa !3
  %broadcast.splatinsert150.1 = insertelement <8 x i32> poison, i32 %i.ge, i64 0
  %broadcast.splat151.1 = shufflevector <8 x i32> %broadcast.splatinsert150.1, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ad, i64 324
  %i.gg = getelementptr i8, ptr %i.ad, i64 68
  %i.gh = getelementptr i8, ptr %i.ad, i64 100
  %wide.load148.1 = load <8 x i32>, ptr %i.gg, align 4, !tbaa !3
  %wide.load149.1 = load <8 x i32>, ptr %i.gh, align 4, !tbaa !3
  %i.gi = xor <8 x i32> %wide.load148.1, %broadcast.splat151.1
  %i.gj = xor <8 x i32> %wide.load149.1, %broadcast.splat151.1
  %i.gk = getelementptr i8, ptr %i.ad, i64 356
  store <8 x i32> %i.gi, ptr %i.gf, align 4, !tbaa !3
  store <8 x i32> %i.gj, ptr %i.gk, align 4, !tbaa !3
  %i.gl = load i32, ptr %i.fw, align 4, !tbaa !3
  %broadcast.splatinsert150.2 = insertelement <8 x i32> poison, i32 %i.gl, i64 0
  %broadcast.splat151.2 = shufflevector <8 x i32> %broadcast.splatinsert150.2, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gm = getelementptr i8, ptr %i.ad, i64 388
  %i.gn = getelementptr i8, ptr %i.ad, i64 132
  %i.go = getelementptr i8, ptr %i.ad, i64 164
  %wide.load148.2 = load <8 x i32>, ptr %i.gn, align 4, !tbaa !3
  %wide.load149.2 = load <8 x i32>, ptr %i.go, align 4, !tbaa !3
  %i.gp = xor <8 x i32> %wide.load148.2, %broadcast.splat151.2
  %i.gq = xor <8 x i32> %wide.load149.2, %broadcast.splat151.2
  %i.gr = getelementptr i8, ptr %i.ad, i64 420
  store <8 x i32> %i.gp, ptr %i.gm, align 4, !tbaa !3
  store <8 x i32> %i.gq, ptr %i.gr, align 4, !tbaa !3
  %i.gs = load i32, ptr %i.fw, align 4, !tbaa !3
  %broadcast.splatinsert162 = insertelement <4 x i32> poison, i32 %i.gs, i64 0
  %broadcast.splat163 = shufflevector <4 x i32> %broadcast.splatinsert162, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gt = getelementptr i8, ptr %i.ad, i64 452
  %i.gu = getelementptr i8, ptr %i.ad, i64 196
  %wide.load161 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !3
  %i.gv = xor <4 x i32> %wide.load161, %broadcast.splat163
  store <4 x i32> %i.gv, ptr %i.gt, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.fw, align 4, !tbaa !3
  %broadcast.splatinsert162.1 = insertelement <4 x i32> poison, i32 %i.gw, i64 0
  %broadcast.splat163.1 = shufflevector <4 x i32> %broadcast.splatinsert162.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gx = getelementptr i8, ptr %i.ad, i64 468
  %i.gy = getelementptr i8, ptr %i.ad, i64 212
  %wide.load161.1 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !3
  %i.gz = xor <4 x i32> %wide.load161.1, %broadcast.splat163.1
  store <4 x i32> %i.gz, ptr %i.gx, align 4, !tbaa !3
  %i.ha = load i32, ptr %i.fw, align 4, !tbaa !3
  %broadcast.splatinsert162.2 = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat163.2 = shufflevector <4 x i32> %broadcast.splatinsert162.2, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hb = getelementptr i8, ptr %i.ad, i64 484
  %i.hc = getelementptr i8, ptr %i.ad, i64 228
  %wide.load161.2 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !3
  %i.hd = xor <4 x i32> %wide.load161.2, %broadcast.splat163.2
  store <4 x i32> %i.hd, ptr %i.hb, align 4, !tbaa !3
  %i.he = load i32, ptr %i.fw, align 4, !tbaa !3  ; 2 uses
  %i.hf = getelementptr i8, ptr %i.ad, i64 244
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hh = xor i32 %i.hg, %i.he
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ad, i64 500
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !3
  %i.hj = getelementptr i8, ptr %i.ad, i64 248
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = xor i32 %i.hk, %i.he
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ad, i64 504
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !3
  %i.hn = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.ho = getelementptr i8, ptr %i.ad, i64 252
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = xor i32 %i.hp, %i.hn
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ad, i64 508
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !3
  %i.hs = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.hs, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ht = getelementptr i8, ptr %i.ad, i64 516
  %i.hu = getelementptr i8, ptr %i.ad, i64 4
  %i.hv = getelementptr i8, ptr %i.ad, i64 36
  %i.hw = getelementptr i8, ptr %i.ad, i64 68
  %i.hx = getelementptr i8, ptr %i.ad, i64 100
  %wide.load = load <8 x i32>, ptr %i.hu, align 4, !tbaa !3
  %wide.load135 = load <8 x i32>, ptr %i.hv, align 4, !tbaa !3
  %wide.load136 = load <8 x i32>, ptr %i.hw, align 4, !tbaa !3
  %wide.load137 = load <8 x i32>, ptr %i.hx, align 4, !tbaa !3
  %i.hy = xor <8 x i32> %wide.load, %broadcast.splat
  %i.hz = xor <8 x i32> %wide.load135, %broadcast.splat
  %i.ia = xor <8 x i32> %wide.load136, %broadcast.splat
  %i.ib = xor <8 x i32> %wide.load137, %broadcast.splat
  %i.ic = getelementptr i8, ptr %i.ad, i64 548
  %i.id = getelementptr i8, ptr %i.ad, i64 580
  %i.ie = getelementptr i8, ptr %i.ad, i64 612
  store <8 x i32> %i.hy, ptr %i.ht, align 4, !tbaa !3
  store <8 x i32> %i.hz, ptr %i.ic, align 4, !tbaa !3
  store <8 x i32> %i.ia, ptr %i.id, align 4, !tbaa !3
  store <8 x i32> %i.ib, ptr %i.ie, align 4, !tbaa !3
  %i.if = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert.1 = insertelement <8 x i32> poison, i32 %i.if, i64 0
  %broadcast.splat.1 = shufflevector <8 x i32> %broadcast.splatinsert.1, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ig = getelementptr i8, ptr %i.ad, i64 644
  %i.ih = getelementptr i8, ptr %i.ad, i64 132
  %i.ii = getelementptr i8, ptr %i.ad, i64 164
  %i.ij = getelementptr i8, ptr %i.ad, i64 196
  %i.ik = getelementptr i8, ptr %i.ad, i64 228
  %wide.load.1 = load <8 x i32>, ptr %i.ih, align 4, !tbaa !3
  %wide.load135.1 = load <8 x i32>, ptr %i.ii, align 4, !tbaa !3
  %wide.load136.1 = load <8 x i32>, ptr %i.ij, align 4, !tbaa !3
  %wide.load137.1 = load <8 x i32>, ptr %i.ik, align 4, !tbaa !3
  %i.il = xor <8 x i32> %wide.load.1, %broadcast.splat.1
  %i.im = xor <8 x i32> %wide.load135.1, %broadcast.splat.1
  %i.in = xor <8 x i32> %wide.load136.1, %broadcast.splat.1
  %i.io = xor <8 x i32> %wide.load137.1, %broadcast.splat.1
  %i.ip = getelementptr i8, ptr %i.ad, i64 676
  %i.iq = getelementptr i8, ptr %i.ad, i64 708
  %i.ir = getelementptr i8, ptr %i.ad, i64 740
  store <8 x i32> %i.il, ptr %i.ig, align 4, !tbaa !3
  store <8 x i32> %i.im, ptr %i.ip, align 4, !tbaa !3
  store <8 x i32> %i.in, ptr %i.iq, align 4, !tbaa !3
  store <8 x i32> %i.io, ptr %i.ir, align 4, !tbaa !3
  %i.is = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert.2 = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %broadcast.splat.2 = shufflevector <8 x i32> %broadcast.splatinsert.2, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.it = getelementptr i8, ptr %i.ad, i64 772
  %i.iu = getelementptr i8, ptr %i.ad, i64 260
  %i.iv = getelementptr i8, ptr %i.ad, i64 292
  %i.iw = getelementptr i8, ptr %i.ad, i64 324
  %i.ix = getelementptr i8, ptr %i.ad, i64 356
  %wide.load.2 = load <8 x i32>, ptr %i.iu, align 4, !tbaa !3
  %wide.load135.2 = load <8 x i32>, ptr %i.iv, align 4, !tbaa !3
  %wide.load136.2 = load <8 x i32>, ptr %i.iw, align 4, !tbaa !3
  %wide.load137.2 = load <8 x i32>, ptr %i.ix, align 4, !tbaa !3
  %i.iy = xor <8 x i32> %wide.load.2, %broadcast.splat.2
  %i.iz = xor <8 x i32> %wide.load135.2, %broadcast.splat.2
  %i.ja = xor <8 x i32> %wide.load136.2, %broadcast.splat.2
  %i.jb = xor <8 x i32> %wide.load137.2, %broadcast.splat.2
  %i.jc = getelementptr i8, ptr %i.ad, i64 804
  %i.jd = getelementptr i8, ptr %i.ad, i64 836
  %i.je = getelementptr i8, ptr %i.ad, i64 868
  store <8 x i32> %i.iy, ptr %i.it, align 4, !tbaa !3
  store <8 x i32> %i.iz, ptr %i.jc, align 4, !tbaa !3
  store <8 x i32> %i.ja, ptr %i.jd, align 4, !tbaa !3
  store <8 x i32> %i.jb, ptr %i.je, align 4, !tbaa !3
  %i.jf = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert140 = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %broadcast.splat141 = shufflevector <4 x i32> %broadcast.splatinsert140, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jg = getelementptr i8, ptr %i.ad, i64 900
  %i.jh = getelementptr i8, ptr %i.ad, i64 388
  %wide.load139 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !3
  %i.ji = xor <4 x i32> %wide.load139, %broadcast.splat141
  store <4 x i32> %i.ji, ptr %i.jg, align 4, !tbaa !3
  %i.jj = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert140.1 = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %broadcast.splat141.1 = shufflevector <4 x i32> %broadcast.splatinsert140.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jk = getelementptr i8, ptr %i.ad, i64 916
  %i.jl = getelementptr i8, ptr %i.ad, i64 404
  %wide.load139.1 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !3
  %i.jm = xor <4 x i32> %wide.load139.1, %broadcast.splat141.1
  store <4 x i32> %i.jm, ptr %i.jk, align 4, !tbaa !3
  %i.jn = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert140.2 = insertelement <4 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat141.2 = shufflevector <4 x i32> %broadcast.splatinsert140.2, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jo = getelementptr i8, ptr %i.ad, i64 932
  %i.jp = getelementptr i8, ptr %i.ad, i64 420
  %wide.load139.2 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !3
  %i.jq = xor <4 x i32> %wide.load139.2, %broadcast.splat141.2
  store <4 x i32> %i.jq, ptr %i.jo, align 4, !tbaa !3
  %i.jr = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert140.3 = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %broadcast.splat141.3 = shufflevector <4 x i32> %broadcast.splatinsert140.3, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.js = getelementptr i8, ptr %i.ad, i64 948
  %i.jt = getelementptr i8, ptr %i.ad, i64 436
  %wide.load139.3 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !3
  %i.ju = xor <4 x i32> %wide.load139.3, %broadcast.splat141.3
  store <4 x i32> %i.ju, ptr %i.js, align 4, !tbaa !3
  %i.jv = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert140.4 = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat141.4 = shufflevector <4 x i32> %broadcast.splatinsert140.4, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jw = getelementptr i8, ptr %i.ad, i64 964
  %i.jx = getelementptr i8, ptr %i.ad, i64 452
  %wide.load139.4 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !3
  %i.jy = xor <4 x i32> %wide.load139.4, %broadcast.splat141.4
  store <4 x i32> %i.jy, ptr %i.jw, align 4, !tbaa !3
  %i.jz = load i32, ptr %i.af, align 4, !tbaa !3
  %broadcast.splatinsert140.5 = insertelement <4 x i32> poison, i32 %i.jz, i64 0
  %broadcast.splat141.5 = shufflevector <4 x i32> %broadcast.splatinsert140.5, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ka = getelementptr i8, ptr %i.ad, i64 980
  %i.kb = getelementptr i8, ptr %i.ad, i64 468
  %wide.load139.5 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !3
  %i.kc = xor <4 x i32> %wide.load139.5, %broadcast.splat141.5
  store <4 x i32> %i.kc, ptr %i.ka, align 4, !tbaa !3
end_hunk_0
