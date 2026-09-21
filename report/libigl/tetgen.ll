Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !218
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 156
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !185
  %i.ec = icmp sgt i32 %i.eb, 3
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.262, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dx) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ee = icmp eq i32 %i.dv, 1                    ; 3 uses
  %i.ef = add i32 %i.y, -1
  %i.eg = add i32 %i.ef, %i.dx
  %i.eh = srem i32 %i.eg, %i.y
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ei ; 4 uses
  br i1 %i.ee, label %.split, label %.split105

.split:                                           ; preds = %bb.n
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !231 ; 2 uses
  store ptr %i.ek, ptr %i.dt, align 8, !tbaa !231
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !236 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !tbaa !236
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !59 ; 2 uses
  store i32 %i.eq, ptr %i.en, align 8, !tbaa !236
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !59 ; 2 uses
  store i32 %i.et, ptr %i.en, align 8, !tbaa !236
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !59 ; 3 uses
  store i32 %i.ew, ptr %i.en, align 8, !tbaa !236
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ey = and i32 %i.ew, 3
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !220
  %i.fc = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = and i32 %i.fd, 15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !236
  %i.fg = and i64 %i.fc, -16
  %i.fh = inttoptr i64 %i.fg to ptr
  store ptr %i.fh, ptr %i.ex, align 8, !tbaa !231
  %i.fi = sext i32 %i.ew to i64
  %i.fj = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.fi
  %i.fk = and i64 %i.fc, 15
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !59
  store i32 %i.fm, ptr %i.ff, align 8, !tbaa !236
  br label %bb.o

.split105:                                        ; preds = %bb.n
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.fo = load ptr, ptr %i.ej, align 8, !tbaa !231 ; 2 uses
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !231
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !236 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 4 uses
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !236
  %i.fs = sext i32 %i.fq to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !59 ; 2 uses
  store i32 %i.fu, ptr %i.fr, align 8, !tbaa !236
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !59 ; 2 uses
  store i32 %i.fx, ptr %i.fr, align 8, !tbaa !236
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !59 ; 3 uses
  store i32 %i.ga, ptr %i.fr, align 8, !tbaa !236
  %i.gb = and i32 %i.ga, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !220
  %i.gf = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = and i32 %i.gg, 15
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !236
  %i.gj = and i64 %i.gf, -16
  %i.gk = inttoptr i64 %i.gj to ptr
  store ptr %i.gk, ptr %i.dt, align 8, !tbaa !231
  %i.gl = sext i32 %i.ga to i64
  %i.gm = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.gl
  %i.gn = and i64 %i.gf, 15
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !59
  store i32 %i.gp, ptr %i.gi, align 8, !tbaa !236
  br label %bb.o

bb.o:                                             ; preds = %.split105, %.split
  %.sink = phi i32 [ %i.dv, %.split105 ], [ 1, %.split ]
  %i.gq = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.dt, i32 noundef %i.du, i32 noundef 2, i32 noundef %.sink, ptr noundef nonnull %5) ; 0 uses
  %i.gr = zext nneg i32 %i.dx to i64              ; 2 uses
  %.not116.not120 = icmp sgt i64 %indvars.iv133, %i.gr
  br i1 %.not116.not120, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.z, %bb.o ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !231
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !231
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !236
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !236
  %.not116.not = icmp sgt i64 %indvars.iv.next, %i.gr
  br i1 %.not116.not, label %.lr.ph, label %._crit_edge, !llvm.loop !620

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !231 ; 2 uses
  store ptr %i.gz, ptr %6, align 16, !tbaa !231
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !236
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE = select i1 %i.ee, ptr @_ZN10tetgenmesh8enexttblE, ptr @_ZN10tetgenmesh8eprevtblE
  %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE = select i1 %i.ee, ptr @_ZN10tetgenmesh8eprevtblE, ptr @_ZN10tetgenmesh8enexttblE
  %i.he = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE, i64 %i.hc
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !59
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !59 ; 2 uses
  store i32 %i.hi, ptr %i.a, align 8, !tbaa !236
  %i.hj = load ptr, ptr %i.dt, align 8, !tbaa !231 ; 2 uses
  store ptr %i.hj, ptr %.ptr.1, align 16, !tbaa !231
  %i.hk = load i32, ptr %i.hd, align 8, !tbaa !236
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !59
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !59 ; 2 uses
  store i32 %i.hq, ptr %i.r, align 8, !tbaa !236
  %i.hr = add i32 %i.dx, %i.y
  %i.hs = trunc i64 %indvars.iv133 to i32
  %i.ht = add i32 %i.hs, 1
  %i.hu = srem i32 %i.hr, %i.ht
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [16 x i8], ptr %1, i64 %i.hv ; 2 uses
  store ptr %i.gz, ptr %i.hw, align 8, !tbaa !231
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %i.hi, ptr %i.hx, align 8, !tbaa !236
  %i.hy = zext nneg i32 %i.dx to i64
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.hy ; 2 uses
  store ptr %i.hj, ptr %i.hz, align 8, !tbaa !231
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i32 %i.hq, ptr %i.ia, align 8, !tbaa !236
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.ib = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.dt, i32 noundef %i.du, i32 noundef 2, i32 noundef %i.dv, ptr noundef nonnull %5) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.ic = load ptr, ptr %i.q, align 8, !tbaa !218
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 156
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !185
  %i.if = icmp sgt i32 %i.ie, 3
  br i1 %i.if, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ig = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.263, i32 noundef %i.du, i32 noundef %i.y) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ih = icmp eq ptr %i.dt, null
  br i1 %i.ih, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #42
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %._crit_edge126, %bb.j, %bb.f, %bb.s, %bb.t
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next134 to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge131, label %bb.e, !llvm.loop !621

._crit_edge131:                                   ; preds = %bb.u, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh21valid_constrained_f32EPNS_7trifaceEPdS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #22 align 2 {
.preheader68:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68688 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !231    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit: ; preds = %.preheader68
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !236
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !59
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !220
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %.not49 = icmp eq i64 %i.w, 0
  br i1 %.not49, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  %4 = load i32, ptr %i.a, align 8, !tbaa !239
  %5 = sext i32 %4 to i64
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %5
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59
  %i.ab = and i32 %i.aa, 4
  %.not67 = icmp eq i32 %i.ab, 0
  %spec.select = select i1 %.not67, ptr %i.x, ptr null
  br label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread: ; preds = %bb.a, %.preheader68, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  %.sroa.0.0 = phi ptr [ null, %.preheader68 ], [ %i.x, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit ], [ %spec.select, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !231 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !220 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.af, null
  br i1 %.not.i.1, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.1

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.1: ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !236
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !59
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !220
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, -8                       ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %.not49.1 = icmp eq i64 %i.ay, 0
  br i1 %.not49.1, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1, label %bb.b

bb.b:                                             ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.1
  %6 = load i32, ptr %i.a, align 8, !tbaa !239
  %7 = sext i32 %6 to i64
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %7
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !59
  %i.bd = and i32 %i.bc, 4
  %.not67.1 = icmp eq i32 %i.bd, 0
  %spec.select89 = select i1 %.not67.1, ptr %i.az, ptr null
  br label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1: ; preds = %bb.b, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.1
  %.sroa.1075.0 = phi ptr [ null, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread ], [ %i.az, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.1 ], [ %spec.select89, %bb.b ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !231 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !220 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.bh, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !236
  %.pre79 = sext i32 %.pre to i64                 ; 2 uses
  br i1 %.not.i.2, label %.preheader, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.2

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.2: ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1
  %i.bi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %.pre79
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !59
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !59
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !59
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !220
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -8                       ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %.not49.2 = icmp eq i64 %i.bx, 0
  br i1 %.not49.2, label %.preheader, label %bb.c

bb.c:                                             ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.2
  %8 = load i32, ptr %i.a, align 8, !tbaa !239
  %9 = sext i32 %8 to i64
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %9
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.cc = and i32 %i.cb, 4
  %.not67.2 = icmp eq i32 %i.cc, 0
  %spec.select90 = select i1 %.not67.2, ptr %i.by, ptr null
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.2
  %.sroa.1877.0 = phi ptr [ null, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.thread.1 ], [ %i.by, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit.2 ], [ %spec.select90, %bb.c ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 68704 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 68816 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !236
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !59
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !220 ; 15 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %.pre79
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !59
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !220 ; 15 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !236
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !59
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !220 ; 15 uses
  %.not65 = icmp eq ptr %.sroa.0.0, null          ; 2 uses
  br i1 %.not65, label %bb.d, label %.thread

bb.d:                                             ; preds = %.preheader
  %i.dc = load i32, ptr %i.cd, align 8, !tbaa !318
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %.thread56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dd = tail call noundef zeroext i1 @_ZN10tetgenmesh10is_segmentEPdS0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.co, ptr noundef %i.db)
  br i1 %i.dd, label %.thread, label %.thread56

.thread:                                          ; preds = %.preheader, %bb.e
  %.not66 = icmp eq ptr %.sroa.1877.0, null
  br i1 %.not66, label %bb.f, label %.thread58

bb.f:                                             ; preds = %.thread
  %i.de = load i32, ptr %i.cd, align 8, !tbaa !318
  %.not45 = icmp eq i32 %i.de, 0
  br i1 %.not45, label %.thread56, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = tail call noundef zeroext i1 @_ZN10tetgenmesh10is_segmentEPdS0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.co, ptr noundef %i.ct)
  br i1 %i.df, label %.thread58, label %.thread56

.thread58:                                        ; preds = %.thread, %bb.g
  %i.dg = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.co, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !59
  %.mask = and i32 %i.dk, -256
  %i.dl = icmp eq i32 %.mask, 1280
  br i1 %i.dl, label %.thread62, label %bb.h

bb.h:                                             ; preds = %.thread58
  %i.dm = load ptr, ptr %i.cf, align 8, !tbaa !250 ; 3 uses
  %.not46 = icmp eq ptr %i.co, %i.dm
  %.not47 = icmp eq ptr %i.ct, %i.dm
  %or.cond = or i1 %.not46, %.not47
  %.not48 = icmp eq ptr %i.db, %i.dm
  %or.cond50 = or i1 %.not48, %or.cond
  br i1 %or.cond50, label %.thread56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dp = load double, ptr %i.do, align 8, !tbaa !58
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !58
  %i.dt = load <2 x double>, ptr %i.ct, align 8, !tbaa !58 ; 2 uses
  %i.du = load double, ptr %i.dn, align 8, !tbaa !58
  %i.dv = load double, ptr %i.co, align 8, !tbaa !58
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !58
  %i.dx = load <2 x double>, ptr %i.db, align 8, !tbaa !58 ; 2 uses
  %i.dy = shufflevector <2 x double> %i.dt, <2 x double> %i.dx, <2 x i32> <i32 0, i32 2>
  %i.dz = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fsub <2 x double> %i.dy, %i.ea          ; 4 uses
  %i.ec = shufflevector <2 x double> %i.dt, <2 x double> %i.dx, <2 x i32> <i32 1, i32 3>
  %i.ed = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fsub <2 x double> %i.ec, %i.ee          ; 4 uses
  %i.eg = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ds, i64 1
  %i.ei = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fsub <2 x double> %i.eh, %i.ej          ; 4 uses
  %i.el = fmul <2 x double> %i.ef, %i.ef
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eb, <2 x double> %i.el)
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.ek, <2 x double> %i.em)
  %i.eo = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.en) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eb, i64 0
  %i.eq = extractelement <2 x double> %i.eb, i64 1
  %i.er = extractelement <2 x double> %i.ek, i64 0
  %i.es = extractelement <2 x double> %i.ek, i64 1
  %i.et = shufflevector <2 x double> %i.ef, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.eu = shufflevector <2 x double> %i.ef, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.ev = fmul <2 x double> %i.et, %i.eu          ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.eq, double %i.ew)
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.er, double %i.es, double %i.ex)
  %i.ez = extractelement <2 x double> %i.ev, i64 1
  %i.fa = fdiv double %i.ey, %i.ez
  %i.fb = load double, ptr %i.cg, align 8, !tbaa !319
  %i.fc = fcmp olt double %i.fa, %i.fb
  br i1 %i.fc, label %.thread62, label %.thread56

.thread56:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.i, %bb.h, %bb.g
  %.not65.1 = icmp eq ptr %.sroa.1075.0, null     ; 2 uses
  br i1 %.not65.1, label %bb.j, label %.thread.1

bb.j:                                             ; preds = %.thread56
  %i.fd = load i32, ptr %i.cd, align 8, !tbaa !318
  %.not.1 = icmp eq i32 %i.fd, 0
  br i1 %.not.1, label %.thread56.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fe = tail call noundef zeroext i1 @_ZN10tetgenmesh10is_segmentEPdS0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.db, ptr noundef %i.ct)
  br i1 %i.fe, label %.thread.1, label %.thread56.1

.thread.1:                                        ; preds = %bb.k, %.thread56
  br i1 %.not65, label %bb.l, label %.thread58.1

bb.l:                                             ; preds = %.thread.1
  %i.ff = load i32, ptr %i.cd, align 8, !tbaa !318
  %.not45.1 = icmp eq i32 %i.ff, 0
  br i1 %.not45.1, label %.thread56.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fg = tail call noundef zeroext i1 @_ZN10tetgenmesh10is_segmentEPdS0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.db, ptr noundef %i.co)
  br i1 %i.fg, label %.thread58.1, label %.thread56.1

.thread58.1:                                      ; preds = %bb.m, %.thread.1
  %i.fh = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr %i.db, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !59
  %.mask.1 = and i32 %i.fl, -256
  %i.fm = icmp eq i32 %.mask.1, 1280
  br i1 %i.fm, label %.thread62, label %bb.n

bb.n:                                             ; preds = %.thread58.1
  %i.fn = load ptr, ptr %i.cf, align 8, !tbaa !250 ; 3 uses
  %.not46.1 = icmp eq ptr %i.db, %i.fn
  %.not47.1 = icmp eq ptr %i.co, %i.fn
  %or.cond.1 = or i1 %.not46.1, %.not47.1
  %.not48.1 = icmp eq ptr %i.ct, %i.fn
  %or.cond50.1 = or i1 %.not48.1, %or.cond.1
  br i1 %or.cond50.1, label %.thread56.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !58
  %i.fr = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !58
  %i.fu = load <2 x double>, ptr %i.co, align 8, !tbaa !58 ; 2 uses
  %i.fv = load double, ptr %i.fo, align 8, !tbaa !58
  %i.fw = load double, ptr %i.db, align 8, !tbaa !58
  %i.fx = load double, ptr %i.fr, align 8, !tbaa !58
  %i.fy = load <2 x double>, ptr %i.ct, align 8, !tbaa !58 ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fu, <2 x double> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.ga = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fsub <2 x double> %i.fz, %i.gb          ; 4 uses
  %i.gd = shufflevector <2 x double> %i.fu, <2 x double> %i.fy, <2 x i32> <i32 1, i32 3>
  %i.ge = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fsub <2 x double> %i.gd, %i.gf          ; 4 uses
  %i.gh = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.ft, i64 1
  %i.gj = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fsub <2 x double> %i.gi, %i.gk          ; 4 uses
  %i.gm = fmul <2 x double> %i.gg, %i.gg
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.gc, <2 x double> %i.gm)
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gl, <2 x double> %i.gn)
  %i.gp = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.go) ; 2 uses
  %i.gq = extractelement <2 x double> %i.gc, i64 0
  %i.gr = extractelement <2 x double> %i.gc, i64 1
  %i.gs = extractelement <2 x double> %i.gl, i64 0
  %i.gt = extractelement <2 x double> %i.gl, i64 1
end_hunk_0
