Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_triangle?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_Rect = type { i32, i32, i32, i32 }
%struct.SDL_BlitInfo = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"triangle area overflow\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"integer overflow (%s = %ld)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"w0_row\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"w1_row\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"w2_row\00", align 1
@SDL_expand_byte = external local_unnamed_addr global [9 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @trianglepoint_2_fixedpoint(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4
  %i.b = shl <2 x i32> %i.a, splat (i32 1)
  store <2 x i32> %i.b, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SW_FillTriangle(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.SDL_Rect, align 4           ; 13 uses
  %9 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %10 = alloca %struct.SDL_Rect, align 4          ; 4 uses
  %.sroa.0532.0.extract.trunc = trunc i32 %5 to i8
  %.sroa.8.0.extract.shift = lshr i32 %5, 8       ; 6 uses
  %.sroa.8.0.extract.trunc = trunc i32 %.sroa.8.0.extract.shift to i8
  %.sroa.15.0.extract.shift = lshr i32 %5, 16     ; 6 uses
  %.sroa.15.0.extract.trunc = trunc i32 %.sroa.15.0.extract.shift to i8
  %.sroa.22.0.extract.shift = lshr i32 %5, 24     ; 6 uses
  %.sroa.22.0.extract.trunc = trunc nuw i32 %.sroa.22.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i32 %6, 8       ; 5 uses
  %.sroa.13.0.extract.shift = lshr i32 %6, 16     ; 5 uses
  %.sroa.19.0.extract.shift = lshr i32 %6, 24     ; 6 uses
  %.sroa.6.0.extract.shift = lshr i32 %7, 8       ; 5 uses
  %.sroa.11.0.extract.shift = lshr i32 %7, 16     ; 5 uses
  %.sroa.16.0.extract.shift = lshr i32 %7, 24     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.a = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #8
  br i1 %i.a, label %bb.b, label %.thread1056

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.val786 = load i32, ptr %1, align 4            ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val787 = load i32, ptr %i.e, align 4          ; 3 uses
  %.val788 = load i32, ptr %2, align 4            ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val789 = load i32, ptr %i.f, align 4          ; 2 uses
  %i.g = sub nsw i32 %.val788, %.val786
  %i.h = sext i32 %i.g to i64
  %i.i = sub nsw i32 %i.d, %.val787
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.h, %i.j                   ; 2 uses
  %i.l = sub nsw i32 %.val789, %.val787
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i32 %i.b, %.val786
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.m, %i.o                   ; 2 uses
  %i.q = sub nsw i64 %i.k, %i.p                   ; 2 uses
  %i.r = and i32 %5, 255                          ; 6 uses
  %i.s = and i32 %6, 255                          ; 5 uses
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %.sroa.8.0.extract.shift, 255    ; 2 uses
  %i.v = and i32 %.sroa.7.0.extract.shift, 255
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = and i32 %.sroa.15.0.extract.shift, 255
  %i.y = and i32 %.sroa.13.0.extract.shift, 255   ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = icmp eq i32 %.sroa.22.0.extract.shift, %.sroa.19.0.extract.shift
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = and i32 %7, 255
  %i.ac = icmp eq i32 %i.r, %i.ab
  %or.cond765 = select i1 %or.cond, i1 %i.ac, i1 false
  %i.ad = and i32 %.sroa.6.0.extract.shift, 255
  %i.ae = icmp eq i32 %i.u, %i.ad
  %or.cond767 = select i1 %or.cond765, i1 %i.ae, i1 false
  %i.af = and i32 %.sroa.11.0.extract.shift, 255
  %i.ag = icmp eq i32 %i.y, %i.af
  %or.cond769 = select i1 %or.cond767, i1 %i.ag, i1 false
  %i.ah = icmp eq i32 %.sroa.19.0.extract.shift, %.sroa.16.0.extract.shift
  %spec.select772 = select i1 %or.cond769, i1 %i.ah, i1 false
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ai = phi i1 [ false, %bb.b ], [ %spec.select772, %bb.d ], [ false, %bb.c ]
  %i.aj = icmp eq i64 %i.k, %i.p
  br i1 %i.aj, label %.thread1056, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %0, align 8
  %i.al = and i32 %i.ak, 2
  %.not = icmp eq i32 %i.al, 0                    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %0) #8
  br i1 %i.am, label %._crit_edge1226, label %.thread1056

._crit_edge1226:                                  ; preds = %bb.g
  %.pre = load i32, ptr %1, align 4
  %.pre1227 = load i32, ptr %2, align 4
  %.pre1228 = load i32, ptr %3, align 4
  %.pre1229 = load i32, ptr %i.e, align 4
  %.pre1230 = load i32, ptr %i.f, align 4
  %.pre1231 = load i32, ptr %i.c, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge1226, %bb.f
  %i.an = phi i32 [ %.pre1231, %._crit_edge1226 ], [ %i.d, %bb.f ] ; 2 uses
  %i.ao = phi i32 [ %.pre1230, %._crit_edge1226 ], [ %.val789, %bb.f ] ; 2 uses
  %i.ap = phi i32 [ %.pre1229, %._crit_edge1226 ], [ %.val787, %bb.f ] ; 2 uses
  %i.aq = phi i32 [ %.pre1228, %._crit_edge1226 ], [ %i.b, %bb.f ] ; 2 uses
  %i.ar = phi i32 [ %.pre1227, %._crit_edge1226 ], [ %.val788, %bb.f ] ; 2 uses
  %i.as = phi i32 [ %.pre, %._crit_edge1226 ], [ %.val786, %bb.f ] ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aq)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %..i) ; 2 uses
  %.65.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.aq)
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %.65.i)
  %.67.i = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.an)
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.67.i) ; 2 uses
  %.69.i = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.an)
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %.69.i)
  %i.aw = ashr i32 %spec.select.i, 1
  store i32 %i.aw, ptr %8, align 4
  %i.ax = ashr i32 %i.au, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = sub nsw i32 %i.at, %spec.select.i
  %i.ba = ashr i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 18 uses
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = sub nsw i32 %i.av, %i.au
  %i.bd = ashr i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 18 uses
  store i32 %i.bd, ptr %i.be, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  store i32 0, ptr %9, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = load <2 x i32>, ptr %i.bg, align 8
  store <2 x i32> %i.bi, ptr %i.bh, align 4
  %i.bj = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bk = call zeroext i1 @SDL_GetSurfaceClipRect_REAL(ptr noundef nonnull %0, ptr noundef nonnull %10) #8 ; 0 uses
  %i.bl = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %.not730 = icmp eq i32 %4, 0
  br i1 %.not730, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i32, ptr %i.bm, align 4            ; 13 uses
  %.not731 = icmp eq i32 %i.bn, 0
  %.mask = and i32 %i.bn, -268435456
  %.not732 = icmp eq i32 %.mask, 268435456
  %or.cond770 = or i1 %.not731, %.not732
  br i1 %or.cond770, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bo = lshr i32 %i.bn, 24
  %i.bp = and i32 %i.bo, 15                       ; 2 uses
  %.off = add nsw i32 %i.bp, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = lshr i32 %i.bn, 20
  %i.br = and i32 %i.bq, 15
  switch i32 %i.br, label %.thread [
    i32 3, label %bb.n
    i32 4, label %bb.n
    i32 7, label %bb.n
    i32 8, label %bb.n
  ]

bb.l:                                             ; preds = %bb.j
  %.off773 = add nsw i32 %i.bp, -7
  %switch774 = icmp ult i32 %.off773, 5
  br i1 %switch774, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bs = lshr i32 %i.bn, 20
  %i.bt = and i32 %i.bs, 15
  switch i32 %i.bt, label %.thread [
    i32 3, label %bb.n
    i32 2, label %bb.n
    i32 6, label %bb.n
    i32 5, label %bb.n
  ]

.thread:                                          ; preds = %bb.k, %bb.i, %bb.l, %bb.m
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.k, %bb.k, %bb.k, %bb.k, %.thread
  %.0625 = phi i32 [ 372645892, %.thread ], [ %i.bn, %bb.m ], [ %i.bn, %bb.m ], [ %i.bn, %bb.m ], [ %i.bn, %bb.m ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ]
  %i.bu = load i32, ptr %i.bb, align 4
  %i.bv = load i32, ptr %i.be, align 4
  %i.bw = call ptr @SDL_CreateSurface_REAL(i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef %.0625) #8 ; 8 uses
  %.not735.not = icmp eq ptr %i.bw, null
  br i1 %.not735.not, label %bb.bk, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = icmp eq i32 %4, 4
  br i1 %i.bx, label %bb.p, label %.thread806

bb.p:                                             ; preds = %bb.o
  %i.by = call i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef nonnull %i.bw, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #8
  %i.bz = call zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef %i.by) #8 ; 0 uses
  br label %.thread806

.thread806:                                       ; preds = %bb.o, %bb.p
  %i.ca = call zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef nonnull %i.bw, i32 noundef %4) #8 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %.pre1232 = load i32, ptr %8, align 4
  %.pre1233 = load i32, ptr %i.ay, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@SDL_SW_FillTriangle:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ja = mul nuw nsw i64 %indvars.iv1220, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %.31183, i64 %i.ja ; 3 uses
  store i8 %.sroa.0.0, ptr %i.jb, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store i8 %.sroa.8.0, ptr %i.jc, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  store i8 %.sroa.9.0, ptr %i.jd, align 1
  %.pre1251 = load i32, ptr %i.bb, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.lr.ph1177
  %i.je = phi i32 [ %.pre1251, %bb.ao ], [ %i.it, %bb.an ], [ %i.it, %.lr.ph1177 ] ; 4 uses
  %i.jf = add nsw i64 %.06481174, %i.gv
  %i.jg = add nsw i64 %.06471175, %i.gw
  %i.jh = add nsw i64 %.06461176, %i.gx
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, 1 ; 2 uses
  %i.ji = sext i32 %i.je to i64
  %i.jj = icmp slt i64 %indvars.iv.next1221, %i.ji
  br i1 %i.jj, label %.lr.ph1177, label %._crit_edge1178.loopexit, !llvm.loop !7

._crit_edge1178.loopexit:                         ; preds = %bb.ap
  %.pre1252 = load i32, ptr %i.be, align 4
  br label %._crit_edge1178

._crit_edge1178:                                  ; preds = %._crit_edge1178.loopexit, %.preheader1088
  %i.jk = phi i32 [ %.pre1252, %._crit_edge1178.loopexit ], [ %i.ip, %.preheader1088 ] ; 2 uses
  %i.jl = phi i32 [ %i.je, %._crit_edge1178.loopexit ], [ %i.iq, %.preheader1088 ]
  %i.jm = phi i32 [ %i.je, %._crit_edge1178.loopexit ], [ %i.ir, %.preheader1088 ]
  %i.jn = add nsw i64 %.25931182, %i.gy
  %i.jo = add nsw i64 %.26021181, %i.gz
  %i.jp = add nsw i64 %.26111180, %i.ha
  %i.jq = getelementptr inbounds i8, ptr %.31183, i64 %i.hb
  %i.jr = add nuw nsw i32 %.06491179, 1           ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.jk
  br i1 %i.js, label %.preheader1088, label %.loopexit, !llvm.loop !8

.preheader1091:                                   ; preds = %.preheader1091.lr.ph, %._crit_edge1167
  %i.jt = phi i32 [ %i.gf, %.preheader1091.lr.ph ], [ %i.km, %._crit_edge1167 ]
  %i.ju = phi i32 [ %.pre1247, %.preheader1091.lr.ph ], [ %i.kn, %._crit_edge1167 ] ; 2 uses
  %i.jv = phi i32 [ %.pre1247, %.preheader1091.lr.ph ], [ %i.ko, %._crit_edge1167 ] ; 2 uses
  %.41172 = phi ptr [ %.1564, %.preheader1091.lr.ph ], [ %i.ks, %._crit_edge1167 ] ; 2 uses
  %.35941171 = phi i64 [ %.0591829885951, %.preheader1091.lr.ph ], [ %i.kp, %._crit_edge1167 ] ; 2 uses
  %.36031170 = phi i64 [ %.0600826888948, %.preheader1091.lr.ph ], [ %i.kq, %._crit_edge1167 ] ; 2 uses
  %.36121169 = phi i64 [ %.0609823891945, %.preheader1091.lr.ph ], [ %i.kr, %._crit_edge1167 ] ; 2 uses
  %.06421168 = phi i32 [ 0, %.preheader1091.lr.ph ], [ %i.kt, %._crit_edge1167 ]
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph1166, label %._crit_edge1167

.lr.ph1166:                                       ; preds = %.preheader1091, %bb.as
  %i.jx = phi i32 [ %i.kg, %bb.as ], [ %i.ju, %.preheader1091 ] ; 2 uses
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %bb.as ], [ 0, %.preheader1091 ] ; 2 uses
  %.06391165 = phi i64 [ %i.kj, %bb.as ], [ %.36121169, %.preheader1091 ] ; 2 uses
  %.06401164 = phi i64 [ %i.ki, %bb.as ], [ %.36031170, %.preheader1091 ] ; 2 uses
  %.06411163 = phi i64 [ %i.kh, %bb.as ], [ %.35941171, %.preheader1091 ] ; 2 uses
  %i.jy = sub i64 %i.gh, %.06411163
  %i.jz = icmp slt i64 %i.jy, 0
  br i1 %i.jz, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.lr.ph1166
  %i.ka = sub i64 %i.gi, %.06401164
  %i.kb = icmp slt i64 %i.ka, 0
  %i.kc = sub i64 %.0.i797, %.06391165
  %i.kd = icmp slt i64 %i.kc, 0
  %or.cond1076 = select i1 %i.kb, i1 %i.kd, i1 false
  br i1 %or.cond1076, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ke = shl nuw nsw i64 %indvars.iv1217, 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.41172, i64 %i.ke
  store i16 %i.gj, ptr %i.kf, align 2
  %.pre1248 = load i32, ptr %i.bb, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.lr.ph1166
  %i.kg = phi i32 [ %.pre1248, %bb.ar ], [ %i.jx, %bb.aq ], [ %i.jx, %.lr.ph1166 ] ; 4 uses
  %i.kh = add nsw i64 %.06411163, %i.gk
  %i.ki = add nsw i64 %.06401164, %i.gl
  %i.kj = add nsw i64 %.06391165, %i.gm
  %indvars.iv.next1218 = add nuw nsw i64 %indvars.iv1217, 1 ; 2 uses
  %i.kk = sext i32 %i.kg to i64
  %i.kl = icmp slt i64 %indvars.iv.next1218, %i.kk
  br i1 %i.kl, label %.lr.ph1166, label %._crit_edge1167.loopexit, !llvm.loop !9

._crit_edge1167.loopexit:                         ; preds = %bb.as
  %.pre1249 = load i32, ptr %i.be, align 4
  br label %._crit_edge1167

._crit_edge1167:                                  ; preds = %._crit_edge1167.loopexit, %.preheader1091
  %i.km = phi i32 [ %.pre1249, %._crit_edge1167.loopexit ], [ %i.jt, %.preheader1091 ] ; 2 uses
  %i.kn = phi i32 [ %i.kg, %._crit_edge1167.loopexit ], [ %i.ju, %.preheader1091 ]
  %i.ko = phi i32 [ %i.kg, %._crit_edge1167.loopexit ], [ %i.jv, %.preheader1091 ]
  %i.kp = add nsw i64 %.35941171, %i.gn
  %i.kq = add nsw i64 %.36031170, %i.go
  %i.kr = add nsw i64 %.36121169, %i.gp
  %i.ks = getelementptr inbounds i8, ptr %.41172, i64 %i.gq
  %i.kt = add nuw nsw i32 %.06421168, 1           ; 2 uses
  %i.ku = icmp slt i32 %i.kt, %i.km
  br i1 %i.ku, label %.preheader1091, label %.loopexit, !llvm.loop !10

.preheader1094:                                   ; preds = %.preheader1094.lr.ph, %._crit_edge1156
  %i.kv = phi i32 [ %i.fu, %.preheader1094.lr.ph ], [ %i.ln, %._crit_edge1156 ]
  %i.kw = phi i32 [ %.pre1244, %.preheader1094.lr.ph ], [ %i.lo, %._crit_edge1156 ] ; 2 uses
  %i.kx = phi i32 [ %.pre1244, %.preheader1094.lr.ph ], [ %i.lp, %._crit_edge1156 ] ; 2 uses
  %.51161 = phi ptr [ %.1564, %.preheader1094.lr.ph ], [ %i.lt, %._crit_edge1156 ] ; 2 uses
  %.45951160 = phi i64 [ %.0591829885951, %.preheader1094.lr.ph ], [ %i.lq, %._crit_edge1156 ] ; 2 uses
  %.46041159 = phi i64 [ %.0600826888948, %.preheader1094.lr.ph ], [ %i.lr, %._crit_edge1156 ] ; 2 uses
  %.46131158 = phi i64 [ %.0609823891945, %.preheader1094.lr.ph ], [ %i.ls, %._crit_edge1156 ] ; 2 uses
  %.06361157 = phi i32 [ 0, %.preheader1094.lr.ph ], [ %i.lu, %._crit_edge1156 ]
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph1155, label %._crit_edge1156

.lr.ph1155:                                       ; preds = %.preheader1094, %bb.av
  %i.kz = phi i32 [ %i.lh, %bb.av ], [ %i.kw, %.preheader1094 ] ; 2 uses
  %indvars.iv1214 = phi i64 [ %indvars.iv.next1215, %bb.av ], [ 0, %.preheader1094 ] ; 2 uses
  %.06331154 = phi i64 [ %i.lk, %bb.av ], [ %.46131158, %.preheader1094 ] ; 2 uses
  %.06341153 = phi i64 [ %i.lj, %bb.av ], [ %.46041159, %.preheader1094 ] ; 2 uses
  %.06351152 = phi i64 [ %i.li, %bb.av ], [ %.45951160, %.preheader1094 ] ; 2 uses
  %i.la = sub i64 %i.fw, %.06351152
  %i.lb = icmp slt i64 %i.la, 0
  br i1 %i.lb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.lr.ph1155
  %i.lc = sub i64 %i.fx, %.06341153
  %i.ld = icmp slt i64 %i.lc, 0
  %i.le = sub i64 %.0.i797, %.06331154
  %i.lf = icmp slt i64 %i.le, 0
  %or.cond1078 = select i1 %i.ld, i1 %i.lf, i1 false
  br i1 %or.cond1078, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lg = getelementptr inbounds nuw i8, ptr %.51161, i64 %indvars.iv1214
  store i8 %.sroa.0.0, ptr %i.lg, align 1
  %.pre1245 = load i32, ptr %i.bb, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.lr.ph1155
  %i.lh = phi i32 [ %.pre1245, %bb.au ], [ %i.kz, %bb.at ], [ %i.kz, %.lr.ph1155 ] ; 4 uses
  %i.li = add nsw i64 %.06351152, %i.fy
  %i.lj = add nsw i64 %.06341153, %i.fz
  %i.lk = add nsw i64 %.06331154, %i.ga
  %indvars.iv.next1215 = add nuw nsw i64 %indvars.iv1214, 1 ; 2 uses
  %i.ll = sext i32 %i.lh to i64
  %i.lm = icmp slt i64 %indvars.iv.next1215, %i.ll
  br i1 %i.lm, label %.lr.ph1155, label %._crit_edge1156.loopexit, !llvm.loop !11

._crit_edge1156.loopexit:                         ; preds = %bb.av
  %.pre1246 = load i32, ptr %i.be, align 4
  br label %._crit_edge1156

._crit_edge1156:                                  ; preds = %._crit_edge1156.loopexit, %.preheader1094
  %i.ln = phi i32 [ %.pre1246, %._crit_edge1156.loopexit ], [ %i.kv, %.preheader1094 ] ; 2 uses
  %i.lo = phi i32 [ %i.lh, %._crit_edge1156.loopexit ], [ %i.kw, %.preheader1094 ]
  %i.lp = phi i32 [ %i.lh, %._crit_edge1156.loopexit ], [ %i.kx, %.preheader1094 ]
  %i.lq = add nsw i64 %.45951160, %i.gb
  %i.lr = add nsw i64 %.46041159, %i.gc
  %i.ls = add nsw i64 %.46131158, %i.gd
  %i.lt = getelementptr inbounds i8, ptr %.51161, i64 %i.ge
  %i.lu = add nuw nsw i32 %.06361157, 1           ; 2 uses
  %i.lv = icmp slt i32 %i.lu, %i.ln
  br i1 %i.lv, label %.preheader1094, label %.loopexit, !llvm.loop !12

bb.aw:                                            ; preds = %is_top_left.exit799
  %.0631.in = getelementptr inbounds nuw i8, ptr %..06231315, i64 72
  %.0631 = load ptr, ptr %.0631.in, align 8       ; 4 uses
  %.0632.in = getelementptr inbounds nuw i8, ptr %..06231315, i64 56
  %.0632 = load ptr, ptr %.0632.in, align 8       ; 4 uses
  switch i8 %.1562, label %.loopexit [
    i8 4, label %.preheader1098
    i8 3, label %.preheader1101
    i8 2, label %.preheader1104
    i8 1, label %.preheader1107
  ]

.preheader1107:                                   ; preds = %bb.aw
  %i.lw = load i32, ptr %i.be, align 4            ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.preheader1106.lr.ph, label %.loopexit

.preheader1106.lr.ph:                             ; preds = %.preheader1107
  %i.ly = sext i1 %.0.i894942 to i64
  %i.lz = sext i1 %.0.i792972 to i64
  %i.ma = zext nneg i32 %i.r to i64
  %i.mb = zext nneg i32 %i.s to i64
  %.sroa.0.0.extract.trunc.mask = and i32 %7, 255
  %i.mc = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %.sroa.8.0.extract.trunc.mask = and i32 %.sroa.8.0.extract.shift, 255
  %i.md = zext nneg i32 %.sroa.8.0.extract.trunc.mask to i64
  %.sroa.7.0.extract.trunc.mask = and i32 %.sroa.7.0.extract.shift, 255
  %i.me = zext nneg i32 %.sroa.7.0.extract.trunc.mask to i64
  %.sroa.6.0.extract.trunc.mask = and i32 %.sroa.6.0.extract.shift, 255
  %i.mf = zext nneg i32 %.sroa.6.0.extract.trunc.mask to i64
  %.sroa.15.0.extract.trunc.mask = and i32 %.sroa.15.0.extract.shift, 255
  %i.mg = zext nneg i32 %.sroa.15.0.extract.trunc.mask to i64
  %.sroa.13.0.extract.trunc.mask = and i32 %.sroa.13.0.extract.shift, 255
  %i.mh = zext nneg i32 %.sroa.13.0.extract.trunc.mask to i64
  %.sroa.11.0.extract.trunc.mask = and i32 %.sroa.11.0.extract.shift, 255
  %i.mi = zext nneg i32 %.sroa.11.0.extract.trunc.mask to i64
  %i.mj = zext nneg i32 %.sroa.22.0.extract.shift to i64
  %11 = zext nneg i32 %.sroa.19.0.extract.shift to i64
  %12 = zext nneg i32 %.sroa.16.0.extract.shift to i64
  %i.mk = sext i32 %.1575847867969 to i64
  %i.ml = sext i32 %.1579841873963 to i64
  %i.mm = sext i32 %.1588835879957 to i64
  %i.mn = sext i32 %.1577844870966 to i64
  %i.mo = sext i32 %.1581838876960 to i64
  %i.mp = sext i32 %.1590832882954 to i64
  %i.mq = sext i32 %.1567 to i64
  %i.mr = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %.preheader1106, label %.loopexit

.preheader1104:                                   ; preds = %bb.aw
  %i.mt = load i32, ptr %i.be, align 4            ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.preheader1103.lr.ph, label %.loopexit

.preheader1103.lr.ph:                             ; preds = %.preheader1104
  %i.mv = sext i1 %.0.i894942 to i64
  %i.mw = sext i1 %.0.i792972 to i64
  %i.mx = zext nneg i32 %i.r to i64
  %i.my = zext nneg i32 %i.s to i64
  %.sroa.0.0.extract.trunc.mask742 = and i32 %7, 255
  %i.mz = zext nneg i32 %.sroa.0.0.extract.trunc.mask742 to i64
  %.sroa.8.0.extract.trunc.mask743 = and i32 %.sroa.8.0.extract.shift, 255
  %i.na = zext nneg i32 %.sroa.8.0.extract.trunc.mask743 to i64
  %.sroa.7.0.extract.trunc.mask744 = and i32 %.sroa.7.0.extract.shift, 255
  %i.nb = zext nneg i32 %.sroa.7.0.extract.trunc.mask744 to i64
  %.sroa.6.0.extract.trunc.mask745 = and i32 %.sroa.6.0.extract.shift, 255
  %i.nc = zext nneg i32 %.sroa.6.0.extract.trunc.mask745 to i64
  %.sroa.15.0.extract.trunc.mask746 = and i32 %.sroa.15.0.extract.shift, 255
  %i.nd = zext nneg i32 %.sroa.15.0.extract.trunc.mask746 to i64
  %.sroa.13.0.extract.trunc.mask747 = and i32 %.sroa.13.0.extract.shift, 255
  %i.ne = zext nneg i32 %.sroa.13.0.extract.trunc.mask747 to i64
  %.sroa.11.0.extract.trunc.mask748 = and i32 %.sroa.11.0.extract.shift, 255
  %i.nf = zext nneg i32 %.sroa.11.0.extract.trunc.mask748 to i64
  %i.ng = zext nneg i32 %.sroa.22.0.extract.shift to i64
  %13 = zext nneg i32 %.sroa.19.0.extract.shift to i64
  %14 = zext nneg i32 %.sroa.16.0.extract.shift to i64
  %i.nh = sext i32 %.1575847867969 to i64
  %i.ni = sext i32 %.1579841873963 to i64
  %i.nj = sext i32 %.1588835879957 to i64
  %i.nk = sext i32 %.1577844870966 to i64
  %i.nl = sext i32 %.1581838876960 to i64
  %i.nm = sext i32 %.1590832882954 to i64
  %i.nn = sext i32 %.1567 to i64
  %i.no = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.preheader1103, label %.loopexit

.preheader1101:                                   ; preds = %bb.aw
  %i.nq = load i32, ptr %i.be, align 4            ; 2 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.preheader1100.lr.ph, label %.loopexit

.preheader1100.lr.ph:                             ; preds = %.preheader1101
  %i.ns = sext i1 %.0.i894942 to i64
  %i.nt = sext i1 %.0.i792972 to i64
  %i.nu = zext nneg i32 %i.r to i64
  %i.nv = zext nneg i32 %i.s to i64
  %.sroa.0.0.extract.trunc.mask751 = and i32 %7, 255
  %i.nw = zext nneg i32 %.sroa.0.0.extract.trunc.mask751 to i64
  %.sroa.8.0.extract.trunc.mask752 = and i32 %.sroa.8.0.extract.shift, 255
  %i.nx = zext nneg i32 %.sroa.8.0.extract.trunc.mask752 to i64
  %.sroa.7.0.extract.trunc.mask753 = and i32 %.sroa.7.0.extract.shift, 255
  %i.ny = zext nneg i32 %.sroa.7.0.extract.trunc.mask753 to i64
  %.sroa.6.0.extract.trunc.mask754 = and i32 %.sroa.6.0.extract.shift, 255
  %i.nz = zext nneg i32 %.sroa.6.0.extract.trunc.mask754 to i64
  %.sroa.15.0.extract.trunc.mask755 = and i32 %.sroa.15.0.extract.shift, 255
  %i.oa = zext nneg i32 %.sroa.15.0.extract.trunc.mask755 to i64
  %.sroa.13.0.extract.trunc.mask756 = and i32 %.sroa.13.0.extract.shift, 255
  %i.ob = zext nneg i32 %.sroa.13.0.extract.trunc.mask756 to i64
  %.sroa.11.0.extract.trunc.mask757 = and i32 %.sroa.11.0.extract.shift, 255
  %i.oc = zext nneg i32 %.sroa.11.0.extract.trunc.mask757 to i64
  %i.od = zext nneg i32 %.sroa.22.0.extract.shift to i64
  %15 = zext nneg i32 %.sroa.19.0.extract.shift to i64
  %16 = zext nneg i32 %.sroa.16.0.extract.shift to i64
  %i.oe = sext i32 %.1575847867969 to i64
  %i.of = sext i32 %.1579841873963 to i64
  %i.og = sext i32 %.1588835879957 to i64
  %i.oh = sext i32 %.1577844870966 to i64
  %i.oi = sext i32 %.1581838876960 to i64
  %i.oj = sext i32 %.1590832882954 to i64
  %i.ok = sext i32 %.1567 to i64
  %.pre1238 = load i32, ptr %i.bb, align 4        ; 2 uses
  br label %.preheader1100

.preheader1098:                                   ; preds = %bb.aw
  %i.ol = load i32, ptr %i.be, align 4            ; 2 uses
  %i.om = icmp sgt i32 %i.ol, 0
  br i1 %i.om, label %.preheader1097.lr.ph, label %.loopexit

.preheader1097.lr.ph:                             ; preds = %.preheader1098
  %i.on = sext i1 %.0.i894942 to i64
  %i.oo = sext i1 %.0.i792972 to i64
  %i.op = zext nneg i32 %i.r to i64
  %i.oq = zext nneg i32 %i.s to i64
  %i.or = and i32 %7, 255
  %i.os = zext nneg i32 %i.or to i64
  %.sroa.8.0.extract.trunc.mask759 = and i32 %.sroa.8.0.extract.shift, 255
  %i.ot = zext nneg i32 %.sroa.8.0.extract.trunc.mask759 to i64
  %i.ou = and i32 %.sroa.7.0.extract.shift, 255
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = and i32 %.sroa.6.0.extract.shift, 255
  %i.ox = zext nneg i32 %i.ow to i64
  %.sroa.15.0.extract.trunc.mask760 = and i32 %.sroa.15.0.extract.shift, 255
  %i.oy = zext nneg i32 %.sroa.15.0.extract.trunc.mask760 to i64
  %i.oz = and i32 %.sroa.13.0.extract.shift, 255
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = and i32 %.sroa.11.0.extract.shift, 255
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = zext nneg i32 %.sroa.22.0.extract.shift to i64
  %17 = zext nneg i32 %.sroa.19.0.extract.shift to i64
  %18 = zext nneg i32 %.sroa.16.0.extract.shift to i64
  %i.pe = sext i32 %.1575847867969 to i64
  %i.pf = sext i32 %.1579841873963 to i64
  %i.pg = sext i32 %.1588835879957 to i64
  %i.ph = sext i32 %.1577844870966 to i64
  %i.pi = sext i32 %.1581838876960 to i64
  %i.pj = sext i32 %.1590832882954 to i64
  %i.pk = sext i32 %.1567 to i64
  %.pre1241 = load i32, ptr %i.bb, align 4        ; 2 uses
  br label %.preheader1097

.preheader1097:                                   ; preds = %.preheader1097.lr.ph, %._crit_edge1145
  %i.pl = phi i32 [ %i.ol, %.preheader1097.lr.ph ], [ %i.rh, %._crit_edge1145 ]
  %i.pm = phi i32 [ %.pre1241, %.preheader1097.lr.ph ], [ %i.ri, %._crit_edge1145 ] ; 2 uses
  %i.pn = phi i32 [ %.pre1241, %.preheader1097.lr.ph ], [ %i.rj, %._crit_edge1145 ] ; 2 uses
  %.61150 = phi ptr [ %.1564, %.preheader1097.lr.ph ], [ %i.rn, %._crit_edge1145 ] ; 2 uses
  %.55961149 = phi i64 [ %.0591829885951, %.preheader1097.lr.ph ], [ %i.rk, %._crit_edge1145 ] ; 2 uses
  %.56051148 = phi i64 [ %.0600826888948, %.preheader1097.lr.ph ], [ %i.rl, %._crit_edge1145 ] ; 2 uses
  %.56141147 = phi i64 [ %.0609823891945, %.preheader1097.lr.ph ], [ %i.rm, %._crit_edge1145 ] ; 2 uses
  %.06291146 = phi i32 [ 0, %.preheader1097.lr.ph ], [ %i.ro, %._crit_edge1145 ]
  %i.po = icmp sgt i32 %i.pn, 0
  br i1 %i.po, label %.lr.ph1144, label %._crit_edge1145

.lr.ph1144:                                       ; preds = %.preheader1097, %bb.az
  %i.pp = phi i32 [ %i.rb, %bb.az ], [ %i.pm, %.preheader1097 ] ; 2 uses
  %indvars.iv1211 = phi i64 [ %indvars.iv.next1212, %bb.az ], [ 0, %.preheader1097 ] ; 2 uses
  %.06261143 = phi i64 [ %i.re, %bb.az ], [ %.56141147, %.preheader1097 ] ; 6 uses
  %.06271142 = phi i64 [ %i.rd, %bb.az ], [ %.56051148, %.preheader1097 ] ; 6 uses
  %.06281141 = phi i64 [ %i.rc, %bb.az ], [ %.55961149, %.preheader1097 ] ; 6 uses
  %i.pq = sub i64 %i.on, %.06281141
  %i.pr = icmp slt i64 %i.pq, 0
  br i1 %i.pr, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.lr.ph1144
  %i.ps = sub i64 %i.oo, %.06271142
  %i.pt = icmp slt i64 %i.ps, 0
  %i.pu = sub i64 %.0.i797, %.06261143
  %i.pv = icmp slt i64 %i.pu, 0
  %or.cond1080 = select i1 %i.pt, i1 %i.pv, i1 false
  br i1 %or.cond1080, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.pw = shl nuw nsw i64 %indvars.iv1211, 2
  %i.px = getelementptr inbounds nuw i8, ptr %.61150, i64 %i.pw
  %i.py = mul nsw i64 %.06281141, %i.op
  %i.pz = mul nsw i64 %.06271142, %i.oq
  %i.qa = add nsw i64 %i.pz, %i.py
  %i.qb = mul nsw i64 %.06261143, %i.os
  %i.qc = add nsw i64 %i.qa, %i.qb
  %i.qd = sdiv i64 %i.qc, %spec.select
  %i.qe = trunc i64 %i.qd to i8
  %i.qf = mul nsw i64 %.06281141, %i.ot
  %i.qg = mul nsw i64 %.06271142, %i.ov
  %i.qh = add nsw i64 %i.qg, %i.qf
  %i.qi = mul nsw i64 %.06261143, %i.ox
  %i.qj = add nsw i64 %i.qh, %i.qi
  %i.qk = sdiv i64 %i.qj, %spec.select
  %i.ql = trunc i64 %i.qk to i8
  %i.qm = mul nsw i64 %.06281141, %i.oy
  %i.qn = mul nsw i64 %.06271142, %i.pa
  %i.qo = add nsw i64 %i.qn, %i.qm
  %i.qp = mul nsw i64 %.06261143, %i.pc
  %i.qq = add nsw i64 %i.qo, %i.qp
  %i.qr = sdiv i64 %i.qq, %spec.select
  %i.qs = trunc i64 %i.qr to i8
  %i.qt = mul nsw i64 %.06281141, %i.pd
  %i.qu = mul nsw i64 %.06271142, %17
  %i.qv = add nsw i64 %i.qu, %i.qt
  %i.qw = mul nsw i64 %.06261143, %18
  %i.qx = add nsw i64 %i.qv, %i.qw
  %i.qy = sdiv i64 %i.qx, %spec.select
  %i.qz = trunc i64 %i.qy to i8
  %i.ra = call i32 @SDL_MapRGBA_REAL(ptr noundef %.0632, ptr noundef %.0631, i8 noundef zeroext %i.qe, i8 noundef zeroext %i.ql, i8 noundef zeroext %i.qs, i8 noundef zeroext %i.qz) #8
  store i32 %i.ra, ptr %i.px, align 4
  %.pre1242 = load i32, ptr %i.bb, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.lr.ph1144
  %i.rb = phi i32 [ %.pre1242, %bb.ay ], [ %i.pp, %bb.ax ], [ %i.pp, %.lr.ph1144 ] ; 4 uses
  %i.rc = add nsw i64 %.06281141, %i.pe
  %i.rd = add nsw i64 %.06271142, %i.pf
  %i.re = add nsw i64 %.06261143, %i.pg
  %indvars.iv.next1212 = add nuw nsw i64 %indvars.iv1211, 1 ; 2 uses
  %i.rf = sext i32 %i.rb to i64
  %i.rg = icmp slt i64 %indvars.iv.next1212, %i.rf
  br i1 %i.rg, label %.lr.ph1144, label %._crit_edge1145.loopexit, !llvm.loop !13

._crit_edge1145.loopexit:                         ; preds = %bb.az
  %.pre1243 = load i32, ptr %i.be, align 4
  br label %._crit_edge1145

._crit_edge1145:                                  ; preds = %._crit_edge1145.loopexit, %.preheader1097
  %i.rh = phi i32 [ %.pre1243, %._crit_edge1145.loopexit ], [ %i.pl, %.preheader1097 ] ; 2 uses
  %i.ri = phi i32 [ %i.rb, %._crit_edge1145.loopexit ], [ %i.pm, %.preheader1097 ]
  %i.rj = phi i32 [ %i.rb, %._crit_edge1145.loopexit ], [ %i.pn, %.preheader1097 ]
  %i.rk = add nsw i64 %.55961149, %i.ph
  %i.rl = add nsw i64 %.56051148, %i.pi
  %i.rm = add nsw i64 %.56141147, %i.pj
  %i.rn = getelementptr inbounds i8, ptr %.61150, i64 %i.pk
  %i.ro = add nuw nsw i32 %.06291146, 1           ; 2 uses
  %i.rp = icmp slt i32 %i.ro, %i.rh
  br i1 %i.rp, label %.preheader1097, label %.loopexit, !llvm.loop !14

.preheader1100:                                   ; preds = %.preheader1100.lr.ph, %._crit_edge1134
  %i.rq = phi i32 [ %i.nq, %.preheader1100.lr.ph ], [ %i.to, %._crit_edge1134 ]
  %i.rr = phi i32 [ %.pre1238, %.preheader1100.lr.ph ], [ %i.tp, %._crit_edge1134 ] ; 2 uses
  %i.rs = phi i32 [ %.pre1238, %.preheader1100.lr.ph ], [ %i.tq, %._crit_edge1134 ] ; 2 uses
  %.71139 = phi ptr [ %.1564, %.preheader1100.lr.ph ], [ %i.tu, %._crit_edge1134 ] ; 2 uses
  %.65971138 = phi i64 [ %.0591829885951, %.preheader1100.lr.ph ], [ %i.tr, %._crit_edge1134 ] ; 2 uses
  %.66061137 = phi i64 [ %.0600826888948, %.preheader1100.lr.ph ], [ %i.ts, %._crit_edge1134 ] ; 2 uses
  %.66151136 = phi i64 [ %.0609823891945, %.preheader1100.lr.ph ], [ %i.tt, %._crit_edge1134 ] ; 2 uses
  %.06211135 = phi i32 [ 0, %.preheader1100.lr.ph ], [ %i.tv, %._crit_edge1134 ]
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.lr.ph1133, label %._crit_edge1134

.lr.ph1133:                                       ; preds = %.preheader1100, %bb.bc
  %i.ru = phi i32 [ %i.ti, %bb.bc ], [ %i.rr, %.preheader1100 ] ; 2 uses
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %bb.bc ], [ 0, %.preheader1100 ] ; 2 uses
  %.06181132 = phi i64 [ %i.tl, %bb.bc ], [ %.66151136, %.preheader1100 ] ; 6 uses
  %.06191131 = phi i64 [ %i.tk, %bb.bc ], [ %.66061137, %.preheader1100 ] ; 6 uses
  %.06201130 = phi i64 [ %i.tj, %bb.bc ], [ %.65971138, %.preheader1100 ] ; 6 uses
  %i.rv = sub i64 %i.ns, %.06201130
  %i.rw = icmp slt i64 %i.rv, 0
  br i1 %i.rw, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph1133
  %i.rx = sub i64 %i.nt, %.06191131
  %i.ry = icmp slt i64 %i.rx, 0
  %i.rz = sub i64 %.0.i797, %.06181132
  %i.sa = icmp slt i64 %i.rz, 0
  %or.cond1082 = select i1 %i.ry, i1 %i.sa, i1 false
  br i1 %or.cond1082, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sb = mul nuw nsw i64 %indvars.iv1208, 3
  %i.sc = getelementptr inbounds nuw i8, ptr %.71139, i64 %i.sb ; 3 uses
  %i.sd = mul nsw i64 %.06201130, %i.nu
  %i.se = mul nsw i64 %.06191131, %i.nv
  %i.sf = add nsw i64 %i.se, %i.sd
  %i.sg = mul nsw i64 %.06181132, %i.nw
  %i.sh = add nsw i64 %i.sf, %i.sg
  %i.si = sdiv i64 %i.sh, %spec.select
  %i.sj = trunc i64 %i.si to i8
  %i.sk = mul nsw i64 %.06201130, %i.nx
  %i.sl = mul nsw i64 %.06191131, %i.ny
  %i.sm = add nsw i64 %i.sl, %i.sk
  %i.sn = mul nsw i64 %.06181132, %i.nz
  %i.so = add nsw i64 %i.sm, %i.sn
  %i.sp = sdiv i64 %i.so, %spec.select
  %i.sq = trunc i64 %i.sp to i8
  %i.sr = mul nsw i64 %.06201130, %i.oa
  %i.ss = mul nsw i64 %.06191131, %i.ob
  %i.st = add nsw i64 %i.ss, %i.sr
  %i.su = mul nsw i64 %.06181132, %i.oc
  %i.sv = add nsw i64 %i.st, %i.su
  %i.sw = sdiv i64 %i.sv, %spec.select
  %i.sx = trunc i64 %i.sw to i8
  %i.sy = mul nsw i64 %.06201130, %i.od
  %i.sz = mul nsw i64 %.06191131, %15
  %i.ta = add nsw i64 %i.sz, %i.sy
  %i.tb = mul nsw i64 %.06181132, %16
  %i.tc = add nsw i64 %i.ta, %i.tb
  %i.td = sdiv i64 %i.tc, %spec.select
  %i.te = trunc i64 %i.td to i8
  %i.tf = call i32 @SDL_MapRGBA_REAL(ptr noundef %.0632, ptr noundef %.0631, i8 noundef zeroext %i.sj, i8 noundef zeroext %i.sq, i8 noundef zeroext %i.sx, i8 noundef zeroext %i.te) #8 ; 3 uses
  %.sroa.0702.0.extract.trunc = trunc i32 %i.tf to i8
  %.sroa.4.0.extract.shift = lshr i32 %i.tf, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i32 %i.tf, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  store i8 %.sroa.0702.0.extract.trunc, ptr %i.sc, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store i8 %.sroa.4.0.extract.trunc, ptr %i.tg, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.sc, i64 2
  store i8 %.sroa.5.0.extract.trunc, ptr %i.th, align 1
  %.pre1239 = load i32, ptr %i.bb, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph1133
  %i.ti = phi i32 [ %.pre1239, %bb.bb ], [ %i.ru, %bb.ba ], [ %i.ru, %.lr.ph1133 ] ; 4 uses
  %i.tj = add nsw i64 %.06201130, %i.oe
  %i.tk = add nsw i64 %.06191131, %i.of
  %i.tl = add nsw i64 %.06181132, %i.og
  %indvars.iv.next1209 = add nuw nsw i64 %indvars.iv1208, 1 ; 2 uses
  %i.tm = sext i32 %i.ti to i64
  %i.tn = icmp slt i64 %indvars.iv.next1209, %i.tm
  br i1 %i.tn, label %.lr.ph1133, label %._crit_edge1134.loopexit, !llvm.loop !15

._crit_edge1134.loopexit:                         ; preds = %bb.bc
  %.pre1240 = load i32, ptr %i.be, align 4
  br label %._crit_edge1134

._crit_edge1134:                                  ; preds = %._crit_edge1134.loopexit, %.preheader1100
  %i.to = phi i32 [ %.pre1240, %._crit_edge1134.loopexit ], [ %i.rq, %.preheader1100 ] ; 2 uses
  %i.tp = phi i32 [ %i.ti, %._crit_edge1134.loopexit ], [ %i.rr, %.preheader1100 ]
  %i.tq = phi i32 [ %i.ti, %._crit_edge1134.loopexit ], [ %i.rs, %.preheader1100 ]
  %i.tr = add nsw i64 %.65971138, %i.oh
  %i.ts = add nsw i64 %.66061137, %i.oi
  %i.tt = add nsw i64 %.66151136, %i.oj
  %i.tu = getelementptr inbounds i8, ptr %.71139, i64 %i.ok
  %i.tv = add nuw nsw i32 %.06211135, 1           ; 2 uses
  %i.tw = icmp slt i32 %i.tv, %i.to
  br i1 %i.tw, label %.preheader1100, label %.loopexit, !llvm.loop !16

.preheader1103:                                   ; preds = %.preheader1103.lr.ph, %._crit_edge1123
  %i.tx = phi i32 [ %i.vu, %._crit_edge1123 ], [ %i.mt, %.preheader1103.lr.ph ]
  %i.ty = phi i32 [ %i.vv, %._crit_edge1123 ], [ %i.no, %.preheader1103.lr.ph ] ; 2 uses
  %i.tz = phi i32 [ %i.vw, %._crit_edge1123 ], [ %i.no, %.preheader1103.lr.ph ] ; 2 uses
  %.81128 = phi ptr [ %i.wa, %._crit_edge1123 ], [ %.1564, %.preheader1103.lr.ph ] ; 2 uses
  %.05851127 = phi i32 [ %i.wb, %._crit_edge1123 ], [ 0, %.preheader1103.lr.ph ]
  %.75981126 = phi i64 [ %i.vx, %._crit_edge1123 ], [ %.0591829885951, %.preheader1103.lr.ph ] ; 2 uses
  %.76071125 = phi i64 [ %i.vy, %._crit_edge1123 ], [ %.0600826888948, %.preheader1103.lr.ph ] ; 2 uses
  %.76161124 = phi i64 [ %i.vz, %._crit_edge1123 ], [ %.0609823891945, %.preheader1103.lr.ph ] ; 2 uses
  %i.ua = icmp sgt i32 %i.tz, 0
  br i1 %i.ua, label %.lr.ph1122, label %._crit_edge1123

.lr.ph1122:                                       ; preds = %.preheader1103, %bb.bf
  %i.ub = phi i32 [ %i.vo, %bb.bf ], [ %i.ty, %.preheader1103 ] ; 2 uses
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %bb.bf ], [ 0, %.preheader1103 ] ; 2 uses
  %.05821121 = phi i64 [ %i.vr, %bb.bf ], [ %.76161124, %.preheader1103 ] ; 6 uses
  %.05831120 = phi i64 [ %i.vq, %bb.bf ], [ %.76071125, %.preheader1103 ] ; 6 uses
  %.05841119 = phi i64 [ %i.vp, %bb.bf ], [ %.75981126, %.preheader1103 ] ; 6 uses
  %i.uc = sub i64 %i.mv, %.05841119
  %i.ud = icmp slt i64 %i.uc, 0
  br i1 %i.ud, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.lr.ph1122
  %i.ue = sub i64 %i.mw, %.05831120
  %i.uf = icmp slt i64 %i.ue, 0
  %i.ug = sub i64 %.0.i797, %.05821121
  %i.uh = icmp slt i64 %i.ug, 0
  %or.cond1084 = select i1 %i.uf, i1 %i.uh, i1 false
  br i1 %or.cond1084, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ui = shl nuw nsw i64 %indvars.iv1205, 1
  %i.uj = getelementptr inbounds nuw i8, ptr %.81128, i64 %i.ui
  %i.uk = mul nsw i64 %.05841119, %i.mx
  %i.ul = mul nsw i64 %.05831120, %i.my
  %i.um = add nsw i64 %i.ul, %i.uk
  %i.un = mul nsw i64 %.05821121, %i.mz
  %i.uo = add nsw i64 %i.um, %i.un
  %i.up = sdiv i64 %i.uo, %spec.select
  %i.uq = trunc i64 %i.up to i8
  %i.ur = mul nsw i64 %.05841119, %i.na
  %i.us = mul nsw i64 %.05831120, %i.nb
  %i.ut = add nsw i64 %i.us, %i.ur
  %i.uu = mul nsw i64 %.05821121, %i.nc
  %i.uv = add nsw i64 %i.ut, %i.uu
  %i.uw = sdiv i64 %i.uv, %spec.select
  %i.ux = trunc i64 %i.uw to i8
  %i.uy = mul nsw i64 %.05841119, %i.nd
  %i.uz = mul nsw i64 %.05831120, %i.ne
  %i.va = add nsw i64 %i.uz, %i.uy
  %i.vb = mul nsw i64 %.05821121, %i.nf
  %i.vc = add nsw i64 %i.va, %i.vb
  %i.vd = sdiv i64 %i.vc, %spec.select
  %i.ve = trunc i64 %i.vd to i8
  %i.vf = mul nsw i64 %.05841119, %i.ng
  %i.vg = mul nsw i64 %.05831120, %13
  %i.vh = add nsw i64 %i.vg, %i.vf
  %i.vi = mul nsw i64 %.05821121, %14
  %i.vj = add nsw i64 %i.vh, %i.vi
  %i.vk = sdiv i64 %i.vj, %spec.select
  %i.vl = trunc i64 %i.vk to i8
  %i.vm = call i32 @SDL_MapRGBA_REAL(ptr noundef %.0632, ptr noundef %.0631, i8 noundef zeroext %i.uq, i8 noundef zeroext %i.ux, i8 noundef zeroext %i.ve, i8 noundef zeroext %i.vl) #8
  %i.vn = trunc i32 %i.vm to i16
  store i16 %i.vn, ptr %i.uj, align 2
  %.pre1236 = load i32, ptr %i.bb, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.lr.ph1122
  %i.vo = phi i32 [ %.pre1236, %bb.be ], [ %i.ub, %bb.bd ], [ %i.ub, %.lr.ph1122 ] ; 4 uses
  %i.vp = add nsw i64 %.05841119, %i.nh
  %i.vq = add nsw i64 %.05831120, %i.ni
  %i.vr = add nsw i64 %.05821121, %i.nj
  %indvars.iv.next1206 = add nuw nsw i64 %indvars.iv1205, 1 ; 2 uses
  %i.vs = sext i32 %i.vo to i64
  %i.vt = icmp slt i64 %indvars.iv.next1206, %i.vs
  br i1 %i.vt, label %.lr.ph1122, label %._crit_edge1123.loopexit, !llvm.loop !17

._crit_edge1123.loopexit:                         ; preds = %bb.bf
  %.pre1237 = load i32, ptr %i.be, align 4
  br label %._crit_edge1123

._crit_edge1123:                                  ; preds = %._crit_edge1123.loopexit, %.preheader1103
  %i.vu = phi i32 [ %.pre1237, %._crit_edge1123.loopexit ], [ %i.tx, %.preheader1103 ] ; 2 uses
  %i.vv = phi i32 [ %i.vo, %._crit_edge1123.loopexit ], [ %i.ty, %.preheader1103 ]
  %i.vw = phi i32 [ %i.vo, %._crit_edge1123.loopexit ], [ %i.tz, %.preheader1103 ]
  %i.vx = add nsw i64 %.75981126, %i.nk
  %i.vy = add nsw i64 %.76071125, %i.nl
  %i.vz = add nsw i64 %.76161124, %i.nm
  %i.wa = getelementptr inbounds i8, ptr %.81128, i64 %i.nn
  %i.wb = add nuw nsw i32 %.05851127, 1           ; 2 uses
  %i.wc = icmp slt i32 %i.wb, %i.vu
  br i1 %i.wc, label %.preheader1103, label %.loopexit, !llvm.loop !18

.preheader1106:                                   ; preds = %.preheader1106.lr.ph, %._crit_edge
  %i.wd = phi i32 [ %i.xz, %._crit_edge ], [ %i.lw, %.preheader1106.lr.ph ]
  %i.we = phi i32 [ %i.ya, %._crit_edge ], [ %i.mr, %.preheader1106.lr.ph ] ; 2 uses
  %i.wf = phi i32 [ %i.yb, %._crit_edge ], [ %i.mr, %.preheader1106.lr.ph ] ; 2 uses
  %.91117 = phi ptr [ %i.yf, %._crit_edge ], [ %.1564, %.preheader1106.lr.ph ] ; 2 uses
  %.05711116 = phi i32 [ %i.yg, %._crit_edge ], [ 0, %.preheader1106.lr.ph ]
  %.85991115 = phi i64 [ %i.yc, %._crit_edge ], [ %.0591829885951, %.preheader1106.lr.ph ] ; 2 uses
  %.86081114 = phi i64 [ %i.yd, %._crit_edge ], [ %.0600826888948, %.preheader1106.lr.ph ] ; 2 uses
  %.86171113 = phi i64 [ %i.ye, %._crit_edge ], [ %.0609823891945, %.preheader1106.lr.ph ] ; 2 uses
  %i.wg = icmp sgt i32 %i.wf, 0
  br i1 %i.wg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1106, %bb.bi
  %i.wh = phi i32 [ %i.xt, %bb.bi ], [ %i.we, %.preheader1106 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bi ], [ 0, %.preheader1106 ] ; 2 uses
  %.05681112 = phi i64 [ %i.xw, %bb.bi ], [ %.86171113, %.preheader1106 ] ; 6 uses
  %.05691111 = phi i64 [ %i.xv, %bb.bi ], [ %.86081114, %.preheader1106 ] ; 6 uses
  %.05701110 = phi i64 [ %i.xu, %bb.bi ], [ %.85991115, %.preheader1106 ] ; 6 uses
  %i.wi = sub i64 %i.ly, %.05701110
  %i.wj = icmp slt i64 %i.wi, 0
  br i1 %i.wj, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.lr.ph
  %i.wk = sub i64 %i.lz, %.05691111
  %i.wl = icmp slt i64 %i.wk, 0
  %i.wm = sub i64 %.0.i797, %.05681112
  %i.wn = icmp slt i64 %i.wm, 0
  %or.cond1086 = select i1 %i.wl, i1 %i.wn, i1 false
  br i1 %or.cond1086, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.wo = getelementptr inbounds nuw i8, ptr %.91117, i64 %indvars.iv
  %i.wp = mul nsw i64 %.05701110, %i.ma
  %i.wq = mul nsw i64 %.05691111, %i.mb
  %i.wr = add nsw i64 %i.wq, %i.wp
  %i.ws = mul nsw i64 %.05681112, %i.mc
  %i.wt = add nsw i64 %i.wr, %i.ws
  %i.wu = sdiv i64 %i.wt, %spec.select
  %i.wv = trunc i64 %i.wu to i8
  %i.ww = mul nsw i64 %.05701110, %i.md
  %i.wx = mul nsw i64 %.05691111, %i.me
  %i.wy = add nsw i64 %i.wx, %i.ww
  %i.wz = mul nsw i64 %.05681112, %i.mf
  %i.xa = add nsw i64 %i.wy, %i.wz
  %i.xb = sdiv i64 %i.xa, %spec.select
  %i.xc = trunc i64 %i.xb to i8
  %i.xd = mul nsw i64 %.05701110, %i.mg
  %i.xe = mul nsw i64 %.05691111, %i.mh
  %i.xf = add nsw i64 %i.xe, %i.xd
  %i.xg = mul nsw i64 %.05681112, %i.mi
  %i.xh = add nsw i64 %i.xf, %i.xg
  %i.xi = sdiv i64 %i.xh, %spec.select
  %i.xj = trunc i64 %i.xi to i8
  %i.xk = mul nsw i64 %.05701110, %i.mj
  %i.xl = mul nsw i64 %.05691111, %11
  %i.xm = add nsw i64 %i.xl, %i.xk
  %i.xn = mul nsw i64 %.05681112, %12
  %i.xo = add nsw i64 %i.xm, %i.xn
  %i.xp = sdiv i64 %i.xo, %spec.select
  %i.xq = trunc i64 %i.xp to i8
  %i.xr = call i32 @SDL_MapRGBA_REAL(ptr noundef %.0632, ptr noundef %.0631, i8 noundef zeroext %i.wv, i8 noundef zeroext %i.xc, i8 noundef zeroext %i.xj, i8 noundef zeroext %i.xq) #8
  %i.xs = trunc i32 %i.xr to i8
  store i8 %i.xs, ptr %i.wo, align 1
  %.pre1234 = load i32, ptr %i.bb, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.lr.ph
  %i.xt = phi i32 [ %.pre1234, %bb.bh ], [ %i.wh, %bb.bg ], [ %i.wh, %.lr.ph ] ; 4 uses
  %i.xu = add nsw i64 %.05701110, %i.mk
  %i.xv = add nsw i64 %.05691111, %i.ml
  %i.xw = add nsw i64 %.05681112, %i.mm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xx = sext i32 %i.xt to i64
  %i.xy = icmp slt i64 %indvars.iv.next, %i.xx
  br i1 %i.xy, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %bb.bi
  %.pre1235 = load i32, ptr %i.be, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1106
  %i.xz = phi i32 [ %.pre1235, %._crit_edge.loopexit ], [ %i.wd, %.preheader1106 ] ; 2 uses
  %i.ya = phi i32 [ %i.xt, %._crit_edge.loopexit ], [ %i.we, %.preheader1106 ]
  %i.yb = phi i32 [ %i.xt, %._crit_edge.loopexit ], [ %i.wf, %.preheader1106 ]
  %i.yc = add nsw i64 %.85991115, %i.mn
  %i.yd = add nsw i64 %.86081114, %i.mo
  %i.ye = add nsw i64 %.86171113, %i.mp
  %i.yf = getelementptr inbounds i8, ptr %.91117, i64 %i.mq
  %i.yg = add nuw nsw i32 %.05711116, 1           ; 2 uses
  %i.yh = icmp slt i32 %i.yg, %i.xz
  br i1 %i.yh, label %.preheader1106, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1123, %._crit_edge1134, %._crit_edge1145, %._crit_edge1156, %._crit_edge1167, %._crit_edge1178, %._crit_edge1189, %.preheader1103.lr.ph, %.preheader1106.lr.ph, %.preheader1107, %.preheader1104, %.preheader1101, %.preheader1098, %.preheader1095, %.preheader1092, %.preheader1089, %.preheader1087, %bb.aw, %bb.aj
  %.not762 = icmp eq ptr %.0623, null
  br i1 %.not762, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  %i.yi = call zeroext i1 @SDL_BlitSurface_REAL(ptr noundef nonnull %.0623, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %8) #8 ; 0 uses
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %.0623) #8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.n, %.loopexit, %bb.bj
  %.2 = phi i1 [ true, %bb.bj ], [ true, %.loopexit ], [ false, %bb.n ] ; 2 uses
  br i1 %.not, label %.thread1056, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %0) #8
  br label %.thread1056

.thread1056:                                      ; preds = %bb.g, %bb.bk, %bb.bl, %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ %.2, %bb.bl ], [ %.2, %bb.bk ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret i1 %.0
}

declare zeroext i1 @SDL_SurfaceValid(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_LockSurface_REAL(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_GetSurfaceClipRect_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SDL_CreateSurface_REAL(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_MapSurfaceRGBA_REAL(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_SetSurfaceBlendMode_REAL(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_MapRGBA_REAL(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @SDL_BlitSurface_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #3

declare void @SDL_UnlockSurface_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SW_BlitTriangle(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 %8, i32 %9, i32 %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %13 = alloca %struct.SDL_Rect, align 8          ; 9 uses
  %14 = alloca %struct.SDL_Rect, align 4          ; 4 uses
  %15 = alloca %struct.SDL_BlitInfo, align 8      ; 14 uses
  %.sroa.6539.0.extract.shift = lshr i32 %8, 8    ; 2 uses
  %.sroa.10.0.extract.shift = lshr i32 %8, 16     ; 2 uses
  %.sroa.14.0.extract.shift = lshr i32 %8, 24     ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %9, 8       ; 2 uses
  %.sroa.8529.0.extract.shift = lshr i32 %9, 16   ; 2 uses
  %.sroa.11.0.extract.shift = lshr i32 %9, 24     ; 3 uses
  %.sroa.4.0.extract.shift = lshr i32 %10, 8      ; 2 uses
  %.sroa.6.0.extract.shift = lshr i32 %10, 16     ; 2 uses
  %.sroa.8521.0.extract.shift = lshr i32 %10, 24  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.b = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #8
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %.thread998

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %4) #8
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %.thread998

bb.e:                                             ; preds = %bb.c
  %i.f = load i32, ptr %7, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.val717 = load i32, ptr %5, align 4            ; 2 uses
  %i.i = getelementptr i8, ptr %5, i64 4          ; 2 uses
  %.val718 = load i32, ptr %i.i, align 4          ; 2 uses
  %.val719 = load i32, ptr %6, align 4
  %i.j = getelementptr i8, ptr %6, i64 4          ; 2 uses
  %.val720 = load i32, ptr %i.j, align 4
  %i.k = sub nsw i32 %.val719, %.val717
  %i.l = sext i32 %i.k to i64
  %i.m = sub nsw i32 %i.h, %.val718
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.l, %i.n                   ; 2 uses
  %i.p = sub nsw i32 %.val720, %.val718
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i32 %i.f, %.val717
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.q, %i.s                   ; 2 uses
  %i.u = sub nsw i64 %i.o, %i.t                   ; 2 uses
  %i.v = icmp eq i64 %i.o, %i.t
  br i1 %i.v, label %.thread998, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %4, align 8
  %i.x = and i32 %i.w, 2
  %.not = icmp eq i32 %i.x, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %4) #8
  br i1 %i.y, label %bb.h, label %.thread998

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load i32, ptr %0, align 8
  %i.aa = and i32 %i.z, 2
  %.not675 = icmp eq i32 %i.aa, 0
  br i1 %.not675, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %0) #8
  br i1 %i.ab, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0572 = phi i32 [ 0, %bb.h ], [ 1, %bb.i ]     ; 16 uses
  %i.ac = and i32 %8, 255                         ; 4 uses
  %i.ad = and i32 %9, 255                         ; 2 uses
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = and i32 %.sroa.6539.0.extract.shift, 255 ; 2 uses
  %i.ag = and i32 %.sroa.5.0.extract.shift, 255
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = and i32 %.sroa.10.0.extract.shift, 255
  %i.aj = and i32 %.sroa.8529.0.extract.shift, 255 ; 2 uses
  %i.ak = icmp eq i32 %i.ai, %i.aj
  %i.al = icmp eq i32 %.sroa.14.0.extract.shift, %.sroa.11.0.extract.shift
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  %i.am = and i32 %10, 255
  %i.an = icmp eq i32 %i.ac, %i.am
  %or.cond690 = select i1 %or.cond, i1 %i.an, i1 false
  %i.ao = and i32 %.sroa.4.0.extract.shift, 255
  %i.ap = icmp eq i32 %i.af, %i.ao
  %or.cond692 = select i1 %or.cond690, i1 %i.ap, i1 false
  %i.aq = and i32 %.sroa.6.0.extract.shift, 255
  %i.ar = icmp eq i32 %i.aj, %i.aq
  %or.cond694 = select i1 %or.cond692, i1 %i.ar, i1 false
  %i.as = icmp eq i32 %.sroa.11.0.extract.shift, %.sroa.8521.0.extract.shift
  %spec.select705 = select i1 %or.cond694, i1 %i.as, i1 false
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.at = phi i1 [ false, %bb.j ], [ %spec.select705, %bb.l ], [ false, %bb.k ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 8 uses
  %i.ax = load <2 x i32>, ptr %5, align 4         ; 2 uses
  %i.ay = load <2 x i32>, ptr %6, align 4         ; 2 uses
  %i.az = load <2 x i32>, ptr %7, align 4         ; 2 uses
  %i.ba = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ay, <2 x i32> %i.az)
end_hunk_1
begin_hunk_2_@SDL_SW_BlitTriangle:bb.a
bb.cf:                                            ; preds = %bb.ce, %.lr.ph1038
  %i.sm = phi i32 [ %.pre1101, %bb.ce ], [ %i.qv, %.lr.ph1038 ] ; 4 uses
  %i.sn = add nsw i64 %.05621035, %i.jt
  %i.so = add nsw i64 %.05611036, %i.ju
  %i.sp = add nsw i64 %.05601037, %i.jv
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 1 ; 2 uses
  %i.sq = sext i32 %i.sm to i64
  %i.sr = icmp slt i64 %indvars.iv.next1092, %i.sq
  br i1 %i.sr, label %.lr.ph1038, label %._crit_edge1039.loopexit, !llvm.loop !25

._crit_edge1039.loopexit:                         ; preds = %bb.cf
  %.pre1102 = load i32, ptr %i.aw, align 4
  br label %._crit_edge1039

._crit_edge1039:                                  ; preds = %._crit_edge1039.loopexit, %.preheader1019
  %i.ss = phi i32 [ %.pre1102, %._crit_edge1039.loopexit ], [ %i.qr, %.preheader1019 ] ; 2 uses
  %i.st = phi i32 [ %i.sm, %._crit_edge1039.loopexit ], [ %i.qs, %.preheader1019 ]
  %i.su = phi i32 [ %i.sm, %._crit_edge1039.loopexit ], [ %i.qt, %.preheader1019 ]
  %i.sv = add nsw i64 %.35931041, %i.jw
  %i.sw = add nsw i64 %.35881042, %i.jx
  %i.sx = add nsw i64 %.31043, %i.jy
  %i.sy = getelementptr inbounds i8, ptr %.26101040, i64 %i.jz
  %i.sz = add nuw nsw i32 %.05631044, 1           ; 2 uses
  %i.ta = icmp slt i32 %i.sz, %i.ss
  br i1 %i.ta, label %.preheader1019, label %.loopexit, !llvm.loop !26

.preheader1022:                                   ; preds = %.preheader1022.lr.ph, %._crit_edge
  %i.tb = phi i32 [ %i.vb, %._crit_edge ], [ %i.io, %.preheader1022.lr.ph ]
  %i.tc = phi i32 [ %i.vc, %._crit_edge ], [ %i.jg, %.preheader1022.lr.ph ] ; 2 uses
  %i.td = phi i32 [ %i.vd, %._crit_edge ], [ %i.jg, %.preheader1022.lr.ph ] ; 2 uses
  %.05551033 = phi i32 [ %i.vi, %._crit_edge ], [ 0, %.preheader1022.lr.ph ]
  %.41032 = phi i64 [ %i.vg, %._crit_edge ], [ %.0583772793898, %.preheader1022.lr.ph ] ; 2 uses
  %.45891031 = phi i64 [ %i.vf, %._crit_edge ], [ %.0585769796895, %.preheader1022.lr.ph ] ; 2 uses
  %.45941030 = phi i64 [ %i.ve, %._crit_edge ], [ %.0590766799892, %.preheader1022.lr.ph ] ; 2 uses
  %.36111029 = phi ptr [ %i.vh, %._crit_edge ], [ %i.ce, %.preheader1022.lr.ph ] ; 2 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1022, %bb.cr
  %i.tf = phi i32 [ %i.uv, %bb.cr ], [ %i.tc, %.preheader1022 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cr ], [ 0, %.preheader1022 ] ; 2 uses
  %.05521028 = phi i64 [ %i.uy, %bb.cr ], [ %.41032, %.preheader1022 ] ; 2 uses
  %.05531027 = phi i64 [ %i.ux, %bb.cr ], [ %.45891031, %.preheader1022 ] ; 4 uses
  %.05541026 = phi i64 [ %i.uw, %bb.cr ], [ %.45941030, %.preheader1022 ] ; 4 uses
  %i.tg = sub i64 %i.iq, %.05541026
  %i.th = icmp slt i64 %i.tg, 0
  %i.ti = sub i64 %i.ir, %.05531027
  %i.tj = icmp slt i64 %i.ti, 0
  %or.cond1080 = select i1 %i.th, i1 %i.tj, i1 false
  %i.tk = sub i64 %i.is, %.05521028
  %i.tl = icmp slt i64 %i.tk, 0
  %or.cond1082 = select i1 %or.cond1080, i1 %i.tl, i1 false
  br i1 %or.cond1082, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %.lr.ph
  %i.tm = getelementptr inbounds nuw i8, ptr %.36111029, i64 %indvars.iv
  %i.tn = mul nsw i64 %.05541026, %i.it
  %i.to = mul nsw i64 %.05531027, %i.iu
  %i.tp = add i64 %i.tn, %i.gd
  %i.tq = add i64 %i.tp, %i.to
  %i.tr = sdiv i64 %i.tq, %spec.select695
  %i.ts = trunc i64 %i.tr to i32                  ; 4 uses
  %i.tt = mul nsw i64 %.05541026, %i.iv
  %i.tu = mul nsw i64 %.05531027, %i.iw
  %i.tv = add i64 %i.tt, %i.gg
  %i.tw = add i64 %i.tv, %i.tu
  %i.tx = sdiv i64 %i.tw, %spec.select695
  %i.ty = trunc i64 %i.tx to i32                  ; 4 uses
  switch i32 %11, label %bb.cl [
    i32 1, label %bb.ch
    i32 2, label %bb.cj
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.tz = icmp slt i32 %i.ts, 0
  br i1 %i.tz, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ua = load i32, ptr %i.ix, align 8
  %i.ub = add nsw i32 %i.ua, -1
  %spec.select703 = call i32 @llvm.smin.i32(i32 %i.ts, i32 %i.ub)
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  %i.uc = load i32, ptr %i.ix, align 8            ; 2 uses
  %i.ud = srem i32 %i.ts, %i.uc                   ; 3 uses
  %i.ue = icmp slt i32 %i.ud, 0
  br i1 %i.ue, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.uf = add nsw i32 %i.uc, -1
  %i.ug = add nsw i32 %i.uf, %i.ud
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %bb.cg, %bb.ch, %bb.ck, %bb.cj
  %.0551 = phi i32 [ %i.ts, %bb.cg ], [ 0, %bb.ch ], [ %spec.select703, %bb.ci ], [ %i.ug, %bb.ck ], [ %i.ud, %bb.cj ]
  switch i32 %12, label %bb.cq [
    i32 1, label %bb.cm
    i32 2, label %bb.co
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.uh = icmp slt i32 %i.ty, 0
  br i1 %i.uh, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ui = load i32, ptr %i.iy, align 4
  %i.uj = add nsw i32 %i.ui, -1
  %spec.select704 = call i32 @llvm.smin.i32(i32 %i.ty, i32 %i.uj)
  br label %bb.cq

bb.co:                                            ; preds = %bb.cl
  %i.uk = load i32, ptr %i.iy, align 4            ; 2 uses
  %i.ul = srem i32 %i.ty, %i.uk                   ; 3 uses
  %i.um = icmp slt i32 %i.ul, 0
  br i1 %i.um, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.un = add nsw i32 %i.uk, -1
  %i.uo = add nsw i32 %i.un, %i.ul
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.cl, %bb.cm, %bb.cp, %bb.co
  %.0550 = phi i32 [ %i.ty, %bb.cl ], [ 0, %bb.cm ], [ %spec.select704, %bb.cn ], [ %i.uo, %bb.cp ], [ %i.ul, %bb.co ]
  %i.up = mul nsw i32 %.0550, %i.ci
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds i8, ptr %i.cg, i64 %i.uq
  %i.us = sext i32 %.0551 to i64
  %i.ut = getelementptr inbounds i8, ptr %i.ur, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1
  store i8 %i.uu, ptr %i.tm, align 1
  %.pre = load i32, ptr %i.av, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph
  %i.uv = phi i32 [ %.pre, %bb.cq ], [ %i.tf, %.lr.ph ] ; 4 uses
  %i.uw = add nsw i64 %.05541026, %i.iz
  %i.ux = add nsw i64 %.05531027, %i.ja
  %i.uy = add nsw i64 %.05521028, %i.jb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.uz = sext i32 %i.uv to i64
  %i.va = icmp slt i64 %indvars.iv.next, %i.uz
  br i1 %i.va, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %bb.cr
  %.pre1100 = load i32, ptr %i.aw, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1022
  %i.vb = phi i32 [ %.pre1100, %._crit_edge.loopexit ], [ %i.tb, %.preheader1022 ] ; 2 uses
  %i.vc = phi i32 [ %i.uv, %._crit_edge.loopexit ], [ %i.tc, %.preheader1022 ]
  %i.vd = phi i32 [ %i.uv, %._crit_edge.loopexit ], [ %i.td, %.preheader1022 ]
  %i.ve = add nsw i64 %.45941030, %i.jc
  %i.vf = add nsw i64 %.45891031, %i.jd
  %i.vg = add nsw i64 %.41032, %i.je
  %i.vh = getelementptr inbounds i8, ptr %.36111029, i64 %i.jf
  %i.vi = add nuw nsw i32 %.05551033, 1           ; 2 uses
  %i.vj = icmp slt i32 %i.vi, %i.vb
  br i1 %i.vj, label %.preheader1022, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1039, %._crit_edge1050, %._crit_edge1061, %.preheader.lr.ph, %.preheader1016.lr.ph, %.preheader1019.lr.ph, %.preheader1022.lr.ph, %.preheader1023, %.preheader1020, %.preheader1017, %.preheader1015, %bb.av, %bb.i, %bb.au, %bb.aj, %bb.ah
  %.1573 = phi i32 [ %.0572, %bb.au ], [ 0, %bb.i ], [ %.0572, %.preheader1017 ], [ %.0572, %.preheader1020 ], [ %.0572, %.preheader1015 ], [ %.0572, %bb.av ], [ %.0572, %bb.aj ], [ %.0572, %bb.ah ], [ %.0572, %.preheader.lr.ph ], [ %.0572, %.preheader1023 ], [ %.0572, %._crit_edge1061 ], [ %.0572, %.preheader1016.lr.ph ], [ %.0572, %._crit_edge1050 ], [ %.0572, %.preheader1019.lr.ph ], [ %.0572, %._crit_edge1039 ], [ %.0572, %.preheader1022.lr.ph ], [ %.0572, %._crit_edge ]
  %.1.shrunk = phi i1 [ %.0557.shrunk, %bb.au ], [ false, %bb.i ], [ true, %.preheader1017 ], [ true, %.preheader1020 ], [ true, %.preheader1015 ], [ true, %bb.av ], [ %i.gk, %bb.aj ], [ %i.gi, %bb.ah ], [ true, %.preheader.lr.ph ], [ true, %.preheader1023 ], [ true, %._crit_edge1061 ], [ true, %.preheader1016.lr.ph ], [ true, %._crit_edge1050 ], [ true, %.preheader1019.lr.ph ], [ true, %._crit_edge1039 ], [ true, %.preheader1022.lr.ph ], [ true, %._crit_edge ] ; 2 uses
  br i1 %.not, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.loopexit
  call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %4) #8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.loopexit
  %.not688 = icmp eq i32 %.1573, 0
  br i1 %.not688, label %.thread998, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %0) #8
  br label %.thread998

.thread998:                                       ; preds = %bb.g, %bb.ct, %bb.cu, %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ %i.e, %bb.d ], [ true, %bb.e ], [ %i.c, %bb.b ], [ %.1.shrunk, %bb.cu ], [ %.1.shrunk, %bb.ct ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.0
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @SDL_GetSurfaceBlendMode_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @SDL_BlitTriangle_Slow(ptr nofree noundef nonnull readonly captures(none) %0, i64 %1, i64 %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef range(i32 -1, 1) %4, i32 noundef range(i32 -1, 1) %5, i32 noundef range(i32 -1, 1) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 %20, i32 %21, i32 %22, i1 noundef zeroext %23, i32 noundef %24, i32 noundef %25) unnamed_addr #5 {
bb.a:
  %.sroa.1.8.extract.trunc = trunc i64 %2 to i32
  %.sroa.3544.8.extract.shift = lshr i64 %2, 32
  %.sroa.3544.8.extract.trunc = trunc nuw i64 %.sroa.3544.8.extract.shift to i32 ; 2 uses
  %.sroa.2540.0.extract.shift = lshr i32 %20, 8
  %.sroa.3541.0.extract.shift = lshr i32 %20, 16
  %.sroa.4542.0.extract.shift = lshr i32 %20, 24
  %.sroa.2536.0.extract.shift = lshr i32 %21, 8
  %.sroa.3537.0.extract.shift = lshr i32 %21, 16
  %.sroa.4538.0.extract.shift = lshr i32 %21, 24
  %.sroa.2.0.extract.shift = lshr i32 %22, 8
  %.sroa.3.0.extract.shift = lshr i32 %22, 16
  %.sroa.4.0.extract.shift = lshr i32 %22, 24
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i8, ptr %i.f, align 8
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.m = load i8, ptr %i.l, align 2
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8              ; 14 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8              ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.w = load i8, ptr %i.v, align 1               ; 4 uses
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.z = load i8, ptr %i.y, align 1               ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = xor i32 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = load i32, ptr %i.s, align 4             ; 4 uses
  %.not.i = icmp eq i32 %i.aj, 0
  %.mask.i = and i32 %i.aj, -268435456
  %.not10.i = icmp eq i32 %.mask.i, 268435456
  %or.cond.i = or i1 %.not.i, %.not10.i
  br i1 %or.cond.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.ak = lshr i32 %i.aj, 24
  %i.al = and i32 %i.ak, 15
  %switch.tableidx = add nsw i32 %i.al, -1        ; 2 uses
  %i.am = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2055, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond1 = select i1 %i.am, i1 %switch.lobit, i1 false
  br i1 %or.cond1, label %detect_format.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = icmp eq i32 %i.aj, 372711428
  br i1 %i.an, label %detect_format.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.a
  %.not11.i = icmp eq i32 %i.ab, 0
  %..i = sext i1 %.not11.i to i32
  br label %detect_format.exit

detect_format.exit:                               ; preds = %bb.b, %bb.c, %.thread.i
  %.0.i = phi i32 [ 1, %bb.c ], [ %..i, %.thread.i ], [ -2, %bb.b ] ; 2 uses
  %i.ao = load i32, ptr %i.u, align 4             ; 4 uses
  %.not.i631 = icmp eq i32 %i.ao, 0
  %.mask.i632 = and i32 %i.ao, -268435456
  %.not10.i633 = icmp eq i32 %.mask.i632, 268435456
  %or.cond.i634 = or i1 %.not.i631, %.not10.i633
  br i1 %or.cond.i634, label %bb.d, label %.thread.i635

bb.d:                                             ; preds = %detect_format.exit
  %i.ap = lshr i32 %i.ao, 24
  %i.aq = and i32 %i.ap, 15
  %switch.tableidx2 = add nsw i32 %i.aq, -1       ; 2 uses
  %i.ar = icmp ult i32 %switch.tableidx2, 12
  %switch.maskindex3 = trunc nsw i32 %switch.tableidx2 to i16
  %switch.shifted4 = lshr i16 2055, %switch.maskindex3
  %switch.lobit5 = trunc i16 %switch.shifted4 to i1
  %or.cond6 = select i1 %i.ar, i1 %switch.lobit5, i1 false
  br i1 %or.cond6, label %detect_format.exit639, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = icmp eq i32 %i.ao, 372711428
  br i1 %i.as, label %detect_format.exit639, label %.thread.i635

.thread.i635:                                     ; preds = %bb.e, %detect_format.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %.not11.i636 = icmp eq i32 %i.au, 0
  %..i637 = sext i1 %.not11.i636 to i32
  br label %detect_format.exit639

detect_format.exit639:                            ; preds = %bb.d, %bb.e, %.thread.i635
  %.0.i638 = phi i32 [ 1, %bb.e ], [ %..i637, %.thread.i635 ], [ -2, %bb.d ] ; 2 uses
  %i.av = icmp sgt i32 %.sroa.3544.8.extract.trunc, 0
  br i1 %i.av, label %.lr.ph702, label %._crit_edge703.split

.lr.ph702:                                        ; preds = %detect_format.exit639
  %i.aw = icmp sgt i32 %.sroa.1.8.extract.trunc, 0
  %i.ax = xor i32 %4, -1
  %invariant.op = sext i32 %i.ax to i64
  %i.ay = xor i32 %5, -1
  %invariant.op691 = sext i32 %i.ay to i64
  %i.az = xor i32 %6, -1
  %invariant.op692 = sext i32 %i.az to i64
  %i.ba = sext i32 %13 to i64
  %i.bb = sext i32 %14 to i64
  %sext = shl i64 %1, 32
  %i.bc = ashr exact i64 %sext, 32
  %i.bd = zext nneg i32 %3 to i64                 ; 6 uses
  %i.be = sext i32 %15 to i64
  %i.bf = sext i32 %16 to i64
  %i.bg = ashr i64 %1, 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 25 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 29 ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 26 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 30 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 27 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 31 ; 3 uses
  %i.bw = and i32 %i.e, 1024
  %.not623646 = icmp eq i32 %i.bw, 0              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.by = icmp slt i32 %.0.i, 0
  %i.bz = icmp eq i8 %i.w, 3
  %i.ca = and i32 %i.e, 848                       ; 2 uses
  %.not624 = icmp eq i32 %i.ca, 0
  %i.cb = icmp eq i32 %.0.i638, 0                 ; 2 uses
  %i.cc = icmp slt i32 %.0.i638, 0                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 12 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 16 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 25 ; 12 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 29 ; 16 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 26 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 30 ; 16 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 27 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 31 ; 6 uses
  %i.cp = and i32 %20, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = and i32 %21, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = and i32 %22, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = and i32 %.sroa.2540.0.extract.shift, 255
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = and i32 %.sroa.2536.0.extract.shift, 255
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = and i32 %.sroa.2.0.extract.shift, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = and i32 %.sroa.3541.0.extract.shift, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = and i32 %.sroa.3537.0.extract.shift, 255
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = and i32 %.sroa.3.0.extract.shift, 255
  %26 = zext nneg i32 %i.df to i64
  %27 = zext nneg i32 %.sroa.4542.0.extract.shift to i64
  %28 = zext nneg i32 %.sroa.4538.0.extract.shift to i64
  %i.dg = zext nneg i32 %.sroa.4.0.extract.shift to i64
  %i.dh = and i32 %i.e, 1
  %.not625 = icmp eq i32 %i.dh, 0
  %i.di = and i32 %i.e, 2
  %.not626 = icmp eq i32 %i.di, 0
  %i.dj = and i32 %i.e, 80
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = sext i32 %7 to i64
  %i.dm = sext i32 %9 to i64
  %i.dn = sext i32 %11 to i64
  %i.do = sext i32 %i.ai to i64
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge703.split

.lr.ph.preheader:                                 ; preds = %.lr.ph702
  %i.dp = zext i8 %i.z to i64
  %i.dq = sext i32 %17 to i64
  %i.dr = sext i32 %8 to i64
  %i.ds = sext i32 %18 to i64
  %i.dt = sext i32 %10 to i64
  %i.du = sext i32 %19 to i64
  %i.dv = sext i32 %12 to i64
  %wide.trip.count = and i64 %2, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv711 = phi i64 [ %i.du, %.lr.ph.preheader ], [ %indvars.iv.next712, %._crit_edge ] ; 2 uses
  %indvars.iv709 = phi i64 [ %i.ds, %.lr.ph.preheader ], [ %indvars.iv.next710, %._crit_edge ] ; 2 uses
  %indvars.iv707 = phi i64 [ %i.dq, %.lr.ph.preheader ], [ %indvars.iv.next708, %._crit_edge ] ; 2 uses
  %.0549698 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %.5, %._crit_edge ]
  %.0550697 = phi i32 [ %i.k, %.lr.ph.preheader ], [ %.5555, %._crit_edge ]
  %.0556696 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %.5561, %._crit_edge ]
  %.0562695 = phi i32 [ %i.q, %.lr.ph.preheader ], [ %.5567, %._crit_edge ]
  %.0584694 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aqk, %._crit_edge ]
  %.0586693 = phi ptr [ %i.ag, %.lr.ph.preheader ], [ %i.aqj, %._crit_edge ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.bx
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bx ] ; 2 uses
  %.1687 = phi i32 [ %.0549698, %.lr.ph ], [ %.5, %bb.bx ] ; 3 uses
  %.1551686 = phi i32 [ %.0550697, %.lr.ph ], [ %.5555, %bb.bx ] ; 3 uses
  %.1557685 = phi i32 [ %.0556696, %.lr.ph ], [ %.5561, %bb.bx ] ; 3 uses
  %.1563684 = phi i32 [ %.0562695, %.lr.ph ], [ %.5567, %bb.bx ] ; 3 uses
  %.0578682 = phi i64 [ %indvars.iv711, %.lr.ph ], [ %.1579, %bb.bx ] ; 7 uses
  %.0580680 = phi i64 [ %indvars.iv709, %.lr.ph ], [ %.1581, %bb.bx ] ; 9 uses
  %.0582678 = phi i64 [ %indvars.iv707, %.lr.ph ], [ %.1583, %bb.bx ] ; 9 uses
  %i.dw = icmp sgt i64 %.0582678, %invariant.op
  %i.dx = icmp sgt i64 %.0580680, %invariant.op691
  %or.cond704 = select i1 %i.dw, i1 %i.dx, i1 false
  %i.dy = icmp sgt i64 %.0578682, %invariant.op692
  %or.cond705 = select i1 %or.cond704, i1 %i.dy, i1 false
  br i1 %or.cond705, label %bb.g, label %.thread670

bb.g:                                             ; preds = %bb.f
  %i.dz = mul nuw nsw i64 %indvars.iv, %i.dp
  %i.ea = getelementptr inbounds nuw i8, ptr %.0586693, i64 %i.dz ; 26 uses
  %i.eb = mul nsw i64 %.0582678, %i.ba
  %i.ec = mul nsw i64 %.0580680, %i.bb
  %i.ed = add i64 %i.eb, %i.bc
  %i.ee = add i64 %i.ed, %i.ec
  %i.ef = sdiv i64 %i.ee, %i.bd
  %i.eg = trunc i64 %i.ef to i32                  ; 4 uses
  %i.eh = mul nsw i64 %.0582678, %i.be
  %i.ei = mul nsw i64 %.0580680, %i.bf
  %i.ej = add i64 %i.eh, %i.bg
  %i.ek = add i64 %i.ej, %i.ei
  %i.el = sdiv i64 %i.ek, %i.bd
  %i.em = trunc i64 %i.el to i32                  ; 4 uses
  switch i32 %24, label %bb.l [
    i32 1, label %bb.h
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.en = icmp slt i32 %i.eg, 0
  br i1 %i.en, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eo = load i32, ptr %i.bh, align 8
  %i.ep = add nsw i32 %i.eo, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.ep)
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.eq = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.er = srem i32 %i.eg, %i.eq                   ; 3 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.et = add nsw i32 %i.eq, -1
  %i.eu = add nsw i32 %i.et, %i.er
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.g, %bb.h, %bb.k, %bb.j
  %.0577 = phi i32 [ %i.eg, %bb.g ], [ 0, %bb.h ], [ %spec.select, %bb.i ], [ %i.eu, %bb.k ], [ %i.er, %bb.j ]
  switch i32 %25, label %bb.q [
    i32 1, label %bb.m
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ev = icmp slt i32 %i.em, 0
  br i1 %i.ev, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ew = load i32, ptr %i.bi, align 4
  %i.ex = add nsw i32 %i.ew, -1
  %spec.select630 = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %i.ex)
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ey = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.ez = srem i32 %i.em, %i.ey                   ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fb = add nsw i32 %i.ey, -1
  %i.fc = add nsw i32 %i.fb, %i.ez
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.m, %bb.p, %bb.o
  %.0576 = phi i32 [ %i.em, %bb.l ], [ 0, %bb.m ], [ %spec.select630, %bb.n ], [ %i.fc, %bb.p ], [ %i.ez, %bb.o ]
  %i.fd = load ptr, ptr %i.bj, align 8
  %i.fe = load i32, ptr %i.bk, align 8
  %i.ff = mul nsw i32 %i.fe, %.0576
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.fd, i64 %i.fg
  %i.fi = mul nsw i32 %.0577, %i.x
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.fj ; 14 uses
  switch i32 %.0.i, label %bb.w [
    i32 -2, label %bb.r
    i32 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.fl = load i8, ptr %i.fk, align 1             ; 2 uses
  %i.fm = zext i8 %i.fl to i32
  %i.fn = load ptr, ptr %i.bx, align 8
  %i.fo = zext i8 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo ; 4 uses
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 3
  %i.fz = load i8, ptr %i.fy, align 1
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  switch i8 %i.w, label %bb.ae [
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %.thread
    i8 4, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ga = load i8, ptr %i.fk, align 1
  %i.gb = zext i8 %i.ga to i32                    ; 5 uses
  %i.gc = load i8, ptr %i.bl, align 4
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load i32, ptr %i.bm, align 4
  %i.gh = and i32 %i.gg, %i.gb
  %i.gi = load i8, ptr %i.bn, align 4
  %i.gj = zext nneg i8 %i.gi to i32
  %i.gk = lshr i32 %i.gh, %i.gj
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i32
  %i.gp = load i8, ptr %i.bo, align 1
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load i32, ptr %i.bp, align 4
  %i.gu = and i32 %i.gt, %i.gb
  %i.gv = load i8, ptr %i.bq, align 1
  %i.gw = zext nneg i8 %i.gv to i32
  %i.gx = lshr i32 %i.gu, %i.gw
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = zext i8 %i.ha to i32
  %i.hc = load i8, ptr %i.br, align 2
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load i32, ptr %i.bs, align 4
  %i.hh = and i32 %i.hg, %i.gb
  %i.hi = load i8, ptr %i.bt, align 2
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = lshr i32 %i.hh, %i.hj
  %i.hl = zext nneg i32 %i.hk to i64
end_hunk_2
begin_hunk_3_@SDL_BlitTriangle_Slow:bb.a
  br i1 %i.cc, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  switch i8 %i.z, label %bb.au [
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.as
    i8 4, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.zm = load i8, ptr %i.ea, align 1
  %i.zn = zext i8 %i.zm to i32                    ; 3 uses
  %i.zo = load i8, ptr %i.cd, align 4
  %i.zp = zext i8 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zp
  %i.zr = load ptr, ptr %i.zq, align 8
  %i.zs = load i32, ptr %i.ce, align 4
  %i.zt = and i32 %i.zs, %i.zn
  %i.zu = load i8, ptr %i.cf, align 4
  %i.zv = zext nneg i8 %i.zu to i32
  %i.zw = lshr i32 %i.zt, %i.zv
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1
  %i.aaa = load i8, ptr %i.cg, align 1
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aab
  %i.aad = load ptr, ptr %i.aac, align 8
  %i.aae = load i32, ptr %i.ch, align 4
  %i.aaf = and i32 %i.aae, %i.zn
  %i.aag = load i8, ptr %i.ci, align 1
  %i.aah = zext nneg i8 %i.aag to i32
  %i.aai = lshr i32 %i.aaf, %i.aah
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1
  %i.aam = load i8, ptr %i.cj, align 2
  %i.aan = zext i8 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aan
  %i.aap = load ptr, ptr %i.aao, align 8
  %i.aaq = load i32, ptr %i.ck, align 4
  %i.aar = and i32 %i.aaq, %i.zn
  %i.aas = load i8, ptr %i.cl, align 2
  %i.aat = zext nneg i8 %i.aas to i32
  %i.aau = lshr i32 %i.aar, %i.aat
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.aay = load i16, ptr %i.ea, align 2
  %i.aaz = zext i16 %i.aay to i32                 ; 3 uses
  %i.aba = load i8, ptr %i.cd, align 4
  %i.abb = zext i8 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abb
  %i.abd = load ptr, ptr %i.abc, align 8
  %i.abe = load i32, ptr %i.ce, align 4
  %i.abf = and i32 %i.abe, %i.aaz
  %i.abg = load i8, ptr %i.cf, align 4
  %i.abh = zext nneg i8 %i.abg to i32
  %i.abi = lshr i32 %i.abf, %i.abh
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1
  %i.abm = load i8, ptr %i.cg, align 1
  %i.abn = zext i8 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abn
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = load i32, ptr %i.ch, align 4
  %i.abr = and i32 %i.abq, %i.aaz
  %i.abs = load i8, ptr %i.ci, align 1
  %i.abt = zext nneg i8 %i.abs to i32
  %i.abu = lshr i32 %i.abr, %i.abt
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1
  %i.aby = load i8, ptr %i.cj, align 2
  %i.abz = zext i8 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abz
  %i.acb = load ptr, ptr %i.aca, align 8
  %i.acc = load i32, ptr %i.ck, align 4
  %i.acd = and i32 %i.acc, %i.aaz
  %i.ace = load i8, ptr %i.cl, align 2
  %i.acf = zext nneg i8 %i.ace to i32
  %i.acg = lshr i32 %i.acd, %i.acf
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.ack = load i8, ptr %i.cf, align 4
  %i.acl = lshr i8 %i.ack, 3
  %i.acm = zext nneg i8 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1
  %i.acp = load i8, ptr %i.ci, align 1
  %i.acq = lshr i8 %i.acp, 3
  %i.acr = zext nneg i8 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1
  %i.acu = load i8, ptr %i.cl, align 2
  %i.acv = lshr i8 %i.acu, 3
  %i.acw = zext nneg i8 %i.acv to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.acz = load i32, ptr %i.ea, align 4           ; 3 uses
  %i.ada = load i8, ptr %i.cd, align 4
  %i.adb = zext i8 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adb
  %i.add = load ptr, ptr %i.adc, align 8
  %i.ade = load i32, ptr %i.ce, align 4
  %i.adf = and i32 %i.ade, %i.acz
  %i.adg = load i8, ptr %i.cf, align 4
  %i.adh = zext nneg i8 %i.adg to i32
  %i.adi = lshr i32 %i.adf, %i.adh
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.adj
  %i.adl = load i8, ptr %i.adk, align 1
  %i.adm = load i8, ptr %i.cg, align 1
  %i.adn = zext i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adn
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = load i32, ptr %i.ch, align 4
  %i.adr = and i32 %i.adq, %i.acz
  %i.ads = load i8, ptr %i.ci, align 1
  %i.adt = zext nneg i8 %i.ads to i32
  %i.adu = lshr i32 %i.adr, %i.adt
  %i.adv = zext i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adv
  %i.adx = load i8, ptr %i.adw, align 1
  %i.ady = load i8, ptr %i.cj, align 2
  %i.adz = zext i8 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adz
  %i.aeb = load ptr, ptr %i.aea, align 8
  %i.aec = load i32, ptr %i.ck, align 4
  %i.aed = and i32 %i.aec, %i.acz
  %i.aee = load i8, ptr %i.cl, align 2
  %i.aef = zext nneg i8 %i.aee to i32
  %i.aeg = lshr i32 %i.aed, %i.aef
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aeh
  %i.aej = load i8, ptr %i.aei, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0595.shrunk = phi i8 [ %i.adl, %bb.at ], [ %i.zz, %bb.aq ], [ %i.abl, %bb.ar ], [ %i.aco, %bb.as ], [ 0, %bb.ap ]
  %.0592.shrunk = phi i8 [ %i.adx, %bb.at ], [ %i.aal, %bb.aq ], [ %i.abx, %bb.ar ], [ %i.act, %bb.as ], [ 0, %bb.ap ]
  %.0589.shrunk = phi i8 [ %i.aej, %bb.at ], [ %i.aax, %bb.aq ], [ %i.acj, %bb.ar ], [ %i.acy, %bb.as ], [ 0, %bb.ap ]
  %.0589 = zext i8 %.0589.shrunk to i32
  %.0592 = zext i8 %.0592.shrunk to i32
  %.0595 = zext i8 %.0595.shrunk to i32
  br label %bb.aw

bb.av:                                            ; preds = %bb.ao
  %i.aek = load i32, ptr %i.ea, align 4           ; 4 uses
  %i.ael = lshr i32 %i.aek, 22
  %i.aem = and i32 %i.ael, 255
  %i.aen = lshr i32 %i.aek, 12
  %i.aeo = and i32 %i.aen, 255
  %i.aep = lshr i32 %i.aek, 2
  %i.aeq = and i32 %i.aep, 255
  %i.aer = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 16), align 16
  %i.aes = lshr i32 %i.aek, 30
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ah, %bb.aj, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.av, %bb.au
  %.1596 = phi i32 [ 0, %bb.aj ], [ %i.tg, %bb.ak ], [ %i.vh, %bb.al ], [ %i.wz, %bb.am ], [ %i.xz, %bb.an ], [ %.0595, %bb.au ], [ %i.aem, %bb.av ], [ 0, %bb.ah ] ; 5 uses
  %.1593 = phi i32 [ 0, %bb.aj ], [ %i.tt, %bb.ak ], [ %i.vu, %bb.al ], [ %i.xf, %bb.am ], [ %i.ym, %bb.an ], [ %.0592, %bb.au ], [ %i.aeo, %bb.av ], [ 0, %bb.ah ] ; 5 uses
  %.1590 = phi i32 [ 0, %bb.aj ], [ %i.ug, %bb.ak ], [ %i.wh, %bb.al ], [ %i.xl, %bb.am ], [ %i.yz, %bb.an ], [ %.0589, %bb.au ], [ %i.aeq, %bb.av ], [ 0, %bb.ah ] ; 5 uses
  %.0587.shrunk = phi i8 [ 0, %bb.aj ], [ %i.us, %bb.ak ], [ %i.wt, %bb.al ], [ -1, %bb.am ], [ %i.zl, %bb.an ], [ -1, %bb.au ], [ %i.aev, %bb.av ], [ 0, %bb.ah ]
  %.0587 = zext i8 %.0587.shrunk to i32           ; 5 uses
  br i1 %23, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aew = mul nsw i64 %.0582678, %i.cq
  %i.aex = mul nsw i64 %.0580680, %i.cs
  %i.aey = add nuw nsw i64 %i.aex, %i.aew
  %i.aez = mul nsw i64 %.0578682, %i.cu
  %i.afa = add nuw nsw i64 %i.aey, %i.aez
  %i.afb = udiv i64 %i.afa, %i.bd
  %i.afc = trunc i64 %i.afb to i32
  %i.afd = mul nsw i64 %.0582678, %i.cw
  %i.afe = mul nsw i64 %.0580680, %i.cy
  %i.aff = add nuw nsw i64 %i.afe, %i.afd
  %i.afg = mul nsw i64 %.0578682, %i.da
  %i.afh = add nuw nsw i64 %i.aff, %i.afg
  %i.afi = udiv i64 %i.afh, %i.bd
  %i.afj = trunc i64 %i.afi to i32
  %i.afk = mul nsw i64 %.0582678, %i.dc
  %i.afl = mul nsw i64 %.0580680, %i.de
  %i.afm = add nuw nsw i64 %i.afl, %i.afk
  %i.afn = mul nsw i64 %.0578682, %26
  %i.afo = add nuw nsw i64 %i.afm, %i.afn
  %i.afp = udiv i64 %i.afo, %i.bd
  %i.afq = trunc i64 %i.afp to i32
  %i.afr = mul nsw i64 %.0582678, %27
  %i.afs = mul nsw i64 %.0580680, %28
  %i.aft = add nuw nsw i64 %i.afs, %i.afr
  %i.afu = mul nsw i64 %.0578682, %i.dg
  %i.afv = add nuw nsw i64 %i.aft, %i.afu
  %i.afw = udiv i64 %i.afv, %i.bd
  %i.afx = trunc i64 %i.afw to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2564 = phi i32 [ %.1563684, %bb.aw ], [ %i.afx, %bb.ax ] ; 12 uses
  %.2558 = phi i32 [ %.1557685, %bb.aw ], [ %i.afq, %bb.ax ] ; 12 uses
  %.2552 = phi i32 [ %.1551686, %bb.aw ], [ %i.afj, %bb.ax ] ; 12 uses
  %.2 = phi i32 [ %.1687, %bb.aw ], [ %i.afc, %bb.ax ] ; 12 uses
  br i1 %.not625, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.afy = mul i32 %.2, %.1573652
  %i.afz = udiv i32 %i.afy, 255
  %i.aga = mul i32 %.2552, %.1605648
  %i.agb = udiv i32 %i.aga, 255
  %i.agc = mul i32 %.2558, %.1601650
  %i.agd = udiv i32 %i.agc, 255
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.2606 = phi i32 [ %i.agb, %bb.az ], [ %.1605648, %bb.ay ] ; 2 uses
  %.2602 = phi i32 [ %i.agd, %bb.az ], [ %.1601650, %bb.ay ] ; 2 uses
  %.2574 = phi i32 [ %i.afz, %bb.az ], [ %.1573652, %bb.ay ] ; 2 uses
  br i1 %.not626, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.age = mul i32 %.2564, %.0598655
  %i.agf = udiv i32 %i.age, 255
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1599 = phi i32 [ %i.agf, %bb.bb ], [ %.0598655, %bb.ba ] ; 8 uses
  %i.agg = icmp samesign ult i32 %.1599, 255
  %or.cond = select i1 %i.dk, i1 %i.agg, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.agh = mul nuw i32 %.1599, %.2574
  %i.agi = udiv i32 %i.agh, 255
  %i.agj = mul nuw i32 %.1599, %.2606
  %i.agk = udiv i32 %i.agj, 255
  %i.agl = mul nuw i32 %.1599, %.2602
  %i.agm = udiv i32 %i.agl, 255
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3607 = phi i32 [ %i.agk, %bb.bd ], [ %.2606, %bb.bc ] ; 5 uses
  %.3603 = phi i32 [ %i.agm, %bb.bd ], [ %.2602, %bb.bc ] ; 5 uses
  %.3575 = phi i32 [ %i.agi, %bb.bd ], [ %.2574, %bb.bc ] ; 5 uses
  switch i32 %i.ca, label %bb.bk [
    i32 0, label %bb.bf
    i32 16, label %bb.bg
    i32 64, label %bb.bh
    i32 256, label %bb.bi
    i32 512, label %bb.bj
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.agn = sub nsw i32 255, %.1599                ; 4 uses
  %i.ago = mul i32 %i.agn, %.0587
  %i.agp = mul i32 %i.agn, %.1590
  %i.agq = mul i32 %i.agn, %.1593
  %i.agr = mul i32 %i.agn, %.1596
  %i.ags = insertelement <4 x i32> poison, i32 %i.agr, i64 0
  %i.agt = insertelement <4 x i32> %i.ags, i32 %i.agq, i64 1
  %i.agu = insertelement <4 x i32> %i.agt, i32 %i.agp, i64 2
  %i.agv = insertelement <4 x i32> %i.agu, i32 %i.ago, i64 3
  %i.agw = udiv <4 x i32> %i.agv, splat (i32 255) ; 4 uses
  %i.agx = extractelement <4 x i32> %i.agw, i64 0
  %i.agy = add nuw nsw i32 %.3575, %i.agx
  %i.agz = extractelement <4 x i32> %i.agw, i64 1
  %i.aha = add nuw nsw i32 %.3607, %i.agz
  %i.ahb = extractelement <4 x i32> %i.agw, i64 2
  %i.ahc = add nuw nsw i32 %.3603, %i.ahb
  %i.ahd = extractelement <4 x i32> %i.agw, i64 3
  %i.ahe = add nuw nsw i32 %i.ahd, %.1599
  br label %bb.bk

bb.bh:                                            ; preds = %bb.be
  %i.ahf = add nuw nsw i32 %.3575, %.1596
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.ahf, i32 255)
  %i.ahg = add nuw nsw i32 %.3607, %.1593
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.ahg, i32 255)
  %i.ahh = add nuw nsw i32 %.3603, %.1590
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %i.ahh, i32 255)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.ahi = mul nuw i32 %.3575, %.1596
  %i.ahj = udiv i32 %i.ahi, 255
  %i.ahk = mul nuw i32 %.3607, %.1593
  %i.ahl = udiv i32 %i.ahk, 255
  %i.ahm = mul nuw i32 %.3603, %.1590
  %i.ahn = udiv i32 %i.ahm, 255
  br label %bb.bk

bb.bj:                                            ; preds = %bb.be
  %i.aho = sub nsw i32 255, %.1599                ; 3 uses
  %i.ahp = add nsw i32 %.3575, %i.aho
  %i.ahq = mul i32 %i.ahp, %.1596
  %i.ahr = udiv i32 %i.ahq, 255
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %i.ahr, i32 255)
  %i.ahs = add nsw i32 %.3607, %i.aho
  %i.aht = mul i32 %i.ahs, %.1593
  %i.ahu = udiv i32 %i.aht, 255
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.ahu, i32 255)
  %i.ahv = add nsw i32 %.3603, %i.aho
  %i.ahw = mul i32 %i.ahv, %.1590
  %i.ahx = udiv i32 %i.ahw, 255
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.ahx, i32 255)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.2597 = phi i32 [ %.1596, %bb.be ], [ %.3575, %bb.bf ], [ %i.agy, %bb.bg ], [ %spec.store.select, %bb.bh ], [ %i.ahj, %bb.bi ], [ %spec.store.select2, %bb.bj ] ; 10 uses
  %.2594 = phi i32 [ %.1593, %bb.be ], [ %.3607, %bb.bf ], [ %i.aha, %bb.bg ], [ %spec.store.select6, %bb.bh ], [ %i.ahl, %bb.bi ], [ %spec.store.select7, %bb.bj ] ; 10 uses
  %.2591 = phi i32 [ %.1590, %bb.be ], [ %.3603, %bb.bf ], [ %i.ahc, %bb.bg ], [ %spec.store.select1, %bb.bh ], [ %i.ahn, %bb.bi ], [ %spec.store.select3, %bb.bj ] ; 10 uses
  %.1588 = phi i32 [ %.0587, %bb.be ], [ %.1599, %bb.bf ], [ %i.ahe, %bb.bg ], [ %.0587, %bb.bh ], [ %.0587, %bb.bi ], [ %.0587, %bb.bj ] ; 4 uses
  br i1 %i.cb, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  switch i8 %i.z, label %.thread670 [
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %bb.bo
    i8 4, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ahy = load i8, ptr %i.cd, align 4
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = sub nsw i32 8, %i.ahz
  %i.aib = lshr i32 %.2597, %i.aia
  %i.aic = load i8, ptr %i.cf, align 4
  %i.aid = zext nneg i8 %i.aic to i32
  %i.aie = shl i32 %i.aib, %i.aid
  %i.aif = load i8, ptr %i.cg, align 1
  %i.aig = zext i8 %i.aif to i32
  %i.aih = sub nsw i32 8, %i.aig
  %i.aii = lshr i32 %.2594, %i.aih
  %i.aij = load i8, ptr %i.ci, align 1
  %i.aik = zext nneg i8 %i.aij to i32
  %i.ail = shl i32 %i.aii, %i.aik
  %i.aim = or i32 %i.ail, %i.aie
  %i.ain = load i8, ptr %i.cj, align 2
  %i.aio = zext i8 %i.ain to i32
  %i.aip = sub nsw i32 8, %i.aio
  %i.aiq = lshr i32 %.2591, %i.aip
  %i.air = load i8, ptr %i.cl, align 2
  %i.ais = zext nneg i8 %i.air to i32
  %i.ait = shl i32 %i.aiq, %i.ais
  %i.aiu = or i32 %i.aim, %i.ait
  %i.aiv = load i8, ptr %i.cm, align 1
  %i.aiw = zext i8 %i.aiv to i32
  %i.aix = sub nsw i32 8, %i.aiw
  %i.aiy = lshr i32 %.1588, %i.aix
  %i.aiz = load i8, ptr %i.co, align 1
  %i.aja = zext nneg i8 %i.aiz to i32
  %i.ajb = shl i32 %i.aiy, %i.aja
  %i.ajc = or i32 %i.aiu, %i.ajb
  %i.ajd = trunc i32 %i.ajc to i8
  store i8 %i.ajd, ptr %i.ea, align 1
  br label %.thread670

bb.bn:                                            ; preds = %bb.bl
  %i.aje = load i8, ptr %i.cd, align 4
  %i.ajf = zext i8 %i.aje to i32
  %i.ajg = sub nsw i32 8, %i.ajf
  %i.ajh = lshr i32 %.2597, %i.ajg
  %i.aji = load i8, ptr %i.cf, align 4
  %i.ajj = zext nneg i8 %i.aji to i32
  %i.ajk = shl i32 %i.ajh, %i.ajj
  %i.ajl = load i8, ptr %i.cg, align 1
  %i.ajm = zext i8 %i.ajl to i32
  %i.ajn = sub nsw i32 8, %i.ajm
  %i.ajo = lshr i32 %.2594, %i.ajn
  %i.ajp = load i8, ptr %i.ci, align 1
  %i.ajq = zext nneg i8 %i.ajp to i32
  %i.ajr = shl i32 %i.ajo, %i.ajq
  %i.ajs = or i32 %i.ajr, %i.ajk
  %i.ajt = load i8, ptr %i.cj, align 2
  %i.aju = zext i8 %i.ajt to i32
  %i.ajv = sub nsw i32 8, %i.aju
  %i.ajw = lshr i32 %.2591, %i.ajv
  %i.ajx = load i8, ptr %i.cl, align 2
  %i.ajy = zext nneg i8 %i.ajx to i32
  %i.ajz = shl i32 %i.ajw, %i.ajy
  %i.aka = or i32 %i.ajs, %i.ajz
  %i.akb = load i8, ptr %i.cm, align 1
  %i.akc = zext i8 %i.akb to i32
  %i.akd = sub nsw i32 8, %i.akc
  %i.ake = lshr i32 %.1588, %i.akd
  %i.akf = load i8, ptr %i.co, align 1
  %i.akg = zext nneg i8 %i.akf to i32
  %i.akh = shl i32 %i.ake, %i.akg
  %i.aki = or i32 %i.aka, %i.akh
end_hunk_3
