Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fillborders?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@wrap_borders16:bb.a
  %i.cm = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = getelementptr [2 x i8], ptr %i.ax, i64 %indvars.iv.next
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cp = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.next.1
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !45
  %i.cr = getelementptr [2 x i8], ptr %i.ax, i64 %indvars.iv.next.1
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !45
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cs = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !45
  %i.cu = getelementptr [2 x i8], ptr %i.ax, i64 %indvars.iv.next.2
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %vec.epilog.scalar.ph160, !llvm.loop !149

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %vec.epilog.scalar.ph ], [ %indvars.iv119.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv119
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = getelementptr [2 x i8], ptr %i.bs, i64 %indvars.iv119
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !45
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cy = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv.next120
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !45
  %i.da = getelementptr [2 x i8], ptr %i.bs, i64 %indvars.iv.next120
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !45
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %i.db = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv.next120.1
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !45
  %i.dd = getelementptr [2 x i8], ptr %i.bs, i64 %indvars.iv.next120.1
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !45
  %indvars.iv.next120.2 = add nuw nsw i64 %indvars.iv119, 3 ; 2 uses
  %i.de = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv.next120.2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !45
  %i.dg = getelementptr [2 x i8], ptr %i.bs, i64 %indvars.iv.next120.2
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !45
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  br i1 %exitcond123.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next125, %i.af
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dh, label %.preheader100, label %.preheader102, !llvm.loop !151

.preheader101.loopexit:                           ; preds = %bb.c
  %.pre = load i32, ptr %i.s, align 4, !tbaa !40
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.loopexit, %.preheader102
  %i.di = phi i32 [ %.pre, %.preheader101.loopexit ], [ %i.t, %.preheader102 ] ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %.preheader101
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv130
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph110, %bb.c
  %indvars.iv127 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next128, %bb.c ] ; 3 uses
  %i.dl = phi i32 [ %i.p, %.lr.ph110 ], [ %i.ea, %bb.c ]
  %i.dm = mul nsw i64 %indvars.iv127, %i.m
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.dm
  %i.do = load i32, ptr %i.q, align 4, !tbaa !35
  %i.dp = load i32, ptr %i.s, align 4, !tbaa !40
  %i.dq = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.dr = add i32 %i.do, %i.dq
  %i.ds = add i32 %i.dl, %i.dp
  %i.dt = sub i32 %i.dr, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.du, %i.m
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.dv
  %i.dx = load i32, ptr %i.ao, align 4, !tbaa !35
  %i.dy = shl nsw i32 %i.dx, 1
  %i.dz = sext i32 %i.dy to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dn, ptr align 2 %i.dw, i64 %i.dz, i1 false)
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.ea = load i32, ptr %i.o, align 4, !tbaa !39  ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next128, %i.eb
  br i1 %i.ec, label %bb.c, label %.preheader101.loopexit, !llvm.loop !152

bb.d:                                             ; preds = %.lr.ph112, %bb.d
  %i.ed = phi i32 [ %i.di, %.lr.ph112 ], [ %i.et, %bb.d ]
  %.2111 = phi i32 [ 0, %.lr.ph112 ], [ %i.es, %bb.d ] ; 3 uses
  %i.ee = load i32, ptr %i.q, align 4, !tbaa !35
  %i.ef = sub i32 %.2111, %i.ed
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul nsw i64 %i.eh, %i.m
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ei
  %i.ek = load i32, ptr %i.o, align 4, !tbaa !39
  %i.el = add nsw i32 %i.ek, %.2111
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i64 %i.em, %i.m
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.en
  %i.ep = load i32, ptr %i.dk, align 4, !tbaa !35
  %i.eq = shl nsw i32 %i.ep, 1
  %i.er = sext i32 %i.eq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ej, ptr align 2 %i.eo, i64 %i.er, i1 false)
  %i.es = add nuw nsw i32 %.2111, 1               ; 2 uses
  %i.et = load i32, ptr %i.s, align 4, !tbaa !40  ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %bb.d, label %._crit_edge113, !llvm.loop !153

._crit_edge113:                                   ; preds = %bb.d, %.preheader101
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next131, %i.ew
  br i1 %i.ex, label %bb.b, label %._crit_edge117, !llvm.loop !154

._crit_edge117:                                   ; preds = %._crit_edge113, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fade_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph129, %._crit_edge126
  %indvars.iv154 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next155, %._crit_edge126 ] ; 7 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv154
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv154
  %i.l = load i8, ptr %i.k, align 1, !tbaa !41    ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv154
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv154 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37   ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv154 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
  %i.v = sub nsw i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !39   ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv154 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = sub i32 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i32 %i.x, 0
  %i.ae = icmp sgt i32 %i.s, 0
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %.preheader111.preheader, label %.preheader113

.preheader111.preheader:                          ; preds = %bb.b
  %i.af = zext i8 %i.l to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = zext nneg i32 %i.x to i64               ; 2 uses
  br label %.preheader111

.preheader113.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.y, align 4, !tbaa !35
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.loopexit, %bb.b
  %i.ai = phi i32 [ %i.s, %bb.b ], [ %i.bk, %.preheader113.loopexit ] ; 2 uses
  %i.aj = phi i32 [ %i.z, %bb.b ], [ %.pre, %.preheader113.loopexit ] ; 3 uses
  %i.ak = icmp slt i32 %i.ac, %i.aj
  %i.al = icmp sgt i32 %i.ai, 0
  %or.cond170 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond170, label %.preheader110.preheader, label %.preheader112

.preheader110.preheader:                          ; preds = %.preheader113
  %i.am = zext i8 %i.l to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = sext i32 %i.ac to i64                   ; 2 uses
  br label %.preheader110

.preheader111:                                    ; preds = %.preheader111.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.s, %.preheader111.preheader ], [ %i.bk, %._crit_edge ] ; 2 uses
  %indvars.iv134 = phi i64 [ 0, %.preheader111.preheader ], [ %indvars.iv.next135, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader111
  %i.ar = mul nsw i64 %indvars.iv134, %i.o
  %i.as = getelementptr i8, ptr %i.j, i64 %i.ar
  %i.at = sub nuw nsw i64 %i.ah, %indvars.iv134
  %i.au = mul nuw nsw i64 %i.ag, %i.at
  %i.av = trunc nuw i64 %i.au to i32
  %2 = sdiv i32 %i.av, %i.x
  %i.aw = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.ax = shl i32 %i.aw, 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !41
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul i32 %i.ax, %i.ba
  %3 = udiv i32 %i.bb, %i.x
  %i.bc = add nsw i32 %3, %2
  %i.bd = ashr i32 %i.bc, 8
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.be, i32 255)
  %i.bg = trunc nuw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.ay, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !35  ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.c, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.c, %.preheader111
  %i.bk = phi i32 [ %i.ap, %.preheader111 ], [ %i.bh, %bb.c ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next135, %i.ah
  br i1 %exitcond.not, label %.preheader113.loopexit, label %.preheader111, !llvm.loop !156

.preheader112:                                    ; preds = %._crit_edge118, %.preheader113
  %i.bl = phi i32 [ %i.aj, %.preheader113 ], [ %i.cs, %._crit_edge118 ]
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader109.lr.ph, label %._crit_edge126

.preheader109.lr.ph:                              ; preds = %.preheader112
  %i.bn = icmp sgt i32 %i.q, 0
  %i.bo = zext i8 %i.l to i64
  %i.bp = shl nuw nsw i64 %i.bo, 8                ; 2 uses
  %i.bq = sext i32 %i.v to i64
  %invariant.gep = getelementptr i8, ptr %i.j, i64 %i.bq
  %i.br = zext i32 %i.q to i64                    ; 2 uses
  br label %.preheader109

.preheader110:                                    ; preds = %.preheader110.preheader, %._crit_edge118
  %i.bs = phi i32 [ %i.aj, %.preheader110.preheader ], [ %i.cs, %._crit_edge118 ]
  %i.bt = phi i32 [ %i.ai, %.preheader110.preheader ], [ %i.ct, %._crit_edge118 ] ; 2 uses
  %indvars.iv140 = phi i64 [ %i.ao, %.preheader110.preheader ], [ %indvars.iv.next141, %._crit_edge118 ] ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph117, label %._crit_edge118

.lr.ph117:                                        ; preds = %.preheader110
  %i.bv = mul nsw i64 %indvars.iv140, %i.o
  %i.bw = getelementptr i8, ptr %i.j, i64 %i.bv
  %i.bx = sub nsw i64 %indvars.iv140, %i.ao       ; 2 uses
  %i.by = mul nuw nsw i64 %i.an, %i.bx
  %i.bz = trunc nsw i64 %i.by to i32
  %i.ca = trunc nsw i64 %i.bx to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph117, %bb.d
  %indvars.iv137 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next138, %bb.d ] ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %indvars.iv137 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !41
  %i.cd = zext i8 %i.cc to i32
  %i.ce = load i32, ptr %i.aa, align 4, !tbaa !40 ; 3 uses
  %i.cf = sdiv i32 %i.bz, %i.ce
  %i.cg = shl nuw nsw i32 %i.cd, 8
  %i.ch = sub nsw i32 %i.ce, %i.ca
  %i.ci = mul nsw i32 %i.cg, %i.ch
  %i.cj = sdiv i32 %i.ci, %i.ce
  %i.ck = add nsw i32 %i.cj, %i.cf
  %i.cl = ashr i32 %i.ck, 8
  %i.cm = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %i.cn = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.cm, i32 255)
  %i.co = trunc nuw i32 %i.cn to i8
  store i8 %i.co, ptr %i.cb, align 1, !tbaa !41
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.cp = load i32, ptr %i.r, align 4, !tbaa !35  ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next138, %i.cq
  br i1 %i.cr, label %bb.d, label %._crit_edge118.loopexit, !llvm.loop !157

._crit_edge118.loopexit:                          ; preds = %bb.d
  %.pre157 = load i32, ptr %i.y, align 4, !tbaa !35
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %._crit_edge118.loopexit, %.preheader110
  %i.cs = phi i32 [ %.pre157, %._crit_edge118.loopexit ], [ %i.bs, %.preheader110 ] ; 3 uses
  %i.ct = phi i32 [ %i.cp, %._crit_edge118.loopexit ], [ %i.bt, %.preheader110 ]
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.cu = sext i32 %i.cs to i64
  %i.cv = icmp slt i64 %indvars.iv.next141, %i.cu
  br i1 %i.cv, label %.preheader110, label %.preheader112, !llvm.loop !158

.preheader109:                                    ; preds = %.preheader109.lr.ph, %._crit_edge124
  %indvars.iv151 = phi i64 [ 0, %.preheader109.lr.ph ], [ %indvars.iv.next152, %._crit_edge124 ] ; 3 uses
  br i1 %i.bn, label %.lr.ph121, label %.preheader

.lr.ph121:                                        ; preds = %.preheader109
  %i.cw = mul nsw i64 %indvars.iv151, %i.o
  %i.cx = getelementptr i8, ptr %i.j, i64 %i.cw
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %.preheader109
  %i.cy = load i32, ptr %i.t, align 4, !tbaa !38  ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %.preheader
  %i.da = mul nsw i64 %indvars.iv151, %i.o
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.da
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph121, %bb.e
  %indvars.iv143 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next144, %bb.e ] ; 4 uses
  %i.db = getelementptr i8, ptr %i.cx, i64 %indvars.iv143 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !41
  %i.dd = zext i8 %i.dc to i32
  %i.de = sub nuw nsw i64 %i.br, %indvars.iv143
  %i.df = mul nuw nsw i64 %i.bp, %i.de
  %i.dg = trunc nuw i64 %i.df to i32
  %i.dh = udiv i32 %i.dg, %i.q
  %i.di = trunc nuw nsw i64 %indvars.iv143 to i32
  %i.dj = shl i32 %i.di, 8
  %i.dk = mul i32 %i.dj, %i.dd
  %4 = udiv i32 %i.dk, %i.q
  %i.dl = add nsw i32 %4, %i.dh
  %i.dm = ashr i32 %i.dl, 8
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.do = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.dn, i32 255)
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.db, align 1, !tbaa !41
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %i.br
  br i1 %exitcond147.not, label %.preheader, label %bb.e, !llvm.loop !159

bb.f:                                             ; preds = %.lr.ph123, %bb.f
  %indvars.iv148 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next149, %bb.f ] ; 4 uses
  %i.dq = phi i32 [ %i.cy, %.lr.ph123 ], [ %i.eh, %bb.f ] ; 3 uses
  %i.dr = getelementptr i8, ptr %gep, i64 %indvars.iv148 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !41
  %i.dt = zext i8 %i.ds to i32
  %i.du = mul nuw nsw i64 %i.bp, %indvars.iv148
  %i.dv = trunc nuw i64 %i.du to i32
  %i.dw = sdiv i32 %i.dv, %i.dq
  %i.dx = trunc nuw nsw i64 %indvars.iv148 to i32
  %i.dy = sub nuw nsw i32 %i.dq, %i.dx
  %i.dz = shl i32 %i.dy, 8
  %i.ea = mul i32 %i.dz, %i.dt
  %i.eb = sdiv i32 %i.ea, %i.dq
  %i.ec = add nsw i32 %i.eb, %i.dw
  %i.ed = ashr i32 %i.ec, 8
  %i.ee = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 0)
  %i.ef = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.ee, i32 255)
  %i.eg = trunc nuw i32 %i.ef to i8
  store i8 %i.eg, ptr %i.dr, align 1, !tbaa !41
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.eh = load i32, ptr %i.t, align 4, !tbaa !38  ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next149, %i.ei
  br i1 %i.ej, label %bb.f, label %._crit_edge124, !llvm.loop !160

._crit_edge124:                                   ; preds = %bb.f, %.preheader
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.ek = load i32, ptr %i.y, align 4, !tbaa !35
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next152, %i.el
  br i1 %i.em, label %.preheader109, label %._crit_edge126, !llvm.loop !161

._crit_edge126:                                   ; preds = %._crit_edge124, %.preheader112
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.en = load i32, ptr %i.a, align 4, !tbaa !33
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next155, %i.eo
  br i1 %i.ep, label %bb.b, label %._crit_edge130, !llvm.loop !162

._crit_edge130:                                   ; preds = %._crit_edge126, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fade_borders16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = add nsw i32 %i.e, -8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.l = zext i32 %i.e to i64                     ; 11 uses
  %notmask.i.i = shl nsw i32 -1, %i.e             ; 5 uses
  %i.m = xor i32 %notmask.i.i, -1                 ; 4 uses
  %wide.trip.count179 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph145, %._crit_edge142
  %indvars.iv176 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next177, %._crit_edge142 ] ; 7 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv176
  %i.q = load i8, ptr %i.p, align 1, !tbaa !41
  %i.r = zext i8 %i.q to i32
  %i.s = shl i32 %i.r, %i.g                       ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv176
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = sdiv i32 %i.u, 2
  %i.w = sext i32 %i.v to i64                     ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv176 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv176
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !38 ; 4 uses
  %i.ad = sub nsw i32 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv176
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !35 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40 ; 4 uses
  %i.ak = sub i32 %i.ah, %i.aj
  %i.al = icmp sgt i32 %i.af, 0
  br i1 %i.al, label %.preheader129.lr.ph, label %.preheader131

.preheader129.lr.ph:                              ; preds = %bb.b
  %i.am = icmp sgt i32 %i.aa, 0
  %i.an = and i32 %i.s, 65535
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl i64 %i.ao, %i.l
  %i.aq = zext nneg i32 %i.af to i64              ; 4 uses
  br i1 %i.am, label %.preheader129.preheader, label %.preheader131

.preheader129.preheader:                          ; preds = %.preheader129.lr.ph
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %.preheader129

.preheader131:                                    ; preds = %._crit_edge, %.preheader129.lr.ph, %bb.b
  %i.ar = icmp sgt i32 %i.aj, 0
  br i1 %i.ar, label %.preheader128.lr.ph, label %.preheader130

.preheader128.lr.ph:                              ; preds = %.preheader131
  %i.as = icmp sgt i32 %i.aa, 0
  %i.at = and i32 %i.s, 65535
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.au, %i.l
  %i.aw = zext nneg i32 %i.aj to i64              ; 2 uses
  br i1 %i.as, label %.preheader128.preheader, label %.preheader130

.preheader128.preheader:                          ; preds = %.preheader128.lr.ph
  %i.ax = sext i32 %i.ak to i64                   ; 2 uses
  %i.ay = zext nneg i32 %i.aj to i64
  %i.az = sext i32 %i.ah to i64
  %wide.trip.count156 = zext nneg i32 %i.aa to i64
  br label %.preheader128

.preheader129:                                    ; preds = %.preheader129.preheader, %._crit_edge
  %indvars.iv148 = phi i64 [ 0, %.preheader129.preheader ], [ %indvars.iv.next149, %._crit_edge ] ; 4 uses
  %i.ba = mul nsw i64 %indvars.iv148, %i.w
  %i.bb = getelementptr [2 x i8], ptr %i.o, i64 %i.ba
  %i.bc = sub nuw nsw i64 %i.aq, %indvars.iv148
  %i.bd = mul nsw i64 %i.ap, %i.bc
  %i.be = sdiv i64 %i.bd, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %.preheader129, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader129 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.bf = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !45
  %i.bh = zext i16 %i.bg to i64
  %i.bi = shl i64 %i.bh, %i.l
  %i.bj = mul nsw i64 %i.bi, %indvars.iv148
  %i.bk = sdiv i64 %i.bj, %i.aq
  %i.bl = add nsw i64 %i.bk, %i.be
  %i.bm = ashr i64 %i.bl, %i.l
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = and i32 %notmask.i.i, %i.bn
  %.not.i.i = icmp eq i32 %i.bo, 0
  %isnotneg.inv.i.i = icmp slt i32 %i.bn, 0
  %i.bp = select i1 %isnotneg.inv.i.i, i32 0, i32 %i.m
  %.0.i.i = select i1 %.not.i.i, i32 %i.bn, i32 %i.bp
  %i.bq = trunc i32 %.0.i.i to i16
  store i16 %i.bq, ptr %i.bf, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %i.aq
  br i1 %exitcond152.not, label %.preheader131, label %.preheader129, !llvm.loop !165

.preheader130:                                    ; preds = %._crit_edge135, %.preheader128.lr.ph, %.preheader131
  %i.br = icmp sgt i32 %i.ah, 0
  br i1 %i.br, label %.preheader127.lr.ph, label %._crit_edge142

.preheader127.lr.ph:                              ; preds = %.preheader130
  %i.bs = icmp sgt i32 %i.y, 0
  %i.bt = and i32 %i.s, 65535
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %i.bu, %i.l                     ; 2 uses
  %i.bw = sext i32 %i.y to i64                    ; 2 uses
  %i.bx = icmp sgt i32 %i.ac, 0
  %i.by = sext i32 %i.ad to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.o, i64 %i.by
  %i.bz = sext i32 %i.ac to i64                   ; 2 uses
  %i.ca = zext i32 %i.y to i64                    ; 2 uses
  %i.cb = zext i32 %i.ac to i64                   ; 2 uses
  %wide.trip.count174 = zext nneg i32 %i.ah to i64
  br label %.preheader127

.preheader128:                                    ; preds = %.preheader128.preheader, %._crit_edge135
  %indvars.iv158 = phi i64 [ %i.ax, %.preheader128.preheader ], [ %indvars.iv.next159, %._crit_edge135 ] ; 3 uses
  %i.cc = mul nsw i64 %indvars.iv158, %i.w
  %i.cd = getelementptr [2 x i8], ptr %i.o, i64 %i.cc
  %i.ce = sub nsw i64 %indvars.iv158, %i.ax       ; 2 uses
  %i.cf = mul nsw i64 %i.av, %i.ce
  %i.cg = sdiv i64 %i.cf, %i.aw
  %i.ch = sub nsw i64 %i.ay, %i.ce
end_hunk_0
