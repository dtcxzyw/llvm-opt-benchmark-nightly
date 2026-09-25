Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pm_integer?download=true
inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pm_integer_string:bb.a
  %i.bv = mul i64 %index, -9
  %i.bw = mul i64 %index, -9
  %i.bx = getelementptr i8, ptr %invariant.gep, i64 %i.bt ; 9 uses
  %i.by = getelementptr i8, ptr %invariant.gep, i64 %i.bu ; 9 uses
  %i.bz = getelementptr i8, ptr %invariant.gep, i64 %i.bv ; 9 uses
  %i.ca = getelementptr i8, ptr %invariant.gep, i64 %i.bw ; 9 uses
  %wide.load.frozen = freeze <4 x i32> %wide.load ; 2 uses
  %i.cb = udiv <4 x i32> %wide.load.frozen, splat (i32 10) ; 2 uses
  %i.cc = mul <4 x i32> %i.cb, splat (i32 10)
  %.decomposed = sub <4 x i32> %wide.load.frozen, %i.cc
  %i.cd = trunc nuw nsw <4 x i32> %.decomposed to <4 x i8>
  %i.ce = or disjoint <4 x i8> %i.cd, splat (i8 48) ; 4 uses
  %i.cf = getelementptr i8, ptr %i.bx, i64 -1
  %i.cg = getelementptr i8, ptr %i.by, i64 -10
  %i.ch = getelementptr i8, ptr %i.bz, i64 -19
  %i.ci = getelementptr i8, ptr %i.ca, i64 -28
  %i.cj = extractelement <4 x i8> %i.ce, i64 0
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !13, !alias.scope !45
  %i.ck = extractelement <4 x i8> %i.ce, i64 1
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !13, !alias.scope !45
  %i.cl = extractelement <4 x i8> %i.ce, i64 2
  store i8 %i.cl, ptr %i.ch, align 1, !tbaa !13, !alias.scope !45
  %i.cm = extractelement <4 x i8> %i.ce, i64 3
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !13, !alias.scope !45
  %i.cn = urem <4 x i32> %i.cb, splat (i32 10)
  %i.co = trunc nuw nsw <4 x i32> %i.cn to <4 x i8>
  %i.cp = or disjoint <4 x i8> %i.co, splat (i8 48) ; 4 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 -2
  %i.cr = getelementptr i8, ptr %i.by, i64 -11
  %i.cs = getelementptr i8, ptr %i.bz, i64 -20
  %i.ct = getelementptr i8, ptr %i.ca, i64 -29
  %i.cu = extractelement <4 x i8> %i.cp, i64 0
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !13, !alias.scope !45
  %i.cv = extractelement <4 x i8> %i.cp, i64 1
  store i8 %i.cv, ptr %i.cr, align 1, !tbaa !13, !alias.scope !45
  %i.cw = extractelement <4 x i8> %i.cp, i64 2
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !13, !alias.scope !45
  %i.cx = extractelement <4 x i8> %i.cp, i64 3
  store i8 %i.cx, ptr %i.ct, align 1, !tbaa !13, !alias.scope !45
  %i.cy = udiv <4 x i32> %wide.load, splat (i32 100)
  %i.cz = urem <4 x i32> %i.cy, splat (i32 10)
  %i.da = trunc nuw nsw <4 x i32> %i.cz to <4 x i8>
  %i.db = or disjoint <4 x i8> %i.da, splat (i8 48) ; 4 uses
  %i.dc = getelementptr i8, ptr %i.bx, i64 -3
  %i.dd = getelementptr i8, ptr %i.by, i64 -12
  %i.de = getelementptr i8, ptr %i.bz, i64 -21
  %i.df = getelementptr i8, ptr %i.ca, i64 -30
  %i.dg = extractelement <4 x i8> %i.db, i64 0
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !13, !alias.scope !45
  %i.dh = extractelement <4 x i8> %i.db, i64 1
  store i8 %i.dh, ptr %i.dd, align 1, !tbaa !13, !alias.scope !45
  %i.di = extractelement <4 x i8> %i.db, i64 2
  store i8 %i.di, ptr %i.de, align 1, !tbaa !13, !alias.scope !45
  %i.dj = extractelement <4 x i8> %i.db, i64 3
  store i8 %i.dj, ptr %i.df, align 1, !tbaa !13, !alias.scope !45
  %i.dk = udiv <4 x i32> %wide.load, splat (i32 1000)
  %i.dl = urem <4 x i32> %i.dk, splat (i32 10)
  %i.dm = trunc nuw nsw <4 x i32> %i.dl to <4 x i8>
  %i.dn = or disjoint <4 x i8> %i.dm, splat (i8 48) ; 4 uses
  %i.do = getelementptr i8, ptr %i.bx, i64 -4
  %i.dp = getelementptr i8, ptr %i.by, i64 -13
  %i.dq = getelementptr i8, ptr %i.bz, i64 -22
  %i.dr = getelementptr i8, ptr %i.ca, i64 -31
  %i.ds = extractelement <4 x i8> %i.dn, i64 0
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !13, !alias.scope !45
  %i.dt = extractelement <4 x i8> %i.dn, i64 1
  store i8 %i.dt, ptr %i.dp, align 1, !tbaa !13, !alias.scope !45
  %i.du = extractelement <4 x i8> %i.dn, i64 2
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !13, !alias.scope !45
  %i.dv = extractelement <4 x i8> %i.dn, i64 3
  store i8 %i.dv, ptr %i.dr, align 1, !tbaa !13, !alias.scope !45
  %i.dw = udiv <4 x i32> %wide.load, splat (i32 10000)
  %i.dx = urem <4 x i32> %i.dw, splat (i32 10)
  %i.dy = trunc nuw nsw <4 x i32> %i.dx to <4 x i8>
  %i.dz = or disjoint <4 x i8> %i.dy, splat (i8 48) ; 4 uses
  %i.ea = getelementptr i8, ptr %i.bx, i64 -5
  %i.eb = getelementptr i8, ptr %i.by, i64 -14
  %i.ec = getelementptr i8, ptr %i.bz, i64 -23
  %i.ed = getelementptr i8, ptr %i.ca, i64 -32
  %i.ee = extractelement <4 x i8> %i.dz, i64 0
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !13, !alias.scope !45
  %i.ef = extractelement <4 x i8> %i.dz, i64 1
  store i8 %i.ef, ptr %i.eb, align 1, !tbaa !13, !alias.scope !45
  %i.eg = extractelement <4 x i8> %i.dz, i64 2
  store i8 %i.eg, ptr %i.ec, align 1, !tbaa !13, !alias.scope !45
  %i.eh = extractelement <4 x i8> %i.dz, i64 3
  store i8 %i.eh, ptr %i.ed, align 1, !tbaa !13, !alias.scope !45
  %i.ei = udiv <4 x i32> %wide.load, splat (i32 100000)
  %i.ej = trunc nuw <4 x i32> %i.ei to <4 x i16>
  %i.ek = urem <4 x i16> %i.ej, splat (i16 10)
  %i.el = trunc nuw nsw <4 x i16> %i.ek to <4 x i8>
  %i.em = or disjoint <4 x i8> %i.el, splat (i8 48) ; 4 uses
  %i.en = getelementptr i8, ptr %i.bx, i64 -6
  %i.eo = getelementptr i8, ptr %i.by, i64 -15
  %i.ep = getelementptr i8, ptr %i.bz, i64 -24
  %i.eq = getelementptr i8, ptr %i.ca, i64 -33
  %i.er = extractelement <4 x i8> %i.em, i64 0
  store i8 %i.er, ptr %i.en, align 1, !tbaa !13, !alias.scope !45
  %i.es = extractelement <4 x i8> %i.em, i64 1
  store i8 %i.es, ptr %i.eo, align 1, !tbaa !13, !alias.scope !45
  %i.et = extractelement <4 x i8> %i.em, i64 2
  store i8 %i.et, ptr %i.ep, align 1, !tbaa !13, !alias.scope !45
  %i.eu = extractelement <4 x i8> %i.em, i64 3
  store i8 %i.eu, ptr %i.eq, align 1, !tbaa !13, !alias.scope !45
  %i.ev = udiv <4 x i32> %wide.load, splat (i32 1000000)
  %i.ew = trunc nuw nsw <4 x i32> %i.ev to <4 x i16>
  %i.ex = urem <4 x i16> %i.ew, splat (i16 10)
  %i.ey = trunc nuw nsw <4 x i16> %i.ex to <4 x i8>
  %i.ez = or disjoint <4 x i8> %i.ey, splat (i8 48) ; 4 uses
  %i.fa = getelementptr i8, ptr %i.bx, i64 -7
  %i.fb = getelementptr i8, ptr %i.by, i64 -16
  %i.fc = getelementptr i8, ptr %i.bz, i64 -25
  %i.fd = getelementptr i8, ptr %i.ca, i64 -34
  %i.fe = extractelement <4 x i8> %i.ez, i64 0
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !13, !alias.scope !45
  %i.ff = extractelement <4 x i8> %i.ez, i64 1
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !13, !alias.scope !45
  %i.fg = extractelement <4 x i8> %i.ez, i64 2
  store i8 %i.fg, ptr %i.fc, align 1, !tbaa !13, !alias.scope !45
  %i.fh = extractelement <4 x i8> %i.ez, i64 3
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !13, !alias.scope !45
  %i.fi = udiv <4 x i32> %wide.load, splat (i32 10000000)
  %i.fj = trunc nuw nsw <4 x i32> %i.fi to <4 x i16>
  %i.fk = urem <4 x i16> %i.fj, splat (i16 10)
  %i.fl = trunc nuw nsw <4 x i16> %i.fk to <4 x i8>
  %i.fm = or disjoint <4 x i8> %i.fl, splat (i8 48) ; 4 uses
  %i.fn = getelementptr i8, ptr %i.bx, i64 -8
  %i.fo = getelementptr i8, ptr %i.by, i64 -17
  %i.fp = getelementptr i8, ptr %i.bz, i64 -26
  %i.fq = getelementptr i8, ptr %i.ca, i64 -35
  %i.fr = extractelement <4 x i8> %i.fm, i64 0
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !13, !alias.scope !45
  %i.fs = extractelement <4 x i8> %i.fm, i64 1
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !13, !alias.scope !45
  %i.ft = extractelement <4 x i8> %i.fm, i64 2
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !13, !alias.scope !45
  %i.fu = extractelement <4 x i8> %i.fm, i64 3
  store i8 %i.fu, ptr %i.fq, align 1, !tbaa !13, !alias.scope !45
  %i.fv = udiv <4 x i32> %wide.load, splat (i32 100000000)
  %i.fw = trunc nuw nsw <4 x i32> %i.fv to <4 x i8>
  %i.fx = urem <4 x i8> %i.fw, splat (i8 10)
  %i.fy = or disjoint <4 x i8> %i.fx, splat (i8 48) ; 4 uses
  %i.fz = getelementptr i8, ptr %i.bx, i64 -9
  %i.ga = getelementptr i8, ptr %i.by, i64 -18
  %i.gb = getelementptr i8, ptr %i.bz, i64 -27
  %i.gc = getelementptr i8, ptr %i.ca, i64 -36
  %i.gd = extractelement <4 x i8> %i.fy, i64 0
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !13, !alias.scope !45
  %i.ge = extractelement <4 x i8> %i.fy, i64 1
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !13, !alias.scope !45
  %i.gf = extractelement <4 x i8> %i.fy, i64 2
  store i8 %i.gf, ptr %i.gb, align 1, !tbaa !13, !alias.scope !45
  %i.gg = extractelement <4 x i8> %i.fy, i64 3
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !13, !alias.scope !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.03745.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.gi = add i64 %i.r, -1                        ; 2 uses
  %.not50 = icmp eq i64 %i.gi, 0
  br i1 %.not50, label %pm_integer_free.exit41, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader42, %.preheader
  %i.gj = phi i64 [ %i.gi, %.preheader ], [ -1, %.preheader42 ] ; 2 uses
  br label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.03745 = phi i64 [ %i.hn, %.lr.ph ], [ %.03745.ph, %.lr.ph.preheader81 ] ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %i.m, i64 %.03745
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !12 ; 6 uses
  %.neg = mul i64 %.03745, -9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.neg ; 2 uses
  %i.gm = urem i32 %i.gl, 10
  %i.gn = trunc nuw nsw i32 %i.gm to i8
  %i.go = or disjoint i8 %i.gn, 48
  %i.gp = getelementptr i8, ptr %gep, i64 -1
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !13
  %i.gq = udiv i32 %i.gl, 10000000
  %.lhs.trunc60 = trunc nuw nsw i32 %i.gq to i16
  %i.gr = urem i16 %.lhs.trunc60, 10
  %i.gs = trunc nuw nsw i16 %i.gr to i8
  %i.gt = udiv i32 %i.gl, 100000000
  %.lhs.trunc62 = trunc nuw nsw i32 %i.gt to i8
  %i.gu = urem i8 %.lhs.trunc62, 10
  %i.gv = getelementptr i8, ptr %gep, i64 -9
  %i.gw = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %i.gx = shufflevector <4 x i32> %i.gw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gy = udiv <4 x i32> %i.gx, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gz = urem <4 x i32> %i.gy, splat (i32 10)
  %i.ha = trunc nuw nsw <4 x i32> %i.gz to <4 x i8>
  %i.hb = udiv i32 %i.gl, 100000
  %.lhs.trunc = trunc nuw i32 %i.hb to i16
  %3 = udiv i32 %i.gl, 1000000
  %.lhs.trunc58 = trunc nuw nsw i32 %3 to i16
  %i.hc = insertelement <2 x i16> poison, i16 %.lhs.trunc58, i64 0
  %i.hd = insertelement <2 x i16> %i.hc, i16 %.lhs.trunc, i64 1
  %i.he = urem <2 x i16> %i.hd, splat (i16 10)
  %i.hf = insertelement <8 x i8> poison, i8 %i.gu, i64 0
  %i.hg = insertelement <8 x i8> %i.hf, i8 %i.gs, i64 1
  %i.hh = shufflevector <4 x i8> %i.ha, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hi = shufflevector <8 x i8> %i.hg, <8 x i8> %i.hh, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.hj = shufflevector <2 x i16> %i.he, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = trunc <8 x i16> %i.hj to <8 x i8>
  %i.hl = shufflevector <8 x i8> %i.hi, <8 x i8> %i.hk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hm = or disjoint <8 x i8> %i.hl, splat (i8 48)
  store <8 x i8> %i.hm, ptr %i.gv, align 1, !tbaa !13
  %i.hn = add nuw i64 %.03745, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hn, %i.q
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !42

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.i
  %.046 = phi i64 [ %i.hr, %bb.i ], [ 0, %.lr.ph47.preheader ] ; 3 uses
  %i.ho = getelementptr i8, ptr %i.s, i64 %.046
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !13
  %i.hq = icmp eq i8 %i.hp, 48
  br i1 %i.hq, label %bb.i, label %pm_integer_free.exit41

bb.i:                                             ; preds = %.lr.ph47
  %i.hr = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.hr, %i.gj
  br i1 %exitcond51.not, label %pm_integer_free.exit41, label %.lr.ph47, !llvm.loop !43

pm_integer_free.exit41:                           ; preds = %.lr.ph47, %bb.i, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.gj, %bb.i ], [ %.046, %.lr.ph47 ] ; 2 uses
  %i.hs = getelementptr i8, ptr %i.s, i64 %.0.lcssa
  %i.ht = sub i64 %i.r, %.0.lcssa
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef %i.hs, i64 noundef %i.ht) #16
  tail call void @free(ptr noundef %i.s) #16
  tail call void @free(ptr noundef nonnull %i.m) #16
  br label %bb.j

bb.j:                                             ; preds = %pm_integer_free.exit41, %bb.h, %pm_integer_free.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d
  ret void
}

declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @pm_buffer_append_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_integer_convert_base(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1000000000, 4294967297) %2, i64 noundef range(i64 1000000000, 4294967297) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pm_integer_t, align 8       ; 12 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 4 uses
  %6 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread141, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.e = add i64 %i.d, 1
  %i.f = lshr i64 %i.e, 1                         ; 4 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_convert_base) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 24) #15 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ae, label %.preheader

.thread141:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #15 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.ae, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.d
  %.not112 = icmp eq i64 %i.d, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread141, %.preheader
  %i.l = phi i64 [ %i.f, %.preheader ], [ 1, %.thread141 ]
  %.060102144150 = phi ptr [ %i.b, %.preheader ], [ %i.i, %.thread141 ] ; 2 uses
  %.061101145149 = phi i64 [ %i.d, %.preheader ], [ 1, %.thread141 ] ; 2 uses
  %i.m = phi ptr [ %i.g, %.preheader ], [ %i.j, %.thread141 ] ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %pm_integer_from_uint64.exit80, %.preheader
  %i.n = phi i64 [ %i.f, %.preheader ], [ %i.l, %pm_integer_from_uint64.exit80 ] ; 2 uses
  %i.o = phi ptr [ %i.g, %.preheader ], [ %i.m, %pm_integer_from_uint64.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = icmp samesign ult i64 %2, %3
  br i1 %i.p, label %bb.e, label %.preheader29.i

bb.e:                                             ; preds = %._crit_edge
  %i.q = trunc nuw i64 %2 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  br label %pm_integer_from_uint64.exit

.preheader29.i:                                   ; preds = %._crit_edge, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ 1, %._crit_edge ] ; 5 uses
  %.02331.i = phi i64 [ %i.t, %.preheader29.i ], [ %2, %._crit_edge ] ; 2 uses
  %.02430.i = phi i64 [ %i.s, %.preheader29.i ], [ 0, %._crit_edge ]
  %i.s = add i64 %.02430.i, 1                     ; 4 uses
  %i.t = udiv i64 %.02331.i, %3
  %.not.i = icmp samesign ugt i64 %3, %.02331.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not.i, label %bb.f, label %.preheader29.i, !llvm.loop !48

bb.f:                                             ; preds = %.preheader29.i
  %i.u = shl i64 %i.s, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %pm_integer_from_uint64.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not34.i = icmp eq i64 %i.s, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter164 = and i64 %indvars.iv.i, 1
  %i.x = icmp eq i64 %indvars.iv.i, 1
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter167 = and i64 %indvars.iv.i, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02532.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod166 = trunc i64 %indvars.iv.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.y = urem i64 %.02532.i.epil.init, %3
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %.033.i.epil.init
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  store i64 %i.s, ptr %4, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !21
  br label %pm_integer_from_uint64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.033.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %.02532.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %niter168 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter168.next.1, %.lr.ph.i ]
  %i.ac = urem i64 %.02532.i, %3
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = udiv i64 %.02532.i, %3                  ; 2 uses
  %i.ag = urem i64 %i.af, %3
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !12
  %i.ak = udiv i64 %i.af, %3                      ; 2 uses
  %i.al = add nuw i64 %.033.i, 2                  ; 2 uses
  %niter168.next.1 = add i64 %niter168, 2         ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !49

pm_integer_from_uint64.exit:                      ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.am = icmp samesign ugt i64 %i.n, 1
  br i1 %i.am, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %pm_integer_from_uint64.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %pm_integer_from_uint64.exit80
  %.057106 = phi i64 [ %i.ca, %pm_integer_from_uint64.exit80 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = getelementptr [4 x i8], ptr %.060102144150, i64 %.057106
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = zext i32 %i.ar to i64
  %i.at = or disjoint i64 %.057106, 1             ; 2 uses
  %i.au = icmp ult i64 %i.at, %.061101145149
  br i1 %i.au, label %bb.g, label %bb.h

end_hunk_0
