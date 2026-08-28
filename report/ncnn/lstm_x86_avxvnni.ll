Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avxvnni?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE
declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not1529 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1529, label %._crit_edge1531, label %.noexc981.lr.ph

.noexc981.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ag = sext i32 %i.k to i64
  %.pre = load i32, ptr %11, align 4, !tbaa !9
  br label %.noexc981

.noexc981:                                        ; preds = %.noexc981.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ah = phi i32 [ %.pre, %.noexc981.lr.ph ], [ %i.axs, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv1660 = phi i64 [ %i.ag, %.noexc981.lr.ph ], [ %indvars.iv.next1661, %_ZN4ncnn3MatD2Ev.exit ] ; 10 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !15, !noalias !19
  %i.aj = load ptr, ptr %3, align 8, !tbaa !22, !noalias !19
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !19
  %i.al = mul i64 %i.ak, %indvars.iv1660
  %i.am = load i64, ptr %i.n, align 8, !tbaa !24, !noalias !19 ; 3 uses
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 12 uses
  %i.ap = sext i32 %i.ai to i64                   ; 2 uses
  %i.aq = load i32, ptr %i.o, align 4, !tbaa !15, !noalias !25
  %i.ar = load ptr, ptr %4, align 8, !tbaa !22, !noalias !25
  %i.as = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !25
  %i.at = mul i64 %i.as, %indvars.iv1660
  %i.au = load i64, ptr %i.q, align 8, !tbaa !24, !noalias !25 ; 3 uses
  %i.av = mul i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.av ; 12 uses
  %i.ax = sext i32 %i.aq to i64                   ; 2 uses
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !15, !noalias !28
  %i.az = load ptr, ptr %5, align 8, !tbaa !22, !noalias !28
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !28
  %i.bb = mul i64 %i.ba, %indvars.iv1660
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !24, !noalias !28 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 6 uses
  %i.bf = sext i32 %i.ay to i64
  %i.bg = load ptr, ptr %6, align 8, !tbaa !22
  %i.bh = load i32, ptr %i.u, align 4, !tbaa !15
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %indvars.iv1660, %i.bi
  %i.bk = load i64, ptr %i.v, align 8, !tbaa !24
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl ; 9 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !22
  %i.bo = load i32, ptr %i.w, align 4, !tbaa !15
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %indvars.iv1660, %i.bp
  %i.br = load i64, ptr %i.x, align 8, !tbaa !24
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs ; 9 uses
  %i.bu = load i32, ptr %i.y, align 4, !tbaa !15, !noalias !31
  %i.bv = load ptr, ptr %8, align 8, !tbaa !22, !noalias !31
  %i.bw = load i64, ptr %i.z, align 8, !tbaa !23, !noalias !31
  %i.bx = mul i64 %i.bw, %indvars.iv1660
  %i.by = load i64, ptr %i.aa, align 8, !tbaa !24, !noalias !31 ; 3 uses
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz ; 2 uses
  %i.cb = sext i32 %i.bu to i64                   ; 2 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !22, !noalias !34
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !23, !noalias !34
  %i.ce = mul i64 %i.cd, %indvars.iv1660
  %i.cf = load i64, ptr %i.ac, align 8, !tbaa !24, !noalias !34
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !15, !noalias !37
  %i.cj = load ptr, ptr %10, align 8, !tbaa !22, !noalias !37
  %i.ck = load i64, ptr %i.ae, align 8, !tbaa !23, !noalias !37
  %i.cl = mul i64 %i.ck, %indvars.iv1660
  %i.cm = load i64, ptr %i.af, align 8, !tbaa !24, !noalias !37 ; 3 uses
  %i.cn = mul i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cn ; 2 uses
  %i.cp = sext i32 %i.ci to i64                   ; 2 uses
  %i.cq = mul i64 %i.bc, %i.bf                    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cq ; 3 uses
  %i.cs = shl i64 %i.cq, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cs ; 3 uses
  %i.cu = mul i64 %i.cq, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cu ; 3 uses
  %i.cw = icmp sgt i32 %i.ah, 1
  br i1 %i.cw, label %.lr.ph1446, label %.preheader1347

.lr.ph1446:                                       ; preds = %.noexc981
  %i.cx = mul i64 %i.am, %i.ap                    ; 8 uses
  %i.cy = mul i64 %i.au, %i.ax                    ; 8 uses
  %i.cz = mul i64 %i.by, %i.cb
  %i.da = mul i64 %i.cm, %i.cp
  br label %bb.c

.preheader1347.loopexit:                          ; preds = %._crit_edge1443
  %i.db = trunc nuw nsw i64 %indvars.iv.next1625 to i32
  br label %.preheader1347

.preheader1347:                                   ; preds = %.preheader1347.loopexit, %.noexc981
  %i.dc = phi i32 [ %i.ah, %.noexc981 ], [ %i.acm, %.preheader1347.loopexit ] ; 3 uses
  %.0968.lcssa = phi ptr [ %i.ch, %.noexc981 ], [ %i.ei, %.preheader1347.loopexit ]
  %.0966.lcssa = phi i32 [ 0, %.noexc981 ], [ %i.db, %.preheader1347.loopexit ] ; 2 uses
  %i.dd = icmp slt i32 %.0966.lcssa, %i.dc
  br i1 %i.dd, label %.lr.ph1528, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph1528:                                       ; preds = %.preheader1347
  %i.de = mul i64 %i.am, %i.ap                    ; 4 uses
  %i.df = mul i64 %i.au, %i.ax                    ; 4 uses
  %i.dg = mul i64 %i.by, %i.cb
  %i.dh = mul i64 %i.cm, %i.cp
  %i.di = zext nneg i32 %.0966.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph1446, %._crit_edge1443
  %indvars.iv1624 = phi i64 [ 0, %.lr.ph1446 ], [ %indvars.iv.next1625, %._crit_edge1443 ] ; 12 uses
  %i.dj = phi i32 [ %i.ah, %.lr.ph1446 ], [ %i.acm, %._crit_edge1443 ] ; 3 uses
  %.09681444 = phi ptr [ %i.ch, %.lr.ph1446 ], [ %i.ei, %._crit_edge1443 ] ; 9 uses
  %i.dk = or disjoint i64 %indvars.iv1624, 1      ; 8 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv1624
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !40
  store float %i.dm, ptr %.09681444, align 4, !tbaa !40
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv1624
  %i.do = load float, ptr %i.dn, align 4, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %.09681444, i64 4
  store float %i.do, ptr %i.dp, align 4, !tbaa !40
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv1624
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !40
  %i.ds = getelementptr inbounds nuw i8, ptr %.09681444, i64 8
  store float %i.dr, ptr %i.ds, align 4, !tbaa !40
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv1624
  %i.du = load float, ptr %i.dt, align 4, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %.09681444, i64 12
  store float %i.du, ptr %i.dv, align 4, !tbaa !40
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dk
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !40
  %i.dy = getelementptr inbounds nuw i8, ptr %.09681444, i64 16
  store float %i.dx, ptr %i.dy, align 4, !tbaa !40
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dk
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %.09681444, i64 20
  store float %i.ea, ptr %i.eb, align 4, !tbaa !40
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dk
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !40
  %i.ee = getelementptr inbounds nuw i8, ptr %.09681444, i64 24
  store float %i.ed, ptr %i.ee, align 4, !tbaa !40
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dk
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !40
  %i.eh = getelementptr inbounds nuw i8, ptr %.09681444, i64 28
  store float %i.eg, ptr %i.eh, align 4, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %.09681444, i64 32 ; 2 uses
  %i.ej = mul i64 %i.cx, %indvars.iv1624
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ej ; 9 uses
  %i.el = trunc nuw nsw i64 %indvars.iv1624 to i32 ; 6 uses
  %i.em = add nsw i32 %i.dj, %i.el                ; 2 uses
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = mul i64 %i.cx, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.eo ; 9 uses
  %i.eq = shl nsw i32 %i.dj, 1
  %i.er = add nsw i32 %i.eq, %i.el                ; 2 uses
  %14 = sext i32 %i.er to i64                     ; 2 uses
  %i.es = mul i64 %i.cx, %14
  %i.et = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.es ; 9 uses
  %i.eu = mul nsw i32 %i.dj, 3
  %i.ev = add nsw i32 %i.eu, %i.el                ; 2 uses
  %15 = sext i32 %i.ev to i64                     ; 2 uses
  %i.ew = mul i64 %i.cx, %15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ew ; 9 uses
  %i.ey = mul i64 %i.cx, %i.dk
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ey ; 9 uses
  %i.fa = add nsw i32 %i.em, 1
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = mul i64 %i.cx, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fc ; 9 uses
  %i.fe = or disjoint i32 %i.er, 1
  %16 = sext i32 %i.fe to i64                     ; 2 uses
  %i.ff = mul i64 %i.cx, %16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ff ; 9 uses
  %i.fh = add nsw i32 %i.ev, 1
  %17 = sext i32 %i.fh to i64                     ; 2 uses
  %i.fi = mul i64 %i.cx, %17
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fi ; 9 uses
  %i.fk = mul i64 %i.cy, %indvars.iv1624
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fk ; 9 uses
  %i.fm = mul i64 %i.cy, %i.en
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fm ; 9 uses
  %i.fo = mul i64 %i.cy, %14
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fo ; 9 uses
  %i.fq = mul i64 %i.cy, %15
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fq ; 9 uses
  %i.fs = mul i64 %i.cy, %i.dk
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fs ; 9 uses
  %i.fu = mul i64 %i.cy, %i.fb
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fu ; 9 uses
  %i.fw = mul i64 %i.cy, %16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fw ; 9 uses
  %i.fy = mul i64 %i.cy, %17
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fy ; 9 uses
  %i.ga = lshr exact i64 %indvars.iv1624, 1       ; 2 uses
  %i.gb = mul i64 %i.cz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gb ; 2 uses
  %i.gd = mul i64 %i.da, %i.ga
  %i.ge = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.gd ; 16 uses
  %i.gf = load i32, ptr %12, align 4, !tbaa !9    ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 15
  br i1 %i.gg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 9 uses
  %.09561371 = phi ptr [ %i.hq, %.lr.ph ], [ %i.gc, %bb.c ] ; 10 uses
  %i.gh = phi <8 x i32> [ %i.hp, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.gi = phi <8 x i32> [ %i.ho, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.gj = phi <8 x i32> [ %i.hn, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.gk = phi <8 x i32> [ %i.hm, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv
  %i.gm = load <2 x i64>, ptr %i.gl, align 1, !tbaa !42
  store <2 x i64> %i.gm, ptr %.09561371, align 1, !tbaa !42
  %i.gn = getelementptr inbounds nuw i8, ptr %.09561371, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv
  %i.gp = load <2 x i64>, ptr %i.go, align 1, !tbaa !42
  store <2 x i64> %i.gp, ptr %i.gn, align 1, !tbaa !42
  %i.gq = getelementptr inbounds nuw i8, ptr %.09561371, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv
  %i.gs = load <2 x i64>, ptr %i.gr, align 1, !tbaa !42
  store <2 x i64> %i.gs, ptr %i.gq, align 1, !tbaa !42
  %i.gt = getelementptr inbounds nuw i8, ptr %.09561371, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv
  %i.gv = load <2 x i64>, ptr %i.gu, align 1, !tbaa !42
  store <2 x i64> %i.gv, ptr %i.gt, align 1, !tbaa !42
  %i.gw = getelementptr inbounds nuw i8, ptr %.09561371, i64 64 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv
  %i.gy = load <2 x i64>, ptr %i.gx, align 1, !tbaa !42
  store <2 x i64> %i.gy, ptr %i.gw, align 1, !tbaa !42
  %i.gz = getelementptr inbounds nuw i8, ptr %.09561371, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv
  %i.hb = load <2 x i64>, ptr %i.ha, align 1, !tbaa !42
  store <2 x i64> %i.hb, ptr %i.gz, align 1, !tbaa !42
  %i.hc = getelementptr inbounds nuw i8, ptr %.09561371, i64 96 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv
  %i.he = load <2 x i64>, ptr %i.hd, align 1, !tbaa !42
  store <2 x i64> %i.he, ptr %i.hc, align 1, !tbaa !42
  %i.hf = getelementptr inbounds nuw i8, ptr %.09561371, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv
  %i.hh = load <2 x i64>, ptr %i.hg, align 1, !tbaa !42
  store <2 x i64> %i.hh, ptr %i.hf, align 1, !tbaa !42
  %i.hi = load <32 x i8>, ptr %.09561371, align 1, !tbaa !42
  %i.hj = load <32 x i8>, ptr %i.gq, align 1, !tbaa !42
  %i.hk = load <32 x i8>, ptr %i.gw, align 1, !tbaa !42
  %i.hl = load <32 x i8>, ptr %i.hc, align 1, !tbaa !42
  %i.hm = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gk, <32 x i8> splat (i8 127), <32 x i8> %i.hi) ; 2 uses
  %i.hn = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gj, <32 x i8> splat (i8 127), <32 x i8> %i.hj) ; 2 uses
  %i.ho = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gi, <32 x i8> splat (i8 127), <32 x i8> %i.hk) ; 2 uses
  %i.hp = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gh, <32 x i8> splat (i8 127), <32 x i8> %i.hl) ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.09561371, i64 128 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.hr = or disjoint i64 %indvars.iv.next, 15
  %i.hs = load i32, ptr %12, align 4, !tbaa !9    ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp slt i64 %i.hr, %i.ht
  br i1 %i.hu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.hv = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.hw = phi i32 [ %i.gf, %bb.c ], [ %i.hs, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa1350 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.hm, %._crit_edge.loopexit ]
  %.lcssa1349 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.hn, %._crit_edge.loopexit ]
  %.lcssa1348 = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.ho, %._crit_edge.loopexit ]
  %.lcssa = phi <8 x i32> [ zeroinitializer, %bb.c ], [ %i.hp, %._crit_edge.loopexit ]
  %.0956.lcssa = phi ptr [ %i.gc, %bb.c ], [ %i.hq, %._crit_edge.loopexit ] ; 2 uses
  %.0946.lcssa = phi i32 [ 0, %bb.c ], [ %i.hv, %._crit_edge.loopexit ] ; 3 uses
  %i.hx = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa1350, <8 x i32> %.lcssa1349)
  %i.hy = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa1348, <8 x i32> %.lcssa)
  %i.hz = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.hx, <8 x i32> %i.hy)
  %i.ia = or disjoint i32 %.0946.lcssa, 7
  %i.ib = icmp slt i32 %i.ia, %i.hw
  br i1 %i.ib, label %.lr.ph1381.preheader, label %._crit_edge1382

.lr.ph1381.preheader:                             ; preds = %._crit_edge
  %i.ic = zext nneg i32 %.0946.lcssa to i64
  br label %.lr.ph1381

.lr.ph1381:                                       ; preds = %.lr.ph1381.preheader, %.lr.ph1381
  %indvars.iv1597 = phi i64 [ %i.ic, %.lr.ph1381.preheader ], [ %indvars.iv.next1598, %.lr.ph1381 ] ; 9 uses
  %.19571378 = phi ptr [ %.0956.lcssa, %.lr.ph1381.preheader ], [ %i.jg, %.lr.ph1381 ] ; 10 uses
  %i.id = phi <8 x i32> [ zeroinitializer, %.lr.ph1381.preheader ], [ %i.jf, %.lr.ph1381 ]
  %i.ie = phi <8 x i32> [ zeroinitializer, %.lr.ph1381.preheader ], [ %i.je, %.lr.ph1381 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv1597
  %i.ig = load i64, ptr %i.if, align 1, !tbaa !42
  store i64 %i.ig, ptr %.19571378, align 1, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %.19571378, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv1597
  %i.ij = load i64, ptr %i.ii, align 1, !tbaa !42
  store i64 %i.ij, ptr %i.ih, align 1, !tbaa !42
  %i.ik = getelementptr inbounds nuw i8, ptr %.19571378, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv1597
  %i.im = load i64, ptr %i.il, align 1, !tbaa !42
  store i64 %i.im, ptr %i.ik, align 1, !tbaa !42
  %i.in = getelementptr inbounds nuw i8, ptr %.19571378, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv1597
  %i.ip = load i64, ptr %i.io, align 1, !tbaa !42
  store i64 %i.ip, ptr %i.in, align 1, !tbaa !42
  %i.iq = getelementptr inbounds nuw i8, ptr %.19571378, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv1597
  %i.is = load i64, ptr %i.ir, align 1, !tbaa !42
  store i64 %i.is, ptr %i.iq, align 1, !tbaa !42
  %i.it = getelementptr inbounds nuw i8, ptr %.19571378, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv1597
  %i.iv = load i64, ptr %i.iu, align 1, !tbaa !42
  store i64 %i.iv, ptr %i.it, align 1, !tbaa !42
  %i.iw = getelementptr inbounds nuw i8, ptr %.19571378, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv1597
  %i.iy = load i64, ptr %i.ix, align 1, !tbaa !42
  store i64 %i.iy, ptr %i.iw, align 1, !tbaa !42
  %i.iz = getelementptr inbounds nuw i8, ptr %.19571378, i64 56
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv1597
  %i.jb = load i64, ptr %i.ja, align 1, !tbaa !42
  store i64 %i.jb, ptr %i.iz, align 1, !tbaa !42
  %i.jc = load <32 x i8>, ptr %.19571378, align 1, !tbaa !42
  %i.jd = load <32 x i8>, ptr %i.iq, align 1, !tbaa !42
  %i.je = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ie, <32 x i8> splat (i8 127), <32 x i8> %i.jc) ; 2 uses
  %i.jf = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.id, <32 x i8> splat (i8 127), <32 x i8> %i.jd) ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.19571378, i64 64 ; 2 uses
  %indvars.iv.next1598 = add nuw nsw i64 %indvars.iv1597, 8 ; 3 uses
  %i.jh = load i32, ptr %12, align 4, !tbaa !9    ; 2 uses
  %i.ji = trunc i64 %indvars.iv.next1598 to i32
  %i.jj = or i32 %i.ji, 7
  %i.jk = icmp slt i32 %i.jj, %i.jh
  br i1 %i.jk, label %.lr.ph1381, label %._crit_edge1382.loopexit, !llvm.loop !45

._crit_edge1382.loopexit:                         ; preds = %.lr.ph1381
  %i.jl = trunc nuw nsw i64 %indvars.iv.next1598 to i32
  br label %._crit_edge1382

._crit_edge1382:                                  ; preds = %._crit_edge1382.loopexit, %._crit_edge
  %i.jm = phi i32 [ %i.hw, %._crit_edge ], [ %i.jh, %._crit_edge1382.loopexit ]
  %.lcssa1352 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.je, %._crit_edge1382.loopexit ]
  %.lcssa1351 = phi <8 x i32> [ zeroinitializer, %._crit_edge ], [ %i.jf, %._crit_edge1382.loopexit ]
  %.1957.lcssa = phi ptr [ %.0956.lcssa, %._crit_edge ], [ %i.jg, %._crit_edge1382.loopexit ] ; 2 uses
  %.1947.lcssa = phi i32 [ %.0946.lcssa, %._crit_edge ], [ %i.jl, %._crit_edge1382.loopexit ] ; 3 uses
  %i.jn = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa1352, <8 x i32> %.lcssa1351)
  %i.jo = add <8 x i32> %i.jn, %i.hz              ; 2 uses
  %i.jp = or disjoint i32 %.1947.lcssa, 3         ; 2 uses
  %i.jq = icmp slt i32 %i.jp, %i.jm
  br i1 %i.jq, label %.lr.ph1391.preheader, label %._crit_edge1392

.lr.ph1391.preheader:                             ; preds = %._crit_edge1382
  %i.jr = zext nneg i32 %.1947.lcssa to i64
  %i.js = zext nneg i32 %i.jp to i64
  br label %.lr.ph1391

.lr.ph1391:                                       ; preds = %.lr.ph1391.preheader, %.lr.ph1391
  %indvars.iv1600 = phi i64 [ %i.jr, %.lr.ph1391.preheader ], [ %indvars.iv.next1601, %.lr.ph1391 ] ; 11 uses
  %i.jt = phi i64 [ %i.js, %.lr.ph1391.preheader ], [ %i.nq, %.lr.ph1391 ] ; 8 uses
  %.29581388 = phi ptr [ %.1957.lcssa, %.lr.ph1391.preheader ], [ %i.np, %.lr.ph1391 ] ; 34 uses
  %.01340.in1387 = phi <8 x i32> [ %i.jo, %.lr.ph1391.preheader ], [ %i.no, %.lr.ph1391 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv1600
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !42
  store i8 %i.jv, ptr %.29581388, align 1, !tbaa !42
  %i.jw = or disjoint i64 %indvars.iv1600, 1      ; 8 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %.29581388, i64 1
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !42
  %i.ka = or disjoint i64 %indvars.iv1600, 2      ; 8 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %.29581388, i64 2
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !42
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.jt
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !42
  %i.kg = getelementptr inbounds nuw i8, ptr %.29581388, i64 3
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !42
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv1600
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !42
  %i.kj = getelementptr inbounds nuw i8, ptr %.29581388, i64 4
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !42
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.jw
end_hunk_0
