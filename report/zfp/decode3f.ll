Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode3f?download=true
inline.NumInlined: 48
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@rev_decode_block_int32_3:bb.a
  %i.ly = add i32 %i.ei, %i.ci                    ; 2 uses
  %i.lz = add i32 %i.lx, %i.ly                    ; 2 uses
  %i.ma = add i32 %i.lx, %i.gi
  %i.mb = add i32 %i.ma, %i.lz
  %i.mc = add i32 %i.mb, %i.ii
  %i.md = add i32 %i.gj, %i.ej                    ; 2 uses
  %i.me = extractelement <4 x i32> %i.ch, i64 3
  %i.mf = add i32 %i.ej, %i.me                    ; 2 uses
  %i.mg = add i32 %i.md, %i.mf                    ; 2 uses
  %i.mh = add i32 %i.md, %i.gj
  %i.mi = add i32 %i.mh, %i.mg
  %i.mj = add i32 %i.mi, %i.ij
  %i.mk = add i32 %i.km, %i.jl                    ; 2 uses
  %i.ml = add i32 %i.jl, %i.il                    ; 2 uses
  %i.mm = add i32 %i.mk, %i.ml                    ; 2 uses
  %i.mn = add i32 %i.mk, %i.km
  %i.mo = add i32 %i.mn, %i.mm
  %i.mp = add i32 %i.mo, %i.ln
  store i32 %i.mp, ptr %gep.3.i, align 4, !tbaa !19
  store i32 %i.mm, ptr %gep.2.i, align 4, !tbaa !19
  store i32 %i.ml, ptr %gep.1.i, align 4, !tbaa !19
  %i.mq = add i32 %i.kn, %i.jm                    ; 2 uses
  %i.mr = add i32 %i.jm, %i.im                    ; 2 uses
  %i.ms = add i32 %i.mq, %i.mr                    ; 2 uses
  %i.mt = add i32 %i.mq, %i.kn
  %i.mu = add i32 %i.mt, %i.ms
  %i.mv = add i32 %i.mu, %i.lo
  store i32 %i.mv, ptr %gep.3.1.i, align 4, !tbaa !19
  store i32 %i.ms, ptr %gep.2.1.i, align 4, !tbaa !19
  store i32 %i.mr, ptr %gep.1.1.i, align 4, !tbaa !19
  %i.mw = add i32 %i.ko, %i.jn                    ; 2 uses
  %i.mx = add i32 %i.jn, %i.in                    ; 2 uses
  %i.my = add i32 %i.mw, %i.mx                    ; 2 uses
  %i.mz = add i32 %i.mw, %i.ko
  %i.na = add i32 %i.mz, %i.my
  %i.nb = add i32 %i.na, %i.lp
  store i32 %i.nb, ptr %gep.3.2.i, align 4, !tbaa !19
  store i32 %i.my, ptr %gep.2.2.i, align 4, !tbaa !19
  store i32 %i.mx, ptr %gep.1.2.i, align 4, !tbaa !19
  %i.nc = add i32 %i.kr, %i.jq                    ; 2 uses
  %i.nd = add i32 %i.jq, %i.iq                    ; 2 uses
  %i.ne = add i32 %i.nc, %i.nd                    ; 2 uses
  %i.nf = add i32 %i.lm, %i.fx
  %i.ng = add i32 %i.nf, %i.lp
  %i.nh = add i32 %i.ng, %i.kr
  %i.ni = add i32 %i.nh, %i.nc
  %i.nj = add i32 %i.ni, %i.ne
  %i.nk = add i32 %i.nj, %i.hx
  store i32 %i.nk, ptr %gep.3.3.i, align 4, !tbaa !19
  store i32 %i.ne, ptr %gep.2.3.i, align 4, !tbaa !19
  store i32 %i.nd, ptr %gep.1.3.i, align 4, !tbaa !19
  %i.nl = load i32, ptr %i.bi, align 4, !tbaa !19
  %i.nm = add i32 %i.kt, %i.js                    ; 2 uses
  %i.nn = add i32 %i.nl, %i.js                    ; 2 uses
  %i.no = add i32 %i.nn, %i.nm                    ; 2 uses
  %i.np = add i32 %i.nm, %i.kt
  %i.nq = add i32 %i.np, %i.lr
  %i.nr = add i32 %i.nq, %i.no
  store i32 %i.nr, ptr %i.br, align 4, !tbaa !19
  store i32 %i.no, ptr %i.bo, align 4, !tbaa !19
  store i32 %i.nn, ptr %i.bl, align 4, !tbaa !19
  %i.ns = add i32 %i.ku, %i.jt                    ; 2 uses
  %i.nt = add i32 %i.jt, %i.is                    ; 2 uses
  %i.nu = add i32 %i.ns, %i.nt                    ; 2 uses
  %i.nv = add i32 %i.ns, %i.ku
  %i.nw = add i32 %i.nv, %i.nu
  %i.nx = add i32 %i.nw, %i.ls
  store i32 %i.nx, ptr %i.dy, align 4, !tbaa !19
  store i32 %i.nu, ptr %i.dl, align 4, !tbaa !19
  store i32 %i.nt, ptr %i.cy, align 4, !tbaa !19
  %i.ny = add i32 %i.kv, %i.ju                    ; 2 uses
  %i.nz = add i32 %i.ju, %i.it                    ; 2 uses
  %i.oa = add i32 %i.ny, %i.nz                    ; 2 uses
  %i.ob = add i32 %i.ny, %i.kv
  %i.oc = add i32 %i.ob, %i.oa
  %i.od = add i32 %i.oc, %i.lt
  store i32 %i.od, ptr %i.fy, align 4, !tbaa !19
  store i32 %i.oa, ptr %i.fl, align 4, !tbaa !19
  store i32 %i.nz, ptr %i.ey, align 4, !tbaa !19
  %i.oe = add i32 %i.ky, %i.jx                    ; 2 uses
  %i.of = add i32 %i.jx, %i.iw                    ; 2 uses
  %i.og = add i32 %i.oe, %i.of                    ; 2 uses
  %i.oh = add i32 %i.oe, %i.ky
  %i.oi = add i32 %i.oh, %i.og
  %i.oj = add i32 %i.oi, %i.lw
  store i32 %i.oj, ptr %i.hy, align 4, !tbaa !19
  store i32 %i.og, ptr %i.hl, align 4, !tbaa !19
  store i32 %i.of, ptr %i.gy, align 4, !tbaa !19
  %i.ok = load i32, ptr %i.bj, align 4, !tbaa !19
  %i.ol = load i32, ptr %i.bm, align 4, !tbaa !19 ; 2 uses
  %i.om = load i32, ptr %i.bp, align 4, !tbaa !19 ; 2 uses
  %i.on = load i32, ptr %i.bs, align 4, !tbaa !19
  %i.oo = add i32 %i.on, %i.om
  %i.op = add i32 %i.om, %i.ol                    ; 2 uses
  %i.oq = add i32 %i.oo, %i.op
  %i.or = add i32 %i.ol, %i.ok                    ; 2 uses
  %i.os = add i32 %i.op, %i.or                    ; 2 uses
  %i.ot = add i32 %i.oq, %i.os
  store i32 %i.ot, ptr %i.bs, align 4, !tbaa !19
  store i32 %i.os, ptr %i.bp, align 4, !tbaa !19
  store i32 %i.or, ptr %i.bm, align 4, !tbaa !19
  %i.ou = add i32 %i.la, %i.jz                    ; 2 uses
  %i.ov = add i32 %i.jz, %i.iy                    ; 2 uses
  %i.ow = add i32 %i.ou, %i.ov                    ; 2 uses
  %i.ox = add i32 %i.ou, %i.la
  %i.oy = add i32 %i.ox, %i.ow
  %i.oz = add i32 %i.oy, %i.ly
  store i32 %i.oz, ptr %i.ea, align 4, !tbaa !19
  store i32 %i.ow, ptr %i.dn, align 4, !tbaa !19
  store i32 %i.ov, ptr %i.da, align 4, !tbaa !19
  %i.pa = add i32 %i.lb, %i.ka                    ; 2 uses
  %i.pb = add i32 %i.ka, %i.iz                    ; 2 uses
  %i.pc = add i32 %i.pa, %i.pb                    ; 2 uses
  %i.pd = add i32 %i.pa, %i.lb
  %i.pe = add i32 %i.pd, %i.pc
  %i.pf = add i32 %i.pe, %i.lz
  store i32 %i.pf, ptr %i.ga, align 4, !tbaa !19
  store i32 %i.pc, ptr %i.fn, align 4, !tbaa !19
  store i32 %i.pb, ptr %i.fa, align 4, !tbaa !19
  %i.pg = add i32 %i.le, %i.kd                    ; 2 uses
  %i.ph = add i32 %i.kd, %i.jc                    ; 2 uses
  %i.pi = add i32 %i.pg, %i.ph                    ; 2 uses
  %i.pj = add i32 %i.pg, %i.le
  %i.pk = add i32 %i.pj, %i.pi
  %i.pl = add i32 %i.pk, %i.mc
  store i32 %i.pl, ptr %i.ia, align 4, !tbaa !19
  store i32 %i.pi, ptr %i.hn, align 4, !tbaa !19
  store i32 %i.ph, ptr %i.ha, align 4, !tbaa !19
  %i.pm = load i32, ptr %i.bk, align 4, !tbaa !19
  %i.pn = load i32, ptr %i.bn, align 4, !tbaa !19 ; 2 uses
  %i.po = load i32, ptr %i.bq, align 4, !tbaa !19 ; 2 uses
  %i.pp = load i32, ptr %i.bt, align 4, !tbaa !19
  %i.pq = add i32 %i.pp, %i.po
  %i.pr = add i32 %i.po, %i.pn                    ; 2 uses
  %i.ps = add i32 %i.pq, %i.pr
  %i.pt = add i32 %i.pn, %i.pm                    ; 2 uses
  %i.pu = add i32 %i.pr, %i.pt                    ; 2 uses
  %i.pv = add i32 %i.ps, %i.pu
  store i32 %i.pv, ptr %i.bt, align 4, !tbaa !19
  store i32 %i.pu, ptr %i.bq, align 4, !tbaa !19
  store i32 %i.pt, ptr %i.bn, align 4, !tbaa !19
  %i.pw = add i32 %i.lh, %i.kg                    ; 2 uses
  %i.px = add i32 %i.kg, %i.jf                    ; 2 uses
  %i.py = add i32 %i.pw, %i.px                    ; 2 uses
  %i.pz = add i32 %i.pw, %i.lh
  %i.qa = add i32 %i.pz, %i.py
  %i.qb = add i32 %i.qa, %i.mf
  store i32 %i.qb, ptr %i.ec, align 4, !tbaa !19
  store i32 %i.py, ptr %i.dp, align 4, !tbaa !19
  store i32 %i.px, ptr %i.dc, align 4, !tbaa !19
  %i.qc = add i32 %i.li, %i.kh                    ; 2 uses
  %i.qd = add i32 %i.kh, %i.jg                    ; 2 uses
  %i.qe = add i32 %i.qc, %i.qd                    ; 2 uses
  %i.qf = add i32 %i.qc, %i.li
  %i.qg = add i32 %i.qf, %i.qe
  %i.qh = add i32 %i.qg, %i.mg
  store i32 %i.qh, ptr %i.gc, align 4, !tbaa !19
  store i32 %i.qe, ptr %i.fp, align 4, !tbaa !19
  store i32 %i.qd, ptr %i.fc, align 4, !tbaa !19
  %i.qi = add i32 %i.ll, %i.kk                    ; 2 uses
  %i.qj = add i32 %i.kk, %i.jj                    ; 2 uses
  %i.qk = add i32 %i.qi, %i.qj                    ; 2 uses
  %i.ql = add i32 %i.qi, %i.ll
  %i.qm = add i32 %i.ql, %i.qk
  %i.qn = add i32 %i.qm, %i.mj
  store i32 %i.qn, ptr %i.ic, align 4, !tbaa !19
  store i32 %i.qk, ptr %i.hp, align 4, !tbaa !19
  store i32 %i.qj, ptr %i.hc, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @decode_ints_uint32(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull captures(none) initializes((0, 256)) %3) unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %2, 6
  %i.b = or disjoint i32 %i.a, 63
  %.not = icmp ugt i32 %i.b, %1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %2) ; 4 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !15, !alias.scope !39, !noalias !40 ; 3 uses
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !39, !noalias !40 ; 3 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !41, !alias.scope !39, !noalias !40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %3, i8 0, i64 256, i1 false), !tbaa !19, !alias.scope !40, !noalias !39
  %.not117.i = icmp eq i32 %1, 0
  br i1 %.not117.i, label %decode_few_ints_uint32.exit, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %bb.b
  %i.d = icmp samesign ult i32 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %decode_few_ints_uint32.exit

.lr.ph124.i:                                      ; preds = %.lr.ph116.i, %stream_read_bit.exit._crit_edge.i
  %.not.i = icmp ne i32 %.4.i, 0
  %i.e = add nsw i32 %i.g, -1
  %i.f = icmp samesign ugt i32 %i.g, %i.c
  %or.cond = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph, label %decode_few_ints_uint32.exit

.lr.ph:                                           ; preds = %.lr.ph124.i, %.lr.ph124.i.preheader
  %i.g = phi i32 [ %i.e, %.lr.ph124.i ], [ 31, %.lr.ph124.i.preheader ] ; 3 uses
  %.sroa.11.0118.i23 = phi i64 [ %.sroa.11.4.i, %.lr.ph124.i ], [ %.sroa.11.0.copyload.i, %.lr.ph124.i.preheader ] ; 3 uses
  %.sroa.19.0119.i22 = phi ptr [ %.sroa.19.4.i, %.lr.ph124.i ], [ %.sroa.19.0.copyload.i, %.lr.ph124.i.preheader ] ; 3 uses
  %.sroa.0.0120.i21 = phi i64 [ %.sroa.0.4.i, %.lr.ph124.i ], [ %.sroa.0.0.copyload.i, %.lr.ph124.i.preheader ] ; 4 uses
  %.050121.i20 = phi i32 [ %.4.i, %.lr.ph124.i ], [ %1, %.lr.ph124.i.preheader ] ; 2 uses
  %.045123.i19 = phi i32 [ %.146.lcssa.i, %.lr.ph124.i ], [ 0, %.lr.ph124.i.preheader ] ; 4 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %.045123.i19, i32 %.050121.i20) ; 2 uses
  %i.i = sub nuw i32 %.050121.i20, %i.h           ; 3 uses
  %i.j = zext i32 %i.h to i64                     ; 7 uses
  %i.k = icmp ult i64 %.sroa.0.0120.i21, %i.j
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.19.0119.i22, i64 8 ; 2 uses
  %i.m = load i64, ptr %.sroa.19.0119.i22, align 8, !tbaa !15, !noalias !42 ; 2 uses
  %i.n = shl i64 %i.m, %.sroa.0.0120.i21
  %i.o = add i64 %i.n, %.sroa.11.0118.i23         ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.0.0120.i21, 64    ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, %i.j
  br i1 %.not.i.i, label %stream_read_bits.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 %i.p, %i.j                   ; 2 uses
  %i.r = sub nsw i64 64, %i.q
  %i.s = lshr i64 %i.m, %i.r
  %i.t = add nsw i64 %i.j, -1
  %i.u = shl i64 2, %i.t
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %i.o, %i.v
  br label %stream_read_bits.exit.i

bb.e:                                             ; preds = %.lr.ph
  %i.x = sub nuw i64 %.sroa.0.0120.i21, %i.j
  %i.y = lshr i64 %.sroa.11.0118.i23, %i.j
  %notmask.i.i = shl nsw i64 -1, %i.j
  %i.z = xor i64 %notmask.i.i, -1
  %i.aa = and i64 %.sroa.11.0118.i23, %i.z
  br label %stream_read_bits.exit.i

stream_read_bits.exit.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.11.5.i = phi i64 [ %i.y, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.19.5.i = phi ptr [ %.sroa.19.0119.i22, %bb.e ], [ %i.l, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.0.5.i = phi i64 [ %i.x, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.ab = icmp ne i32 %i.i, 0
  %i.ac = icmp ult i32 %.045123.i19, 64
  %i.ad = and i1 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph98.i, label %stream_read_bit.exit._crit_edge.i

.lr.ph98.i:                                       ; preds = %stream_read_bits.exit.i, %stream_read_bit.exit62._crit_edge.i
  %.097.i = phi i64 [ %i.az, %stream_read_bit.exit62._crit_edge.i ], [ %.0.i.i, %stream_read_bits.exit.i ] ; 2 uses
  %.14696.i = phi i32 [ %i.ba, %stream_read_bit.exit62._crit_edge.i ], [ %.045123.i19, %stream_read_bits.exit.i ] ; 4 uses
  %.15195.i = phi i32 [ %.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.i, %stream_read_bits.exit.i ]
  %.sroa.0.194.i = phi i64 [ %.sroa.0.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.0.5.i, %stream_read_bits.exit.i ] ; 2 uses
  %.sroa.19.193.i = phi ptr [ %.sroa.19.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.19.5.i, %stream_read_bits.exit.i ] ; 3 uses
  %.sroa.11.192.i = phi i64 [ %.sroa.11.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.11.5.i, %stream_read_bits.exit.i ]
  %i.ae = add i32 %.15195.i, -1                   ; 4 uses
  %.not.i57.i = icmp eq i64 %.sroa.0.194.i, 0
  br i1 %.not.i57.i, label %bb.f, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph98.i
  %i.af = add i64 %.sroa.0.194.i, -1
  br label %stream_read_bit.exit.i

bb.f:                                             ; preds = %.lr.ph98.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.19.193.i, i64 8
  %.in.i.sroa.speculate.load..i = load i64, ptr %.sroa.19.193.i, align 8, !tbaa !15, !noalias !42
  br label %stream_read_bit.exit.i

stream_read_bit.exit.i:                           ; preds = %bb.f, %._crit_edge.i.i
  %.sroa.19.6.i = phi ptr [ %i.ag, %bb.f ], [ %.sroa.19.193.i, %._crit_edge.i.i ] ; 3 uses
  %.in.i.sroa.speculated.i = phi i64 [ %.in.i.sroa.speculate.load..i, %bb.f ], [ %.sroa.11.192.i, %._crit_edge.i.i ] ; 2 uses
  %i.ah = phi i64 [ 63, %bb.f ], [ %i.af, %._crit_edge.i.i ] ; 3 uses
  %i.ai = lshr i64 %.in.i.sroa.speculated.i, 1    ; 3 uses
  %i.aj = and i64 %.in.i.sroa.speculated.i, 1
  %.not54.i = icmp eq i64 %i.aj, 0
  br i1 %.not54.i, label %stream_read_bit.exit._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %stream_read_bit.exit.i
  %i.ak = icmp ne i32 %i.ae, 0
  %i.al = icmp ult i32 %.14696.i, 63
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i, label %stream_read_bit.exit62._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.282.i = phi i32 [ %i.at, %bb.h ], [ %.14696.i, %.preheader.i ] ; 3 uses
  %.25281.i = phi i32 [ %i.an, %bb.h ], [ %i.ae, %.preheader.i ]
  %.sroa.0.280.i = phi i64 [ %i.aq, %bb.h ], [ %i.ah, %.preheader.i ] ; 2 uses
  %.sroa.19.279.i = phi ptr [ %.sroa.19.7.i, %bb.h ], [ %.sroa.19.6.i, %.preheader.i ] ; 3 uses
  %.sroa.11.278.i = phi i64 [ %i.ar, %bb.h ], [ %i.ai, %.preheader.i ]
  %i.an = add i32 %.25281.i, -1                   ; 4 uses
  %.not.i58.i = icmp eq i64 %.sroa.0.280.i, 0
  br i1 %.not.i58.i, label %bb.g, label %._crit_edge.i59.i

._crit_edge.i59.i:                                ; preds = %.lr.ph.i
  %i.ao = add i64 %.sroa.0.280.i, -1
  br label %stream_read_bit.exit62.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.19.279.i, i64 8
  %.in.i61.sroa.speculate.load..i = load i64, ptr %.sroa.19.279.i, align 8, !tbaa !15, !noalias !42
  br label %stream_read_bit.exit62.i

stream_read_bit.exit62.i:                         ; preds = %bb.g, %._crit_edge.i59.i
  %.sroa.19.7.i = phi ptr [ %i.ap, %bb.g ], [ %.sroa.19.279.i, %._crit_edge.i59.i ] ; 3 uses
  %.in.i61.sroa.speculated.i = phi i64 [ %.in.i61.sroa.speculate.load..i, %bb.g ], [ %.sroa.11.278.i, %._crit_edge.i59.i ] ; 2 uses
  %i.aq = phi i64 [ 63, %bb.g ], [ %i.ao, %._crit_edge.i59.i ] ; 3 uses
  %i.ar = lshr i64 %.in.i61.sroa.speculated.i, 1  ; 3 uses
  %i.as = and i64 %.in.i61.sroa.speculated.i, 1
  %.not56.i = icmp eq i64 %i.as, 0
  br i1 %.not56.i, label %bb.h, label %stream_read_bit.exit62._crit_edge.i

bb.h:                                             ; preds = %stream_read_bit.exit62.i
  %i.at = add nuw nsw i32 %.282.i, 1              ; 2 uses
  %i.au = icmp ne i32 %i.an, 0
  %i.av = icmp ult i32 %.282.i, 62
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph.i, label %stream_read_bit.exit62._crit_edge.i

stream_read_bit.exit62._crit_edge.i:              ; preds = %bb.h, %stream_read_bit.exit62.i, %.preheader.i
  %.2.lcssa.i = phi i32 [ %.14696.i, %.preheader.i ], [ %i.at, %bb.h ], [ %.282.i, %stream_read_bit.exit62.i ] ; 3 uses
  %.sroa.11.3.i = phi i64 [ %i.ai, %.preheader.i ], [ %i.ar, %stream_read_bit.exit62.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.19.3.i = phi ptr [ %.sroa.19.6.i, %.preheader.i ], [ %.sroa.19.7.i, %stream_read_bit.exit62.i ], [ %.sroa.19.7.i, %bb.h ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %i.ah, %.preheader.i ], [ %i.aq, %stream_read_bit.exit62.i ], [ %i.aq, %bb.h ] ; 2 uses
  %.3.i = phi i32 [ %i.ae, %.preheader.i ], [ %i.an, %stream_read_bit.exit62.i ], [ %i.an, %bb.h ] ; 3 uses
  %i.ax = zext nneg i32 %.2.lcssa.i to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = add i64 %i.ay, %.097.i                  ; 2 uses
  %i.ba = add nuw i32 %.2.lcssa.i, 1              ; 2 uses
  %i.bb = icmp ne i32 %.3.i, 0
  %i.bc = icmp ult i32 %.2.lcssa.i, 63
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph98.i, label %stream_read_bit.exit._crit_edge.i

stream_read_bit.exit._crit_edge.i:                ; preds = %stream_read_bit.exit62._crit_edge.i, %stream_read_bit.exit.i, %stream_read_bits.exit.i
  %.146.lcssa.i = phi i32 [ %.045123.i19, %stream_read_bits.exit.i ], [ %i.ba, %stream_read_bit.exit62._crit_edge.i ], [ %.14696.i, %stream_read_bit.exit.i ]
  %.0.lcssa.i = phi i64 [ %.0.i.i, %stream_read_bits.exit.i ], [ %i.az, %stream_read_bit.exit62._crit_edge.i ], [ %.097.i, %stream_read_bit.exit.i ] ; 2 uses
  %.sroa.11.4.i = phi i64 [ %.sroa.11.5.i, %stream_read_bits.exit.i ], [ %.sroa.11.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.ai, %stream_read_bit.exit.i ] ; 2 uses
  %.sroa.19.4.i = phi ptr [ %.sroa.19.5.i, %stream_read_bits.exit.i ], [ %.sroa.19.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %.sroa.19.6.i, %stream_read_bit.exit.i ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.5.i, %stream_read_bits.exit.i ], [ %.sroa.0.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.ah, %stream_read_bit.exit.i ] ; 2 uses
  %.4.i = phi i32 [ %i.i, %stream_read_bits.exit.i ], [ %.3.i, %stream_read_bit.exit62._crit_edge.i ], [ %i.ae, %stream_read_bit.exit.i ] ; 3 uses
  %.not55112.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not55112.i, label %.lr.ph124.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %stream_read_bit.exit._crit_edge.i, %.lr.ph116.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph116.i ], [ 0, %stream_read_bit.exit._crit_edge.i ] ; 2 uses
  %.1114.i = phi i64 [ %i.bk, %.lr.ph116.i ], [ %.0.lcssa.i, %stream_read_bit.exit._crit_edge.i ] ; 2 uses
  %i.be = trunc i64 %.1114.i to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = shl nuw i32 %i.bf, %i.g
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19, !alias.scope !40, !noalias !39
  %i.bj = add i32 %i.bg, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !19, !alias.scope !40, !noalias !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bk = lshr i64 %.1114.i, 1                    ; 2 uses
  %.not55.i = icmp eq i64 %i.bk, 0
  br i1 %.not55.i, label %.lr.ph124.i, label %.lr.ph116.i

decode_few_ints_uint32.exit:                      ; preds = %.lr.ph124.i, %.lr.ph124.i.preheader, %bb.b
  %.sroa.11.0.lcssa.i = phi i64 [ %.sroa.11.0.copyload.i, %bb.b ], [ %.sroa.11.0.copyload.i, %.lr.ph124.i.preheader ], [ %.sroa.11.4.i, %.lr.ph124.i ]
  %.sroa.19.0.lcssa.i = phi ptr [ %.sroa.19.0.copyload.i, %bb.b ], [ %.sroa.19.0.copyload.i, %.lr.ph124.i.preheader ], [ %.sroa.19.4.i, %.lr.ph124.i ]
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i, %.lr.ph124.i.preheader ], [ %.sroa.0.4.i, %.lr.ph124.i ]
  %.050.lcssa.i = phi i32 [ 0, %bb.b ], [ %1, %.lr.ph124.i.preheader ], [ %.4.i, %.lr.ph124.i ]
  store i64 %.sroa.0.0.lcssa.i, ptr %0, align 8, !tbaa !15, !alias.scope !39, !noalias !40
  store i64 %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !39, !noalias !40
  store ptr %.sroa.19.0.lcssa.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !41, !alias.scope !39, !noalias !40
  %i.bl = sub i32 %1, %.050.lcssa.i
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %.sroa.0.0.copyload.i24 = load i64, ptr %0, align 8, !tbaa !15, !alias.scope !43, !noalias !44 ; 3 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !43, !noalias !44 ; 2 uses
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !41, !alias.scope !43, !noalias !44 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %3, i8 0, i64 256, i1 false), !tbaa !19, !alias.scope !44, !noalias !43
  %i.bm = icmp samesign ult i32 %i.c, 32
  br i1 %i.bm, label %.lr.ph106.i, label %decode_few_ints_prec_uint32.exit

.loopexit.i34:                                    ; preds = %.lr.ph101.i, %.critedge.i
  %i.bn = add nsw i32 %i.bp, -1
  %i.bo = icmp samesign ugt i32 %i.bp, %i.c
  br i1 %i.bo, label %.lr.ph106.i, label %decode_few_ints_prec_uint32.exit

.lr.ph106.i:                                      ; preds = %bb.i, %.loopexit.i34
  %i.bp = phi i32 [ %i.bn, %.loopexit.i34 ], [ 31, %bb.i ] ; 3 uses
  %.032105.i = phi i32 [ %.133.lcssa.i, %.loopexit.i34 ], [ 0, %bb.i ] ; 4 uses
  %.sroa.0.0104.i = phi i64 [ %.sroa.0.4.i31, %.loopexit.i34 ], [ %.sroa.0.0.copyload.i24, %bb.i ] ; 4 uses
  %.sroa.21.0103.i = phi ptr [ %.sroa.21.4.i, %.loopexit.i34 ], [ %.sroa.21.0.copyload.i, %bb.i ] ; 3 uses
  %.sroa.13.0102.i = phi i64 [ %.sroa.13.4.i, %.loopexit.i34 ], [ %.sroa.13.0.copyload.i, %bb.i ] ; 3 uses
  %i.bq = zext i32 %.032105.i to i64              ; 7 uses
  %i.br = icmp ult i64 %.sroa.0.0104.i, %i.bq
  br i1 %i.br, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph106.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.21.0103.i, i64 8 ; 2 uses
  %i.bt = load i64, ptr %.sroa.21.0103.i, align 8, !tbaa !15, !noalias !45 ; 2 uses
  %i.bu = shl i64 %i.bt, %.sroa.0.0104.i
  %i.bv = add i64 %i.bu, %.sroa.13.0102.i         ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.0.0104.i, 64     ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.bw, %i.bq
  br i1 %.not.i.i43, label %stream_read_bits.exit.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = sub nsw i64 %i.bw, %i.bq                ; 2 uses
  %i.by = sub nsw i64 64, %i.bx
  %i.bz = lshr i64 %i.bt, %i.by
  %i.ca = add nsw i64 %i.bq, -1
  %i.cb = shl i64 2, %i.ca
  %i.cc = add i64 %i.cb, -1
  %i.cd = and i64 %i.bv, %i.cc
  br label %stream_read_bits.exit.i27

bb.l:                                             ; preds = %.lr.ph106.i
  %i.ce = sub nuw i64 %.sroa.0.0104.i, %i.bq
  %i.cf = lshr i64 %.sroa.13.0102.i, %i.bq
  %notmask.i.i26 = shl nsw i64 -1, %i.bq
  %i.cg = xor i64 %notmask.i.i26, -1
  %i.ch = and i64 %.sroa.13.0102.i, %i.cg
  br label %stream_read_bits.exit.i27

stream_read_bits.exit.i27:                        ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.13.5.i = phi i64 [ %i.cf, %bb.l ], [ %i.bz, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sroa.21.5.i = phi ptr [ %.sroa.21.0103.i, %bb.l ], [ %i.bs, %bb.k ], [ %i.bs, %bb.j ] ; 2 uses
  %.sroa.0.5.i28 = phi i64 [ %i.ce, %bb.l ], [ %i.bx, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0.i.i29 = phi i64 [ %i.ch, %bb.l ], [ %i.cd, %bb.k ], [ %i.bv, %bb.j ] ; 2 uses
  %i.ci = icmp ult i32 %.032105.i, 64
  br i1 %i.ci, label %.lr.ph87.i, label %.critedge.i

.lr.ph87.i:                                       ; preds = %stream_read_bits.exit.i27, %.critedge2.i
  %.086.i = phi i64 [ %i.cy, %.critedge2.i ], [ %.0.i.i29, %stream_read_bits.exit.i27 ] ; 4 uses
  %.13385.i = phi i32 [ %i.cz, %.critedge2.i ], [ %.032105.i, %stream_read_bits.exit.i27 ] ; 3 uses
  %.sroa.0.184.i = phi i64 [ %i.cr, %.critedge2.i ], [ %.sroa.0.5.i28, %stream_read_bits.exit.i27 ] ; 2 uses
  %.sroa.21.183.i = phi ptr [ %.sroa.21.7.i, %.critedge2.i ], [ %.sroa.21.5.i, %stream_read_bits.exit.i27 ] ; 3 uses
  %.sroa.13.182.i = phi i64 [ %i.cs, %.critedge2.i ], [ %.sroa.13.5.i, %stream_read_bits.exit.i27 ]
  %.not.i40.i = icmp eq i64 %.sroa.0.184.i, 0
  br i1 %.not.i40.i, label %bb.m, label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.lr.ph87.i
  %i.cj = add i64 %.sroa.0.184.i, -1
  br label %stream_read_bit.exit.i36

bb.m:                                             ; preds = %.lr.ph87.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.21.183.i, i64 8
  %.in.i.sroa.speculate.load..i42 = load i64, ptr %.sroa.21.183.i, align 8, !tbaa !15, !noalias !45
  br label %stream_read_bit.exit.i36

stream_read_bit.exit.i36:                         ; preds = %bb.m, %._crit_edge.i.i35
  %.sroa.21.6.i = phi ptr [ %i.ck, %bb.m ], [ %.sroa.21.183.i, %._crit_edge.i.i35 ] ; 3 uses
  %.in.i.sroa.speculated.i37 = phi i64 [ %.in.i.sroa.speculate.load..i42, %bb.m ], [ %.sroa.13.182.i, %._crit_edge.i.i35 ] ; 2 uses
  %i.cl = phi i64 [ 63, %bb.m ], [ %i.cj, %._crit_edge.i.i35 ] ; 3 uses
  %i.cm = lshr i64 %.in.i.sroa.speculated.i37, 1  ; 3 uses
  %i.cn = and i64 %.in.i.sroa.speculated.i37, 1
  %.not.i38 = icmp eq i64 %i.cn, 0
  br i1 %.not.i38, label %.critedge.i, label %.preheader.i39

.preheader.i39:                                   ; preds = %stream_read_bit.exit.i36
  %.not110.i = icmp eq i32 %.13385.i, 63
  br i1 %.not110.i, label %.critedge2.thread.i, label %.lr.ph.i40

.critedge2.thread.i:                              ; preds = %.preheader.i39
  %i.co = xor i64 %.086.i, -9223372036854775808
  br label %.critedge.i

.lr.ph.i40:                                       ; preds = %.preheader.i39, %bb.o
  %.274.i = phi i32 [ %i.cu, %bb.o ], [ %.13385.i, %.preheader.i39 ] ; 5 uses
  %.sroa.0.273.i = phi i64 [ %i.cr, %bb.o ], [ %i.cl, %.preheader.i39 ] ; 2 uses
  %.sroa.21.272.i = phi ptr [ %.sroa.21.7.i, %bb.o ], [ %.sroa.21.6.i, %.preheader.i39 ] ; 3 uses
  %.sroa.13.271.i = phi i64 [ %i.cs, %bb.o ], [ %i.cm, %.preheader.i39 ]
  %.not.i41.i = icmp eq i64 %.sroa.0.273.i, 0
  br i1 %.not.i41.i, label %bb.n, label %._crit_edge.i42.i

._crit_edge.i42.i:                                ; preds = %.lr.ph.i40
  %i.cp = add i64 %.sroa.0.273.i, -1
  br label %stream_read_bit.exit45.i

bb.n:                                             ; preds = %.lr.ph.i40
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.21.272.i, i64 8
  %.in.i44.sroa.speculate.load..i = load i64, ptr %.sroa.21.272.i, align 8, !tbaa !15, !noalias !45
  br label %stream_read_bit.exit45.i

stream_read_bit.exit45.i:                         ; preds = %bb.n, %._crit_edge.i42.i
  %.sroa.21.7.i = phi ptr [ %i.cq, %bb.n ], [ %.sroa.21.272.i, %._crit_edge.i42.i ] ; 4 uses
  %.in.i44.sroa.speculated.i = phi i64 [ %.in.i44.sroa.speculate.load..i, %bb.n ], [ %.sroa.13.271.i, %._crit_edge.i42.i ] ; 2 uses
  %i.cr = phi i64 [ 63, %bb.n ], [ %i.cp, %._crit_edge.i42.i ] ; 4 uses
  %i.cs = lshr i64 %.in.i44.sroa.speculated.i, 1  ; 4 uses
  %i.ct = and i64 %.in.i44.sroa.speculated.i, 1
  %.not39.i = icmp eq i64 %i.ct, 0
  br i1 %.not39.i, label %bb.o, label %.critedge2.i

bb.o:                                             ; preds = %stream_read_bit.exit45.i
  %i.cu = add nuw nsw i32 %.274.i, 1
  %exitcond.not.i = icmp eq i32 %.274.i, 62
  br i1 %exitcond.not.i, label %.critedge2.i.thread, label %.lr.ph.i40

.critedge2.i.thread:                              ; preds = %bb.o
  %i.cv = xor i64 %.086.i, -9223372036854775808
  br label %.critedge.i

.critedge2.i:                                     ; preds = %stream_read_bit.exit45.i
  %i.cw = zext nneg i32 %.274.i to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = add i64 %i.cx, %.086.i                  ; 2 uses
  %i.cz = add nuw i32 %.274.i, 1                  ; 2 uses
  %i.da = icmp ult i32 %.274.i, 63
  br i1 %i.da, label %.lr.ph87.i, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge2.i, %stream_read_bit.exit.i36, %.critedge2.i.thread, %.critedge2.thread.i, %stream_read_bits.exit.i27
  %.133.lcssa.i = phi i32 [ %.032105.i, %stream_read_bits.exit.i27 ], [ 64, %.critedge2.thread.i ], [ 64, %.critedge2.i.thread ], [ %.13385.i, %stream_read_bit.exit.i36 ], [ %i.cz, %.critedge2.i ]
  %.0.lcssa.i30 = phi i64 [ %.0.i.i29, %stream_read_bits.exit.i27 ], [ %i.co, %.critedge2.thread.i ], [ %i.cv, %.critedge2.i.thread ], [ %.086.i, %stream_read_bit.exit.i36 ], [ %i.cy, %.critedge2.i ] ; 2 uses
  %.sroa.13.4.i = phi i64 [ %.sroa.13.5.i, %stream_read_bits.exit.i27 ], [ %i.cm, %.critedge2.thread.i ], [ %i.cs, %.critedge2.i.thread ], [ %i.cm, %stream_read_bit.exit.i36 ], [ %i.cs, %.critedge2.i ] ; 2 uses
  %.sroa.21.4.i = phi ptr [ %.sroa.21.5.i, %stream_read_bits.exit.i27 ], [ %.sroa.21.6.i, %.critedge2.thread.i ], [ %.sroa.21.7.i, %.critedge2.i.thread ], [ %.sroa.21.6.i, %stream_read_bit.exit.i36 ], [ %.sroa.21.7.i, %.critedge2.i ] ; 2 uses
  %.sroa.0.4.i31 = phi i64 [ %.sroa.0.5.i28, %stream_read_bits.exit.i27 ], [ %i.cl, %.critedge2.thread.i ], [ %i.cr, %.critedge2.i.thread ], [ %i.cl, %stream_read_bit.exit.i36 ], [ %i.cr, %.critedge2.i ] ; 2 uses
  %.not3898.i = icmp eq i64 %.0.lcssa.i30, 0
  br i1 %.not3898.i, label %.loopexit.i34, label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %.critedge.i, %.lr.ph101.i
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph101.i ], [ 0, %.critedge.i ] ; 2 uses
  %.1100.i = phi i64 [ %i.dh, %.lr.ph101.i ], [ %.0.lcssa.i30, %.critedge.i ] ; 2 uses
  %i.db = trunc i64 %.1100.i to i32
  %i.dc = and i32 %i.db, 1
  %i.dd = shl nuw i32 %i.dc, %i.bp
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i32 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19, !alias.scope !44, !noalias !43
  %i.dg = add i32 %i.dd, %i.df
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !19, !alias.scope !44, !noalias !43
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %i.dh = lshr i64 %.1100.i, 1                    ; 2 uses
  %.not38.i = icmp eq i64 %i.dh, 0
  br i1 %.not38.i, label %.loopexit.i34, label %.lr.ph101.i

decode_few_ints_prec_uint32.exit:                 ; preds = %.loopexit.i34, %bb.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.i ], [ %.sroa.13.4.i, %.loopexit.i34 ]
  %.sroa.21.0.lcssa.i = phi ptr [ %.sroa.21.0.copyload.i, %bb.i ], [ %.sroa.21.4.i, %.loopexit.i34 ] ; 2 uses
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.0.copyload.i24, %bb.i ], [ %.sroa.0.4.i31, %.loopexit.i34 ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  store i64 %.sroa.0.0.lcssa.i25, ptr %0, align 8, !tbaa !15, !alias.scope !43, !noalias !44
  store i64 %.sroa.13.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !15, !alias.scope !43, !noalias !44
  store ptr %.sroa.21.0.lcssa.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !tbaa !41, !alias.scope !43, !noalias !44
  %i.dj = ptrtoint ptr %.sroa.21.0.lcssa.i to i64
  %reass.add = sub i64 %i.dj, %i.di
  %reass.mul = shl i64 %reass.add, 3
  %.neg.i = sub i64 %.sroa.0.0.copyload.i24, %.sroa.0.0.lcssa.i25
  %i.dk = add i64 %.neg.i, %reass.mul
  %i.dl = trunc i64 %i.dk to i32
  br label %bb.p

bb.p:                                             ; preds = %decode_few_ints_prec_uint32.exit, %decode_few_ints_uint32.exit
  %.0 = phi i32 [ %i.bl, %decode_few_ints_uint32.exit ], [ %i.dl, %decode_few_ints_prec_uint32.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_decode_block_strided_float_3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x float], align 256           ; 67 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
end_hunk_0
