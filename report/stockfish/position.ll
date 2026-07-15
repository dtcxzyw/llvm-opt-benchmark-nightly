inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE:bb.a
  %i.ez = or disjoint i8 %i.ey, %.pre-phi66
  %i.fa = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %.pre-phi
  %i.fb = zext nneg i8 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11
  %i.fe = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.ec
  %i.ff = zext nneg i8 %i.ex to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 16, !tbaa !11
  %i.fi = or i64 %i.fh, %i.fd
  %i.fj = shl nuw i64 1, %i.ec
  %i.fk = shl nuw i64 1, %.pre-phi
  %i.fl = or i64 %i.fj, %i.fk
  %i.fm = xor i64 %i.fl, -1
  %i.fn = and i64 %i.fi, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.et
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.loopexit
  %i.fp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !120
  %i.fw = and i32 %i.fv, 5
  %.not.i37 = icmp eq i32 %i.fw, 0
  br i1 %.not.i37, label %bb.i, label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.q, %.critedge
  %i.fx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #26 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !30
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !120
  %i.ge = and i32 %i.gd, 5
  %.not.i39 = icmp eq i32 %i.ge, 0
  %i.gf = load i8, ptr %i.a, align 1
  %i.gg = add i8 %i.gf, -97
  %i.gh = icmp ult i8 %i.gg, 8
  %or.cond10 = select i1 %.not.i39, i1 %i.gh, i1 false
  br i1 %or.cond10, label %bb.r, label %.critedge35

bb.r:                                             ; preds = %.critedge2
  %i.gi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #26 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr i8, ptr %i.gj, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !120
  %i.gp = and i32 %i.go, 5
  %.not.i40 = icmp eq i32 %i.gp, 0
  br i1 %.not.i40, label %bb.s, label %.critedge35

bb.s:                                             ; preds = %bb.r
  %i.gq = load i8, ptr %i.b, align 1, !tbaa !29   ; 2 uses
  %i.gr = zext i8 %i.gq to i32
  %i.gs = load i8, ptr %i.cm, align 4, !tbaa !98  ; 4 uses
  %i.gt = icmp eq i8 %i.gs, 0                     ; 2 uses
  %i.gu = select i1 %i.gt, i32 54, i32 51
  %i.gv = icmp eq i32 %i.gu, %i.gr
  br i1 %i.gv, label %bb.t, label %.critedge35

bb.t:                                             ; preds = %bb.s
  %i.gw = load i8, ptr %i.a, align 1, !tbaa !29
  %i.gx = shl i8 %i.gq, 3
  %i.gy = add i8 %i.gx, 23
  %i.gz = add i8 %i.gy, %i.gw                     ; 4 uses
  %i.ha = load ptr, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 60
  store i8 %i.gz, ptr %i.hb, align 4, !tbaa !101
  %i.hc = xor i8 %i.gs, 1
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %i.he = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.hd
  %i.hf = zext i8 %i.gz to i64                    ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.hj = zext i8 %i.gs to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !11
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !11 ; 2 uses
  %i.hp = and i64 %i.hl, %i.hh
  %i.hq = and i64 %i.hp, %i.ho
  %.not27 = icmp eq i64 %i.hq, 0
  br i1 %.not27, label %.critedge35, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hd
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11
  %i.ht = icmp eq i8 %i.gs, 1
  %i.hu = select i1 %i.ht, i8 8, i8 -8
  %i.hv = add i8 %i.gz, %i.hu
  %i.hw = zext nneg i8 %i.hv to i64
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = and i64 %i.hx, %i.hs
  %i.hz = and i64 %i.hy, %i.ho
  %.not28 = icmp eq i64 %i.hz, 0
  br i1 %.not28, label %.critedge35, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ia = load i64, ptr %i.hm, align 8, !tbaa !11
  %i.ib = select i1 %i.gt, i8 8, i8 -8
  %i.ic = add i8 %i.gz, %i.ib
  %i.id = shl nuw i64 1, %i.hf
  %i.ie = zext nneg i8 %i.ic to i64
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = or i64 %i.if, %i.id
  %i.ih = and i64 %i.ia, %i.ig
  %.not29 = icmp eq i64 %i.ih, 0
  br i1 %.not29, label %bb.w, label %.critedge35

.critedge35:                                      ; preds = %.critedge2, %bb.s, %bb.r, %bb.u, %bb.t, %bb.v
  %i.ii = load ptr, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 60
  store i8 64, ptr %i.ij, align 4, !tbaa !101
  br label %bb.w

bb.w:                                             ; preds = %.critedge35, %bb.v
  %i.ik = phi ptr [ %i.ii, %.critedge35 ], [ %i.ha, %bb.v ]
  %i.il = zext i1 %2 to i8
  %i.im = load ptr, ptr %4, align 8, !tbaa !30
  %i.in = getelementptr i8, ptr %i.im, i64 -24
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = getelementptr inbounds i8, ptr %4, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !47
  %i.is = or i32 %i.ir, 4096
  store i32 %i.is, ptr %i.iq, align 8, !tbaa !48
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 52
  %i.iu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.it) #26
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.iw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull align 4 dereferenceable(4) %i.iv) #26 ; 0 uses
  %i.ix = load i32, ptr %i.iv, align 8, !tbaa !108
  %i.iy = shl i32 %i.ix, 1
  %i.iz = add i32 %i.iy, -2
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.iz, i32 0)
  %i.ja = load i8, ptr %i.cm, align 4, !tbaa !98
  %i.jb = icmp eq i8 %i.ja, 1
  %i.jc = zext i1 %i.jb to i32
  %i.jd = or disjoint i32 %.sroa.speculated, %i.jc
  store i32 %i.jd, ptr %i.iv, align 8, !tbaa !108
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 621
  store i8 %i.il, ptr %i.je, align 1, !tbaa !87
  call void @_ZNK9Stockfish8Position9set_stateEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
  %i.jf = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.jf, ptr %4, align 8, !tbaa !30
  %i.jg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.jh = getelementptr i8, ptr %i.jf, i64 -24
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds i8, ptr %4, i64 %i.ji
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !30
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !42 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !29
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #31
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jq) #26
  store ptr %i.i, ptr %4, align 8, !tbaa !30
  %i.jr = load i64, ptr %i.k, align 8
  %i.js = getelementptr inbounds i8, ptr %4, i64 %i.jr
  store ptr %i.j, ptr %i.js, align 8, !tbaa !30
  store i64 0, ptr %i.n, align 8, !tbaa !118
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %0
}

declare noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9Stockfish8Position4initEv() local_unnamed_addr #6 align 2 {
bb.a:
  br label %bb.b

.preheader131:                                    ; preds = %bb.b, %.preheader131
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.7, %.preheader131 ], [ 0, %bb.b ] ; 9 uses
  %.sroa.060.172.1 = phi i64 [ %i.bp, %.preheader131 ], [ 6220767562156456789, %bb.b ] ; 2 uses
  %i.a = lshr i64 %.sroa.060.172.1, 12
  %i.b = xor i64 %i.a, %.sroa.060.172.1           ; 2 uses
  %i.c = shl i64 %i.b, 25
  %i.d = xor i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d                       ; 3 uses
  %i.g = mul i64 %i.f, 2685821657736338717
  %i.h = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  store i64 %i.g, ptr %i.h, align 16, !tbaa !11
  %i.i = lshr i64 %i.f, 12
  %i.j = xor i64 %i.i, %i.f                       ; 2 uses
  %i.k = shl i64 %i.j, 25
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = mul i64 %i.n, 2685821657736338717
  %i.p = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.o, ptr %i.q, align 8, !tbaa !11
  %i.r = lshr i64 %i.n, 12
  %i.s = xor i64 %i.r, %i.n                       ; 2 uses
  %i.t = shl i64 %i.s, 25
  %i.u = xor i64 %i.t, %i.s                       ; 2 uses
  %i.v = lshr i64 %i.u, 27
  %i.w = xor i64 %i.v, %i.u                       ; 3 uses
  %i.x = mul i64 %i.w, 2685821657736338717
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.x, ptr %i.z, align 16, !tbaa !11
  %i.aa = lshr i64 %i.w, 12
  %i.ab = xor i64 %i.aa, %i.w                     ; 2 uses
  %i.ac = shl i64 %i.ab, 25
  %i.ad = xor i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 27
  %i.af = xor i64 %i.ae, %i.ad                    ; 3 uses
  %i.ag = mul i64 %i.af, 2685821657736338717
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !11
  %i.aj = lshr i64 %i.af, 12
  %i.ak = xor i64 %i.aj, %i.af                    ; 2 uses
  %i.al = shl i64 %i.ak, 25
  %i.am = xor i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 27
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  %i.ap = mul i64 %i.ao, 2685821657736338717
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.ap, ptr %i.ar, align 16, !tbaa !11
  %i.as = lshr i64 %i.ao, 12
  %i.at = xor i64 %i.as, %i.ao                    ; 2 uses
  %i.au = shl i64 %i.at, 25
  %i.av = xor i64 %i.au, %i.at                    ; 2 uses
  %i.aw = lshr i64 %i.av, 27
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = mul i64 %i.ax, 2685821657736338717
  %i.az = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !11
  %i.bb = lshr i64 %i.ax, 12
  %i.bc = xor i64 %i.bb, %i.ax                    ; 2 uses
  %i.bd = shl i64 %i.bc, 25
  %i.be = xor i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = lshr i64 %i.be, 27
  %i.bg = xor i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = mul i64 %i.bg, 2685821657736338717
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i64 %i.bh, ptr %i.bj, align 16, !tbaa !11
  %i.bk = lshr i64 %i.bg, 12
  %i.bl = xor i64 %i.bk, %i.bg                    ; 2 uses
  %i.bm = shl i64 %i.bl, 25
  %i.bn = xor i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 27
  %i.bp = xor i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = mul i64 %i.bp, 2685821657736338717
  %i.br = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1024), i64 %indvars.iv.1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !11
  %indvars.iv.next.1.7 = add nuw nsw i64 %indvars.iv.1, 8 ; 2 uses
  %exitcond.1.not.7 = icmp eq i64 %indvars.iv.next.1.7, 64
  br i1 %exitcond.1.not.7, label %.preheader130, label %.preheader131, !llvm.loop !125

.preheader130:                                    ; preds = %.preheader131, %.preheader130
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.7, %.preheader130 ], [ 0, %.preheader131 ] ; 9 uses
  %.sroa.060.172.2 = phi i64 [ %i.ei, %.preheader130 ], [ %i.bp, %.preheader131 ] ; 2 uses
  %i.bt = lshr i64 %.sroa.060.172.2, 12
  %i.bu = xor i64 %i.bt, %.sroa.060.172.2         ; 2 uses
  %i.bv = shl i64 %i.bu, 25
  %i.bw = xor i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 27
  %i.by = xor i64 %i.bx, %i.bw                    ; 3 uses
  %i.bz = mul i64 %i.by, 2685821657736338717
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  store i64 %i.bz, ptr %i.ca, align 16, !tbaa !11
  %i.cb = lshr i64 %i.by, 12
  %i.cc = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.cd = shl i64 %i.cc, 25
  %i.ce = xor i64 %i.cd, %i.cc                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 27
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = mul i64 %i.cg, 2685821657736338717
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !11
  %i.ck = lshr i64 %i.cg, 12
  %i.cl = xor i64 %i.ck, %i.cg                    ; 2 uses
  %i.cm = shl i64 %i.cl, 25
  %i.cn = xor i64 %i.cm, %i.cl                    ; 2 uses
  %i.co = lshr i64 %i.cn, 27
  %i.cp = xor i64 %i.co, %i.cn                    ; 3 uses
  %i.cq = mul i64 %i.cp, 2685821657736338717
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %i.cq, ptr %i.cs, align 16, !tbaa !11
  %i.ct = lshr i64 %i.cp, 12
  %i.cu = xor i64 %i.ct, %i.cp                    ; 2 uses
  %i.cv = shl i64 %i.cu, 25
  %i.cw = xor i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 27
  %i.cy = xor i64 %i.cx, %i.cw                    ; 3 uses
  %i.cz = mul i64 %i.cy, 2685821657736338717
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !11
  %i.dc = lshr i64 %i.cy, 12
  %i.dd = xor i64 %i.dc, %i.cy                    ; 2 uses
  %i.de = shl i64 %i.dd, 25
  %i.df = xor i64 %i.de, %i.dd                    ; 2 uses
  %i.dg = lshr i64 %i.df, 27
  %i.dh = xor i64 %i.dg, %i.df                    ; 3 uses
  %i.di = mul i64 %i.dh, 2685821657736338717
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %i.di, ptr %i.dk, align 16, !tbaa !11
  %i.dl = lshr i64 %i.dh, 12
  %i.dm = xor i64 %i.dl, %i.dh                    ; 2 uses
  %i.dn = shl i64 %i.dm, 25
  %i.do = xor i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = lshr i64 %i.do, 27
  %i.dq = xor i64 %i.dp, %i.do                    ; 3 uses
  %i.dr = mul i64 %i.dq, 2685821657736338717
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i64 %i.dr, ptr %i.dt, align 8, !tbaa !11
  %i.du = lshr i64 %i.dq, 12
  %i.dv = xor i64 %i.du, %i.dq                    ; 2 uses
  %i.dw = shl i64 %i.dv, 25
  %i.dx = xor i64 %i.dw, %i.dv                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 27
  %i.dz = xor i64 %i.dy, %i.dx                    ; 3 uses
  %i.ea = mul i64 %i.dz, 2685821657736338717
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store i64 %i.ea, ptr %i.ec, align 16, !tbaa !11
  %i.ed = lshr i64 %i.dz, 12
  %i.ee = xor i64 %i.ed, %i.dz                    ; 2 uses
  %i.ef = shl i64 %i.ee, 25
  %i.eg = xor i64 %i.ef, %i.ee                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 27
  %i.ei = xor i64 %i.eh, %i.eg                    ; 3 uses
  %i.ej = mul i64 %i.ei, 2685821657736338717
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 1536), i64 %indvars.iv.2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  store i64 %i.ej, ptr %i.el, align 8, !tbaa !11
  %indvars.iv.next.2.7 = add nuw nsw i64 %indvars.iv.2, 8 ; 2 uses
  %exitcond.2.not.7 = icmp eq i64 %indvars.iv.next.2.7, 64
  br i1 %exitcond.2.not.7, label %.preheader129, label %.preheader130, !llvm.loop !125

.preheader129:                                    ; preds = %.preheader130, %.preheader129
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.7, %.preheader129 ], [ 0, %.preheader130 ] ; 9 uses
  %.sroa.060.172.3 = phi i64 [ %i.hb, %.preheader129 ], [ %i.ei, %.preheader130 ] ; 2 uses
  %i.em = lshr i64 %.sroa.060.172.3, 12
  %i.en = xor i64 %i.em, %.sroa.060.172.3         ; 2 uses
  %i.eo = shl i64 %i.en, 25
  %i.ep = xor i64 %i.eo, %i.en                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 27
  %i.er = xor i64 %i.eq, %i.ep                    ; 3 uses
  %i.es = mul i64 %i.er, 2685821657736338717
  %i.et = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 2048), i64 %indvars.iv.3
  store i64 %i.es, ptr %i.et, align 16, !tbaa !11
  %i.eu = lshr i64 %i.er, 12
  %i.ev = xor i64 %i.eu, %i.er                    ; 2 uses
  %i.ew = shl i64 %i.ev, 25
  %i.ex = xor i64 %i.ew, %i.ev                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 27
  %i.ez = xor i64 %i.ey, %i.ex                    ; 3 uses
  %i.fa = mul i64 %i.ez, 2685821657736338717
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 2048), i64 %indvars.iv.3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %i.fa, ptr %i.fc, align 8, !tbaa !11
  %i.fd = lshr i64 %i.ez, 12
  %i.fe = xor i64 %i.fd, %i.ez                    ; 2 uses
  %i.ff = shl i64 %i.fe, 25
  %i.fg = xor i64 %i.ff, %i.fe                    ; 2 uses
  %i.fh = lshr i64 %i.fg, 27
  %i.fi = xor i64 %i.fh, %i.fg                    ; 3 uses
  %i.fj = mul i64 %i.fi, 2685821657736338717
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 2048), i64 %indvars.iv.3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
end_hunk_0
begin_hunk_1_@_ZN9Stockfish8Position4initEv:bb.a
  %i.aft = xor i64 %i.afs, %i.afr                 ; 2 uses
  %i.afu = shl i64 %i.aft, 25
  %i.afv = xor i64 %i.afu, %i.aft                 ; 2 uses
  %i.afw = lshr i64 %i.afv, 27
  %i.afx = xor i64 %i.afw, %i.afv                 ; 3 uses
  %i.afy = lshr i64 %i.afx, 12
  %i.afz = xor i64 %i.afy, %i.afx                 ; 2 uses
  %i.aga = shl i64 %i.afz, 25
  %i.agb = xor i64 %i.aga, %i.afz                 ; 2 uses
  %i.agc = lshr i64 %i.agb, 27
  %i.agd = xor i64 %i.agc, %i.agb                 ; 3 uses
  %i.age = lshr i64 %i.agd, 12
  %i.agf = xor i64 %i.age, %i.agd                 ; 2 uses
  %i.agg = shl i64 %i.agf, 25
  %i.agh = xor i64 %i.agg, %i.agf                 ; 2 uses
  %i.agi = lshr i64 %i.agh, 27
  %i.agj = xor i64 %i.agi, %i.agh                 ; 3 uses
  %i.agk = lshr i64 %i.agj, 12
  %i.agl = xor i64 %i.agk, %i.agj                 ; 2 uses
  %i.agm = shl i64 %i.agl, 25
  %i.agn = xor i64 %i.agm, %i.agl                 ; 2 uses
  %i.ago = lshr i64 %i.agn, 27
  %i.agp = xor i64 %i.ago, %i.agn                 ; 3 uses
  %i.agq = lshr i64 %i.agp, 12
  %i.agr = xor i64 %i.agq, %i.agp                 ; 2 uses
  %i.ags = shl i64 %i.agr, 25
  %i.agt = xor i64 %i.ags, %i.agr                 ; 2 uses
  %i.agu = lshr i64 %i.agt, 27
  %i.agv = xor i64 %i.agu, %i.agt                 ; 3 uses
  %i.agw = lshr i64 %i.agv, 12
  %i.agx = xor i64 %i.agw, %i.agv                 ; 2 uses
  %i.agy = shl i64 %i.agx, 25
  %i.agz = xor i64 %i.agy, %i.agx                 ; 2 uses
  %i.aha = lshr i64 %i.agz, 27
  %i.ahb = xor i64 %i.aha, %i.agz                 ; 3 uses
  %i.ahc = insertelement <8 x i64> poison, i64 %i.afl, i64 0
  %i.ahd = insertelement <8 x i64> %i.ahc, i64 %i.afr, i64 1
  %i.ahe = insertelement <8 x i64> %i.ahd, i64 %i.afx, i64 2
  %i.ahf = insertelement <8 x i64> %i.ahe, i64 %i.agd, i64 3
  %i.ahg = insertelement <8 x i64> %i.ahf, i64 %i.agj, i64 4
  %i.ahh = insertelement <8 x i64> %i.ahg, i64 %i.agp, i64 5
  %i.ahi = insertelement <8 x i64> %i.ahh, i64 %i.agv, i64 6
  %i.ahj = insertelement <8 x i64> %i.ahi, i64 %i.ahb, i64 7
  %i.ahk = mul <8 x i64> %i.ahj, splat (i64 2685821657736338717)
  store <8 x i64> %i.ahk, ptr @_ZN9Stockfish7Zobrist8castlingE, align 64, !tbaa !11
  %i.ahl = lshr i64 %i.ahb, 12
  %i.ahm = xor i64 %i.ahl, %i.ahb                 ; 2 uses
  %i.ahn = shl i64 %i.ahm, 25
  %i.aho = xor i64 %i.ahn, %i.ahm                 ; 2 uses
  %i.ahp = lshr i64 %i.aho, 27
  %i.ahq = xor i64 %i.ahp, %i.aho                 ; 3 uses
  %i.ahr = lshr i64 %i.ahq, 12
  %i.ahs = xor i64 %i.ahr, %i.ahq                 ; 2 uses
  %i.aht = shl i64 %i.ahs, 25
  %i.ahu = xor i64 %i.aht, %i.ahs                 ; 2 uses
  %i.ahv = lshr i64 %i.ahu, 27
  %i.ahw = xor i64 %i.ahv, %i.ahu                 ; 3 uses
  %i.ahx = lshr i64 %i.ahw, 12
  %i.ahy = xor i64 %i.ahx, %i.ahw                 ; 2 uses
  %i.ahz = shl i64 %i.ahy, 25
  %i.aia = xor i64 %i.ahz, %i.ahy                 ; 2 uses
  %i.aib = lshr i64 %i.aia, 27
  %i.aic = xor i64 %i.aib, %i.aia                 ; 3 uses
  %i.aid = lshr i64 %i.aic, 12
  %i.aie = xor i64 %i.aid, %i.aic                 ; 2 uses
  %i.aif = shl i64 %i.aie, 25
  %i.aig = xor i64 %i.aif, %i.aie                 ; 2 uses
  %i.aih = lshr i64 %i.aig, 27
  %i.aii = xor i64 %i.aih, %i.aig                 ; 3 uses
  %i.aij = lshr i64 %i.aii, 12
  %i.aik = xor i64 %i.aij, %i.aii                 ; 2 uses
  %i.ail = shl i64 %i.aik, 25
  %i.aim = xor i64 %i.ail, %i.aik                 ; 2 uses
  %i.ain = lshr i64 %i.aim, 27
  %i.aio = xor i64 %i.ain, %i.aim                 ; 3 uses
  %i.aip = lshr i64 %i.aio, 12
  %i.aiq = xor i64 %i.aip, %i.aio                 ; 2 uses
  %i.air = shl i64 %i.aiq, 25
  %i.ais = xor i64 %i.air, %i.aiq                 ; 2 uses
  %i.ait = lshr i64 %i.ais, 27
  %i.aiu = xor i64 %i.ait, %i.ais                 ; 3 uses
  %i.aiv = lshr i64 %i.aiu, 12
  %i.aiw = xor i64 %i.aiv, %i.aiu                 ; 2 uses
  %i.aix = shl i64 %i.aiw, 25
  %i.aiy = xor i64 %i.aix, %i.aiw                 ; 2 uses
  %i.aiz = lshr i64 %i.aiy, 27
  %i.aja = xor i64 %i.aiz, %i.aiy                 ; 3 uses
  %i.ajb = lshr i64 %i.aja, 12
  %i.ajc = xor i64 %i.ajb, %i.aja                 ; 2 uses
  %i.ajd = shl i64 %i.ajc, 25
  %i.aje = xor i64 %i.ajd, %i.ajc                 ; 2 uses
  %i.ajf = lshr i64 %i.aje, 27
  %i.ajg = xor i64 %i.ajf, %i.aje                 ; 3 uses
  %i.ajh = insertelement <8 x i64> poison, i64 %i.ahq, i64 0
  %i.aji = insertelement <8 x i64> %i.ajh, i64 %i.ahw, i64 1
  %i.ajj = insertelement <8 x i64> %i.aji, i64 %i.aic, i64 2
  %i.ajk = insertelement <8 x i64> %i.ajj, i64 %i.aii, i64 3
  %i.ajl = insertelement <8 x i64> %i.ajk, i64 %i.aio, i64 4
  %i.ajm = insertelement <8 x i64> %i.ajl, i64 %i.aiu, i64 5
  %i.ajn = insertelement <8 x i64> %i.ajm, i64 %i.aja, i64 6
  %i.ajo = insertelement <8 x i64> %i.ajn, i64 %i.ajg, i64 7
  %i.ajp = mul <8 x i64> %i.ajo, splat (i64 2685821657736338717)
  store <8 x i64> %i.ajp, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist8castlingE, i64 64), align 64, !tbaa !11
  %i.ajq = lshr i64 %i.ajg, 12
  %i.ajr = xor i64 %i.ajq, %i.ajg                 ; 2 uses
  %i.ajs = shl i64 %i.ajr, 25
  %i.ajt = xor i64 %i.ajs, %i.ajr                 ; 2 uses
  %i.aju = lshr i64 %i.ajt, 27
  %i.ajv = xor i64 %i.aju, %i.ajt                 ; 3 uses
  %i.ajw = mul i64 %i.ajv, 2685821657736338717    ; 4 uses
  store i64 %i.ajw, ptr @_ZN9Stockfish7Zobrist4sideE, align 8, !tbaa !11
  %i.ajx = lshr i64 %i.ajv, 12
  %i.ajy = xor i64 %i.ajx, %i.ajv                 ; 2 uses
  %i.ajz = shl i64 %i.ajy, 25
  %i.aka = xor i64 %i.ajz, %i.ajy                 ; 2 uses
  %i.akb = lshr i64 %i.aka, 27
  %i.akc = xor i64 %i.akb, %i.aka
  %i.akd = mul i64 %i.akc, 2685821657736338717
  store i64 %i.akd, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) @_ZN9Stockfish6cuckooE, i8 0, i64 65536, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16384) @_ZN9Stockfish10cuckooMoveE, i8 0, i64 16384, i1 false), !tbaa !126
  br label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.7174, %bb.b ] ; 9 uses
  %.sroa.060.172 = phi i64 [ 1070372, %bb.a ], [ %i.amt, %bb.b ] ; 2 uses
  %i.ake = lshr i64 %.sroa.060.172, 12
  %i.akf = xor i64 %i.ake, %.sroa.060.172         ; 2 uses
  %i.akg = shl i64 %i.akf, 25
  %i.akh = xor i64 %i.akg, %i.akf                 ; 2 uses
  %i.aki = lshr i64 %i.akh, 27
  %i.akj = xor i64 %i.aki, %i.akh                 ; 3 uses
  %i.akk = mul i64 %i.akj, 2685821657736338717
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  store i64 %i.akk, ptr %i.akl, align 16, !tbaa !11
  %i.akm = lshr i64 %i.akj, 12
  %i.akn = xor i64 %i.akm, %i.akj                 ; 2 uses
  %i.ako = shl i64 %i.akn, 25
  %i.akp = xor i64 %i.ako, %i.akn                 ; 2 uses
  %i.akq = lshr i64 %i.akp, 27
  %i.akr = xor i64 %i.akq, %i.akp                 ; 3 uses
  %i.aks = mul i64 %i.akr, 2685821657736338717
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store i64 %i.aks, ptr %i.aku, align 8, !tbaa !11
  %i.akv = lshr i64 %i.akr, 12
  %i.akw = xor i64 %i.akv, %i.akr                 ; 2 uses
  %i.akx = shl i64 %i.akw, 25
  %i.aky = xor i64 %i.akx, %i.akw                 ; 2 uses
  %i.akz = lshr i64 %i.aky, 27
  %i.ala = xor i64 %i.akz, %i.aky                 ; 3 uses
  %i.alb = mul i64 %i.ala, 2685821657736338717
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store i64 %i.alb, ptr %i.ald, align 16, !tbaa !11
  %i.ale = lshr i64 %i.ala, 12
  %i.alf = xor i64 %i.ale, %i.ala                 ; 2 uses
  %i.alg = shl i64 %i.alf, 25
  %i.alh = xor i64 %i.alg, %i.alf                 ; 2 uses
  %i.ali = lshr i64 %i.alh, 27
  %i.alj = xor i64 %i.ali, %i.alh                 ; 3 uses
  %i.alk = mul i64 %i.alj, 2685821657736338717
  %i.all = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store i64 %i.alk, ptr %i.alm, align 8, !tbaa !11
  %i.aln = lshr i64 %i.alj, 12
  %i.alo = xor i64 %i.aln, %i.alj                 ; 2 uses
  %i.alp = shl i64 %i.alo, 25
  %i.alq = xor i64 %i.alp, %i.alo                 ; 2 uses
  %i.alr = lshr i64 %i.alq, 27
  %i.als = xor i64 %i.alr, %i.alq                 ; 3 uses
  %i.alt = mul i64 %i.als, 2685821657736338717
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store i64 %i.alt, ptr %i.alv, align 16, !tbaa !11
  %i.alw = lshr i64 %i.als, 12
  %i.alx = xor i64 %i.alw, %i.als                 ; 2 uses
  %i.aly = shl i64 %i.alx, 25
  %i.alz = xor i64 %i.aly, %i.alx                 ; 2 uses
  %i.ama = lshr i64 %i.alz, 27
  %i.amb = xor i64 %i.ama, %i.alz                 ; 3 uses
  %i.amc = mul i64 %i.amb, 2685821657736338717
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  store i64 %i.amc, ptr %i.ame, align 8, !tbaa !11
  %i.amf = lshr i64 %i.amb, 12
  %i.amg = xor i64 %i.amf, %i.amb                 ; 2 uses
  %i.amh = shl i64 %i.amg, 25
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  %i.amj = lshr i64 %i.ami, 27
  %i.amk = xor i64 %i.amj, %i.ami                 ; 3 uses
  %i.aml = mul i64 %i.amk, 2685821657736338717
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  store i64 %i.aml, ptr %i.amn, align 16, !tbaa !11
  %i.amo = lshr i64 %i.amk, 12
  %i.amp = xor i64 %i.amo, %i.amk                 ; 2 uses
  %i.amq = shl i64 %i.amp, 25
  %i.amr = xor i64 %i.amq, %i.amp                 ; 2 uses
  %i.ams = lshr i64 %i.amr, 27
  %i.amt = xor i64 %i.ams, %i.amr                 ; 2 uses
  %i.amu = mul i64 %i.amt, 2685821657736338717
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 56
  store i64 %i.amu, ptr %i.amw, align 8, !tbaa !11
  %indvars.iv.next.7174 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7174, 64
  br i1 %exitcond.not.7, label %.preheader131, label %bb.b, !llvm.loop !125

bb.c:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  ret void

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader: ; preds = %.preheader70, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  %.020.idx89 = phi i64 [ %.020.add, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit ], [ 0, %.preheader70 ] ; 2 uses
  %.020.ptr = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish12_GLOBAL__N_16PiecesE, i64 %.020.idx89
  %i.amx = load i8, ptr %.020.ptr, align 1, !tbaa !27 ; 2 uses
  %i.amy = and i8 %i.amx, 7                       ; 4 uses
  %i.amz = zext nneg i8 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.amz
  %i.anb = zext i8 %i.amx to i64
  %i.anc = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.anb ; 4 uses
  br label %bb.d

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.1, %bb.d
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 64
  br i1 %exitcond110.not, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit, label %bb.d, !llvm.loop !128

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit: ; preds = %.loopexit
  %.020.add = add nuw nsw i64 %.020.idx89, 1      ; 2 uses
  %.not23 = icmp eq i64 %.020.add, 12
  br i1 %.not23, label %bb.c, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.d:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 8 uses
  %indvars.iv101 = phi i64 [ 1, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next102, %.loopexit ] ; 6 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.and = icmp samesign ult i64 %indvars.iv107, 63
  br i1 %i.and, label %.lr.ph85, label %.loopexit

.lr.ph85:                                         ; preds = %bb.d
  %i.ane = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv107 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8 ; 6 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 24 ; 6 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %indvars.iv107 ; 3 uses
  %i.ani = trunc nuw nsw i64 %indvars.iv107 to i16
  %i.anj = shl nuw nsw i16 %i.ani, 6              ; 3 uses
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv107 ; 3 uses
  %i.anl = and i64 %indvars.iv107, 1
  %lcmp.mod.not.not = icmp eq i64 %i.anl, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph85
  switch i8 %i.amy, label %bb.h [
    i8 1, label %._crit_edge.prol
    i8 3, label %bb.g
    i8 4, label %bb.f
    i8 5, label %bb.e
  ]

bb.e:                                             ; preds = %.prol.preheader
  %i.anm = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !11
  %i.ano = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !11
  %i.anq = or i64 %i.anp, %i.ann
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.f:                                             ; preds = %.prol.preheader
  %i.anr = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.g:                                             ; preds = %.prol.preheader
  %i.ant = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.anv = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.prol = phi i64 [ %i.anv, %bb.h ], [ %i.anu, %bb.g ], [ %i.ans, %bb.f ], [ %i.anq, %bb.e ]
  %i.anw = shl nuw i64 1, %indvars.iv101
  %i.anx = and i64 %.0.i.prol, %i.anw
  %.not25.prol = icmp eq i64 %i.anx, 0
  br i1 %.not25.prol, label %._crit_edge.prol, label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol
  %i.any = trunc nuw nsw i64 %indvars.iv101 to i16
  %i.anz = add nuw nsw i16 %i.anj, %i.any
  %i.aoa = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv101
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !11
  %i.aod = xor i64 %i.aoa, %i.aoc
  %i.aoe = xor i64 %i.aod, %i.ajw                 ; 3 uses
  %i.aof = and i64 %i.aoe, 8191                   ; 2 uses
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aof ; 2 uses
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !11
  store i64 %i.aoe, ptr %i.aog, align 8, !tbaa !11
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aof ; 2 uses
  %.sroa.0.0.copyload.i79.prol = load i16, ptr %i.aoi, align 2, !tbaa !126 ; 2 uses
  store i16 %i.anz, ptr %i.aoi, align 2, !tbaa !126
  %i.aoj = icmp eq i16 %.sroa.0.0.copyload.i79.prol, 0
  br i1 %i.aoj, label %._crit_edge.prol, label %.lr.ph.preheader.prol

.lr.ph.preheader.prol:                            ; preds = %bb.i
  %i.aok = trunc i64 %i.aoe to i32
  %i.aol = and i32 %i.aok, 8191
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader.prol
  %.sroa.0.0.copyload.i81.prol = phi i16 [ %.sroa.0.0.copyload.i.prol, %.lr.ph.prol ], [ %.sroa.0.0.copyload.i79.prol, %.lr.ph.preheader.prol ]
  %i.aom = phi i64 [ %i.aov, %.lr.ph.prol ], [ %i.aoh, %.lr.ph.preheader.prol ] ; 2 uses
  %.080.prol = phi i32 [ %i.aos, %.lr.ph.prol ], [ %i.aol, %.lr.ph.preheader.prol ]
  %i.aon = trunc i64 %i.aom to i32                ; 2 uses
  %i.aoo = and i32 %i.aon, 8191                   ; 2 uses
  %i.aop = icmp eq i32 %.080.prol, %i.aoo
  %i.aoq = lshr i32 %i.aon, 16
  %i.aor = and i32 %i.aoq, 8191
  %i.aos = select i1 %i.aop, i32 %i.aor, i32 %i.aoo ; 2 uses
  %i.aot = zext nneg i32 %i.aos to i64            ; 2 uses
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aot ; 2 uses
  %i.aov = load i64, ptr %i.aou, align 8, !tbaa !11
  store i64 %i.aom, ptr %i.aou, align 8, !tbaa !11
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aot ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i16, ptr %i.aow, align 2, !tbaa !126 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.prol, ptr %i.aow, align 2, !tbaa !126
  %i.aox = icmp eq i16 %.sroa.0.0.copyload.i.prol, 0
  br i1 %i.aox, label %._crit_edge.prol, label %.lr.ph.prol, !llvm.loop !132

._crit_edge.prol:                                 ; preds = %.lr.ph.prol, %bb.i, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol, %.prol.preheader
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv101, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %._crit_edge.prol, %.lr.ph85
  %indvars.iv103.unr = phi i64 [ %indvars.iv101, %.lr.ph85 ], [ %indvars.iv.next104.prol, %._crit_edge.prol ]
  %i.aoy = icmp eq i64 %indvars.iv107, 62
  br i1 %i.aoy, label %.loopexit, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.prol.loopexit, %._crit_edge.1
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %._crit_edge.1 ], [ %indvars.iv103.unr, %.prol.loopexit ] ; 6 uses
  switch i8 %i.amy, label %bb.m [
    i8 1, label %._crit_edge
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
  ]

bb.j:                                             ; preds = %.lr.ph85.new
  %i.aoz = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.k:                                             ; preds = %.lr.ph85.new
  %i.apb = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.l:                                             ; preds = %.lr.ph85.new
  %i.apd = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !11
  %i.apf = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !11
  %i.aph = or i64 %i.apg, %i.ape
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.m:                                             ; preds = %.lr.ph85.new
  %i.api = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.api, %bb.m ], [ %i.apa, %bb.j ], [ %i.apc, %bb.k ], [ %i.aph, %bb.l ]
  %i.apj = shl nuw i64 1, %indvars.iv103
  %i.apk = and i64 %.0.i, %i.apj
  %.not25 = icmp eq i64 %i.apk, 0
  br i1 %.not25, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %i.apl = trunc nuw nsw i64 %indvars.iv103 to i16
  %i.apm = add nuw nsw i16 %i.anj, %i.apl
  %i.apn = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv103
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !11
  %i.apq = xor i64 %i.apn, %i.app
  %i.apr = xor i64 %i.apq, %i.ajw                 ; 3 uses
  %i.aps = and i64 %i.apr, 8191                   ; 2 uses
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aps ; 2 uses
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !11
  store i64 %i.apr, ptr %i.apt, align 8, !tbaa !11
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aps ; 2 uses
  %.sroa.0.0.copyload.i79 = load i16, ptr %i.apv, align 2, !tbaa !126 ; 2 uses
  store i16 %i.apm, ptr %i.apv, align 2, !tbaa !126
  %i.apw = icmp eq i16 %.sroa.0.0.copyload.i79, 0
  br i1 %i.apw, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.apx = trunc i64 %i.apr to i32
  %i.apy = and i32 %i.apx, 8191
  br label %.lr.ph
end_hunk_1
