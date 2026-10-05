Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_widecharwidth-db6165c9453cc6e9.fish_widecharwidth.755eaf80deca18e9-cgu.0?download=true
inline.NumInlined: 32
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_widthNtB2_7WcWidth9from_char:bb.a
  %i.dp = icmp ugt i32 %.val12.i.i52.5, %0
  %i.dq = select i1 %i.dp, i64 %i.dm, i64 %i.dn, !unpredictable !4 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @5, i64 %i.dr
  %.val12.i.i52.6 = load i32, ptr %i.ds, align 4, !alias.scope !60, !noalias !61, !noundef !4
  %i.dt = icmp ugt i32 %.val12.i.i52.6, %0
  %i.du = select i1 %i.dt, i64 %i.dq, i64 %i.dr, !unpredictable !4
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @5, i64 %i.du ; 2 uses
  %.val15.i.i54 = load i32, ptr %i.dv, align 4, !alias.scope !60, !noalias !61, !noundef !4 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %.val16.i.i55 = load i32, ptr %i.dw, align 4, !alias.scope !60, !noalias !61
  %.not.i.i.i56 = icmp uge i32 %0, %.val15.i.i54
  %.not1.i.i.i57 = icmp ule i32 %0, %.val16.i.i55
  %or.cond.i.not.i.i58 = select i1 %.not.i.i.i56, i1 %.not1.i.i.i57, i1 false
  %i.dx = icmp eq i32 %.val15.i.i54, %0
  %i.dy = or i1 %i.dx, %or.cond.i.not.i.i58
  br i1 %i.dy, label %_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table.exit.thread, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i.i49
  %i.dz = icmp samesign ult i32 %0, 8592
  %i.ea = select i1 %i.dz, i64 0, i64 89, !unpredictable !4 ; 2 uses
  %i.eb = add nuw nsw i64 %i.ea, 45               ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.eb
  %.val12.i.i63.1 = load i32, ptr %i.ec, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.ed = icmp ugt i32 %.val12.i.i63.1, %0
  %i.ee = select i1 %i.ed, i64 %i.ea, i64 %i.eb, !unpredictable !4 ; 2 uses
  %i.ef = add nuw nsw i64 %i.ee, 22               ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.ef
  %.val12.i.i63.2 = load i32, ptr %i.eg, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.eh = icmp ugt i32 %.val12.i.i63.2, %0
  %i.ei = select i1 %i.eh, i64 %i.ee, i64 %i.ef, !unpredictable !4 ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, 11               ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.ej
  %.val12.i.i63.3 = load i32, ptr %i.ek, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.el = icmp ugt i32 %.val12.i.i63.3, %0
  %i.em = select i1 %i.el, i64 %i.ei, i64 %i.ej, !unpredictable !4 ; 2 uses
  %i.en = add nuw nsw i64 %i.em, 6                ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.en
  %.val12.i.i63.4 = load i32, ptr %i.eo, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.ep = icmp ugt i32 %.val12.i.i63.4, %0
  %i.eq = select i1 %i.ep, i64 %i.em, i64 %i.en, !unpredictable !4 ; 2 uses
  %i.er = add nuw nsw i64 %i.eq, 3                ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.er
  %.val12.i.i63.5 = load i32, ptr %i.es, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.et = icmp ugt i32 %.val12.i.i63.5, %0
  %i.eu = select i1 %i.et, i64 %i.eq, i64 %i.er, !unpredictable !4 ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.ev
  %.val12.i.i63.6 = load i32, ptr %i.ew, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.ex = icmp ugt i32 %.val12.i.i63.6, %0
  %i.ey = select i1 %i.ex, i64 %i.eu, i64 %i.ev, !unpredictable !4 ; 2 uses
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.ez
  %.val12.i.i63.7 = load i32, ptr %i.fa, align 4, !alias.scope !62, !noalias !63, !noundef !4
  %i.fb = icmp ugt i32 %.val12.i.i63.7, %0
  %i.fc = select i1 %i.fb, i64 %i.ey, i64 %i.ez, !unpredictable !4
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.fc ; 2 uses
  %.val15.i.i65 = load i32, ptr %i.fd, align 4, !alias.scope !62, !noalias !63, !noundef !4 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  %.val16.i.i66 = load i32, ptr %i.fe, align 4, !alias.scope !62, !noalias !63
  %.not.i.i.i67 = icmp uge i32 %0, %.val15.i.i65
  %.not1.i.i.i68 = icmp ule i32 %0, %.val16.i.i66
  %or.cond.i.not.i.i69 = select i1 %.not.i.i.i67, i1 %.not1.i.i.i68, i1 false
  %i.ff = icmp eq i32 %.val15.i.i65, %0
  %i.fg = or i1 %i.ff, %or.cond.i.not.i.i69
  br i1 %i.fg, label %_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table.exit.thread, label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i60
  %i.fh = icmp samesign ult i32 %0, 67645
  %i.fi = select i1 %i.fh, i64 0, i64 378, !unpredictable !4 ; 2 uses
  %i.fj = add nuw nsw i64 %i.fi, 189              ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.fj
  %.val12.i.i74.1 = load i32, ptr %i.fk, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.fl = icmp ugt i32 %.val12.i.i74.1, %0
  %i.fm = select i1 %i.fl, i64 %i.fi, i64 %i.fj, !unpredictable !4 ; 2 uses
  %i.fn = add nuw nsw i64 %i.fm, 94               ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.fn
  %.val12.i.i74.2 = load i32, ptr %i.fo, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.fp = icmp ugt i32 %.val12.i.i74.2, %0
  %i.fq = select i1 %i.fp, i64 %i.fm, i64 %i.fn, !unpredictable !4 ; 2 uses
  %i.fr = add nuw nsw i64 %i.fq, 47               ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.fr
  %.val12.i.i74.3 = load i32, ptr %i.fs, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.ft = icmp ugt i32 %.val12.i.i74.3, %0
  %i.fu = select i1 %i.ft, i64 %i.fq, i64 %i.fr, !unpredictable !4 ; 2 uses
  %i.fv = add nuw nsw i64 %i.fu, 24               ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.fv
  %.val12.i.i74.4 = load i32, ptr %i.fw, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.fx = icmp ugt i32 %.val12.i.i74.4, %0
  %i.fy = select i1 %i.fx, i64 %i.fu, i64 %i.fv, !unpredictable !4 ; 2 uses
  %i.fz = add nuw nsw i64 %i.fy, 12               ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.fz
  %.val12.i.i74.5 = load i32, ptr %i.ga, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.gb = icmp ugt i32 %.val12.i.i74.5, %0
  %i.gc = select i1 %i.gb, i64 %i.fy, i64 %i.fz, !unpredictable !4 ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 6                ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.gd
  %.val12.i.i74.6 = load i32, ptr %i.ge, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.gf = icmp ugt i32 %.val12.i.i74.6, %0
  %i.gg = select i1 %i.gf, i64 %i.gc, i64 %i.gd, !unpredictable !4 ; 2 uses
  %i.gh = add nuw nsw i64 %i.gg, 3                ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.gh
  %.val12.i.i74.7 = load i32, ptr %i.gi, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.gj = icmp ugt i32 %.val12.i.i74.7, %0
  %i.gk = select i1 %i.gj, i64 %i.gg, i64 %i.gh, !unpredictable !4 ; 2 uses
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.gl
  %.val12.i.i74.8 = load i32, ptr %i.gm, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.gn = icmp ugt i32 %.val12.i.i74.8, %0
  %i.go = select i1 %i.gn, i64 %i.gk, i64 %i.gl, !unpredictable !4 ; 2 uses
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.gp
  %.val12.i.i74.9 = load i32, ptr %i.gq, align 4, !alias.scope !64, !noalias !65, !noundef !4
  %i.gr = icmp ugt i32 %.val12.i.i74.9, %0
  %i.gs = select i1 %i.gr, i64 %i.go, i64 %i.gp, !unpredictable !4
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @7, i64 %i.gs ; 2 uses
  %.val15.i.i76 = load i32, ptr %i.gt, align 4, !alias.scope !64, !noalias !65, !noundef !4 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 4
  %.val16.i.i77 = load i32, ptr %i.gu, align 4, !alias.scope !64, !noalias !65
  %.not.i.i.i78 = icmp uge i32 %0, %.val15.i.i76
  %.not1.i.i.i79 = icmp ule i32 %0, %.val16.i.i77
  %or.cond.i.not.i.i80 = select i1 %.not.i.i.i78, i1 %.not1.i.i.i79, i1 false
  %i.gv = icmp eq i32 %.val15.i.i76, %0
  %i.gw = or i1 %i.gv, %or.cond.i.not.i.i80
  br i1 %i.gw, label %_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table.exit.thread, label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %.lr.ph.i.i71
  %i.gx = icmp samesign ult i32 %0, 126980
  %i.gy = select i1 %i.gx, i64 0, i64 33, !unpredictable !4 ; 2 uses
  %i.gz = or disjoint i64 %i.gy, 16               ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.gz
  %.val12.i.i85.1 = load i32, ptr %i.ha, align 4, !alias.scope !66, !noalias !67, !noundef !4
  %i.hb = icmp ugt i32 %.val12.i.i85.1, %0
  %i.hc = select i1 %i.hb, i64 %i.gy, i64 %i.gz, !unpredictable !4 ; 2 uses
  %i.hd = or disjoint i64 %i.hc, 8                ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.hd
  %.val12.i.i85.2 = load i32, ptr %i.he, align 4, !alias.scope !66, !noalias !67, !noundef !4
  %i.hf = icmp ugt i32 %.val12.i.i85.2, %0
  %i.hg = select i1 %i.hf, i64 %i.hc, i64 %i.hd, !unpredictable !4 ; 2 uses
  %i.hh = or disjoint i64 %i.hg, 4                ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.hh
  %.val12.i.i85.3 = load i32, ptr %i.hi, align 4, !alias.scope !66, !noalias !67, !noundef !4
  %i.hj = icmp ugt i32 %.val12.i.i85.3, %0
  %i.hk = select i1 %i.hj, i64 %i.hg, i64 %i.hh, !unpredictable !4 ; 2 uses
  %i.hl = add nuw nsw i64 %i.hk, 2                ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.hl
  %.val12.i.i85.4 = load i32, ptr %i.hm, align 4, !alias.scope !66, !noalias !67, !noundef !4
  %i.hn = icmp ugt i32 %.val12.i.i85.4, %0
  %i.ho = select i1 %i.hn, i64 %i.hk, i64 %i.hl, !unpredictable !4 ; 2 uses
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.hp
  %.val12.i.i85.5 = load i32, ptr %i.hq, align 4, !alias.scope !66, !noalias !67, !noundef !4
  %i.hr = icmp ugt i32 %.val12.i.i85.5, %0
  %i.hs = select i1 %i.hr, i64 %i.ho, i64 %i.hp, !unpredictable !4 ; 2 uses
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.ht
  %.val12.i.i85.6 = load i32, ptr %i.hu, align 4, !alias.scope !66, !noalias !67, !noundef !4
  %i.hv = icmp ugt i32 %.val12.i.i85.6, %0
  %i.hw = select i1 %i.hv, i64 %i.hs, i64 %i.ht, !unpredictable !4
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr @8, i64 %i.hw ; 2 uses
  %.val15.i.i87 = load i32, ptr %i.hx, align 4, !alias.scope !66, !noalias !67, !noundef !4 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %.val16.i.i88 = load i32, ptr %i.hy, align 4, !alias.scope !66, !noalias !67
  %.not.i.i.i89 = icmp uge i32 %0, %.val15.i.i87
  %.not1.i.i.i90 = icmp ule i32 %0, %.val16.i.i88
  %or.cond.i.not.i.i91 = select i1 %.not.i.i.i89, i1 %.not1.i.i.i90, i1 false
  %i.hz = icmp eq i32 %.val15.i.i87, %0
  %i.ia = or i1 %i.hz, %or.cond.i.not.i.i91
  %spec.select = select i1 %i.ia, i8 7, i8 0
  br label %_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table.exit.thread

_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table.exit.thread: ; preds = %.lr.ph.i.i71, %.lr.ph.i.i60, %.lr.ph.i.i49, %.lr.ph.i.i38, %.lr.ph.i.i27, %.lr.ph.i.i16, %.lr.ph.i.i5, %.lr.ph.i.i.preheader, %bb.a, %.lr.ph.i.i82
  %.sroa.0.0 = phi i8 [ 4, %.lr.ph.i.i60 ], [ 1, %.lr.ph.i.i49 ], [ 0, %bb.a ], [ 5, %.lr.ph.i.i.preheader ], [ 2, %.lr.ph.i.i5 ], [ 8, %.lr.ph.i.i16 ], [ 3, %.lr.ph.i.i27 ], [ 3, %.lr.ph.i.i38 ], [ %spec.select, %.lr.ph.i.i82 ], [ 6, %.lr.ph.i.i71 ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsa4KW3MzOA87_18fish_widecharwidth14widechar_widthNtB4_13WcLookupTable3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65536 x i8]) align 1 captures(none) dereferenceable(65536) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [65536 x i8], align 1             ; 34 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.a, i8 0, i64 65536, i1 false)
  br label %bb.b

.loopexit233:                                     ; preds = %.lr.ph.preheader, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr @8, i64 %.sroa.0.0.idx236 ; 2 uses
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.add.1 = add nuw nsw i64 %.sroa.0.0.idx236, 16 ; 2 uses
  %i.c = load i32, ptr %.sroa.0.0.ptr.1, align 4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = load i32, ptr %i.d, align 4, !noundef !4
  %..i.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.e, i32 65535) ; 2 uses
  %.not.i234.1 = icmp ugt i32 %i.c, %..i.1
  br i1 %.not.i234.1, label %.loopexit233.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %.loopexit233
  %i.f = zext nneg i32 %i.c to i64
  %scevgep.1 = getelementptr i8, ptr %i.a, i64 %i.f
  %i.g = sub nuw nsw i32 %..i.1, %i.c
  %narrow.1 = add nuw nsw i32 %i.g, 1
  %i.h = zext nneg i32 %narrow.1 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.1, i8 7, i64 %i.h, i1 false)
  br label %.loopexit233.1

.loopexit233.1:                                   ; preds = %.lr.ph.preheader.1, %.loopexit233
  %i.i = icmp eq i64 %.sroa.0.0.add.1, 528
  br i1 %i.i, label %.preheader232, label %bb.b

bb.b:                                             ; preds = %.loopexit233.1, %bb.a
  %.sroa.0.0.idx236 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.1, %.loopexit233.1 ] ; 3 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr @8, i64 %.sroa.0.0.idx236 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.0.ptr, align 4, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %..i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.l, i32 65535) ; 2 uses
  %.not.i234 = icmp ugt i32 %i.j, %..i
  br i1 %.not.i234, label %.loopexit233, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = zext nneg i32 %i.j to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.m
  %i.n = sub nuw nsw i32 %..i, %i.j
  %narrow = add nuw nsw i32 %i.n, 1
  %i.o = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 7, i64 %i.o, i1 false)
  br label %.loopexit233

.loopexit231:                                     ; preds = %.lr.ph239.preheader, %.preheader232
  %i.p = getelementptr inbounds nuw i8, ptr @7, i64 %.sroa.07.0.idx240 ; 2 uses
  %.sroa.07.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.07.0.add.1 = add nuw nsw i64 %.sroa.07.0.idx240, 16 ; 2 uses
  %i.q = load i32, ptr %.sroa.07.0.ptr.1, align 4, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.s = load i32, ptr %i.r, align 4, !noundef !4
  %..i111.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.s, i32 65535) ; 2 uses
  %.not.i112237.1 = icmp ugt i32 %i.q, %..i111.1
  br i1 %.not.i112237.1, label %.loopexit231.1, label %.lr.ph239.preheader.1

.lr.ph239.preheader.1:                            ; preds = %.loopexit231
  %i.t = zext nneg i32 %i.q to i64
  %scevgep270.1 = getelementptr i8, ptr %i.a, i64 %i.t
  %i.u = sub nuw nsw i32 %..i111.1, %i.q
  %narrow290.1 = add nuw nsw i32 %i.u, 1
  %i.v = zext nneg i32 %narrow290.1 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep270.1, i8 6, i64 %i.v, i1 false)
  br label %.loopexit231.1

.loopexit231.1:                                   ; preds = %.lr.ph239.preheader.1, %.loopexit231
  %i.w = icmp eq i64 %.sroa.07.0.add.1, 6048
  br i1 %i.w, label %.preheader230, label %.preheader232

.preheader232:                                    ; preds = %.loopexit233.1, %.loopexit231.1
  %.sroa.07.0.idx240 = phi i64 [ %.sroa.07.0.add.1, %.loopexit231.1 ], [ 0, %.loopexit233.1 ] ; 3 uses
  %.sroa.07.0.ptr = getelementptr inbounds nuw i8, ptr @7, i64 %.sroa.07.0.idx240 ; 2 uses
  %i.x = load i32, ptr %.sroa.07.0.ptr, align 4, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0.ptr, i64 4
  %i.z = load i32, ptr %i.y, align 4, !noundef !4
  %..i111 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.z, i32 65535) ; 2 uses
  %.not.i112237 = icmp ugt i32 %i.x, %..i111
  br i1 %.not.i112237, label %.loopexit231, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %.preheader232
  %i.aa = zext nneg i32 %i.x to i64
  %scevgep270 = getelementptr i8, ptr %i.a, i64 %i.aa
  %i.ab = sub nuw nsw i32 %..i111, %i.x
  %narrow290 = add nuw nsw i32 %i.ab, 1
  %i.ac = zext nneg i32 %narrow290 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep270, i8 6, i64 %i.ac, i1 false)
  br label %.loopexit231

.loopexit229:                                     ; preds = %.lr.ph243.preheader, %.preheader230
  %i.ad = icmp eq i64 %.sroa.018.0.idx244, 1424
  br i1 %i.ad, label %.preheader228, label %.preheader230.1

.preheader230.1:                                  ; preds = %.loopexit229
  %i.ae = getelementptr inbounds nuw i8, ptr @6, i64 %.sroa.018.0.idx244 ; 2 uses
  %.sroa.018.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.018.0.add.1 = add nuw nsw i64 %.sroa.018.0.idx244, 16
  %i.af = load i32, ptr %.sroa.018.0.ptr.1, align 4, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !4
  %..i116.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.ah, i32 65535) ; 2 uses
  %.not.i117241.1 = icmp ugt i32 %i.af, %..i116.1
  br i1 %.not.i117241.1, label %.loopexit229.1, label %.lr.ph243.preheader.1

.lr.ph243.preheader.1:                            ; preds = %.preheader230.1
  %i.ai = zext nneg i32 %i.af to i64
  %scevgep272.1 = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.aj = sub nuw nsw i32 %..i116.1, %i.af
  %narrow291.1 = add nuw nsw i32 %i.aj, 1
  %i.ak = zext nneg i32 %narrow291.1 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep272.1, i8 4, i64 %i.ak, i1 false)
  br label %.loopexit229.1

.loopexit229.1:                                   ; preds = %.lr.ph243.preheader.1, %.preheader230.1
  br label %.preheader230

.preheader230:                                    ; preds = %.loopexit231.1, %.loopexit229.1
  %.sroa.018.0.idx244 = phi i64 [ %.sroa.018.0.add.1, %.loopexit229.1 ], [ 0, %.loopexit231.1 ] ; 4 uses
  %.sroa.018.0.ptr = getelementptr inbounds nuw i8, ptr @6, i64 %.sroa.018.0.idx244 ; 2 uses
  %i.al = load i32, ptr %.sroa.018.0.ptr, align 4, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.018.0.ptr, i64 4
  %i.an = load i32, ptr %i.am, align 4, !noundef !4
  %..i116 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.an, i32 65535) ; 2 uses
  %.not.i117241 = icmp ugt i32 %i.al, %..i116
  br i1 %.not.i117241, label %.loopexit229, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader230
  %i.ao = zext nneg i32 %i.al to i64
  %scevgep272 = getelementptr i8, ptr %i.a, i64 %i.ao
  %i.ap = sub nuw nsw i32 %..i116, %i.al
  %narrow291 = add nuw nsw i32 %i.ap, 1
  %i.aq = zext nneg i32 %narrow291 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep272, i8 4, i64 %i.aq, i1 false)
  br label %.loopexit229

.loopexit227:                                     ; preds = %.lr.ph247.preheader, %.preheader228
  %i.ar = getelementptr inbounds nuw i8, ptr @5, i64 %.sroa.029.0.idx248 ; 2 uses
  %.sroa.029.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.029.0.add.1 = add nuw nsw i64 %.sroa.029.0.idx248, 16 ; 2 uses
  %i.as = load i32, ptr %.sroa.029.0.ptr.1, align 4, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.au = load i32, ptr %i.at, align 4, !noundef !4
  %..i121.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.au, i32 65535) ; 2 uses
  %.not.i122245.1 = icmp ugt i32 %i.as, %..i121.1
  br i1 %.not.i122245.1, label %.loopexit227.1, label %.lr.ph247.preheader.1

.lr.ph247.preheader.1:                            ; preds = %.loopexit227
  %i.av = zext nneg i32 %i.as to i64
  %scevgep274.1 = getelementptr i8, ptr %i.a, i64 %i.av
  %i.aw = sub nuw nsw i32 %..i121.1, %i.as
  %narrow292.1 = add nuw nsw i32 %i.aw, 1
  %i.ax = zext nneg i32 %narrow292.1 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep274.1, i8 1, i64 %i.ax, i1 false)
  br label %.loopexit227.1

.loopexit227.1:                                   ; preds = %.lr.ph247.preheader.1, %.loopexit227
  %i.ay = icmp eq i64 %.sroa.029.0.add.1, 592
  br i1 %i.ay, label %.loopexit225.1, label %.preheader228

.preheader228:                                    ; preds = %.loopexit229, %.loopexit227.1
  %.sroa.029.0.idx248 = phi i64 [ %.sroa.029.0.add.1, %.loopexit227.1 ], [ 0, %.loopexit229 ] ; 3 uses
  %.sroa.029.0.ptr = getelementptr inbounds nuw i8, ptr @5, i64 %.sroa.029.0.idx248 ; 2 uses
  %i.az = load i32, ptr %.sroa.029.0.ptr, align 4, !noundef !4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.029.0.ptr, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !4
  %..i121 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.bb, i32 65535) ; 2 uses
  %.not.i122245 = icmp ugt i32 %i.az, %..i121
  br i1 %.not.i122245, label %.loopexit227, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %.preheader228
  %i.bc = zext nneg i32 %i.az to i64
  %scevgep274 = getelementptr i8, ptr %i.a, i64 %i.bc
  %i.bd = sub nuw nsw i32 %..i121, %i.az
  %narrow292 = add nuw nsw i32 %i.bd, 1
  %i.be = zext nneg i32 %narrow292 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep274, i8 1, i64 %i.be, i1 false)
  br label %.loopexit227

.loopexit225.1:                                   ; preds = %.loopexit227.1
  %scevgep276 = getelementptr inbounds nuw i8, ptr %i.a, i64 4448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %scevgep276, i8 3, i64 160, i1 false)
  %scevgep276.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 55216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %scevgep276.1, i8 3, i64 80, i1 false)
  br label %.preheader224

.loopexit223:                                     ; preds = %.lr.ph255.preheader, %.preheader224
  %i.bf = icmp eq i64 %.sroa.051.0.idx256, 2608
  br i1 %i.bf, label %.loopexit.2, label %.preheader224.1

.preheader224.1:                                  ; preds = %.loopexit223
  %i.bg = getelementptr inbounds nuw i8, ptr @3, i64 %.sroa.051.0.idx256 ; 2 uses
  %.sroa.051.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.051.0.add.1 = add nuw nsw i64 %.sroa.051.0.idx256, 16
  %i.bh = load i32, ptr %.sroa.051.0.ptr.1, align 4, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !4
  %..i131.1 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.bj, i32 65535) ; 2 uses
  %.not.i132253.1 = icmp ugt i32 %i.bh, %..i131.1
  br i1 %.not.i132253.1, label %.loopexit223.1, label %.lr.ph255.preheader.1

.lr.ph255.preheader.1:                            ; preds = %.preheader224.1
  %i.bk = zext nneg i32 %i.bh to i64
  %scevgep278.1 = getelementptr i8, ptr %i.a, i64 %i.bk
  %i.bl = sub nuw nsw i32 %..i131.1, %i.bh
  %narrow293.1 = add nuw nsw i32 %i.bl, 1
  %i.bm = zext nneg i32 %narrow293.1 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep278.1, i8 3, i64 %i.bm, i1 false)
  br label %.loopexit223.1

.loopexit223.1:                                   ; preds = %.lr.ph255.preheader.1, %.preheader224.1
  br label %.preheader224

.preheader224:                                    ; preds = %.loopexit223.1, %.loopexit225.1
  %.sroa.051.0.idx256 = phi i64 [ 0, %.loopexit225.1 ], [ %.sroa.051.0.add.1, %.loopexit223.1 ] ; 4 uses
  %.sroa.051.0.ptr = getelementptr inbounds nuw i8, ptr @3, i64 %.sroa.051.0.idx256 ; 2 uses
  %i.bn = load i32, ptr %.sroa.051.0.ptr, align 4, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.051.0.ptr, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !4
  %..i131 = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %i.bp, i32 65535) ; 2 uses
  %.not.i132253 = icmp ugt i32 %i.bn, %..i131
  br i1 %.not.i132253, label %.loopexit223, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %.preheader224
  %i.bq = zext nneg i32 %i.bn to i64
  %scevgep278 = getelementptr i8, ptr %i.a, i64 %i.bq
  %i.br = sub nuw nsw i32 %..i131, %i.bn
  %narrow293 = add nuw nsw i32 %i.br, 1
  %i.bs = zext nneg i32 %narrow293 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep278, i8 3, i64 %i.bs, i1 false)
  br label %.loopexit223

.loopexit.2:                                      ; preds = %.loopexit223
  %scevgep280 = getelementptr inbounds nuw i8, ptr %i.a, i64 64976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %scevgep280, i8 8, i64 32, i1 false)
  %scevgep280.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 65534
  store i16 2056, ptr %scevgep280.1, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 2, i64 32, i1 false)
  %scevgep282.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %scevgep282.1, i8 2, i64 33, i1 false)
  %scevgep282.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 173
  store i8 2, ptr %scevgep282.2, align 1
  %scevgep282.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %scevgep282.3, i8 2, i64 6, i1 false)
  %scevgep282.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1564
  store i8 2, ptr %scevgep282.4, align 1
  %scevgep282.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1757
  store i8 2, ptr %scevgep282.5, align 1
  %scevgep282.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1807
  store i8 2, ptr %scevgep282.6, align 1
  %scevgep282.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  store i16 514, ptr %scevgep282.7, align 1
  %scevgep282.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2274
  store i8 2, ptr %scevgep282.8, align 1
  %scevgep282.9 = getelementptr inbounds nuw i8, ptr %i.a, i64 6158
  store i8 2, ptr %scevgep282.9, align 1
  %scevgep282.10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep282.10, i8 2, i64 5, i1 false)
  %scevgep282.11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep282.11, i8 2, i64 7, i1 false)
  %scevgep282.12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep282.12, i8 2, i64 5, i1 false)
  %scevgep282.13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %scevgep282.13, i8 2, i64 10, i1 false)
  %scevgep282.14 = getelementptr inbounds nuw i8, ptr %i.a, i64 55296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %scevgep282.14, i8 2, i64 2048, i1 false)
  %scevgep282.15 = getelementptr inbounds nuw i8, ptr %i.a, i64 65279
  store i8 2, ptr %scevgep282.15, align 1
  %scevgep282.16 = getelementptr inbounds nuw i8, ptr %i.a, i64 65529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep282.16, i8 2, i64 3, i1 false)
  %scevgep284 = getelementptr inbounds nuw i8, ptr %i.a, i64 57344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6400) %scevgep284, i8 5, i64 6400, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %0, ptr noundef nonnull align 1 dereferenceable(65536) %i.a, i64 65536, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 0, 9) i8 @_RNvMs_NtCsa4KW3MzOA87_18fish_widecharwidth14widechar_widthNtB4_13WcLookupTable8classify(ptr noalias nofree noundef readonly captures(none) dereferenceable(65536) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 65536
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i8 @_RNvMNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_widthNtB2_7WcWidth9from_char(i32 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i8 %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !range !68, !noundef !4
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = distinct !{!5, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!6 = distinct !{!6, !5, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!7 = distinct !{!7, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!8 = distinct !{!8, !7, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!9 = distinct !{!9, !7, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!10 = distinct !{!10, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!11 = distinct !{!11, !10, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!12 = distinct !{!12, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!13 = distinct !{!13, !12, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!14 = distinct !{!14, !12, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!15 = distinct !{!15, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!16 = distinct !{!16, !15, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!17 = distinct !{!17, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!18 = distinct !{!18, !17, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!19 = distinct !{!19, !17, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!20 = distinct !{!20, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!21 = distinct !{!21, !20, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!22 = distinct !{!22, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!23 = distinct !{!23, !22, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!24 = distinct !{!24, !22, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!25 = distinct !{!25, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!26 = distinct !{!26, !25, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!27 = distinct !{!27, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!28 = distinct !{!28, !27, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!29 = distinct !{!29, !27, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!30 = distinct !{!30, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!31 = distinct !{!31, !30, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!32 = distinct !{!32, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!33 = distinct !{!33, !32, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!34 = distinct !{!34, !32, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!35 = distinct !{!35, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!36 = distinct !{!36, !35, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!37 = distinct !{!37, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!38 = distinct !{!38, !37, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!39 = distinct !{!39, !37, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!40 = distinct !{!40, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!41 = distinct !{!41, !40, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!42 = distinct !{!42, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!43 = distinct !{!43, !42, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!44 = distinct !{!44, !42, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!45 = distinct !{!45, i1 false, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table"}
!46 = distinct !{!46, !45, !"_RNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table: argument 0"}
!47 = distinct !{!47, i1 false, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_"}
!48 = distinct !{!48, !47, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 0"}
!49 = distinct !{!49, !47, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTmmE16binary_search_byNCNvNtCsa4KW3MzOA87_18fish_widecharwidth14widechar_width8in_table0EBX_: argument 1"}
!50 = !{!8, !6}
!51 = !{!9}
!52 = !{!13, !11}
!53 = !{!14}
!54 = !{!18, !16}
!55 = !{!19}
!56 = !{!23, !21}
!57 = !{!24}
!58 = !{!28, !26}
!59 = !{!29}
!60 = !{!33, !31}
!61 = !{!34}
!62 = !{!38, !36}
!63 = !{!39}
!64 = !{!43, !41}
!65 = !{!44}
!66 = !{!48, !46}
!67 = !{!49}
!68 = !{i8 0, i8 9}
end_hunk_0
