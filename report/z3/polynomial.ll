Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 206
begin_hunk_0_@_ZN10polynomial16monomial_manager7convertEPKNS_8monomialE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial16monomial_manager3mulEjPKNS_5powerEjS3_RNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = add i32 %3, %1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !188
  %i.d = icmp ugt i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN10polynomial12tmp_monomial7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.a, 1
  %i.f = load ptr, ptr %5, align 8, !tbaa !187
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %i.f)
  %i.g = shl i32 %i.a, 4
  %i.h = add i32 %i.g, 20
  %i.i = zext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i) ; 3 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.j, align 4, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !186
  store ptr %i.j, ptr %5, align 8, !tbaa !187
  store i32 %i.e, ptr %i.b, align 8, !tbaa !188
  br label %_ZN10polynomial12tmp_monomial7reserveEj.exit

_ZN10polynomial12tmp_monomial7reserveEj.exit:     ; preds = %bb.a, %bb.b
  %i.l = icmp eq i32 %1, 0
  br i1 %i.l, label %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge, label %.lr.ph

_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge: ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit
  %.pre90.pre = load ptr, ptr %5, align 8, !tbaa !187
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge
  %.pre90 = phi ptr [ %.pre90.pre, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge ], [ %.pre9092, %bb.h ] ; 9 uses
  %.050.lcssa = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge ], [ %.252, %bb.h ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge ], [ %i.ge, %bb.h ] ; 8 uses
  %i.m = icmp ult i32 %.050.lcssa, %3
  br i1 %i.m, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.pre90, i64 20 ; 7 uses
  %i.o = zext i32 %.050.lcssa to i64              ; 8 uses
  %wide.trip.count88 = zext i32 %3 to i64         ; 7 uses
  %i.p = sub nsw i64 %wide.trip.count88, %i.o     ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.p, 38
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.scevcheck128

vector.scevcheck128:                              ; preds = %.lr.ph75
  %i.q = xor i64 %i.o, -1
  %i.r = add nsw i64 %i.q, %wide.trip.count88     ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = xor i32 %.0.lcssa, -1
  %i.u = icmp ult i32 %i.t, %i.s
  %i.v = icmp ugt i64 %i.r, 4294967295
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %scalar.ph145.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %vector.scevcheck128
  %i.x = shl nuw nsw i64 %i.o, 3                  ; 4 uses
  %i.y = getelementptr i8, ptr %4, i64 %i.x
  %i.z = shl nuw nsw i64 %wide.trip.count88, 3    ; 2 uses
  %i.aa = getelementptr i8, ptr %4, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = zext i32 %.0.lcssa to i64               ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 2 uses
  %i.ae = getelementptr i8, ptr %.pre90, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 20
  %i.ag = add nuw nsw i64 %i.ac, %wide.trip.count88
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = sub nsw i64 %i.ai, %i.x
  %i.ak = getelementptr i8, ptr %.pre90, i64 %i.aj
  %i.al = getelementptr i8, ptr %.pre90, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = add nuw nsw i64 %i.ah, 20
  %i.ao = sub nsw i64 %i.an, %i.x
  %i.ap = getelementptr i8, ptr %.pre90, i64 %i.ao
  %i.aq = getelementptr i8, ptr %4, i64 %i.x
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = getelementptr i8, ptr %4, i64 %i.z
  %bound0148 = icmp ult ptr %i.y, %i.ak
  %bound1149 = icmp ult ptr %i.af, %i.ab
  %found.conflict150 = and i1 %bound0148, %bound1149
  %bound0151 = icmp ult ptr %i.am, %i.as
  %bound1152 = icmp ult ptr %i.ar, %i.ap
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %found.conflict150, %found.conflict153
  br i1 %conflict.rdx154, label %scalar.ph145.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck147
  %n.vec156 = and i64 %i.p, -4                    ; 4 uses
  %i.at = add nsw i64 %n.vec156, %i.o
  %i.au = trunc i64 %n.vec156 to i32
  %i.av = add i32 %.0.lcssa, %i.au                ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next167, %vector.body157 ] ; 3 uses
  %i.aw = add nuw i64 %index158, %i.o             ; 2 uses
  %i.ax = trunc i64 %index158 to i32
  %i.ay = add i32 %.0.lcssa, %i.ax                ; 2 uses
  %i.az = add i32 %i.ay, 2
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aw
  %i.bb = getelementptr [8 x i8], ptr %4, i64 %i.aw
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = zext i32 %i.ay to i64
  %i.be = zext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bd
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  %wide.vec159 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !70
  %wide.vec162 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !70
  store <4 x i32> %wide.vec159, ptr %i.bf, align 4, !tbaa !70
  store <4 x i32> %wide.vec162, ptr %i.bg, align 4, !tbaa !70
  %index.next167 = add nuw i64 %index158, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next167, %n.vec156
  br i1 %i.bh, label %middle.block168, label %vector.body157, !llvm.loop !540

middle.block168:                                  ; preds = %vector.body157
  %cmp.n169 = icmp eq i64 %i.p, %n.vec156
  br i1 %cmp.n169, label %.loopexit, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %vector.memcheck147, %vector.scevcheck128, %.lr.ph75, %middle.block168
  %indvars.iv85.ph = phi i64 [ %i.o, %vector.memcheck147 ], [ %i.o, %vector.scevcheck128 ], [ %i.o, %.lr.ph75 ], [ %i.at, %middle.block168 ] ; 4 uses
  %.174.ph = phi i32 [ %.0.lcssa, %vector.memcheck147 ], [ %.0.lcssa, %vector.scevcheck128 ], [ %.0.lcssa, %.lr.ph75 ], [ %i.av, %middle.block168 ] ; 2 uses
  %i.bi = sub nsw i64 %wide.trip.count88, %indvars.iv85.ph
  %xtraiter177 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol

scalar.ph145.prol:                                ; preds = %scalar.ph145.preheader, %scalar.ph145.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %scalar.ph145.prol ], [ %indvars.iv85.ph, %scalar.ph145.preheader ] ; 2 uses
  %.174.prol = phi i32 [ %i.bn, %scalar.ph145.prol ], [ %.174.ph, %scalar.ph145.preheader ] ; 2 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %scalar.ph145.prol ], [ 0, %scalar.ph145.preheader ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85.prol
  %i.bk = zext i32 %.174.prol to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bk
  %i.bm = load <2 x i32>, ptr %i.bj, align 4, !tbaa !70
  store <2 x i32> %i.bm, ptr %i.bl, align 4, !tbaa !70
  %indvars.iv.next86.prol = add nuw nsw i64 %indvars.iv85.prol, 1 ; 2 uses
  %i.bn = add i32 %.174.prol, 1                   ; 3 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol, !llvm.loop !541

scalar.ph145.prol.loopexit:                       ; preds = %scalar.ph145.prol, %scalar.ph145.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph145.preheader ], [ %i.bn, %scalar.ph145.prol ]
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %scalar.ph145.preheader ], [ %indvars.iv.next86.prol, %scalar.ph145.prol ]
  %.174.unr = phi i32 [ %.174.ph, %scalar.ph145.preheader ], [ %i.bn, %scalar.ph145.prol ]
  %i.bo = sub nsw i64 %indvars.iv85.ph, %wide.trip.count88
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit, label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.prol.loopexit, %scalar.ph145
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %scalar.ph145 ], [ %indvars.iv85.unr, %scalar.ph145.prol.loopexit ] ; 5 uses
  %.174 = phi i32 [ %i.cm, %scalar.ph145 ], [ %.174.unr, %scalar.ph145.prol.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.br = zext i32 %.174 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.br
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !70
  store <2 x i32> %i.bt, ptr %i.bs, align 4, !tbaa !70
  %i.bu = add i32 %.174, 1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load <2 x i32>, ptr %i.bw, align 4, !tbaa !70
  store <2 x i32> %i.bz, ptr %i.by, align 4, !tbaa !70
  %i.ca = add i32 %.174, 2
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = zext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cd
  %i.cf = load <2 x i32>, ptr %i.cc, align 4, !tbaa !70
  store <2 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !70
  %i.cg = add i32 %.174, 3
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cj
  %i.cl = load <2 x i32>, ptr %i.ci, align 4, !tbaa !70
  store <2 x i32> %i.cl, ptr %i.ck, align 4, !tbaa !70
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %i.cm = add i32 %.174, 4                        ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %scalar.ph145, !llvm.loop !542

.lr.ph:                                           ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit, %bb.h
  %.067 = phi i32 [ %i.ge, %bb.h ], [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ] ; 11 uses
  %.05066 = phi i32 [ %.252, %bb.h ], [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ] ; 5 uses
  %.05365 = phi i32 [ %.255, %bb.h ], [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ] ; 6 uses
  %i.cn = icmp eq i32 %.05066, %3
  br i1 %i.cn, label %.preheader60, label %bb.c

.preheader60:                                     ; preds = %.lr.ph
  %i.co = icmp ult i32 %.05365, %1
  %.pre = load ptr, ptr %5, align 8, !tbaa !187   ; 9 uses
  br i1 %i.co, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %.preheader60
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre, i64 20 ; 7 uses
  %i.cq = zext i32 %.05365 to i64                 ; 9 uses
  %wide.trip.count = zext i32 %1 to i64           ; 7 uses
  %i.cr = sub nsw i64 %wide.trip.count, %i.cq     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph71
  %i.cs = xor i64 %i.cq, -1
  %i.ct = add nsw i64 %i.cs, %wide.trip.count     ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = xor i32 %.067, -1
  %i.cw = icmp ult i32 %i.cv, %i.cu
  %i.cx = icmp ugt i64 %i.ct, 4294967295
  %i.cy = or i1 %i.cw, %i.cx
  br i1 %i.cy, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cz = shl nuw nsw i64 %i.cq, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cz
  %i.da = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.da
  %scevgep107 = getelementptr i8, ptr %6, i64 -4
  %scevgep108 = getelementptr i8, ptr %.pre, i64 20
  %i.db = zext i32 %.067 to i64                   ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3                ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.dc
  %scevgep110 = getelementptr i8, ptr %.pre, i64 16
  %i.dd = add nuw nsw i64 %wide.trip.count, %i.db
  %i.de = sub nsw i64 %i.dd, %i.cq
  %7 = shl nsw i64 %i.de, 3                       ; 2 uses
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %7
  %scevgep112 = getelementptr i8, ptr %.pre, i64 24
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.dc
  %scevgep114 = getelementptr i8, ptr %.pre, i64 20
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %7
  %scevgep116 = getelementptr i8, ptr %2, i64 4
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.cz
  %scevgep118 = getelementptr i8, ptr %2, i64 %i.da
  %bound0 = icmp ult ptr %scevgep, %scevgep111
  %bound1 = icmp ult ptr %scevgep109, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  %bound0119 = icmp ult ptr %scevgep113, %scevgep118
  %bound1120 = icmp ult ptr %scevgep117, %scevgep115
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx = or i1 %found.conflict, %found.conflict121
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -4                      ; 4 uses
  %i.df = add nsw i64 %n.vec, %i.cq
  %i.dg = trunc i64 %n.vec to i32
  %i.dh = add i32 %.067, %i.dg                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = add nuw i64 %index, %i.cq               ; 2 uses
  %i.dj = trunc i64 %index to i32
  %i.dk = add i32 %.067, %i.dj                    ; 2 uses
  %i.dl = add i32 %i.dk, 2
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.di
  %i.dn = getelementptr [8 x i8], ptr %2, i64 %i.di
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = zext i32 %i.dk to i64
  %i.dq = zext i32 %i.dl to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dp
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dq
  %wide.vec = load <4 x i32>, ptr %i.dm, align 4, !tbaa !70
  %wide.vec123 = load <4 x i32>, ptr %i.do, align 4, !tbaa !70
  store <4 x i32> %wide.vec, ptr %i.dr, align 4, !tbaa !70
  store <4 x i32> %wide.vec123, ptr %i.ds, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph71, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cq, %vector.memcheck ], [ %i.cq, %vector.scevcheck ], [ %i.cq, %.lr.ph71 ], [ %i.df, %middle.block ] ; 4 uses
  %.270.ph = phi i32 [ %.067, %vector.memcheck ], [ %.067, %vector.scevcheck ], [ %.067, %.lr.ph71 ], [ %i.dh, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.du, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.270.prol = phi i32 [ %i.dz, %scalar.ph.prol ], [ %.270.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.dw = zext i32 %.270.prol to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = load <2 x i32>, ptr %i.dv, align 4, !tbaa !70
  store <2 x i32> %i.dy, ptr %i.dx, align 4, !tbaa !70
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.dz = add i32 %.270.prol, 1                   ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !544

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa173.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.dz, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.270.unr = phi i32 [ %.270.ph, %scalar.ph.preheader ], [ %i.dz, %scalar.ph.prol ]
  %i.ea = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.270 = phi i32 [ %i.ey, %scalar.ph ], [ %.270.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ed = zext i32 %.270 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ed
  %i.ef = load <2 x i32>, ptr %i.ec, align 4, !tbaa !70
  store <2 x i32> %i.ef, ptr %i.ee, align 4, !tbaa !70
  %i.eg = add i32 %.270, 1
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = zext i32 %i.eg to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ej
  %i.el = load <2 x i32>, ptr %i.ei, align 4, !tbaa !70
  store <2 x i32> %i.el, ptr %i.ek, align 4, !tbaa !70
  %i.em = add i32 %.270, 2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ep
  %i.er = load <2 x i32>, ptr %i.eo, align 4, !tbaa !70
  store <2 x i32> %i.er, ptr %i.eq, align 4, !tbaa !70
  %i.es = add i32 %.270, 3
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = zext i32 %i.es to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ev
  %i.ex = load <2 x i32>, ptr %i.eu, align 4, !tbaa !70
  store <2 x i32> %i.ex, ptr %i.ew, align 4, !tbaa !70
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ey = add i32 %.270, 4                        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !545

bb.c:                                             ; preds = %.lr.ph
  %i.ez = zext i32 %.05365 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez ; 3 uses
  %i.fb = zext i32 %.05066 to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fb ; 3 uses
  %i.fd = load i32, ptr %i.fa, align 4, !tbaa !73 ; 4 uses
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !73 ; 3 uses
  %i.ff = icmp eq i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !74
  %i.fk = add i32 %i.fj, %i.fh
  %i.fl = load ptr, ptr %5, align 8, !tbaa !187   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.fn = zext i32 %.067 to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  store i32 %i.fd, ptr %i.fo, align 4, !tbaa !73
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %i.fk, ptr %i.fp, align 4, !tbaa !74
  %i.fq = add i32 %.05365, 1
  %i.fr = add i32 %.05066, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.fs = icmp ult i32 %i.fd, %i.fe
  %i.ft = load ptr, ptr %5, align 8, !tbaa !187   ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.fv = zext i32 %.067 to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  br i1 %i.fs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.fd, ptr %i.fw, align 4, !tbaa !73
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !74
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !74
  %i.ga = add i32 %.05365, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.fe, ptr %i.fw, align 4, !tbaa !73
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !74
  store i32 %i.gc, ptr %i.fx, align 4, !tbaa !74
  %i.gd = add i32 %.05066, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.pre9092 = phi ptr [ %i.fl, %bb.d ], [ %i.ft, %bb.f ], [ %i.ft, %bb.g ]
  %.255 = phi i32 [ %i.fq, %bb.d ], [ %i.ga, %bb.f ], [ %.05365, %bb.g ] ; 2 uses
  %.252 = phi i32 [ %i.fr, %bb.d ], [ %.05066, %bb.f ], [ %i.gd, %bb.g ] ; 2 uses
  %i.ge = add i32 %.067, 1                        ; 2 uses
  %i.gf = icmp eq i32 %.255, %1
  br i1 %i.gf, label %.preheader, label %.lr.ph, !llvm.loop !546

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph145.prol.loopexit, %scalar.ph145, %middle.block, %middle.block168, %.preheader60, %.preheader
  %i.gg = phi ptr [ %.pre90, %middle.block168 ], [ %.pre90, %.preheader ], [ %.pre, %.preheader60 ], [ %.pre, %middle.block ], [ %.pre90, %scalar.ph145.prol.loopexit ], [ %.pre90, %scalar.ph145 ], [ %.pre, %scalar.ph ], [ %.pre, %scalar.ph.prol.loopexit ]
  %.3 = phi i32 [ %i.av, %middle.block168 ], [ %.0.lcssa, %.preheader ], [ %.067, %.preheader60 ], [ %i.dh, %middle.block ], [ %i.cm, %scalar.ph145 ], [ %.lcssa.unr, %scalar.ph145.prol.loopexit ], [ %.lcssa173.unr, %scalar.ph.prol.loopexit ], [ %i.ey, %scalar.ph ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 %.3, ptr %i.gh, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10polynomial16monomial_manager3divEPKNS_8monomialES3_R7obj_refIS1_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159  ; 6 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !199
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !199
  br label %bb.d

bb.d:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i, %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !221    ; 4 uses
  %.not.i4.i = icmp eq ptr %i.k, null
  br i1 %.not.i4.i, label %.sink.split, label %bb.e
end_hunk_0
