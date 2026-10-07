Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode3d?download=true
inline.NumInlined: 48
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@rev_decode_block_int64_3:bb.a
  %i.mm = add i64 %i.fg, %i.dg                    ; 2 uses
  %i.mn = add i64 %i.ml, %i.mm                    ; 2 uses
  %i.mo = add i64 %i.ml, %i.hg
  %i.mp = add i64 %i.mo, %i.mn
  %i.mq = add i64 %i.mp, %i.jg
  %i.mr = add i64 %i.hh, %i.fh                    ; 2 uses
  %i.ms = add i64 %i.fh, %i.dh                    ; 2 uses
  %i.mt = add i64 %i.mr, %i.ms                    ; 2 uses
  %i.mu = add i64 %i.mr, %i.hh
  %i.mv = add i64 %i.mu, %i.mt
  %i.mw = add i64 %i.mv, %i.jh
  %i.mx = add i64 %i.ci, %i.bv                    ; 2 uses
  %i.my = add i64 %i.bv, %i.bi                    ; 2 uses
  %i.mz = add i64 %i.mx, %i.my                    ; 2 uses
  %i.na = add i64 %i.mx, %i.ci
  %i.nb = add i64 %i.na, %i.mz
  %i.nc = add i64 %i.nb, %i.cv
  store i64 %i.nc, ptr %gep.3.i, align 8, !tbaa !15
  store i64 %i.mz, ptr %gep.2.i, align 8, !tbaa !15
  store i64 %i.my, ptr %gep.1.i, align 8, !tbaa !15
  %i.nd = add i64 %i.lf, %i.kh                    ; 2 uses
  %i.ne = add i64 %i.kh, %i.jj                    ; 2 uses
  %i.nf = add i64 %i.nd, %i.ne                    ; 2 uses
  %i.ng = add i64 %i.nd, %i.lf
  %i.nh = add i64 %i.ng, %i.nf
  %i.ni = add i64 %i.nh, %i.md
  store i64 %i.ni, ptr %gep.3.1.i, align 8, !tbaa !15
  store i64 %i.nf, ptr %gep.2.1.i, align 8, !tbaa !15
  store i64 %i.ne, ptr %gep.1.1.i, align 8, !tbaa !15
  %i.nj = add i64 %i.lg, %i.ki                    ; 2 uses
  %i.nk = add i64 %i.ki, %i.jk                    ; 2 uses
  %i.nl = add i64 %i.nj, %i.nk                    ; 2 uses
  %i.nm = add i64 %i.nj, %i.lg
  %i.nn = add i64 %i.nm, %i.nl
  %i.no = add i64 %i.nn, %i.me
  store i64 %i.no, ptr %gep.3.2.i, align 8, !tbaa !15
  store i64 %i.nl, ptr %gep.2.2.i, align 8, !tbaa !15
  store i64 %i.nk, ptr %gep.1.2.i, align 8, !tbaa !15
  %i.np = add i64 %i.lj, %i.kl                    ; 2 uses
  %i.nq = add i64 %i.kl, %i.jn                    ; 2 uses
  %i.nr = add i64 %i.np, %i.nq                    ; 2 uses
  %i.ns = add i64 %i.mc, %i.gv
  %i.nt = add i64 %i.ns, %i.me
  %i.nu = add i64 %i.nt, %i.lj
  %i.nv = add i64 %i.nu, %i.np
  %i.nw = add i64 %i.nv, %i.nr
  %i.nx = add i64 %i.nw, %i.iv
  store i64 %i.nx, ptr %gep.3.3.i, align 8, !tbaa !15
  store i64 %i.nr, ptr %gep.2.3.i, align 8, !tbaa !15
  store i64 %i.nq, ptr %gep.1.3.i, align 8, !tbaa !15
  %i.ny = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.nz = add i64 %i.cs, %i.cf                    ; 2 uses
  %i.oa = add i64 %i.ny, %i.cf                    ; 2 uses
  %i.ob = add i64 %i.oa, %i.nz                    ; 2 uses
  %i.oc = add i64 %i.nz, %i.cs
  %i.od = add i64 %i.oc, %i.df
  %i.oe = add i64 %i.od, %i.ob
  store i64 %i.oe, ptr %i.cw, align 8, !tbaa !15
  store i64 %i.ob, ptr %i.cj, align 8, !tbaa !15
  store i64 %i.oa, ptr %i.bw, align 8, !tbaa !15
  %i.of = add i64 %i.ll, %i.kn                    ; 2 uses
  %i.og = add i64 %i.kn, %i.jp                    ; 2 uses
  %i.oh = add i64 %i.of, %i.og                    ; 2 uses
  %i.oi = add i64 %i.of, %i.ll
  %i.oj = add i64 %i.oi, %i.oh
  %i.ok = add i64 %i.oj, %i.mg
  store i64 %i.ok, ptr %i.ew, align 8, !tbaa !15
  store i64 %i.oh, ptr %i.ej, align 8, !tbaa !15
  store i64 %i.og, ptr %i.dw, align 8, !tbaa !15
  %i.ol = add i64 %i.lm, %i.ko                    ; 2 uses
  %i.om = add i64 %i.ko, %i.jq                    ; 2 uses
  %i.on = add i64 %i.ol, %i.om                    ; 2 uses
  %i.oo = add i64 %i.ol, %i.lm
  %i.op = add i64 %i.oo, %i.on
  %i.oq = add i64 %i.op, %i.mh
  store i64 %i.oq, ptr %i.gw, align 8, !tbaa !15
  store i64 %i.on, ptr %i.gj, align 8, !tbaa !15
  store i64 %i.om, ptr %i.fw, align 8, !tbaa !15
  %i.or = add i64 %i.lp, %i.kr                    ; 2 uses
  %i.os = add i64 %i.kr, %i.jt                    ; 2 uses
  %i.ot = add i64 %i.or, %i.os                    ; 2 uses
  %i.ou = add i64 %i.or, %i.lp
  %i.ov = add i64 %i.ou, %i.ot
  %i.ow = add i64 %i.ov, %i.mk
  store i64 %i.ow, ptr %i.iw, align 8, !tbaa !15
  store i64 %i.ot, ptr %i.ij, align 8, !tbaa !15
  store i64 %i.os, ptr %i.hw, align 8, !tbaa !15
  %i.ox = load i64, ptr %i.bl, align 8, !tbaa !15
  %i.oy = load i64, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  %i.oz = load i64, ptr %i.cl, align 8, !tbaa !15 ; 2 uses
  %i.pa = load i64, ptr %i.cy, align 8, !tbaa !15
  %i.pb = add i64 %i.pa, %i.oz
  %i.pc = add i64 %i.oz, %i.oy                    ; 2 uses
  %i.pd = add i64 %i.pb, %i.pc
  %i.pe = add i64 %i.oy, %i.ox                    ; 2 uses
  %i.pf = add i64 %i.pc, %i.pe                    ; 2 uses
  %i.pg = add i64 %i.pd, %i.pf
  store i64 %i.pg, ptr %i.cy, align 8, !tbaa !15
  store i64 %i.pf, ptr %i.cl, align 8, !tbaa !15
  store i64 %i.pe, ptr %i.by, align 8, !tbaa !15
  %i.ph = add i64 %i.lr, %i.kt                    ; 2 uses
  %i.pi = add i64 %i.kt, %i.jv                    ; 2 uses
  %i.pj = add i64 %i.ph, %i.pi                    ; 2 uses
  %i.pk = add i64 %i.ph, %i.lr
  %i.pl = add i64 %i.pk, %i.pj
  %i.pm = add i64 %i.pl, %i.mm
  store i64 %i.pm, ptr %i.ey, align 8, !tbaa !15
  store i64 %i.pj, ptr %i.el, align 8, !tbaa !15
  store i64 %i.pi, ptr %i.dy, align 8, !tbaa !15
  %i.pn = add i64 %i.ls, %i.ku                    ; 2 uses
  %i.po = add i64 %i.ku, %i.jw                    ; 2 uses
  %i.pp = add i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = add i64 %i.pn, %i.ls
  %i.pr = add i64 %i.pq, %i.pp
  %i.ps = add i64 %i.pr, %i.mn
  store i64 %i.ps, ptr %i.gy, align 8, !tbaa !15
  store i64 %i.pp, ptr %i.gl, align 8, !tbaa !15
  store i64 %i.po, ptr %i.fy, align 8, !tbaa !15
  %i.pt = add i64 %i.lv, %i.kx                    ; 2 uses
  %i.pu = add i64 %i.kx, %i.jz                    ; 2 uses
  %i.pv = add i64 %i.pt, %i.pu                    ; 2 uses
  %i.pw = add i64 %i.pt, %i.lv
  %i.px = add i64 %i.pw, %i.pv
  %i.py = add i64 %i.px, %i.mq
  store i64 %i.py, ptr %i.iy, align 8, !tbaa !15
  store i64 %i.pv, ptr %i.il, align 8, !tbaa !15
  store i64 %i.pu, ptr %i.hy, align 8, !tbaa !15
  %i.pz = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.qa = load i64, ptr %i.ca, align 8, !tbaa !15 ; 2 uses
  %i.qb = load i64, ptr %i.cn, align 8, !tbaa !15 ; 2 uses
  %i.qc = load i64, ptr %i.da, align 8, !tbaa !15
  %i.qd = add i64 %i.qc, %i.qb
  %i.qe = add i64 %i.qb, %i.qa                    ; 2 uses
  %i.qf = add i64 %i.qd, %i.qe
  %i.qg = add i64 %i.qa, %i.pz                    ; 2 uses
  %i.qh = add i64 %i.qe, %i.qg                    ; 2 uses
  %i.qi = add i64 %i.qf, %i.qh
  store i64 %i.qi, ptr %i.da, align 8, !tbaa !15
  store i64 %i.qh, ptr %i.cn, align 8, !tbaa !15
  store i64 %i.qg, ptr %i.ca, align 8, !tbaa !15
  %i.qj = add i64 %i.lx, %i.kz                    ; 2 uses
  %i.qk = add i64 %i.kz, %i.kb                    ; 2 uses
  %i.ql = add i64 %i.qj, %i.qk                    ; 2 uses
  %i.qm = add i64 %i.qj, %i.lx
  %i.qn = add i64 %i.qm, %i.ql
  %i.qo = add i64 %i.qn, %i.ms
  store i64 %i.qo, ptr %i.fa, align 8, !tbaa !15
  store i64 %i.ql, ptr %i.en, align 8, !tbaa !15
  store i64 %i.qk, ptr %i.ea, align 8, !tbaa !15
  %i.qp = add i64 %i.ly, %i.la                    ; 2 uses
  %i.qq = add i64 %i.la, %i.kc                    ; 2 uses
  %i.qr = add i64 %i.qp, %i.qq                    ; 2 uses
  %i.qs = add i64 %i.qp, %i.ly
  %i.qt = add i64 %i.qs, %i.qr
  %i.qu = add i64 %i.qt, %i.mt
  store i64 %i.qu, ptr %i.ha, align 8, !tbaa !15
  store i64 %i.qr, ptr %i.gn, align 8, !tbaa !15
  store i64 %i.qq, ptr %i.ga, align 8, !tbaa !15
  %i.qv = add i64 %i.mb, %i.ld                    ; 2 uses
  %i.qw = add i64 %i.ld, %i.kf                    ; 2 uses
  %i.qx = add i64 %i.qv, %i.qw                    ; 2 uses
  %i.qy = add i64 %i.qv, %i.mb
  %i.qz = add i64 %i.qy, %i.qx
  %i.ra = add i64 %i.qz, %i.mw
  store i64 %i.ra, ptr %i.ja, align 8, !tbaa !15
  store i64 %i.qx, ptr %i.in, align 8, !tbaa !15
  store i64 %i.qw, ptr %i.ia, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @decode_ints_uint64(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull captures(none) initializes((0, 512)) %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %2, 6
  %i.b = or disjoint i32 %i.a, 63
  %.not = icmp ugt i32 %i.b, %1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !15, !alias.scope !35, !noalias !36 ; 3 uses
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !35, !noalias !36 ; 3 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !37, !alias.scope !35, !noalias !36 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %3, i8 0, i64 512, i1 false), !tbaa !15, !alias.scope !36, !noalias !35
  %.not117.i = icmp eq i32 %1, 0
  br i1 %.not117.i, label %decode_few_ints_uint64.exit, label %.lr.ph124.preheader.i

.lr.ph124.preheader.i:                            ; preds = %bb.b
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %2) ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp samesign ult i32 %i.c, 64
  br i1 %i.e, label %.lr.ph, label %decode_few_ints_uint64.exit

.lr.ph124.i:                                      ; preds = %.lr.ph116.i, %stream_read_bit.exit._crit_edge.i
  %.not.i = icmp ne i32 %.4.i, 0
  %indvars.iv.next139.i = add nsw i64 %indvars.iv.next139.i24, -1
  %i.f = icmp samesign ugt i64 %indvars.iv.next139.i24, %i.d
  %or.cond = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph, label %decode_few_ints_uint64.exit

.lr.ph:                                           ; preds = %.lr.ph124.i, %.lr.ph124.preheader.i
  %indvars.iv.next139.i24 = phi i64 [ %indvars.iv.next139.i, %.lr.ph124.i ], [ 63, %.lr.ph124.preheader.i ] ; 3 uses
  %.sroa.11.0118.i23 = phi i64 [ %.sroa.11.4.i, %.lr.ph124.i ], [ %.sroa.11.0.copyload.i, %.lr.ph124.preheader.i ] ; 3 uses
  %.sroa.19.0119.i22 = phi ptr [ %.sroa.19.4.i, %.lr.ph124.i ], [ %.sroa.19.0.copyload.i, %.lr.ph124.preheader.i ] ; 3 uses
  %.sroa.0.0120.i21 = phi i64 [ %.sroa.0.4.i, %.lr.ph124.i ], [ %.sroa.0.0.copyload.i, %.lr.ph124.preheader.i ] ; 4 uses
  %.050121.i20 = phi i32 [ %.4.i, %.lr.ph124.i ], [ %1, %.lr.ph124.preheader.i ] ; 2 uses
  %.045123.i19 = phi i32 [ %.146.lcssa.i, %.lr.ph124.i ], [ 0, %.lr.ph124.preheader.i ] ; 4 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %.045123.i19, i32 %.050121.i20) ; 2 uses
  %i.h = sub nuw i32 %.050121.i20, %i.g           ; 3 uses
  %i.i = zext i32 %i.g to i64                     ; 7 uses
  %i.j = icmp ult i64 %.sroa.0.0120.i21, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.19.0119.i22, i64 8 ; 2 uses
  %i.l = load i64, ptr %.sroa.19.0119.i22, align 8, !tbaa !15, !noalias !38 ; 2 uses
  %i.m = shl i64 %i.l, %.sroa.0.0120.i21
  %i.n = add i64 %i.m, %.sroa.11.0118.i23         ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.0120.i21, 64    ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %.not.i.i, label %stream_read_bits.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 %i.o, %i.i                   ; 2 uses
  %i.q = sub nsw i64 64, %i.p
  %i.r = lshr i64 %i.l, %i.q
  %i.s = add nsw i64 %i.i, -1
  %i.t = shl i64 2, %i.s
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %i.n, %i.u
  br label %stream_read_bits.exit.i

bb.e:                                             ; preds = %.lr.ph
  %i.w = sub nuw i64 %.sroa.0.0120.i21, %i.i
  %i.x = lshr i64 %.sroa.11.0118.i23, %i.i
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.y = xor i64 %notmask.i.i, -1
  %i.z = and i64 %.sroa.11.0118.i23, %i.y
  br label %stream_read_bits.exit.i

stream_read_bits.exit.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.11.5.i = phi i64 [ %i.x, %bb.e ], [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.19.5.i = phi ptr [ %.sroa.19.0119.i22, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.0.5.i = phi i64 [ %i.w, %bb.e ], [ %i.p, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0.i.i = phi i64 [ %i.z, %bb.e ], [ %i.v, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.aa = icmp ne i32 %i.h, 0
  %i.ab = icmp ult i32 %.045123.i19, 64
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph98.i, label %stream_read_bit.exit._crit_edge.i

.lr.ph98.i:                                       ; preds = %stream_read_bits.exit.i, %stream_read_bit.exit62._crit_edge.i
  %.097.i = phi i64 [ %i.ay, %stream_read_bit.exit62._crit_edge.i ], [ %.0.i.i, %stream_read_bits.exit.i ] ; 2 uses
  %.14696.i = phi i32 [ %i.az, %stream_read_bit.exit62._crit_edge.i ], [ %.045123.i19, %stream_read_bits.exit.i ] ; 4 uses
  %.15195.i = phi i32 [ %.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.h, %stream_read_bits.exit.i ]
  %.sroa.0.194.i = phi i64 [ %.sroa.0.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.0.5.i, %stream_read_bits.exit.i ] ; 2 uses
  %.sroa.19.193.i = phi ptr [ %.sroa.19.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.19.5.i, %stream_read_bits.exit.i ] ; 3 uses
  %.sroa.11.192.i = phi i64 [ %.sroa.11.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.11.5.i, %stream_read_bits.exit.i ]
  %i.ad = add i32 %.15195.i, -1                   ; 4 uses
  %.not.i57.i = icmp eq i64 %.sroa.0.194.i, 0
  br i1 %.not.i57.i, label %bb.f, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph98.i
  %i.ae = add i64 %.sroa.0.194.i, -1
  br label %stream_read_bit.exit.i

bb.f:                                             ; preds = %.lr.ph98.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.19.193.i, i64 8
  %.in.i.sroa.speculate.load..i = load i64, ptr %.sroa.19.193.i, align 8, !tbaa !15, !noalias !38
  br label %stream_read_bit.exit.i

stream_read_bit.exit.i:                           ; preds = %bb.f, %._crit_edge.i.i
  %.sroa.19.6.i = phi ptr [ %i.af, %bb.f ], [ %.sroa.19.193.i, %._crit_edge.i.i ] ; 3 uses
  %.in.i.sroa.speculated.i = phi i64 [ %.in.i.sroa.speculate.load..i, %bb.f ], [ %.sroa.11.192.i, %._crit_edge.i.i ] ; 2 uses
  %i.ag = phi i64 [ 63, %bb.f ], [ %i.ae, %._crit_edge.i.i ] ; 3 uses
  %i.ah = lshr i64 %.in.i.sroa.speculated.i, 1    ; 3 uses
  %i.ai = and i64 %.in.i.sroa.speculated.i, 1
  %.not54.i = icmp eq i64 %i.ai, 0
  br i1 %.not54.i, label %stream_read_bit.exit._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %stream_read_bit.exit.i
  %i.aj = icmp ne i32 %i.ad, 0
  %i.ak = icmp ult i32 %.14696.i, 63
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.i, label %stream_read_bit.exit62._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.282.i = phi i32 [ %i.as, %bb.h ], [ %.14696.i, %.preheader.i ] ; 3 uses
  %.25281.i = phi i32 [ %i.am, %bb.h ], [ %i.ad, %.preheader.i ]
  %.sroa.0.280.i = phi i64 [ %i.ap, %bb.h ], [ %i.ag, %.preheader.i ] ; 2 uses
  %.sroa.19.279.i = phi ptr [ %.sroa.19.7.i, %bb.h ], [ %.sroa.19.6.i, %.preheader.i ] ; 3 uses
  %.sroa.11.278.i = phi i64 [ %i.aq, %bb.h ], [ %i.ah, %.preheader.i ]
  %i.am = add i32 %.25281.i, -1                   ; 4 uses
  %.not.i58.i = icmp eq i64 %.sroa.0.280.i, 0
  br i1 %.not.i58.i, label %bb.g, label %._crit_edge.i59.i

._crit_edge.i59.i:                                ; preds = %.lr.ph.i
  %i.an = add i64 %.sroa.0.280.i, -1
  br label %stream_read_bit.exit62.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.19.279.i, i64 8
  %.in.i61.sroa.speculate.load..i = load i64, ptr %.sroa.19.279.i, align 8, !tbaa !15, !noalias !38
  br label %stream_read_bit.exit62.i

stream_read_bit.exit62.i:                         ; preds = %bb.g, %._crit_edge.i59.i
  %.sroa.19.7.i = phi ptr [ %i.ao, %bb.g ], [ %.sroa.19.279.i, %._crit_edge.i59.i ] ; 3 uses
  %.in.i61.sroa.speculated.i = phi i64 [ %.in.i61.sroa.speculate.load..i, %bb.g ], [ %.sroa.11.278.i, %._crit_edge.i59.i ] ; 2 uses
  %i.ap = phi i64 [ 63, %bb.g ], [ %i.an, %._crit_edge.i59.i ] ; 3 uses
  %i.aq = lshr i64 %.in.i61.sroa.speculated.i, 1  ; 3 uses
  %i.ar = and i64 %.in.i61.sroa.speculated.i, 1
  %.not56.i = icmp eq i64 %i.ar, 0
  br i1 %.not56.i, label %bb.h, label %stream_read_bit.exit62._crit_edge.i

bb.h:                                             ; preds = %stream_read_bit.exit62.i
  %i.as = add nuw nsw i32 %.282.i, 1              ; 2 uses
  %i.at = icmp ne i32 %i.am, 0
  %i.au = icmp ult i32 %.282.i, 62
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph.i, label %stream_read_bit.exit62._crit_edge.i

stream_read_bit.exit62._crit_edge.i:              ; preds = %bb.h, %stream_read_bit.exit62.i, %.preheader.i
  %.2.lcssa.i = phi i32 [ %.14696.i, %.preheader.i ], [ %i.as, %bb.h ], [ %.282.i, %stream_read_bit.exit62.i ] ; 3 uses
  %.sroa.11.3.i = phi i64 [ %i.ah, %.preheader.i ], [ %i.aq, %stream_read_bit.exit62.i ], [ %i.aq, %bb.h ] ; 2 uses
  %.sroa.19.3.i = phi ptr [ %.sroa.19.6.i, %.preheader.i ], [ %.sroa.19.7.i, %stream_read_bit.exit62.i ], [ %.sroa.19.7.i, %bb.h ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %i.ag, %.preheader.i ], [ %i.ap, %stream_read_bit.exit62.i ], [ %i.ap, %bb.h ] ; 2 uses
  %.3.i = phi i32 [ %i.ad, %.preheader.i ], [ %i.am, %stream_read_bit.exit62.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.aw = zext nneg i32 %.2.lcssa.i to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = add i64 %i.ax, %.097.i                  ; 2 uses
  %i.az = add nuw i32 %.2.lcssa.i, 1              ; 2 uses
  %i.ba = icmp ne i32 %.3.i, 0
  %i.bb = icmp ult i32 %.2.lcssa.i, 63
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph98.i, label %stream_read_bit.exit._crit_edge.i

stream_read_bit.exit._crit_edge.i:                ; preds = %stream_read_bit.exit62._crit_edge.i, %stream_read_bit.exit.i, %stream_read_bits.exit.i
  %.146.lcssa.i = phi i32 [ %.045123.i19, %stream_read_bits.exit.i ], [ %i.az, %stream_read_bit.exit62._crit_edge.i ], [ %.14696.i, %stream_read_bit.exit.i ]
  %.0.lcssa.i = phi i64 [ %.0.i.i, %stream_read_bits.exit.i ], [ %i.ay, %stream_read_bit.exit62._crit_edge.i ], [ %.097.i, %stream_read_bit.exit.i ] ; 2 uses
  %.sroa.11.4.i = phi i64 [ %.sroa.11.5.i, %stream_read_bits.exit.i ], [ %.sroa.11.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.ah, %stream_read_bit.exit.i ] ; 2 uses
  %.sroa.19.4.i = phi ptr [ %.sroa.19.5.i, %stream_read_bits.exit.i ], [ %.sroa.19.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.19.6.i, %stream_read_bit.exit.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.5.i, %stream_read_bits.exit.i ], [ %.sroa.0.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.ag, %stream_read_bit.exit.i ] ; 2 uses
  %.4.i = phi i32 [ %i.h, %stream_read_bits.exit.i ], [ %.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.ad, %stream_read_bit.exit.i ] ; 3 uses
  %.not55112.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not55112.i, label %.lr.ph124.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %stream_read_bit.exit._crit_edge.i, %.lr.ph116.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph116.i ], [ 0, %stream_read_bit.exit._crit_edge.i ] ; 2 uses
  %.1114.i = phi i64 [ %i.bi, %.lr.ph116.i ], [ %.0.lcssa.i, %stream_read_bit.exit._crit_edge.i ] ; 2 uses
  %i.bd = and i64 %.1114.i, 1
  %i.be = shl nuw i64 %i.bd, %indvars.iv.next139.i24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15, !alias.scope !36, !noalias !35
  %i.bh = add i64 %i.be, %i.bg
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !15, !alias.scope !36, !noalias !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bi = lshr i64 %.1114.i, 1                    ; 2 uses
  %.not55.i = icmp eq i64 %i.bi, 0
  br i1 %.not55.i, label %.lr.ph124.i, label %.lr.ph116.i

decode_few_ints_uint64.exit:                      ; preds = %.lr.ph124.i, %.lr.ph124.preheader.i, %bb.b
  %.sroa.11.0.lcssa.i = phi i64 [ %.sroa.11.0.copyload.i, %bb.b ], [ %.sroa.11.0.copyload.i, %.lr.ph124.preheader.i ], [ %.sroa.11.4.i, %.lr.ph124.i ]
  %.sroa.19.0.lcssa.i = phi ptr [ %.sroa.19.0.copyload.i, %bb.b ], [ %.sroa.19.0.copyload.i, %.lr.ph124.preheader.i ], [ %.sroa.19.4.i, %.lr.ph124.i ]
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %.lr.ph124.preheader.i ], [ %.sroa.0.4.i, %.lr.ph124.i ]
  %.050.lcssa.i = phi i32 [ 0, %bb.b ], [ %1, %.lr.ph124.preheader.i ], [ %.4.i, %.lr.ph124.i ]
  store i64 %.sroa.0.0.lcssa.i, ptr %0, align 8, !tbaa !15, !alias.scope !35, !noalias !36
  store i64 %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !35, !noalias !36
  store ptr %.sroa.19.0.lcssa.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !37, !alias.scope !35, !noalias !36
  %i.bj = sub i32 %1, %.050.lcssa.i
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %.sroa.0.0.copyload.i24 = load i64, ptr %0, align 8, !tbaa !15, !alias.scope !39, !noalias !40 ; 3 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !39, !noalias !40 ; 2 uses
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !37, !alias.scope !39, !noalias !40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %3, i8 0, i64 512, i1 false), !tbaa !15, !alias.scope !40, !noalias !39
  %i.bk = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %2) ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 64
  br i1 %i.bl, label %.lr.ph106.preheader.i, label %decode_few_ints_prec_uint64.exit

.lr.ph106.preheader.i:                            ; preds = %bb.i
  %i.bm = zext nneg i32 %i.bk to i64
  br label %.lr.ph106.i

.loopexit.i34:                                    ; preds = %.lr.ph101.i, %.critedge.i
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1
  %i.bn = icmp samesign ugt i64 %indvars.iv114.i, %i.bm
  br i1 %i.bn, label %.lr.ph106.i, label %decode_few_ints_prec_uint64.exit

.lr.ph106.i:                                      ; preds = %.loopexit.i34, %.lr.ph106.preheader.i
  %indvars.iv114.i = phi i64 [ 63, %.lr.ph106.preheader.i ], [ %indvars.iv.next115.i, %.loopexit.i34 ] ; 3 uses
  %.032105.i = phi i32 [ 0, %.lr.ph106.preheader.i ], [ %.133.lcssa.i, %.loopexit.i34 ] ; 4 uses
  %.sroa.0.0104.i = phi i64 [ %.sroa.0.0.copyload.i24, %.lr.ph106.preheader.i ], [ %.sroa.0.4.i31, %.loopexit.i34 ] ; 4 uses
  %.sroa.21.0103.i = phi ptr [ %.sroa.21.0.copyload.i, %.lr.ph106.preheader.i ], [ %.sroa.21.4.i, %.loopexit.i34 ] ; 3 uses
  %.sroa.13.0102.i = phi i64 [ %.sroa.13.0.copyload.i, %.lr.ph106.preheader.i ], [ %.sroa.13.4.i, %.loopexit.i34 ] ; 3 uses
  %i.bo = zext i32 %.032105.i to i64              ; 7 uses
  %i.bp = icmp ult i64 %.sroa.0.0104.i, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph106.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.21.0103.i, i64 8 ; 2 uses
  %i.br = load i64, ptr %.sroa.21.0103.i, align 8, !tbaa !15, !noalias !41 ; 2 uses
  %i.bs = shl i64 %i.br, %.sroa.0.0104.i
  %i.bt = add i64 %i.bs, %.sroa.13.0102.i         ; 2 uses
  %i.bu = add nuw nsw i64 %.sroa.0.0104.i, 64     ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.bu, %i.bo
  br i1 %.not.i.i43, label %stream_read_bits.exit.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = sub nsw i64 %i.bu, %i.bo                ; 2 uses
  %i.bw = sub nsw i64 64, %i.bv
  %i.bx = lshr i64 %i.br, %i.bw
  %i.by = add nsw i64 %i.bo, -1
  %i.bz = shl i64 2, %i.by
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.bt, %i.ca
  br label %stream_read_bits.exit.i27

bb.l:                                             ; preds = %.lr.ph106.i
  %i.cc = sub nuw i64 %.sroa.0.0104.i, %i.bo
  %i.cd = lshr i64 %.sroa.13.0102.i, %i.bo
  %notmask.i.i26 = shl nsw i64 -1, %i.bo
  %i.ce = xor i64 %notmask.i.i26, -1
  %i.cf = and i64 %.sroa.13.0102.i, %i.ce
  br label %stream_read_bits.exit.i27

stream_read_bits.exit.i27:                        ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.13.5.i = phi i64 [ %i.cd, %bb.l ], [ %i.bx, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.0103.i, %bb.l ], [ %i.bq, %bb.k ], [ %i.bq, %bb.j ] ; 2 uses
  %.sroa.0.5.i28 = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0.i.i29 = phi i64 [ %i.cf, %bb.l ], [ %i.cb, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  %i.cg = icmp ult i32 %.032105.i, 64
  br i1 %i.cg, label %.lr.ph87.i, label %.critedge.i

.lr.ph87.i:                                       ; preds = %stream_read_bits.exit.i27, %.critedge2.i
  %.086.i = phi i64 [ %i.cw, %.critedge2.i ], [ %.0.i.i29, %stream_read_bits.exit.i27 ] ; 4 uses
  %.13385.i = phi i32 [ %i.cx, %.critedge2.i ], [ %.032105.i, %stream_read_bits.exit.i27 ] ; 3 uses
  %.sroa.0.184.i = phi i64 [ %i.cp, %.critedge2.i ], [ %.sroa.0.5.i28, %stream_read_bits.exit.i27 ] ; 2 uses
  %.sroa.21.183.i = phi ptr [ %.sroa.21.7.i, %.critedge2.i ], [ %.sroa.21.5.i, %stream_read_bits.exit.i27 ] ; 3 uses
  %.sroa.13.182.i = phi i64 [ %i.cq, %.critedge2.i ], [ %.sroa.13.5.i, %stream_read_bits.exit.i27 ]
  %.not.i40.i = icmp eq i64 %.sroa.0.184.i, 0
  br i1 %.not.i40.i, label %bb.m, label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.lr.ph87.i
  %i.ch = add i64 %.sroa.0.184.i, -1
  br label %stream_read_bit.exit.i36

bb.m:                                             ; preds = %.lr.ph87.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.21.183.i, i64 8
  %.in.i.sroa.speculate.load..i42 = load i64, ptr %.sroa.21.183.i, align 8, !tbaa !15, !noalias !41
  br label %stream_read_bit.exit.i36

stream_read_bit.exit.i36:                         ; preds = %bb.m, %._crit_edge.i.i35
  %.sroa.21.6.i = phi ptr [ %i.ci, %bb.m ], [ %.sroa.21.183.i, %._crit_edge.i.i35 ] ; 3 uses
  %.in.i.sroa.speculated.i37 = phi i64 [ %.in.i.sroa.speculate.load..i42, %bb.m ], [ %.sroa.13.182.i, %._crit_edge.i.i35 ] ; 2 uses
  %i.cj = phi i64 [ 63, %bb.m ], [ %i.ch, %._crit_edge.i.i35 ] ; 3 uses
  %i.ck = lshr i64 %.in.i.sroa.speculated.i37, 1  ; 3 uses
  %i.cl = and i64 %.in.i.sroa.speculated.i37, 1
  %.not.i38 = icmp eq i64 %i.cl, 0
  br i1 %.not.i38, label %.critedge.i, label %.preheader.i39

.preheader.i39:                                   ; preds = %stream_read_bit.exit.i36
  %.not110.i = icmp eq i32 %.13385.i, 63
  br i1 %.not110.i, label %.critedge2.thread.i, label %.lr.ph.i40

.critedge2.thread.i:                              ; preds = %.preheader.i39
  %i.cm = xor i64 %.086.i, -9223372036854775808
  br label %.critedge.i

.lr.ph.i40:                                       ; preds = %.preheader.i39, %bb.o
  %.274.i = phi i32 [ %i.cs, %bb.o ], [ %.13385.i, %.preheader.i39 ] ; 5 uses
  %.sroa.0.273.i = phi i64 [ %i.cp, %bb.o ], [ %i.cj, %.preheader.i39 ] ; 2 uses
  %.sroa.21.272.i = phi ptr [ %.sroa.21.7.i, %bb.o ], [ %.sroa.21.6.i, %.preheader.i39 ] ; 3 uses
  %.sroa.13.271.i = phi i64 [ %i.cq, %bb.o ], [ %i.ck, %.preheader.i39 ]
  %.not.i41.i = icmp eq i64 %.sroa.0.273.i, 0
  br i1 %.not.i41.i, label %bb.n, label %._crit_edge.i42.i

._crit_edge.i42.i:                                ; preds = %.lr.ph.i40
  %i.cn = add i64 %.sroa.0.273.i, -1
  br label %stream_read_bit.exit45.i

bb.n:                                             ; preds = %.lr.ph.i40
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.21.272.i, i64 8
  %.in.i44.sroa.speculate.load..i = load i64, ptr %.sroa.21.272.i, align 8, !tbaa !15, !noalias !41
  br label %stream_read_bit.exit45.i

stream_read_bit.exit45.i:                         ; preds = %bb.n, %._crit_edge.i42.i
  %.sroa.21.7.i = phi ptr [ %i.co, %bb.n ], [ %.sroa.21.272.i, %._crit_edge.i42.i ] ; 4 uses
  %.in.i44.sroa.speculated.i = phi i64 [ %.in.i44.sroa.speculate.load..i, %bb.n ], [ %.sroa.13.271.i, %._crit_edge.i42.i ] ; 2 uses
  %i.cp = phi i64 [ 63, %bb.n ], [ %i.cn, %._crit_edge.i42.i ] ; 4 uses
  %i.cq = lshr i64 %.in.i44.sroa.speculated.i, 1  ; 4 uses
  %i.cr = and i64 %.in.i44.sroa.speculated.i, 1
  %.not39.i = icmp eq i64 %i.cr, 0
  br i1 %.not39.i, label %bb.o, label %.critedge2.i

bb.o:                                             ; preds = %stream_read_bit.exit45.i
  %i.cs = add nuw nsw i32 %.274.i, 1
  %exitcond.not.i = icmp eq i32 %.274.i, 62
  br i1 %exitcond.not.i, label %.critedge2.i.thread, label %.lr.ph.i40

.critedge2.i.thread:                              ; preds = %bb.o
  %i.ct = xor i64 %.086.i, -9223372036854775808
  br label %.critedge.i

.critedge2.i:                                     ; preds = %stream_read_bit.exit45.i
  %i.cu = zext nneg i32 %.274.i to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = add i64 %i.cv, %.086.i                  ; 2 uses
  %i.cx = add nuw i32 %.274.i, 1                  ; 2 uses
  %i.cy = icmp ult i32 %.274.i, 63
  br i1 %i.cy, label %.lr.ph87.i, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge2.i, %stream_read_bit.exit.i36, %.critedge2.i.thread, %.critedge2.thread.i, %stream_read_bits.exit.i27
  %.133.lcssa.i = phi i32 [ %.032105.i, %stream_read_bits.exit.i27 ], [ 64, %.critedge2.thread.i ], [ 64, %.critedge2.i.thread ], [ %.13385.i, %stream_read_bit.exit.i36 ], [ %i.cx, %.critedge2.i ]
  %.0.lcssa.i30 = phi i64 [ %.0.i.i29, %stream_read_bits.exit.i27 ], [ %i.cm, %.critedge2.thread.i ], [ %i.ct, %.critedge2.i.thread ], [ %.086.i, %stream_read_bit.exit.i36 ], [ %i.cw, %.critedge2.i ] ; 2 uses
  %.sroa.13.4.i = phi i64 [ %.sroa.13.5.i, %stream_read_bits.exit.i27 ], [ %i.ck, %.critedge2.thread.i ], [ %i.cq, %.critedge2.i.thread ], [ %i.ck, %stream_read_bit.exit.i36 ], [ %i.cq, %.critedge2.i ] ; 2 uses
  %.sroa.21.4.i = phi ptr [ %.sroa.21.5.i, %stream_read_bits.exit.i27 ], [ %.sroa.21.6.i, %.critedge2.thread.i ], [ %.sroa.21.7.i, %.critedge2.i.thread ], [ %.sroa.21.6.i, %stream_read_bit.exit.i36 ], [ %.sroa.21.7.i, %.critedge2.i ] ; 2 uses
  %.sroa.0.4.i31 = phi i64 [ %.sroa.0.5.i28, %stream_read_bits.exit.i27 ], [ %i.cj, %.critedge2.thread.i ], [ %i.cp, %.critedge2.i.thread ], [ %i.cj, %stream_read_bit.exit.i36 ], [ %i.cp, %.critedge2.i ] ; 2 uses
  %.not3898.i = icmp eq i64 %.0.lcssa.i30, 0
  br i1 %.not3898.i, label %.loopexit.i34, label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %.critedge.i, %.lr.ph101.i
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph101.i ], [ 0, %.critedge.i ] ; 2 uses
  %.1100.i = phi i64 [ %i.de, %.lr.ph101.i ], [ %.0.lcssa.i30, %.critedge.i ] ; 2 uses
  %i.cz = and i64 %.1100.i, 1
  %i.da = shl nuw i64 %i.cz, %indvars.iv114.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i32 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !15, !alias.scope !40, !noalias !39
  %i.dd = add i64 %i.da, %i.dc
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !15, !alias.scope !40, !noalias !39
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %i.de = lshr i64 %.1100.i, 1                    ; 2 uses
  %.not38.i = icmp eq i64 %i.de, 0
  br i1 %.not38.i, label %.loopexit.i34, label %.lr.ph101.i

decode_few_ints_prec_uint64.exit:                 ; preds = %.loopexit.i34, %bb.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.i ], [ %.sroa.13.4.i, %.loopexit.i34 ]
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.0.copyload.i, %bb.i ], [ %.sroa.21.4.i, %.loopexit.i34 ] ; 2 uses
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.i ], [ %.sroa.0.4.i31, %.loopexit.i34 ] ; 2 uses
  %i.df = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !15, !alias.scope !39, !noalias !40
  store i64 %.sroa.13.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !39, !noalias !40
  store ptr %.sroa.21.0.lcssa.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !37, !alias.scope !39, !noalias !40
  %i.dg = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %reass.add = sub i64 %i.dg, %i.df
  %reass.mul = shl i64 %reass.add, 3
  %.neg.i = sub i64 %.sroa.0.0.copyload.i24, %.sroa.0.0.lcssa.i25
  %i.dh = add i64 %.neg.i, %reass.mul
  %i.di = trunc i64 %i.dh to i32
  br label %bb.p

bb.p:                                             ; preds = %decode_few_ints_prec_uint64.exit, %decode_few_ints_uint64.exit
  %.0 = phi i32 [ %i.bj, %decode_few_ints_uint64.exit ], [ %i.di, %decode_few_ints_prec_uint64.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_0
