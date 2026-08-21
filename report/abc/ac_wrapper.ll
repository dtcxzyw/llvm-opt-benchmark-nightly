Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ac_wrapper?download=true
inline.NumInlined: 2178
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN3acd21ac_decomposition_impl19column_multiplicityILj2EEEjRKN5kitty18static_truth_tableILj11ELb0EEE:bb.a
  %i.be = and <2 x i64> %i.bc, splat (i64 15)
  %i.bf = and <2 x i64> %i.bd, splat (i64 15)
  %i.bg = shl nuw nsw <2 x i64> splat (i64 1), %i.be
  %i.bh = shl nuw nsw <2 x i64> splat (i64 1), %i.bf
  %i.bi = or <2 x i64> %i.bg, %i.ba
  %i.bj = or <2 x i64> %i.bh, %i.bb
  %i.bk = lshr <2 x i64> %wide.load, splat (i64 28)
  %i.bl = lshr <2 x i64> %wide.load26, splat (i64 28)
  %i.bm = and <2 x i64> %i.bk, splat (i64 15)
  %i.bn = and <2 x i64> %i.bl, splat (i64 15)
  %i.bo = shl nuw nsw <2 x i64> splat (i64 1), %i.bm
  %i.bp = shl nuw nsw <2 x i64> splat (i64 1), %i.bn
  %i.bq = or <2 x i64> %i.bo, %i.bi
  %i.br = or <2 x i64> %i.bp, %i.bj
  %i.bs = lshr <2 x i64> %wide.load, splat (i64 32)
  %i.bt = lshr <2 x i64> %wide.load26, splat (i64 32)
  %i.bu = and <2 x i64> %i.bs, splat (i64 15)
  %i.bv = and <2 x i64> %i.bt, splat (i64 15)
  %i.bw = shl nuw nsw <2 x i64> splat (i64 1), %i.bu
  %i.bx = shl nuw nsw <2 x i64> splat (i64 1), %i.bv
  %i.by = or <2 x i64> %i.bw, %i.bq
  %i.bz = or <2 x i64> %i.bx, %i.br
  %i.ca = lshr <2 x i64> %wide.load, splat (i64 36)
  %i.cb = lshr <2 x i64> %wide.load26, splat (i64 36)
  %i.cc = and <2 x i64> %i.ca, splat (i64 15)
  %i.cd = and <2 x i64> %i.cb, splat (i64 15)
  %i.ce = shl nuw nsw <2 x i64> splat (i64 1), %i.cc
  %i.cf = shl nuw nsw <2 x i64> splat (i64 1), %i.cd
  %i.cg = or <2 x i64> %i.ce, %i.by
  %i.ch = or <2 x i64> %i.cf, %i.bz
  %i.ci = lshr <2 x i64> %wide.load, splat (i64 40)
  %i.cj = lshr <2 x i64> %wide.load26, splat (i64 40)
  %i.ck = and <2 x i64> %i.ci, splat (i64 15)
  %i.cl = and <2 x i64> %i.cj, splat (i64 15)
  %i.cm = shl nuw nsw <2 x i64> splat (i64 1), %i.ck
  %i.cn = shl nuw nsw <2 x i64> splat (i64 1), %i.cl
  %i.co = or <2 x i64> %i.cm, %i.cg
  %i.cp = or <2 x i64> %i.cn, %i.ch
  %i.cq = lshr <2 x i64> %wide.load, splat (i64 44)
  %i.cr = lshr <2 x i64> %wide.load26, splat (i64 44)
  %i.cs = and <2 x i64> %i.cq, splat (i64 15)
  %i.ct = and <2 x i64> %i.cr, splat (i64 15)
  %i.cu = shl nuw nsw <2 x i64> splat (i64 1), %i.cs
  %i.cv = shl nuw nsw <2 x i64> splat (i64 1), %i.ct
  %i.cw = or <2 x i64> %i.cu, %i.co
  %i.cx = or <2 x i64> %i.cv, %i.cp
  %i.cy = lshr <2 x i64> %wide.load, splat (i64 48)
  %i.cz = lshr <2 x i64> %wide.load26, splat (i64 48)
  %i.da = and <2 x i64> %i.cy, splat (i64 15)
  %i.db = and <2 x i64> %i.cz, splat (i64 15)
  %i.dc = shl nuw nsw <2 x i64> splat (i64 1), %i.da
  %i.dd = shl nuw nsw <2 x i64> splat (i64 1), %i.db
  %i.de = or <2 x i64> %i.dc, %i.cw
  %i.df = or <2 x i64> %i.dd, %i.cx
  %i.dg = lshr <2 x i64> %wide.load, splat (i64 52)
  %i.dh = lshr <2 x i64> %wide.load26, splat (i64 52)
  %i.di = and <2 x i64> %i.dg, splat (i64 15)
  %i.dj = and <2 x i64> %i.dh, splat (i64 15)
  %i.dk = shl nuw nsw <2 x i64> splat (i64 1), %i.di
  %i.dl = shl nuw nsw <2 x i64> splat (i64 1), %i.dj
  %i.dm = or <2 x i64> %i.dk, %i.de
  %i.dn = or <2 x i64> %i.dl, %i.df
  %i.do = lshr <2 x i64> %wide.load, splat (i64 56)
  %i.dp = lshr <2 x i64> %wide.load26, splat (i64 56)
  %i.dq = and <2 x i64> %i.do, splat (i64 15)
  %i.dr = and <2 x i64> %i.dp, splat (i64 15)
  %i.ds = shl nuw nsw <2 x i64> splat (i64 1), %i.dq
  %i.dt = shl nuw nsw <2 x i64> splat (i64 1), %i.dr
  %i.du = or <2 x i64> %i.ds, %i.dm
  %i.dv = or <2 x i64> %i.dt, %i.dn
  %i.dw = lshr <2 x i64> %wide.load, splat (i64 60)
  %i.dx = lshr <2 x i64> %wide.load26, splat (i64 60)
  %i.dy = shl nuw nsw <2 x i64> splat (i64 1), %i.dw
  %i.dz = shl nuw nsw <2 x i64> splat (i64 1), %i.dx
  %i.ea = or <2 x i64> %i.dy, %i.du               ; 2 uses
  %i.eb = or <2 x i64> %i.dz, %i.dv               ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ed, %middle.block ], [ %i.gr, %scalar.ph ]
  %i.ee = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.lcssa)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  ret i32 %i.ef

scalar.ph:                                        ; preds = %bb.a, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.022 = phi i64 [ %i.gr, %scalar.ph ], [ 0, %bb.a ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !52 ; 16 uses
  %i.ei = and i64 %i.eh, 15
  %i.ej = shl nuw nsw i64 1, %i.ei
  %i.ek = or i64 %i.ej, %.sroa.0.022
  %i.el = lshr i64 %i.eh, 4
  %i.em = and i64 %i.el, 15
  %i.en = shl nuw nsw i64 1, %i.em
  %i.eo = or i64 %i.en, %i.ek
  %i.ep = lshr i64 %i.eh, 8
  %i.eq = and i64 %i.ep, 15
  %i.er = shl nuw nsw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.eo
  %i.et = lshr i64 %i.eh, 12
  %i.eu = and i64 %i.et, 15
  %i.ev = shl nuw nsw i64 1, %i.eu
  %i.ew = or i64 %i.ev, %i.es
  %i.ex = lshr i64 %i.eh, 16
  %i.ey = and i64 %i.ex, 15
  %i.ez = shl nuw nsw i64 1, %i.ey
  %i.fa = or i64 %i.ez, %i.ew
  %i.fb = lshr i64 %i.eh, 20
  %i.fc = and i64 %i.fb, 15
  %i.fd = shl nuw nsw i64 1, %i.fc
  %i.fe = or i64 %i.fd, %i.fa
  %i.ff = lshr i64 %i.eh, 24
  %i.fg = and i64 %i.ff, 15
  %i.fh = shl nuw nsw i64 1, %i.fg
  %i.fi = or i64 %i.fh, %i.fe
  %i.fj = lshr i64 %i.eh, 28
  %i.fk = and i64 %i.fj, 15
  %i.fl = shl nuw nsw i64 1, %i.fk
  %i.fm = or i64 %i.fl, %i.fi
  %i.fn = lshr i64 %i.eh, 32
  %i.fo = and i64 %i.fn, 15
  %i.fp = shl nuw nsw i64 1, %i.fo
  %i.fq = or i64 %i.fp, %i.fm
  %i.fr = lshr i64 %i.eh, 36
  %i.fs = and i64 %i.fr, 15
  %i.ft = shl nuw nsw i64 1, %i.fs
  %i.fu = or i64 %i.ft, %i.fq
  %i.fv = lshr i64 %i.eh, 40
  %i.fw = and i64 %i.fv, 15
  %i.fx = shl nuw nsw i64 1, %i.fw
  %i.fy = or i64 %i.fx, %i.fu
  %i.fz = lshr i64 %i.eh, 44
  %i.ga = and i64 %i.fz, 15
  %i.gb = shl nuw nsw i64 1, %i.ga
  %i.gc = or i64 %i.gb, %i.fy
  %i.gd = lshr i64 %i.eh, 48
  %i.ge = and i64 %i.gd, 15
  %i.gf = shl nuw nsw i64 1, %i.ge
  %i.gg = or i64 %i.gf, %i.gc
  %i.gh = lshr i64 %i.eh, 52
  %i.gi = and i64 %i.gh, 15
  %i.gj = shl nuw nsw i64 1, %i.gi
  %i.gk = or i64 %i.gj, %i.gg
  %i.gl = lshr i64 %i.eh, 56
  %i.gm = and i64 %i.gl, 15
  %i.gn = shl nuw nsw i64 1, %i.gm
  %i.go = or i64 %i.gn, %i.gk
  %i.gp = lshr i64 %i.eh, 60
  %i.gq = shl nuw nsw i64 1, %i.gp
  %i.gr = or i64 %i.gq, %i.go                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !180
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E1_E9_M_invokeERKSt9_Any_dataS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181
  %i.b = tail call noundef i32 @_ZN3acd21ac_decomposition_impl19column_multiplicityILj3EEEjRKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(500) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE1_, ptr %0, align 8, !tbaa !172
  br label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !174
  br label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !127
  store i64 %i.a, ptr %0, align 8, !tbaa !127
  br label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN3acd21ac_decomposition_impl19column_multiplicityILj3EEEjRKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = icmp ugt i32 %i.c, 6
  %i.e = add i32 %i.c, -6
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 %i.f, i32 1
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = load <4 x i64>, ptr %i.a, align 16, !tbaa !52
  %i.i = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.h)
  %i.j = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.i)
  %i.k = trunc nuw nsw i64 %i.j to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.k

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !52   ; 16 uses
  %i.n = and i64 %i.m, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = lshr i64 %i.m, 3
  %i.q = and i64 %i.p, 24                         ; 2 uses
  %.0..0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.r = load i64, ptr %.0..0..0..sroa_idx, align 8, !tbaa !52
  %i.s = or i64 %i.r, %i.o
  %.0..0..0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  store i64 %i.s, ptr %.0..0..0..sroa_idx74, align 8, !tbaa !52
  %i.t = lshr i64 %i.m, 8
  %i.u = and i64 %i.t, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = lshr i64 %i.m, 11
  %i.x = and i64 %i.w, 24                         ; 2 uses
  %.0..0..0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.y = load i64, ptr %.0..0..0..sroa_idx77, align 8, !tbaa !52
  %i.z = or i64 %i.y, %i.v
  %.0..0..0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i64 %i.z, ptr %.0..0..0..sroa_idx80, align 8, !tbaa !52
  %i.aa = lshr i64 %i.m, 16
  %i.ab = and i64 %i.aa, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = lshr i64 %i.m, 19
  %i.ae = and i64 %i.ad, 24                       ; 2 uses
  %.0..0..0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.af = load i64, ptr %.0..0..0..sroa_idx83, align 8, !tbaa !52
  %i.ag = or i64 %i.af, %i.ac
  %.0..0..0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  store i64 %i.ag, ptr %.0..0..0..sroa_idx86, align 8, !tbaa !52
  %i.ah = lshr i64 %i.m, 24
  %i.ai = and i64 %i.ah, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = lshr i64 %i.m, 27
  %i.al = and i64 %i.ak, 24                       ; 2 uses
  %.0..0..0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  %i.am = load i64, ptr %.0..0..0..sroa_idx89, align 8, !tbaa !52
  %i.an = or i64 %i.am, %i.aj
  %.0..0..0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  store i64 %i.an, ptr %.0..0..0..sroa_idx92, align 8, !tbaa !52
  %i.ao = lshr i64 %i.m, 32
  %i.ap = and i64 %i.ao, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = lshr i64 %i.m, 35
  %i.as = and i64 %i.ar, 24                       ; 2 uses
  %.0..0..0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.at = load i64, ptr %.0..0..0..sroa_idx95, align 8, !tbaa !52
  %i.au = or i64 %i.at, %i.aq
  %.0..0..0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i64 %i.au, ptr %.0..0..0..sroa_idx98, align 8, !tbaa !52
  %i.av = lshr i64 %i.m, 40
  %i.aw = and i64 %i.av, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = lshr i64 %i.m, 43
  %i.az = and i64 %i.ay, 24                       ; 2 uses
  %.0..0..0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.ba = load i64, ptr %.0..0..0..sroa_idx101, align 8, !tbaa !52
  %i.bb = or i64 %i.ba, %i.ax
  %.0..0..0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  store i64 %i.bb, ptr %.0..0..0..sroa_idx104, align 8, !tbaa !52
  %i.bc = lshr i64 %i.m, 48
  %i.bd = and i64 %i.bc, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = lshr i64 %i.m, 51
  %i.bg = and i64 %i.bf, 24                       ; 2 uses
  %.0..0..0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bh = load i64, ptr %.0..0..0..sroa_idx107, align 8, !tbaa !52
  %i.bi = or i64 %i.bh, %i.be
  %.0..0..0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i64 %i.bi, ptr %.0..0..0..sroa_idx110, align 8, !tbaa !52
  %i.bj = lshr i64 %i.m, 56
  %i.bk = and i64 %i.bj, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = lshr i64 %i.m, 59
  %.0..sroa_stride19.7 = and i64 %i.bm, 24        ; 2 uses
  %.0..0..0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0..sroa_stride19.7
  %i.bn = load i64, ptr %.0..0..0..sroa_idx113, align 8, !tbaa !52
  %i.bo = or i64 %i.bn, %i.bl
  %.0..0..0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0..sroa_stride19.7
  store i64 %i.bo, ptr %.0..0..0..sroa_idx116, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !183
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E2_E9_M_invokeERKSt9_Any_dataS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = tail call noundef i32 @_ZN3acd21ac_decomposition_impl20column_multiplicity5ILj4EEEjRKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(500) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE2_, ptr %0, align 8, !tbaa !172
  br label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !174
  br label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !127
  store i64 %i.a, ptr %0, align 8, !tbaa !127
  br label %_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3acd21ac_decomposition_impl18find_decompositionERjjEUlRKN5kitty18static_truth_tableILj11ELb0EEEE2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN3acd21ac_decomposition_impl20column_multiplicity5ILj4EEEjRKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.25", align 4    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp ugt i32 %i.b, 6
  %i.d = add i32 %i.b, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 %i.e, i32 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %.229.3, 0
  br i1 %.not.i.i, label %._crit_edge, label %_ZSt4sortIPjEvT_S1_.exit

_ZSt4sortIPjEvT_S1_.exit:                         ; preds = %bb.b
  %i.g = zext i32 %.229.3 to i64                  ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i64 noundef %i.k)
  call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.h)
  %.not51 = icmp eq i32 %.229.3, 1
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4sortIPjEvT_S1_.exit
  %wide.trip.count46 = zext i32 %.229.3 to i64    ; 2 uses
  %.pre = load i32, ptr %2, align 4, !tbaa !43    ; 2 uses
  %i.l = add nsw i64 %wide.trip.count46, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %.229.3, 9
  br i1 %min.iters.check, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 3 uses
  %i.m = or disjoint i64 %n.vec, 1
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load53, %vector.body ]
  %vec.phi = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !43 ; 3 uses
  %wide.load53 = load <4 x i32>, ptr %i.p, align 4, !tbaa !43 ; 4 uses
  %i.q = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.r = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load53, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = icmp ne <4 x i32> %wide.load, %i.q
  %i.t = icmp ne <4 x i32> %wide.load53, %i.r
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = add <4 x i32> %vec.phi, %i.u             ; 2 uses
  %i.x = add <4 x i32> %vec.phi52, %i.v           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.x, %i.w
  %i.z = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %wide.load53, i64 3
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv43.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.02240.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

bb.c:                                             ; preds = %bb.a, %bb.k
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.02638 = phi i64 [ -1, %bb.a ], [ %.2.3, %bb.k ] ; 2 uses
  %.02737 = phi i32 [ 0, %bb.a ], [ %.229.3, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !52 ; 4 uses
  %i.ac = and i64 %i.ab, 65535                    ; 3 uses
  %.not32 = icmp eq i64 %i.ac, %.02638
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add i32 %.02737, 1
  %i.af = zext i32 %.02737 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.229 = phi i32 [ %i.ae, %bb.d ], [ %.02737, %bb.c ] ; 3 uses
  %.2 = phi i64 [ %i.ac, %bb.d ], [ %.02638, %bb.c ] ; 2 uses
  %i.ah = lshr i64 %i.ab, 16
  %i.ai = and i64 %i.ah, 65535                    ; 3 uses
  %.not32.1 = icmp eq i64 %i.ai, %.2
  br i1 %.not32.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = add i32 %.229, 1
  %i.al = zext i32 %.229 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.229.1 = phi i32 [ %i.ak, %bb.f ], [ %.229, %bb.e ] ; 3 uses
  %.2.1 = phi i64 [ %i.ai, %bb.f ], [ %.2, %bb.e ] ; 2 uses
  %i.an = lshr i64 %i.ab, 32
  %i.ao = and i64 %i.an, 65535                    ; 3 uses
  %.not32.2 = icmp eq i64 %i.ao, %.2.1
  br i1 %.not32.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add i32 %.229.1, 1
  %i.ar = zext i32 %.229.1 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.229.2 = phi i32 [ %i.aq, %bb.h ], [ %.229.1, %bb.g ] ; 3 uses
  %.2.2 = phi i64 [ %i.ao, %bb.h ], [ %.2.1, %bb.g ] ; 2 uses
  %i.at = lshr i64 %i.ab, 48                      ; 3 uses
  %.not32.3 = icmp eq i64 %i.at, %.2.2
  br i1 %.not32.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = add i32 %.229.2, 1
  %i.aw = zext i32 %.229.2 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.229.3 = phi i32 [ %i.av, %bb.j ], [ %.229.2, %bb.i ] ; 6 uses
  %.2.3 = phi i64 [ %i.at, %bb.j ], [ %.2.2, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b, %_ZSt4sortIPjEvT_S1_.exit
  %.022.lcssa = phi i32 [ 1, %_ZSt4sortIPjEvT_S1_.exit ], [ 1, %bb.b ], [ %i.z, %middle.block ], [ %i.bc, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.022.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %i.ay = phi i32 [ %i.ba, %.lr.ph ], [ %.ph, %.lr.ph.preheader54 ]
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph ], [ %indvars.iv43.ph, %.lr.ph.preheader54 ] ; 2 uses
  %.02240 = phi i32 [ %i.bc, %.lr.ph ], [ %.02240.ph, %.lr.ph.preheader54 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv43
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3acd10acdXX_impl26compute_decomposition_implEb:bb.a
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL15projections_negE, i64 %indvars.iv158
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !52 ; 2 uses
  %i.di = and i64 %i.dh, %i.df
  %i.dj = shl i64 %i.dc, %i.dd
  %i.dk = or i64 %i.dj, %i.dc
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %indvars.iv158
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !52
  %i.dn = and i64 %i.dm, %i.dk
  %i.do = or i64 %i.dn, %i.di
  %i.dp = lshr i64 %.sroa.091.0137, %i.dd
  %i.dq = or i64 %i.dp, %.sroa.091.0137
  %i.dr = and i64 %i.dh, %i.dq                    ; 2 uses
  %i.ds = shl i64 %i.dr, %i.dd
  %i.dt = or i64 %i.ds, %i.dr
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.du = zext i32 %i.cq to i64                   ; 2 uses
  %i.dv = icmp samesign ugt i64 %indvars.iv158, %i.du
  br i1 %i.dv, label %bb.l, label %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit

bb.l:                                             ; preds = %bb.k
  %i.dw = trunc i32 %i.cq to i8                   ; 3 uses
  %i.dx = icmp eq i8 %i.dw, %i.cs
  br i1 %i.dx, label %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.dw, i8 %i.cs) ; 2 uses
  %spec.select13.i = tail call i8 @llvm.umax.i8(i8 %i.dw, i8 %i.cs) ; 2 uses
  %i.dy = zext i8 %spec.select.i to i64
  %i.dz = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.dy
  %i.ea = zext i8 %spec.select13.i to i64
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea ; 3 uses
  %i.ec = zext nneg i8 %spec.select13.i to i32
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = zext nneg i8 %spec.select.i to i32
  %.neg.i = shl nsw i32 -1, %i.ee
  %i.ef = add i32 %.neg.i, %i.ed
  %i.eg = load i64, ptr %i.eb, align 8, !tbaa !52
  %i.eh = and i64 %i.eg, %.sroa.097.3136
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !52
  %i.ek = and i64 %i.ej, %.sroa.097.3136
  %i.el = zext i32 %i.ef to i64                   ; 2 uses
  %i.em = shl i64 %i.ek, %i.el
  %i.en = or i64 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !52
  %i.eq = and i64 %i.ep, %.sroa.097.3136
  %i.er = lshr i64 %i.eq, %i.el
  %i.es = or i64 %i.en, %i.er
  br label %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit

_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.097.4 = phi i64 [ %.sroa.097.3136, %bb.k ], [ %.sroa.097.3136, %bb.l ], [ %i.es, %bb.m ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.du
  store i32 %i.cr, ptr %i.et, align 4, !tbaa !43
  %i.eu = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.eu, ptr %i.bu, align 8, !tbaa !93
  %.pre163 = load i32, ptr %i.c, align 8, !tbaa !94
  br label %bb.n

bb.n:                                             ; preds = %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit, %bb.j
  %i.ev = phi i32 [ %.pre163, %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit ], [ %i.cp, %bb.j ] ; 2 uses
  %i.ew = phi i32 [ %i.eu, %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit ], [ %i.cq, %bb.j ]
  %.sroa.097.5 = phi i64 [ %.sroa.097.4, %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit ], [ %i.do, %bb.j ] ; 2 uses
  %.sroa.091.1 = phi i64 [ %.sroa.091.0137, %_ZN5kitty12swap_inplaceILj6EEEvRNS_18static_truth_tableIXT_ELb1EEEhh.exit ], [ %i.dt, %bb.j ]
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.ex = sub i32 %i.ev, %i.f
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv.next159, %i.ey
  br i1 %i.ez, label %bb.i, label %._crit_edge141, !llvm.loop !576

bb.o:                                             ; preds = %._crit_edge141
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 22) #12 ; 0 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.fb, ptr %3, align 8, !tbaa !245
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 16, i8 noundef signext 48) #12
  %i.fd = load ptr, ptr %3, align 8, !tbaa !248, !noalias !577 ; 2 uses
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !253, !noalias !577 ; 3 uses
  %.not11.i.i.i.i = icmp eq i64 %.sroa.097.3.lcssa, 0
  %.not1012.i.i.i.i = icmp samesign eq i64 %i.fe, 0
  %or.cond13.i.i.i.i = select i1 %.not11.i.i.i.i, i1 true, i1 %.not1012.i.i.i.i
  br i1 %or.cond13.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.015.i.i.i.i = phi i64 [ %i.fm, %.lr.ph.i.i.i.i ], [ %.sroa.097.3.lcssa, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.07.014.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i ], [ %i.ff, %.lr.ph.preheader.i.i.i.i ]
  %i.fg = and i64 %.015.i.i.i.i, 15               ; 2 uses
  %i.fh = icmp samesign ult i64 %i.fg, 10
  %i.fi = trunc nuw nsw i64 %i.fg to i8           ; 2 uses
  %i.fj = or disjoint i8 %i.fi, 48
  %i.fk = add nuw nsw i8 %i.fi, 87
  %.sink.i.i.i.i = select i1 %i.fh, i8 %i.fj, i8 %i.fk
  %i.fl = getelementptr inbounds i8, ptr %.sroa.07.014.i.i.i.i, i64 -1 ; 3 uses
  store i8 %.sink.i.i.i.i, ptr %i.fl, align 1, !tbaa !72
  %i.fm = lshr i64 %.015.i.i.i.i, 4               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fm, 0
  %i.fn = load ptr, ptr %3, align 8               ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fl, %i.fn
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not10.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.critedge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !580

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.fc, align 8, !tbaa !253
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.o
  %i.fo = phi i64 [ %.pre.i.i.i.i, %.critedge.loopexit.i.i.i.i ], [ %i.fe, %bb.o ]
  %i.fp = phi ptr [ %i.fn, %.critedge.loopexit.i.i.i.i ], [ %i.fd, %bb.o ]
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fp, i64 noundef %i.fo) #12 ; 0 uses
  %i.fr = load ptr, ptr %3, align 8, !tbaa !248   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fb
  br i1 %i.fs, label %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i
  %i.ft = load i64, ptr %i.fb, align 8, !tbaa !72
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #13
  br label %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit

_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit: ; preds = %.critedge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 1) #12 ; 0 uses
  %i.fw = load i64, ptr %i.co, align 8, !tbaa !52 ; 2 uses
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 22) #12 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.fy, ptr %2, align 8, !tbaa !245
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 16, i8 noundef signext 48) #12
  %i.ga = load ptr, ptr %2, align 8, !tbaa !248, !noalias !581 ; 2 uses
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !253, !noalias !581 ; 3 uses
  %.not11.i.i.i.i73 = icmp eq i64 %i.fw, 0
  %.not1012.i.i.i.i74 = icmp samesign eq i64 %i.gb, 0
  %or.cond13.i.i.i.i75 = select i1 %.not11.i.i.i.i73, i1 true, i1 %.not1012.i.i.i.i74
  br i1 %or.cond13.i.i.i.i75, label %.critedge.i.i.i.i86, label %.lr.ph.preheader.i.i.i.i76

.lr.ph.preheader.i.i.i.i76:                       ; preds = %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77, %.lr.ph.preheader.i.i.i.i76
  %.015.i.i.i.i78 = phi i64 [ %i.gj, %.lr.ph.i.i.i.i77 ], [ %i.fw, %.lr.ph.preheader.i.i.i.i76 ] ; 2 uses
  %.sroa.07.014.i.i.i.i79 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i77 ], [ %i.gc, %.lr.ph.preheader.i.i.i.i76 ]
  %i.gd = and i64 %.015.i.i.i.i78, 15             ; 2 uses
  %i.ge = icmp samesign ult i64 %i.gd, 10
  %i.gf = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gg = or disjoint i8 %i.gf, 48
  %i.gh = add nuw nsw i8 %i.gf, 87
  %.sink.i.i.i.i80 = select i1 %i.ge, i8 %i.gg, i8 %i.gh
  %i.gi = getelementptr inbounds i8, ptr %.sroa.07.014.i.i.i.i79, i64 -1 ; 3 uses
  store i8 %.sink.i.i.i.i80, ptr %i.gi, align 1, !tbaa !72
  %i.gj = lshr i64 %.015.i.i.i.i78, 4             ; 2 uses
  %.not.i.i.i.i81 = icmp eq i64 %i.gj, 0
  %i.gk = load ptr, ptr %2, align 8               ; 2 uses
  %.not10.i.i.i.i82 = icmp eq ptr %i.gi, %i.gk
  %or.cond.i.i.i.i83 = select i1 %.not.i.i.i.i81, i1 true, i1 %.not10.i.i.i.i82
  br i1 %or.cond.i.i.i.i83, label %.critedge.loopexit.i.i.i.i84, label %.lr.ph.i.i.i.i77, !llvm.loop !580

.critedge.loopexit.i.i.i.i84:                     ; preds = %.lr.ph.i.i.i.i77
  %.pre.i.i.i.i85 = load i64, ptr %i.fz, align 8, !tbaa !253
  br label %.critedge.i.i.i.i86

.critedge.i.i.i.i86:                              ; preds = %.critedge.loopexit.i.i.i.i84, %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit
  %i.gl = phi i64 [ %.pre.i.i.i.i85, %.critedge.loopexit.i.i.i.i84 ], [ %i.gb, %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit ]
  %i.gm = phi ptr [ %i.gk, %.critedge.loopexit.i.i.i.i84 ], [ %i.ga, %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit ]
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.gm, i64 noundef %i.gl) #12 ; 0 uses
  %i.go = load ptr, ptr %2, align 8, !tbaa !248   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.fy
  br i1 %i.gp, label %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87: ; preds = %.critedge.i.i.i.i86
  %i.gq = load i64, ptr %i.fy, align 8, !tbaa !72
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #13
  br label %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit89

_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit89: ; preds = %.critedge.i.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 1) #12 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN5kitty9print_hexINS_18static_truth_tableILj6ELb1EEEEEvRKT_RSo.exit89, %._crit_edge141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3acd10acdXX_impl11verify_implEv(ptr noundef nonnull align 8 dereferenceable(632) %0) local_unnamed_addr #0 comdat align 2 {
.preheader67:
  %1 = alloca [11 x %"struct.kitty::static_truth_table"], align 16 ; 9 uses
  %2 = alloca [6 x %"struct.kitty::static_truth_table"], align 16 ; 7 uses
  %.sroa.0 = alloca [32 x i64], align 8           ; 5 uses
  %3 = alloca %"struct.kitty::static_truth_table", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2816) %1, i8 0, i64 2816, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94   ; 6 uses
  %.not105 = icmp eq i32 %i.b, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 588
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit, %.preheader67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) %2, i8 0, i64 1536, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93   ; 7 uses
  %.not106 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not106, label %._crit_edge78, label %.lr.ph77

bb.a:                                             ; preds = %.lr.ph, %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit ] ; 3 uses
  %i.f = getelementptr [256 x i8], ptr %1, i64 %indvars.iv ; 14 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 3 uses
  %i.i = trunc i32 %i.h to i8
  %i.j = icmp ult i8 %i.i, 6
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %.preheader30.us.us.preheader.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.mask = and i32 %i.h, 7
  %i.k = zext nneg i32 %.mask to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !52
  %i.n = insertelement <4 x i64> poison, i64 %i.m, i64 0
  %i.o = shufflevector <4 x i64> %i.n, <4 x i64> poison, <4 x i32> zeroinitializer ; 8 uses
  store <4 x i64> %i.o, ptr %i.f, align 16, !tbaa !52
  %.06.i.i.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.4.i, align 16, !tbaa !52
  %.06.i.i.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.8.i, align 16, !tbaa !52
  %.06.i.i.i.ptr.12.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.12.i, align 16, !tbaa !52
  %.06.i.i.i.ptr.16.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.16.i, align 16, !tbaa !52
  %.06.i.i.i.ptr.20.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.20.i, align 16, !tbaa !52
  %.06.i.i.i.ptr.24.i = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.24.i, align 16, !tbaa !52
  %.06.i.i.i.ptr.28.i = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store <4 x i64> %i.o, ptr %.06.i.i.i.ptr.28.i, align 16, !tbaa !52
  br label %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit

.preheader30.us.us.preheader.i:                   ; preds = %bb.a
  %i.p = and i32 %i.h, 255
  %i.q = add nsw i32 %i.p, -6                     ; 2 uses
  %.not.i = icmp ne i32 %i.q, 31
  tail call void @llvm.assume(i1 %.not.i)
  %i.r = shl nuw i32 1, %i.q
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %i.s = zext nneg i32 %smax.i to i64             ; 5 uses
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 6 uses
  %i.u = shl nuw nsw i64 %i.s, 1                  ; 4 uses
  %i.v = add nsw i64 %i.u, -1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 31)
  %i.w = tail call range(i64 1, 65) i64 @llvm.cttz.i64(i64 %i.u, i1 true)
  %i.x = lshr i64 %umax, %i.w                     ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %.preheader30.us.us.i.epil.preheader, label %.preheader30.us.us.preheader.i.new

.preheader30.us.us.preheader.i.new:               ; preds = %.preheader30.us.us.preheader.i
  %unroll_iter = and i64 %i.y, 9223372036854775806
  br label %.preheader30.us.us.i

.preheader30.us.us.i:                             ; preds = %.preheader30.us.us.i, %.preheader30.us.us.preheader.i.new
  %.02738.us.us.i = phi i64 [ 0, %.preheader30.us.us.preheader.i.new ], [ %i.ah, %.preheader30.us.us.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader30.us.us.preheader.i.new ], [ %niter.next.1, %.preheader30.us.us.i ]
  %i.aa = shl nuw nsw i64 %.02738.us.us.i, 3
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, i8 0, i64 %i.t, i1 false), !tbaa !52
  %i.ab = add nuw nsw i64 %.02738.us.us.i, %i.s
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %scevgep116 = getelementptr i8, ptr %i.f, i64 %i.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep116, i8 -1, i64 %i.t, i1 false), !tbaa !52
  %i.ad = add nuw nsw i64 %i.u, %.02738.us.us.i   ; 3 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %scevgep.1 = getelementptr nuw i8, ptr %i.f, i64 %i.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.1, i8 0, i64 %i.t, i1 false), !tbaa !52
  %i.af = add nuw nsw i64 %i.ad, %i.s
  %i.ag = shl nuw nsw i64 %i.af, 3
  %scevgep116.1 = getelementptr i8, ptr %i.f, i64 %i.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep116.1, i8 -1, i64 %i.t, i1 false), !tbaa !52
  %i.ah = add nuw nsw i64 %i.u, %i.ad             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit.loopexit.unr-lcssa, label %.preheader30.us.us.i, !llvm.loop !584

_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit.loopexit.unr-lcssa: ; preds = %.preheader30.us.us.i
  %i.ai = and i64 %i.x, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ai, 0
  br i1 %lcmp.mod.not.not, label %.preheader30.us.us.i.epil.preheader, label %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit

.preheader30.us.us.i.epil.preheader:              ; preds = %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit.loopexit.unr-lcssa, %.preheader30.us.us.preheader.i
  %.02738.us.us.i.epil.init = phi i64 [ 0, %.preheader30.us.us.preheader.i ], [ %i.ah, %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.aj = shl nuw nsw i64 %.02738.us.us.i.epil.init, 3
  %scevgep.epil = getelementptr nuw i8, ptr %i.f, i64 %i.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.t, i1 false), !tbaa !52
  %i.ak = add nuw nsw i64 %.02738.us.us.i.epil.init, %i.s
  %i.al = shl nuw nsw i64 %i.ak, 3
  %scevgep116.epil = getelementptr i8, ptr %i.f, i64 %i.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep116.epil, i8 -1, i64 %i.t, i1 false), !tbaa !52
  br label %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit

_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit: ; preds = %.preheader30.us.us.i.epil.preheader, %_ZN5kitty14create_nth_varINS_18static_truth_tableILj11ELb0EEEEEvRT_hb.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !585

.lr.ph77:                                         ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !92 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %wide.trip.count121 = zext i32 %i.e to i64      ; 2 uses
  %xtraiter158 = and i64 %wide.trip.count121, 1
  %i.ap = icmp eq i32 %i.e, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph77.new

.lr.ph77.new:                                     ; preds = %.lr.ph77
  %unroll_iter161 = and i64 %wide.trip.count121, 4294967294
  br label %bb.b

._crit_edge78.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %._crit_edge78, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge78.loopexit.unr-lcssa, %.lr.ph77
  %indvars.iv118.epil.init = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next119.1, %._crit_edge78.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv118.epil.init
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !43
  %i.as = add i32 %i.ar, %i.an
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv118.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.av, ptr noundef nonnull align 16 dereferenceable(256) %i.au, i64 256, i1 false), !tbaa.struct !108
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %.epil.preheader, %._crit_edge78.loopexit.unr-lcssa, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0, i8 0, i64 256, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !52
  %wide.trip.count126 = zext i32 %i.e to i64      ; 2 uses
  %xtraiter164 = and i64 %wide.trip.count126, 1
  %i.ay = icmp eq i32 %i.e, 1
  %unroll_iter168 = and i64 %wide.trip.count126, 4294967294
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  %lcmp.mod167 = trunc i32 %i.e to i1
  br label %.preheader65

bb.b:                                             ; preds = %bb.b, %.lr.ph77.new
  %indvars.iv118 = phi i64 [ 0, %.lr.ph77.new ], [ %indvars.iv.next119.1, %bb.b ] ; 4 uses
  %niter162 = phi i64 [ 0, %.lr.ph77.new ], [ %niter162.next.1, %bb.b ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv118
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !43
  %i.bb = add i32 %i.ba, %i.an
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %i.bc
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.be, ptr noundef nonnull align 16 dereferenceable(256) %i.bd, i64 256, i1 false), !tbaa.struct !108
  %indvars.iv.next119 = or disjoint i64 %indvars.iv118, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next119
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43
  %i.bh = add i32 %i.bg, %i.an
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv.next119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.bk, ptr noundef nonnull align 16 dereferenceable(256) %i.bj, i64 256, i1 false), !tbaa.struct !108
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %._crit_edge78.loopexit.unr-lcssa, label %bb.b, !llvm.loop !586

.preheader65:                                     ; preds = %._crit_edge78, %bb.e
  %.04985 = phi i32 [ 0, %._crit_edge78 ], [ %i.db, %bb.e ] ; 3 uses
  br i1 %.not106, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader65
  %i.bl = zext i32 %.04985 to i64                 ; 2 uses
  %i.bm = lshr i64 %i.bl, 6
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bm ; 3 uses
  %i.bn = and i64 %i.bl, 63                       ; 3 uses
  br i1 %i.ay, label %.epil.preheader163, label %.lr.ph82.new

bb.c:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !92 ; 6 uses
  %.not108 = icmp eq i32 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !540 ; 5 uses
  %invariant.op = sub i32 %i.b, %i.br             ; 3 uses
  %i.bs = add i32 %i.bp, 1                        ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !52
  %wide.trip.count131 = zext i32 %i.bp to i64     ; 2 uses
  %wide.trip.count136 = zext i32 %i.br to i64     ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count131, 1
  %i.bv = icmp eq i32 %i.bp, 1
  %unroll_iter175 = and i64 %wide.trip.count131, 4294967294
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  %lcmp.mod174 = trunc i32 %i.bp to i1
  %xtraiter177 = and i64 %wide.trip.count136, 1
  %i.bw = icmp eq i32 %i.br, 1                    ; 0 uses
  %unroll_iter181 = and i64 %wide.trip.count136, 4294967294
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod180 = trunc i32 %i.br to i1
  br label %.preheader64

._crit_edge83.loopexit.unr-lcssa:                 ; preds = %.lr.ph82.new
  br i1 %lcmp.mod165.not, label %._crit_edge83.loopexit, label %.epil.preheader163

.epil.preheader163:                               ; preds = %._crit_edge83.loopexit.unr-lcssa, %.lr.ph82
  %indvars.iv123.epil.init = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next124.1, %._crit_edge83.loopexit.unr-lcssa ] ; 2 uses
  %.04780.epil.init = phi i32 [ 0, %.lr.ph82 ], [ %i.cu, %._crit_edge83.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %gep.epil = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep, i64 %indvars.iv123.epil.init
  %i.bx = load i64, ptr %gep.epil, align 8, !tbaa !52
  %i.by = lshr i64 %i.bx, %i.bn
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, 1
  %i.cb = trunc nuw nsw i64 %indvars.iv123.epil.init to i32
  %i.cc = shl nuw i32 %i.ca, %i.cb
  %i.cd = or i32 %i.cc, %.04780.epil.init
  br label %._crit_edge83.loopexit

._crit_edge83.loopexit:                           ; preds = %._crit_edge83.loopexit.unr-lcssa, %.epil.preheader163
  %.lcssa156 = phi i32 [ %i.cu, %._crit_edge83.loopexit.unr-lcssa ], [ %i.cd, %.epil.preheader163 ]
  %i.ce = zext nneg i32 %.lcssa156 to i64
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %.preheader65
  %.047.lcssa = phi i64 [ 0, %.preheader65 ], [ %i.ce, %._crit_edge83.loopexit ]
  %i.cf = shl nuw i64 1, %.047.lcssa
  %i.cg = and i64 %i.ax, %i.cf
  %.not63 = icmp eq i64 %i.cg, 0
  br i1 %.not63, label %bb.e, label %bb.d

.lr.ph82.new:                                     ; preds = %.lr.ph82, %.lr.ph82.new
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %.lr.ph82.new ], [ 0, %.lr.ph82 ] ; 4 uses
  %.04780 = phi i32 [ %i.cu, %.lr.ph82.new ], [ 0, %.lr.ph82 ]
  %niter169 = phi i64 [ %niter169.next.1, %.lr.ph82.new ], [ 0, %.lr.ph82 ]
  %gep = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep, i64 %indvars.iv123
  %i.ch = load i64, ptr %gep, align 8, !tbaa !52
  %i.ci = lshr i64 %i.ch, %i.bn
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1
  %i.cl = trunc nuw nsw i64 %indvars.iv123 to i32
  %i.cm = shl nuw i32 %i.ck, %i.cl
  %i.cn = or i32 %i.cm, %.04780
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep, i64 %indvars.iv.next124
  %i.co = load i64, ptr %gep.1, align 8, !tbaa !52
  %i.cp = lshr i64 %i.co, %i.bn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 1
  %i.cs = trunc nuw nsw i64 %indvars.iv.next124 to i32
  %i.ct = shl nuw i32 %i.cr, %i.cs
  %i.cu = or i32 %i.ct, %i.cn                     ; 3 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %._crit_edge83.loopexit.unr-lcssa, label %.lr.ph82.new, !llvm.loop !587

bb.d:                                             ; preds = %._crit_edge83
  %i.cv = zext i32 %.04985 to i64                 ; 2 uses
  %i.cw = and i64 %i.cv, 63
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = lshr i64 %i.cv, 3
  %.sroa.0.0..sroa_stride = and i64 %i.cy, 536870904
  %.sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride ; 2 uses
  %i.cz = load i64, ptr %.sroa.0.0..sroa_idx, align 8, !tbaa !52
  %i.da = or i64 %i.cz, %i.cx
  store i64 %i.da, ptr %.sroa.0.0..sroa_idx, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge83
  %i.db = add i32 %.04985, 1                      ; 2 uses
  %.049.highbits = lshr i32 %i.db, %i.b
  %i.dc = icmp eq i32 %.049.highbits, 0
  br i1 %i.dc, label %.preheader65, label %bb.c, !llvm.loop !588

.preheader64:                                     ; preds = %bb.c, %bb.g
  %.045102 = phi i32 [ 0, %bb.c ], [ %i.fq, %bb.g ] ; 2 uses
  %.pre = zext i32 %.045102 to i64                ; 3 uses
  %.pre138 = lshr i64 %.pre, 6                    ; 4 uses
  br i1 %.not108, label %.preheader64.._crit_edge89_crit_edge, label %.lr.ph88

.preheader64.._crit_edge89_crit_edge:             ; preds = %.preheader64
  %.pre140 = and i64 %.pre, 63
  br label %._crit_edge89

.lr.ph88:                                         ; preds = %.preheader64
  %invariant.gep92 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre138 ; 3 uses
  %i.dd = and i64 %.pre, 63                       ; 5 uses
  br i1 %i.bv, label %.epil.preheader170, label %.lr.ph88.new

.preheader:                                       ; preds = %bb.g
  %i.de = tail call i32 @llvm.umax.i32(i32 %i.b, i32 7)
  %spec.select = add i32 %i.de, -6
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %bb.i

._crit_edge89.loopexit.unr-lcssa:                 ; preds = %.lr.ph88.new
  br i1 %lcmp.mod172.not, label %._crit_edge89, label %.epil.preheader170

.epil.preheader170:                               ; preds = %._crit_edge89.loopexit.unr-lcssa, %.lr.ph88
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next129.1, %._crit_edge89.loopexit.unr-lcssa ] ; 2 uses
  %.04486.epil.init = phi i32 [ 0, %.lr.ph88 ], [ %i.eg, %._crit_edge89.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %gep93.epil = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep92, i64 %indvars.iv128.epil.init
  %i.dg = load i64, ptr %gep93.epil, align 8, !tbaa !52
  %i.dh = lshr i64 %i.dg, %i.dd
  %i.di = trunc i64 %i.dh to i32
  %i.dj = and i32 %i.di, 1
  %i.dk = trunc nuw nsw i64 %indvars.iv128.epil.init to i32
  %i.dl = shl nuw i32 %i.dj, %i.dk
  %i.dm = or i32 %i.dl, %.04486.epil.init
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %.epil.preheader170, %._crit_edge89.loopexit.unr-lcssa, %.preheader64.._crit_edge89_crit_edge
  %.pre-phi141 = phi i64 [ %.pre140, %.preheader64.._crit_edge89_crit_edge ], [ %i.dd, %._crit_edge89.loopexit.unr-lcssa ], [ %i.dd, %.epil.preheader170 ] ; 5 uses
  %.044.lcssa = phi i32 [ 0, %.preheader64.._crit_edge89_crit_edge ], [ %i.eg, %._crit_edge89.loopexit.unr-lcssa ], [ %i.dm, %.epil.preheader170 ]
  %.sroa.0.0..sroa_stride67 = shl nuw nsw i64 %.pre138, 3
  %.sroa.0.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride67
  %i.dn = load i64, ptr %.sroa.0.0..sroa_idx69, align 8, !tbaa !52
  %i.do = lshr i64 %i.dn, %.pre-phi141
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 1
  %i.dr = shl nuw i32 %i.dq, %i.bp
  %i.ds = or i32 %i.dr, %.044.lcssa               ; 3 uses
  %invariant.gep94 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre138 ; 3 uses
  switch i32 %i.br, label %.lr.ph99 [
    i32 0, label %._crit_edge100
    i32 1, label %.lr.ph99.epil.preheader
  ]

.lr.ph88.new:                                     ; preds = %.lr.ph88, %.lr.ph88.new
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %.lr.ph88.new ], [ 0, %.lr.ph88 ] ; 4 uses
  %.04486 = phi i32 [ %i.eg, %.lr.ph88.new ], [ 0, %.lr.ph88 ]
  %niter176 = phi i64 [ %niter176.next.1, %.lr.ph88.new ], [ 0, %.lr.ph88 ]
  %gep93 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep92, i64 %indvars.iv128
  %i.dt = load i64, ptr %gep93, align 8, !tbaa !52
  %i.du = lshr i64 %i.dt, %i.dd
  %i.dv = trunc i64 %i.du to i32
  %i.dw = and i32 %i.dv, 1
  %i.dx = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.dy = shl nuw i32 %i.dw, %i.dx
  %i.dz = or i32 %i.dy, %.04486
  %indvars.iv.next129 = or disjoint i64 %indvars.iv128, 1 ; 2 uses
  %gep93.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep92, i64 %indvars.iv.next129
  %i.ea = load i64, ptr %gep93.1, align 8, !tbaa !52
  %i.eb = lshr i64 %i.ea, %i.dd
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 1
  %i.ee = trunc nuw nsw i64 %indvars.iv.next129 to i32
  %i.ef = shl nuw i32 %i.ed, %i.ee
  %i.eg = or i32 %i.ef, %i.dz                     ; 3 uses
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %niter176.next.1 = add i64 %niter176, 2         ; 2 uses
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175
  br i1 %niter176.ncmp.1, label %._crit_edge89.loopexit.unr-lcssa, label %.lr.ph88.new, !llvm.loop !589

._crit_edge100.loopexit.unr-lcssa:                ; preds = %.lr.ph99
  br i1 %lcmp.mod178.not, label %._crit_edge100, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %._crit_edge89, %._crit_edge100.loopexit.unr-lcssa
  %indvars.iv133.epil.init = phi i64 [ 0, %._crit_edge89 ], [ %indvars.iv.next134.1, %._crit_edge100.loopexit.unr-lcssa ]
  %.196.epil.init = phi i32 [ %i.ds, %._crit_edge89 ], [ %i.fl, %._crit_edge100.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.eh = trunc nuw i64 %indvars.iv133.epil.init to i32 ; 2 uses
  %.reass.epil = add i32 %invariant.op, %i.eh
  %i.ei = zext i32 %.reass.epil to i64
  %gep95.epil = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep94, i64 %i.ei
  %i.ej = load i64, ptr %gep95.epil, align 8, !tbaa !52
  %i.ek = lshr i64 %i.ej, %.pre-phi141
  %i.el = trunc i64 %i.ek to i32
  %i.em = and i32 %i.el, 1
  %i.en = add i32 %i.bs, %i.eh
  %i.eo = shl nuw i32 %i.em, %i.en
  %i.ep = or i32 %i.eo, %.196.epil.init
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %.lr.ph99.epil.preheader, %._crit_edge100.loopexit.unr-lcssa, %._crit_edge89
  %.1.lcssa = phi i32 [ %i.ds, %._crit_edge89 ], [ %i.fl, %._crit_edge100.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph99.epil.preheader ]
  %i.eq = zext nneg i32 %.1.lcssa to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.bu, %i.er
  %.not62 = icmp eq i64 %i.es, 0
  br i1 %.not62, label %bb.g, label %bb.f

.lr.ph99:                                         ; preds = %._crit_edge89, %.lr.ph99
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.1, %.lr.ph99 ], [ 0, %._crit_edge89 ] ; 3 uses
  %.196 = phi i32 [ %i.fl, %.lr.ph99 ], [ %i.ds, %._crit_edge89 ]
  %niter182 = phi i64 [ %niter182.next.1, %.lr.ph99 ], [ 0, %._crit_edge89 ]
  %i.et = trunc nuw i64 %indvars.iv133 to i32     ; 2 uses
  %.reass = add i32 %invariant.op, %i.et
  %i.eu = zext i32 %.reass to i64
  %gep95 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep94, i64 %i.eu
  %i.ev = load i64, ptr %gep95, align 8, !tbaa !52
  %i.ew = lshr i64 %i.ev, %.pre-phi141
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = and i32 %i.ex, 1
  %i.ez = add i32 %i.bs, %i.et
  %i.fa = shl nuw i32 %i.ey, %i.ez
  %i.fb = or i32 %i.fa, %.196
  %i.fc = trunc i64 %indvars.iv133 to i32
  %i.fd = or disjoint i32 %i.fc, 1                ; 2 uses
  %.reass.1 = add i32 %invariant.op, %i.fd
  %i.fe = zext i32 %.reass.1 to i64
  %gep95.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep94, i64 %i.fe
  %i.ff = load i64, ptr %gep95.1, align 8, !tbaa !52
  %i.fg = lshr i64 %i.ff, %.pre-phi141
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 1
  %i.fj = add i32 %i.bs, %i.fd
  %i.fk = shl nuw i32 %i.fi, %i.fj
  %i.fl = or i32 %i.fk, %i.fb                     ; 3 uses
  %indvars.iv.next134.1 = add nuw nsw i64 %indvars.iv133, 2 ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %._crit_edge100.loopexit.unr-lcssa, label %.lr.ph99, !llvm.loop !590

bb.f:                                             ; preds = %._crit_edge100
  %i.fm = shl nuw i64 1, %.pre-phi141
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.pre138 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !52
  %i.fp = or i64 %i.fo, %i.fm
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge100
  %i.fq = add i32 %.045102, 1                     ; 2 uses
  %.045.highbits = lshr i32 %i.fq, %i.b
  %i.fr = icmp eq i32 %.045.highbits, 0
  br i1 %i.fr, label %.preheader64, label %.preheader, !llvm.loop !591

bb.h:                                             ; preds = %bb.i
  %i.fs = add i32 %.0103, 1                       ; 2 uses
  %.0.highbits = lshr i32 %i.fs, %spec.select
  %.not61.not = icmp eq i32 %.0.highbits, 0
  br i1 %.not61.not, label %bb.i, label %.critedge, !llvm.loop !592

bb.i:                                             ; preds = %.preheader, %bb.h
  %.0103 = phi i32 [ 0, %.preheader ], [ %i.fs, %bb.h ] ; 2 uses
  %i.ft = zext i32 %.0103 to i64                  ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !52
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ft
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !52
  %.not = icmp eq i64 %i.fv, %i.fx                ; 2 uses
  br i1 %.not, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 30) #12 ; 0 uses
  call void @_ZN3acd10acdXX_impl9report_ttERKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(256) %3)
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 12) #12 ; 0 uses
  call void @_ZN3acd10acdXX_impl9report_ttERKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.df)
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3acd10acdXX_impl9report_ttERKN5kitty18static_truth_tableILj11ELb0EEE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94   ; 5 uses
  %i.c = icmp ult i32 %i.b, 7                     ; 2 uses
  %i.d = add i32 %i.b, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15 ; 7 uses
  store i64 0, ptr %i.i, align 8, !tbaa !52
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.k = add nsw i64 %i.g, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5kitty19dynamic_truth_tableC2Ej.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.a
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZN5kitty19dynamic_truth_tableC2Ej.exit

_ZN5kitty19dynamic_truth_tableC2Ej.exit:          ; preds = %bb.a, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.b, i32 6)
  %i.n = shl nuw i32 1, %spec.select              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %_ZN5kitty19dynamic_truth_tableC2Ej.exit
  %i.p = zext nneg i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit

bb.c:                                             ; preds = %_ZN5kitty19dynamic_truth_tableC2Ej.exit
  br i1 %i.c, label %bb.d, label %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.q, ptr %i.i, align 8, !tbaa !52
  br label %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.r = icmp ult i32 %i.b, 2
  %i.s = zext nneg i32 %i.b to i64
  %i.t = shl nuw i64 1, %i.s
  %.fr.i = freeze i64 %i.t
  %i.u = lshr i64 %.fr.i, 2
  %i.v = and i64 %i.u, 1073741823
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 16)
  %i.w = select i1 %i.r, i64 1, i64 %spec.select.i
  %.not4.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %i.i
  br i1 %.not4.i.i, label %_ZN5kitty19dynamic_truth_tableD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZZN5kitty9print_hexINS_19dynamic_truth_tableEEEvRKT_RSoENKUlmE_clEm.exit.i.i, %.lr.ph.i.i
  %.sroa.04.0.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i ], [ %i.z, %_ZZN5kitty9print_hexINS_19dynamic_truth_tableEEEvRKT_RSoENKUlmE_clEm.exit.i.i ]
  %i.z = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.x, ptr %2, align 8, !tbaa !245
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.w, i8 noundef signext 48) #12
  %i.ab = load ptr, ptr %2, align 8, !tbaa !248, !noalias !593 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !253, !noalias !593 ; 3 uses
  %.not11.i.i.i = icmp eq i64 %i.aa, 0
  %.not1012.i.i.i = icmp samesign eq i64 %i.ac, 0
  %or.cond13.i.i.i = select i1 %.not11.i.i.i, i1 true, i1 %.not1012.i.i.i
  br i1 %or.cond13.i.i.i, label %.critedge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.07.014.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i ]
  %i.ae = and i64 %.015.i.i.i, 15                 ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, 10
  %i.ag = trunc nuw nsw i64 %i.ae to i8           ; 2 uses
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = add nuw nsw i8 %i.ag, 87
  %.sink.i.i.i = select i1 %i.af, i8 %i.ah, i8 %i.ai
  %i.aj = getelementptr inbounds i8, ptr %.sroa.07.014.i.i.i, i64 -1 ; 3 uses
  store i8 %.sink.i.i.i, ptr %i.aj, align 1, !tbaa !72
  %i.ak = lshr i64 %.015.i.i.i, 4                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = load ptr, ptr %2, align 8               ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aj, %i.al
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not10.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !596

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load i64, ptr %i.y, align 8, !tbaa !253
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.e
  %i.am = phi i64 [ %.pre.i.i.i, %.critedge.loopexit.i.i.i ], [ %i.ac, %bb.e ]
  %i.an = phi ptr [ %i.al, %.critedge.loopexit.i.i.i ], [ %i.ab, %bb.e ]
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.an, i64 noundef %i.am) #12 ; 0 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !248   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.x
  br i1 %i.aq, label %_ZZN5kitty9print_hexINS_19dynamic_truth_tableEEEvRKT_RSoENKUlmE_clEm.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge.i.i.i
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !72
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #13
  br label %_ZZN5kitty9print_hexINS_19dynamic_truth_tableEEEvRKT_RSoENKUlmE_clEm.exit.i.i

_ZZN5kitty9print_hexINS_19dynamic_truth_tableEEEvRKT_RSoENKUlmE_clEm.exit.i.i: ; preds = %.critedge.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not.i.i = icmp eq ptr %i.z, %i.i
  br i1 %.not.i.i, label %_ZN5kitty19dynamic_truth_tableD2Ev.exit, label %bb.e, !llvm.loop !597

_ZN5kitty19dynamic_truth_tableD2Ev.exit:          ; preds = %_ZZN5kitty9print_hexINS_19dynamic_truth_tableEEEvRKT_RSoENKUlmE_clEm.exit.i.i, %_ZSt4copyIPKmN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SA_S9_.exit
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 1) #12 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3acd10acdXX_impl21get_decomposition_abcEPh(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 2, ptr %i.a, align 1, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %i.b, align 1, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !93
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.055.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.v, %bb.b ]
  %.054.lcssa = phi i8 [ 3, %bb.a ], [ %i.w, %bb.b ]
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %i.k = icmp ugt i32 %.lcssa, 3
  %i.l = add i32 %.lcssa, -3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.05463 = phi i8 [ 3, %.lr.ph ], [ %i.w, %bb.b ]
  %.05562 = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !43
  %i.p = load i32, ptr %i.j, align 4, !tbaa !92
  %i.q = add i32 %i.p, %i.o
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = trunc i32 %i.t to i8
  store i8 %i.u, ptr %.05562, align 1, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %.05562, i64 1 ; 2 uses
  %i.w = add i8 %.05463, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !598

bb.c:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !92
  %i.ac = add i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !540
  %i.af = add i32 %i.ac, %i.ae                    ; 3 uses
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !72
  %.25770 = getelementptr inbounds nuw i8, ptr %.15667, i64 2 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !92
  %.not91 = icmp eq i32 %i.ah, 0
  br i1 %.not91, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 588
end_hunk_1
