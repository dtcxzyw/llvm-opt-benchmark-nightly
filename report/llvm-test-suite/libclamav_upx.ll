Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_upx?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.upx_inflate2b.magic = private unnamed_addr constant [4 x i32] [i32 264, i32 272, i32 213, i32 0], align 16
@__const.upx_inflate2d.magic = private unnamed_addr constant [3 x i32] [i32 284, i32 292, i32 0], align 4
@__const.upx_inflate2e.magic = private unnamed_addr constant [3 x i32] [i32 296, i32 304, i32 0], align 4
@.str = private unnamed_addr constant [39 x i8] c"UPX: bad magic - scanning for imports\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\8D\BE\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"UPX: wrong realstuff size\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"UPX: no luck - scanning for PE\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"UPX: no luck - brutally crafing a reasonable PE\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"UPX: malloc failed - giving up rebuild\0A\00", align 1
@.str.6 = private unnamed_addr constant [209 x i8] c"MZ\90\00\02\00\00\00\04\00\0F\00\FF\FF\00\00\B0\00\00\00\00\00\00\00@\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\0E\1F\B4\09\BA\0D\00\CD!\B4L\CD!This file was created by ClamAV for internal use and should not be run.\0D\0AClamAV - A GPL virus scanner - http://www.clamav.net\0D\0A$\00\00\00\00", align 1
@.str.7 = private unnamed_addr constant [289 x i8] c"PE\00\00L\01\01\00CLAM\00\00\00\00\00\00\00\00\E0\00\83\8F\0B\01\00\00\00\10\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\00@\00\00\10\00\00\00\02\00\00\01\00\00\00\00\00\00\00\03\00\0A\00\00\00\00\00\FF\FF\FF\FF\00\02\00\00\00\00\00\00\02\00\00\00\00\00\10\00\00\10\00\00\00\00\10\00\00\10\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00.clam01\00\FF\FF\FF\FF\00\10\00\00\FF\FF\FF\FF\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"UPX: PE structure added to uncompressed data\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"UPX: Sect %d out of bounds - giving up rebuild\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"UPX: wrong raw size - giving up rebuild\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"UPX: PE structure rebuilt from compressed file\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @upx_inflate2b(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3                       ; 7 uses
  %i.b = zext i32 %1 to i64                       ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0209 = phi i32 [ 0, %bb.a ], [ %.4213, %._crit_edge ]
  %.0207 = phi i32 [ 0, %bb.a ], [ %.5, %._crit_edge ]
  %.0108 = phi i32 [ -1, %bb.a ], [ %.1109, %._crit_edge ]
  %.0105 = phi i32 [ 0, %bb.a ], [ %i.fb, %._crit_edge ]
  %i.c = zext i32 %.0105 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.c, %bb.b ] ; 12 uses
  %.1210 = phi i32 [ %.5214, %bb.i ], [ %.0209, %bb.b ] ; 3 uses
  %.1208 = phi i32 [ %i.o, %bb.i ], [ %.0207, %bb.b ] ; 3 uses
  %i.d = shl i32 %.1210, 1
  %i.e = and i32 %.1210, 2147483647
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %doubleebx.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %doubleebx.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = zext i32 %.1208 to i64                   ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 4
  %.not28.i = icmp samesign ugt i64 %i.g, %i.b
  br i1 %.not28.i, label %doubleebx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.val.i = load i32, ptr %i.h, align 1           ; 2 uses
  %i.i = shl i32 %.val.i, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = add i32 %.1208, 4
  br label %doubleebx.exit

doubleebx.exit:                                   ; preds = %bb.c, %bb.f
  %.5214 = phi i32 [ %i.j, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %.6 = phi i32 [ %i.k, %bb.f ], [ %.1208, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ %.val.i, %bb.f ], [ %.1210, %bb.c ]
  %cond.not = icmp sgt i32 %.0.i, -1
  br i1 %cond.not, label %.preheader255, label %bb.g

.preheader255:                                    ; preds = %doubleebx.exit
  %i.l = trunc i64 %indvars.iv to i32             ; 4 uses
  br label %bb.j

bb.g:                                             ; preds = %doubleebx.exit
  %.not142 = icmp ult i32 %.6, %1
  br i1 %.not142, label %bb.h, label %doubleebx.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %3, align 4, !tbaa !7
  %i.n = zext i32 %i.m to i64
  %.not143 = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not143, label %bb.i, label %doubleebx.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw i32 %.6, 1
  %i.p = zext i32 %.6 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !8
  br label %bb.c, !llvm.loop !13

bb.j:                                             ; preds = %.preheader255, %doubleebx.exit160
  %.2211 = phi i32 [ %.9218, %doubleebx.exit160 ], [ %.5214, %.preheader255 ] ; 5 uses
  %.2 = phi i32 [ %.10, %doubleebx.exit160 ], [ %.6, %.preheader255 ] ; 5 uses
  %.0110 = phi i32 [ %i.am, %doubleebx.exit160 ], [ 1, %.preheader255 ] ; 2 uses
  %i.t = and i32 %.2211, 2147483647
  %.not.i149 = icmp eq i32 %i.t, 0
  br i1 %.not.i149, label %bb.k, label %doubleebx.exit154

bb.k:                                             ; preds = %bb.j
  br i1 %i.a, label %bb.l, label %doubleebx.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %.2 to i64                      ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 4
  %.not28.i152 = icmp samesign ugt i64 %i.v, %i.b
  br i1 %.not28.i152, label %doubleebx.exit.thread, label %doubleebx.exit154.thread

doubleebx.exit154:                                ; preds = %bb.j
  %i.w = shl i32 %.2211, 1
  %i.x = tail call i32 @llvm.fshl.i32(i32 %.0110, i32 %.2211, i32 1) ; 2 uses
  %i.y = shl i32 %.2211, 2
  %i.z = and i32 %.2211, 1073741823
  %.not.i155 = icmp eq i32 %i.z, 0
  br i1 %.not.i155, label %bb.m, label %doubleebx.exit160

doubleebx.exit154.thread:                         ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.val.i153 = load i32, ptr %i.aa, align 1       ; 2 uses
  %i.ab = shl i32 %.val.i153, 1
  %i.ac = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.ad = add i32 %.2, 4
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %.0110, i32 %.val.i153, i32 1)
  %i.af = shl i32 %i.ac, 1
  br label %doubleebx.exit160

bb.m:                                             ; preds = %doubleebx.exit154
  br i1 %i.a, label %bb.n, label %doubleebx.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = zext i32 %.2 to i64                     ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 4
  %.not28.i158 = icmp samesign ugt i64 %i.ah, %i.b
  br i1 %.not28.i158, label %doubleebx.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.val.i159 = load i32, ptr %i.ai, align 1       ; 2 uses
  %i.aj = shl i32 %.val.i159, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = add i32 %.2, 4
  br label %doubleebx.exit160

doubleebx.exit160:                                ; preds = %doubleebx.exit154.thread, %doubleebx.exit154, %bb.o
  %i.am = phi i32 [ %i.x, %bb.o ], [ %i.x, %doubleebx.exit154 ], [ %i.ae, %doubleebx.exit154.thread ] ; 3 uses
  %.9218 = phi i32 [ %i.ak, %bb.o ], [ %i.y, %doubleebx.exit154 ], [ %i.af, %doubleebx.exit154.thread ] ; 7 uses
  %.10 = phi i32 [ %i.al, %bb.o ], [ %.2, %doubleebx.exit154 ], [ %i.ad, %doubleebx.exit154.thread ] ; 5 uses
  %.0.i156 = phi i32 [ %.val.i159, %bb.o ], [ %i.w, %doubleebx.exit154 ], [ %i.ac, %doubleebx.exit154.thread ]
  %cond249 = icmp sgt i32 %.0.i156, -1
  br i1 %cond249, label %bb.j, label %bb.p

bb.p:                                             ; preds = %doubleebx.exit160
  %i.an = icmp sgt i32 %i.am, 2
  br i1 %i.an, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not134 = icmp ult i32 %.10, %1
  br i1 %.not134, label %bb.r, label %doubleebx.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ao = shl i32 %i.am, 8
  %i.ap = add i32 %i.ao, -768
  %i.aq = zext i32 %.10 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ap, %i.at            ; 2 uses
  %.not135 = icmp eq i32 %i.au, -1
  br i1 %.not135, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = add nuw i32 %.10, 1
  %i.aw = xor i32 %i.au, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.3 = phi i32 [ %i.av, %bb.s ], [ %.10, %bb.p ] ; 5 uses
  %.1109 = phi i32 [ %i.aw, %bb.s ], [ %.0108, %bb.p ] ; 5 uses
  %i.ax = and i32 %.9218, 2147483647
  %.not.i161 = icmp eq i32 %i.ax, 0
  br i1 %.not.i161, label %bb.u, label %doubleebx.exit166

bb.u:                                             ; preds = %bb.t
  br i1 %i.a, label %bb.v, label %doubleebx.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ay = zext i32 %.3 to i64                     ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 4
  %.not28.i164 = icmp samesign ugt i64 %i.az, %i.b
  br i1 %.not28.i164, label %doubleebx.exit.thread, label %doubleebx.exit166.thread

doubleebx.exit166:                                ; preds = %bb.t
  %i.ba = shl i32 %.9218, 1
  %i.bb = shl i32 %.9218, 2
  %i.bc = and i32 %.9218, 1073741823
  %.not.i167 = icmp eq i32 %i.bc, 0
  br i1 %.not.i167, label %bb.w, label %doubleebx.exit172

doubleebx.exit166.thread:                         ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %.val.i165 = load i32, ptr %i.bd, align 1       ; 2 uses
  %i.be = shl i32 %.val.i165, 1
  %i.bf = or disjoint i32 %i.be, 1                ; 2 uses
  %i.bg = add i32 %.3, 4
  %i.bh = shl i32 %i.bf, 1
  br label %doubleebx.exit172

bb.w:                                             ; preds = %doubleebx.exit166
  br i1 %i.a, label %bb.x, label %doubleebx.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bi = zext i32 %.3 to i64                     ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 4
  %.not28.i170 = icmp samesign ugt i64 %i.bj, %i.b
  br i1 %.not28.i170, label %doubleebx.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %.val.i171 = load i32, ptr %i.bk, align 1       ; 2 uses
  %i.bl = shl i32 %.val.i171, 1
  %i.bm = or disjoint i32 %i.bl, 1
  %i.bn = add i32 %.3, 4
  br label %doubleebx.exit172

doubleebx.exit172:                                ; preds = %doubleebx.exit166.thread, %doubleebx.exit166, %bb.y
  %.0.i162294 = phi i32 [ %.9218, %bb.y ], [ %.9218, %doubleebx.exit166 ], [ %.val.i165, %doubleebx.exit166.thread ]
  %.13222 = phi i32 [ %i.bm, %bb.y ], [ %i.bb, %doubleebx.exit166 ], [ %i.bh, %doubleebx.exit166.thread ] ; 2 uses
  %.14 = phi i32 [ %i.bn, %bb.y ], [ %.3, %doubleebx.exit166 ], [ %i.bg, %doubleebx.exit166.thread ] ; 2 uses
  %.0.i168 = phi i32 [ %.val.i171, %bb.y ], [ %i.ba, %doubleebx.exit166 ], [ %i.bf, %doubleebx.exit166.thread ]
  %i.bo = lshr i32 %.0.i168, 31
  %i.bp = lshr i32 %.0.i162294, 30
  %i.bq = and i32 %i.bp, 2
  %i.br = or disjoint i32 %i.bo, %i.bq            ; 2 uses
  %.not136 = icmp eq i32 %i.br, 0
  br i1 %.not136, label %.preheader254, label %bb.af

.preheader254:                                    ; preds = %doubleebx.exit172, %doubleebx.exit184
  %.3212 = phi i32 [ %.17226, %doubleebx.exit184 ], [ %.13222, %doubleebx.exit172 ] ; 5 uses
  %.4 = phi i32 [ %.18, %doubleebx.exit184 ], [ %.14, %doubleebx.exit172 ] ; 5 uses
  %.0106 = phi i32 [ %i.cl, %doubleebx.exit184 ], [ 1, %doubleebx.exit172 ] ; 2 uses
  %i.bs = and i32 %.3212, 2147483647
  %.not.i173 = icmp eq i32 %i.bs, 0
  br i1 %.not.i173, label %bb.z, label %doubleebx.exit178

bb.z:                                             ; preds = %.preheader254
  br i1 %i.a, label %bb.aa, label %doubleebx.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bt = zext i32 %.4 to i64                     ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, 4
  %.not28.i176 = icmp samesign ugt i64 %i.bu, %i.b
  br i1 %.not28.i176, label %doubleebx.exit.thread, label %doubleebx.exit178.thread

doubleebx.exit178:                                ; preds = %.preheader254
  %i.bv = shl i32 %.3212, 1
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %.0106, i32 %.3212, i32 1) ; 2 uses
  %i.bx = shl i32 %.3212, 2
  %i.by = and i32 %.3212, 1073741823
  %.not.i179 = icmp eq i32 %i.by, 0
  br i1 %.not.i179, label %bb.ab, label %doubleebx.exit184

doubleebx.exit178.thread:                         ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %.val.i177 = load i32, ptr %i.bz, align 1       ; 2 uses
  %i.ca = shl i32 %.val.i177, 1
  %i.cb = or disjoint i32 %i.ca, 1                ; 2 uses
  %i.cc = add i32 %.4, 4
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %.0106, i32 %.val.i177, i32 1)
  %i.ce = shl i32 %i.cb, 1
  br label %doubleebx.exit184

bb.ab:                                            ; preds = %doubleebx.exit178
  br i1 %i.a, label %bb.ac, label %doubleebx.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cf = zext i32 %.4 to i64                     ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, 4
  %.not28.i182 = icmp samesign ugt i64 %i.cg, %i.b
  br i1 %.not28.i182, label %doubleebx.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %.val.i183 = load i32, ptr %i.ch, align 1       ; 2 uses
  %i.ci = shl i32 %.val.i183, 1
  %i.cj = or disjoint i32 %i.ci, 1
  %i.ck = add i32 %.4, 4
  br label %doubleebx.exit184

doubleebx.exit184:                                ; preds = %doubleebx.exit178.thread, %doubleebx.exit178, %bb.ad
  %i.cl = phi i32 [ %i.bw, %bb.ad ], [ %i.bw, %doubleebx.exit178 ], [ %i.cd, %doubleebx.exit178.thread ] ; 2 uses
  %.17226 = phi i32 [ %i.cj, %bb.ad ], [ %i.bx, %doubleebx.exit178 ], [ %i.ce, %doubleebx.exit178.thread ] ; 2 uses
  %.18 = phi i32 [ %i.ck, %bb.ad ], [ %.4, %doubleebx.exit178 ], [ %i.cc, %doubleebx.exit178.thread ] ; 2 uses
  %.0.i180 = phi i32 [ %.val.i183, %bb.ad ], [ %i.bv, %doubleebx.exit178 ], [ %i.cb, %doubleebx.exit178.thread ]
  %cond250 = icmp sgt i32 %.0.i180, -1
  br i1 %cond250, label %.preheader254, label %bb.ae

bb.ae:                                            ; preds = %doubleebx.exit184
  %i.cm = add i32 %i.cl, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %doubleebx.exit172
  %.4213 = phi i32 [ %.17226, %bb.ae ], [ %.13222, %doubleebx.exit172 ]
  %.5 = phi i32 [ %.18, %bb.ae ], [ %.14, %doubleebx.exit172 ]
  %.1107 = phi i32 [ %i.cm, %bb.ae ], [ %i.br, %doubleebx.exit172 ]
  %i.cn = icmp ult i32 %.1109, -3328
  %i.co = zext i1 %i.cn to i32
  %spec.select = add i32 %.1107, %i.co            ; 7 uses
  %i.cp = add nuw i32 %spec.select, 1             ; 2 uses
  %i.cq = load i32, ptr %3, align 4, !tbaa !7     ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = icmp uge i32 %spec.select, %i.cq
  %or.cond144 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond144, label %doubleebx.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = sext i32 %.1109 to i64
  %i.cu = add nsw i64 %indvars.iv, %i.ct          ; 2 uses
  %.not138 = icmp slt i64 %i.cu, 0
  br i1 %.not138, label %doubleebx.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = zext i32 %i.cp to i64                   ; 9 uses
  %i.cw = zext i32 %i.cq to i64                   ; 2 uses
  %i.cx = add nuw nsw i64 %i.cu, %i.cv
  %.not139 = icmp samesign ugt i64 %i.cx, %i.cw
  %i.cy = add nuw nsw i64 %indvars.iv, %i.cv
  %.not141 = icmp samesign ugt i64 %i.cy, %i.cw
  %or.cond147 = select i1 %.not139, i1 true, i1 %.not141
  %i.cz = icmp sgt i32 %.1109, -1
  %or.cond148 = select i1 %or.cond147, i1 true, i1 %i.cz
  br i1 %or.cond148, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %i.da = add i32 %.1109, %i.l                    ; 7 uses
  %min.iters.check = icmp ult i32 %spec.select, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.db = xor i32 %i.l, -1
  %i.dc = icmp ugt i32 %spec.select, %i.db
  %i.dd = xor i32 %i.da, -1
  %i.de = icmp ugt i32 %spec.select, %i.dd
  %i.df = or i1 %i.dc, %i.de
  br i1 %i.df, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dg = and i64 %indvars.iv, 4294967295
  %i.dh = zext i32 %i.da to i64
  %i.di = sub nsw i64 %i.dh, %i.dg
  %diff.check = icmp ugt i64 %i.di, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check327 = icmp ult i32 %spec.select, 31
  br i1 %min.iters.check327, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dj = and i64 %i.cv, 28
  %n.vec = and i64 %i.cv, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dk = trunc nuw i64 %index to i32
  %i.dl = add i32 %i.da, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <16 x i8>, ptr %i.dn, align 1, !tbaa !8
  %wide.load328 = load <16 x i8>, ptr %i.do, align 1, !tbaa !8
  %i.dp = add nuw i64 %index, %indvars.iv
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <16 x i8> %wide.load, ptr %i.dr, align 1, !tbaa !8
  store <16 x i8> %wide.load328, ptr %i.ds, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec329 = and i64 %i.cv, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index330 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next332, %vec.epilog.vector.body ] ; 3 uses
  %i.du = trunc nuw i64 %index330 to i32
  %i.dv = add i32 %i.da, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw
  %wide.load331 = load <4 x i8>, ptr %i.dx, align 1, !tbaa !8
  %i.dy = add nuw i64 %index330, %indvars.iv
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dz
  store <4 x i8> %wide.load331, ptr %i.ea, align 1, !tbaa !8
  %index.next332 = add nuw i64 %index330, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next332, %n.vec329
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n333 = icmp eq i64 %n.vec329, %i.cv
  br i1 %cmp.n333, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv274.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec329, %vec.epilog.middle.block ] ; 5 uses
  %7 = zext i32 %spec.select to i64
  %xtraiter = and i64 %i.cv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ec = trunc nuw i64 %indvars.iv274.ph to i32
  %i.ed = add i32 %i.da, %i.ec
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8
  %i.eh = add nuw i64 %indvars.iv274.ph, %indvars.iv
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !8
  %indvars.iv.next275.prol = or disjoint i64 %indvars.iv274.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv274.unr = phi i64 [ %indvars.iv274.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next275.prol, %vec.epilog.scalar.ph.prol ]
  %i.ek = icmp eq i64 %indvars.iv274.ph, %7
  br i1 %i.ek, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.1, %vec.epilog.scalar.ph ], [ %indvars.iv274.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.el = trunc nuw i64 %indvars.iv274 to i32
  %i.em = add i32 %i.da, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8
  %i.eq = add nuw i64 %indvars.iv274, %indvars.iv
  %i.er = and i64 %i.eq, 4294967295
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er
  store i8 %i.ep, ptr %i.es, align 1, !tbaa !8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv.next275 to i32
  %i.eu = add i32 %i.da, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !8
  %i.ey = add nuw i64 %indvars.iv.next275, %indvars.iv
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez
  store i8 %i.ex, ptr %i.fa, align 1, !tbaa !8
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next275.1, %i.cv
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fb = add i32 %i.cp, %i.l
  br label %bb.b

bb.ai:                                            ; preds = %bb.r
  %i.fc = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2b.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.w, %bb.x, %bb.u, %bb.v, %bb.af, %bb.ag, %bb.ah, %bb.q, %bb.d, %bb.e, %bb.g, %bb.h, %bb.m, %bb.n, %bb.k, %bb.l, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.ai
  %.0111 = phi i32 [ %i.fc, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.m ], [ -1, %bb.d ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.ac ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.q ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.w ]
  ret i32 %.0111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pefromupx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.aq, label %.preheader381

.preheader381:                                    ; preds = %bb.a
  %i.d = load i32, ptr %7, align 4, !tbaa !7      ; 2 uses
  %.not391 = icmp eq i32 %i.d, 0
  %.pre = sub i32 %4, %6                          ; 3 uses
  br i1 %.not391, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader381
  %i.e = add i32 %1, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.f = phi i32 [ %i.d, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.g = phi i32 [ 1, %.lr.ph ], [ %i.s, %bb.e ]  ; 3 uses
  %i.h = add i32 %i.f, %.pre                      ; 3 uses
  %.not250 = icmp ugt i32 %i.h, %i.e
  br i1 %.not250, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -2
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = icmp eq i8 %i.l, -115
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.h, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = icmp eq i8 %i.q, -66
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = add i32 %i.g, 1                          ; 2 uses
  %i.t = zext i32 %i.g to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %.preheader381
  %.lcssa389 = phi i32 [ 1, %.preheader381 ], [ %i.s, %bb.e ] ; 4 uses
  %i.w = add i32 %.pre, 128                       ; 2 uses
  %i.x = add i32 %1, -8                           ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %.thread348

bb.f:                                             ; preds = %._crit_edge
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #6
  %i.ab = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ac = sub i32 %1, %.pre
  %i.ad = add i32 %i.ac, -136
  %i.ae = tail call ptr @cli_memstr(ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252394 = icmp eq ptr %i.ae, null
  br i1 %.not252394, label %.thread348, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.f, %bb.i
  %i.af = phi ptr [ %i.aw, %bb.i ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ah, -117
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph396
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = icmp eq i8 %i.ak, 7
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = zext i32 %4 to i64
  %i.ao = add i64 %i.ab, %i.an
  %reass.sub = sub i64 %i.am, %i.ao
  %i.ap = trunc i64 %reass.sub to i32
  %i.aq = add i32 %i.ap, 2
  %i.ar = add i32 %i.aq, %6
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %.lr.ph396
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %.neg = sub i64 %i.ab, %i.at
  %i.au = trunc i64 %.neg to i32
  %i.av = add i32 %i.x, %i.au
  %i.aw = tail call ptr @cli_memstr(ptr noundef nonnull %i.as, i32 noundef %i.av, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252 = icmp eq ptr %i.aw, null
  br i1 %.not252, label %.thread348, label %.lr.ph396, !llvm.loop !18

.loopexit:                                        ; preds = %bb.d, %bb.h
  %i.ax = phi i32 [ %.lcssa389, %bb.h ], [ %i.g, %bb.d ] ; 7 uses
  %.0334 = phi i32 [ %i.ar, %bb.h ], [ %i.f, %bb.d ] ; 8 uses
  %i.ay = icmp ne i32 %.0334, 0
  %i.az = icmp ugt i32 %1, 3
  %or.cond5 = and i1 %i.az, %i.ay
  br i1 %or.cond5, label %bb.j, label %.thread348

bb.j:                                             ; preds = %.loopexit
  %i.ba = zext i32 %4 to i64
  %i.bb = zext i32 %6 to i64
  %i.bc = sub nsw i64 %i.ba, %i.bb
  %i.bd = zext i32 %.0334 to i64
  %i.be = add nsw i64 %i.bc, %i.bd                ; 3 uses
  %.not253 = icmp slt i64 %i.be, 0
  %i.bf = zext i32 %1 to i64
  %i.bg = add nuw nsw i64 %i.be, 4
  %.not254 = icmp sgt i64 %i.bg, %i.bf
  %or.cond284 = select i1 %.not253, i1 true, i1 %.not254
  br i1 %or.cond284, label %.thread348, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %.val306 = load i32, ptr %i.bh, align 1         ; 5 uses
  %i.bi = load i32, ptr %3, align 4, !tbaa !7
  %.fr450 = freeze i32 %i.bi                      ; 6 uses
  %.not255 = icmp ult i32 %.val306, %.fr450
  br i1 %.not255, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  br label %.thread348

bb.m:                                             ; preds = %bb.k
  %i.bj = sext i32 %.val306 to i64
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bl = icmp ult i32 %.fr450, 8
  %.not257405 = icmp slt i32 %.val306, 0
  %or.cond286406 = or i1 %i.bl, %.not257405
  br i1 %or.cond286406, label %.critedge, label %.lr.ph409.split.preheader

.lr.ph409.split.preheader:                        ; preds = %bb.m
  %i.bm = zext i32 %.fr450 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm ; 3 uses
  br label %.lr.ph409.split

.lr.ph409.split:                                  ; preds = %.lr.ph409.split.preheader, %.critedge7
  %.0205407 = phi ptr [ %i.bu, %.critedge7 ], [ %i.bk, %.lr.ph409.split.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0205407, i64 8 ; 4 uses
  %.not258.not = icmp ugt ptr %i.bo, %i.bn
  br i1 %.not258.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph409.split
  %.0205.val = load i32, ptr %.0205407, align 1
  %.not259 = icmp eq i32 %.0205.val, 0
  br i1 %.not259, label %.critedge, label %.preheader380

.preheader380:                                    ; preds = %bb.n
  %.not263397 = icmp ult ptr %i.bo, %2
  br i1 %.not263397, label %.critedge7, label %.lr.ph399

.lr.ph399:                                        ; preds = %.preheader380, %.critedge9
  %.1206398 = phi ptr [ %i.bt, %.critedge9 ], [ %i.bo, %.preheader380 ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1206398, i64 2
  %.not264.not = icmp ugt ptr %i.bp, %i.bn
  br i1 %.not264.not, label %.critedge7, label %bb.o

bb.o:                                             ; preds = %.lr.ph399
  %i.bq = load i8, ptr %.1206398, align 1, !tbaa !8
  %.not265 = icmp eq i8 %i.bq, 0
  br i1 %.not265, label %.critedge7, label %.preheader

.preheader:                                       ; preds = %bb.o, %bb.p
  %.1206.pn = phi ptr [ %.2, %bb.p ], [ %.1206398, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1206.pn, i64 3
  %.not269.not = icmp ugt ptr %i.br, %i.bn
  br i1 %.not269.not, label %.critedge9, label %bb.p

bb.p:                                             ; preds = %.preheader
  %.2 = getelementptr inbounds nuw i8, ptr %.1206.pn, i64 1 ; 2 uses
  %i.bs = load i8, ptr %.2, align 1, !tbaa !8
end_hunk_0
begin_hunk_1_@pefromupx:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %.4211436, i64 12
  %.val302 = load i32, ptr %i.eo, align 1
  %.fr = freeze i32 %.val302                      ; 2 uses
  %i.ep = urem i32 %.fr, %.4338
  %i.eq = sub nuw i32 %.fr, %i.ep
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph440.split
  %i.er = getelementptr inbounds nuw i8, ptr %.4211436, i64 12
  %.val301 = load i32, ptr %i.er, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.es = phi i32 [ %i.en, %bb.ag ], [ %.val303, %bb.ah ] ; 5 uses
  %i.et = phi i32 [ %i.eq, %bb.ag ], [ %.val301, %bb.ah ] ; 3 uses
  %i.eu = add i32 %i.es, -1
  %i.ev = icmp uge i32 %i.eu, %.1202.fr
  %.not281 = icmp ult i32 %i.et, %5
  %or.cond294 = select i1 %i.ev, i1 true, i1 %.not281
  br i1 %or.cond294, label %.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = add i32 %i.et, %i.es                    ; 2 uses
  %.not282 = icmp ule i32 %i.ew, %i.eg
  %i.ex = icmp ugt i32 %i.ew, %5
  %or.cond295 = and i1 %.not282, %i.ex
  br i1 %or.cond295, label %bb.ak, label %.split

.split:                                           ; preds = %bb.aj, %bb.ai, %.lr.ph440
  %.us-phi443 = phi i32 [ 0, %.lr.ph440 ], [ %.0203437, %bb.ai ], [ %.0203437, %bb.aj ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %.us-phi443) #6
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %.4211436, i64 8
  store i32 %i.es, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.4211436, i64 12
  store i32 %i.et, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.4211436, i64 16
  store i32 %i.es, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.4211436, i64 20
  store i32 %.0200438, ptr %i.fb, align 1
  %i.fc = add i32 %i.es, %.0200438                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.4211436, i64 40
  %i.fe = add nuw i32 %.0203437, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %.4345
  br i1 %exitcond.not, label %._crit_edge441, label %.lr.ph440.split, !llvm.loop !23

._crit_edge441:                                   ; preds = %bb.ak, %bb.af
  %.0200.lcssa = phi i32 [ %i.ee, %bb.af ], [ %i.fc, %bb.ak ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.5, i64 8
  store i32 1296124995, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.5, i64 60
  store i32 %.4338, ptr %i.fg, align 1
  %i.fh = zext i32 %.0200.lcssa to i64            ; 2 uses
  %i.fi = tail call ptr @cli_calloc(i64 noundef %i.fh, i64 noundef 1) #6 ; 9 uses
  %.not277 = icmp eq ptr %i.fi, null
  br i1 %.not277, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge441
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge441
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.fi, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 208
  %i.fk = mul i32 %.4345, 40
  %i.fl = add i32 %i.fk, 248
  %i.fm = zext i32 %i.fl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull align 1 %.5, i64 %i.fm, i1 false)
  br i1 %.not452, label %._crit_edge449, label %.lr.ph448

.lr.ph448:                                        ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %.5, i64 248 ; 2 uses
  %i.fo = zext i32 %5 to i64
  %i.fp = sub nsw i64 0, %i.fo
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.fp ; 3 uses
  %xtraiter = and i32 %.4345, 1
  %i.fq = icmp eq i32 %.4345, 1
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph448.new

.lr.ph448.new:                                    ; preds = %.lr.ph448
  %unroll_iter = and i32 %.4345, -2
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph448.new
  %.6445 = phi ptr [ %i.fn, %.lr.ph448.new ], [ %i.gf, %bb.an ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph448.new ], [ %niter.next.1, %bb.an ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.6445, i64 20
  %.val300 = load i32, ptr %i.fr, align 1
  %i.fs = sext i32 %.val300 to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fi, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.6445, i64 12
  %.val299 = load i32, ptr %i.fu, align 1
  %i.fv = sext i32 %.val299 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fv
  %i.fw = getelementptr inbounds nuw i8, ptr %.6445, i64 16
  %.val = load i32, ptr %i.fw, align 1
  %i.fx = sext i32 %.val to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr align 1 %gep, i64 %i.fx, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %.6445, i64 60
  %.val300.1 = load i32, ptr %i.fy, align 1
  %i.fz = sext i32 %.val300.1 to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fi, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.6445, i64 52
  %.val299.1 = load i32, ptr %i.gb, align 1
  %i.gc = sext i32 %.val299.1 to i64
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gc
  %i.gd = getelementptr inbounds nuw i8, ptr %.6445, i64 56
  %.val.1 = load i32, ptr %i.gd, align 1
  %i.ge = sext i32 %.val.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr align 1 %gep.1, i64 %i.ge, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %.6445, i64 80 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge449.loopexit.unr-lcssa, label %bb.an, !llvm.loop !24

._crit_edge449.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge449, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge449.loopexit.unr-lcssa, %.lr.ph448
  %.6445.epil.init = phi ptr [ %i.fn, %.lr.ph448 ], [ %i.gf, %._crit_edge449.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod529 = trunc i32 %.4345 to i1
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.gg = getelementptr inbounds nuw i8, ptr %.6445.epil.init, i64 20
  %.val300.epil = load i32, ptr %i.gg, align 1
  %i.gh = sext i32 %.val300.epil to i64
  %i.gi = getelementptr inbounds i8, ptr %i.fi, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %.6445.epil.init, i64 12
  %.val299.epil = load i32, ptr %i.gj, align 1
  %i.gk = sext i32 %.val299.epil to i64
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.gk
  %i.gl = getelementptr inbounds nuw i8, ptr %.6445.epil.init, i64 16
  %.val.epil = load i32, ptr %i.gl, align 1
  %i.gm = sext i32 %.val.epil to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gi, ptr align 1 %gep.epil, i64 %i.gm, i1 false)
  br label %._crit_edge449

._crit_edge449:                                   ; preds = %.epil.preheader, %._crit_edge449.loopexit.unr-lcssa, %bb.am
  %i.gn = load i32, ptr %3, align 4, !tbaa !7
  %i.go = add i32 %i.gn, 8192
  %i.gp = icmp ugt i32 %.0200.lcssa, %i.go
  br i1 %i.gp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge449
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #6
  tail call void @free(ptr noundef nonnull %i.fi) #6
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge449
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.fi, i64 %i.fh, i1 false)
  store i32 %.0200.lcssa, ptr %3, align 4, !tbaa !7
  tail call void @free(ptr noundef nonnull %i.fi) #6
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #6
  br label %bb.aq

bb.aq:                                            ; preds = %.split, %bb.ab, %bb.ac, %bb.a, %bb.ap, %bb.ao, %bb.al
  %.3216 = phi i32 [ 0, %bb.a ], [ 0, %.split ], [ 0, %bb.ao ], [ 1, %bb.ap ], [ 0, %bb.al ], [ 1, %bb.ac ], [ 0, %bb.ab ]
  ret i32 %.3216
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @upx_inflate2d(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3                       ; 8 uses
  %i.b = zext i32 %1 to i64                       ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0227 = phi i32 [ 0, %bb.a ], [ %.5232, %._crit_edge ]
  %.0224 = phi i32 [ 0, %bb.a ], [ %.5, %._crit_edge ]
  %.0115 = phi i32 [ -1, %bb.a ], [ %.1116, %._crit_edge ]
  %.0112 = phi i32 [ 0, %bb.a ], [ %i.fm, %._crit_edge ]
  %i.c = zext i32 %.0112 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.c, %bb.b ] ; 12 uses
  %.1228 = phi i32 [ %.6233, %bb.i ], [ %.0227, %bb.b ] ; 3 uses
  %.1225 = phi i32 [ %i.o, %bb.i ], [ %.0224, %bb.b ] ; 3 uses
  %i.d = shl i32 %.1228, 1
  %i.e = and i32 %.1228, 2147483647
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %doubleebx.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %doubleebx.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = zext i32 %.1225 to i64                   ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 4
  %.not28.i = icmp samesign ugt i64 %i.g, %i.b
  br i1 %.not28.i, label %doubleebx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.val.i = load i32, ptr %i.h, align 1           ; 2 uses
  %i.i = shl i32 %.val.i, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = add i32 %.1225, 4
  br label %doubleebx.exit

doubleebx.exit:                                   ; preds = %bb.c, %bb.f
  %.6233 = phi i32 [ %i.j, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %.6 = phi i32 [ %i.k, %bb.f ], [ %.1225, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ %.val.i, %bb.f ], [ %.1228, %bb.c ]
  %cond.not = icmp sgt i32 %.0.i, -1
  br i1 %cond.not, label %.preheader279, label %bb.g

.preheader279:                                    ; preds = %doubleebx.exit
  %i.l = trunc i64 %indvars.iv to i32             ; 4 uses
  br label %bb.j

bb.g:                                             ; preds = %doubleebx.exit
  %.not150 = icmp ult i32 %.6, %1
  br i1 %.not150, label %bb.h, label %doubleebx.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %3, align 4, !tbaa !7
  %i.n = zext i32 %i.m to i64
  %.not151 = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not151, label %bb.i, label %doubleebx.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw i32 %.6, 1
  %i.p = zext i32 %.6 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !8
  br label %bb.c, !llvm.loop !25

bb.j:                                             ; preds = %.preheader279, %doubleebx.exit174
  %.2229 = phi i32 [ %.12239, %doubleebx.exit174 ], [ %.6233, %.preheader279 ] ; 5 uses
  %.2226 = phi i32 [ %.12, %doubleebx.exit174 ], [ %.6, %.preheader279 ] ; 5 uses
  %.0117 = phi i32 [ %i.ay, %doubleebx.exit174 ], [ 1, %.preheader279 ] ; 2 uses
  %i.t = and i32 %.2229, 2147483647
  %.not.i157 = icmp eq i32 %i.t, 0
  br i1 %.not.i157, label %bb.k, label %doubleebx.exit162

bb.k:                                             ; preds = %bb.j
  br i1 %i.a, label %bb.l, label %doubleebx.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %.2226 to i64                   ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 4
  %.not28.i160 = icmp samesign ugt i64 %i.v, %i.b
  br i1 %.not28.i160, label %doubleebx.exit.thread, label %doubleebx.exit162.thread

doubleebx.exit162:                                ; preds = %bb.j
  %i.w = shl i32 %.2229, 1
  %i.x = tail call i32 @llvm.fshl.i32(i32 %.0117, i32 %.2229, i32 1) ; 2 uses
  %i.y = shl i32 %.2229, 2
  %i.z = and i32 %.2229, 1073741823
  %.not.i163 = icmp eq i32 %i.z, 0
  br i1 %.not.i163, label %bb.m, label %doubleebx.exit168

doubleebx.exit162.thread:                         ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.val.i161 = load i32, ptr %i.aa, align 1       ; 2 uses
  %i.ab = shl i32 %.val.i161, 1
  %i.ac = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.ad = add i32 %.2226, 4
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %.0117, i32 %.val.i161, i32 1)
  %i.af = shl i32 %i.ac, 1
  br label %doubleebx.exit168

bb.m:                                             ; preds = %doubleebx.exit162
  br i1 %i.a, label %bb.n, label %doubleebx.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = zext i32 %.2226 to i64                  ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 4
  %.not28.i166 = icmp samesign ugt i64 %i.ah, %i.b
  br i1 %.not28.i166, label %doubleebx.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.val.i167 = load i32, ptr %i.ai, align 1       ; 2 uses
  %i.aj = shl i32 %.val.i167, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = add i32 %.2226, 4
  br label %doubleebx.exit168

doubleebx.exit168:                                ; preds = %doubleebx.exit162.thread, %doubleebx.exit162, %bb.o
  %i.am = phi i32 [ %i.x, %bb.o ], [ %i.x, %doubleebx.exit162 ], [ %i.ae, %doubleebx.exit162.thread ] ; 3 uses
  %.10237 = phi i32 [ %i.ak, %bb.o ], [ %i.y, %doubleebx.exit162 ], [ %i.af, %doubleebx.exit162.thread ] ; 7 uses
  %.10 = phi i32 [ %i.al, %bb.o ], [ %.2226, %doubleebx.exit162 ], [ %i.ad, %doubleebx.exit162.thread ] ; 9 uses
  %.0.i164 = phi i32 [ %.val.i167, %bb.o ], [ %i.w, %doubleebx.exit162 ], [ %i.ac, %doubleebx.exit162.thread ]
  %cond273 = icmp sgt i32 %.0.i164, -1
  br i1 %cond273, label %bb.p, label %bb.t

bb.p:                                             ; preds = %doubleebx.exit168
  %i.an = shl i32 %.10237, 1
  %i.ao = and i32 %.10237, 2147483647
  %.not.i169 = icmp eq i32 %i.ao, 0
  br i1 %.not.i169, label %bb.q, label %doubleebx.exit174

bb.q:                                             ; preds = %bb.p
  br i1 %i.a, label %bb.r, label %doubleebx.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ap = zext i32 %.10 to i64                    ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4
  %.not28.i172 = icmp samesign ugt i64 %i.aq, %i.b
  br i1 %.not28.i172, label %doubleebx.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.val.i173 = load i32, ptr %i.ar, align 1       ; 2 uses
  %i.as = shl i32 %.val.i173, 1
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %.10, 4
  br label %doubleebx.exit174

doubleebx.exit174:                                ; preds = %bb.p, %bb.s
  %.12239 = phi i32 [ %i.at, %bb.s ], [ %i.an, %bb.p ]
  %.12 = phi i32 [ %i.au, %bb.s ], [ %.10, %bb.p ]
  %.0.i170 = phi i32 [ %.val.i173, %bb.s ], [ %.10237, %bb.p ]
  %i.av = lshr i32 %.0.i170, 31
  %i.aw = shl i32 %i.am, 1
  %i.ax = add i32 %i.aw, -2
  %i.ay = or disjoint i32 %i.av, %i.ax
  br label %bb.j

bb.t:                                             ; preds = %doubleebx.exit168
  %i.az = icmp sgt i32 %i.am, 2
  br i1 %i.az, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not142 = icmp ult i32 %.10, %1
  br i1 %.not142, label %bb.v, label %doubleebx.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ba = shl i32 %i.am, 8
  %i.bb = add i32 %i.ba, -768
  %i.bc = zext i32 %.10 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bb, %i.bf            ; 2 uses
  %.not143 = icmp eq i32 %i.bg, -1
  br i1 %.not143, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = add nuw i32 %.10, 1
  %i.bi = xor i32 %i.bg, -1                       ; 2 uses
  %i.bj = and i32 %i.bi, 1
  %i.bk = ashr i32 %i.bi, 1
  br label %bb.ab

bb.x:                                             ; preds = %bb.t
  %i.bl = shl i32 %.10237, 1
  %i.bm = and i32 %.10237, 2147483647
  %.not.i175 = icmp eq i32 %i.bm, 0
  br i1 %.not.i175, label %bb.y, label %doubleebx.exit180

bb.y:                                             ; preds = %bb.x
  br i1 %i.a, label %bb.z, label %doubleebx.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bn = zext i32 %.10 to i64                    ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 4
  %.not28.i178 = icmp samesign ugt i64 %i.bo, %i.b
  br i1 %.not28.i178, label %doubleebx.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %.val.i179 = load i32, ptr %i.bp, align 1       ; 2 uses
  %i.bq = shl i32 %.val.i179, 1
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = add i32 %.10, 4
  br label %doubleebx.exit180

doubleebx.exit180:                                ; preds = %bb.x, %bb.aa
  %.14241 = phi i32 [ %i.br, %bb.aa ], [ %i.bl, %bb.x ]
  %.14 = phi i32 [ %i.bs, %bb.aa ], [ %.10, %bb.x ]
  %.0.i176 = phi i32 [ %.val.i179, %bb.aa ], [ %.10237, %bb.x ]
  %i.bt = lshr i32 %.0.i176, 31
  br label %bb.ab

bb.ab:                                            ; preds = %doubleebx.exit180, %bb.w
  %.3230 = phi i32 [ %.10237, %bb.w ], [ %.14241, %doubleebx.exit180 ] ; 3 uses
  %.3 = phi i32 [ %i.bh, %bb.w ], [ %.14, %doubleebx.exit180 ] ; 3 uses
  %.1116 = phi i32 [ %i.bk, %bb.w ], [ %.0115, %doubleebx.exit180 ] ; 5 uses
  %.0113 = phi i32 [ %i.bj, %bb.w ], [ %i.bt, %doubleebx.exit180 ]
  %i.bu = shl i32 %.3230, 1
  %i.bv = and i32 %.3230, 2147483647
  %.not.i181 = icmp eq i32 %i.bv, 0
  br i1 %.not.i181, label %bb.ac, label %doubleebx.exit186

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.a, label %bb.ad, label %doubleebx.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bw = zext i32 %.3 to i64                     ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, 4
  %.not28.i184 = icmp samesign ugt i64 %i.bx, %i.b
  br i1 %.not28.i184, label %doubleebx.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %.val.i185 = load i32, ptr %i.by, align 1       ; 2 uses
  %i.bz = shl i32 %.val.i185, 1
  %i.ca = or disjoint i32 %i.bz, 1
  %i.cb = add i32 %.3, 4
  br label %doubleebx.exit186

doubleebx.exit186:                                ; preds = %bb.ab, %bb.ae
  %.16243 = phi i32 [ %i.ca, %bb.ae ], [ %i.bu, %bb.ab ] ; 2 uses
  %.16 = phi i32 [ %i.cb, %bb.ae ], [ %.3, %bb.ab ] ; 2 uses
  %.0.i182 = phi i32 [ %.val.i185, %bb.ae ], [ %.3230, %bb.ab ]
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %.0113, i32 %.0.i182, i32 1) ; 2 uses
  %.not144 = icmp eq i32 %i.cc, 0
  br i1 %.not144, label %.preheader278, label %bb.al

.preheader278:                                    ; preds = %doubleebx.exit186, %doubleebx.exit198
  %.4231 = phi i32 [ %.20247, %doubleebx.exit198 ], [ %.16243, %doubleebx.exit186 ] ; 5 uses
  %.4 = phi i32 [ %.20, %doubleebx.exit198 ], [ %.16, %doubleebx.exit186 ] ; 5 uses
  %.1114 = phi i32 [ %i.cw, %doubleebx.exit198 ], [ 1, %doubleebx.exit186 ] ; 2 uses
  %i.cd = and i32 %.4231, 2147483647
  %.not.i187 = icmp eq i32 %i.cd, 0
  br i1 %.not.i187, label %bb.af, label %doubleebx.exit192

bb.af:                                            ; preds = %.preheader278
  br i1 %i.a, label %bb.ag, label %doubleebx.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ce = zext i32 %.4 to i64                     ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 4
  %.not28.i190 = icmp samesign ugt i64 %i.cf, %i.b
  br i1 %.not28.i190, label %doubleebx.exit.thread, label %doubleebx.exit192.thread

doubleebx.exit192:                                ; preds = %.preheader278
  %i.cg = shl i32 %.4231, 1
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %.1114, i32 %.4231, i32 1) ; 2 uses
  %i.ci = shl i32 %.4231, 2
  %i.cj = and i32 %.4231, 1073741823
  %.not.i193 = icmp eq i32 %i.cj, 0
  br i1 %.not.i193, label %bb.ah, label %doubleebx.exit198

doubleebx.exit192.thread:                         ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.val.i191 = load i32, ptr %i.ck, align 1       ; 2 uses
  %i.cl = shl i32 %.val.i191, 1
  %i.cm = or disjoint i32 %i.cl, 1                ; 2 uses
  %i.cn = add i32 %.4, 4
  %i.co = tail call i32 @llvm.fshl.i32(i32 %.1114, i32 %.val.i191, i32 1)
  %i.cp = shl i32 %i.cm, 1
  br label %doubleebx.exit198

bb.ah:                                            ; preds = %doubleebx.exit192
  br i1 %i.a, label %bb.ai, label %doubleebx.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cq = zext i32 %.4 to i64                     ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, 4
  %.not28.i196 = icmp samesign ugt i64 %i.cr, %i.b
  br i1 %.not28.i196, label %doubleebx.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %.val.i197 = load i32, ptr %i.cs, align 1       ; 2 uses
  %i.ct = shl i32 %.val.i197, 1
  %i.cu = or disjoint i32 %i.ct, 1
  %i.cv = add i32 %.4, 4
  br label %doubleebx.exit198

doubleebx.exit198:                                ; preds = %doubleebx.exit192.thread, %doubleebx.exit192, %bb.aj
  %i.cw = phi i32 [ %i.ch, %bb.aj ], [ %i.ch, %doubleebx.exit192 ], [ %i.co, %doubleebx.exit192.thread ] ; 2 uses
  %.20247 = phi i32 [ %i.cu, %bb.aj ], [ %i.ci, %doubleebx.exit192 ], [ %i.cp, %doubleebx.exit192.thread ] ; 2 uses
  %.20 = phi i32 [ %i.cv, %bb.aj ], [ %.4, %doubleebx.exit192 ], [ %i.cn, %doubleebx.exit192.thread ] ; 2 uses
  %.0.i194 = phi i32 [ %.val.i197, %bb.aj ], [ %i.cg, %doubleebx.exit192 ], [ %i.cm, %doubleebx.exit192.thread ]
  %cond274 = icmp sgt i32 %.0.i194, -1
  br i1 %cond274, label %.preheader278, label %bb.ak

bb.ak:                                            ; preds = %doubleebx.exit198
  %i.cx = add i32 %i.cw, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %doubleebx.exit186
  %.5232 = phi i32 [ %.20247, %bb.ak ], [ %.16243, %doubleebx.exit186 ]
  %.5 = phi i32 [ %.20, %bb.ak ], [ %.16, %doubleebx.exit186 ]
  %.2 = phi i32 [ %i.cx, %bb.ak ], [ %i.cc, %doubleebx.exit186 ]
  %i.cy = icmp ult i32 %.1116, -1280
  %i.cz = zext i1 %i.cy to i32
  %spec.select = add i32 %.2, %i.cz               ; 7 uses
  %i.da = add nuw i32 %spec.select, 1             ; 2 uses
  %i.db = load i32, ptr %3, align 4, !tbaa !7     ; 3 uses
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp uge i32 %spec.select, %i.db
  %or.cond152 = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond152, label %doubleebx.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = sext i32 %.1116 to i64
  %i.df = add nsw i64 %indvars.iv, %i.de          ; 2 uses
  %.not146 = icmp slt i64 %i.df, 0
  br i1 %.not146, label %doubleebx.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = zext i32 %i.da to i64                   ; 9 uses
  %i.dh = zext i32 %i.db to i64                   ; 2 uses
  %i.di = add nuw nsw i64 %i.df, %i.dg
  %.not147 = icmp samesign ugt i64 %i.di, %i.dh
  %i.dj = add nuw nsw i64 %indvars.iv, %i.dg
  %.not149 = icmp samesign ugt i64 %i.dj, %i.dh
  %or.cond155 = select i1 %.not147, i1 true, i1 %.not149
  %i.dk = icmp sgt i32 %.1116, -1
  %or.cond156 = select i1 %or.cond155, i1 true, i1 %i.dk
  br i1 %or.cond156, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.an
  %i.dl = add i32 %.1116, %i.l                    ; 7 uses
  %min.iters.check = icmp ult i32 %spec.select, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dm = xor i32 %i.l, -1
  %i.dn = icmp ugt i32 %spec.select, %i.dm
  %i.do = xor i32 %i.dl, -1
  %i.dp = icmp ugt i32 %spec.select, %i.do
  %i.dq = or i1 %i.dn, %i.dp
  br i1 %i.dq, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dr = and i64 %indvars.iv, 4294967295
  %i.ds = zext i32 %i.dl to i64
  %i.dt = sub nsw i64 %i.ds, %i.dr
  %diff.check = icmp ugt i64 %i.dt, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check339 = icmp ult i32 %spec.select, 31
  br i1 %min.iters.check339, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.du = and i64 %i.dg, 28
  %n.vec = and i64 %i.dg, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dv = trunc nuw i64 %index to i32
  %i.dw = add i32 %i.dl, %i.dv
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <16 x i8>, ptr %i.dy, align 1, !tbaa !8
  %wide.load340 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !8
  %i.ea = add nuw i64 %index, %indvars.iv
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %wide.load, ptr %i.ec, align 1, !tbaa !8
  store <16 x i8> %wide.load340, ptr %i.ed, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec341 = and i64 %i.dg, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index342 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next344, %vec.epilog.vector.body ] ; 3 uses
  %i.ef = trunc nuw i64 %index342 to i32
  %i.eg = add i32 %i.dl, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  %wide.load343 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !8
  %i.ej = add nuw i64 %index342, %indvars.iv
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  store <4 x i8> %wide.load343, ptr %i.el, align 1, !tbaa !8
  %index.next344 = add nuw i64 %index342, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next344, %n.vec341
  br i1 %i.em, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n345 = icmp eq i64 %n.vec341, %i.dg
  br i1 %cmp.n345, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv298.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec341, %vec.epilog.middle.block ] ; 5 uses
  %7 = zext i32 %spec.select to i64
  %xtraiter = and i64 %i.dg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.en = trunc nuw i64 %indvars.iv298.ph to i32
  %i.eo = add i32 %i.dl, %i.en
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !8
  %i.es = add nuw i64 %indvars.iv298.ph, %indvars.iv
  %i.et = and i64 %i.es, 4294967295
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et
  store i8 %i.er, ptr %i.eu, align 1, !tbaa !8
  %indvars.iv.next299.prol = or disjoint i64 %indvars.iv298.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv298.unr = phi i64 [ %indvars.iv298.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph.prol ]
  %i.ev = icmp eq i64 %indvars.iv298.ph, %7
  br i1 %i.ev, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv298 = phi i64 [ %indvars.iv.next299.1, %vec.epilog.scalar.ph ], [ %indvars.iv298.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ew = trunc nuw i64 %indvars.iv298 to i32
  %i.ex = add i32 %i.dl, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = add nuw i64 %indvars.iv298, %indvars.iv
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  store i8 %i.fa, ptr %i.fd, align 1, !tbaa !8
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.fe = trunc nuw i64 %indvars.iv.next299 to i32
  %i.ff = add i32 %i.dl, %i.fe
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !8
  %i.fj = add nuw i64 %indvars.iv.next299, %indvars.iv
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %i.fk
  store i8 %i.fi, ptr %i.fl, align 1, !tbaa !8
  %indvars.iv.next299.1 = add nuw nsw i64 %indvars.iv298, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next299.1, %i.dg
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fm = add i32 %i.da, %i.l
  br label %bb.b

bb.ao:                                            ; preds = %bb.v
  %i.fn = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2d.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.ac, %bb.ad, %bb.y, %bb.z, %bb.al, %bb.am, %bb.an, %bb.u, %bb.d, %bb.e, %bb.g, %bb.h, %bb.q, %bb.r, %bb.m, %bb.n, %bb.k, %bb.l, %bb.ah, %bb.ai, %bb.af, %bb.ag, %bb.ao
  %.0118 = phi i32 [ -1, %bb.d ], [ -1, %bb.ah ], [ -1, %bb.q ], [ %i.fn, %bb.ao ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ai ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.r ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.u ], [ -1, %bb.an ], [ -1, %bb.am ], [ -1, %bb.al ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.ad ], [ -1, %bb.ac ]
  ret i32 %.0118
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @upx_inflate2e(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3                       ; 10 uses
  %i.b = zext i32 %1 to i64                       ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0250 = phi i32 [ 0, %bb.a ], [ %.5255, %._crit_edge ]
  %.0247 = phi i32 [ 0, %bb.a ], [ %.5, %._crit_edge ]
  %.0118 = phi i32 [ -1, %bb.a ], [ %.1119, %._crit_edge ]
  %.0115 = phi i32 [ 0, %bb.a ], [ %i.gj, %._crit_edge ]
  %i.c = zext i32 %.0115 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.c, %bb.b ] ; 12 uses
  %.1251 = phi i32 [ %.6256, %bb.i ], [ %.0250, %bb.b ] ; 3 uses
  %.1248 = phi i32 [ %i.o, %bb.i ], [ %.0247, %bb.b ] ; 3 uses
  %i.d = shl i32 %.1251, 1
  %i.e = and i32 %.1251, 2147483647
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %doubleebx.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.e, label %doubleebx.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = zext i32 %.1248 to i64                   ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 4
  %.not28.i = icmp samesign ugt i64 %i.g, %i.b
  br i1 %.not28.i, label %doubleebx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.val.i = load i32, ptr %i.h, align 1           ; 2 uses
  %i.i = shl i32 %.val.i, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = add i32 %.1248, 4
  br label %doubleebx.exit

doubleebx.exit:                                   ; preds = %bb.c, %bb.f
  %.6256 = phi i32 [ %i.j, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %.6 = phi i32 [ %i.k, %bb.f ], [ %.1248, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ %.val.i, %bb.f ], [ %.1251, %bb.c ]
  %cond = icmp sgt i32 %.0.i, -1
  br i1 %cond, label %.preheader313, label %bb.g

.preheader313:                                    ; preds = %doubleebx.exit
  %i.l = trunc i64 %indvars.iv to i32             ; 4 uses
  br label %bb.j

bb.g:                                             ; preds = %doubleebx.exit
  %.not155 = icmp ult i32 %.6, %1
  br i1 %.not155, label %bb.h, label %doubleebx.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %3, align 4, !tbaa !7
  %i.n = zext i32 %i.m to i64
  %.not156 = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not156, label %bb.i, label %doubleebx.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw i32 %.6, 1
  %i.p = zext i32 %.6 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !8
  br label %bb.c, !llvm.loop !29

bb.j:                                             ; preds = %.preheader313, %doubleebx.exit179
  %.2252 = phi i32 [ %.12262, %doubleebx.exit179 ], [ %.6256, %.preheader313 ] ; 5 uses
  %.2249 = phi i32 [ %.12, %doubleebx.exit179 ], [ %.6, %.preheader313 ] ; 5 uses
  %.0120 = phi i32 [ %i.ay, %doubleebx.exit179 ], [ 1, %.preheader313 ] ; 2 uses
  %i.t = and i32 %.2252, 2147483647
  %.not.i162 = icmp eq i32 %i.t, 0
  br i1 %.not.i162, label %bb.k, label %doubleebx.exit167

bb.k:                                             ; preds = %bb.j
  br i1 %i.a, label %bb.l, label %doubleebx.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %.2249 to i64                   ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 4
  %.not28.i165 = icmp samesign ugt i64 %i.v, %i.b
  br i1 %.not28.i165, label %doubleebx.exit.thread, label %doubleebx.exit167.thread

doubleebx.exit167:                                ; preds = %bb.j
  %i.w = shl i32 %.2252, 1
  %i.x = tail call i32 @llvm.fshl.i32(i32 %.0120, i32 %.2252, i32 1) ; 2 uses
  %i.y = shl i32 %.2252, 2
  %i.z = and i32 %.2252, 1073741823
  %.not.i168 = icmp eq i32 %i.z, 0
  br i1 %.not.i168, label %bb.m, label %doubleebx.exit173

doubleebx.exit167.thread:                         ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.val.i166 = load i32, ptr %i.aa, align 1       ; 2 uses
  %i.ab = shl i32 %.val.i166, 1
  %i.ac = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.ad = add i32 %.2249, 4
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %.0120, i32 %.val.i166, i32 1)
  %i.af = shl i32 %i.ac, 1
  br label %doubleebx.exit173

bb.m:                                             ; preds = %doubleebx.exit167
  br i1 %i.a, label %bb.n, label %doubleebx.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ag = zext i32 %.2249 to i64                  ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 4
  %.not28.i171 = icmp samesign ugt i64 %i.ah, %i.b
  br i1 %.not28.i171, label %doubleebx.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.val.i172 = load i32, ptr %i.ai, align 1       ; 2 uses
  %i.aj = shl i32 %.val.i172, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = add i32 %.2249, 4
  br label %doubleebx.exit173

doubleebx.exit173:                                ; preds = %doubleebx.exit167.thread, %doubleebx.exit167, %bb.o
  %i.am = phi i32 [ %i.x, %bb.o ], [ %i.x, %doubleebx.exit167 ], [ %i.ae, %doubleebx.exit167.thread ] ; 3 uses
  %.10260 = phi i32 [ %i.ak, %bb.o ], [ %i.y, %doubleebx.exit167 ], [ %i.af, %doubleebx.exit167.thread ] ; 7 uses
  %.10 = phi i32 [ %i.al, %bb.o ], [ %.2249, %doubleebx.exit167 ], [ %i.ad, %doubleebx.exit167.thread ] ; 9 uses
  %.0.i169 = phi i32 [ %.val.i172, %bb.o ], [ %i.w, %doubleebx.exit167 ], [ %i.ac, %doubleebx.exit167.thread ]
  %cond306 = icmp sgt i32 %.0.i169, -1
  br i1 %cond306, label %bb.p, label %bb.t

bb.p:                                             ; preds = %doubleebx.exit173
  %i.an = shl i32 %.10260, 1
  %i.ao = and i32 %.10260, 2147483647
  %.not.i174 = icmp eq i32 %i.ao, 0
  br i1 %.not.i174, label %bb.q, label %doubleebx.exit179

bb.q:                                             ; preds = %bb.p
  br i1 %i.a, label %bb.r, label %doubleebx.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ap = zext i32 %.10 to i64                    ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4
  %.not28.i177 = icmp samesign ugt i64 %i.aq, %i.b
  br i1 %.not28.i177, label %doubleebx.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.val.i178 = load i32, ptr %i.ar, align 1       ; 2 uses
  %i.as = shl i32 %.val.i178, 1
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %.10, 4
  br label %doubleebx.exit179

doubleebx.exit179:                                ; preds = %bb.p, %bb.s
  %.12262 = phi i32 [ %i.at, %bb.s ], [ %i.an, %bb.p ]
  %.12 = phi i32 [ %i.au, %bb.s ], [ %.10, %bb.p ]
  %.0.i175 = phi i32 [ %.val.i178, %bb.s ], [ %.10260, %bb.p ]
  %i.av = lshr i32 %.0.i175, 31
  %i.aw = shl i32 %i.am, 1
  %i.ax = add i32 %i.aw, -2
  %i.ay = or disjoint i32 %i.av, %i.ax
  br label %bb.j

bb.t:                                             ; preds = %doubleebx.exit173
  %i.az = icmp sgt i32 %i.am, 2
  br i1 %i.az, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not146 = icmp ult i32 %.10, %1
  br i1 %.not146, label %bb.v, label %doubleebx.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ba = shl i32 %i.am, 8
  %i.bb = add i32 %i.ba, -768
  %i.bc = zext i32 %.10 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bb, %i.bf            ; 2 uses
  %.not147 = icmp eq i32 %i.bg, -1
  br i1 %.not147, label %bb.ax, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = add nuw i32 %.10, 1
  %i.bi = xor i32 %i.bg, -1                       ; 2 uses
  %i.bj = and i32 %i.bi, 1
  %i.bk = ashr i32 %i.bi, 1
  br label %bb.ab

bb.x:                                             ; preds = %bb.t
  %i.bl = shl i32 %.10260, 1
  %i.bm = and i32 %.10260, 2147483647
  %.not.i180 = icmp eq i32 %i.bm, 0
  br i1 %.not.i180, label %bb.y, label %doubleebx.exit185

bb.y:                                             ; preds = %bb.x
  br i1 %i.a, label %bb.z, label %doubleebx.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bn = zext i32 %.10 to i64                    ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 4
  %.not28.i183 = icmp samesign ugt i64 %i.bo, %i.b
  br i1 %.not28.i183, label %doubleebx.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %.val.i184 = load i32, ptr %i.bp, align 1       ; 2 uses
  %i.bq = shl i32 %.val.i184, 1
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = add i32 %.10, 4
  br label %doubleebx.exit185

doubleebx.exit185:                                ; preds = %bb.x, %bb.aa
  %.14264 = phi i32 [ %i.br, %bb.aa ], [ %i.bl, %bb.x ]
  %.14 = phi i32 [ %i.bs, %bb.aa ], [ %.10, %bb.x ]
  %.0.i181 = phi i32 [ %.val.i184, %bb.aa ], [ %.10260, %bb.x ]
  %i.bt = lshr i32 %.0.i181, 31
  br label %bb.ab

bb.ab:                                            ; preds = %doubleebx.exit185, %bb.w
  %.3253 = phi i32 [ %.10260, %bb.w ], [ %.14264, %doubleebx.exit185 ] ; 4 uses
  %.3 = phi i32 [ %i.bh, %bb.w ], [ %.14, %doubleebx.exit185 ] ; 6 uses
  %.1119 = phi i32 [ %i.bk, %bb.w ], [ %.0118, %doubleebx.exit185 ] ; 5 uses
  %.0116 = phi i32 [ %i.bj, %bb.w ], [ %i.bt, %doubleebx.exit185 ]
  %.not148 = icmp eq i32 %.0116, 0
  %i.bu = shl i32 %.3253, 1                       ; 2 uses
  %i.bv = and i32 %.3253, 2147483647
  %.not.i192 = icmp eq i32 %i.bv, 0               ; 2 uses
  br i1 %.not148, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not.i192, label %bb.ad, label %doubleebx.exit191

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ae, label %doubleebx.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.bw = zext i32 %.3 to i64                     ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, 4
  %.not28.i189 = icmp samesign ugt i64 %i.bx, %i.b
  br i1 %.not28.i189, label %doubleebx.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %.val.i190 = load i32, ptr %i.by, align 1       ; 2 uses
  %i.bz = shl i32 %.val.i190, 1
  %i.ca = or disjoint i32 %i.bz, 1
  %i.cb = add i32 %.3, 4
  br label %doubleebx.exit191

doubleebx.exit191:                                ; preds = %bb.ac, %bb.af
  %.16266 = phi i32 [ %i.ca, %bb.af ], [ %i.bu, %bb.ac ]
  %.16 = phi i32 [ %i.cb, %bb.af ], [ %.3, %bb.ac ]
  %.0.i187 = phi i32 [ %.val.i190, %bb.af ], [ %.3253, %bb.ac ]
  %i.cc = lshr i32 %.0.i187, 31
  br label %bb.au

bb.ag:                                            ; preds = %bb.ab
  br i1 %.not.i192, label %bb.ah, label %doubleebx.exit197

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.a, label %bb.ai, label %doubleebx.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cd = zext i32 %.3 to i64                     ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 4
  %.not28.i195 = icmp samesign ugt i64 %i.ce, %i.b
  br i1 %.not28.i195, label %doubleebx.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %.val.i196 = load i32, ptr %i.cf, align 1       ; 2 uses
  %i.cg = shl i32 %.val.i196, 1
  %i.ch = or disjoint i32 %i.cg, 1
  %i.ci = add i32 %.3, 4
  br label %doubleebx.exit197

doubleebx.exit197:                                ; preds = %bb.ag, %bb.aj
  %.18268 = phi i32 [ %i.ch, %bb.aj ], [ %i.bu, %bb.ag ] ; 4 uses
  %.18 = phi i32 [ %i.ci, %bb.aj ], [ %.3, %bb.ag ] ; 4 uses
  %.0.i193 = phi i32 [ %.val.i196, %bb.aj ], [ %.3253, %bb.ag ]
  %cond307 = icmp sgt i32 %.0.i193, -1
  br i1 %cond307, label %.preheader312, label %bb.ak

bb.ak:                                            ; preds = %doubleebx.exit197
  %i.cj = shl i32 %.18268, 1
  %i.ck = and i32 %.18268, 2147483647
  %.not.i198 = icmp eq i32 %i.ck, 0
  br i1 %.not.i198, label %bb.al, label %doubleebx.exit203

bb.al:                                            ; preds = %bb.ak
  br i1 %i.a, label %bb.am, label %doubleebx.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.cl = zext i32 %.18 to i64                    ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 4
  %.not28.i201 = icmp samesign ugt i64 %i.cm, %i.b
  br i1 %.not28.i201, label %doubleebx.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %.val.i202 = load i32, ptr %i.cn, align 1       ; 2 uses
  %i.co = shl i32 %.val.i202, 1
  %i.cp = or disjoint i32 %i.co, 1
  %i.cq = add i32 %.18, 4
  br label %doubleebx.exit203

doubleebx.exit203:                                ; preds = %bb.ak, %bb.an
  %.20270 = phi i32 [ %i.cp, %bb.an ], [ %i.cj, %bb.ak ]
  %.20 = phi i32 [ %i.cq, %bb.an ], [ %.18, %bb.ak ]
  %.0.i199 = phi i32 [ %.val.i202, %bb.an ], [ %.18268, %bb.ak ]
  %i.cr = lshr i32 %.0.i199, 31
  %i.cs = or disjoint i32 %i.cr, 2
  br label %bb.au

.preheader312:                                    ; preds = %doubleebx.exit197, %doubleebx.exit215
  %.4254 = phi i32 [ %.24274, %doubleebx.exit215 ], [ %.18268, %doubleebx.exit197 ] ; 5 uses
  %.4 = phi i32 [ %.24, %doubleebx.exit215 ], [ %.18, %doubleebx.exit197 ] ; 5 uses
  %.1117 = phi i32 [ %i.dm, %doubleebx.exit215 ], [ 1, %doubleebx.exit197 ] ; 2 uses
  %i.ct = and i32 %.4254, 2147483647
  %.not.i204 = icmp eq i32 %i.ct, 0
  br i1 %.not.i204, label %bb.ao, label %doubleebx.exit209

bb.ao:                                            ; preds = %.preheader312
  br i1 %i.a, label %bb.ap, label %doubleebx.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cu = zext i32 %.4 to i64                     ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 4
  %.not28.i207 = icmp samesign ugt i64 %i.cv, %i.b
  br i1 %.not28.i207, label %doubleebx.exit.thread, label %doubleebx.exit209.thread

doubleebx.exit209:                                ; preds = %.preheader312
  %i.cw = shl i32 %.4254, 1
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %.1117, i32 %.4254, i32 1) ; 2 uses
  %i.cy = shl i32 %.4254, 2
  %i.cz = and i32 %.4254, 1073741823
  %.not.i210 = icmp eq i32 %i.cz, 0
  br i1 %.not.i210, label %bb.aq, label %doubleebx.exit215

doubleebx.exit209.thread:                         ; preds = %bb.ap
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu
  %.val.i208 = load i32, ptr %i.da, align 1       ; 2 uses
  %i.db = shl i32 %.val.i208, 1
  %i.dc = or disjoint i32 %i.db, 1                ; 2 uses
  %i.dd = add i32 %.4, 4
  %i.de = tail call i32 @llvm.fshl.i32(i32 %.1117, i32 %.val.i208, i32 1)
  %i.df = shl i32 %i.dc, 1
  br label %doubleebx.exit215

bb.aq:                                            ; preds = %doubleebx.exit209
  br i1 %i.a, label %bb.ar, label %doubleebx.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.dg = zext i32 %.4 to i64                     ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 4
  %.not28.i213 = icmp samesign ugt i64 %i.dh, %i.b
  br i1 %.not28.i213, label %doubleebx.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg
  %.val.i214 = load i32, ptr %i.di, align 1       ; 2 uses
  %i.dj = shl i32 %.val.i214, 1
  %i.dk = or disjoint i32 %i.dj, 1
  %i.dl = add i32 %.4, 4
  br label %doubleebx.exit215

doubleebx.exit215:                                ; preds = %doubleebx.exit209.thread, %doubleebx.exit209, %bb.as
  %i.dm = phi i32 [ %i.cx, %bb.as ], [ %i.cx, %doubleebx.exit209 ], [ %i.de, %doubleebx.exit209.thread ] ; 2 uses
  %.24274 = phi i32 [ %i.dk, %bb.as ], [ %i.cy, %doubleebx.exit209 ], [ %i.df, %doubleebx.exit209.thread ] ; 2 uses
  %.24 = phi i32 [ %i.dl, %bb.as ], [ %.4, %doubleebx.exit209 ], [ %i.dd, %doubleebx.exit209.thread ] ; 2 uses
  %.0.i211 = phi i32 [ %.val.i214, %bb.as ], [ %i.cw, %doubleebx.exit209 ], [ %i.dc, %doubleebx.exit209.thread ]
  %cond308 = icmp sgt i32 %.0.i211, -1
  br i1 %cond308, label %.preheader312, label %bb.at

bb.at:                                            ; preds = %doubleebx.exit215
  %i.dn = add i32 %i.dm, 2
  br label %bb.au

bb.au:                                            ; preds = %doubleebx.exit191, %doubleebx.exit203, %bb.at
  %.5255 = phi i32 [ %.20270, %doubleebx.exit203 ], [ %.24274, %bb.at ], [ %.16266, %doubleebx.exit191 ]
  %.5 = phi i32 [ %.20, %doubleebx.exit203 ], [ %.24, %bb.at ], [ %.16, %doubleebx.exit191 ]
  %.2 = phi i32 [ %i.cs, %doubleebx.exit203 ], [ %i.dn, %bb.at ], [ %i.cc, %doubleebx.exit191 ]
  %i.do = icmp ult i32 %.1119, -1280
  %i.dp = zext i1 %i.do to i32
  %spec.select = add i32 %.2, %i.dp               ; 2 uses
  %i.dq = add i32 %spec.select, 2                 ; 5 uses
  %i.dr = load i32, ptr %3, align 4, !tbaa !7     ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = add i32 %spec.select, 1
  %i.du = icmp uge i32 %i.dt, %i.dr
  %or.cond157 = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %or.cond157, label %doubleebx.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dv = sext i32 %.1119 to i64
  %i.dw = add nsw i64 %indvars.iv, %i.dv          ; 2 uses
  %.not151 = icmp slt i64 %i.dw, 0
  br i1 %.not151, label %doubleebx.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = zext i32 %i.dq to i64                   ; 11 uses
  %i.dy = zext i32 %i.dr to i64                   ; 2 uses
  %i.dz = add nuw nsw i64 %i.dw, %i.dx
  %i.ea = add nsw i64 %i.dz, -1
  %or.cond159.not311 = icmp uge i64 %i.ea, %i.dy
  %i.eb = add nuw nsw i64 %indvars.iv, %i.dx
  %.not154 = icmp samesign ugt i64 %i.eb, %i.dy
  %or.cond160 = select i1 %or.cond159.not311, i1 true, i1 %.not154
  %i.ec = icmp sgt i32 %.1119, -1
  %or.cond161 = select i1 %or.cond160, i1 true, i1 %i.ec
  br i1 %or.cond161, label %doubleebx.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.aw
  %.not = icmp eq i32 %i.dq, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.ed = add i32 %.1119, %i.l                    ; 7 uses
  %min.iters.check = icmp ult i32 %i.dq, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ee = add nsw i64 %i.dx, -1                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = xor i32 %i.l, -1
  %i.eh = icmp ult i32 %i.eg, %i.ef
  %i.ei = xor i32 %i.ed, -1
  %i.ej = icmp ult i32 %i.ei, %i.ef
  %i.ek = icmp ugt i64 %i.ee, 4294967295
  %i.el = or i1 %i.ej, %i.ek
  %i.em = or i1 %i.eh, %i.el
  br i1 %i.em, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.en = and i64 %indvars.iv, 4294967295
  %i.eo = zext i32 %i.ed to i64
  %i.ep = sub nsw i64 %i.eo, %i.en
  %diff.check = icmp ugt i64 %i.ep, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check372 = icmp ult i32 %i.dq, 32
  br i1 %min.iters.check372, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eq = and i64 %i.dx, 28
  %n.vec = and i64 %i.dx, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.er = trunc nuw i64 %index to i32
  %i.es = add i32 %i.ed, %i.er
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <16 x i8>, ptr %i.eu, align 1, !tbaa !8
  %wide.load373 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !8
  %i.ew = add nuw i64 %index, %indvars.iv
  %i.ex = and i64 %i.ew, 4294967295
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <16 x i8> %wide.load, ptr %i.ey, align 1, !tbaa !8
  store <16 x i8> %wide.load373, ptr %i.ez, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dx
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec374 = and i64 %i.dx, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index375 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next377, %vec.epilog.vector.body ] ; 3 uses
  %i.fb = trunc nuw i64 %index375 to i32
  %i.fc = add i32 %i.ed, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %i.fd
  %wide.load376 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !8
  %i.ff = add nuw i64 %index375, %indvars.iv
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg
  store <4 x i8> %wide.load376, ptr %i.fh, align 1, !tbaa !8
  %index.next377 = add nuw i64 %index375, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next377, %n.vec374
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n378 = icmp eq i64 %n.vec374, %i.dx
  br i1 %cmp.n378, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv332.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec374, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.dx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fj = trunc nuw i64 %indvars.iv332.ph to i32
  %i.fk = add i32 %i.ed, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.fo = add nuw i64 %indvars.iv332.ph, %indvars.iv
  %i.fp = and i64 %i.fo, 4294967295
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !8
  %indvars.iv.next333.prol = or disjoint i64 %indvars.iv332.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv332.unr = phi i64 [ %indvars.iv332.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next333.prol, %vec.epilog.scalar.ph.prol ]
  %i.fr = add nsw i64 %i.dx, -1
  %i.fs = icmp eq i64 %indvars.iv332.ph, %i.fr
  br i1 %i.fs, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv332 = phi i64 [ %indvars.iv.next333.1, %vec.epilog.scalar.ph ], [ %indvars.iv332.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ft = trunc nuw i64 %indvars.iv332 to i32
  %i.fu = add i32 %i.ed, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !8
  %i.fy = add nuw i64 %indvars.iv332, %indvars.iv
  %i.fz = and i64 %i.fy, 4294967295
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %i.fz
  store i8 %i.fx, ptr %i.ga, align 1, !tbaa !8
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.gb = trunc nuw i64 %indvars.iv.next333 to i32
  %i.gc = add i32 %i.ed, %i.gb
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !8
  %i.gg = add nuw i64 %indvars.iv.next333, %indvars.iv
  %i.gh = and i64 %i.gg, 4294967295
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %i.gh
  store i8 %i.gf, ptr %i.gi, align 1, !tbaa !8
  %indvars.iv.next333.1 = add nuw nsw i64 %indvars.iv332, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next333.1, %i.dx
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.gj = add i32 %i.dq, %i.l
  br label %bb.b

bb.ax:                                            ; preds = %bb.v
  %i.gk = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2e.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.al, %bb.am, %bb.ah, %bb.ai, %bb.ad, %bb.ae, %bb.y, %bb.z, %bb.au, %bb.av, %bb.aw, %bb.u, %bb.d, %bb.e, %bb.g, %bb.h, %bb.q, %bb.r, %bb.m, %bb.n, %bb.k, %bb.l, %bb.aq, %bb.ar, %bb.ao, %bb.ap, %bb.ax
  %.0121 = phi i32 [ -1, %bb.q ], [ -1, %bb.d ], [ -1, %bb.aq ], [ %i.gk, %bb.ax ], [ -1, %bb.ap ], [ -1, %bb.ao ], [ -1, %bb.ar ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.r ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.u ], [ -1, %bb.aw ], [ -1, %bb.av ], [ -1, %bb.au ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ -1, %bb.ai ], [ -1, %bb.ah ], [ -1, %bb.am ], [ -1, %bb.al ]
  ret i32 %.0121
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2
end_hunk_1
