Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/FxchSCHashTable?download=true
inline.NumInlined: 66
inline.NumDeleted: 18
begin_hunk_0_@Fxch_SCHashTableRemove:bb.a
  br i1 %.not140, label %._crit_edge137, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader114
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = and i32 %i.y, -65536
  br label %bb.s

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = icmp eq i32 %i.ae, %3
  br i1 %i.af, label %._crit_edge.split.loop.exit181, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !57

._crit_edge.split.loop.exit181:                   ; preds = %bb.c
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.split.loop.exit181
  %.090.lcssa = phi i32 [ %i.ag, %._crit_edge.split.loop.exit181 ], [ %i.z, %bb.d ] ; 2 uses
  %i.ah = zext i32 %.090.lcssa to i64             ; 3 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.al = getelementptr i8, ptr %1, i64 8
  %i.am = sext i8 %6 to i32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.r
  %indvars.iv156 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next157, %bb.r ] ; 3 uses
  %.088133 = phi i32 [ 0, %._crit_edge ], [ %.2, %bb.r ] ; 8 uses
  %.not = icmp eq i64 %indvars.iv156, %i.ah
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv156 ; 5 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = mul i32 %i.au, %i.as
  %i.aw = getelementptr i8, ptr %i.ar, i64 8
  %.val101 = load ptr, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val101, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27
  %i.bb = mul i32 %i.ba, %i.au
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val101, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.ak, align 4
  %.not95 = icmp ult i32 %i.be, 65536
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  %.not96 = icmp ult i32 %i.bg, 65536             ; 2 uses
  br i1 %.not95, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not96, label %bb.r, label %bb.i

bb.h:                                             ; preds = %bb.f
  br i1 %.not96, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val107 = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.bh = tail call fastcc i32 @Fxch_SCHashTableEntryCompare(ptr noundef nonnull %0, ptr %.val107, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ao)
  %.not97 = icmp eq i32 %i.bh, 0
  br i1 %.not97, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load i32, ptr %i.ak, align 4
  %i.bj = and i32 %i.bi, 65535
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 65535
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %0, align 8, !tbaa !15
  %i.bq = tail call i32 @Fxch_DivCreate(ptr noundef %i.bp, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ai) #18 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.r, label %.preheader113

.preheader113:                                    ; preds = %bb.l
  %i.bs = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !38 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph121.preheader, label %._crit_edge125

.lr.ph121.preheader:                              ; preds = %.preheader113
  %wide.trip.count150 = zext nneg i32 %i.bu to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bu, 8
  br i1 %min.iters.check, label %.lr.ph121.preheader195, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.preheader
  %n.vec = and i64 %wide.trip.count150, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi191 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <4 x i32>, ptr %i.bw, align 4, !tbaa !41
  %wide.load192 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load193 = load <4 x i32>, ptr %i.by, align 4, !tbaa !41
  %wide.load194 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !41
  %i.ca = and <4 x i32> %wide.load193, %wide.load
  %i.cb = and <4 x i32> %wide.load194, %wide.load192
  %i.cc = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.ca)
  %i.cd = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cb)
  %i.ce = add <4 x i32> %i.cc, %vec.phi           ; 2 uses
  %i.cf = add <4 x i32> %i.cd, %vec.phi191        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cf, %i.ce
  %i.ch = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count150
  br i1 %cmp.n, label %.preheader, label %.lr.ph121.preheader195

.lr.ph121.preheader195:                           ; preds = %.lr.ph121.preheader, %middle.block
  %indvars.iv147.ph = phi i64 [ 0, %.lr.ph121.preheader ], [ %n.vec, %middle.block ]
  %.0120.ph = phi i32 [ 0, %.lr.ph121.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph121

.preheader:                                       ; preds = %.lr.ph121, %middle.block
  %.lcssa = phi i32 [ %i.ch, %middle.block ], [ %i.co, %.lr.ph121 ] ; 2 uses
  %.not142 = icmp eq i32 %.lcssa, 0
  br i1 %.not142, label %._crit_edge125, label %.lr.ph124

.lr.ph121:                                        ; preds = %.lr.ph121.preheader195, %.lr.ph121
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %.lr.ph121 ], [ %indvars.iv147.ph, %.lr.ph121.preheader195 ] ; 3 uses
  %.0120 = phi i32 [ %i.co, %.lr.ph121 ], [ %.0120.ph, %.lr.ph121.preheader195 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv147
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !41
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv147
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !41
  %i.cm = and i32 %i.cl, %i.cj
  %i.cn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cm)
  %i.co = add nuw nsw i32 %i.cn, %.0120           ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.preheader, label %.lr.ph121, !llvm.loop !59

.lr.ph124:                                        ; preds = %.preheader, %.lr.ph124
  %.084123 = phi i32 [ %i.cr, %.lr.ph124 ], [ 0, %.preheader ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !15
  %i.cq = tail call i32 @Fxch_DivRemove(ptr noundef %i.cp, i32 noundef %i.am, i32 noundef 0, i32 noundef %i.bq) #18
  %i.cr = add nuw i32 %.084123, 1                 ; 2 uses
  %exitcond152.not = icmp eq i32 %i.cr, %.lcssa
  br i1 %exitcond152.not, label %._crit_edge125.loopexit, label %.lr.ph124, !llvm.loop !60

._crit_edge125.loopexit:                          ; preds = %.lr.ph124
  %.pre159 = load ptr, ptr %0, align 8, !tbaa !15
  %i.cs = sext i32 %i.cq to i64
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.preheader113, %._crit_edge125.loopexit, %.preheader
  %i.ct = phi ptr [ %i.bs, %.preheader ], [ %.pre159, %._crit_edge125.loopexit ], [ %i.bs, %.preheader113 ]
  %.086.lcssa = phi i64 [ -1, %.preheader ], [ %i.cs, %._crit_edge125.loopexit ], [ -1, %.preheader113 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.val102 = load ptr, ptr %i.cw, align 8, !tbaa !40
  %i.cx = getelementptr inbounds [16 x i8], ptr %.val102, i64 %.086.lcssa ; 4 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 6 uses
  %.val104127 = load i32, ptr %i.cy, align 4, !tbaa !23 ; 3 uses
  %i.cz = icmp sgt i32 %.val104127, 1
  br i1 %i.cz, label %.critedge.lr.ph, label %._crit_edge130

.critedge.lr.ph:                                  ; preds = %._crit_edge125
  %i.da = getelementptr i8, ptr %i.cx, i64 8
  %.val106 = load ptr, ptr %i.da, align 8, !tbaa !22 ; 6 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %Vec_IntDrop.exit111
  %.val104161 = phi i32 [ %.val104127, %.critedge.lr.ph ], [ %.val104, %Vec_IntDrop.exit111 ] ; 2 uses
  %indvars.iv153 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next154, %Vec_IntDrop.exit111 ] ; 6 uses
  %i.db = or disjoint i64 %indvars.iv153, 1       ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv153
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !41 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %i.db
  %i.df = load i32, ptr %i.de, align 4, !tbaa !41 ; 2 uses
  %i.dg = load i32, ptr %i.az, align 4, !tbaa !27 ; 2 uses
  %i.dh = icmp eq i32 %i.dd, %i.dg
  %.pre160 = load i32, ptr %i.aj, align 4, !tbaa !27 ; 2 uses
  %i.di = icmp eq i32 %i.df, %.pre160
  %or.cond183 = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond183, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.dj = icmp eq i32 %i.dd, %.pre160
  %i.dk = icmp eq i32 %i.df, %i.dg
  %or.cond = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.n, label %Vec_IntDrop.exit111

bb.n:                                             ; preds = %.critedge, %bb.m
  %i.dl = add nsw i32 %.val104161, -1             ; 3 uses
  store i32 %i.dl, ptr %i.cy, align 4, !tbaa !23
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %i.db, %i.dm
  br i1 %i.dn, label %.lr.ph.i, label %Vec_IntDrop.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.db, %bb.n ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv.next.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !41
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !41
  %i.dr = load i32, ptr %i.cy, align 4, !tbaa !23 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next.i, %i.ds
  br i1 %i.dt, label %.lr.ph.i, label %Vec_IntDrop.exit, !llvm.loop !0

Vec_IntDrop.exit:                                 ; preds = %.lr.ph.i, %bb.n
  %i.du = phi i32 [ %i.dl, %bb.n ], [ %i.dr, %.lr.ph.i ]
  %i.dv = add nsw i32 %i.du, -1                   ; 3 uses
  store i32 %i.dv, ptr %i.cy, align 4, !tbaa !23
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv153, %i.dw
  br i1 %i.dx, label %.lr.ph.i108, label %Vec_IntDrop.exit111

.lr.ph.i108:                                      ; preds = %Vec_IntDrop.exit, %.lr.ph.i108
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i110, %.lr.ph.i108 ], [ %indvars.iv153, %Vec_IntDrop.exit ] ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv.next.i110
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !41
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv.i109
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !41
  %i.eb = load i32, ptr %i.cy, align 4, !tbaa !23 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next.i110, %i.ec
  br i1 %i.ed, label %.lr.ph.i108, label %Vec_IntDrop.exit111, !llvm.loop !0

Vec_IntDrop.exit111:                              ; preds = %.lr.ph.i108, %Vec_IntDrop.exit, %bb.m
  %.val104 = phi i32 [ %.val104161, %bb.m ], [ %i.dv, %Vec_IntDrop.exit ], [ %i.eb, %.lr.ph.i108 ] ; 3 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2
  %7 = trunc i64 %indvars.iv153 to i32
  %8 = add i32 %7, 3
  %i.ee = icmp slt i32 %8, %.val104
  br i1 %i.ee, label %.critedge, label %._crit_edge130, !llvm.loop !61

._crit_edge130:                                   ; preds = %Vec_IntDrop.exit111, %._crit_edge125
  %.val104.lcssa = phi i32 [ %.val104127, %._crit_edge125 ], [ %.val104, %Vec_IntDrop.exit111 ]
  %i.ef = icmp eq i32 %.val104.lcssa, 0
  br i1 %i.ef, label %bb.o, label %bb.q

bb.o:                                             ; preds = %._crit_edge130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %Vec_IntErase.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.eh) #18
  store ptr null, ptr %i.eg, align 8, !tbaa !22
  br label %Vec_IntErase.exit

Vec_IntErase.exit:                                ; preds = %bb.o, %bb.p
  store i32 0, ptr %i.cy, align 4, !tbaa !23
  store i32 0, ptr %i.cx, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %Vec_IntErase.exit, %._crit_edge130
  %i.ei = add nsw i32 %.088133, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %bb.g, %bb.k, %bb.j, %bb.i, %bb.l, %bb.e
  %.2 = phi i32 [ %.088133, %bb.e ], [ %i.ei, %bb.q ], [ %.088133, %bb.g ], [ %.088133, %bb.i ], [ %.088133, %bb.h ], [ %.088133, %bb.k ], [ %.088133, %bb.j ], [ %.088133, %bb.l ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.ej = load i32, ptr %i.x, align 8
  %i.ek = and i32 %i.ej, 65535                    ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = icmp samesign ult i64 %indvars.iv.next157, %i.el
  br i1 %i.em, label %bb.e, label %._crit_edge137.loopexit, !llvm.loop !62

._crit_edge137.loopexit:                          ; preds = %bb.r
  %.pre163 = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.en = xor i32 %.090.lcssa, -1
  %i.eo = add nsw i32 %i.ek, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, 12
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %.preheader114, %._crit_edge137.loopexit
  %i.er = phi i64 [ 0, %.preheader114 ], [ %i.ah, %._crit_edge137.loopexit ]
  %i.es = phi ptr [ %.pre, %.preheader114 ], [ %.pre163, %._crit_edge137.loopexit ]
  %.088.lcssa = phi i32 [ 0, %.preheader114 ], [ %.2, %._crit_edge137.loopexit ]
  %i.et = phi i64 [ -12, %.preheader114 ], [ %i.eq, %._crit_edge137.loopexit ]
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.es, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eu, ptr nonnull align 4 %i.ev, i64 %i.et, i1 false)
  %i.ew = load i32, ptr %i.x, align 8             ; 2 uses
  %i.ex = add i32 %i.ew, 65535
  %i.ey = and i32 %i.ex, 65535
  %i.ez = and i32 %i.ew, -65536
  %i.fa = or disjoint i32 %i.ey, %i.ez
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge137, %bb.b
  %storemerge = phi i32 [ %i.fa, %._crit_edge137 ], [ %i.ab, %bb.b ]
  %.091 = phi i32 [ %.088.lcssa, %._crit_edge137 ], [ 0, %bb.b ]
  store i32 %storemerge, ptr %i.x, align 8
  ret i32 %.091
}

declare i32 @Fxch_DivRemove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Fxch_SCHashTableMemory(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = mul i32 %i.b, 12
  %i.d = add i32 %i.c, 68
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define void @Fxch_SCHashTablePrint(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = mul i32 %i.d, 12
  %i.f = add i32 %i.e, 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28
  %i.i = sitofp i32 %i.f to double
  %i.j = fmul nnan double %i.i, f0x3EB0000000000000
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.h, double noundef %i.j) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntAppend(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val7 = load i32, ptr %i.a, align 4, !tbaa !23
  %i.b = icmp sgt i32 %.val7, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.val6 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val6, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41
  %i.h = load i32, ptr %i.d, align 4, !tbaa !23   ; 7 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !22
  br label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.h, 16
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.l, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.l, i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.h, 1073741823
  %i.p = shl nuw nsw i32 %i.h, 1
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.h, %spec.select.i
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre10, null
  %i.q = zext nneg i32 %spec.select.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @realloc(ptr noundef nonnull %.pre10, i64 noundef %i.r) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.u = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ %i.s, %bb.i ], [ %i.t, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.u, ptr %i.e, align 8, !tbaa !22
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !24
  %.pre11 = load i32, ptr %i.d, align 4, !tbaa !23
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.v = phi i32 [ %i.h, %.Vec_IntPush.exit_crit_edge ], [ %i.h, %bb.g ], [ %.pre11, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.w = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre10, %bb.g ], [ %i.u, %Vec_IntGrow.exit11.sink.split.i ]
  %i.x = add nsw i32 %i.v, 1
  store i32 %i.x, ptr %i.d, align 4, !tbaa !23
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %i.g, ptr %i.z, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !23
  %i.aa = sext i32 %.val to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %.critedge, !llvm.loop !63

.critedge:                                        ; preds = %Vec_IntPush.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

end_hunk_0
