inline.NumInlined: 76
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"v_defoccur\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/kimwitu++/occur.cc\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"illegal redefinition of local function:\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"illegal redefinition of pattern variable:\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"illegal redefinition of rewrite view:\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"illegal redefinition of predefined rewrite view:\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"illegal predefinition of rewrite view:\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"illegal predefinition of predefined rewrite view:\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"illegal redefinition of unparse view:\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"illegal redefinition of predefined unparse view:\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"illegal predefinition of unparse view:\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"illegal predefinition of predefined unparse view:\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"illegal redefinition of storage class:\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"illegal redefinition of predefined storage class:\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"illegal predefinition of storage class:\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"illegal predefinition of predefined storage class:\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"illegal redefinition of operator:\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"illegal redefinition of predefined operator:\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"illegal predefinition of operator:\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"illegal predefinition of predefined operator:\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"illegal redefinition of phylum:\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"illegal redefinition of predefined phylum:\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"illegal predefinition of phylum:\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"illegal predefinition of predefined phylum:\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"illegal redefinition of \00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"as pattern variable\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"as rewrite view\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"illegal predefinition of \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"as unparse view\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"as function\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"as storage class\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"as storage class:\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"as operator:\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"as phylum:\00", align 1
@.str.34 = private unnamed_addr constant [72 x i8] c"undefined operator (it's predefined, you're not supposed to use those):\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"undefined operator\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"f_useoccuroperator\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"variable expected:\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"f_warnifnotvariable\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"undefined phylum\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"f_useoccurphylum\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"undefined list phylum (it's a predefined phylum):\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"undefined list phylum (it's a non-list phylum):\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"undefined list phylum (the productionblock is empty):\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"f_useoccurlistphylum\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"undefined list phylum\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"undefined unparse view:\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"f_useoccuruviewname\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"undefined rewrite view:\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"f_useoccurrviewname\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"undefined storage class:\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"f_useoccurstorageclass\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"f_useoccurlanguagename\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"undefined pattern variable:\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"f_useoccurpatternvariable\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"do_v_extendoccur\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"type mismatch in redefinition of pattern variable:\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"old type\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"new type\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"superfluous redeclaration of rewrite view:\00", align 1
@.str.60 = private unnamed_addr constant [54 x i8] c"superfluous redeclaration of predefined rewrite view:\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"illegal extension of rewrite view:\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"illegal extension of predefined rewrite view:\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"superfluous redeclaration of unparse view:\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"superfluous redeclaration of predefined unparse view:\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"illegal extension of unparse view:\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"illegal extension of predefined unparse view:\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"illegal extension of function:\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"illegal extension of storage class:\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"illegal extension of predefined storage class:\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"illegal extension of predefined operator:\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"illegal extension of operator:\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"illegal extension of predefined phylum:\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"illegal extension of phylum:\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"illegal extension of\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"as pattern variable:\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"illegal extension of \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"as function:\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"as phylum\00", align 1
@Thelanguages = external local_unnamed_addr global ptr, align 8
@.str.79 = private unnamed_addr constant [25 x i8] c"undefined language name:\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %4

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load ptr, ptr %2, align 8, !tbaa !10       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = icmp eq i32 %i.j, 172
  br i1 %i.k, label %.critedge, label %bb.c

4:                                                ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str, i32 noundef 63, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.o = icmp eq i32 %i.n, 172
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !25
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !18   ; 78 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !19   ; 58 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.aa = icmp eq i32 %i.z, 184
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ae = icmp eq i32 %i.ad, 184
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ak = icmp eq i32 %i.aj, 115
  br i1 %i.ak, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.ao = icmp eq i32 %i.an, 184
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.as = icmp eq i32 %i.ar, 184
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.ay = icmp eq i32 %i.ax, 114
  br i1 %i.ay, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.bc = icmp eq i32 %i.bb, 184
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.bg = icmp eq i32 %i.bf, 184
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
  %i.bm = icmp eq i32 %i.bl, 113
  br i1 %i.bm, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.bq = icmp eq i32 %i.bp, 184
  br i1 %i.bq, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.bu = icmp eq i32 %i.bt, 184
  br i1 %i.bu, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
  %i.ca = icmp eq i32 %i.bz, 112
  br i1 %i.ca, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !26 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef i32 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %i.cg = icmp eq i32 %i.cf, 112
  br i1 %i.cg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24
  %i.cl = tail call noundef zeroext i1 @_ZNK2kc20impl_abstract_phylum2eqEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.ck)
  br i1 %i.cl, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.cm = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.2, ptr noundef nonnull %0)
  %i.cn = getelementptr i8, ptr %0, i64 24
  %.val249 = load i32, ptr %i.cn, align 8, !tbaa !22
  %.val250 = load ptr, ptr %i.cj, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val249, ptr %.val250, ptr noundef %i.cm)
  br label %.critedge

bb.t:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %i.cr = icmp eq i32 %i.cq, 111
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.2, ptr noundef nonnull %0)
  %i.ct = getelementptr i8, ptr %0, i64 24
  %.val247 = load i32, ptr %i.ct, align 8, !tbaa !22
  %i.cu = getelementptr i8, ptr %0, i64 32
  %.val248 = load ptr, ptr %i.cu, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val247, ptr %.val248, ptr noundef %i.cs)
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @.str.1)
  br label %.critedge

bb.w:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.cy = icmp eq i32 %i.cx, 184
  br i1 %i.cy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.dc = icmp eq i32 %i.db, 184
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !26 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
  %i.di = icmp eq i32 %i.dh, 111
  br i1 %i.di, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.dm = icmp eq i32 %i.dl, 185
  br i1 %i.dm, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dn = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.dq = icmp eq i32 %i.dp, 185
  br i1 %i.dq, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.dw = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.3, ptr noundef nonnull %0)
  %i.dx = getelementptr i8, ptr %0, i64 24
  %.val245 = load i32, ptr %i.dx, align 8, !tbaa !22
  %i.dy = getelementptr i8, ptr %0, i64 32
  %.val246 = load ptr, ptr %i.dy, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val245, ptr %.val246, ptr noundef %i.dw)
  br label %.critedge

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.dz = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call noundef i32 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.ec = icmp eq i32 %i.eb, 183
  br i1 %i.ec, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef i32 %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.eg = icmp eq i32 %i.ef, 183
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eh = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.4, ptr noundef nonnull %0)
  %i.ei = getelementptr i8, ptr %0, i64 24
  %.val243 = load i32, ptr %i.ei, align 8, !tbaa !22
  %i.ej = getelementptr i8, ptr %0, i64 32
  %.val244 = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.ek = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val244, i32 noundef %.val243)
  %i.el = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.ek, ptr noundef %i.eh)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.el)
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.em = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call noundef i32 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.ep = icmp eq i32 %i.eo, 183
  br i1 %i.ep, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.et = icmp eq i32 %i.es, 182
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.5, ptr noundef nonnull %0)
  %i.ev = getelementptr i8, ptr %0, i64 24
  %.val241 = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.ew = getelementptr i8, ptr %0, i64 32
  %.val242 = load ptr, ptr %i.ew, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val241, ptr %.val242, ptr noundef %i.eu)
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ex = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.fa = icmp eq i32 %i.ez, 182
  br i1 %i.fa, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fb = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef i32 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.fe = icmp eq i32 %i.fd, 183
  br i1 %i.fe, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ff = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.6, ptr noundef nonnull %0)
  %i.fg = getelementptr i8, ptr %0, i64 24
  %.val239 = load i32, ptr %i.fg, align 8, !tbaa !22
  %i.fh = getelementptr i8, ptr %0, i64 32
  %.val240 = load ptr, ptr %i.fh, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val239, ptr %.val240, ptr noundef %i.ff)
  br label %.critedge

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call noundef i32 %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.fl = icmp eq i32 %i.fk, 182
  br i1 %i.fl, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = tail call noundef i32 %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.fp = icmp eq i32 %i.fo, 182
  br i1 %i.fp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fq = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.7, ptr noundef nonnull %0)
  %i.fr = getelementptr i8, ptr %0, i64 24
  %.val237 = load i32, ptr %i.fr, align 8, !tbaa !22
  %i.fs = getelementptr i8, ptr %0, i64 32
  %.val238 = load ptr, ptr %i.fs, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val237, ptr %.val238, ptr noundef %i.fq)
  br label %.critedge

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.ft = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = tail call noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.fw = icmp eq i32 %i.fv, 180
  br i1 %i.fw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fx = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = tail call noundef i32 %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ga = icmp eq i32 %i.fz, 180
  br i1 %i.ga, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gb = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.8, ptr noundef nonnull %0)
  %i.gc = getelementptr i8, ptr %0, i64 24
  %.val235 = load i32, ptr %i.gc, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE:bb.a
  %i.ni = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.27, ptr noundef %i.nh, ptr noundef nonnull @.str.26, ptr noundef nonnull %0)
  %i.nj = getelementptr i8, ptr %0, i64 24
  %.val199 = load i32, ptr %i.nj, align 8, !tbaa !22
  %i.nk = getelementptr i8, ptr %0, i64 32
  %.val200 = load ptr, ptr %i.nk, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val199, ptr %.val200, ptr noundef %i.ni)
  br label %.critedge

bb.cr:                                            ; preds = %bb.cp
  %i.nl = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = tail call noundef i32 %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.no = icmp eq i32 %i.nn, 180
  br i1 %i.no, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.np = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.nq = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.24, ptr noundef %i.np, ptr noundef nonnull @.str.28, ptr noundef nonnull %0)
  %i.nr = getelementptr i8, ptr %0, i64 24
  %.val197 = load i32, ptr %i.nr, align 8, !tbaa !22
  %i.ns = getelementptr i8, ptr %0, i64 32
  %.val198 = load ptr, ptr %i.ns, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val197, ptr %.val198, ptr noundef %i.nq)
  br label %.critedge

bb.ct:                                            ; preds = %bb.cr
  %i.nt = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = tail call noundef i32 %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.nw = icmp eq i32 %i.nv, 179
  br i1 %i.nw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.nx = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ny = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.27, ptr noundef %i.nx, ptr noundef nonnull @.str.28, ptr noundef nonnull %0)
  %i.nz = getelementptr i8, ptr %0, i64 24
  %.val195 = load i32, ptr %i.nz, align 8, !tbaa !22
  %i.oa = getelementptr i8, ptr %0, i64 32
  %.val196 = load ptr, ptr %i.oa, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val195, ptr %.val196, ptr noundef %i.ny)
  br label %.critedge

bb.cv:                                            ; preds = %bb.ct
  %i.ob = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = tail call noundef i32 %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.oe = icmp eq i32 %i.od, 184
  br i1 %i.oe, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.of = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.og = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.24, ptr noundef %i.of, ptr noundef nonnull @.str.29, ptr noundef nonnull %0)
  %i.oh = getelementptr i8, ptr %0, i64 24
  %.val193 = load i32, ptr %i.oh, align 8, !tbaa !22
  %i.oi = getelementptr i8, ptr %0, i64 32
  %.val194 = load ptr, ptr %i.oi, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val193, ptr %.val194, ptr noundef %i.og)
  br label %.critedge

bb.cx:                                            ; preds = %bb.cv
  %i.oj = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = tail call noundef i32 %i.ok(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.om = icmp eq i32 %i.ol, 178
  br i1 %i.om, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.on = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.oo = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.24, ptr noundef %i.on, ptr noundef nonnull @.str.30, ptr noundef nonnull %0)
  %i.op = getelementptr i8, ptr %0, i64 24
  %.val191 = load i32, ptr %i.op, align 8, !tbaa !22
  %i.oq = getelementptr i8, ptr %0, i64 32
  %.val192 = load ptr, ptr %i.oq, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val191, ptr %.val192, ptr noundef %i.oo)
  br label %.critedge

bb.cz:                                            ; preds = %bb.cx
  %i.or = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = tail call noundef i32 %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.ou = icmp eq i32 %i.ot, 177
  br i1 %i.ou, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ov = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ow = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.27, ptr noundef %i.ov, ptr noundef nonnull @.str.31, ptr noundef nonnull %0)
  %i.ox = getelementptr i8, ptr %0, i64 24
  %.val189 = load i32, ptr %i.ox, align 8, !tbaa !22
  %i.oy = getelementptr i8, ptr %0, i64 32
  %.val190 = load ptr, ptr %i.oy, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val189, ptr %.val190, ptr noundef %i.ow)
  br label %.critedge

bb.db:                                            ; preds = %bb.cz
  %i.oz = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = tail call noundef i32 %i.pa(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.pc = icmp eq i32 %i.pb, 176
  br i1 %i.pc, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.pd = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.pe = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.24, ptr noundef %i.pd, ptr noundef nonnull @.str.32, ptr noundef nonnull %0)
  %i.pf = getelementptr i8, ptr %0, i64 24
  %.val187 = load i32, ptr %i.pf, align 8, !tbaa !22
  %i.pg = getelementptr i8, ptr %0, i64 32
  %.val188 = load ptr, ptr %i.pg, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val187, ptr %.val188, ptr noundef %i.pe)
  br label %.critedge

bb.dd:                                            ; preds = %bb.db
  %i.ph = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = tail call noundef i32 %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.pk = icmp eq i32 %i.pj, 175
  br i1 %i.pk, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.pl = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.pm = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.27, ptr noundef %i.pl, ptr noundef nonnull @.str.32, ptr noundef nonnull %0)
  %i.pn = getelementptr i8, ptr %0, i64 24
  %.val185 = load i32, ptr %i.pn, align 8, !tbaa !22
  %i.po = getelementptr i8, ptr %0, i64 32
  %.val186 = load ptr, ptr %i.po, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val185, ptr %.val186, ptr noundef %i.pm)
  br label %.critedge

bb.df:                                            ; preds = %bb.dd
  %i.pp = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = tail call noundef i32 %i.pq(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.ps = icmp eq i32 %i.pr, 174
  br i1 %i.ps, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.pt = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.pu = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.24, ptr noundef %i.pt, ptr noundef nonnull @.str.33, ptr noundef nonnull %0)
  %i.pv = getelementptr i8, ptr %0, i64 24
  %.val183 = load i32, ptr %i.pv, align 8, !tbaa !22
  %i.pw = getelementptr i8, ptr %0, i64 32
  %.val184 = load ptr, ptr %i.pw, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val183, ptr %.val184, ptr noundef %i.pu)
  br label %.critedge

bb.dh:                                            ; preds = %bb.df
  %i.px = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = tail call noundef i32 %i.py(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.qa = icmp eq i32 %i.pz, 173
  br i1 %i.qa, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.qb = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.qc = tail call noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef nonnull @.str.27, ptr noundef %i.qb, ptr noundef nonnull @.str.33, ptr noundef nonnull %0)
  %i.qd = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.qd, align 8, !tbaa !22
  %i.qe = getelementptr i8, ptr %0, i64 32
  %.val182 = load ptr, ptr %i.qe, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val, ptr %.val182, ptr noundef %i.qc)
  br label %.critedge

bb.dj:                                            ; preds = %bb.dh
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str, i32 noundef 255, ptr noundef nonnull @.str.1)
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.b, %bb.d, %bb.g, %bb.m, %bb.af, %bb.al, %bb.ar, %bb.ax, %bb.bd, %bb.bj, %bb.bp, %bb.bv, %bb.cb, %bb.ch, %bb.cm, %bb.cq, %bb.cu, %bb.cy, %bb.dc, %bb.dg, %bb.dj, %bb.di, %bb.de, %bb.da, %bb.cw, %bb.cs, %bb.co, %bb.ck, %bb.ce, %bb.by, %bb.bs, %bb.bm, %bb.bg, %bb.ba, %bb.au, %bb.ao, %bb.ai, %bb.j, %bb.u, %bb.v, %bb.r, %bb.s, %bb.ac, %bb.ab
  ret void
}

declare void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2kc20impl_abstract_phylum2eqEPKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.24.val, ptr %.32.val, ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.32.val, i32 noundef %.24.val)
  %i.b = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.a, ptr noundef %0)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.b)
  ret void
}

declare noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %5

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load ptr, ptr %3, align 8, !tbaa !10       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 17 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = icmp eq i32 %i.j, 172
  br i1 %i.k, label %.critedge, label %bb.c

5:                                                ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.55, i32 noundef 277, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.o = icmp eq i32 %i.n, 172
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !25
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !18   ; 70 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !19   ; 46 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.aa = icmp eq i32 %i.z, 185
  br i1 %i.aa, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ae = icmp eq i32 %i.ad, 185
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = icmp eq ptr %i.ai, %i.am
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call noundef zeroext i1 @_ZNK2kc20impl_abstract_phylum2eqEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak)
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call noundef ptr @_ZN2kc22Problem1S1ID1S1ID1S1IDEPKcPNS_7impl_IDES1_S3_S1_S3_(ptr noundef nonnull @.str.56, ptr noundef nonnull %0, ptr noundef nonnull @.str.57, ptr noundef %i.ak, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.ag)
  %i.aq = getelementptr i8, ptr %0, i64 24
  %.val233 = load i32, ptr %i.aq, align 8, !tbaa !22
  %i.ar = getelementptr i8, ptr %0, i64 32
  %.val234 = load ptr, ptr %i.ar, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val233, ptr %.val234, ptr noundef %i.ap)
  br label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !23
  %i.ax = tail call noundef ptr @_ZN2kc9mkintegerEi(i32 noundef %i.aw)
  %i.ay = tail call noundef ptr @_ZN2kc17ScopeTypeFileLineEPNS_17impl_integer__IntEPNS_11impl_IDtypeEPNS_20impl_casestring__StrES1_(ptr noundef %i.ai, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = tail call noundef ptr @_ZN2kc26ConsscopetypefilelinestackEPNS_22impl_scopetypefilelineEPNS_27impl_scopetypefilelinestackE(ptr noundef %i.ay, ptr noundef %i.ba)
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !35
  store ptr %1, ptr %i.f, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !22
  store i32 %i.bd, ptr %i.av, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24
  store ptr %i.bf, ptr %i.at, align 8, !tbaa !25
  br label %.critedge

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.bj = icmp eq i32 %i.bi, 183
  br i1 %i.bj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.bn = icmp eq i32 %i.bm, 183
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %2, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.59, ptr noundef nonnull %0)
  %i.bp = getelementptr i8, ptr %0, i64 24
  %.val231 = load i32, ptr %i.bp, align 8, !tbaa !22
  %i.bq = getelementptr i8, ptr %0, i64 32
  %.val232 = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.br = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val232, i32 noundef %.val231)
  %i.bs = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.br, ptr noundef %i.bo)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.bs)
  br label %.critedge

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.bt = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.bw = icmp eq i32 %i.bv, 183
  br i1 %i.bw, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ca = icmp eq i32 %i.bz, 182
  br i1 %i.ca, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %2, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cb = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.60, ptr noundef nonnull %0)
  %i.cc = getelementptr i8, ptr %0, i64 24
  %.val229 = load i32, ptr %i.cc, align 8, !tbaa !22
  %i.cd = getelementptr i8, ptr %0, i64 32
  %.val230 = load ptr, ptr %i.cd, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val229, ptr %.val230, ptr noundef %i.cb)
  br label %.critedge

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.ch = icmp eq i32 %i.cg, 182
  br i1 %i.ch, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cl = icmp eq i32 %i.ck, 183
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.61, ptr noundef nonnull %0)
  %i.cn = getelementptr i8, ptr %0, i64 24
  %.val227 = load i32, ptr %i.cn, align 8, !tbaa !22
  %i.co = getelementptr i8, ptr %0, i64 32
  %.val228 = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cp = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val228, i32 noundef %.val227)
  %i.cq = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.cp, ptr noundef %i.cm)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.cq)
  br label %.critedge

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.cu = icmp eq i32 %i.ct, 182
  br i1 %i.cu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cy = icmp eq i32 %i.cx, 182
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.62, ptr noundef nonnull %0)
  %i.da = getelementptr i8, ptr %0, i64 24
  %.val225 = load i32, ptr %i.da, align 8, !tbaa !22
  %i.db = getelementptr i8, ptr %0, i64 32
  %.val226 = load ptr, ptr %i.db, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val225, ptr %.val226, ptr noundef %i.cz)
  br label %.critedge

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef i32 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.df = icmp eq i32 %i.de, 180
  br i1 %i.df, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dg = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.dj = icmp eq i32 %i.di, 180
  br i1 %i.dj, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  br i1 %2, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.dk = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.63, ptr noundef nonnull %0)
  %i.dl = getelementptr i8, ptr %0, i64 24
  %.val223 = load i32, ptr %i.dl, align 8, !tbaa !22
  %i.dm = getelementptr i8, ptr %0, i64 32
  %.val224 = load ptr, ptr %i.dm, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val223, ptr %.val224, ptr noundef %i.dk)
  br label %.critedge

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.dq = icmp eq i32 %i.dp, 180
  br i1 %i.dq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call noundef i32 %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.du = icmp eq i32 %i.dt, 179
  br i1 %i.du, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %2, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.dv = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.64, ptr noundef nonnull %0)
  %i.dw = getelementptr i8, ptr %0, i64 24
  %.val221 = load i32, ptr %i.dw, align 8, !tbaa !22
  %i.dx = getelementptr i8, ptr %0, i64 32
  %.val222 = load ptr, ptr %i.dx, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val221, ptr %.val222, ptr noundef %i.dv)
  br label %.critedge

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.dy = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef i32 %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.eb = icmp eq i32 %i.ea, 179
  br i1 %i.eb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ef = icmp eq i32 %i.ee, 180
  br i1 %i.ef, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eg = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.65, ptr noundef nonnull %0)
  %i.eh = getelementptr i8, ptr %0, i64 24
  %.val219 = load i32, ptr %i.eh, align 8, !tbaa !22
  %i.ei = getelementptr i8, ptr %0, i64 32
  %.val220 = load ptr, ptr %i.ei, align 8, !tbaa !24
  tail call fastcc void @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE(i32 %.val219, ptr %.val220, ptr noundef %i.eg)
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ej = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call noundef i32 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.em = icmp eq i32 %i.el, 179
  br i1 %i.em, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
end_hunk_1
