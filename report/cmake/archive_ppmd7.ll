Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_ppmd7?download=true
inline.NumInlined: 57
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@UpdateModel:bb.a
AllocUnits.exit._crit_edge:                       ; preds = %AllocUnits.exit
  %.pre229 = load ptr, ptr %i.bg, align 8, !tbaa !18
  br label %bb.af

.thread214:                                       ; preds = %AllocUnits.exit
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.af:                                            ; preds = %AllocUnits.exit._crit_edge, %AllocUnits.exit.thread
  %i.ep = phi ptr [ %i.dh, %AllocUnits.exit.thread ], [ %.pre229, %AllocUnits.exit._crit_edge ] ; 3 uses
  %.0.i211 = phi ptr [ %i.ea, %AllocUnits.exit.thread ], [ %.0.i, %AllocUnits.exit._crit_edge ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0171228, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !41 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es ; 6 uses
  %i.eu = and i32 %i.dj, 2
  %lcmp.mod.not = icmp eq i32 %i.eu, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.af
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !81
  store i32 %i.ev, ptr %.0.i211, align 4, !tbaa !81
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !81
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i211, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !81
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !81
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i211, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i211, i64 12
  %i.fe = add nsw i32 %i.dm, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.af
  %.0166.unr = phi ptr [ %.0.i211, %bb.af ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.0165.unr = phi ptr [ %i.et, %bb.af ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.0164.unr = phi i32 [ %i.dm, %bb.af ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %i.ff = icmp eq i16 %i.di, 2
  br i1 %i.ff, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0166 = phi ptr [ %i.fx, %.new ], [ %.0166.unr, %.prol.loopexit ] ; 7 uses
  %.0165 = phi ptr [ %i.fw, %.new ], [ %.0165.unr, %.prol.loopexit ] ; 7 uses
  %.0164 = phi i32 [ %i.fy, %.new ], [ %.0164.unr, %.prol.loopexit ]
  %i.fg = load i32, ptr %.0165, align 4, !tbaa !81
  store i32 %i.fg, ptr %.0166, align 4, !tbaa !81
  %i.fh = getelementptr inbounds nuw i8, ptr %.0165, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !81
  %i.fj = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !81
  %i.fk = getelementptr inbounds nuw i8, ptr %.0165, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !81
  %i.fm = getelementptr inbounds nuw i8, ptr %.0166, i64 8
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !81
  %i.fn = getelementptr inbounds nuw i8, ptr %.0165, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %.0166, i64 12
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !81
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !81
  %i.fq = getelementptr inbounds nuw i8, ptr %.0165, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !81
  %i.fs = getelementptr inbounds nuw i8, ptr %.0166, i64 16
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %.0165, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !81
  %i.fv = getelementptr inbounds nuw i8, ptr %.0166, i64 20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !81
  %i.fw = getelementptr inbounds nuw i8, ptr %.0165, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %.0166, i64 24
  %i.fy = add i32 %.0164, -2                      ; 2 uses
  %.not199.1 = icmp eq i32 %i.fy, 0
  br i1 %.not199.1, label %.unr-lcssa, label %.new, !llvm.loop !126

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.fz = zext i8 %i.dq to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !81
  store i32 %i.gb, ptr %i.et, align 4, !tbaa !81
  %i.gc = ptrtoint ptr %i.ep to i64
  store i32 %i.er, ptr %i.ga, align 4, !tbaa !81
  %i.gd = ptrtoint ptr %.0.i211 to i64
  %i.ge = sub i64 %i.gd, %i.gc
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.eq, align 4, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.aa, %bb.z
  %i.gg = phi ptr [ %i.ep, %.unr-lcssa ], [ %i.dh, %bb.aa ], [ %i.dh, %bb.z ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0171228, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !42 ; 2 uses
  %i.gj = zext i16 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.dj, 1
  %i.gl = icmp samesign ult i32 %i.gk, %i.co
  %i.gm = zext i1 %i.gl to i16
  %i.gn = add i16 %i.gi, %i.gm
  %i.go = shl nuw nsw i32 %i.dj, 2
  %i.gp = icmp samesign ule i32 %i.go, %i.co
  %i.gq = shl nuw nsw i32 %i.dj, 3
  %i.gr = icmp samesign uge i32 %i.gq, %i.gj
  %i.gs = and i1 %i.gp, %i.gr
  %i.gt = select i1 %i.gs, i16 2, i16 0
  %i.gu = add i16 %i.gn, %i.gt
  br label %bb.al

bb.ag:                                            ; preds = %bb.y
  %i.gv = load i32, ptr %i.da, align 4, !tbaa !81 ; 2 uses
  %.not.i204 = icmp eq i32 %i.gv, 0
  br i1 %.not.i204, label %bb.ah, label %AllocUnits.exit207.thread

AllocUnits.exit207.thread:                        ; preds = %bb.ag
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !81
  store i32 %i.gy, ptr %i.da, align 4, !tbaa !81
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load i8, ptr %i.db, align 4, !tbaa !19
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, 12               ; 2 uses
  %i.hc = load ptr, ptr %i.dc, align 8, !tbaa !79
  %i.hd = load ptr, ptr %i.dd, align 8, !tbaa !80 ; 3 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32
  %.not16.i206 = icmp ugt i32 %i.hb, %i.hh
  br i1 %.not16.i206, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = zext nneg i32 %i.hb to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi
  store ptr %i.hj, ptr %i.dd, align 8, !tbaa !80
  br label %AllocUnits.exit207

bb.aj:                                            ; preds = %bb.ah
  %i.hk = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0)
  br label %AllocUnits.exit207

AllocUnits.exit207:                               ; preds = %bb.ai, %bb.aj
  %.0.i205 = phi ptr [ %i.hk, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.not196.not = icmp eq ptr %.0.i205, null
  br i1 %.not196.not, label %.thread221, label %bb.ak

.thread221:                                       ; preds = %AllocUnits.exit207
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.ak:                                            ; preds = %AllocUnits.exit207, %AllocUnits.exit207.thread
  %.0.i205218 = phi ptr [ %i.gx, %AllocUnits.exit207.thread ], [ %.0.i205, %AllocUnits.exit207 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0171228, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.0.i205218, ptr noundef nonnull align 2 dereferenceable(6) %i.hl, i64 6, i1 false), !tbaa.struct !55
  %i.hm = load ptr, ptr %i.bg, align 8, !tbaa !18 ; 2 uses
  %i.hn = ptrtoint ptr %.0.i205218 to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %.0171228, i64 4
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !41
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i205218, i64 1 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !44  ; 2 uses
  %i.hu = icmp ult i8 %i.ht, 30
  %i.hv = shl nuw nsw i8 %i.ht, 1
  %storemerge = select i1 %i.hu, i8 %i.hv, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.hs, align 1, !tbaa !44
  %i.hw = zext nneg i8 %storemerge to i32
  %i.hx = load i32, ptr %i.de, align 4, !tbaa !60
  %i.hy = add i32 %i.hx, %i.dg
  %i.hz = add i32 %i.hy, %i.hw
  %i.ia = trunc i32 %i.hz to i16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge
  %i.ib = phi ptr [ %i.hm, %bb.ak ], [ %i.gg, %.critedge ]
  %i.ic = phi i16 [ %i.ia, %bb.ak ], [ %i.gu, %.critedge ] ; 2 uses
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !44
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0171228, i64 2
  %i.ij = zext i16 %i.ic to i32                   ; 2 uses
  %i.ik = add nuw nsw i32 %i.ij, 6
  %i.il = mul nuw nsw i32 %i.ik, %i.ih            ; 6 uses
  %i.im = add nsw i32 %.reass, %i.ij              ; 6 uses
  %i.in = mul nsw i32 %i.im, 6
  %i.io = icmp ult i32 %i.il, %i.in
  br i1 %i.io, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ip = icmp ugt i32 %i.il, %i.im
  %i.iq = select i1 %i.ip, i32 2, i32 1
  %i.ir = shl nsw i32 %i.im, 2
  %i.is = icmp uge i32 %i.il, %i.ir
  %i.it = zext i1 %i.is to i32
  %i.iu = add nuw nsw i32 %i.iq, %i.it
  br label %.critedge203

bb.an:                                            ; preds = %bb.al
  %i.iv = mul nuw nsw i32 %i.im, 9
  %.not200 = icmp samesign ult i32 %i.il, %i.iv
  %i.iw = select i1 %.not200, i32 4, i32 5
  %i.ix = mul nuw nsw i32 %i.im, 12
  %i.iy = icmp samesign uge i32 %i.il, %i.ix
  %i.iz = zext i1 %i.iy to i32
  %i.ja = add nuw nsw i32 %i.iw, %i.iz
  %i.jb = mul nuw nsw i32 %i.im, 15
  %i.jc = icmp samesign uge i32 %i.il, %i.jb
  %i.jd = zext i1 %i.jc to i32
  %i.je = add nuw nsw i32 %i.ja, %i.jd            ; 2 uses
  %i.jf = trunc nuw nsw i32 %i.je to i16
  br label %.critedge203

.critedge203:                                     ; preds = %bb.an, %bb.am
  %.pn = phi i16 [ %i.jf, %bb.an ], [ 3, %bb.am ]
  %.0167 = phi i32 [ %i.je, %bb.an ], [ %i.iu, %bb.am ]
  %storemerge201 = add i16 %.pn, %i.ic
  store i16 %storemerge201, ptr %i.ii, align 2, !tbaa !42
  %i.jg = getelementptr inbounds nuw i8, ptr %.0171228, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !41
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ji
  %i.jk = zext i16 %i.di to i64
  %i.jl = getelementptr inbounds nuw [6 x i8], ptr %i.jj, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i32 %.0, ptr %i.jm, align 2
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !46
  store i8 %i.jo, ptr %i.jl, align 2, !tbaa !46
  %i.jp = trunc nuw nsw i32 %.0167 to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !44
  %i.jr = add i16 %i.di, 1
  store i16 %i.jr, ptr %.0171228, align 4, !tbaa !40
  %i.js = load ptr, ptr %i.bg, align 8, !tbaa !18 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0171228, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !59
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !38
  %.not194 = icmp eq ptr %i.jw, %i.jx
  br i1 %.not194, label %._crit_edge, label %bb.y, !llvm.loop !127

._crit_edge:                                      ; preds = %.critedge203, %bb.x
  %i.jy = phi ptr [ %i.cl, %bb.x ], [ %i.js, %.critedge203 ]
  %i.jz = zext i32 %.2174 to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz ; 2 uses
  store ptr %i.ka, ptr %0, align 8, !tbaa !38
  store ptr %i.ka, ptr %i.cp, align 8, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %.thread221, %.thread214, %.thread, %._crit_edge, %bb.p, %bb.n, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @CreateSuccessors(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i32, ptr %i.e, align 2              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 16, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59   ; 2 uses
  %.not90120 = icmp eq i32 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 5 uses
  br i1 %.not90120, label %.thread104, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %2 = zext nneg i32 %.070 to i64
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.171121 = phi i32 [ %i.h, %.lr.ph ], [ %i.aa, %bb.h ]
  %i.i = zext i32 %.171121 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i ; 5 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !40
  %.not91 = icmp eq i16 %i.k, 1
  br i1 %.not91, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n
  %i.p = load i8, ptr %i.d, align 2, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.068 = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  %i.q = load i8, ptr %.068, align 2, !tbaa !46
  %.not92 = icmp eq i8 %i.q, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.068, i64 6
  br i1 %.not92, label %.loopexit, label %bb.e, !llvm.loop !128

bb.f:                                             ; preds = %.lr.ph.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f
  %.169 = phi ptr [ %i.s, %bb.f ], [ %.068, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.169, i64 2
  %i.u = load i32, ptr %i.t, align 2              ; 2 uses
  %.not93 = icmp eq i32 %i.u, %i.f
  br i1 %.not93, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %3 = trunc nuw i64 %indvars.iv to i32
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.v ; 2 uses
  %i.x = icmp eq i64 %indvars.iv, 0
  br i1 %i.x, label %.thread, label %.thread104

bb.h:                                             ; preds = %.loopexit
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.169, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59  ; 2 uses
  %.not90 = icmp eq i32 %i.aa, 0
  br i1 %.not90, label %.thread104.loopexit, label %.lr.ph.a

.thread104.loopexit:                              ; preds = %bb.h
  %4 = trunc nuw i64 %indvars.iv.next to i32
  br label %.thread104

.thread104:                                       ; preds = %bb.c, %.thread104.loopexit, %bb.g
  %.171117 = phi i32 [ %3, %bb.g ], [ %4, %.thread104.loopexit ], [ %.070, %bb.c ] ; 2 uses
  %.274 = phi ptr [ %i.w, %bb.g ], [ %i.j, %.thread104.loopexit ], [ %i.b, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = zext i32 %i.f to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19  ; 2 uses
  %i.af = add i32 %i.f, 1
  %i.ag = load i16, ptr %.274, align 4, !tbaa !40 ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread104
  %i.ai = getelementptr inbounds nuw i8, ptr %.274, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !44
  br label %bb.p

bb.j:                                             ; preds = %.thread104
  %i.ak = getelementptr inbounds nuw i8, ptr %.274, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.066 = phi ptr [ %i.an, %bb.j ], [ %i.ap, %bb.k ] ; 3 uses
  %i.ao = load i8, ptr %.066, align 2, !tbaa !46
  %.not94 = icmp eq i8 %i.ao, %i.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %.066, i64 6
  br i1 %.not94, label %bb.l, label %bb.k, !llvm.loop !129

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !44
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.274, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !42
  %i.aw = zext i16 %i.av to i32
  %i.ax = zext i16 %i.ag to i32
  %i.ay = add nuw nsw i32 %i.as, %i.ax
  %reass.sub = sub nsw i32 %i.aw, %i.ay
  %i.az = add nsw i32 %reass.sub, 1               ; 4 uses
  %i.ba = shl nsw i32 %i.at, 1                    ; 2 uses
  %.not95 = icmp ugt i32 %i.ba, %i.az
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = mul nsw i32 %i.at, 5
  %i.bc = icmp ugt i32 %i.bb, %i.az
  %i.bd = zext i1 %i.bc to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = mul nsw i32 %i.az, 3
  %i.bf = add nsw i32 %i.ba, -1
  %i.bg = add nsw i32 %i.bf, %i.be
  %i.bh = shl nsw i32 %i.az, 1
  %i.bi = udiv i32 %i.bg, %i.bh
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = phi i32 [ %i.bd, %bb.m ], [ %i.bi, %bb.n ]
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = add i8 %i.bk, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i
  %.sroa.5.0 = phi i8 [ %i.aj, %bb.i ], [ %i.bl, %bb.o ]
  %.not96123 = icmp eq i32 %.171117, 0
  br i1 %.not96123, label %.thread, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.bp = zext i32 %.171117 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph126, %bb.v
  %indvars.iv.a = phi i64 [ %i.bp, %.lr.ph126 ], [ %i.cg, %bb.v ]
  %.375124 = phi ptr [ %.274, %.lr.ph126 ], [ %.0, %bb.v ]
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !79 ; 2 uses
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !80
  %.not97 = icmp eq ptr %i.bq, %i.br
  br i1 %.not97, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -12 ; 2 uses
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !79
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.bo, align 4, !tbaa !81 ; 2 uses
  %.not98 = icmp eq i32 %i.bt, 0
  br i1 %.not98, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !81
  store i32 %i.bx, ptr %i.bo, align 4, !tbaa !81
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.by = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not99 = icmp eq ptr %i.by, null
  br i1 %.not99, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %.0 = phi ptr [ %i.bs, %bb.r ], [ %i.bw, %bb.t ], [ %i.by, %bb.u ] ; 8 uses
  store i16 1, ptr %.0, align 4, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.ae, ptr %i.bz, align 2, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !19
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.af, ptr %.sroa.7.0..sroa_idx, align 4
  %i.ca = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.cb = ptrtoint ptr %.375124 to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !59
  %i.cg = add nsw i64 %indvars.iv.a, -1           ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !61
  %i.cj = ptrtoint ptr %.0 to i64
  %i.ck = sub i64 %i.cj, %i.cc
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i32 %i.cl, ptr %i.cm, align 2
  %.not96.wide = icmp eq i64 %i.cg, 0
  br i1 %.not96.wide, label %.thread, label %bb.q, !llvm.loop !130

.thread:                                          ; preds = %bb.v, %bb.u, %bb.p, %bb.g
  %.582 = phi ptr [ %i.w, %bb.g ], [ %.274, %bb.p ], [ %.0, %bb.v ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.582
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @AllocUnitsRare(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 257) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = add i32 %i.g, %i.e                       ; 7 uses
  store i32 255, ptr %i.a, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.088104.i = phi i32 [ %i.h, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %i.n = zext i8 %i.m to i16
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81   ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !81
  %.not98100.i = icmp eq i32 %i.p, 0
  br i1 %.not98100.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.1102.i = phi i32 [ %.088104.i, %.lr.ph.i ], [ %.089101.i, %bb.d ] ; 2 uses
  %.089101.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.d ] ; 4 uses
  %i.r = zext i32 %.089101.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.1102.i, ptr %i.t, align 4, !tbaa !139
  %i.u = zext i32 %.1102.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.089101.i, ptr %i.w, align 4, !tbaa !140
  %i.x = load i32, ptr %i.s, align 4, !tbaa !81   ; 2 uses
  store i16 0, ptr %i.s, align 4, !tbaa !141
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.n, ptr %i.y, align 2, !tbaa !142
  %.not98.i = icmp eq i32 %i.x, 0
  br i1 %.not98.i, label %._crit_edge.i, label %bb.d, !llvm.loop !131

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.1.lcssa.i = phi i32 [ %.088104.i, %bb.c ], [ %.089101.i, %bb.d ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 38
  br i1 %exitcond.not.i, label %bb.e, label %bb.c, !llvm.loop !132

end_hunk_0
