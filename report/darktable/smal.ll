Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/smal?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@__const._ZN6LibRaw19smal_decode_segmentEPA2_ji.hist = private unnamed_addr constant [3 x [13 x i8]] [[13 x i8] c"\07\07\00\00?7/'\1F\17\0F\07\00", [13 x i8] c"\07\07\00\00?7/'\1F\17\0F\07\00", [13 x i8] c"\03\03\00\00?/\1F\0F\00\00\00\00\00"], align 16
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19smal_decode_segmentEPA2_ji(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x [13 x i8]], align 16         ; 4 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %i.a, ptr noundef nonnull align 16 dereferenceable(39) @__const._ZN6LibRaw19smal_decode_segmentEPA2_ji.hist, i64 39, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !75
  %i.h = add i32 %i.g, 1
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.i, i32 noundef 0), !call_target !86 ; 0 uses
  %i.n = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !75   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !87
  %i.t = zext i16 %i.s to i32
  %i.u = load i16, ptr %i.q, align 8, !tbaa !88
  %i.v = zext i16 %i.u to i32
  %i.w = mul nuw nsw i32 %i.v, %i.t               ; 3 uses
  %i.x = icmp ugt i32 %i.p, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.w, ptr %i.o, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = phi i32 [ %i.w, %bb.b ], [ %i.p, %bb.a ]
  %i.z = load i32, ptr %1, align 4, !tbaa !75     ; 2 uses
  %i.aa = icmp ult i32 %i.z, %i.y
  br i1 %i.aa, label %.preheader142.lr.ph, label %._crit_edge

.preheader142.lr.ph:                              ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 193784
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.lr.ph, %bb.v
  %.0163 = phi i32 [ 0, %.preheader142.lr.ph ], [ %i.ct, %bb.v ]
  %.099162 = phi i32 [ 0, %.preheader142.lr.ph ], [ %.3.in, %bb.v ]
  %.0103161 = phi i32 [ %i.z, %.preheader142.lr.ph ], [ %i.hv, %bb.v ] ; 7 uses
  %.0110160 = phi i32 [ 8, %.preheader142.lr.ph ], [ %.4, %bb.v ]
  %.0114159 = phi i32 [ 0, %.preheader142.lr.ph ], [ %.3117, %bb.v ]
  %.0118158 = phi i32 [ 255, %.preheader142.lr.ph ], [ %i.cp, %bb.v ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader142, %.loopexit
  %indvars.iv179 = phi i64 [ 0, %.preheader142 ], [ %indvars.iv.next180, %.loopexit ] ; 3 uses
  %.1157 = phi i32 [ %.0163, %.preheader142 ], [ %i.ct, %.loopexit ] ; 2 uses
  %.1100156 = phi i32 [ %.099162, %.preheader142 ], [ %.3.in, %.loopexit ]
  %.1111154 = phi i32 [ %.0110160, %.preheader142 ], [ %.4, %.loopexit ] ; 4 uses
  %.1115153 = phi i32 [ %.0114159, %.preheader142 ], [ %.3117, %.loopexit ] ; 3 uses
  %.1119152 = phi i32 [ %.0118158, %.preheader142 ], [ %i.cp, %.loopexit ] ; 2 uses
  %i.af = shl i32 %.1100156, %.1111154
  %i.ag = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.1111154, ptr noundef null)
  %i.ah = or i32 %i.ag, %i.af                     ; 6 uses
  %i.ai = icmp slt i32 %.1115153, 0               ; 2 uses
  %i.aj = add i32 %.1111154, %.1115153            ; 3 uses
  %i.ak = add i32 %i.aj, 1
  %.inv = icmp ult i32 %i.aj, 2147483647
  %i.al = select i1 %.inv, i32 0, i32 %i.aj
  %.2116 = select i1 %i.ai, i32 %i.al, i32 %.1115153 ; 3 uses
  %.2112 = select i1 %i.ai, i32 %i.ak, i32 %.1111154 ; 8 uses
  %i.am = and i32 %i.ah, 65535                    ; 4 uses
  %i.an = icmp sgt i32 %.2112, 0
  br i1 %i.an, label %.lr.ph204, label %.loopexit141

.lr.ph204:                                        ; preds = %bb.d
  %min.iters.check243 = icmp ult i32 %.2112, 64
  br i1 %min.iters.check243, label %scalar.ph.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %.lr.ph204
  %n.vec245 = and i32 %.2112, 2147483616          ; 2 uses
  %i.ao = and i32 %.2112, 31
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <32 x i32> poison, i32 %.2112, i64 0
  %broadcast.splat247 = shufflevector <32 x i32> %broadcast.splatinsert246, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ap = add nsw <32 x i32> %broadcast.splat247, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15, i32 -16, i32 -17, i32 -18, i32 -19, i32 -20, i32 -21, i32 -22, i32 -23, i32 -24, i32 -25, i32 -26, i32 -27, i32 -28, i32 -29, i32 -30, i32 -31>
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body.interim, %vector.ph244
  %index249 = phi i32 [ 0, %vector.ph244 ], [ %index.next250, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %i.ap, %vector.ph244 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.aq = add nsw <32 x i32> %vec.ind, splat (i32 -1) ; 2 uses
  %i.ar = lshr <32 x i32> %broadcast.splat, %i.aq
  %.fr254 = freeze <32 x i32> %i.ar
  %i.as = and <32 x i32> %.fr254, splat (i32 255)
  %i.at = icmp eq <32 x i32> %i.as, splat (i32 255) ; 2 uses
  %i.au = bitcast <32 x i1> %i.at to i32
  %.not255 = icmp eq i32 %i.au, 0
  br i1 %.not255, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body248
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 -32)
  %index.next250 = add nuw i32 %index249, 32      ; 2 uses
  %i.av = icmp eq i32 %index.next250, %n.vec245
  br i1 %i.av, label %middle.block251, label %vector.body248, !llvm.loop !91

middle.block251:                                  ; preds = %vector.body.interim
  %cmp.n252 = icmp eq i32 %.2112, %n.vec245
  br i1 %cmp.n252, label %.loopexit141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block251
  %.3113202.ph = phi i32 [ %.2112, %.lr.ph204 ], [ %i.ao, %middle.block251 ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body248
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.at, i1 false) ; 2 uses
  %i.aw = extractelement <32 x i32> %i.aq, i64 %first.active.lane
  %i.ax = trunc i64 %first.active.lane to i32
  %i.ay = add i32 %index249, %i.ax
  %i.az = sub i32 %.2112, %i.ay
  br label %.loopexit253

bb.e:                                             ; preds = %scalar.ph
  %i.ba = icmp sgt i32 %.3113202, 1
  br i1 %i.ba, label %scalar.ph, label %.loopexit141, !llvm.loop !92

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.e
  %.3113202 = phi i32 [ %i.bb, %bb.e ], [ %.3113202.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bb = add nsw i32 %.3113202, -1               ; 3 uses
  %i.bc = lshr i32 %i.am, %i.bb
  %i.bd = and i32 %i.bc, 255
  %i.be = icmp eq i32 %i.bd, 255
  br i1 %i.be, label %.loopexit253, label %bb.e, !llvm.loop !93

.loopexit253:                                     ; preds = %scalar.ph, %vector.early.exit
  %.lcssa = phi i32 [ %i.aw, %vector.early.exit ], [ %i.bb, %scalar.ph ]
  %.3113.lcssa197 = phi i32 [ %i.az, %vector.early.exit ], [ %.3113202, %scalar.ph ] ; 3 uses
  %.not138 = icmp eq i32 %.3113.lcssa197, 1
  br i1 %.not138, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit253
  %i.bf = add nsw i32 %.3113.lcssa197, -2
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = add nuw i32 %i.bg, 65535
  %i.bi = and i32 %i.bh, %i.am
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = and i32 %i.bg, %i.am
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = add i32 %i.bl, %i.ah
  %i.bn = shl nsw i32 -1, %.lcssa
  %i.bo = and i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, %i.bj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit253
  %.2.in.ph = phi i32 [ %i.ah, %.loopexit253 ], [ %i.bp, %bb.f ]
  %i.bq = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.br = add i32 %i.bq, %.2.in.ph
  %i.bs = add nsw i32 %.3113.lcssa197, -9
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.e, %bb.d, %middle.block251, %bb.g
  %.3117 = phi i32 [ %i.bs, %bb.g ], [ %.2116, %middle.block251 ], [ %.2116, %bb.d ], [ %.2116, %bb.e ] ; 2 uses
  %.3.in = phi i32 [ %i.br, %bb.g ], [ %i.ah, %middle.block251 ], [ %i.ah, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %i.bt = sub i32 %.3.in, %.1157
  %i.bu = shl i32 %i.bt, 2
  %i.bv = add i32 %i.bu, 4
  %i.bw = and i32 %i.bv, 262140
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = lshr i32 %.1119152, 4                   ; 3 uses
  %i.bz = sdiv i32 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw [13 x i8], ptr %i.a, i64 %indvars.iv179 ; 13 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.loopexit141
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.loopexit141 ] ; 2 uses
  %indvars.iv174 = phi i32 [ %indvars.iv.next175, %bb.h ], [ 0, %.loopexit141 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.loopexit141 ] ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = icmp slt i32 %i.bz, %i.ce
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next175 = add nuw i32 %indvars.iv174, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cf, label %bb.h, label %bb.i, !llvm.loop !94

bb.i:                                             ; preds = %bb.h
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.ch = mul nuw nsw i32 %i.by, %i.ce
  %i.ci = lshr i32 %i.ch, 2                       ; 2 uses
  %.not133 = icmp eq i64 %indvars.iv, 0
  br i1 %.not133, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !106
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nuw nsw i32 %i.by, %i.cl
  %i.cn = lshr i32 %i.cm, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2120 = phi i32 [ %i.cn, %bb.j ], [ %.1119152, %bb.i ]
  %i.co = sub nsw i32 %.2120, %i.ci
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i32 [ 0, %bb.k ], [ %i.cr, %bb.l ]    ; 5 uses
  %i.cp = shl i32 %i.co, %.4                      ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 128
  %i.cr = add nuw nsw i32 %.4, 1
  br i1 %i.cq, label %bb.l, label %bb.m, !llvm.loop !95

bb.m:                                             ; preds = %bb.l
  %i.cs = add i32 %i.ci, %.1157
  %i.ct = shl i32 %i.cs, %.4                      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !106 ; 3 uses
  %i.cw = zext i8 %i.cv to i32                    ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !106
  %i.cz = add i8 %i.cy, 1                         ; 2 uses
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !106
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !106
  %i.dc = icmp ugt i8 %i.cz, %i.db
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = add nuw nsw i32 %i.cw, 1
  %i.de = load i8, ptr %i.ca, align 1, !tbaa !106
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.dd, %i.df                    ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !106
  %i.dl = zext i8 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 5
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !106
  %i.do = zext i8 %i.dn to i16
  %i.dp = sub nsw i16 %i.dl, %i.do
  %i.dq = lshr i16 %i.dp, 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.da, align 1, !tbaa !106
  store i8 1, ptr %i.cx, align 1, !tbaa !106
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0107 = phi i32 [ %i.dg, %bb.n ], [ %i.cw, %bb.m ] ; 2 uses
  %i.ds = zext i8 %i.cv to i64                    ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !106
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !106
  %i.dz = zext i8 %i.dy to i32
  %i.ea = sub nsw i32 %i.dw, %i.dz
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ec = icmp samesign ult i32 %i.cg, %i.cw
  br i1 %i.ec, label %iter.check, label %bb.q

iter.check:                                       ; preds = %bb.p
  %i.ed = zext i8 %i.cv to i64
  %i.ee = sub i64 %i.ds, %indvar                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check, label %.lr.ph151.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check205 = icmp ult i64 %i.ee, 64
  br i1 %min.iters.check205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i64 %i.ee, 56
  %n.vec = and i64 %i.ee, -64                     ; 4 uses
  %i.eg = add i64 %indvars.iv, %n.vec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 21 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 37 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 53 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ej, align 1, !tbaa !106
  %wide.load206 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !106
  %wide.load207 = load <16 x i8>, ptr %i.el, align 1, !tbaa !106
  %wide.load208 = load <16 x i8>, ptr %i.em, align 1, !tbaa !106
  %i.en = add <16 x i8> %wide.load, splat (i8 -1)
  %i.eo = add <16 x i8> %wide.load206, splat (i8 -1)
  %i.ep = add <16 x i8> %wide.load207, splat (i8 -1)
  %i.eq = add <16 x i8> %wide.load208, splat (i8 -1)
  store <16 x i8> %i.en, ptr %i.ej, align 1, !tbaa !106
  store <16 x i8> %i.eo, ptr %i.ek, align 1, !tbaa !106
end_hunk_0
