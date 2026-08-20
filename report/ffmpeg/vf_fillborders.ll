inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@wrap_borders8:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  %i.x = sext i32 %i.o to i64
  br label %.preheader100

.preheader102.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.n, align 4, !tbaa !55
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.loopexit, %bb.b
  %i.y = phi i32 [ %i.br, %.preheader102.loopexit ], [ %i.s, %bb.b ]
  %i.z = phi i32 [ %.pre, %.preheader102.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph109, label %.preheader101

.lr.ph109:                                        ; preds = %.preheader102
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  br label %bb.e

.preheader100:                                    ; preds = %.preheader100.lr.ph, %._crit_edge
  %indvars.iv121 = phi i64 [ %i.x, %.preheader100.lr.ph ], [ %indvars.iv.next122, %._crit_edge ] ; 3 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader100
  %i.ae = mul nsw i64 %indvars.iv121, %i.l        ; 2 uses
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %bb.c

.preheader:                                       ; preds = %bb.c, %.preheader100
  %i.ag = load i32, ptr %i.w, align 4, !tbaa !54  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph106, label %._crit_edge

.lr.ph106:                                        ; preds = %.preheader
  %i.ai = mul nsw i64 %indvars.iv121, %i.l        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ak = phi i32 [ %i.ac, %.lr.ph ], [ %i.ax, %bb.c ]
  %i.al = load i32, ptr %i.v, align 4, !tbaa !45
  %i.am = sext i32 %i.al to i64
  %i.an = load i32, ptr %i.w, align 4, !tbaa !54
  %i.ao = sext i32 %i.an to i64
  %i.ap = sext i32 %i.ak to i64
  %i.aq = add nsw i64 %i.ae, %i.am
  %i.ar = add nsw i64 %i.ap, %i.ao
  %i.as = sub nsw i64 %i.aq, %i.ar
  %i.at = getelementptr i8, ptr %i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58
  %i.aw = getelementptr i8, ptr %i.af, i64 %indvars.iv
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.c, label %.preheader, !llvm.loop !137

bb.d:                                             ; preds = %.lr.ph106, %bb.d
  %indvars.iv118 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next119, %bb.d ] ; 3 uses
  %i.ba = phi i32 [ %i.ag, %.lr.ph106 ], [ %i.bn, %bb.d ]
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !52
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.aj, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %indvars.iv118
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !58
  %i.bg = load i32, ptr %i.v, align 4, !tbaa !45
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sub nsw i64 %i.ai, %i.bi
  %i.bk = getelementptr i8, ptr %i.i, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 %indvars.iv118
  store i8 %i.bf, ptr %i.bm, align 1, !tbaa !58
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !54  ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next119, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !45
  %i.br = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.bs = sub nsw i32 %i.bq, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next122, %i.bt
  br i1 %i.bu, label %.preheader100, label %.preheader102.loopexit, !llvm.loop !139

.preheader101.loopexit:                           ; preds = %bb.e
  %.pre130 = load i32, ptr %i.q, align 4, !tbaa !56
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.loopexit, %.preheader102
  %i.bv = phi i32 [ %.pre130, %.preheader101.loopexit ], [ %i.y, %.preheader102 ] ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %.preheader101
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph109, %bb.e
  %indvars.iv124 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next125, %bb.e ] ; 3 uses
  %i.by = phi i32 [ %i.z, %.lr.ph109 ], [ %i.cm, %bb.e ]
  %i.bz = mul nsw i64 %indvars.iv124, %i.l
  %i.ca = getelementptr inbounds i8, ptr %i.i, i64 %i.bz
  %i.cb = load i32, ptr %i.p, align 4, !tbaa !45
  %i.cc = load i32, ptr %i.q, align 4, !tbaa !56
  %i.cd = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.ce = add i32 %i.cb, %i.cd
  %i.cf = add i32 %i.by, %i.cc
  %i.cg = sub i32 %i.ce, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, %i.l
  %i.cj = getelementptr inbounds i8, ptr %i.i, i64 %i.ci
  %i.ck = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.cl = sext i32 %i.ck to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.cj, i64 %i.cl, i1 false)
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.cm = load i32, ptr %i.n, align 4, !tbaa !55  ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next125, %i.cn
  br i1 %i.co, label %bb.e, label %.preheader101.loopexit, !llvm.loop !140

bb.f:                                             ; preds = %.lr.ph111, %bb.f
  %i.cp = phi i32 [ %i.bv, %.lr.ph111 ], [ %i.de, %bb.f ]
  %.2110 = phi i32 [ 0, %.lr.ph111 ], [ %i.dd, %bb.f ] ; 3 uses
  %i.cq = load i32, ptr %i.p, align 4, !tbaa !45
  %i.cr = sub i32 %.2110, %i.cp
  %i.cs = add i32 %i.cr, %i.cq
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ct, %i.l
  %i.cv = getelementptr inbounds i8, ptr %i.i, i64 %i.cu
  %i.cw = load i32, ptr %i.n, align 4, !tbaa !55
  %i.cx = add nsw i32 %i.cw, %.2110
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %i.cy, %i.l
  %i.da = getelementptr inbounds i8, ptr %i.i, i64 %i.cz
  %i.db = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.dc = sext i32 %i.db to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.da, i64 %i.dc, i1 false)
  %i.dd = add nuw nsw i32 %.2110, 1               ; 2 uses
  %i.de = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.f, label %._crit_edge112, !llvm.loop !141

._crit_edge112:                                   ; preds = %bb.f, %.preheader101
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !39
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next128, %i.dh
  br i1 %i.di, label %bb.b, label %._crit_edge116, !llvm.loop !142

._crit_edge116:                                   ; preds = %._crit_edge112, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wrap_borders16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %._crit_edge113
  %indvars.iv130 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next131, %._crit_edge113 ] ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv130
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv130
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sdiv i32 %i.k, 2
  %i.m = sext i32 %i.l to i64                     ; 8 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv130 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55   ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv130 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56   ; 2 uses
  %i.u = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = icmp slt i32 %i.p, %i.u
  br i1 %i.v, label %.preheader100.lr.ph, label %.preheader102

.preheader100.lr.ph:                              ; preds = %bb.b
  %i.w = load i32, ptr %i.n, align 4, !tbaa !52   ; 5 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv130 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aa = sext i32 %i.w to i64                    ; 3 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !54  ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.i, i64 %i.aa
  %i.ad = sext i32 %i.ab to i64                   ; 3 uses
  %i.ae = sext i32 %i.p to i64                    ; 2 uses
  %i.af = sext i32 %i.u to i64
  %i.ag = add nsw i64 %i.aa, %i.ad
  %wide.trip.count = zext i32 %i.w to i64         ; 8 uses
  %wide.trip.count122 = zext i32 %i.ab to i64     ; 8 uses
  %2 = add nsw i64 %i.aa, %i.ad
  %i.ah = shl nsw i64 %i.ae, 1
  %i.ai = mul nsw i64 %i.ah, %i.m
  %i.aj = shl nsw i64 %i.m, 1
  %min.iters.check146 = icmp ult i32 %i.w, 4
  %min.iters.check148 = icmp ult i32 %i.w, 16
  %i.ak = and i64 %wide.trip.count, 12
  %n.vec150 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n157 = icmp eq i64 %n.vec150, %wide.trip.count
  %min.epilog.iters.check162 = icmp eq i64 %i.ak, 0
  %n.vec164 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n170 = icmp eq i64 %n.vec164, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.ab, 4
  %min.iters.check137 = icmp ult i32 %i.ab, 16
  %i.al = and i64 %wide.trip.count122, 12
  %n.vec = and i64 %wide.trip.count122, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count122
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  %n.vec139 = and i64 %wide.trip.count122, 2147483644 ; 3 uses
  %cmp.n143 = icmp eq i64 %n.vec139, %wide.trip.count122
  %xtraiter172 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br label %.preheader100

.preheader102:                                    ; preds = %._crit_edge, %bb.b
  %i.am = icmp sgt i32 %i.p, 0
  br i1 %i.am, label %.lr.ph110, label %.preheader101

.lr.ph110:                                        ; preds = %.preheader102
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv130
  br label %bb.c

.preheader100:                                    ; preds = %.preheader100.lr.ph, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader100.lr.ph ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv124 = phi i64 [ %i.ae, %.preheader100.lr.ph ], [ %indvars.iv.next125, %._crit_edge ] ; 3 uses
  %i.ao = mul i64 %i.aj, %indvar
  %i.ap = add i64 %i.ai, %i.ao
  br i1 %i.x, label %iter.check159, label %.preheader

iter.check159:                                    ; preds = %.preheader100
  %i.aq = mul nsw i64 %indvars.iv124, %i.m        ; 2 uses
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !45
  %i.as = sext i32 %i.ar to i64
  %i.at = add nsw i64 %i.aq, %i.as
  %i.au = sub nsw i64 %i.at, %i.ag                ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.i, i64 %i.au ; 7 uses
  %i.aw = getelementptr [2 x i8], ptr %i.i, i64 %i.aq ; 7 uses
  br i1 %min.iters.check146, label %vec.epilog.scalar.ph160.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %iter.check159
  %i.ax = shl i64 %i.au, 1
  %i.ay = sub i64 %i.ax, %i.ap
  %diff.check145 = icmp ugt i64 %i.ay, -32
  br i1 %diff.check145, label %vec.epilog.scalar.ph160.preheader, label %vector.main.loop.iter.check147

vector.main.loop.iter.check147:                   ; preds = %vector.memcheck144
  br i1 %min.iters.check148, label %vec.epilog.ph163, label %vector.body151

vector.body151:                                   ; preds = %vector.main.loop.iter.check147, %vector.body151
  %index152 = phi i64 [ %index.next155, %vector.body151 ], [ 0, %vector.main.loop.iter.check147 ] ; 3 uses
  %i.az = getelementptr [2 x i8], ptr %i.av, i64 %index152 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %wide.load153 = load <8 x i16>, ptr %i.az, align 2, !tbaa !66
  %wide.load154 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !66
  %i.bb = getelementptr [2 x i8], ptr %i.aw, i64 %index152 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store <8 x i16> %wide.load153, ptr %i.bb, align 2, !tbaa !66
  store <8 x i16> %wide.load154, ptr %i.bc, align 2, !tbaa !66
  %index.next155 = add nuw i64 %index152, 16      ; 2 uses
  %i.bd = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.bd, label %middle.block156, label %vector.body151, !llvm.loop !143

middle.block156:                                  ; preds = %vector.body151
  br i1 %cmp.n157, label %.preheader, label %vec.epilog.iter.check161

vec.epilog.iter.check161:                         ; preds = %middle.block156
  br i1 %min.epilog.iters.check162, label %vec.epilog.scalar.ph160.preheader, label %vec.epilog.ph163, !prof !73

vec.epilog.ph163:                                 ; preds = %vector.main.loop.iter.check147, %vec.epilog.iter.check161
  %vec.epilog.resume.val158 = phi i64 [ %n.vec150, %vec.epilog.iter.check161 ], [ 0, %vector.main.loop.iter.check147 ]
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph163
  %index166 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph163 ], [ %index.next168, %vec.epilog.vector.body165 ] ; 3 uses
  %i.be = getelementptr [2 x i8], ptr %i.av, i64 %index166
  %wide.load167 = load <4 x i16>, ptr %i.be, align 2, !tbaa !66
  %i.bf = getelementptr [2 x i8], ptr %i.aw, i64 %index166
  store <4 x i16> %wide.load167, ptr %i.bf, align 2, !tbaa !66
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.bg, label %vec.epilog.middle.block169, label %vec.epilog.vector.body165, !llvm.loop !144

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body165
  br i1 %cmp.n170, label %.preheader, label %vec.epilog.scalar.ph160.preheader

vec.epilog.scalar.ph160.preheader:                ; preds = %vector.memcheck144, %iter.check159, %vec.epilog.iter.check161, %vec.epilog.middle.block169
  %indvars.iv.ph = phi i64 [ 0, %iter.check159 ], [ 0, %vector.memcheck144 ], [ %n.vec150, %vec.epilog.iter.check161 ], [ %n.vec164, %vec.epilog.middle.block169 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph160.prol.loopexit, label %vec.epilog.scalar.ph160.prol

vec.epilog.scalar.ph160.prol:                     ; preds = %vec.epilog.scalar.ph160.preheader, %vec.epilog.scalar.ph160.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph160.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph160.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph160.prol ], [ 0, %vec.epilog.scalar.ph160.preheader ]
  %i.bh = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.prol
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !66
  %i.bj = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.prol
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !66
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph160.prol.loopexit, label %vec.epilog.scalar.ph160.prol, !llvm.loop !145

vec.epilog.scalar.ph160.prol.loopexit:            ; preds = %vec.epilog.scalar.ph160.prol, %vec.epilog.scalar.ph160.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph160.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph160.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %.preheader, label %vec.epilog.scalar.ph160

.preheader:                                       ; preds = %vec.epilog.scalar.ph160.prol.loopexit, %vec.epilog.scalar.ph160, %middle.block156, %vec.epilog.middle.block169, %.preheader100
  br i1 %i.ac, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bm = mul nsw i64 %indvars.iv124, %i.m        ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bm ; 7 uses
  %i.bn = load i32, ptr %i.y, align 4, !tbaa !45
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = sub nsw i64 %i.bm, %i.ad
  %i.bq = getelementptr [2 x i8], ptr %i.i, i64 %i.bp
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %i.bo ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bs = sub nsw i64 %i.bo, %2
  %i.bt = shl nsw i64 %i.bs, 1
  %i.bu = add nsw i64 %i.bt, -1
  %diff.check = icmp ult i64 %i.bu, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bv = getelementptr [2 x i8], ptr %gep, i64 %index ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %wide.load = load <8 x i16>, ptr %i.bv, align 2, !tbaa !66
  %wide.load138 = load <8 x i16>, ptr %i.bw, align 2, !tbaa !66
  %i.bx = getelementptr [2 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  store <8 x i16> %wide.load, ptr %i.bx, align 2, !tbaa !66
  store <8 x i16> %wide.load138, ptr %i.by, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr [2 x i8], ptr %gep, i64 %index140
  %wide.load141 = load <4 x i16>, ptr %i.ca, align 2, !tbaa !66
  %i.cb = getelementptr [2 x i8], ptr %i.br, i64 %index140
  store <4 x i16> %wide.load141, ptr %i.cb, align 2, !tbaa !66
  %index.next142 = add nuw i64 %index140, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next142, %n.vec139
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n143, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv119.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec139, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod173.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv119.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cd = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv119.prol
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !66
  %i.cf = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv119.prol
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !66
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !148

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next120.prol, %vec.epilog.scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph160:                          ; preds = %vec.epilog.scalar.ph160.prol.loopexit, %vec.epilog.scalar.ph160
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph160 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph160.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !66
  %i.ck = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !66
  %i.cn = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.next
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.co = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next.1
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !66
  %i.cq = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.next.1
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !66
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cr = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next.2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !66
  %i.ct = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %vec.epilog.scalar.ph160, !llvm.loop !149

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %vec.epilog.scalar.ph ], [ %indvars.iv119.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv119
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !66
  %i.cw = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv119
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !66
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cx = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv.next120
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !66
  %i.cz = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv.next120
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !66
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %i.da = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv.next120.1
  %i.db = load i16, ptr %i.da, align 2, !tbaa !66
  %i.dc = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv.next120.1
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !66
  %indvars.iv.next120.2 = add nuw nsw i64 %indvars.iv119, 3 ; 2 uses
  %i.dd = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv.next120.2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !66
  %i.df = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv.next120.2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !66
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  br i1 %exitcond123.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.dg = icmp slt i64 %indvars.iv.next125, %i.af
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dg, label %.preheader100, label %.preheader102, !llvm.loop !151

.preheader101.loopexit:                           ; preds = %bb.c
  %.pre = load i32, ptr %i.s, align 4, !tbaa !56
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.loopexit, %.preheader102
  %i.dh = phi i32 [ %.pre, %.preheader101.loopexit ], [ %i.t, %.preheader102 ] ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %.preheader101
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv130
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph110, %bb.c
  %indvars.iv127 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next128, %bb.c ] ; 3 uses
  %i.dk = phi i32 [ %i.p, %.lr.ph110 ], [ %i.dz, %bb.c ]
  %i.dl = mul nsw i64 %indvars.iv127, %i.m
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.dl
  %i.dn = load i32, ptr %i.q, align 4, !tbaa !45
  %i.do = load i32, ptr %i.s, align 4, !tbaa !56
  %i.dp = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.dq = add i32 %i.dn, %i.dp
  %i.dr = add i32 %i.dk, %i.do
  %i.ds = sub i32 %i.dq, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %i.dt, %i.m
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.du
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !45
  %i.dx = shl nsw i32 %i.dw, 1
  %i.dy = sext i32 %i.dx to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dm, ptr align 2 %i.dv, i64 %i.dy, i1 false)
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.dz = load i32, ptr %i.o, align 4, !tbaa !55  ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next128, %i.ea
  br i1 %i.eb, label %bb.c, label %.preheader101.loopexit, !llvm.loop !152

bb.d:                                             ; preds = %.lr.ph112, %bb.d
  %i.ec = phi i32 [ %i.dh, %.lr.ph112 ], [ %i.es, %bb.d ]
  %.2111 = phi i32 [ 0, %.lr.ph112 ], [ %i.er, %bb.d ] ; 3 uses
  %i.ed = load i32, ptr %i.q, align 4, !tbaa !45
  %i.ee = sub i32 %.2111, %i.ec
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %i.eg, %i.m
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.eh
  %i.ej = load i32, ptr %i.o, align 4, !tbaa !55
  %i.ek = add nsw i32 %i.ej, %.2111
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.el, %i.m
  %i.en = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.em
  %i.eo = load i32, ptr %i.dj, align 4, !tbaa !45
  %i.ep = shl nsw i32 %i.eo, 1
  %i.eq = sext i32 %i.ep to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ei, ptr align 2 %i.en, i64 %i.eq, i1 false)
  %i.er = add nuw nsw i32 %.2111, 1               ; 2 uses
  %i.es = load i32, ptr %i.s, align 4, !tbaa !56  ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %bb.d, label %._crit_edge113, !llvm.loop !153

._crit_edge113:                                   ; preds = %bb.d, %.preheader101
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.eu = load i32, ptr %i.a, align 4, !tbaa !39
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next131, %i.ev
  br i1 %i.ew, label %bb.b, label %._crit_edge117, !llvm.loop !154

._crit_edge117:                                   ; preds = %._crit_edge113, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fade_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
end_hunk_0
begin_hunk_1_@fade_borders16:bb.a
  %i.ch = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv153 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !66
  %i.cj = zext i16 %i.ci to i64
  %i.ck = shl i64 %i.cj, %i.l
  %i.cl = mul nsw i64 %i.ck, %i.cg
  %i.cm = sdiv i64 %i.cl, %i.ax
  %i.cn = add nsw i64 %i.cm, %i.cf
  %i.co = ashr i64 %i.cn, %i.l
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  %i.cq = and i32 %notmask.i.i, %i.cp
  %.not.i.i116 = icmp eq i32 %i.cq, 0
  %isnotneg.inv.i.i117 = icmp slt i32 %i.cp, 0
  %i.cr = select i1 %isnotneg.inv.i.i117, i32 0, i32 %i.m
  %.0.i.i118 = select i1 %.not.i.i116, i32 %i.cp, i32 %i.cr
  %i.cs = trunc i32 %.0.i.i118 to i16
  store i16 %i.cs, ptr %i.ch, align 2, !tbaa !66
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge135, label %bb.d, !llvm.loop !166

._crit_edge135:                                   ; preds = %bb.d
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.ct = icmp slt i64 %indvars.iv.next159, %i.ba
  br i1 %i.ct, label %.preheader128, label %.preheader130, !llvm.loop !167

.preheader127:                                    ; preds = %.preheader127.lr.ph, %._crit_edge140
  %indvars.iv171 = phi i64 [ 0, %.preheader127.lr.ph ], [ %indvars.iv.next172, %._crit_edge140 ] ; 3 uses
  br i1 %i.bt, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader127
  %i.cu = mul nsw i64 %indvars.iv171, %i.w
  %i.cv = getelementptr [2 x i8], ptr %i.o, i64 %i.cu
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %.preheader127
  br i1 %i.by, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %.preheader
  %i.cw = mul nsw i64 %indvars.iv171, %i.w
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cw
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv161 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next162, %bb.e ] ; 4 uses
  %i.cx = getelementptr [2 x i8], ptr %i.cv, i64 %indvars.iv161 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !66
  %i.cz = sub nsw i64 %i.bx, %indvars.iv161
  %i.da = mul nsw i64 %i.bw, %i.cz
  %i.db = sdiv i64 %i.da, %i.bx
  %i.dc = zext i16 %i.cy to i64
  %i.dd = shl i64 %i.dc, %i.l
  %i.de = mul nsw i64 %i.dd, %indvars.iv161
  %i.df = sdiv i64 %i.de, %i.bx
  %i.dg = add nsw i64 %i.df, %i.db
  %i.dh = ashr i64 %i.dg, %i.l
  %i.di = trunc i64 %i.dh to i32                  ; 3 uses
  %i.dj = and i32 %notmask.i.i, %i.di
  %.not.i.i120 = icmp eq i32 %i.dj, 0
  %isnotneg.inv.i.i121 = icmp slt i32 %i.di, 0
  %i.dk = select i1 %isnotneg.inv.i.i121, i32 0, i32 %i.m
  %.0.i.i122 = select i1 %.not.i.i120, i32 %i.di, i32 %i.dk
  %i.dl = trunc i32 %.0.i.i122 to i16
  store i16 %i.dl, ptr %i.cx, align 2, !tbaa !66
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.preheader, label %bb.e, !llvm.loop !168

bb.f:                                             ; preds = %.lr.ph139, %bb.f
  %indvars.iv166 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next167, %bb.f ] ; 4 uses
  %i.dm = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv166 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !66
  %i.do = mul nsw i64 %i.bw, %indvars.iv166
  %i.dp = sdiv i64 %i.do, %i.ca
  %i.dq = zext i16 %i.dn to i64
  %i.dr = shl i64 %i.dq, %i.l
  %i.ds = sub nsw i64 %i.ca, %indvars.iv166
  %i.dt = mul nsw i64 %i.dr, %i.ds
  %i.du = sdiv i64 %i.dt, %i.ca
  %i.dv = add nsw i64 %i.du, %i.dp
  %i.dw = ashr i64 %i.dv, %i.l
  %i.dx = trunc i64 %i.dw to i32                  ; 3 uses
  %i.dy = and i32 %notmask.i.i, %i.dx
  %.not.i.i124 = icmp eq i32 %i.dy, 0
  %isnotneg.inv.i.i125 = icmp slt i32 %i.dx, 0
  %i.dz = select i1 %isnotneg.inv.i.i125, i32 0, i32 %i.m
  %.0.i.i126 = select i1 %.not.i.i124, i32 %i.dx, i32 %i.dz
  %i.ea = trunc i32 %.0.i.i126 to i16
  store i16 %i.ea, ptr %i.dm, align 2, !tbaa !66
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge140, label %bb.f, !llvm.loop !169

._crit_edge140:                                   ; preds = %bb.f, %.preheader
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge142, label %.preheader127, !llvm.loop !170

._crit_edge142:                                   ; preds = %._crit_edge140, %.preheader130
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge146, label %bb.b, !llvm.loop !171

._crit_edge146:                                   ; preds = %._crit_edge142, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @margins_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.b

._crit_edge146:                                   ; preds = %._crit_edge142, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph145, %._crit_edge142
  %indvars.iv174 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next175, %._crit_edge142 ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv174
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 11 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv174
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 13 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv174 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !56   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv174
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45   ; 7 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv174
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45   ; 2 uses
  %i.v = sub nsw i32 %i.u, %i.q                   ; 3 uses
  %i.w = icmp slt i32 %i.o, %i.v
  br i1 %i.w, label %.lr.ph, label %.preheader130

.lr.ph:                                           ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  %i.z = load i32, ptr %i.m, align 4, !tbaa !52
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = sext i32 %i.s to i64
  %i.ac = sext i32 %i.y to i64                    ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = sext i32 %i.o to i64
  %i.af = sext i32 %i.v to i64
  br label %bb.c

.preheader130:                                    ; preds = %bb.c, %bb.b
  %i.ag = icmp sgt i32 %i.o, 0
  br i1 %i.ag, label %.lr.ph137, label %.preheader

.lr.ph137:                                        ; preds = %.preheader130
  %.0125134 = add nsw i32 %i.o, -1                ; 2 uses
  %i.ah = sext i32 %i.s to i64                    ; 8 uses
  %i.ai = icmp sgt i32 %i.s, 9
  %i.aj = zext i32 %.0125134 to i64               ; 5 uses
  %i.ak = zext nneg i32 %i.o to i64               ; 5 uses
  br i1 %i.ai, label %.lr.ph133.us.preheader, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph137
  %i.al = and i32 %i.o, 1
  %lcmp.mod.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.am = mul nsw i64 %i.ak, %i.l
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !58
  %i.ap = mul nsw i64 %i.aj, %i.l
  %i.aq = getelementptr inbounds i8, ptr %i.i, i64 %i.ap ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !58
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ah
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 %i.ah
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 1
  store i64 %i.av, ptr %i.as, align 1
  %indvars.iv.next150.prol = add nsw i64 %i.aj, -1
  %indvars.iv.next152.prol = add nsw i64 %i.ak, -1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %indvars.iv151.unr = phi i64 [ %i.ak, %.loopexit.preheader ], [ %indvars.iv.next152.prol, %.loopexit.prol ]
  %indvars.iv149.unr = phi i64 [ %i.aj, %.loopexit.preheader ], [ %indvars.iv.next150.prol, %.loopexit.prol ]
  %i.aw = icmp eq i32 %.0125134, 0
  br i1 %i.aw, label %.preheader, label %.loopexit

.lr.ph133.us.preheader:                           ; preds = %.lr.ph137
  %i.ax = add nsw i32 %i.s, -8
  %wide.trip.count = zext i32 %i.ax to i64        ; 4 uses
  %i.ay = sub nsw i64 %i.aj, %i.ak
  %i.az = mul i64 %i.ay, %i.l
  %i.ba = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check200 = icmp ult i64 %i.ba, 4
  %conflict.rdx199 = icmp ult i64 %i.az, 17
  %or.cond = select i1 %min.iters.check200, i1 true, i1 %conflict.rdx199
  %min.iters.check202 = icmp ult i64 %i.ba, 16
  %i.bb = and i64 %i.ba, 12
  %n.vec204 = and i64 %i.ba, -16                  ; 4 uses
  %i.bc = or disjoint i64 %n.vec204, 1
  %cmp.n212 = icmp eq i64 %i.ba, %n.vec204
  %min.epilog.iters.check217 = icmp eq i64 %i.bb, 0
  %n.vec219 = and i64 %i.ba, -4                   ; 3 uses
  %i.bd = or disjoint i64 %n.vec219, 1
  %cmp.n227 = icmp eq i64 %i.ba, %n.vec219
  %i.be = and i64 %wide.trip.count, 1
  %lcmp.mod231.not.not = icmp eq i64 %i.be, 0
  %i.bf = add nsw i64 %wide.trip.count, -1
  br label %iter.check214

iter.check214:                                    ; preds = %.lr.ph133.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv161 = phi i64 [ %i.ak, %.lr.ph133.us.preheader ], [ %indvars.iv.next162, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv159 = phi i64 [ %i.aj, %.lr.ph133.us.preheader ], [ %indvars.iv.next160, %..loopexit_crit_edge.us ] ; 3 uses
  %i.bg = mul nsw i64 %indvars.iv161, %i.l
  %i.bh = getelementptr i8, ptr %i.i, i64 %i.bg   ; 8 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !58
  %i.bj = mul nsw i64 %indvars.iv159, %i.l
  %i.bk = getelementptr inbounds i8, ptr %i.i, i64 %i.bj ; 7 uses
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ah
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ah
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bp = load i64, ptr %i.bo, align 1
  store i64 %i.bp, ptr %i.bm, align 1
  br i1 %or.cond, label %vec.epilog.scalar.ph215.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %iter.check214
  br i1 %min.iters.check202, label %vec.epilog.ph218, label %vector.body205

vector.body205:                                   ; preds = %vector.main.loop.iter.check201, %vector.body205
  %index206 = phi i64 [ %index.next210, %vector.body205 ], [ 0, %vector.main.loop.iter.check201 ] ; 2 uses
  %i.bq = or disjoint i64 %index206, 1            ; 2 uses
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bq  ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %wide.load207 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !58
  %i.bt = zext <16 x i8> %wide.load207 to <16 x i16>
  %wide.load208 = load <16 x i8>, ptr %i.br, align 1, !tbaa !58
  %i.bu = zext <16 x i8> %wide.load208 to <16 x i16>
  %i.bv = getelementptr i8, ptr %i.br, i64 1
  %wide.load209 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !58
  %i.bw = zext <16 x i8> %wide.load209 to <16 x i16>
  %i.bx = shl nuw nsw <16 x i16> %i.bu, splat (i16 1)
  %i.by = add nuw nsw <16 x i16> %i.bw, %i.bt
  %i.bz = mul nuw nsw <16 x i16> %i.by, splat (i16 3)
  %i.ca = add nuw nsw <16 x i16> %i.bx, splat (i16 4)
  %i.cb = add nuw nsw <16 x i16> %i.ca, %i.bz
  %i.cc = lshr <16 x i16> %i.cb, splat (i16 3)
  %i.cd = trunc nuw <16 x i16> %i.cc to <16 x i8>
  %i.ce = getelementptr i8, ptr %i.bk, i64 %i.bq
  store <16 x i8> %i.cd, ptr %i.ce, align 1, !tbaa !58
  %index.next210 = add nuw i64 %index206, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.cf, label %middle.block211, label %vector.body205, !llvm.loop !172

middle.block211:                                  ; preds = %vector.body205
  br i1 %cmp.n212, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check216

vec.epilog.iter.check216:                         ; preds = %middle.block211
  br i1 %min.epilog.iters.check217, label %vec.epilog.scalar.ph215.preheader, label %vec.epilog.ph218, !prof !73

vec.epilog.ph218:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check216
  %vec.epilog.resume.val213 = phi i64 [ %n.vec204, %vec.epilog.iter.check216 ], [ 0, %vector.main.loop.iter.check201 ]
  br label %vec.epilog.vector.body220

vec.epilog.vector.body220:                        ; preds = %vec.epilog.vector.body220, %vec.epilog.ph218
  %index221 = phi i64 [ %vec.epilog.resume.val213, %vec.epilog.ph218 ], [ %index.next225, %vec.epilog.vector.body220 ] ; 2 uses
  %i.cg = or disjoint i64 %index221, 1            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bh, i64 %i.cg  ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %wide.load222 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !58
  %i.cj = zext <4 x i8> %wide.load222 to <4 x i16>
  %wide.load223 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !58
  %i.ck = zext <4 x i8> %wide.load223 to <4 x i16>
  %i.cl = getelementptr i8, ptr %i.ch, i64 1
  %wide.load224 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !58
  %i.cm = zext <4 x i8> %wide.load224 to <4 x i16>
  %i.cn = shl nuw nsw <4 x i16> %i.ck, splat (i16 1)
  %i.co = add nuw nsw <4 x i16> %i.cm, %i.cj
  %i.cp = mul nuw nsw <4 x i16> %i.co, splat (i16 3)
  %i.cq = add nuw nsw <4 x i16> %i.cn, splat (i16 4)
  %i.cr = add nuw nsw <4 x i16> %i.cq, %i.cp
  %i.cs = lshr <4 x i16> %i.cr, splat (i16 3)
  %i.ct = trunc nuw <4 x i16> %i.cs to <4 x i8>
  %i.cu = getelementptr i8, ptr %i.bk, i64 %i.cg
  store <4 x i8> %i.ct, ptr %i.cu, align 1, !tbaa !58
  %index.next225 = add nuw i64 %index221, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.cv, label %vec.epilog.middle.block226, label %vec.epilog.vector.body220, !llvm.loop !173

vec.epilog.middle.block226:                       ; preds = %vec.epilog.vector.body220
  br i1 %cmp.n227, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph215.preheader

vec.epilog.scalar.ph215.preheader:                ; preds = %iter.check214, %vec.epilog.iter.check216, %vec.epilog.middle.block226
  %indvars.iv156.ph = phi i64 [ 1, %iter.check214 ], [ %i.bc, %vec.epilog.iter.check216 ], [ %i.bd, %vec.epilog.middle.block226 ] ; 5 uses
  br i1 %lcmp.mod231.not.not, label %vec.epilog.scalar.ph215.prol, label %vec.epilog.scalar.ph215.prol.loopexit

vec.epilog.scalar.ph215.prol:                     ; preds = %vec.epilog.scalar.ph215.preheader
  %i.cw = getelementptr i8, ptr %i.bh, i64 %indvars.iv156.ph ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !58
  %i.cz = zext i8 %i.cy to i16
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !58
  %i.db = zext i8 %i.da to i16
  %i.dc = getelementptr i8, ptr %i.cw, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !58
  %i.de = zext i8 %i.dd to i16
  %i.df = shl nuw nsw i16 %i.db, 1
  %reass.add128.us.prol = add nuw nsw i16 %i.de, %i.cz
  %reass.mul129.us.prol = mul nuw nsw i16 %reass.add128.us.prol, 3
  %i.dg = add nuw nsw i16 %i.df, 4
  %i.dh = add nuw nsw i16 %i.dg, %reass.mul129.us.prol
  %i.di = lshr i16 %i.dh, 3
  %i.dj = trunc nuw i16 %i.di to i8
  %i.dk = getelementptr i8, ptr %i.bk, i64 %indvars.iv156.ph
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !58
  %indvars.iv.next157.prol = add nuw nsw i64 %indvars.iv156.ph, 1
  br label %vec.epilog.scalar.ph215.prol.loopexit

vec.epilog.scalar.ph215.prol.loopexit:            ; preds = %vec.epilog.scalar.ph215.prol, %vec.epilog.scalar.ph215.preheader
  %indvars.iv156.unr = phi i64 [ %indvars.iv156.ph, %vec.epilog.scalar.ph215.preheader ], [ %indvars.iv.next157.prol, %vec.epilog.scalar.ph215.prol ]
  %i.dl = icmp eq i64 %indvars.iv156.ph, %i.bf
  br i1 %i.dl, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph215

vec.epilog.scalar.ph215:                          ; preds = %vec.epilog.scalar.ph215.prol.loopexit, %vec.epilog.scalar.ph215
  %indvars.iv156 = phi i64 [ %indvars.iv.next157.1, %vec.epilog.scalar.ph215 ], [ %indvars.iv156.unr, %vec.epilog.scalar.ph215.prol.loopexit ] ; 5 uses
  %i.dm = getelementptr i8, ptr %i.bh, i64 %indvars.iv156 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !58
  %i.dp = zext i8 %i.do to i16
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !58
  %i.dr = zext i8 %i.dq to i16
  %i.ds = getelementptr i8, ptr %i.dm, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !58
  %i.du = zext i8 %i.dt to i16
  %i.dv = shl nuw nsw i16 %i.dr, 1
  %reass.add128.us = add nuw nsw i16 %i.du, %i.dp
  %reass.mul129.us = mul nuw nsw i16 %reass.add128.us, 3
  %i.dw = add nuw nsw i16 %i.dv, 4
  %i.dx = add nuw nsw i16 %i.dw, %reass.mul129.us
  %i.dy = lshr i16 %i.dx, 3
  %i.dz = trunc nuw i16 %i.dy to i8
  %i.ea = getelementptr i8, ptr %i.bk, i64 %indvars.iv156
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !58
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.bh, i64 %indvars.iv.next157 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.bh, i64 %indvars.iv156
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !58
  %i.ee = zext i8 %i.ed to i16
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !58
  %i.eg = zext i8 %i.ef to i16
  %i.eh = getelementptr i8, ptr %i.eb, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !58
  %i.ej = zext i8 %i.ei to i16
  %i.ek = shl nuw nsw i16 %i.eg, 1
  %reass.add128.us.1 = add nuw nsw i16 %i.ej, %i.ee
  %reass.mul129.us.1 = mul nuw nsw i16 %reass.add128.us.1, 3
  %i.el = add nuw nsw i16 %i.ek, 4
  %i.em = add nuw nsw i16 %i.el, %reass.mul129.us.1
  %i.en = lshr i16 %i.em, 3
  %i.eo = trunc nuw i16 %i.en to i8
  %i.ep = getelementptr i8, ptr %i.bk, i64 %indvars.iv.next157
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !58
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next157.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph215, !llvm.loop !174

..loopexit_crit_edge.us:                          ; preds = %vec.epilog.scalar.ph215.prol.loopexit, %vec.epilog.scalar.ph215, %vec.epilog.middle.block226, %middle.block211
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1
  %i.eq = icmp sgt i64 %indvars.iv159, 0
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, -1
  br i1 %i.eq, label %iter.check214, label %.preheader, !llvm.loop !175

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.er = mul nsw i64 %indvars.iv, %i.l
  %i.es = getelementptr inbounds i8, ptr %i.i, i64 %i.er ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 %i.aa
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.es, i8 %i.eu, i64 %i.aa, i1 false)
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.ab
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.ad ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ew, i8 %i.ey, i64 %i.ac, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ez = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ez, label %bb.c, label %.preheader130, !llvm.loop !176

.preheader:                                       ; preds = %.loopexit.prol.loopexit, %.loopexit, %..loopexit_crit_edge.us, %.preheader130
  %i.fa = icmp sgt i32 %i.q, 0
  br i1 %i.fa, label %.lr.ph141, label %._crit_edge142
end_hunk_1
