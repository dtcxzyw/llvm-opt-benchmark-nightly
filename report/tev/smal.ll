Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/smal?download=true
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %i.a, ptr noundef nonnull align 16 dereferenceable(39) @__const._ZN6LibRaw19smal_decode_segmentEPA2_ji.hist, i64 39, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71
  %i.g = add i32 %i.f, 1
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.h, i32 noundef 0) ; 0 uses
  %i.m = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !71   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !74
  %i.s = zext i16 %i.r to i32
  %i.t = load i16, ptr %i.p, align 8, !tbaa !75
  %i.u = zext i16 %i.t to i32
  %i.v = mul nuw nsw i32 %i.u, %i.s               ; 3 uses
  %i.w = icmp ugt i32 %i.o, %i.v
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.v, ptr %i.n, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi i32 [ %i.v, %bb.b ], [ %i.o, %bb.a ]
  %i.y = load i32, ptr %1, align 4, !tbaa !71     ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.x
  br i1 %i.z, label %.preheader142.lr.ph, label %._crit_edge

.preheader142.lr.ph:                              ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 193784
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.lr.ph, %bb.v
  %.0163 = phi i32 [ 0, %.preheader142.lr.ph ], [ %i.cs, %bb.v ]
  %.099162 = phi i32 [ 0, %.preheader142.lr.ph ], [ %.3.in, %bb.v ]
  %.sroa.4.0163 = phi i8 [ 0, %.preheader142.lr.ph ], [ %.sroa.4.0., %bb.v ] ; 2 uses
  %.sroa.0.0162 = phi i8 [ 0, %.preheader142.lr.ph ], [ %..sroa.0.0, %bb.v ] ; 2 uses
  %.0103161 = phi i32 [ %i.y, %.preheader142.lr.ph ], [ %i.hj, %bb.v ] ; 7 uses
  %.0110160 = phi i32 [ 8, %.preheader142.lr.ph ], [ %.4, %bb.v ]
  %.0114159 = phi i32 [ 0, %.preheader142.lr.ph ], [ %.3117, %bb.v ]
  %.0118158 = phi i32 [ 255, %.preheader142.lr.ph ], [ %i.co, %bb.v ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader142, %.loopexit
  %indvars.iv179 = phi i64 [ 0, %.preheader142 ], [ %indvars.iv.next180, %.loopexit ] ; 3 uses
  %.1157 = phi i32 [ %.0163, %.preheader142 ], [ %i.cs, %.loopexit ] ; 2 uses
  %.1100156 = phi i32 [ %.099162, %.preheader142 ], [ %.3.in, %.loopexit ]
  %.1111154 = phi i32 [ %.0110160, %.preheader142 ], [ %.4, %.loopexit ] ; 4 uses
  %.1115153 = phi i32 [ %.0114159, %.preheader142 ], [ %.3117, %.loopexit ] ; 3 uses
  %.1119152 = phi i32 [ %.0118158, %.preheader142 ], [ %i.co, %.loopexit ] ; 2 uses
  %i.ae = shl i32 %.1100156, %.1111154
  %i.af = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.1111154, ptr noundef null)
  %i.ag = or i32 %i.af, %i.ae                     ; 6 uses
  %i.ah = icmp slt i32 %.1115153, 0               ; 2 uses
  %i.ai = add i32 %.1111154, %.1115153            ; 3 uses
  %i.aj = add i32 %i.ai, 1
  %.inv = icmp ult i32 %i.ai, 2147483647
  %i.ak = select i1 %.inv, i32 0, i32 %i.ai
  %.2116 = select i1 %i.ah, i32 %i.ak, i32 %.1115153 ; 3 uses
  %.2112 = select i1 %i.ah, i32 %i.aj, i32 %.1111154 ; 8 uses
  %i.al = and i32 %i.ag, 65535                    ; 4 uses
  %i.am = icmp sgt i32 %.2112, 0
  br i1 %i.am, label %.lr.ph204, label %.loopexit141

.lr.ph204:                                        ; preds = %bb.d
  %min.iters.check238 = icmp ult i32 %.2112, 48
  br i1 %min.iters.check238, label %scalar.ph.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph204
  %n.vec240 = and i32 %.2112, 2147483632          ; 2 uses
  %i.an = and i32 %.2112, 15
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <16 x i32> poison, i32 %.2112, i64 0
  %broadcast.splat242 = shufflevector <16 x i32> %broadcast.splatinsert241, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ao = add nsw <16 x i32> %broadcast.splat242, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body.interim, %vector.ph239
  %index244 = phi i32 [ 0, %vector.ph239 ], [ %index.next245, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %i.ao, %vector.ph239 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ap = add nsw <16 x i32> %vec.ind, splat (i32 -1) ; 2 uses
  %i.aq = lshr <16 x i32> %broadcast.splat, %i.ap
  %.fr250 = freeze <16 x i32> %i.aq
  %i.ar = and <16 x i32> %.fr250, splat (i32 255)
  %i.as = icmp eq <16 x i32> %i.ar, splat (i32 255) ; 2 uses
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not251 = icmp eq i16 %i.at, 0
  br i1 %.not251, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body243
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -16)
  %index.next245 = add nuw i32 %index244, 16      ; 2 uses
  %i.au = icmp eq i32 %index.next245, %n.vec240
  br i1 %i.au, label %middle.block246, label %vector.body243, !llvm.loop !78

middle.block246:                                  ; preds = %vector.body.interim
  %cmp.n247 = icmp eq i32 %.2112, %n.vec240
  br i1 %cmp.n247, label %.loopexit141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block246
  %.3113202.ph = phi i32 [ %.2112, %.lr.ph204 ], [ %i.an, %middle.block246 ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body243
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.as, i1 false) ; 2 uses
  %i.av = extractelement <16 x i32> %i.ap, i64 %first.active.lane
  %i.aw = trunc i64 %first.active.lane to i32
  %i.ax = add i32 %index244, %i.aw
  %i.ay = sub i32 %.2112, %i.ax
  br label %.loopexit249

bb.e:                                             ; preds = %scalar.ph
  %i.az = icmp sgt i32 %.3113202, 1
  br i1 %i.az, label %scalar.ph, label %.loopexit141, !llvm.loop !79

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.e
  %.3113202 = phi i32 [ %i.ba, %bb.e ], [ %.3113202.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ba = add nsw i32 %.3113202, -1               ; 3 uses
  %i.bb = lshr i32 %i.al, %i.ba
  %i.bc = and i32 %i.bb, 255
  %i.bd = icmp eq i32 %i.bc, 255
  br i1 %i.bd, label %.loopexit249, label %bb.e, !llvm.loop !80

.loopexit249:                                     ; preds = %scalar.ph, %vector.early.exit
  %.lcssa = phi i32 [ %i.av, %vector.early.exit ], [ %i.ba, %scalar.ph ]
  %.3113.lcssa197 = phi i32 [ %i.ay, %vector.early.exit ], [ %.3113202, %scalar.ph ] ; 3 uses
  %.not138 = icmp eq i32 %.3113.lcssa197, 1
  br i1 %.not138, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit249
  %i.be = add nsw i32 %.3113.lcssa197, -2
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = add nuw i32 %i.bf, 65535
  %i.bh = and i32 %i.bg, %i.al
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = and i32 %i.bf, %i.al
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = add i32 %i.bk, %i.ag
  %i.bm = shl nsw i32 -1, %.lcssa
  %i.bn = and i32 %i.bl, %i.bm
  %i.bo = or i32 %i.bn, %i.bi
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit249
  %.2.in.ph = phi i32 [ %i.ag, %.loopexit249 ], [ %i.bo, %bb.f ]
  %i.bp = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.bq = add i32 %i.bp, %.2.in.ph
  %i.br = add nsw i32 %.3113.lcssa197, -9
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.e, %bb.d, %middle.block246, %bb.g
  %.3117 = phi i32 [ %i.br, %bb.g ], [ %.2116, %middle.block246 ], [ %.2116, %bb.d ], [ %.2116, %bb.e ] ; 2 uses
  %.3.in = phi i32 [ %i.bq, %bb.g ], [ %i.ag, %middle.block246 ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ] ; 3 uses
  %i.bs = sub i32 %.3.in, %.1157
  %i.bt = shl i32 %i.bs, 2
  %i.bu = add i32 %i.bt, 4
  %i.bv = and i32 %i.bu, 262140
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = lshr i32 %.1119152, 4                   ; 3 uses
  %i.by = sdiv i32 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw [13 x i8], ptr %i.a, i64 %indvars.iv179 ; 13 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.loopexit141
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.loopexit141 ] ; 2 uses
  %indvars.iv174 = phi i32 [ %indvars.iv.next175, %bb.h ], [ 0, %.loopexit141 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.loopexit141 ] ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !93
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = icmp slt i32 %i.by, %i.cd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next175 = add nuw i32 %indvars.iv174, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ce, label %bb.h, label %bb.i, !llvm.loop !81

bb.i:                                             ; preds = %bb.h
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.cg = mul nuw nsw i32 %i.bx, %i.cd
  %i.ch = lshr i32 %i.cg, 2                       ; 2 uses
  %.not133 = icmp eq i64 %indvars.iv, 0
  br i1 %.not133, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !93
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.bx, %i.ck
  %i.cm = lshr i32 %i.cl, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2120 = phi i32 [ %i.cm, %bb.j ], [ %.1119152, %bb.i ]
  %i.cn = sub nsw i32 %.2120, %i.ch
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i32 [ 0, %bb.k ], [ %i.cq, %bb.l ]    ; 5 uses
  %i.co = shl i32 %i.cn, %.4                      ; 3 uses
  %i.cp = icmp slt i32 %i.co, 128
  %i.cq = add nuw nsw i32 %.4, 1
  br i1 %i.cp, label %bb.l, label %bb.m, !llvm.loop !82

bb.m:                                             ; preds = %bb.l
  %i.cr = add i32 %i.ch, %.1157
  %i.cs = shl i32 %i.cr, %.4                      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !93  ; 3 uses
  %i.cv = zext i8 %i.cu to i32                    ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !93
  %i.cy = add i8 %i.cx, 1                         ; 2 uses
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !93
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 3 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !93
  %i.db = icmp ugt i8 %i.cy, %i.da
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = add nuw nsw i32 %i.cv, 1
  %i.dd = load i8, ptr %i.bz, align 1, !tbaa !93
  %i.de = zext i8 %i.dd to i32
  %i.df = and i32 %i.dc, %i.de                    ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !93
  %i.dk = zext i8 %i.dj to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 5
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !93
  %i.dn = zext i8 %i.dm to i16
  %i.do = sub nsw i16 %i.dk, %i.dn
  %i.dp = lshr i16 %i.do, 2
  %i.dq = trunc i16 %i.dp to i8
  store i8 %i.dq, ptr %i.cz, align 1, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZN6LibRaw19smal_decode_segmentEPA2_ji:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ee = and i64 %i.ed, 24
  %n.vec = and i64 %i.ed, -32                     ; 4 uses
  %i.ef = add i64 %indvars.iv, %n.vec
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 5 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 21 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ei, align 1, !tbaa !93
  %wide.load206 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !93
  %i.ek = add <16 x i8> %wide.load, splat (i8 -1)
  %i.el = add <16 x i8> %wide.load206, splat (i8 -1)
  store <16 x i8> %i.ek, ptr %i.ei, align 1, !tbaa !93
  store <16 x i8> %i.el, ptr %i.ej, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check, label %.lr.ph151.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %i.ed, -8                   ; 3 uses
  %i.en = add i64 %indvars.iv, %n.vec207
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index208
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 5 ; 2 uses
  %wide.load209 = load <8 x i8>, ptr %i.eq, align 1, !tbaa !93
  %i.er = add <8 x i8> %wide.load209, splat (i8 -1)
  store <8 x i8> %i.er, ptr %i.eq, align 1, !tbaa !93
  %index.next210 = add nuw i64 %index208, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next210, %n.vec207
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n211 = icmp eq i64 %i.ed, %n.vec207
  br i1 %cmp.n211, label %.loopexit, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv176.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ef, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.lr.ph151 ], [ %indvars.iv176.ph, %.lr.ph151.preheader ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv176
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 5 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !93
  %i.ew = add i8 %i.ev, -1
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !93
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.ex = icmp samesign ult i64 %indvars.iv.next177, %i.ec
  br i1 %i.ex, label %.lr.ph151, label %.loopexit, !llvm.loop !85

bb.q:                                             ; preds = %bb.p
  %.not134 = icmp sle i32 %.0107, %i.cf
  %i.ey = icmp samesign ugt i32 %i.cf, %i.cv
  %or.cond = select i1 %.not134, i1 %i.ey, i1 false
  br i1 %or.cond, label %iter.check224, label %.loopexit

iter.check224:                                    ; preds = %bb.q
  %wide.trip.count = zext i32 %indvars.iv174 to i64
  %i.ez = sub nsw i64 %indvars.iv, %i.dr          ; 7 uses
  %min.iters.check212 = icmp ult i64 %i.ez, 8
  br i1 %min.iters.check212, label %.lr.ph.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %iter.check224
  %min.iters.check214 = icmp ult i64 %i.ez, 32
  br i1 %min.iters.check214, label %vec.epilog.ph228, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.fa = and i64 %i.ez, 24
  %n.vec216 = and i64 %i.ez, -32                  ; 4 uses
  %i.fb = add i64 %n.vec216, %i.dr
  %invariant.gep = getelementptr i8, ptr %i.bz, i64 %i.dr
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next221, %vector.body217 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index218 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %gep, i64 5 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep, i64 21 ; 2 uses
  %wide.load219 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !93
  %wide.load220 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !93
  %i.fe = add <16 x i8> %wide.load219, splat (i8 1)
  %i.ff = add <16 x i8> %wide.load220, splat (i8 1)
  store <16 x i8> %i.fe, ptr %i.fc, align 1, !tbaa !93
  store <16 x i8> %i.ff, ptr %i.fd, align 1, !tbaa !93
  %index.next221 = add nuw i64 %index218, 32      ; 2 uses
  %i.fg = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.fg, label %middle.block222, label %vector.body217, !llvm.loop !86

middle.block222:                                  ; preds = %vector.body217
  %cmp.n223 = icmp eq i64 %i.ez, %n.vec216
  br i1 %cmp.n223, label %.loopexit, label %vec.epilog.iter.check225

vec.epilog.iter.check225:                         ; preds = %middle.block222
  %min.epilog.iters.check227 = icmp eq i64 %i.fa, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph.preheader, label %vec.epilog.ph228, !prof !94

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check225
  %vec.epilog.resume.val229 = phi i64 [ %n.vec216, %vec.epilog.iter.check225 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec230 = and i64 %i.ez, -8                   ; 3 uses
  %i.fh = add i64 %n.vec230, %i.dr
  %invariant.gep277 = getelementptr i8, ptr %i.bz, i64 %i.dr
  br label %vec.epilog.vector.body231

vec.epilog.vector.body231:                        ; preds = %vec.epilog.vector.body231, %vec.epilog.ph228
  %index232 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph228 ], [ %index.next234, %vec.epilog.vector.body231 ] ; 2 uses
  %gep278 = getelementptr i8, ptr %invariant.gep277, i64 %index232
  %i.fi = getelementptr inbounds nuw i8, ptr %gep278, i64 5 ; 2 uses
  %wide.load233 = load <8 x i8>, ptr %i.fi, align 1, !tbaa !93
  %i.fj = add <8 x i8> %wide.load233, splat (i8 1)
  store <8 x i8> %i.fj, ptr %i.fi, align 1, !tbaa !93
  %index.next234 = add nuw i64 %index232, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.fk, label %vec.epilog.middle.block235, label %vec.epilog.vector.body231, !llvm.loop !87

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body231
  %cmp.n236 = icmp eq i64 %i.ez, %n.vec230
  br i1 %cmp.n236, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check224, %vec.epilog.iter.check225, %vec.epilog.middle.block235
  %indvars.iv171.ph = phi i64 [ %i.dr, %iter.check224 ], [ %i.fb, %vec.epilog.iter.check225 ], [ %i.fh, %vec.epilog.middle.block235 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ %indvars.iv171.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv171
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 5 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !93
  %i.fo = add i8 %i.fn, 1
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !93
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !88

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph151, %middle.block222, %vec.epilog.middle.block235, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.o
  %i.fp = trunc nuw i32 %.0107 to i8
  store i8 %i.fp, ptr %i.ct, align 1, !tbaa !93
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv179
  store i32 %i.cf, ptr %i.fq, align 4, !tbaa !71
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, 3
  br i1 %exitcond182.not, label %bb.r, label %bb.d, !llvm.loop !89

bb.r:                                             ; preds = %.loopexit
  %i.fr = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.fs = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ft = load i32, ptr %i.b, align 4, !tbaa !71  ; 2 uses
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !73
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = tail call noundef i64 %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
  %i.fz = load i16, ptr %i.q, align 2, !tbaa !74
  %i.ga = zext i16 %i.fz to i32
  %i.gb = load i16, ptr %i.p, align 8, !tbaa !75
  %i.gc = zext i16 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.gc, %i.ga
  %.not130 = icmp ult i32 %.0103161, %i.gd
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ge = tail call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 5, ptr %i.ge, align 16, !tbaa !96
  tail call void @__cxa_throw(ptr nonnull %i.ge, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.gf = add nsw i64 %i.fy, 12
  %i.gg = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.gh = zext i32 %i.gg to i64
  %.not129 = icmp slt i64 %i.gf, %i.gh
  %i.gi = and i32 %i.ft, 4
  %.not = icmp eq i32 %i.gi, 0
  %i.gj = shl i32 %i.fr, 5
  %i.gk = shl i32 %i.fs, 2
  %i.gl = or i32 %i.gk, %i.gj
  %i.gm = and i32 %i.ft, 3
  %i.gn = or disjoint i32 %i.gl, %i.gm            ; 3 uses
  %i.go = and i32 %i.gn, 255
  %.not128 = icmp eq i32 %i.go, 0
  %i.gp = sub i32 0, %i.gn
  %i.gq = select i1 %.not128, i32 128, i32 %i.gp
  %.0101 = select i1 %.not, i32 %i.gn, i32 %i.gq
  %i.gr = and i32 %.0103161, 1
  %.sroa.idx.not = icmp eq i32 %i.gr, 0           ; 4 uses
  %.sroa.speculated = select i1 %.sroa.idx.not, i8 %.sroa.0.0162, i8 %.sroa.4.0163
  %i.gs = trunc i32 %.0101 to i8
  %i.gt = select i1 %.not129, i8 %i.gs, i8 0
  %i.gu = add i8 %i.gt, %.sroa.speculated         ; 3 uses
  %..sroa.0.0 = select i1 %.sroa.idx.not, i8 %i.gu, i8 %.sroa.0.0162
  %.sroa.4.0. = select i1 %.sroa.idx.not, i8 %.sroa.4.0163, i8 %i.gu
  %i.gv = zext i8 %i.gu to i16
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.gx = zext nneg i32 %.0103161 to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.gx
  store i16 %i.gv, ptr %i.gy, align 2, !tbaa !77
  br i1 %.sroa.idx.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gz = load i16, ptr %i.q, align 2, !tbaa !74
  %i.ha = zext i16 %i.gz to i32
  %i.hb = udiv i32 %.0103161, %i.ha
  %i.hc = load i16, ptr %i.p, align 8, !tbaa !75
  %i.hd = zext i16 %i.hc to i32
  %i.he = sub nsw i32 %i.hb, %i.hd
  %i.hf = and i32 %i.he, 7
  %i.hg = shl nuw nsw i32 1, %i.hf
  %i.hh = and i32 %i.hg, %2
  %.not132 = icmp eq i32 %i.hh, 0
  %i.hi = add nuw i32 %.0103161, 2
  %spec.select = select i1 %.not132, i32 %.0103161, i32 %i.hi
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1104 = phi i32 [ %.0103161, %bb.t ], [ %spec.select, %bb.u ]
  %i.hj = add nuw i32 %.1104, 1                   ; 2 uses
  %i.hk = load i32, ptr %i.n, align 4, !tbaa !71
  %i.hl = icmp ult i32 %i.hj, %i.hk
  br i1 %i.hl, label %.preheader142, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.v, %bb.c
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 255, ptr %i.hm, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16smal_v6_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x [2 x i32]], align 16         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 16, i32 noundef 0) ; 0 uses
  store i32 0, ptr %i.a, align 16, !tbaa !71
  %i.h = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = zext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74
  %i.n = zext i16 %i.m to i32
  %i.o = load i16, ptr %i.k, align 8, !tbaa !75
  %i.p = zext i16 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 2147483647, ptr %i.s, align 4, !tbaa !71
  call void @_ZN6LibRaw19smal_decode_segmentEPA2_ji(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1073741824, 1073741824) i32 @_ZN6LibRaw7median4EPi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !71     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71   ; 3 uses
  %i.d = add nsw i32 %i.c, %i.a
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.c)
  %.1 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71   ; 3 uses
  %i.g = add nsw i32 %i.f, %i.d
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.f)
  %.1.1 = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !71   ; 3 uses
  %i.j = add nsw i32 %i.i, %i.g
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.1, i32 %i.i)
  %.1.2 = tail call i32 @llvm.smax.i32(i32 %.1.1, i32 %i.i)
  %i.k = add i32 %.1.2, %spec.select.2
  %i.l = sub i32 %i.j, %i.k
  %i.m = ashr i32 %i.l, 1
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10fill_holesEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !102
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.g = load ptr, ptr %i.f, align 8              ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %.loopexit
  %.03860 = phi i32 [ 2, %.lr.ph62 ], [ %i.ej, %.loopexit ] ; 9 uses
  %i.i = load i16, ptr %i.a, align 8, !tbaa !75
  %i.j = zext i16 %i.i to i32
  %i.k = sub nsw i32 %.03860, %i.j
  %i.l = and i32 %i.k, 7
  %i.m = shl nuw nsw i32 1, %i.l
  %i.n = and i32 %i.m, %1
  %.not = icmp ne i32 %i.n, 0
  %i.o = load i16, ptr %i.e, align 2
  %i.p = icmp ugt i16 %i.o, 2
  %or.cond = select i1 %.not, i1 %i.p, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.q = add nsw i32 %.03860, -1
  %i.r = add nuw nsw i32 %.03860, 1
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ugt i16 %i.bl, 4
  br i1 %i.s, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %.preheader
  %i.t = add nsw i32 %.03860, -2                  ; 2 uses
  %i.u = add nuw nsw i32 %.03860, 2               ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.057 = phi i32 [ 1, %.lr.ph ], [ %i.bk, %bb.c ] ; 4 uses
  %i.v = load i16, ptr %i.h, align 2, !tbaa !74
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = mul nuw nsw i32 %i.q, %i.w               ; 2 uses
  %i.y = add nsw i32 %.057, -1                    ; 2 uses
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !77
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.af = add nsw i32 %i.x, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !77
  %i.aj = zext i16 %i.ai to i32                   ; 3 uses
  %i.ak = mul nuw nsw i32 %i.r, %i.w              ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, %i.y
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !77
  %i.ap = zext i16 %i.ao to i32                   ; 3 uses
  %i.aq = add nuw nsw i32 %i.ak, %i.ae
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !77
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.aj)
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 %i.aj)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ap)
  %i.ay = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %i.ap)
  %i.az = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.au)
  %.neg55 = add nuw nsw i32 %i.aj, %i.ad
  %i.ba = add nuw nsw i32 %.neg55, %i.ap
  %i.bb = tail call i32 @llvm.usub.sat.i32(i32 %i.au, i32 %i.ax)
  %i.bc = add nuw nsw i32 %i.ba, %i.bb
  %i.bd = sub nsw i32 %i.bc, %i.az
  %i.be = lshr i32 %i.bd, 1
  %i.bf = trunc i32 %i.be to i16
  %i.bg = mul nuw nsw i32 %.03860, %i.w
  %i.bh = add nuw nsw i32 %i.bg, %.057
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bi
  store i16 %i.bf, ptr %i.bj, align 2, !tbaa !77
  %i.bk = add nuw nsw i32 %.057, 4                ; 2 uses
  %i.bl = load i16, ptr %i.e, align 2, !tbaa !103 ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = icmp slt i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.c, label %.preheader, !llvm.loop !99

bb.d:                                             ; preds = %.lr.ph59, %bb.h
  %.158 = phi i32 [ 2, %.lr.ph59 ], [ %i.ee, %bb.h ] ; 8 uses
  %i.bp = load i16, ptr %i.a, align 8, !tbaa !75
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = sub nsw i32 %i.t, %i.bq
  %i.bs = and i32 %i.br, 7
  %i.bt = shl nuw nsw i32 1, %i.bs
  %i.bu = and i32 %i.bt, %1
  %.not39 = icmp eq i32 %i.bu, 0
  br i1 %.not39, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = sub nsw i32 %i.u, %i.bq
  %i.bw = and i32 %i.bv, 7
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = and i32 %i.bx, %1
  %.not40 = icmp eq i32 %i.by, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bz = load i16, ptr %i.h, align 2, !tbaa !74
  %i.ca = zext i16 %i.bz to i32
  %i.cb = mul nuw nsw i32 %.03860, %i.ca          ; 3 uses
  %i.cc = add nsw i32 %.158, -2
end_hunk_1
