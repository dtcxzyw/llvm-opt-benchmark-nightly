Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ojph5local16avx_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.an = add nuw nsw i32 %i.am, 1
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95.prol
  %.09.i.prol = phi ptr [ %i.ar, %.lr.ph.i95.prol ], [ %.083.lcssa, %.lr.ph.i95.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.aq, %.lr.ph.i95.prol ], [ %.084.lcssa, %.lr.ph.i95.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.i95.preheader ]
  %i.ao = load <8 x float>, ptr %.09.i.prol, align 32, !tbaa !8
  %i.ap = fmul <8 x float> %i.ak, %i.ao
  store <8 x float> %i.ap, ptr %.09.i.prol, align 32, !tbaa !8
  %i.aq = add nsw i32 %.078.i.prol, -8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !23

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.i95.preheader
  %.09.i.unr = phi ptr [ %.083.lcssa, %.lr.ph.i95.preheader ], [ %i.ar, %.lr.ph.i95.prol ]
  %.078.i.unr = phi i32 [ %.084.lcssa, %.lr.ph.i95.preheader ], [ %i.aq, %.lr.ph.i95.prol ]
  %i.as = icmp ult i32 %.084.lcssa, 25
  br i1 %i.as, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.09.i = phi ptr [ %i.bf, %.lr.ph.i95 ], [ %.09.i.unr, %.lr.ph.i95.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.be, %.lr.ph.i95 ], [ %.078.i.unr, %.lr.ph.i95.prol.loopexit ] ; 2 uses
  %i.at = load <8 x float>, ptr %.09.i, align 32, !tbaa !8
  %i.au = fmul <8 x float> %i.ak, %i.at
  store <8 x float> %i.au, ptr %.09.i, align 32, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.aw = load <8 x float>, ptr %i.av, align 32, !tbaa !8
  %i.ax = fmul <8 x float> %i.ak, %i.aw
  store <8 x float> %i.ax, ptr %i.av, align 32, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %i.az = load <8 x float>, ptr %i.ay, align 32, !tbaa !8
  %i.ba = fmul <8 x float> %i.ak, %i.az
  store <8 x float> %i.ba, ptr %i.ay, align 32, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i, i64 96 ; 2 uses
  %i.bc = load <8 x float>, ptr %i.bb, align 32, !tbaa !8
  %i.bd = fmul <8 x float> %i.ak, %i.bc
  store <8 x float> %i.bd, ptr %i.bb, align 32, !tbaa !8
  %i.be = add nsw i32 %.078.i, -32
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i, i64 128
  %i.bg = icmp sgt i32 %.078.i, 32
  br i1 %i.bg, label %.lr.ph.i95, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, !llvm.loop !13

_ZN4ojph5localL18avx_multiply_constEPffi.exit:    ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %._crit_edge
  %i.bh = insertelement <8 x float> poison, float %i.ah, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %.not101 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not101, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %_ZN4ojph5localL18avx_multiply_constEPffi.exit
  %i.bj = add nsw i32 %.085.lcssa, -1
  %i.bk = lshr i32 %i.bj, 3
  %i.bl = add nuw nsw i32 %i.bk, 1
  %xtraiter133 = and i32 %i.bl, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol

.lr.ph.i96.prol:                                  ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96.prol
  %.09.i97.prol = phi ptr [ %i.bp, %.lr.ph.i96.prol ], [ %.082.lcssa, %.lr.ph.i96.preheader ] ; 3 uses
  %.078.i98.prol = phi i32 [ %i.bo, %.lr.ph.i96.prol ], [ %.085.lcssa, %.lr.ph.i96.preheader ]
  %prol.iter135 = phi i32 [ %prol.iter135.next, %.lr.ph.i96.prol ], [ 0, %.lr.ph.i96.preheader ]
  %i.bm = load <8 x float>, ptr %.09.i97.prol, align 32, !tbaa !8
  %i.bn = fmul <8 x float> %i.bi, %i.bm
  store <8 x float> %i.bn, ptr %.09.i97.prol, align 32, !tbaa !8
  %i.bo = add nsw i32 %.078.i98.prol, -8          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i97.prol, i64 32 ; 2 uses
  %prol.iter135.next = add i32 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i32 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol, !llvm.loop !24

.lr.ph.i96.prol.loopexit:                         ; preds = %.lr.ph.i96.prol, %.lr.ph.i96.preheader
  %.09.i97.unr = phi ptr [ %.082.lcssa, %.lr.ph.i96.preheader ], [ %i.bp, %.lr.ph.i96.prol ]
  %.078.i98.unr = phi i32 [ %.085.lcssa, %.lr.ph.i96.preheader ], [ %i.bo, %.lr.ph.i96.prol ]
  %i.bq = icmp ult i32 %.085.lcssa, 25
  br i1 %i.bq, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96
  %.09.i97 = phi ptr [ %i.cd, %.lr.ph.i96 ], [ %.09.i97.unr, %.lr.ph.i96.prol.loopexit ] ; 6 uses
  %.078.i98 = phi i32 [ %i.cc, %.lr.ph.i96 ], [ %.078.i98.unr, %.lr.ph.i96.prol.loopexit ] ; 2 uses
  %i.br = load <8 x float>, ptr %.09.i97, align 32, !tbaa !8
  %i.bs = fmul <8 x float> %i.bi, %i.br
  store <8 x float> %i.bs, ptr %.09.i97, align 32, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i97, i64 32 ; 2 uses
  %i.bu = load <8 x float>, ptr %i.bt, align 32, !tbaa !8
  %i.bv = fmul <8 x float> %i.bi, %i.bu
  store <8 x float> %i.bv, ptr %i.bt, align 32, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i97, i64 64 ; 2 uses
  %i.bx = load <8 x float>, ptr %i.bw, align 32, !tbaa !8
  %i.by = fmul <8 x float> %i.bi, %i.bx
  store <8 x float> %i.by, ptr %i.bw, align 32, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i97, i64 96 ; 2 uses
  %i.ca = load <8 x float>, ptr %i.bz, align 32, !tbaa !8
  %i.cb = fmul <8 x float> %i.bi, %i.ca
  store <8 x float> %i.cb, ptr %i.bz, align 32, !tbaa !8
  %i.cc = add nsw i32 %.078.i98, -32
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i97, i64 128
  %i.ce = icmp sgt i32 %.078.i98, 32
  br i1 %i.ce, label %.lr.ph.i96, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99, !llvm.loop !13

bb.c:                                             ; preds = %.lr.ph118, %.loopexit
  %indvars.iv = phi i64 [ %i.af, %.lr.ph118 ], [ %i.cf, %.loopexit ]
  %.0.in117 = phi i1 [ %5, %.lr.ph118 ], [ %i.dp, %.loopexit ] ; 2 uses
  %.082116 = phi ptr [ %i.t, %.lr.ph118 ], [ %.083115, %.loopexit ] ; 4 uses
  %.083115 = phi ptr [ %i.v, %.lr.ph118 ], [ %.082116, %.loopexit ] ; 8 uses
  %.084114 = phi i32 [ %i.y, %.lr.ph118 ], [ %.085113, %.loopexit ] ; 4 uses
  %.085113 = phi i32 [ %i.ab, %.lr.ph118 ], [ %.084114, %.loopexit ] ; 5 uses
  %i.cf = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cg = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !8
  %i.cj = load float, ptr %.083115, align 4, !tbaa !26
  %i.ck = getelementptr inbounds i8, ptr %.083115, i64 -4
  store float %i.cj, ptr %i.ck, align 4, !tbaa !26
  %i.cl = add nsw i32 %.084114, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !26
  %i.cp = zext nneg i32 %.084114 to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.cp
  store float %i.co, ptr %i.cq, align 4, !tbaa !26
  %i.cr = insertelement <8 x float> poison, float %i.ci, i64 0
  %i.cs = shufflevector <8 x float> %i.cr, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %.not123 = icmp eq i32 %.085113, 0              ; 2 uses
  br i1 %.0.in117, label %.preheader, label %.preheader102

.preheader102:                                    ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %.lr.ph110
  %.087109 = phi i32 [ %i.da, %.lr.ph110 ], [ %.085113, %.preheader ] ; 2 uses
  %.088108 = phi ptr [ %i.dc, %.lr.ph110 ], [ %.082116, %.preheader ] ; 3 uses
  %.090107 = phi ptr [ %i.db, %.lr.ph110 ], [ %.083115, %.preheader ] ; 3 uses
  %i.ct = load <8 x float>, ptr %.090107, align 32, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.090107, i64 4
  %i.cv = load <8 x float>, ptr %i.cu, align 4, !tbaa !8
  %i.cw = load <8 x float>, ptr %.088108, align 32, !tbaa !8
  %i.cx = fadd <8 x float> %i.ct, %i.cv
  %i.cy = fmul <8 x float> %i.cs, %i.cx
  %i.cz = fadd <8 x float> %i.cw, %i.cy
  store <8 x float> %i.cz, ptr %.088108, align 32, !tbaa !8
  %i.da = add nsw i32 %.087109, -8
  %i.db = getelementptr inbounds nuw i8, ptr %.090107, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.088108, i64 32
  %i.dd = icmp sgt i32 %.087109, 8
  br i1 %i.dd, label %.lr.ph110, label %.loopexit, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader102, %.lr.ph
  %.1106 = phi i32 [ %i.dl, %.lr.ph ], [ %.085113, %.preheader102 ] ; 2 uses
  %.189105 = phi ptr [ %i.dn, %.lr.ph ], [ %.082116, %.preheader102 ] ; 3 uses
  %.191104 = phi ptr [ %i.dm, %.lr.ph ], [ %.083115, %.preheader102 ] ; 3 uses
  %i.de = load <8 x float>, ptr %.191104, align 32, !tbaa !8
  %i.df = getelementptr inbounds i8, ptr %.191104, i64 -4
  %i.dg = load <8 x float>, ptr %i.df, align 4, !tbaa !8
  %i.dh = load <8 x float>, ptr %.189105, align 32, !tbaa !8
  %i.di = fadd <8 x float> %i.de, %i.dg
  %i.dj = fmul <8 x float> %i.cs, %i.di
  %i.dk = fadd <8 x float> %i.dh, %i.dj
  store <8 x float> %i.dk, ptr %.189105, align 32, !tbaa !8
  %i.dl = add nsw i32 %.1106, -8
  %i.dm = getelementptr inbounds nuw i8, ptr %.191104, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %.189105, i64 32
  %i.do = icmp sgt i32 %.1106, 8
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph110, %.preheader102, %.preheader
  %i.dp = xor i1 %.0.in117, true
  %.not.wide = icmp eq i64 %i.cf, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.c, !llvm.loop !29

_ZN4ojph5localL18avx_multiply_constEPffi.exit99.sink.split: ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !26 ; 2 uses
  %i.dt = fmul float %i.ds, 2.000000e+00
  %.sink130 = select i1 %5, ptr %1, ptr %2
  %.sink = select i1 %5, float %i.ds, float %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %.sink130, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !8
  store float %.sink, ptr %i.dv, align 4, !tbaa !26
  br label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99

_ZN4ojph5localL18avx_multiply_constEPffi.exit99:  ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96, %_ZN4ojph5localL18avx_multiply_constEPffi.exit99.sink.split, %_ZN4ojph5localL18avx_multiply_constEPffi.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16avx_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = zext i1 %5 to i32
  %i.g = add i32 %4, %i.f                         ; 2 uses
  %i.h = lshr i32 %i.g, 1                         ; 5 uses
  %not. = xor i1 %5, true
  %i.i = zext i1 %not. to i32
  %i.j = add i32 %4, %i.i                         ; 2 uses
  %i.k = lshr i32 %i.j, 1                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !22 ; 2 uses
  %i.n = fdiv float 1.000000e+00, %i.m
  %i.o = insertelement <8 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <8 x float> %i.o, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %6 = add nsw i32 %i.h, -1
  %7 = lshr i32 %6, 3
  %8 = add nuw nsw i32 %7, 1
  %xtraiter = and i32 %8, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %12, %.lr.ph.i.prol ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %11, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %9 = load <8 x float>, ptr %.09.i.prol, align 32, !tbaa !8
  %10 = fmul <8 x float> %i.p, %9
  store <8 x float> %10, ptr %.09.i.prol, align 32, !tbaa !8
  %11 = add nsw i32 %.078.i.prol, -8              ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !30

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %12, %.lr.ph.i.prol ]
  %.078.i.unr = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %11, %.lr.ph.i.prol ]
  %13 = icmp ult i32 %i.g, 50
  br i1 %13, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.s, %.lr.ph.i ], [ %.078.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %14 = load <8 x float>, ptr %.09.i, align 32, !tbaa !8
  %15 = fmul <8 x float> %i.p, %14
  store <8 x float> %15, ptr %.09.i, align 32, !tbaa !8
  %16 = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %17 = load <8 x float>, ptr %16, align 32, !tbaa !8
  %18 = fmul <8 x float> %i.p, %17
  store <8 x float> %18, ptr %16, align 32, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %20 = load <8 x float>, ptr %19, align 32, !tbaa !8
  %21 = fmul <8 x float> %i.p, %20
  store <8 x float> %21, ptr %19, align 32, !tbaa !8
  %22 = getelementptr inbounds nuw i8, ptr %.09.i, i64 96 ; 2 uses
  %i.q = load <8 x float>, ptr %22, align 32, !tbaa !8
  %i.r = fmul <8 x float> %i.p, %i.q
  store <8 x float> %i.r, ptr %22, align 32, !tbaa !8
  %i.s = add nsw i32 %.078.i, -32
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i, i64 128
  %23 = icmp sgt i32 %.078.i, 32
  br i1 %23, label %.lr.ph.i, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, !llvm.loop !13

_ZN4ojph5localL18avx_multiply_constEPffi.exit:    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %i.u = insertelement <8 x float> poison, float %i.n, i64 0
  %i.v = shufflevector <8 x float> %i.u, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %.not100 = icmp eq i32 %i.k, 0
  br i1 %.not100, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit98, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %_ZN4ojph5localL18avx_multiply_constEPffi.exit
  %24 = add nsw i32 %i.k, -1
  %25 = lshr i32 %24, 3
  %26 = add nuw nsw i32 %25, 1
  %xtraiter128 = and i32 %26, 3                   ; 2 uses
  %lcmp.mod129.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95.prol
  %.09.i96.prol = phi ptr [ %30, %.lr.ph.i95.prol ], [ %i.c, %.lr.ph.i95.preheader ] ; 3 uses
  %.078.i97.prol = phi i32 [ %29, %.lr.ph.i95.prol ], [ %i.k, %.lr.ph.i95.preheader ]
  %prol.iter130 = phi i32 [ %prol.iter130.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.i95.preheader ]
  %27 = load <8 x float>, ptr %.09.i96.prol, align 32, !tbaa !8
  %28 = fmul <8 x float> %i.v, %27
  store <8 x float> %28, ptr %.09.i96.prol, align 32, !tbaa !8
  %29 = add nsw i32 %.078.i97.prol, -8            ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %.09.i96.prol, i64 32 ; 2 uses
  %prol.iter130.next = add i32 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i32 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !31

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.i95.preheader
  %.09.i96.unr = phi ptr [ %i.c, %.lr.ph.i95.preheader ], [ %30, %.lr.ph.i95.prol ]
  %.078.i97.unr = phi i32 [ %i.k, %.lr.ph.i95.preheader ], [ %29, %.lr.ph.i95.prol ]
  %31 = icmp ult i32 %i.j, 50
  br i1 %31, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit98, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.09.i96 = phi ptr [ %i.z, %.lr.ph.i95 ], [ %.09.i96.unr, %.lr.ph.i95.prol.loopexit ] ; 6 uses
  %.078.i97 = phi i32 [ %i.y, %.lr.ph.i95 ], [ %.078.i97.unr, %.lr.ph.i95.prol.loopexit ] ; 2 uses
  %32 = load <8 x float>, ptr %.09.i96, align 32, !tbaa !8
  %33 = fmul <8 x float> %i.v, %32
  store <8 x float> %33, ptr %.09.i96, align 32, !tbaa !8
  %34 = getelementptr inbounds nuw i8, ptr %.09.i96, i64 32 ; 2 uses
  %35 = load <8 x float>, ptr %34, align 32, !tbaa !8
  %36 = fmul <8 x float> %i.v, %35
  store <8 x float> %36, ptr %34, align 32, !tbaa !8
  %37 = getelementptr inbounds nuw i8, ptr %.09.i96, i64 64 ; 2 uses
  %38 = load <8 x float>, ptr %37, align 32, !tbaa !8
  %39 = fmul <8 x float> %i.v, %38
  store <8 x float> %39, ptr %37, align 32, !tbaa !8
  %40 = getelementptr inbounds nuw i8, ptr %.09.i96, i64 96 ; 2 uses
  %i.w = load <8 x float>, ptr %40, align 32, !tbaa !8
  %i.x = fmul <8 x float> %i.v, %i.w
  store <8 x float> %i.x, ptr %40, align 32, !tbaa !8
  %i.y = add nsw i32 %.078.i97, -32
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i96, i64 128
  %41 = icmp sgt i32 %.078.i97, 32
  br i1 %41, label %.lr.ph.i95, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit98, !llvm.loop !13

_ZN4ojph5localL18avx_multiply_constEPffi.exit98:  ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %_ZN4ojph5localL18avx_multiply_constEPffi.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !15  ; 2 uses
  %.not117 = icmp eq i8 %i.ab, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZN4ojph5localL18avx_multiply_constEPffi.exit98
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i8 %i.ab to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN4ojph5localL18avx_multiply_constEPffi.exit98
  %i.ad = icmp sgt i32 %4, 0
  br i1 %i.ad, label %.lr.ph.i99.preheader, label %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit

.lr.ph.i99.preheader:                             ; preds = %._crit_edge
  %.in94 = select i1 %5, ptr %i.b, ptr %i.d
  %i.ae = load ptr, ptr %.in94, align 8, !tbaa !8 ; 3 uses
  %. = select i1 %5, ptr %i.d, ptr %i.b
  %i.af = load ptr, ptr %., align 8, !tbaa !8     ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = add nuw i32 %4, 31
  %i.aj = and i32 %i.ai, 16
  %lcmp.mod132.not.not = icmp eq i32 %i.aj, 0
  br i1 %lcmp.mod132.not.not, label %.lr.ph.i99.prol, label %.lr.ph.i99.prol.loopexit

.lr.ph.i99.prol:                                  ; preds = %.lr.ph.i99.preheader
  %i.ak = load <8 x float>, ptr %i.af, align 32, !tbaa !8 ; 2 uses
  %i.al = load <8 x float>, ptr %i.ae, align 32, !tbaa !8 ; 2 uses
  %i.am = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.am, ptr %i.ah, align 32, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store <8 x float> %i.an, ptr %i.ao, align 32, !tbaa !8
  %i.ap = add nsw i32 %4, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  br label %.lr.ph.i99.prol.loopexit

.lr.ph.i99.prol.loopexit:                         ; preds = %.lr.ph.i99.prol, %.lr.ph.i99.preheader
  %.024.i.unr = phi ptr [ %i.ah, %.lr.ph.i99.preheader ], [ %i.aq, %.lr.ph.i99.prol ]
  %.01823.i.unr = phi ptr [ %i.af, %.lr.ph.i99.preheader ], [ %i.ar, %.lr.ph.i99.prol ]
  %.01922.i.unr = phi ptr [ %i.ae, %.lr.ph.i99.preheader ], [ %i.as, %.lr.ph.i99.prol ]
  %.02021.i.unr = phi i32 [ %4, %.lr.ph.i99.preheader ], [ %i.ap, %.lr.ph.i99.prol ]
  %i.at = icmp ult i32 %4, 17
  br i1 %i.at, label %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99
  %.024.i = phi ptr [ %i.bi, %.lr.ph.i99 ], [ %.024.i.unr, %.lr.ph.i99.prol.loopexit ] ; 5 uses
  %.01823.i = phi ptr [ %i.bj, %.lr.ph.i99 ], [ %.01823.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.01922.i = phi ptr [ %i.bk, %.lr.ph.i99 ], [ %.01922.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.02021.i = phi i32 [ %i.bh, %.lr.ph.i99 ], [ %.02021.i.unr, %.lr.ph.i99.prol.loopexit ] ; 2 uses
  %i.au = load <8 x float>, ptr %.01823.i, align 32, !tbaa !8 ; 2 uses
  %i.av = load <8 x float>, ptr %.01922.i, align 32, !tbaa !8 ; 2 uses
  %i.aw = shufflevector <8 x float> %i.au, <8 x float> %i.av, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ax = shufflevector <8 x float> %i.au, <8 x float> %i.av, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.aw, ptr %.024.i, align 32, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  store <8 x float> %i.ax, ptr %i.ay, align 32, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %.01823.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01922.i, i64 32
  %i.bc = load <8 x float>, ptr %i.ba, align 32, !tbaa !8 ; 2 uses
  %i.bd = load <8 x float>, ptr %i.bb, align 32, !tbaa !8 ; 2 uses
  %i.be = shufflevector <8 x float> %i.bc, <8 x float> %i.bd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bf = shufflevector <8 x float> %i.bc, <8 x float> %i.bd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.be, ptr %i.az, align 32, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %.024.i, i64 96
  store <8 x float> %i.bf, ptr %i.bg, align 32, !tbaa !8
  %i.bh = add nsw i32 %.02021.i, -32
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %.01823.i, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.01922.i, i64 64
  %i.bl = icmp sgt i32 %.02021.i, 32
  br i1 %i.bl, label %.lr.ph.i99, label %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit, !llvm.loop !32

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
  %i.bx = insertelement <8 x float> poison, float %i.bo, i64 0
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
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
  %i.bz = load <8 x float>, ptr %.091106, align 32, !tbaa !8
  %i.ca = getelementptr inbounds i8, ptr %.091106, i64 -4
  %i.cb = load <8 x float>, ptr %i.ca, align 4, !tbaa !8
  %i.cc = load <8 x float>, ptr %.089107, align 32, !tbaa !8
  %i.cd = fadd <8 x float> %i.bz, %i.cb
  %i.ce = fmul <8 x float> %i.by, %i.cd
  %i.cf = fsub <8 x float> %i.cc, %i.ce
  store <8 x float> %i.cf, ptr %.089107, align 32, !tbaa !8
  %i.cg = add nsw i32 %.088108, -8
  %i.ch = getelementptr inbounds nuw i8, ptr %.091106, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.089107, i64 32
  %i.cj = icmp sgt i32 %.088108, 8
  br i1 %i.cj, label %.lr.ph109, label %.loopexit, !llvm.loop !33

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.1105 = phi i32 [ %i.cr, %.lr.ph ], [ %.085112, %.preheader101 ] ; 2 uses
  %.190104 = phi ptr [ %i.ct, %.lr.ph ], [ %.084113, %.preheader101 ] ; 3 uses
  %.192103 = phi ptr [ %i.cs, %.lr.ph ], [ %.083114, %.preheader101 ] ; 3 uses
  %i.ck = load <8 x float>, ptr %.192103, align 32, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.192103, i64 4
  %i.cm = load <8 x float>, ptr %i.cl, align 4, !tbaa !8
  %i.cn = load <8 x float>, ptr %.190104, align 32, !tbaa !8
  %i.co = fadd <8 x float> %i.ck, %i.cm
  %i.cp = fmul <8 x float> %i.by, %i.co
  %i.cq = fsub <8 x float> %i.cn, %i.cp
  store <8 x float> %i.cq, ptr %.190104, align 32, !tbaa !8
  %i.cr = add nsw i32 %.1105, -8
  %i.cs = getelementptr inbounds nuw i8, ptr %.192103, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.190104, i64 32
  %i.cu = icmp sgt i32 %.1105, 8
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph109, %.preheader101, %.preheader
  %i.cv = xor i1 %.0.in115, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !35

bb.d:                                             ; preds = %bb.a
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !26
  br label %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = load float, ptr %i.da, align 4, !tbaa !26
  %i.dc = fmul float %i.db, 5.000000e-01
  br label %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit.sink.split

_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit.sink.split: ; preds = %bb.f, %bb.e
  %.sink = phi float [ %i.cy, %bb.e ], [ %i.dc, %bb.f ]
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8
  store float %.sink, ptr %i.de, align 4, !tbaa !26
  br label %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit

_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit: ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99, %_ZN4ojph5localL16avx_interleave32EPfS1_S1_i.exit.sink.split, %._crit_edge
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
end_hunk_0
