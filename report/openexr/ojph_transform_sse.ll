Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_sse?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ojph5local16sse_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.bf = add nuw nsw i32 %i.be, 1
  %xtraiter133 = and i32 %i.bf, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95.prol
  %.09.i.prol = phi ptr [ %i.bj, %.lr.ph.i95.prol ], [ %.083.lcssa, %.lr.ph.i95.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.bi, %.lr.ph.i95.prol ], [ %.084.lcssa, %.lr.ph.i95.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.i95.preheader ]
  %i.bg = load <4 x float>, ptr %.09.i.prol, align 16, !tbaa !8
  %i.bh = fmul <4 x float> %i.bc, %i.bg
  store <4 x float> %i.bh, ptr %.09.i.prol, align 16, !tbaa !8
  %i.bi = add nsw i32 %.078.i.prol, -4            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter133
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !23

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.i95.preheader
  %.09.i.unr = phi ptr [ %.083.lcssa, %.lr.ph.i95.preheader ], [ %i.bj, %.lr.ph.i95.prol ]
  %.078.i.unr = phi i32 [ %.084.lcssa, %.lr.ph.i95.preheader ], [ %i.bi, %.lr.ph.i95.prol ]
  %i.bk = icmp ult i32 %.084.lcssa, 13
  br i1 %i.bk, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.09.i = phi ptr [ %i.bx, %.lr.ph.i95 ], [ %.09.i.unr, %.lr.ph.i95.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.bw, %.lr.ph.i95 ], [ %.078.i.unr, %.lr.ph.i95.prol.loopexit ] ; 2 uses
  %i.bl = load <4 x float>, ptr %.09.i, align 16, !tbaa !8
  %i.bm = fmul <4 x float> %i.bc, %i.bl
  store <4 x float> %i.bm, ptr %.09.i, align 16, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !8
  %i.bp = fmul <4 x float> %i.bc, %i.bo
  store <4 x float> %i.bp, ptr %i.bn, align 16, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.br = load <4 x float>, ptr %i.bq, align 16, !tbaa !8
  %i.bs = fmul <4 x float> %i.bc, %i.br
  store <4 x float> %i.bs, ptr %i.bq, align 16, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i, i64 48 ; 2 uses
  %i.bu = load <4 x float>, ptr %i.bt, align 16, !tbaa !8
  %i.bv = fmul <4 x float> %i.bc, %i.bu
  store <4 x float> %i.bv, ptr %i.bt, align 16, !tbaa !8
  %i.bw = add nsw i32 %.078.i, -16
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i, i64 64
  %i.by = icmp sgt i32 %.078.i, 16
  br i1 %i.by, label %.lr.ph.i95, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, !llvm.loop !13

_ZN4ojph5localL18sse_multiply_constEPffi.exit:    ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %._crit_edge
  %i.bz = insertelement <4 x float> poison, float %i.az, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.not101 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not101, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %_ZN4ojph5localL18sse_multiply_constEPffi.exit
  %i.cb = add nsw i32 %.085.lcssa, -1
  %i.cc = lshr i32 %i.cb, 2
  %i.cd = add nuw nsw i32 %i.cc, 1
  %xtraiter135 = and i32 %i.cd, 3                 ; 2 uses
  %lcmp.mod136.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol

.lr.ph.i96.prol:                                  ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96.prol
  %.09.i97.prol = phi ptr [ %i.ch, %.lr.ph.i96.prol ], [ %.082.lcssa, %.lr.ph.i96.preheader ] ; 3 uses
  %.078.i98.prol = phi i32 [ %i.cg, %.lr.ph.i96.prol ], [ %.085.lcssa, %.lr.ph.i96.preheader ]
  %prol.iter137 = phi i32 [ %prol.iter137.next, %.lr.ph.i96.prol ], [ 0, %.lr.ph.i96.preheader ]
  %i.ce = load <4 x float>, ptr %.09.i97.prol, align 16, !tbaa !8
  %i.cf = fmul <4 x float> %i.ca, %i.ce
  store <4 x float> %i.cf, ptr %.09.i97.prol, align 16, !tbaa !8
  %i.cg = add nsw i32 %.078.i98.prol, -4          ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i97.prol, i64 16 ; 2 uses
  %prol.iter137.next = add i32 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i32 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol, !llvm.loop !24

.lr.ph.i96.prol.loopexit:                         ; preds = %.lr.ph.i96.prol, %.lr.ph.i96.preheader
  %.09.i97.unr = phi ptr [ %.082.lcssa, %.lr.ph.i96.preheader ], [ %i.ch, %.lr.ph.i96.prol ]
  %.078.i98.unr = phi i32 [ %.085.lcssa, %.lr.ph.i96.preheader ], [ %i.cg, %.lr.ph.i96.prol ]
  %i.ci = icmp ult i32 %.085.lcssa, 13
  br i1 %i.ci, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96
  %.09.i97 = phi ptr [ %i.cv, %.lr.ph.i96 ], [ %.09.i97.unr, %.lr.ph.i96.prol.loopexit ] ; 6 uses
  %.078.i98 = phi i32 [ %i.cu, %.lr.ph.i96 ], [ %.078.i98.unr, %.lr.ph.i96.prol.loopexit ] ; 2 uses
  %i.cj = load <4 x float>, ptr %.09.i97, align 16, !tbaa !8
  %i.ck = fmul <4 x float> %i.ca, %i.cj
  store <4 x float> %i.ck, ptr %.09.i97, align 16, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i97, i64 16 ; 2 uses
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !tbaa !8
  %i.cn = fmul <4 x float> %i.ca, %i.cm
  store <4 x float> %i.cn, ptr %i.cl, align 16, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i97, i64 32 ; 2 uses
  %i.cp = load <4 x float>, ptr %i.co, align 16, !tbaa !8
  %i.cq = fmul <4 x float> %i.ca, %i.cp
  store <4 x float> %i.cq, ptr %i.co, align 16, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i97, i64 48 ; 2 uses
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !8
  %i.ct = fmul <4 x float> %i.ca, %i.cs
  store <4 x float> %i.ct, ptr %i.cr, align 16, !tbaa !8
  %i.cu = add nsw i32 %.078.i98, -16
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i97, i64 64
  %i.cw = icmp sgt i32 %.078.i98, 16
  br i1 %i.cw, label %.lr.ph.i96, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99, !llvm.loop !13

bb.c:                                             ; preds = %.lr.ph118, %.loopexit
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph118 ], [ %i.cx, %.loopexit ]
  %.0.in117 = phi i1 [ %5, %.lr.ph118 ], [ %i.eh, %.loopexit ] ; 2 uses
  %.082116 = phi ptr [ %i.al, %.lr.ph118 ], [ %.083115, %.loopexit ] ; 4 uses
  %.083115 = phi ptr [ %i.an, %.lr.ph118 ], [ %.082116, %.loopexit ] ; 8 uses
  %.084114 = phi i32 [ %i.aq, %.lr.ph118 ], [ %.085113, %.loopexit ] ; 4 uses
  %.085113 = phi i32 [ %i.at, %.lr.ph118 ], [ %.084114, %.loopexit ] ; 5 uses
  %i.cx = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cy = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load float, ptr %i.cz, align 4, !tbaa !8
  %i.db = load float, ptr %.083115, align 4, !tbaa !26
  %i.dc = getelementptr inbounds i8, ptr %.083115, i64 -4
  store float %i.db, ptr %i.dc, align 4, !tbaa !26
  %i.dd = add nsw i32 %.084114, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !26
  %i.dh = zext nneg i32 %.084114 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.dh
  store float %i.dg, ptr %i.di, align 4, !tbaa !26
  %i.dj = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not123 = icmp eq i32 %.085113, 0              ; 2 uses
  br i1 %.0.in117, label %.preheader, label %.preheader102

.preheader102:                                    ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %.lr.ph110
  %.087109 = phi i32 [ %i.ds, %.lr.ph110 ], [ %.085113, %.preheader ] ; 2 uses
  %.088108 = phi ptr [ %i.du, %.lr.ph110 ], [ %.082116, %.preheader ] ; 3 uses
  %.090107 = phi ptr [ %i.dt, %.lr.ph110 ], [ %.083115, %.preheader ] ; 3 uses
  %i.dl = load <4 x float>, ptr %.090107, align 16, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %.090107, i64 4
  %i.dn = load <4 x float>, ptr %i.dm, align 4, !tbaa !8
  %i.do = load <4 x float>, ptr %.088108, align 16, !tbaa !8
  %i.dp = fadd <4 x float> %i.dl, %i.dn
  %i.dq = fmul <4 x float> %i.dk, %i.dp
  %i.dr = fadd <4 x float> %i.do, %i.dq
  store <4 x float> %i.dr, ptr %.088108, align 16, !tbaa !8
  %i.ds = add nsw i32 %.087109, -4
  %i.dt = getelementptr inbounds nuw i8, ptr %.090107, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %.088108, i64 16
  %i.dv = icmp sgt i32 %.087109, 4
  br i1 %i.dv, label %.lr.ph110, label %.loopexit, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader102, %.lr.ph
  %.1106 = phi i32 [ %i.ed, %.lr.ph ], [ %.085113, %.preheader102 ] ; 2 uses
  %.189105 = phi ptr [ %i.ef, %.lr.ph ], [ %.082116, %.preheader102 ] ; 3 uses
  %.191104 = phi ptr [ %i.ee, %.lr.ph ], [ %.083115, %.preheader102 ] ; 3 uses
  %i.dw = load <4 x float>, ptr %.191104, align 16, !tbaa !8
  %i.dx = getelementptr inbounds i8, ptr %.191104, i64 -4
  %i.dy = load <4 x float>, ptr %i.dx, align 4, !tbaa !8
  %i.dz = load <4 x float>, ptr %.189105, align 16, !tbaa !8
  %i.ea = fadd <4 x float> %i.dw, %i.dy
  %i.eb = fmul <4 x float> %i.dk, %i.ea
  %i.ec = fadd <4 x float> %i.dz, %i.eb
  store <4 x float> %i.ec, ptr %.189105, align 16, !tbaa !8
  %i.ed = add nsw i32 %.1106, -4
  %i.ee = getelementptr inbounds nuw i8, ptr %.191104, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.189105, i64 16
  %i.eg = icmp sgt i32 %.1106, 4
  br i1 %i.eg, label %.lr.ph, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph110, %.preheader102, %.preheader
  %i.eh = xor i1 %.0.in117, true
  %.not.wide = icmp eq i64 %i.cx, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.c, !llvm.loop !29

_ZN4ojph5localL18sse_multiply_constEPffi.exit99.sink.split: ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !8
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !26 ; 2 uses
  %i.el = fmul float %i.ek, 2.000000e+00
  %.sink130 = select i1 %5, ptr %1, ptr %2
  %.sink = select i1 %5, float %i.ek, float %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %.sink130, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !8
  store float %.sink, ptr %i.en, align 4, !tbaa !26
  br label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99

_ZN4ojph5localL18sse_multiply_constEPffi.exit99:  ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96, %_ZN4ojph5localL18sse_multiply_constEPffi.exit99.sink.split, %_ZN4ojph5localL18sse_multiply_constEPffi.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16sse_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = zext i1 %5 to i32
  %i.g = add i32 %4, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 3 uses
  %not. = xor i1 %5, true
  %i.i = zext i1 %not. to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !22 ; 2 uses
  %i.n = fdiv float 1.000000e+00, %i.m
  %i.o = insertelement <4 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.e, %bb.b ] ; 3 uses
  %.078.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.q = load <4 x float>, ptr %.09.i, align 16, !tbaa !8
  %i.r = fmul <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %.09.i, align 16, !tbaa !8
  %i.s = add nsw i32 %.078.i, -4
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %6 = icmp samesign ugt i32 %.078.i, 4
  br i1 %6, label %.lr.ph.i, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, !llvm.loop !13

_ZN4ojph5localL18sse_multiply_constEPffi.exit:    ; preds = %.lr.ph.i, %bb.b
  %i.u = insertelement <4 x float> poison, float %i.n, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %.not100 = icmp eq i32 %i.k, 0
  br i1 %.not100, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit98, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %_ZN4ojph5localL18sse_multiply_constEPffi.exit, %.lr.ph.i95
  %.09.i96 = phi ptr [ %i.z, %.lr.ph.i95 ], [ %i.c, %_ZN4ojph5localL18sse_multiply_constEPffi.exit ] ; 3 uses
  %.078.i97 = phi i32 [ %i.y, %.lr.ph.i95 ], [ %i.k, %_ZN4ojph5localL18sse_multiply_constEPffi.exit ] ; 2 uses
  %i.w = load <4 x float>, ptr %.09.i96, align 16, !tbaa !8
  %i.x = fmul <4 x float> %i.v, %i.w
  store <4 x float> %i.x, ptr %.09.i96, align 16, !tbaa !8
  %i.y = add nsw i32 %.078.i97, -4
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i96, i64 16
  %7 = icmp samesign ugt i32 %.078.i97, 4
  br i1 %7, label %.lr.ph.i95, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit98, !llvm.loop !13

_ZN4ojph5localL18sse_multiply_constEPffi.exit98:  ; preds = %.lr.ph.i95, %_ZN4ojph5localL18sse_multiply_constEPffi.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !15  ; 2 uses
  %.not117 = icmp eq i8 %i.ab, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZN4ojph5localL18sse_multiply_constEPffi.exit98
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i8 %i.ab to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN4ojph5localL18sse_multiply_constEPffi.exit98
  %i.ad = icmp sgt i32 %4, 0
  br i1 %i.ad, label %.lr.ph.i99.preheader, label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit

.lr.ph.i99.preheader:                             ; preds = %._crit_edge
  %.in94 = select i1 %5, ptr %i.b, ptr %i.d
  %i.ae = load ptr, ptr %.in94, align 8, !tbaa !8 ; 3 uses
  %. = select i1 %5, ptr %i.d, ptr %i.b
  %i.af = load ptr, ptr %., align 8, !tbaa !8     ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = add nuw i32 %4, 15
  %i.aj = and i32 %i.ai, 8
  %lcmp.mod132.not.not = icmp eq i32 %i.aj, 0
  br i1 %lcmp.mod132.not.not, label %.lr.ph.i99.prol, label %.lr.ph.i99.prol.loopexit

.lr.ph.i99.prol:                                  ; preds = %.lr.ph.i99.preheader
  %i.ak = load <4 x float>, ptr %i.af, align 16, !tbaa !8 ; 2 uses
  %i.al = load <4 x float>, ptr %i.ae, align 16, !tbaa !8 ; 2 uses
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.am, ptr %i.ah, align 16, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x float> %i.an, ptr %i.ao, align 16, !tbaa !8
  %i.ap = add nsw i32 %4, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %.lr.ph.i99.prol.loopexit

.lr.ph.i99.prol.loopexit:                         ; preds = %.lr.ph.i99.prol, %.lr.ph.i99.preheader
  %.020.i.unr = phi ptr [ %i.ah, %.lr.ph.i99.preheader ], [ %i.aq, %.lr.ph.i99.prol ]
  %.01419.i.unr = phi ptr [ %i.af, %.lr.ph.i99.preheader ], [ %i.ar, %.lr.ph.i99.prol ]
  %.01518.i.unr = phi ptr [ %i.ae, %.lr.ph.i99.preheader ], [ %i.as, %.lr.ph.i99.prol ]
  %.01617.i.unr = phi i32 [ %4, %.lr.ph.i99.preheader ], [ %i.ap, %.lr.ph.i99.prol ]
  %i.at = icmp ult i32 %4, 9
  br i1 %i.at, label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99
  %.020.i = phi ptr [ %i.bi, %.lr.ph.i99 ], [ %.020.i.unr, %.lr.ph.i99.prol.loopexit ] ; 5 uses
  %.01419.i = phi ptr [ %i.bj, %.lr.ph.i99 ], [ %.01419.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.01518.i = phi ptr [ %i.bk, %.lr.ph.i99 ], [ %.01518.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.01617.i = phi i32 [ %i.bh, %.lr.ph.i99 ], [ %.01617.i.unr, %.lr.ph.i99.prol.loopexit ] ; 2 uses
  %i.au = load <4 x float>, ptr %.01419.i, align 16, !tbaa !8 ; 2 uses
  %i.av = load <4 x float>, ptr %.01518.i, align 16, !tbaa !8 ; 2 uses
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.aw, ptr %.020.i, align 16, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  store <4 x float> %i.ax, ptr %i.ay, align 16, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %.020.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.01419.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.01518.i, i64 16
  %i.bc = load <4 x float>, ptr %i.ba, align 16, !tbaa !8 ; 2 uses
  %i.bd = load <4 x float>, ptr %i.bb, align 16, !tbaa !8 ; 2 uses
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bf = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.be, ptr %i.az, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %.020.i, i64 48
  store <4 x float> %i.bf, ptr %i.bg, align 16, !tbaa !8
  %i.bh = add nsw i32 %.01617.i, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.01419.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.01518.i, i64 32
  %i.bl = icmp sgt i32 %.01617.i, 16
  br i1 %i.bl, label %.lr.ph.i99, label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit, !llvm.loop !30

bb.c:                                             ; preds = %.lr.ph116, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0.in115 = phi i1 [ %5, %.lr.ph116 ], [ %i.cv, %.loopexit ] ; 2 uses
  %.083114 = phi ptr [ %i.c, %.lr.ph116 ], [ %.084113, %.loopexit ] ; 7 uses
  %.084113 = phi ptr [ %i.e, %.lr.ph116 ], [ %.083114, %.loopexit ] ; 3 uses
  %.085112 = phi i32 [ %i.h, %.lr.ph116 ], [ %.086111, %.loopexit ] ; 4 uses
  %.086111 = phi i32 [ %i.k, %.lr.ph116 ], [ %.085112, %.loopexit ] ; 3 uses
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !8
  %i.bp = load float, ptr %.083114, align 4, !tbaa !26
  %i.bq = getelementptr inbounds i8, ptr %.083114, i64 -4
  store float %i.bp, ptr %i.bq, align 4, !tbaa !26
  %i.br = add nsw i32 %.086111, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.083114, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !26
  %i.bv = zext nneg i32 %.086111 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.083114, i64 %i.bv
  store float %i.bu, ptr %i.bw, align 4, !tbaa !26
  %i.bx = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not119 = icmp eq i32 %.085112, 0              ; 2 uses
  br i1 %.0.in115, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.c
  br i1 %.not119, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not119, label %.loopexit, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader, %.lr.ph109
  %.088108 = phi i32 [ %i.cg, %.lr.ph109 ], [ %.085112, %.preheader ] ; 2 uses
  %.089107 = phi ptr [ %i.ci, %.lr.ph109 ], [ %.084113, %.preheader ] ; 3 uses
  %.091106 = phi ptr [ %i.ch, %.lr.ph109 ], [ %.083114, %.preheader ] ; 3 uses
  %i.bz = load <4 x float>, ptr %.091106, align 16, !tbaa !8
  %i.ca = getelementptr inbounds i8, ptr %.091106, i64 -4
  %i.cb = load <4 x float>, ptr %i.ca, align 4, !tbaa !8
  %i.cc = load <4 x float>, ptr %.089107, align 16, !tbaa !8
  %i.cd = fadd <4 x float> %i.bz, %i.cb
  %i.ce = fmul <4 x float> %i.by, %i.cd
  %i.cf = fsub <4 x float> %i.cc, %i.ce
  store <4 x float> %i.cf, ptr %.089107, align 16, !tbaa !8
  %i.cg = add nsw i32 %.088108, -4
  %i.ch = getelementptr inbounds nuw i8, ptr %.091106, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.089107, i64 16
  %i.cj = icmp sgt i32 %.088108, 4
  br i1 %i.cj, label %.lr.ph109, label %.loopexit, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.1105 = phi i32 [ %i.cr, %.lr.ph ], [ %.085112, %.preheader101 ] ; 2 uses
  %.190104 = phi ptr [ %i.ct, %.lr.ph ], [ %.084113, %.preheader101 ] ; 3 uses
  %.192103 = phi ptr [ %i.cs, %.lr.ph ], [ %.083114, %.preheader101 ] ; 3 uses
  %i.ck = load <4 x float>, ptr %.192103, align 16, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.192103, i64 4
  %i.cm = load <4 x float>, ptr %i.cl, align 4, !tbaa !8
  %i.cn = load <4 x float>, ptr %.190104, align 16, !tbaa !8
  %i.co = fadd <4 x float> %i.ck, %i.cm
  %i.cp = fmul <4 x float> %i.by, %i.co
  %i.cq = fsub <4 x float> %i.cn, %i.cp
  store <4 x float> %i.cq, ptr %.190104, align 16, !tbaa !8
  %i.cr = add nsw i32 %.1105, -4
  %i.cs = getelementptr inbounds nuw i8, ptr %.192103, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.190104, i64 16
  %i.cu = icmp sgt i32 %.1105, 4
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph109, %.preheader101, %.preheader
  %i.cv = xor i1 %.0.in115, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !33

bb.d:                                             ; preds = %bb.a
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !26
  br label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = load float, ptr %i.da, align 4, !tbaa !26
  %i.dc = fmul float %i.db, 5.000000e-01
  br label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split

_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split: ; preds = %bb.f, %bb.e
  %.sink = phi float [ %i.cy, %bb.e ], [ %i.dc, %bb.f ]
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8
  store float %.sink, ptr %i.de, align 4, !tbaa !26
  br label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit

_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit: ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99, %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split, %._crit_edge
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!16, !6, i64 8}
!16 = !{!"_ZTSN4ojph5local9param_atkE", !17, i64 0, !17, i64 2, !18, i64 4, !6, i64 8, !19, i64 16, !5, i64 24, !6, i64 28, !21, i64 80, !21, i64 88, !21, i64 96}
!17 = !{!"short", !6, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"p1 _ZTSN4ojph5local9param_atkE", !20, i64 0}
!22 = !{!16, !18, i64 4}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!16, !19, i64 16}
!26 = !{!18, !18, i64 0}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
end_hunk_0
