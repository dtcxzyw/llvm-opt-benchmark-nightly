loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@RC2_encrypt:.outer
  %i.bf = add nsw i32 %.0, -1                     ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.outer.1, label %bb.a

.outer.1:                                         ; preds = %bb.a
  %i.bh = and i32 %i.be, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !5
  %i.bl = add i32 %i.bk, %i.u                     ; 2 uses
  %i.bm = and i32 %i.bl, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !5
  %i.bq = add i32 %i.bp, %i.ag                    ; 2 uses
  %i.br = and i32 %i.bq, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !5
  %i.bv = add i32 %i.bu, %i.as                    ; 2 uses
  %i.bw = and i32 %i.bv, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !5
  %i.ca = add i32 %i.bz, %i.be
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.outer.1
  %.069.1 = phi ptr [ %i.do, %bb.b ], [ %i.aw, %.outer.1 ] ; 5 uses
  %.067.1 = phi i32 [ %i.cm, %bb.b ], [ %i.bl, %.outer.1 ]
  %.065.1 = phi i32 [ %i.cy, %bb.b ], [ %i.bq, %.outer.1 ] ; 2 uses
  %.063.1 = phi i32 [ %i.dk, %bb.b ], [ %i.bv, %.outer.1 ] ; 3 uses
  %.061.1 = phi i32 [ %i.dw, %bb.b ], [ %i.ca, %.outer.1 ] ; 5 uses
  %.0.1 = phi i32 [ %i.dx, %bb.b ], [ 6, %.outer.1 ]
  %i.cb = xor i32 %.061.1, -1
  %i.cc = and i32 %.065.1, %i.cb
  %i.cd = add i32 %i.cc, %.067.1
  %i.ce = and i32 %.061.1, %.063.1
  %i.cf = add i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.069.1, i64 4
  %i.ch = load i32, ptr %.069.1, align 4, !tbaa !5
  %i.ci = add i32 %i.cf, %i.ch
  %i.cj = and i32 %i.ci, 65535                    ; 2 uses
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = lshr i32 %i.cj, 15
  %i.cm = or disjoint i32 %i.ck, %i.cl            ; 6 uses
  %i.cn = xor i32 %i.cm, -1
  %i.co = and i32 %.063.1, %i.cn
  %i.cp = and i32 %i.cm, %.061.1
  %i.cq = getelementptr inbounds nuw i8, ptr %.069.1, i64 8
  %i.cr = load i32, ptr %i.cg, align 4, !tbaa !5
  %i.cs = add i32 %i.cr, %.065.1
  %i.ct = add i32 %i.cs, %i.co
  %i.cu = add i32 %i.ct, %i.cp
  %i.cv = and i32 %i.cu, 65535                    ; 2 uses
  %i.cw = shl nuw nsw i32 %i.cv, 2
  %i.cx = lshr i32 %i.cv, 14
  %i.cy = or disjoint i32 %i.cw, %i.cx            ; 5 uses
  %i.cz = xor i32 %i.cy, -1
  %i.da = and i32 %.061.1, %i.cz
  %i.db = and i32 %i.cy, %i.cm
  %i.dc = getelementptr inbounds nuw i8, ptr %.069.1, i64 12
  %i.dd = load i32, ptr %i.cq, align 4, !tbaa !5
  %i.de = add i32 %i.dd, %.063.1
  %i.df = add i32 %i.de, %i.da
  %i.dg = add i32 %i.df, %i.db
  %i.dh = and i32 %i.dg, 65535                    ; 2 uses
  %i.di = shl nuw nsw i32 %i.dh, 3
  %i.dj = lshr i32 %i.dh, 13
  %i.dk = or disjoint i32 %i.di, %i.dj            ; 4 uses
  %i.dl = xor i32 %i.dk, -1
  %i.dm = and i32 %i.cm, %i.dl
  %i.dn = and i32 %i.dk, %i.cy
  %i.do = getelementptr inbounds nuw i8, ptr %.069.1, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.dc, align 4, !tbaa !5
  %i.dq = add i32 %i.dp, %.061.1
  %i.dr = add i32 %i.dq, %i.dm
  %i.ds = add i32 %i.dr, %i.dn
  %i.dt = and i32 %i.ds, 65535                    ; 2 uses
  %i.du = shl nuw nsw i32 %i.dt, 5
  %i.dv = lshr i32 %i.dt, 11
  %i.dw = or disjoint i32 %i.du, %i.dv            ; 3 uses
  %i.dx = add nsw i32 %.0.1, -1                   ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %.outer.2, label %bb.b

.outer.2:                                         ; preds = %bb.b
  %i.dz = and i32 %i.dw, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !5
  %i.ed = add i32 %i.ec, %i.cm                    ; 2 uses
  %i.ee = and i32 %i.ed, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !5
  %i.ei = add i32 %i.eh, %i.cy                    ; 2 uses
  %i.ej = and i32 %i.ei, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !5
  %i.en = add i32 %i.em, %i.dk                    ; 2 uses
  %i.eo = and i32 %i.en, 63
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !5
  %i.es = add i32 %i.er, %i.dw
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.outer.2
  %.069.2 = phi ptr [ %i.gg, %bb.c ], [ %i.do, %.outer.2 ] ; 5 uses
  %.067.2 = phi i32 [ %i.fe, %bb.c ], [ %i.ed, %.outer.2 ]
  %.065.2 = phi i32 [ %i.fq, %bb.c ], [ %i.ei, %.outer.2 ] ; 2 uses
  %.063.2 = phi i32 [ %i.gc, %bb.c ], [ %i.en, %.outer.2 ] ; 3 uses
  %.061.2 = phi i32 [ %i.go, %bb.c ], [ %i.es, %.outer.2 ] ; 5 uses
  %.0.2 = phi i32 [ %i.gp, %bb.c ], [ 5, %.outer.2 ]
  %i.et = xor i32 %.061.2, -1
  %i.eu = and i32 %.065.2, %i.et
  %i.ev = add i32 %i.eu, %.067.2
  %i.ew = and i32 %.061.2, %.063.2
  %i.ex = add i32 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.069.2, i64 4
  %i.ez = load i32, ptr %.069.2, align 4, !tbaa !5
  %i.fa = add i32 %i.ex, %i.ez
  %i.fb = and i32 %i.fa, 65535                    ; 2 uses
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %i.fd = lshr i32 %i.fb, 15
  %i.fe = or disjoint i32 %i.fc, %i.fd            ; 6 uses
  %i.ff = xor i32 %i.fe, -1
  %i.fg = and i32 %.063.2, %i.ff
  %i.fh = and i32 %i.fe, %.061.2
  %i.fi = getelementptr inbounds nuw i8, ptr %.069.2, i64 8
  %i.fj = load i32, ptr %i.ey, align 4, !tbaa !5
  %i.fk = add i32 %i.fj, %.065.2
  %i.fl = add i32 %i.fk, %i.fg
  %i.fm = add i32 %i.fl, %i.fh
  %i.fn = and i32 %i.fm, 65535                    ; 2 uses
  %i.fo = shl nuw nsw i32 %i.fn, 2
  %i.fp = lshr i32 %i.fn, 14
  %i.fq = or disjoint i32 %i.fo, %i.fp            ; 5 uses
  %i.fr = xor i32 %i.fq, -1
  %i.fs = and i32 %.061.2, %i.fr
  %i.ft = and i32 %i.fq, %i.fe
  %i.fu = getelementptr inbounds nuw i8, ptr %.069.2, i64 12
  %i.fv = load i32, ptr %i.fi, align 4, !tbaa !5
  %i.fw = add i32 %i.fv, %.063.2
  %i.fx = add i32 %i.fw, %i.fs
  %i.fy = add i32 %i.fx, %i.ft
  %i.fz = and i32 %i.fy, 65535                    ; 2 uses
  %i.ga = shl nuw nsw i32 %i.fz, 3
  %i.gb = lshr i32 %i.fz, 13
  %i.gc = or disjoint i32 %i.ga, %i.gb            ; 4 uses
  %i.gd = xor i32 %i.gc, -1
  %i.ge = and i32 %i.fe, %i.gd
  %i.gf = and i32 %i.gc, %i.fq
  %i.gg = getelementptr inbounds nuw i8, ptr %.069.2, i64 16
  %i.gh = load i32, ptr %i.fu, align 4, !tbaa !5
  %i.gi = add i32 %i.gh, %.061.2
  %i.gj = add i32 %i.gi, %i.ge
  %i.gk = add i32 %i.gj, %i.gf
  %i.gl = and i32 %i.gk, 65535                    ; 2 uses
  %i.gm = shl nuw nsw i32 %i.gl, 5
  %i.gn = lshr i32 %i.gl, 11
  %i.go = or disjoint i32 %i.gm, %i.gn            ; 2 uses
  %i.gp = add nsw i32 %.0.2, -1                   ; 2 uses
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.gr = and i32 %i.fe, 65535
  %i.gs = shl i32 %i.fq, 16
  %i.gt = or disjoint i32 %i.gs, %i.gr
  %i.gu = zext i32 %i.gt to i64
  store i64 %i.gu, ptr %0, align 8, !tbaa !9
  %i.gv = and i32 %i.gc, 65535
  %i.gw = shl i32 %i.go, 16
  %i.gx = or disjoint i32 %i.gw, %i.gv
  %i.gy = zext i32 %i.gx to i64
  store i64 %i.gy, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @RC2_decrypt(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 65535
  %i.d = lshr i64 %i.a, 16
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 65535
  %i.j = lshr i64 %i.g, 16
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 252
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.070 = phi ptr [ %i.l, %bb.a ], [ %11, %bb.e ] ; 5 uses
  %.068 = phi i32 [ %i.c, %bb.a ], [ %.169, %bb.e ] ; 6 uses
  %.066 = phi i32 [ %i.e, %bb.a ], [ %.167, %bb.e ] ; 5 uses
  %.064 = phi i32 [ %i.i, %bb.a ], [ %.165, %bb.e ] ; 4 uses
  %.062 = phi i32 [ %i.k, %bb.a ], [ %.163, %bb.e ] ; 2 uses
  %.060 = phi i32 [ 3, %bb.a ], [ %.161, %bb.e ]  ; 2 uses
  %.0 = phi i32 [ 5, %bb.a ], [ %.1, %bb.e ]
  %i.m = shl i32 %.062, 11
  %i.n = lshr i32 %.062, 5
  %i.o = or i32 %i.m, %i.n
  %i.p = xor i32 %.064, -1
  %i.q = and i32 %.068, %i.p
  %i.r = and i32 %.064, %.066
  %2 = getelementptr inbounds i8, ptr %.070, i64 -4
  %3 = load i32, ptr %.070, align 4, !tbaa !5
  %4 = add nuw nsw i32 %i.q, %i.r
  %i.s = add i32 %4, %3
  %i.t = sub i32 %i.o, %i.s                       ; 6 uses
  %i.u = and i32 %i.t, 65535                      ; 2 uses
  %i.v = shl nuw nsw i32 %.064, 13
  %i.w = lshr i32 %.064, 3
  %i.x = or i32 %i.v, %i.w
  %i.y = xor i32 %.066, -1
  %i.z = and i32 %i.t, %i.y
  %i.aa = and i32 %.066, %.068
  %5 = getelementptr inbounds i8, ptr %.070, i64 -8
  %6 = load i32, ptr %2, align 4, !tbaa !5
  %7 = add i32 %i.aa, %6
  %i.ab = add i32 %7, %i.z
  %i.ac = sub i32 %i.x, %i.ab                     ; 5 uses
  %i.ad = and i32 %i.ac, 65535                    ; 2 uses
  %i.ae = shl i32 %.066, 14
  %i.af = lshr i32 %.066, 2
  %i.ag = or i32 %i.ae, %i.af
  %i.ah = xor i32 %.068, -1
  %i.ai = and i32 %i.ac, %i.ah
  %i.aj = and i32 %i.t, %.068
  %8 = getelementptr inbounds i8, ptr %.070, i64 -12
  %9 = load i32, ptr %5, align 4, !tbaa !5
  %10 = add i32 %i.aj, %9
  %i.ak = add i32 %10, %i.ai
  %i.al = sub i32 %i.ag, %i.ak                    ; 5 uses
  %i.am = shl nuw nsw i32 %.068, 15
  %i.an = lshr i32 %.068, 1
  %i.ao = or i32 %i.am, %i.an
  %i.ap = xor i32 %i.u, -1
  %i.aq = and i32 %i.al, %i.ap
  %i.ar = and i32 %i.ac, %i.t
  %11 = getelementptr inbounds i8, ptr %.070, i64 -16
  %12 = load i32, ptr %8, align 4, !tbaa !5
  %13 = add i32 %12, %i.ar
  %i.as = add i32 %13, %i.aq
  %i.at = sub i32 %i.ao, %i.as                    ; 3 uses
  %i.au = and i32 %i.at, 65535                    ; 2 uses
  %i.av = add nsw i32 %.0, -1                     ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ax = add nsw i32 %.060, -1                   ; 3 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = icmp eq i32 %i.ax, 2
  %i.ba = select i1 %i.az, i32 6, i32 5
  %i.bb = and i32 %i.ac, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !5
  %i.bf = sub i32 %i.t, %i.be                     ; 2 uses
  %i.bg = and i32 %i.bf, 65535
  %i.bh = and i32 %i.al, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !5
  %i.bl = sub i32 %i.ac, %i.bk
  %i.bm = and i32 %i.bl, 65535
  %i.bn = and i32 %i.at, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !5
  %i.br = sub i32 %i.al, %i.bq
  %i.bs = and i32 %i.bf, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !5
  %i.bw = sub i32 %i.at, %i.bv
  %i.bx = and i32 %i.bw, 65535
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.169 = phi i32 [ %i.bx, %bb.d ], [ %i.au, %bb.b ]
  %.167.in = phi i32 [ %i.br, %bb.d ], [ %i.al, %bb.b ]
  %.165 = phi i32 [ %i.bm, %bb.d ], [ %i.ad, %bb.b ]
  %.163 = phi i32 [ %i.bg, %bb.d ], [ %i.u, %bb.b ]
  %.161 = phi i32 [ %i.ax, %bb.d ], [ %.060, %bb.b ]
  %.1 = phi i32 [ %i.ba, %bb.d ], [ %i.av, %bb.b ]
  %.167 = and i32 %.167.in, 65535
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.by = shl i32 %i.al, 16
  %i.bz = or disjoint i32 %i.au, %i.by
  %i.ca = zext i32 %i.bz to i64
  store i64 %i.ca, ptr %0, align 8, !tbaa !9
  %i.cb = shl i32 %i.t, 16
  %i.cc = or disjoint i32 %i.ad, %i.cb
  %i.cd = zext i32 %i.cc to i64
  store i64 %i.cd, ptr %i.f, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !12}
end_hunk_0
