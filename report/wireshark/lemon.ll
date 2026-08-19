inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@acttab_insert:bb.a
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 4
  store i32 -1, ptr %i.y, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.z = load i32, ptr %i.f, align 4              ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit151, !llvm.loop !9

.loopexit151:                                     ; preds = %.lr.ph, %.preheader150, %bb.a
  %i.ac = phi i32 [ %i.g, %bb.a ], [ %i.p, %.preheader150 ], [ %i.z, %.lr.ph ]
  %.not135 = icmp eq i32 %1, 0                    ; 3 uses
  br i1 %.not135, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit151
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit151, %bb.d
  %i.af = phi i32 [ %i.ae, %bb.d ], [ 0, %.loopexit151 ] ; 2 uses
  %i.ag = load i32, ptr %0, align 8               ; 9 uses
  %.1125162 = add i32 %i.ag, -1                   ; 2 uses
  %.not136163 = icmp slt i32 %.1125162, %i.af
  br i1 %.not136163, label %.thread143, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = getelementptr i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 28
  %i.am = getelementptr i8, ptr %0, i64 36
  %i.an = getelementptr i8, ptr %0, i64 16
  %i.ao = icmp sgt i32 %i.ag, 0
  %wide.trip.count198 = zext i32 %i.ag to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 9
  %i.ap = and i64 %wide.trip.count198, 7          ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 8, i64 %i.ap
  %n.vec = sub nsw i64 %wide.trip.count198, %i.ar ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph166, %.thread
  %.1125164 = phi i32 [ %.1125162, %.lr.ph166 ], [ %.1125, %.thread ] ; 5 uses
  %i.as = sext i32 %.1125164 to i64
  %i.at = getelementptr [8 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, %i.ak
  br i1 %i.av, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %i.at, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = load i32, ptr %i.al, align 4
  %.not137 = icmp eq i32 %i.ax, %i.ay
  br i1 %.not137, label %.preheader148, label %.thread

.preheader148:                                    ; preds = %bb.g
  %i.az = load i32, ptr %i.am, align 4            ; 3 uses
  %invariant.op = sub i32 %.1125164, %i.ak
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph157, label %.preheader147

.lr.ph157:                                        ; preds = %.preheader148
  %i.bb = load ptr, ptr %i.an, align 8
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.k
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count
  br i1 %exitcond.not, label %.preheader147, label %bb.i, !llvm.loop !10

.preheader147:                                    ; preds = %bb.h, %.preheader148
  br i1 %i.ao, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %.preheader147
  %i.bc = sub i32 %i.ak, %.1125164                ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph160
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op262 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi245 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %i.ai, i64 %index
  %i.be = getelementptr [8 x i8], ptr %i.ai, i64 %index
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %wide.vec = load <8 x i32>, ptr %i.bd, align 4
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec246 = load <8 x i32>, ptr %i.bf, align 4
  %strided.vec247 = shufflevector <8 x i32> %wide.vec246, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.bg = icmp sgt <4 x i32> %strided.vec, splat (i32 -1)
  %i.bh = icmp sgt <4 x i32> %strided.vec247, splat (i32 -1)
  %i.bi = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass263 = add <4 x i32> %vec.ind, %invariant.op262
  %i.bj = icmp eq <4 x i32> %strided.vec, %i.bi
  %i.bk = icmp eq <4 x i32> %strided.vec247, %.reass263
  %i.bl = and <4 x i1> %i.bg, %i.bj
  %i.bm = and <4 x i1> %i.bh, %i.bk
  %i.bn = zext <4 x i1> %i.bl to <4 x i32>
  %i.bo = zext <4 x i1> %i.bm to <4 x i32>
  %i.bp = add <4 x i32> %vec.phi, %i.bn           ; 2 uses
  %i.bq = add <4 x i32> %vec.phi245, %i.bo        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bq, %i.bp
  %i.bs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph160, %middle.block
  %indvars.iv195.ph = phi i64 [ 0, %.lr.ph160 ], [ %n.vec, %middle.block ]
  %.0159.ph = phi i32 [ 0, %.lr.ph160 ], [ %i.bs, %middle.block ]
  br label %scalar.ph

bb.i:                                             ; preds = %.lr.ph157, %bb.h
  %indvars.iv192 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next193, %bb.h ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bb, i64 %indvars.iv192 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.reass = add i32 %i.bu, %invariant.op          ; 3 uses
  %i.bv = icmp sgt i32 %.reass, -1
  %.not138 = icmp slt i32 %.reass, %i.ag
  %or.cond = and i1 %i.bv, %.not138
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bw = zext nneg i32 %.reass to i64
  %i.bx = getelementptr [8 x i8], ptr %i.ai, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %.not139 = icmp eq i32 %i.bu, %i.by
  br i1 %.not139, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr i8, ptr %i.bt, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = getelementptr i8, ptr %i.bx, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %.not140 = icmp eq i32 %i.ca, %i.cc
  br i1 %.not140, label %bb.h, label %.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %scalar.ph ], [ %indvars.iv195.ph, %scalar.ph.preheader ] ; 3 uses
  %.0159 = phi i32 [ %.1, %scalar.ph ], [ %.0159.ph, %scalar.ph.preheader ]
  %indvars197 = trunc i64 %indvars.iv195 to i32
  %i.cd = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv195
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  %i.cg = add i32 %i.bc, %indvars197
  %i.ch = icmp eq i32 %i.ce, %i.cg
  %narrow = and i1 %i.cf, %i.ch
  %spec.select = zext i1 %narrow to i32
  %.1 = add i32 %.0159, %spec.select              ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge, label %scalar.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %scalar.ph, %.preheader147
  %.0.lcssa = phi i32 [ 0, %.preheader147 ], [ %.1, %scalar.ph ]
  %i.ci = icmp eq i32 %.0.lcssa, %i.az
  br i1 %i.ci, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.f, %._crit_edge, %bb.g
  %.1125 = add i32 %.1125164, -1                  ; 2 uses
  %.not136 = icmp slt i32 %.1125, %i.af
  br i1 %.not136, label %.thread143, label %bb.f, !llvm.loop !15

.thread143:                                       ; preds = %.thread, %bb.e
  br i1 %.not135, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread143
  %i.cj = getelementptr i8, ptr %0, i64 24
  %i.ck = load i32, ptr %i.cj, align 8
  br label %bb.m

bb.m:                                             ; preds = %.thread143, %bb.l
  %i.cl = phi i32 [ %i.ck, %bb.l ], [ 0, %.thread143 ] ; 3 uses
  %i.cm = getelementptr i8, ptr %0, i64 32
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = sub i32 %i.ac, %i.cn                    ; 3 uses
  %i.cp = icmp slt i32 %i.cl, %i.co
  br i1 %i.cp, label %.lr.ph181, label %.loopexit

.lr.ph181:                                        ; preds = %bb.m
  %i.cq = getelementptr i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = getelementptr i8, ptr %0, i64 36
  %i.ct = getelementptr i8, ptr %0, i64 16
  %i.cu = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cv = icmp sgt i32 %i.ag, 0
  %wide.trip.count208 = zext nneg i32 %i.ag to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph181, %.thread145
  %.2126178 = phi i32 [ %i.cl, %.lr.ph181 ], [ %3, %.thread145 ] ; 6 uses
  %2 = sext i32 %.2126178 to i64
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %2
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %.preheader146, label %.thread145

.preheader146:                                    ; preds = %bb.n
  %i.cz = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph168, label %.preheader

.lr.ph168:                                        ; preds = %.preheader146
  %i.db = load ptr, ptr %i.ct, align 8
  %i.dc = load i32, ptr %i.cu, align 8
  %invariant.op169 = sub i32 %.2126178, %i.dc
  %wide.trip.count203 = zext nneg i32 %i.cz to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.q
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.preheader, label %bb.p, !llvm.loop !16

.preheader:                                       ; preds = %bb.o, %.preheader146
  br i1 %i.cv, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %.preheader
  %i.dd = load i32, ptr %i.cu, align 8
  %invariant.op176 = sub i32 %i.dd, %.2126178
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph168, %bb.o
  %indvars.iv200 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next201, %bb.o ] ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %indvars.iv200
  %i.df = load i32, ptr %i.de, align 4
  %.reass170 = add i32 %i.df, %invariant.op169    ; 2 uses
  %i.dg = icmp slt i32 %.reass170, 0
  br i1 %i.dg, label %.thread145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = zext nneg i32 %.reass170 to i64
  %i.di = getelementptr [8 x i8], ptr %i.cr, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %.thread145, label %bb.o

bb.r:                                             ; preds = %.lr.ph172, %bb.s
  %indvars.iv205 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next206, %bb.s ] ; 3 uses
  %indvars207 = trunc i64 %indvars.iv205 to i32   ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv205
  %i.dm = load i32, ptr %i.dl, align 4
  %.reass177 = add i32 %invariant.op176, %indvars207
  %i.dn = icmp eq i32 %i.dm, %.reass177
  br i1 %i.dn, label %._crit_edge173, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %.loopexit, label %bb.r, !llvm.loop !17

._crit_edge173:                                   ; preds = %bb.r, %.preheader
  %.3.lcssa = phi i32 [ 0, %.preheader ], [ %indvars207, %bb.r ]
  %i.do = icmp eq i32 %.3.lcssa, %i.ag
  br i1 %i.do, label %.loopexit, label %.thread145

.thread145:                                       ; preds = %bb.p, %bb.q, %bb.n, %._crit_edge173
  %3 = add nsw i32 %.2126178, 1                   ; 2 uses
  %i.dp = icmp slt i32 %3, %i.co
  br i1 %i.dp, label %bb.n, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge173, %.thread145, %bb.s, %bb.m
  %.3127 = phi i32 [ %.2126178, %bb.s ], [ %i.cl, %bb.m ], [ %.2126178, %._crit_edge173 ], [ %i.co, %.thread145 ], [ %.1125164, %._crit_edge ] ; 3 uses
  %i.dq = getelementptr i8, ptr %0, i64 36        ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %.loopexit
  %i.dt = getelementptr i8, ptr %0, i64 16
  %i.du = getelementptr i8, ptr %0, i64 24
  %i.dv = getelementptr i8, ptr %0, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph187, %bb.v
  %indvars.iv213 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next214, %bb.v ] ; 2 uses
  %i.dw = load ptr, ptr %i.dt, align 8
  %i.dx = getelementptr [8 x i8], ptr %i.dw, i64 %indvars.iv213 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = load i32, ptr %i.du, align 8
  %i.ea = sub i32 %i.dy, %i.dz
  %i.eb = add i32 %i.ea, %.3127                   ; 3 uses
  %i.ec = load ptr, ptr %i.dv, align 8
  %i.ed = sext i32 %i.eb to i64
  %i.ee = getelementptr [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i64, ptr %i.dx, align 4
  store i64 %i.ef, ptr %i.ee, align 4
  %i.eg = load i32, ptr %0, align 8               ; 2 uses
  %.not142 = icmp slt i32 %i.eb, %i.eg
  br i1 %.not142, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = add i32 %i.eb, 1                        ; 2 uses
  store i32 %i.eh, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ei = phi i32 [ %i.eg, %bb.t ], [ %i.eh, %bb.u ]
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %i.ej = load i32, ptr %i.dq, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next214, %i.ek
  br i1 %i.el, label %bb.t, label %._crit_edge188, !llvm.loop !19

._crit_edge188:                                   ; preds = %bb.v, %.loopexit
  %i.em = phi i32 [ %i.ag, %.loopexit ], [ %i.ei, %bb.v ]
  br i1 %.not135, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge188
  %i.en = getelementptr i8, ptr %0, i64 44
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add i32 %i.eo, %.3127                   ; 2 uses
  %.not141 = icmp slt i32 %i.ep, %i.em
  br i1 %.not141, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge188
  store i32 0, ptr %i.dq, align 4
  %i.er = getelementptr i8, ptr %0, i64 24
  %i.es = load i32, ptr %i.er, align 8
  %i.et = sub i32 %.3127, %i.es
  ret i32 %i.et
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @acttab_action_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.05 = phi i32 [ %i.a, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05, -1
  %i.k = icmp sgt i32 %.05, 1
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.c ], [ %.05, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @FindRulePrecedences(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.02329 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not30 = icmp eq ptr %.02329, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.a, %.critedge
  %.02331 = phi ptr [ %.023, %.critedge ], [ %.02329, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.02331, i64 80    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader24, label %.critedge

.preheader24:                                     ; preds = %.lr.ph33
  %i.e = getelementptr i8, ptr %.02331, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %.preheader24
  %i.h = getelementptr i8, ptr %.02331, i64 32
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %.loopexit
  %indvars.iv36 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next37, %.loopexit ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph27 ], [ %i.ae, %.loopexit ]
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv36
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.n, i64 88
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr i8, ptr %i.n, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !21

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.loopexit.sink.split, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.n, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.n, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %.sink, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %.preheader, %bb.f
  %i.ae = phi ptr [ null, %.preheader ], [ null, %bb.f ], [ %.sink, %.loopexit.sink.split ], [ null, %bb.d ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next37, %i.i
  br i1 %i.af, label %bb.b, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %.loopexit, %bb.b, %.preheader24, %.lr.ph33
  %i.ag = getelementptr i8, ptr %.02331, i64 128
  %.023 = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !23

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @FindFirstSets(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
end_hunk_0
