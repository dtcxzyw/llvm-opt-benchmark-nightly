Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_convertor?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@opal_convertor_find_or_create_master:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.de = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 168), align 8, !tbaa !38
  %.not67.17 = icmp eq i64 %i.dd, %i.de
  br i1 %.not67.17, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.df = load i32, ptr %i.h, align 8, !tbaa !37
  %i.dg = or i32 %i.df, 2097152
  store i32 %i.dg, ptr %i.h, align 8, !tbaa !37
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 176), align 16, !tbaa !38
  %.not67.18 = icmp eq i64 %i.di, %i.dj
  br i1 %.not67.18, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !37
  %i.dl = or i32 %i.dk, 4194304
  store i32 %i.dl, ptr %i.h, align 8, !tbaa !37
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !38
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 184), align 8, !tbaa !38
  %.not67.19 = icmp eq i64 %i.dn, %i.do
  br i1 %.not67.19, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = load i32, ptr %i.h, align 8, !tbaa !37
  %i.dq = or i32 %i.dp, 8388608
  store i32 %i.dq, ptr %i.h, align 8, !tbaa !37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !38
  %i.dt = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 192), align 16, !tbaa !38
  %.not67.20 = icmp eq i64 %i.ds, %i.dt
  br i1 %.not67.20, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.du = load i32, ptr %i.h, align 8, !tbaa !37
  %i.dv = or i32 %i.du, 16777216
  store i32 %i.dv, ptr %i.h, align 8, !tbaa !37
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.dx = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 200), align 8, !tbaa !38
  %.not67.21 = icmp eq i64 %spec.select, %i.dx
  br i1 %.not67.21, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dy = load i32, ptr %i.h, align 8, !tbaa !37
  %i.dz = or i32 %i.dy, 33554432
  store i32 %i.dz, ptr %i.h, align 8, !tbaa !37
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.eb = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 208), align 16, !tbaa !38
  %.not67.22 = icmp eq i64 %spec.select, %i.eb
  br i1 %.not67.22, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ec = load i32, ptr %i.h, align 8, !tbaa !37
  %i.ed = or i32 %i.ec, 67108864
  store i32 %i.ed, ptr %i.h, align 8, !tbaa !37
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 240 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !38
  %i.eg = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_local_sizes, i64 216), align 8, !tbaa !38
  %.not67.23 = icmp eq i64 %i.ef, %i.eg
  br i1 %.not67.23, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eh = load i32, ptr %i.h, align 8, !tbaa !37
  %i.ei = or i32 %i.eh, 134217728
  store i32 %i.ei, ptr %i.h, align 8, !tbaa !37
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ej = tail call i32 @opal_arch_checkmask(ptr noundef nonnull %i.f, i32 noundef 8) #12
  %i.ek = tail call i32 @opal_arch_checkmask(ptr noundef nonnull @opal_local_arch, i32 noundef 8) #12
  %.not65 = icmp eq i32 %i.ej, %i.ek
  %.pre = load i32, ptr %i.h, align 8, !tbaa !37  ; 2 uses
  br i1 %.not65, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bi
  %i.el = load i64, ptr %i.v, align 8, !tbaa !38
  %i.em = icmp ugt i64 %i.el, 1
  %i.en = select i1 %i.em, i32 16, i32 0
  %i.eo = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ep = icmp ugt i64 %i.eo, 1
  %i.eq = select i1 %i.ep, i32 32, i32 0
  %.1.1 = or disjoint i32 %i.eq, %i.en
  %i.er = load i64, ptr %i.af, align 8, !tbaa !38
  %i.es = icmp ugt i64 %i.er, 1
  %i.et = select i1 %i.es, i32 64, i32 0
  %.1.2 = or disjoint i32 %i.et, %.1.1
  %i.eu = load i64, ptr %i.ak, align 8, !tbaa !38
  %i.ev = icmp ugt i64 %i.eu, 1
  %i.ew = select i1 %i.ev, i32 128, i32 0
  %.1.3 = or disjoint i32 %i.ew, %.1.2
  %i.ex = load i64, ptr %i.ap, align 8, !tbaa !38
  %i.ey = icmp ugt i64 %i.ex, 1
  %i.ez = select i1 %i.ey, i32 256, i32 0
  %.1.4 = or disjoint i32 %i.ez, %.1.3
  %i.fa = load i64, ptr %i.au, align 8, !tbaa !38
  %i.fb = icmp ugt i64 %i.fa, 1
  %i.fc = select i1 %i.fb, i32 512, i32 0
  %i.fd = load i64, ptr %i.az, align 8, !tbaa !38
  %i.fe = icmp ugt i64 %i.fd, 1
  %i.ff = select i1 %i.fe, i32 1024, i32 0
  %i.fg = load i64, ptr %i.be, align 8, !tbaa !38
  %i.fh = icmp ugt i64 %i.fg, 1
  %i.fi = select i1 %i.fh, i32 2048, i32 0
  %i.fj = load i64, ptr %i.bj, align 8, !tbaa !38
  %i.fk = icmp ugt i64 %i.fj, 1
  %i.fl = select i1 %i.fk, i32 4096, i32 0
  %i.fm = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.fn = icmp ugt i64 %i.fm, 1
  %i.fo = select i1 %i.fn, i32 8192, i32 0
  %i.fp = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.fq = icmp ugt i64 %i.fp, 1
  %i.fr = select i1 %i.fq, i32 16384, i32 0
  %i.fs = load i64, ptr %i.by, align 8, !tbaa !38
  %i.ft = icmp ugt i64 %i.fs, 1
  %i.fu = select i1 %i.ft, i32 32768, i32 0
  %i.fv = load i64, ptr %i.cd, align 8, !tbaa !38
  %i.fw = icmp ugt i64 %i.fv, 1
  %i.fx = select i1 %i.fw, i32 65536, i32 0
  %i.fy = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.fz = icmp ugt i64 %i.fy, 1
  %i.ga = select i1 %i.fz, i32 131072, i32 0
  %i.gb = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.gc = icmp ugt i64 %i.gb, 1
  %i.gd = select i1 %i.gc, i32 262144, i32 0
  %i.ge = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.gf = icmp ugt i64 %i.ge, 1
  %i.gg = select i1 %i.gf, i32 524288, i32 0
  %i.gh = load i64, ptr %i.cx, align 8, !tbaa !38
  %i.gi = icmp ugt i64 %i.gh, 1
  %i.gj = select i1 %i.gi, i32 1048576, i32 0
  %i.gk = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.gl = icmp ugt i64 %i.gk, 1
  %i.gm = select i1 %i.gl, i32 2097152, i32 0
  %i.gn = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.go = icmp ugt i64 %i.gn, 1
  %i.gp = select i1 %i.go, i32 4194304, i32 0
  %i.gq = load i64, ptr %i.dr, align 8, !tbaa !38
  %i.gr = icmp ugt i64 %i.gq, 1
  %i.gs = select i1 %i.gr, i32 16777216, i32 0
  %i.gt = load i64, ptr %i.dw, align 8, !tbaa !38
  %i.gu = icmp ugt i64 %i.gt, 1
  %i.gv = select i1 %i.gu, i32 33554432, i32 0
  %i.gw = load i64, ptr %i.ea, align 8, !tbaa !38
  %i.gx = icmp ugt i64 %i.gw, 1
  %i.gy = select i1 %i.gx, i32 67108864, i32 0
  %i.gz = load i64, ptr %i.ee, align 8, !tbaa !38
  %i.ha = icmp ugt i64 %i.gz, 1
  %i.hb = select i1 %i.ha, i32 134217728, i32 0
  %.1.5.masked = or disjoint i32 %i.fc, %.1.4
  %.1.6.masked = or i32 %i.ff, %.1.5.masked
  %.1.7.masked = or i32 %i.fi, %.1.6.masked
  %.1.8.masked = or i32 %i.fl, %.1.7.masked
  %.1.9.masked = or i32 %i.fo, %.1.8.masked
  %.1.10.masked = or i32 %i.fr, %.1.9.masked
  %.1.11.masked = or i32 %i.fu, %.1.10.masked
  %.1.12.masked = or i32 %i.fx, %.1.11.masked
  %.1.13.masked = or i32 %i.ga, %.1.12.masked
  %.1.14.masked = or i32 %i.gd, %.1.13.masked
  %.1.15.masked = or i32 %i.gg, %.1.14.masked
  %.1.16.masked = or i32 %i.gj, %.1.15.masked
  %.1.17.masked = or i32 %i.gm, %.1.16.masked
  %.1.18.masked = or i32 %i.gp, %.1.17.masked
  %.1.20.masked = or i32 %i.gs, %.1.18.masked
  %.1.21.masked = or i32 %i.gv, %.1.20.masked
  %.1.22.masked = or i32 %i.gy, %.1.21.masked
  %i.hc = or i32 %i.hb, %.1.22.masked
  %i.hd = or i32 %.pre, %i.hc                     ; 2 uses
  store i32 %i.hd, ptr %i.h, align 8, !tbaa !37
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.preheader.preheader, %bb.bi
  %i.he = phi i32 [ %i.hd, %.preheader.preheader ], [ %.pre, %bb.bi ] ; 24 uses
  %i.hf = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 25 uses
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !34
  %i.hh = and i32 %i.he, 16
  %.not66 = icmp eq i32 %i.hh, 0
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 32), align 16
  %.val87 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 32), align 16
  %1 = select i1 %.not66, ptr %.val, ptr %.val87
  store ptr %1, ptr %i.hj, align 8, !tbaa !39
  %i.hk = and i32 %i.he, 32
  %.not66.1 = icmp eq i32 %i.hk, 0
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %.val88 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 40), align 8
  %.val89 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 40), align 8
  %2 = select i1 %.not66.1, ptr %.val88, ptr %.val89
  store ptr %2, ptr %i.hm, align 8, !tbaa !39
  %i.hn = and i32 %i.he, 64
  %.not66.2 = icmp eq i32 %i.hn, 0
  %i.ho = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %.val90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 48), align 16
  %.val91 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 48), align 16
  %3 = select i1 %.not66.2, ptr %.val90, ptr %.val91
  store ptr %3, ptr %i.hp, align 8, !tbaa !39
  %i.hq = and i32 %i.he, 128
  %.not66.3 = icmp eq i32 %i.hq, 0
  %i.hr = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %.val92 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 56), align 8
  %.val93 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 56), align 8
  %4 = select i1 %.not66.3, ptr %.val92, ptr %.val93
  store ptr %4, ptr %i.hs, align 8, !tbaa !39
  %i.ht = and i32 %i.he, 256
  %.not66.4 = icmp eq i32 %i.ht, 0
  %i.hu = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %.val94 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 64), align 16
  %.val95 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 64), align 16
  %5 = select i1 %.not66.4, ptr %.val94, ptr %.val95
  store ptr %5, ptr %i.hv, align 8, !tbaa !39
  %i.hw = and i32 %i.he, 512
  %.not66.5 = icmp eq i32 %i.hw, 0
  %i.hx = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %.val96 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 72), align 8
  %.val97 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 72), align 8
  %6 = select i1 %.not66.5, ptr %.val96, ptr %.val97
  store ptr %6, ptr %i.hy, align 8, !tbaa !39
  %i.hz = and i32 %i.he, 1024
  %.not66.6 = icmp eq i32 %i.hz, 0
  %i.ia = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 80
  %.val98 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 80), align 16
  %.val99 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 80), align 16
  %7 = select i1 %.not66.6, ptr %.val98, ptr %.val99
  store ptr %7, ptr %i.ib, align 8, !tbaa !39
  %i.ic = and i32 %i.he, 2048
  %.not66.7 = icmp eq i32 %i.ic, 0
  %i.id = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 88
  %.val100 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 88), align 8
  %.val101 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 88), align 8
  %8 = select i1 %.not66.7, ptr %.val100, ptr %.val101
  store ptr %8, ptr %i.ie, align 8, !tbaa !39
  %i.if = and i32 %i.he, 4096
  %.not66.8 = icmp eq i32 %i.if, 0
  %i.ig = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  %.val102 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 96), align 16
  %.val103 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 96), align 16
  %9 = select i1 %.not66.8, ptr %.val102, ptr %.val103
  store ptr %9, ptr %i.ih, align 8, !tbaa !39
  %i.ii = and i32 %i.he, 8192
  %.not66.9 = icmp eq i32 %i.ii, 0
  %i.ij = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  %.val104 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 104), align 8
  %.val105 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 104), align 8
  %10 = select i1 %.not66.9, ptr %.val104, ptr %.val105
  store ptr %10, ptr %i.ik, align 8, !tbaa !39
  %i.il = and i32 %i.he, 16384
  %.not66.10 = icmp eq i32 %i.il, 0
  %i.im = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 112
  %.val106 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 112), align 16
  %.val107 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 112), align 16
  %11 = select i1 %.not66.10, ptr %.val106, ptr %.val107
  store ptr %11, ptr %i.in, align 8, !tbaa !39
  %i.io = and i32 %i.he, 32768
  %.not66.11 = icmp eq i32 %i.io, 0
  %i.ip = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 120
  %.val108 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 120), align 8
  %.val109 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 120), align 8
  %12 = select i1 %.not66.11, ptr %.val108, ptr %.val109
  store ptr %12, ptr %i.iq, align 8, !tbaa !39
  %i.ir = and i32 %i.he, 65536
  %.not66.12 = icmp eq i32 %i.ir, 0
  %i.is = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 128
  %.val110 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 128), align 16
  %.val111 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 128), align 16
  %13 = select i1 %.not66.12, ptr %.val110, ptr %.val111
  store ptr %13, ptr %i.it, align 8, !tbaa !39
  %i.iu = and i32 %i.he, 131072
  %.not66.13 = icmp eq i32 %i.iu, 0
  %i.iv = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 136
  %.val112 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 136), align 8
  %.val113 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 136), align 8
  %14 = select i1 %.not66.13, ptr %.val112, ptr %.val113
  store ptr %14, ptr %i.iw, align 8, !tbaa !39
  %i.ix = and i32 %i.he, 262144
  %.not66.14 = icmp eq i32 %i.ix, 0
  %i.iy = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 144
  %.val114 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 144), align 16
  %.val115 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 144), align 16
  %15 = select i1 %.not66.14, ptr %.val114, ptr %.val115
  store ptr %15, ptr %i.iz, align 8, !tbaa !39
  %i.ja = and i32 %i.he, 524288
  %.not66.15 = icmp eq i32 %i.ja, 0
  %i.jb = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 152
  %.val116 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 152), align 8
  %.val117 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 152), align 8
  %16 = select i1 %.not66.15, ptr %.val116, ptr %.val117
  store ptr %16, ptr %i.jc, align 8, !tbaa !39
  %i.jd = and i32 %i.he, 1048576
  %.not66.16 = icmp eq i32 %i.jd, 0
  %i.je = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 160
  %.val118 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 160), align 16
  %.val119 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 160), align 16
  %17 = select i1 %.not66.16, ptr %.val118, ptr %.val119
  store ptr %17, ptr %i.jf, align 8, !tbaa !39
  %i.jg = and i32 %i.he, 2097152
  %.not66.17 = icmp eq i32 %i.jg, 0
  %i.jh = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 168
  %.val120 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 168), align 8
  %.val121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 168), align 8
  %18 = select i1 %.not66.17, ptr %.val120, ptr %.val121
  store ptr %18, ptr %i.ji, align 8, !tbaa !39
  %i.jj = and i32 %i.he, 4194304
  %.not66.18 = icmp eq i32 %i.jj, 0
  %i.jk = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 176
  %.val122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 176), align 16
  %.val123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 176), align 16
  %19 = select i1 %.not66.18, ptr %.val122, ptr %.val123
  store ptr %19, ptr %i.jl, align 8, !tbaa !39
  %i.jm = and i32 %i.he, 8388608
  %.not66.19 = icmp eq i32 %i.jm, 0
  %i.jn = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 184
  %.val124 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 184), align 8
  %.val125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 184), align 8
  %20 = select i1 %.not66.19, ptr %.val124, ptr %.val125
  store ptr %20, ptr %i.jo, align 8, !tbaa !39
  %i.jp = and i32 %i.he, 16777216
  %.not66.20 = icmp eq i32 %i.jp, 0
  %i.jq = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 192
  %.val126 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 192), align 16
  %.val127 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 192), align 16
  %21 = select i1 %.not66.20, ptr %.val126, ptr %.val127
  store ptr %21, ptr %i.jr, align 8, !tbaa !39
  %i.js = and i32 %i.he, 33554432
  %.not66.21 = icmp eq i32 %i.js, 0
  %i.jt = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 200
  %.val128 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 200), align 8
  %.val129 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 200), align 8
  %22 = select i1 %.not66.21, ptr %.val128, ptr %.val129
  store ptr %22, ptr %i.ju, align 8, !tbaa !39
  %i.jv = and i32 %i.he, 67108864
  %.not66.22 = icmp eq i32 %i.jv, 0
  %i.jw = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 208
  %.val130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 208), align 16
  %.val131 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 208), align 16
  %23 = select i1 %.not66.22, ptr %.val130, ptr %.val131
  store ptr %23, ptr %i.jx, align 8, !tbaa !39
  %i.jy = and i32 %i.he, 134217728
  %.not66.23 = icmp eq i32 %i.jy, 0
  %i.jz = load ptr, ptr %i.hg, align 8, !tbaa !34
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 216
  %.val132 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_copy_functions, i64 216), align 8
  %.val133 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_datatype_heterogeneous_copy_functions, i64 216), align 8
  %24 = select i1 %.not66.23, ptr %.val132, ptr %.val133
  store ptr %24, ptr %i.ka, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.loopexit, %bb.e
  %.060 = phi ptr [ %i.d, %.loopexit.loopexit ], [ %i.d, %bb.e ], [ %.059, %bb.c ]
  ret ptr %.060
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @opal_arch_checkmask(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noundef ptr @opal_convertor_create(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 56), align 8, !tbaa !81
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #13 ; 9 uses
  %i.c = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !23
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !82
  %.not.i = icmp eq i32 %i.c, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @opal_convertor_t_class, ptr %i.b, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store volatile i32 1, ptr %i.e, align 8, !tbaa !84
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !85 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.g, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.d ]
  %.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.f, %bb.d ]
  tail call void %i.h(ptr noundef nonnull %i.b) #12, !inline_history !78
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !79

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.c, %bb.d
  %i.k = tail call ptr @opal_convertor_find_or_create_master(i32 noundef %0) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %0, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.k, ptr %i.q, align 8, !tbaa !40
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define i32 @opal_convertor_pack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %i.c = and i32 %i.b, 134217728
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !43
  store i32 0, ptr %2, align 4, !tbaa !23
  store i64 0, ptr %3, align 8, !tbaa !38
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = and i32 %i.b, 1048576
  %.not66 = icmp eq i32 %i.f, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %.not66, label %bb.n, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = sub i64 %i.h, %i.j                       ; 4 uses
  store i64 %i.k, ptr %3, align 8, !tbaa !38
  %i.l = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %.not80 = icmp eq i32 %i.l, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = load i64, ptr %i.i, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.w = phi i32 [ %i.l, %.lr.ph ], [ %i.ae, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.079 = phi i64 [ %i.k, %.lr.ph ], [ %i.ag, %bb.i ] ; 4 uses
  %.07277 = phi ptr [ %i.u, %.lr.ph ], [ %i.ah, %bb.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  %.not67 = icmp ult i64 %i.z, %.079
  br i1 %.not67, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !41

bb.g:                                             ; preds = %bb.f
  store ptr %.07277, ptr %i.x, align 8, !tbaa !53
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.ad = tail call ptr %i.ac(ptr noundef nonnull %i.aa, ptr noundef %.07277, i64 noundef %i.z, ptr noundef %0) #12 ; 0 uses
  %.pre = load i64, ptr %i.y, align 8, !tbaa !43
  %.pre89 = load i32, ptr %2, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i32 [ %.pre89, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.af = phi i64 [ %.pre, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %i.ag = sub i64 %.079, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.07277, i64 %i.af
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = zext i32 %i.ae to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !86

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre90 = load i64, ptr %3, align 8, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ak = phi i64 [ %i.k, %bb.d ], [ %.pre90, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ %i.k, %bb.d ], [ %i.ag, %._crit_edge.loopexit ]
  %i.al = sub i64 %i.ak, %.0.lcssa                ; 2 uses
  store i64 %i.al, ptr %3, align 8, !tbaa !38
  %i.am = load i64, ptr %i.i, align 8, !tbaa !45
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr %i.i, align 8, !tbaa !45
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.ao = trunc nuw i64 %indvars.iv to i32
  store i64 %.079, ptr %i.y, align 8, !tbaa !43
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !41

bb.k:                                             ; preds = %bb.j
  store ptr %.07277, ptr %i.x, align 8, !tbaa !53
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.as = tail call ptr %i.ar(ptr noundef nonnull %i.ap, ptr noundef %.07277, i64 noundef %.079, ptr noundef %0) #12 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = load i64, ptr %i.g, align 8, !tbaa !44
  store i64 %i.at, ptr %i.i, align 8, !tbaa !45
  %i.au = add nuw i32 %i.ao, 1
  store i32 %i.au, ptr %2, align 4, !tbaa !23
  %i.av = load i32, ptr %i.a, align 4, !tbaa !25
  %i.aw = or i32 %i.av, 134217728
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !25
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !54
  %i.az = tail call i32 %i.ay(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.m, %bb.n, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %i.az, %bb.n ], [ 1, %bb.m ], [ 0, %._crit_edge ]
end_hunk_0
