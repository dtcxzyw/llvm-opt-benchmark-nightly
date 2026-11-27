Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/PMurHash128?download=true
inline.NumInlined: 1
begin_hunk_0_@PMurHash128x86_Process:bb.a
  %i.da = mul i32 %i.cl, -1425107063
  %i.db = mul i32 %i.cl, -1752629248
  %i.dc = lshr i32 %i.da, 16
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = mul i32 %i.dd, 951274213                ; 2 uses
  %i.df = xor i32 %i.de, %.3255285                ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 17)
  %i.dh = add i32 %i.dg, %.3249286
  %i.di = mul i32 %i.dh, 5
  %i.dj = add i32 %i.di, 197830471                ; 2 uses
  %i.dk = mul i32 %i.cn, 951274213
  %i.dl = mul i32 %i.cn, -1781923840
  %i.dm = lshr i32 %i.dk, 15
  %i.dn = or disjoint i32 %i.dm, %i.dl
  %i.do = mul i32 %i.dn, -1578923117              ; 2 uses
  %i.dp = xor i32 %i.do, %.3249286                ; 2 uses
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 15)
  %i.dr = add i32 %i.dq, %.3243287
  %i.ds = mul i32 %i.dr, 5
  %i.dt = add i32 %i.ds, -1764942795              ; 2 uses
  %i.du = mul i32 %i.cp, -1578923117
  %i.dv = mul i32 %i.cp, 776732672
  %i.dw = lshr i32 %i.du, 14
  %i.dx = or disjoint i32 %i.dw, %i.dv
  %i.dy = mul i32 %i.dx, 597399067                ; 2 uses
  %i.dz = xor i32 %i.dy, %.3243287                ; 2 uses
  %i.ea = tail call i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 13)
  %i.eb = add i32 %i.ea, %i.cz
  %i.ec = mul i32 %i.eb, 5
  %i.ed = add i32 %i.ec, 850148119                ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3214288, i64 16 ; 3 uses
  %i.ef = icmp ult ptr %i.ee, %i.ch
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.3261.lcssa = phi i32 [ %.2260, %.loopexit ], [ %i.cz, %.lr.ph ] ; 2 uses
  %.3255.lcssa = phi i32 [ %.2254, %.loopexit ], [ %i.dj, %.lr.ph ] ; 2 uses
  %.3249.lcssa = phi i32 [ %.2248, %.loopexit ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.3243.lcssa = phi i32 [ %.2242, %.loopexit ], [ %i.ed, %.lr.ph ] ; 2 uses
  %.3237.lcssa = phi i32 [ %.2236, %.loopexit ], [ %i.cu, %.lr.ph ] ; 2 uses
  %.3231.lcssa = phi i32 [ %.2230, %.loopexit ], [ %i.de, %.lr.ph ] ; 2 uses
  %.3225.lcssa = phi i32 [ %.2224, %.loopexit ], [ %i.do, %.lr.ph ] ; 2 uses
  %.3219.lcssa = phi i32 [ %.2218, %.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.3214.lcssa = phi ptr [ %.2213, %.loopexit ], [ %i.ee, %.lr.ph ]
  %i.eg = and i32 %.1265, 15                      ; 2 uses
  %.not272297 = icmp eq i32 %i.eg, 0
  br i1 %.not272297, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %._crit_edge, %bb.m
  %.in320 = phi i32 [ %i.eh, %bb.m ], [ %i.eg, %._crit_edge ]
  %.3307 = phi i32 [ %.4, %bb.m ], [ %.2, %._crit_edge ] ; 6 uses
  %.4215306 = phi ptr [ %.5, %bb.m ], [ %.3214.lcssa, %._crit_edge ] ; 11 uses
  %.4220305 = phi i32 [ %.5221, %bb.m ], [ %.3219.lcssa, %._crit_edge ] ; 6 uses
  %.4226304 = phi i32 [ %.5227, %bb.m ], [ %.3225.lcssa, %._crit_edge ] ; 7 uses
  %.4232303 = phi i32 [ %.5233, %bb.m ], [ %.3231.lcssa, %._crit_edge ] ; 7 uses
  %.4238302 = phi i32 [ %.5239, %bb.m ], [ %.3237.lcssa, %._crit_edge ] ; 7 uses
  %.4244301 = phi i32 [ %.5245, %bb.m ], [ %.3243.lcssa, %._crit_edge ] ; 7 uses
  %.4250300 = phi i32 [ %.5251, %bb.m ], [ %.3249.lcssa, %._crit_edge ] ; 7 uses
  %.4256299 = phi i32 [ %.5257, %bb.m ], [ %.3255.lcssa, %._crit_edge ] ; 7 uses
  %.4262298 = phi i32 [ %.5263, %bb.m ], [ %.3261.lcssa, %._crit_edge ] ; 6 uses
  %i.eh = add nsw i32 %.in320, -1                 ; 2 uses
  switch i32 %.3307, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.i
    i32 6, label %bb.i
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 13, label %bb.k
    i32 14, label %bb.k
    i32 15, label %bb.l
  ]

bb.h:                                             ; preds = %.lr.ph309, %.lr.ph309, %.lr.ph309, %.lr.ph309
  %i.ei = getelementptr inbounds nuw i8, ptr %.4215306, i64 1
  %i.ej = load i8, ptr %.4215306, align 1, !tbaa !13
  %i.ek = zext i8 %i.ej to i32
  %i.el = tail call i32 @llvm.fshl.i32(i32 %i.ek, i32 %.4238302, i32 24)
  %i.em = add nuw nsw i32 %.3307, 1
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph309, %.lr.ph309, %.lr.ph309, %.lr.ph309
  %i.en = getelementptr inbounds nuw i8, ptr %.4215306, i64 1
  %i.eo = load i8, ptr %.4215306, align 1, !tbaa !13
  %i.ep = zext i8 %i.eo to i32
  %i.eq = tail call i32 @llvm.fshl.i32(i32 %i.ep, i32 %.4232303, i32 24)
  %i.er = add nuw nsw i32 %.3307, 1
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph309, %.lr.ph309, %.lr.ph309, %.lr.ph309
  %i.es = getelementptr inbounds nuw i8, ptr %.4215306, i64 1
  %i.et = load i8, ptr %.4215306, align 1, !tbaa !13
  %i.eu = zext i8 %i.et to i32
  %i.ev = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %.4226304, i32 24)
  %i.ew = add nuw nsw i32 %.3307, 1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph309, %.lr.ph309, %.lr.ph309
  %i.ex = getelementptr inbounds nuw i8, ptr %.4215306, i64 1
  %i.ey = load i8, ptr %.4215306, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i32
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ez, i32 %.4220305, i32 24)
  %i.fb = add nuw nsw i32 %.3307, 1
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph309
  %i.fc = getelementptr inbounds nuw i8, ptr %.4215306, i64 1
  %i.fd = load i8, ptr %.4215306, align 1, !tbaa !13
  %i.fe = zext i8 %i.fd to i32
  %i.ff = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %.4220305, i32 24) ; 2 uses
  %i.fg = mul i32 %.4238302, 597399067
  %i.fh = mul i32 %.4238302, -888307712
  %i.fi = lshr i32 %i.fg, 17
  %i.fj = or disjoint i32 %i.fi, %i.fh
  %i.fk = mul i32 %i.fj, -1425107063              ; 2 uses
  %i.fl = xor i32 %i.fk, %.4262298                ; 2 uses
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 19)
  %i.fn = add i32 %i.fm, %.4256299
  %i.fo = mul i32 %i.fn, 5
  %i.fp = add i32 %i.fo, 1444728091               ; 2 uses
  %i.fq = mul i32 %.4232303, -1425107063
  %i.fr = mul i32 %.4232303, -1752629248
  %i.fs = lshr i32 %i.fq, 16
  %i.ft = or disjoint i32 %i.fs, %i.fr
  %i.fu = mul i32 %i.ft, 951274213                ; 2 uses
  %i.fv = xor i32 %i.fu, %.4256299                ; 2 uses
  %i.fw = tail call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 17)
  %i.fx = add i32 %i.fw, %.4250300
  %i.fy = mul i32 %i.fx, 5
  %i.fz = add i32 %i.fy, 197830471
  %i.ga = mul i32 %.4226304, 951274213
  %i.gb = mul i32 %.4226304, -1781923840
  %i.gc = lshr i32 %i.ga, 15
  %i.gd = or disjoint i32 %i.gc, %i.gb
  %i.ge = mul i32 %i.gd, -1578923117              ; 2 uses
  %i.gf = xor i32 %i.ge, %.4250300                ; 2 uses
  %i.gg = tail call i32 @llvm.fshl.i32(i32 %i.gf, i32 %i.gf, i32 15)
  %i.gh = add i32 %i.gg, %.4244301
  %i.gi = mul i32 %i.gh, 5
  %i.gj = add i32 %i.gi, -1764942795
  %i.gk = mul i32 %i.ff, -1578923117
  %i.gl = mul i32 %i.ff, 776732672
  %i.gm = lshr i32 %i.gk, 14
  %i.gn = or disjoint i32 %i.gm, %i.gl
  %i.go = mul i32 %i.gn, 597399067                ; 2 uses
  %i.gp = xor i32 %i.go, %.4244301                ; 2 uses
  %i.gq = tail call i32 @llvm.fshl.i32(i32 %i.gp, i32 %i.gp, i32 13)
  %i.gr = add i32 %i.gq, %i.fp
  %i.gs = mul i32 %i.gr, 5
  %i.gt = add i32 %i.gs, 850148119
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph309, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.5263 = phi i32 [ %.4262298, %.lr.ph309 ], [ %.4262298, %bb.h ], [ %.4262298, %bb.i ], [ %.4262298, %bb.j ], [ %.4262298, %bb.k ], [ %i.fp, %bb.l ] ; 2 uses
  %.5257 = phi i32 [ %.4256299, %.lr.ph309 ], [ %.4256299, %bb.h ], [ %.4256299, %bb.i ], [ %.4256299, %bb.j ], [ %.4256299, %bb.k ], [ %i.fz, %bb.l ] ; 2 uses
  %.5251 = phi i32 [ %.4250300, %.lr.ph309 ], [ %.4250300, %bb.h ], [ %.4250300, %bb.i ], [ %.4250300, %bb.j ], [ %.4250300, %bb.k ], [ %i.gj, %bb.l ] ; 2 uses
  %.5245 = phi i32 [ %.4244301, %.lr.ph309 ], [ %.4244301, %bb.h ], [ %.4244301, %bb.i ], [ %.4244301, %bb.j ], [ %.4244301, %bb.k ], [ %i.gt, %bb.l ] ; 2 uses
  %.5239 = phi i32 [ %.4238302, %.lr.ph309 ], [ %i.el, %bb.h ], [ %.4238302, %bb.i ], [ %.4238302, %bb.j ], [ %.4238302, %bb.k ], [ %i.fk, %bb.l ] ; 2 uses
  %.5233 = phi i32 [ %.4232303, %.lr.ph309 ], [ %.4232303, %bb.h ], [ %i.eq, %bb.i ], [ %.4232303, %bb.j ], [ %.4232303, %bb.k ], [ %i.fu, %bb.l ] ; 2 uses
  %.5227 = phi i32 [ %.4226304, %.lr.ph309 ], [ %.4226304, %bb.h ], [ %.4226304, %bb.i ], [ %i.ev, %bb.j ], [ %.4226304, %bb.k ], [ %i.ge, %bb.l ] ; 2 uses
  %.5221 = phi i32 [ %.4220305, %.lr.ph309 ], [ %.4220305, %bb.h ], [ %.4220305, %bb.i ], [ %.4220305, %bb.j ], [ %i.fa, %bb.k ], [ %i.go, %bb.l ] ; 2 uses
  %.5 = phi ptr [ %.4215306, %.lr.ph309 ], [ %i.ei, %bb.h ], [ %i.en, %bb.i ], [ %i.es, %bb.j ], [ %i.ex, %bb.k ], [ %i.fc, %bb.l ]
  %.4 = phi i32 [ %.3307, %.lr.ph309 ], [ %i.em, %bb.h ], [ %i.er, %bb.i ], [ %i.ew, %bb.j ], [ %i.fb, %bb.k ], [ 0, %bb.l ] ; 2 uses
  %.not272 = icmp eq i32 %i.eh, 0
  br i1 %.not272, label %._crit_edge310, label %.lr.ph309, !llvm.loop !19

._crit_edge310:                                   ; preds = %bb.m, %._crit_edge
  %.4262.lcssa = phi i32 [ %.3261.lcssa, %._crit_edge ], [ %.5263, %bb.m ]
  %.4256.lcssa = phi i32 [ %.3255.lcssa, %._crit_edge ], [ %.5257, %bb.m ]
  %.4250.lcssa = phi i32 [ %.3249.lcssa, %._crit_edge ], [ %.5251, %bb.m ]
  %.4244.lcssa = phi i32 [ %.3243.lcssa, %._crit_edge ], [ %.5245, %bb.m ]
  %.4238.lcssa = phi i32 [ %.3237.lcssa, %._crit_edge ], [ %.5239, %bb.m ]
  %.4232.lcssa = phi i32 [ %.3231.lcssa, %._crit_edge ], [ %.5233, %bb.m ]
  %.4226.lcssa = phi i32 [ %.3225.lcssa, %._crit_edge ], [ %.5227, %bb.m ]
  %.4220.lcssa = phi i32 [ %.3219.lcssa, %._crit_edge ], [ %.5221, %bb.m ]
  %.3.lcssa = phi i32 [ %.2, %._crit_edge ], [ %.4, %bb.m ]
  store i32 %.4262.lcssa, ptr %0, align 4, !tbaa !12
  store i32 %.4256.lcssa, ptr %i.b, align 4, !tbaa !12
  store i32 %.4250.lcssa, ptr %i.d, align 4, !tbaa !12
  store i32 %.4244.lcssa, ptr %i.f, align 4, !tbaa !12
  store i32 %.4238.lcssa, ptr %1, align 4, !tbaa !12
  store i32 %.4232.lcssa, ptr %i.i, align 4, !tbaa !12
  store i32 %.4226.lcssa, ptr %i.k, align 4, !tbaa !12
  %i.gu = and i32 %.4220.lcssa, -256
  %i.gv = or i32 %.3.lcssa, %i.gu
  store i32 %i.gv, ptr %i.m, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @PMurHash128x86(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %4 = insertelement <4 x i32> poison, i32 %2, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %5, ptr %i.b, align 16, !tbaa !12
  call void @PMurHash128x86_Process(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1)
  call void @PMurHash128x86_Result(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @PMurHash128x64_Result(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 15                         ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.i = icmp samesign ugt i32 %i.g, 8
  %i.j = shl nuw nsw i32 %i.g, 3                  ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw nsw i32 128, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.e, %i.l                      ; 2 uses
  %i.n = mul i64 %i.m, 5545529020109919103
  %i.o = mul i64 %i.m, 5659660229084708864
  %i.p = lshr i64 %i.n, 31
  %i.q = or disjoint i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -8663945395140668459
  %i.s = xor i64 %i.r, %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = sub nuw nsw i32 64, %i.j
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.h, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.040 = phi i64 [ %i.s, %bb.c ], [ %i.c, %bb.d ]
  %.0 = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.d ]  ; 2 uses
  %i.w = mul i64 %.0, -8663945395140668459
  %i.x = mul i64 %.0, -8601547726154366976
  %i.y = lshr i64 %i.w, 33
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 5545529020109919103
  %i.ab = xor i64 %i.aa, %i.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.041 = phi i64 [ %i.ab, %bb.e ], [ %i.a, %bb.a ]
  %.1 = phi i64 [ %.040, %bb.e ], [ %i.c, %bb.a ]
  %i.ac = zext i32 %2 to i64                      ; 2 uses
  %i.ad = xor i64 %.041, %i.ac
  %i.ae = xor i64 %.1, %i.ac                      ; 2 uses
  %i.af = add i64 %i.ae, %i.ad                    ; 3 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = lshr i64 %i.af, 33
  %i.ai = xor i64 %i.ah, %i.af
  %i.aj = mul i64 %i.ai, -49064778989728563       ; 2 uses
  %i.ak = lshr i64 %i.aj, 33
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -4265267296055464877     ; 2 uses
  %i.an = lshr i64 %i.am, 33
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = lshr i64 %i.ag, 33
  %i.aq = xor i64 %i.ap, %i.ag
  %i.ar = mul i64 %i.aq, -49064778989728563       ; 2 uses
  %i.as = lshr i64 %i.ar, 33
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, -4265267296055464877     ; 2 uses
  %i.av = lshr i64 %i.au, 33
  %i.aw = xor i64 %i.av, %i.au                    ; 2 uses
  %i.ax = add i64 %i.aw, %i.ao                    ; 2 uses
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ax, ptr %3, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @PMurHash128x64_Process(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = and i32 %i.g, 15                         ; 2 uses
  %i.i = sub i32 0, %i.g
  %i.j = and i32 %i.i, 15                         ; 4 uses
  %.not = icmp eq i32 %i.j, 0
  %.not154 = icmp sgt i32 %i.j, %3
  %or.cond = or i1 %.not, %.not154
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.in = phi i32 [ %i.k, %bb.e ], [ %i.j, %bb.a ]
  %.0118163 = phi i32 [ %.1, %bb.e ], [ %i.h, %bb.a ] ; 4 uses
  %.0119162 = phi ptr [ %.1120, %bb.e ], [ %2, %bb.a ] ; 7 uses
  %.0124161 = phi i64 [ %.1125, %bb.e ], [ %i.f, %bb.a ] ; 4 uses
  %.0130160 = phi i64 [ %.1131, %bb.e ], [ %i.d, %bb.a ] ; 5 uses
  %.0136159 = phi i64 [ %.1137, %bb.e ], [ %i.c, %bb.a ] ; 5 uses
  %.0142158 = phi i64 [ %.1143, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %i.k = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %.0118163, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
    i32 11, label %bb.c
    i32 12, label %bb.c
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 15, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.0119162, i64 1
  %i.m = load i8, ptr %.0119162, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64
  %i.o = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %.0130160, i64 56)
  %i.p = add nuw nsw i32 %.0118163, 1
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %.0119162, i64 1
  %i.r = load i8, ptr %.0119162, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %.0124161, i64 56)
  %i.u = add nuw nsw i32 %.0118163, 1
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.0119162, i64 1
  %i.w = load i8, ptr %.0119162, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i64
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.x, i64 %.0124161, i64 56) ; 2 uses
  %i.z = mul i64 %.0130160, -8663945395140668459
  %i.aa = mul i64 %.0130160, -8601547726154366976
  %i.ab = lshr i64 %i.z, 33
  %i.ac = or disjoint i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 5545529020109919103      ; 2 uses
  %i.ae = xor i64 %i.ad, %.0142158                ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 27)
  %i.ag = add i64 %i.af, %.0136159
  %i.ah = mul i64 %i.ag, 5
  %i.ai = add i64 %i.ah, 1390208809               ; 2 uses
  %i.aj = mul i64 %i.y, 5545529020109919103
  %i.ak = mul i64 %i.y, 5659660229084708864
  %i.al = lshr i64 %i.aj, 31
  %i.am = or disjoint i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -8663945395140668459     ; 2 uses
  %i.ao = xor i64 %i.an, %.0136159                ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 31)
  %i.aq = add i64 %i.ap, %i.ai
  %i.ar = mul i64 %i.aq, 5
  %i.as = add i64 %i.ar, 944331445
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.b, %bb.c, %bb.d
  %.1143 = phi i64 [ %.0142158, %.preheader ], [ %.0142158, %bb.b ], [ %.0142158, %bb.c ], [ %i.ai, %bb.d ] ; 2 uses
  %.1137 = phi i64 [ %.0136159, %.preheader ], [ %.0136159, %bb.b ], [ %.0136159, %bb.c ], [ %i.as, %bb.d ] ; 2 uses
  %.1131 = phi i64 [ %.0130160, %.preheader ], [ %i.o, %bb.b ], [ %.0130160, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %.1125 = phi i64 [ %.0124161, %.preheader ], [ %.0124161, %bb.b ], [ %i.t, %bb.c ], [ %i.an, %bb.d ] ; 2 uses
  %.1120 = phi ptr [ %.0119162, %.preheader ], [ %i.l, %bb.b ], [ %i.q, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0118163, %.preheader ], [ %i.p, %bb.b ], [ %i.u, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %.not155 = icmp eq i32 %i.k, 0
  br i1 %.not155, label %.loopexit.loopexit, label %.preheader, !llvm.loop !20

.loopexit.loopexit:                               ; preds = %bb.e
  %i.at = sub nsw i32 %3, %i.j
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.1149 = phi i32 [ %3, %bb.a ], [ %i.at, %.loopexit.loopexit ] ; 3 uses
  %.2144 = phi i64 [ %i.a, %bb.a ], [ %.1143, %.loopexit.loopexit ] ; 2 uses
  %.2138 = phi i64 [ %i.c, %bb.a ], [ %.1137, %.loopexit.loopexit ] ; 2 uses
  %.2132 = phi i64 [ %i.d, %bb.a ], [ %.1131, %.loopexit.loopexit ]
  %.2126 = phi i64 [ %i.f, %bb.a ], [ %.1125, %.loopexit.loopexit ]
  %.2121 = phi ptr [ %2, %bb.a ], [ %.1120, %.loopexit.loopexit ] ; 3 uses
end_hunk_0
