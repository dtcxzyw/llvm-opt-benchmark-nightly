Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCOFFEmitter?download=true
inline.NumInlined: 1311
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_111XCOFFWriter10writeXCOFFEv:bb.a
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i8, align 1                      ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca i16, align 2                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i8, align 1                      ; 4 uses
  %i.ai = alloca i8, align 1                      ; 4 uses
  %i.aj = alloca i16, align 2                     ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i8, align 1                      ; 4 uses
  %i.an = alloca i8, align 1                      ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i8, align 1                      ; 4 uses
  %i.aq = alloca i8, align 1                      ; 4 uses
  %i.ar = alloca i16, align 2                     ; 4 uses
  %i.as = alloca i32, align 4                     ; 4 uses
  %i.at = alloca i32, align 4                     ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.au = alloca i8, align 1                      ; 4 uses
  %i.av = alloca i8, align 1                      ; 4 uses
  %i.aw = alloca i16, align 2                     ; 4 uses
  %i.ax = alloca i16, align 2                     ; 4 uses
  %i.ay = alloca i16, align 2                     ; 4 uses
  %i.az = alloca i32, align 4                     ; 4 uses
  %i.ba = alloca i32, align 4                     ; 4 uses
  %i.bb = alloca i32, align 4                     ; 4 uses
  %i.bc = alloca i32, align 4                     ; 4 uses
  %i.bd = alloca i64, align 8                     ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.be = alloca i8, align 1                      ; 4 uses
  %i.bf = alloca i8, align 1                      ; 4 uses
  %i.bg = alloca i32, align 4                     ; 4 uses
  %i.bh = alloca i32, align 4                     ; 4 uses
  %i.bi = alloca i64, align 8                     ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"struct.llvm::XCOFFYAML::Section", align 8 ; 10 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.bj = alloca i32, align 4                     ; 4 uses
  %i.bk = alloca i16, align 2                     ; 4 uses
  %i.bl = alloca i16, align 2                     ; 4 uses
  %i.bm = alloca i32, align 4                     ; 4 uses
  %i.bn = alloca i32, align 4                     ; 4 uses
  %i.bo = alloca i32, align 4                     ; 4 uses
  %i.bp = alloca i32, align 4                     ; 4 uses
  %i.bq = alloca i32, align 4                     ; 4 uses
  %i.br = alloca i32, align 4                     ; 4 uses
  %i.bs = alloca i32, align 4                     ; 4 uses
  %i.bt = alloca i32, align 4                     ; 4 uses
  %i.bu = alloca i32, align 4                     ; 4 uses
  %i.bv = alloca i64, align 8                     ; 4 uses
  %i.bw = alloca i64, align 8                     ; 4 uses
  %i.bx = alloca i64, align 8                     ; 4 uses
  %i.by = alloca i64, align 8                     ; 4 uses
  %i.bz = alloca i64, align 8                     ; 4 uses
  %i.ca = alloca i64, align 8                     ; 4 uses
  %i.cb = alloca i16, align 2                     ; 4 uses
  %i.cc = alloca i16, align 2                     ; 4 uses
  %i.cd = alloca i16, align 2                     ; 4 uses
  %i.ce = alloca i8, align 1                      ; 4 uses
  %i.cf = alloca i8, align 1                      ; 4 uses
  %i.cg = alloca i8, align 1                      ; 4 uses
  %i.ch = alloca i8, align 1                      ; 4 uses
  %i.ci = alloca i32, align 4                     ; 4 uses
  %i.cj = alloca i32, align 4                     ; 4 uses
  %i.ck = alloca i64, align 8                     ; 4 uses
  %i.cl = alloca i64, align 8                     ; 4 uses
  %i.cm = alloca i64, align 8                     ; 4 uses
  %i.cn = alloca i64, align 8                     ; 4 uses
  %i.co = alloca i64, align 8                     ; 4 uses
  %i.cp = alloca i64, align 8                     ; 4 uses
  %i.cq = alloca i8, align 1                      ; 4 uses
  %i.cr = alloca i8, align 1                      ; 4 uses
  %i.cs = alloca i8, align 1                      ; 4 uses
  %i.ct = alloca i8, align 1                      ; 4 uses
  %i.cu = alloca i8, align 1                      ; 4 uses
  %i.cv = alloca i8, align 1                      ; 4 uses
  %i.cw = alloca i16, align 2                     ; 4 uses
  %i.cx = alloca i16, align 2                     ; 4 uses
  %i.cy = alloca i16, align 2                     ; 4 uses
  %i.cz = alloca i16, align 2                     ; 4 uses
  %i.da = alloca i16, align 2                     ; 4 uses
  %i.db = alloca i16, align 2                     ; 4 uses
  %i.dc = alloca i16, align 2                     ; 4 uses
  %i.dd = alloca i16, align 2                     ; 4 uses
  %i.de = alloca i16, align 2                     ; 4 uses
  %i.df = alloca i32, align 4                     ; 4 uses
  %i.dg = alloca i32, align 4                     ; 4 uses
  %i.dh = alloca i32, align 4                     ; 4 uses
  %i.di = alloca i32, align 4                     ; 4 uses
  %i.dj = alloca i32, align 4                     ; 4 uses
  %i.dk = alloca i32, align 4                     ; 4 uses
  %i.dl = alloca i32, align 4                     ; 4 uses
  %i.dm = alloca i64, align 8                     ; 4 uses
  %i.dn = alloca i64, align 8                     ; 4 uses
  %i.do = alloca i64, align 8                     ; 4 uses
  %i.dp = alloca i16, align 2                     ; 4 uses
  %i.dq = alloca i16, align 2                     ; 4 uses
  %i.dr = alloca i16, align 2                     ; 4 uses
  %i.ds = alloca i16, align 2                     ; 4 uses
  %i.dt = alloca i32, align 4                     ; 4 uses
  %i.du = alloca i32, align 4                     ; 4 uses
  %i.dv = alloca i32, align 4                     ; 4 uses
  %i.dw = alloca i16, align 2                     ; 4 uses
  %i.dx = alloca i16, align 2                     ; 4 uses
  %i.dy = alloca i64, align 8                     ; 4 uses
  %i.dz = alloca i32, align 4                     ; 4 uses
  %i.ea = alloca i16, align 2                     ; 4 uses
  %i.eb = alloca i16, align 2                     ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !53, !range !265, !noundef !69
  %i.ee = trunc nuw i8 %i.ed to i1                ; 3 uses
  %i.ef = select i1 %i.ee, i64 24, i64 20
  %i.eg = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !69, !align !70 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !290 ; 2 uses
  %.not.i = icmp eq i16 %i.ei, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ej = zext i16 %i.ei to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 240
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !291, !range !265, !noundef !69
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = select i1 %i.ee, i64 110, i64 72
  %spec.select.i = select i1 %i.em, i64 %i.en, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.ej, %bb.b ], [ %spec.select.i, %bb.c ] ; 3 uses
  %i.eo = select i1 %i.ee, i64 72, i64 40
  %i.ep = add nuw nsw i64 %.0.i, %i.ef
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79 ; 2 uses
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !78 ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = sdiv exact i64 %i.ew, 120               ; 2 uses
  %i.ey = mul nsw i64 %i.ex, %i.eo
  %i.ez = add nsw i64 %i.ep, %i.ey                ; 2 uses
  %i.fa = and i64 %i.ex, 65535                    ; 2 uses
  %.not69209.not.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not69209.not.i.i, label %.critedge73.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %.lr.ph.i.i
  %indvars.iv.i.a = phi i64 [ %i.ez, %.lr.ph.i.i ], [ %.1.i, %bb.z ] ; 5 uses
  %48 = phi ptr [ %i.et, %.lr.ph.i.i ], [ %i.fs, %bb.z ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.a, %bb.z ] ; 6 uses
  %.0211.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.z ] ; 8 uses
  %.0184210.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1185.i.i, %bb.z ] ; 8 uses
  %i.fc = getelementptr inbounds nuw [120 x i8], ptr %48, i64 %indvars.iv.i.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !292
  %.not.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ff = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEsNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_sEEEES2_sS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ff, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !71
  %.not61.i.i = icmp eq i16 %i.fh, 0
  br i1 %.not61.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fi = trunc i64 %indvars.iv.i.i to i16
  %i.fj = add i16 %i.fi, 1
  store i16 %i.fj, ptr %i.fg, align 2, !tbaa !71
  %i.fk = icmp samesign ugt i64 %indvars.iv.i.i, 32766
  br i1 %i.fk, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i, label %bb.h

_ZN4llvmplERKNS_5TwineES2_.exit.i.i:              ; preds = %bb.g
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #13
  store ptr @.str.3, ptr %37, align 8, !alias.scope !293
  %i.fm = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr inttoptr (i64 32767 to ptr), ptr %i.fm, align 8, !alias.scope !293
  %i.fn = getelementptr inbounds nuw i8, ptr %37, i64 32
  store i8 3, ptr %i.fn, align 8, !tbaa !88, !alias.scope !293
  %i.fo = getelementptr inbounds nuw i8, ptr %37, i64 33
  store i8 10, ptr %i.fo, align 1, !tbaa !89, !alias.scope !293
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !294
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !295
  call void %i.fp(i64 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(34) %37) #13, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.fs = load ptr, ptr %i.eq, align 8, !tbaa !78 ; 3 uses
  %i.ft = getelementptr inbounds nuw [120 x i8], ptr %i.fs, i64 %indvars.iv.i.i ; 17 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !57 ; 2 uses
  %.not62.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not62.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 88
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !298, !range !265, !noundef !69
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = zext nneg i8 %i.fx to i64
  %.0.i.i.i = lshr i64 %i.fz, %i.ga               ; 2 uses
  store i64 %.0.i.i.i, ptr %i.fu, align 8, !tbaa !299
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gb = phi i64 [ %.0.i.i.i, %bb.i ], [ %i.fv, %bb.h ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 60 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !308 ; 3 uses
  %i.ge = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gd)
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %.split.i.i, label %bb.q

.split.i.i:                                       ; preds = %bb.j
  %i.gg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gd, i1 true)
  switch i32 %i.gg, label %bb.q [
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 10, label %bb.n
    i32 11, label %bb.o
  ]

bb.k:                                             ; preds = %.split.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !57
  %i.gj = add i64 %i.gi, %i.gb
  br label %bb.q

bb.l:                                             ; preds = %.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !57
  %.not64.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not64.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i64 %.0211.i.i, ptr %i.gk, align 8, !tbaa !299
  br label %bb.q

bb.n:                                             ; preds = %.split.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !57
  %i.go = add i64 %i.gn, %i.gb
  br label %bb.q

bb.o:                                             ; preds = %.split.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !57
  %.not63.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not63.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %.0184210.i.i, ptr %i.gp, align 8, !tbaa !299
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.split.i.i, %bb.j
  %.1185.i.i = phi i64 [ %.0184210.i.i, %.split.i.i ], [ %.0184210.i.i, %bb.k ], [ %.0184210.i.i, %bb.m ], [ %.0184210.i.i, %bb.l ], [ %i.go, %bb.n ], [ %.0184210.i.i, %bb.p ], [ %.0184210.i.i, %bb.o ], [ %.0184210.i.i, %bb.j ]
  %.1.i.i = phi i64 [ %.0211.i.i, %.split.i.i ], [ %i.gj, %bb.k ], [ %.0211.i.i, %bb.m ], [ %.0211.i.i, %bb.l ], [ %.0211.i.i, %bb.n ], [ %.0211.i.i, %bb.p ], [ %.0211.i.i, %bb.o ], [ %.0211.i.i, %bb.j ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ft, i64 88
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !298, !range !265, !noundef !69
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = zext nneg i8 %i.gs to i64
  %.0.i75.i.i = lshr i64 %i.gu, %i.gv             ; 2 uses
  %.not65.i.i = icmp eq i64 %.0.i75.i.i, 0
  br i1 %.not65.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !57 ; 4 uses
  %.not66.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not66.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gy = icmp ugt i64 %indvars.iv.i.a, %i.gx
  br i1 %i.gy, label %_ZN4llvmplERKNS_5TwineES2_.exit90.i.i, label %bb.u

_ZN4llvmplERKNS_5TwineES2_.exit90.i.i:            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #13
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.ft, align 8, !tbaa !60
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.26.0.copyload.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !57
  %i.gz = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i8 3, ptr %i.gz, align 8, !tbaa !88, !alias.scope !309
  %i.ha = getelementptr inbounds nuw i8, ptr %39, i64 33
  store i8 5, ptr %i.ha, align 1, !tbaa !89, !alias.scope !309
  store ptr @.str.4, ptr %39, align 8, !tbaa !90, !alias.scope !309
  %i.hb = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %.sroa.05.0.copyload.i.i, ptr %i.hb, align 8, !tbaa !90, !alias.scope !309
  %i.hc = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %.sroa.26.0.copyload.i.i, ptr %i.hc, align 8, !tbaa !90, !alias.scope !309
  store ptr %39, ptr %38, align 8, !alias.scope !310
  %i.hd = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr @.str.5, ptr %i.hd, align 8, !alias.scope !310
  %i.he = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i8 2, ptr %i.he, align 8, !tbaa !88, !alias.scope !310
  %i.hf = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 3, ptr %i.hf, align 1, !tbaa !89, !alias.scope !310
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val74.i.i = load i64, ptr %i.hh, align 8
  call fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter15reportOverwriteEmmRKN4llvm5TwineE(ptr %.val.i.i, i64 %.val74.i.i, i64 noundef %indvars.iv.i.a, i64 noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(34) %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.t:                                             ; preds = %bb.r
  %i.hi = icmp ne i64 %indvars.iv.i.a, 0          ; 2 uses
  %.neg.i.i = sext i1 %i.hi to i64
  %i.hj = add nsw i64 %indvars.iv.i.a, %.neg.i.i
  %i.hk = select i1 %i.hi, i64 4, i64 0
  %i.hl = add nsw i64 %i.hj, %i.hk
  %i.hm = and i64 %i.hl, -4                       ; 2 uses
  store i64 %i.hm, ptr %i.gw, align 8, !tbaa !299
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hn = phi i64 [ %i.hm, %bb.t ], [ %i.gx, %bb.s ]
  %i.ho = add i64 %i.hn, %.0.i75.i.i              ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 4294967295
  br i1 %i.hp, label %_ZN4llvmplERKNS_5TwineES2_.exit181.i.i, label %bb.v

_ZN4llvmplERKNS_5TwineES2_.exit181.i.i:           ; preds = %bb.u
  %49 = and i64 %indvars.iv.i.i, 65535
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #13
  store ptr @.str.6, ptr %45, align 8, !alias.scope !311
  %i.hr = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr inttoptr (i64 4294967295 to ptr), ptr %i.hr, align 8, !alias.scope !311
  %i.hs = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i8 3, ptr %i.hs, align 8, !tbaa !88, !alias.scope !311
  %i.ht = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 9, ptr %i.ht, align 1, !tbaa !89, !alias.scope !311
  store ptr %45, ptr %44, align 8, !alias.scope !312
  %i.hu = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr @.str.7, ptr %i.hu, align 8, !alias.scope !312
  %i.hv = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i8 2, ptr %i.hv, align 8, !tbaa !88, !alias.scope !312
  %i.hw = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 3, ptr %i.hw, align 1, !tbaa !89, !alias.scope !312
  %.sroa.0251.0.insert.ext.i.i = add nuw nsw i64 %49, 1
  %i.hx = inttoptr i64 %.sroa.0251.0.insert.ext.i.i to ptr
  store ptr %44, ptr %43, align 8, !alias.scope !313
  %i.hy = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.hx, ptr %i.hy, align 8, !alias.scope !313
  %i.hz = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i8 2, ptr %i.hz, align 8, !tbaa !88, !alias.scope !313
  %i.ia = getelementptr inbounds nuw i8, ptr %43, i64 33
  store i8 10, ptr %i.ia, align 1, !tbaa !89, !alias.scope !313
  store ptr %43, ptr %42, align 8, !alias.scope !314
  %i.ib = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr @.str.8, ptr %i.ib, align 8, !alias.scope !314
  %i.ic = getelementptr inbounds nuw i8, ptr %42, i64 32
  store i8 2, ptr %i.ic, align 8, !tbaa !88, !alias.scope !314
  %i.id = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 3, ptr %i.id, align 1, !tbaa !89, !alias.scope !314
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ft, align 8, !tbaa !60
  store ptr %42, ptr %41, align 8, !alias.scope !315
  %i.ie = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ie, align 8, !alias.scope !315
  %.sroa.2.0..sroa_idx.i.i.i165.i.i = getelementptr inbounds nuw i8, ptr %41, i64 24
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i165.i.i, align 8, !tbaa !90, !alias.scope !315
  %i.if = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i8 2, ptr %i.if, align 8, !tbaa !88, !alias.scope !315
  %i.ig = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 5, ptr %i.ig, align 1, !tbaa !89, !alias.scope !315
  store ptr %41, ptr %40, align 8, !alias.scope !316
  %i.ih = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr @.str.9, ptr %i.ih, align 8, !alias.scope !316
  %i.ii = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i8 2, ptr %i.ii, align 8, !tbaa !88, !alias.scope !316
  %i.ij = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 3, ptr %i.ij, align 1, !tbaa !89, !alias.scope !316
  %i.ik = load ptr, ptr %i.hq, align 8, !tbaa !294
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.im = load i64, ptr %i.il, align 8, !tbaa !295
  call void %i.ik(i64 noundef %i.im, ptr noundef nonnull align 8 dereferenceable(34) %40) #13, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.v:                                             ; preds = %bb.u, %bb.q
  %.1.i = phi i64 [ %indvars.iv.i.a, %bb.q ], [ %i.ho, %bb.u ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ft, i64 68
  %i.io = load i8, ptr %i.in, align 4, !tbaa !317, !range !265, !noundef !69
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !319 ; 2 uses
  %.not67.i.i = icmp eq i32 %i.gd, 16
  br i1 %.not67.i.i, label %bb.x, label %.critedge71.i.i

.critedge71.i.i:                                  ; preds = %bb.w
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #13
  %i.it = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %46, i64 33
  store i8 1, ptr %i.iu, align 1, !tbaa !89
  store ptr @.str.10, ptr %46, align 8, !tbaa !90
  store i8 3, ptr %i.it, align 8, !tbaa !88
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !294
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !295
  call void %i.iv(i64 noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(34) %46) #13, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.x:                                             ; preds = %bb.w
  %i.iy = and i32 %i.ir, 65535
  %.not68.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not68.i.i, label %.thread.i.i, label %bb.y

.thread.i.i:                                      ; preds = %bb.x
  %i.iz = or disjoint i32 %i.ir, 16
  store i32 %i.iz, ptr %i.gc, align 4, !tbaa !308
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #13
  %i.jb = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %47, i64 33
  store i8 1, ptr %i.jc, align 1, !tbaa !89
  store ptr @.str.11, ptr %47, align 8, !tbaa !90
  store i8 3, ptr %i.jb, align 8, !tbaa !88
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !294
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !295
  call void %i.jd(i64 noundef %i.jf, ptr noundef nonnull align 8 dereferenceable(34) %47) #13, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.z:                                             ; preds = %.thread.i.i, %bb.v
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %indvars.iv.next.i.a, %i.fa
  br i1 %exitcond.not.i.a, label %.critedge73.loopexit.i.i, label %bb.e, !llvm.loop !146

.critedge73.loopexit.i.i:                         ; preds = %bb.z
  %.pre297.i.i = load ptr, ptr %i.er, align 8, !tbaa !91
  br label %.critedge73.i.i

.critedge73.i.i:                                  ; preds = %.critedge73.loopexit.i.i, %bb.d
  %.2.i = phi i64 [ %i.ez, %bb.d ], [ %.1.i, %.critedge73.loopexit.i.i ] ; 2 uses
  %i.jg = phi ptr [ %i.es, %bb.d ], [ %.pre297.i.i, %.critedge73.loopexit.i.i ] ; 2 uses
  %i.jh = phi ptr [ %i.et, %bb.d ], [ %i.fs, %.critedge73.loopexit.i.i ] ; 2 uses
  %.not8391.i.i.i = icmp eq ptr %i.jh, %i.jg
  br i1 %.not8391.i.i.i, label %_ZN12_GLOBAL__N_111XCOFFWriter18initSectionHeadersERm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge73.i.i
  %i.ji = load i8, ptr %i.ec, align 8, !range !265
  %i.jj = trunc nuw i8 %i.ji to i1
  %i.jk = select i1 %i.jj, i64 14, i64 10
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge33.i.i.i, %.lr.ph.i.i.i
  %.3.i = phi i64 [ %.2.i, %.lr.ph.i.i.i ], [ %.4.i, %.critedge33.i.i.i ] ; 5 uses
  %.sroa.080.092.i.i.i = phi ptr [ %i.jh, %.lr.ph.i.i.i ], [ %i.la, %.critedge33.i.i.i ] ; 9 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 96
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !92 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 104
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !92 ; 2 uses
  %i.jp = icmp eq ptr %i.jm, %i.jo
  br i1 %i.jp, label %.critedge33.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jm to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = sdiv exact i64 %i.js, 24                ; 2 uses
  %i.ju = mul nsw i64 %i.jt, %i.jk
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 56 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 8, !tbaa !71
  %.not.i.i.i = icmp eq i16 %i.jw, 0
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jx = trunc i64 %i.jt to i16
  store i16 %i.jx, ptr %i.jv, align 8, !tbaa !77
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 40 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !57 ; 4 uses
  %.not32.i.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not32.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ka = icmp ugt i64 %.3.i, %i.jz
  br i1 %i.ka, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i.i, label %bb.ag

_ZN4llvmplERKNS_5TwineES2_.exit.i.i.i:            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %.sroa.080.092.i.i.i, align 8, !tbaa !60
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 8
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !57
  %i.kb = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 3, ptr %i.kb, align 8, !tbaa !88, !alias.scope !320
  %i.kc = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 5, ptr %i.kc, align 1, !tbaa !89, !alias.scope !320
  store ptr @.str.15, ptr %33, align 8, !tbaa !90, !alias.scope !320
  %i.kd = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %.sroa.02.0.copyload.i.i.i, ptr %i.kd, align 8, !tbaa !90, !alias.scope !320
  %i.ke = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %.sroa.23.0.copyload.i.i.i, ptr %i.ke, align 8, !tbaa !90, !alias.scope !320
  store ptr %33, ptr %32, align 8, !alias.scope !321
  %i.kf = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr @.str.5, ptr %i.kf, align 8, !alias.scope !321
  %i.kg = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 2, ptr %i.kg, align 8, !tbaa !88, !alias.scope !321
  %i.kh = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 3, ptr %i.kh, align 1, !tbaa !89, !alias.scope !321
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val34.i.i.i = load i64, ptr %i.kj, align 8
  call fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter15reportOverwriteEmmRKN4llvm5TwineE(ptr %.val.i.i.i, i64 %.val34.i.i.i, i64 noundef %.3.i, i64 noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(34) %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.af:                                            ; preds = %bb.ad
  store i64 %.3.i, ptr %i.jy, align 8, !tbaa !299
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kk = phi i64 [ %.3.i, %bb.af ], [ %i.jz, %bb.ae ]
  %i.kl = add i64 %i.kk, %i.ju                    ; 2 uses
  %i.km = icmp ugt i64 %i.kl, 4294967295
  br i1 %i.km, label %_ZN4llvmplERKNS_5TwineES2_.exit79.i.i.i, label %.critedge33.i.i.i

_ZN4llvmplERKNS_5TwineES2_.exit79.i.i.i:          ; preds = %bb.ag
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #13
  store ptr @.str.6, ptr %36, align 8, !alias.scope !322
  %i.ko = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr inttoptr (i64 4294967295 to ptr), ptr %i.ko, align 8, !alias.scope !322
  %i.kp = getelementptr inbounds nuw i8, ptr %36, i64 32
  store i8 3, ptr %i.kp, align 8, !tbaa !88, !alias.scope !322
  %i.kq = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 9, ptr %i.kq, align 1, !tbaa !89, !alias.scope !322
  store ptr %36, ptr %35, align 8, !alias.scope !323
  %i.kr = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr @.str.16, ptr %i.kr, align 8, !alias.scope !323
  %i.ks = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i8 2, ptr %i.ks, align 8, !tbaa !88, !alias.scope !323
  %i.kt = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 3, ptr %i.kt, align 1, !tbaa !89, !alias.scope !323
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.080.092.i.i.i, align 8, !tbaa !60
  store ptr %35, ptr %34, align 8, !alias.scope !324
  %i.ku = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ku, align 8, !alias.scope !324
  %.sroa.2.0..sroa_idx.i.i.i78.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i78.i.i.i, align 8, !tbaa !90, !alias.scope !324
  %i.kv = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i8 2, ptr %i.kv, align 8, !tbaa !88, !alias.scope !324
  %i.kw = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 5, ptr %i.kw, align 1, !tbaa !89, !alias.scope !324
  %i.kx = load ptr, ptr %i.kn, align 8, !tbaa !294
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !295
  call void %i.kx(i64 noundef %i.kz, ptr noundef nonnull align 8 dereferenceable(34) %34) #13, !inline_history !165
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

.critedge33.i.i.i:                                ; preds = %bb.ag, %bb.aa
  %.4.i = phi i64 [ %.3.i, %bb.aa ], [ %i.kl, %bb.ag ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.080.092.i.i.i, i64 120 ; 2 uses
  %.not83.i.i.i = icmp eq ptr %i.la, %i.jg
  br i1 %.not83.i.i.i, label %_ZN12_GLOBAL__N_111XCOFFWriter18initSectionHeadersERm.exit.i, label %bb.aa

_ZN12_GLOBAL__N_111XCOFFWriter18initSectionHeadersERm.exit.i: ; preds = %.critedge33.i.i.i, %.critedge73.i.i
  %.5.i = phi i64 [ %.2.i, %.critedge73.i.i ], [ %.4.i, %.critedge33.i.i.i ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i16 479, ptr %i.lb, align 8, !tbaa !77
  %i.lc = load ptr, ptr %0, align 8, !tbaa !68    ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 248
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 256
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !79
  %i.lg = load ptr, ptr %i.ld, align 8, !tbaa !78
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 120
  %i.ll = trunc i64 %i.lk to i16
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !325
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lc, i64 272
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 280
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !326 ; 3 uses
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !327 ; 3 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = sdiv exact i64 %i.lt, 88
  %i.lv = trunc i64 %i.lu to i32                  ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  store i32 %i.lv, ptr %i.lw, align 8, !tbaa !328
  %.not9193.i.i = icmp eq ptr %i.lq, %i.lp
  br i1 %.not9193.i.i, label %._crit_edge.i.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter18initSectionHeadersERm.exit.i, %bb.ah
  %.sroa.082.094.i.i = phi ptr [ %i.mq, %bb.ah ], [ %i.lq, %_ZN12_GLOBAL__N_111XCOFFWriter18initSectionHeadersERm.exit.i ] ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.082.094.i.i, i64 64
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.082.094.i.i, i64 72
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !331
  %i.ma = load ptr, ptr %i.lx, align 8, !tbaa !332
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = lshr exact i64 %i.md, 3                 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.082.094.i.i, i64 55 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.082.094.i.i, i64 56
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !334, !range !265, !noundef !69
  %i.mi = trunc nuw i8 %i.mh to i1                ; 2 uses
  %.pre.i10.i = load i8, ptr %i.mf, align 1       ; 3 uses
  %i.mj = trunc i64 %i.me to i32
  %i.mk = zext i8 %.pre.i10.i to i32
  %i.ml = icmp ugt i32 %i.mj, %i.mk
  %or.cond.i.i = select i1 %i.mi, i1 %i.ml, i1 false
  br i1 %or.cond.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i9.i
  %i.mm = trunc i64 %i.me to i8
  %.0.i.i11.i = select i1 %i.mi, i8 %.pre.i10.i, i8 %i.mm ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i8 %.0.i.i11.i to i16
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.0.0.insert.ext.i.i, 256
  store i16 %.sroa.0.0.insert.insert.i.i, ptr %i.mf, align 1
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111XCOFFWriter10writeXCOFFEv:bb.a
  %i.akw = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.i121.i)
  %spec.select.i.i.i123.i = select i1 %.not.i.i.i122.i, i64 %.sroa.0.0.i121.i, i64 %i.akw
  store i64 %spec.select.i.i.i123.i, ptr %i.cm, align 8, !tbaa !57
  %i.akx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aku, ptr noundef nonnull %i.cm, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ala = load i8, ptr %i.akz, align 8, !tbaa !74, !range !265, !noundef !69
  %i.alb = trunc nuw i8 %i.ala to i1
  %.val.i124.i = load i64, ptr %i.aky, align 8
  %.sroa.0.0.i126.i = select i1 %i.alb, i64 %.val.i124.i, i64 0 ; 2 uses
  %i.alc = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.ald = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %.not.i.i.i127.i = icmp eq i32 %i.ald, 1
  %i.ale = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.i126.i)
  %spec.select.i.i.i128.i = select i1 %.not.i.i.i127.i, i64 %.sroa.0.0.i126.i, i64 %i.ale
  store i64 %spec.select.i.i.i128.i, ptr %i.cl, align 8, !tbaa !57
  %i.alf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alc, ptr noundef nonnull %i.cl, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ali = load i8, ptr %i.alh, align 8, !tbaa !74, !range !265, !noundef !69
  %i.alj = trunc nuw i8 %i.ali to i1
  %.val.i129.i = load i64, ptr %i.alg, align 8
  %.sroa.0.0.i131.i = select i1 %i.alj, i64 %.val.i129.i, i64 0 ; 2 uses
  %i.alk = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.all = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %.not.i.i.i132.i = icmp eq i32 %i.all, 1
  %i.alm = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.i131.i)
  %spec.select.i.i.i133.i = select i1 %.not.i.i.i132.i, i64 %.sroa.0.0.i131.i, i64 %i.alm
  store i64 %spec.select.i.i.i133.i, ptr %i.ck, align 8, !tbaa !57
  %i.aln = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alk, ptr noundef nonnull %i.ck, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.alq = load i8, ptr %i.alp, align 8, !tbaa !74, !range !265, !noundef !69
  %i.alr = trunc nuw i8 %i.alq to i1
  %.val.i134.i = load i64, ptr %i.alo, align 8
  %i.als = trunc i64 %.val.i134.i to i32
  %i.alt = select i1 %i.alr, i32 %i.als, i32 0    ; 2 uses
  %i.alu = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.alv = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %.not.i.i.i137.i = icmp eq i32 %i.alv, 1
  %i.alw = call i32 @llvm.bswap.i32(i32 %i.alt)
  %spec.select.i.i.i138.i = select i1 %.not.i.i.i137.i, i32 %i.alt, i32 %i.alw
  store i32 %spec.select.i.i.i138.i, ptr %i.cj, align 4, !tbaa !72
  %i.alx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alu, ptr noundef nonnull %i.cj, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ama = load i8, ptr %i.alz, align 8, !tbaa !74, !range !265, !noundef !69
  %i.amb = trunc nuw i8 %i.ama to i1
  %.val.i139.i = load i64, ptr %i.aly, align 8
  %i.amc = trunc i64 %.val.i139.i to i32
  %i.amd = select i1 %i.amb, i32 %i.amc, i32 0    ; 2 uses
  %i.ame = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.amf = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %.not.i.i.i142.i = icmp eq i32 %i.amf, 1
  %i.amg = call i32 @llvm.bswap.i32(i32 %i.amd)
  %spec.select.i.i.i143.i = select i1 %.not.i.i.i142.i, i32 %i.amd, i32 %i.amg
  store i32 %spec.select.i.i.i143.i, ptr %i.ci, align 4, !tbaa !72
  %i.amh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ame, ptr noundef nonnull %i.ci, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.ami = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  %i.amj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ami, i32 noundef 4) #13 ; 0 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !76, !range !265, !noundef !69
  %i.amn = trunc nuw i8 %i.amm to i1
  %.val.i144.i = load i8, ptr %i.amk, align 8
  %.sroa.0.0.i146.i = select i1 %i.amn, i8 %.val.i144.i, i8 0
  %i.amo = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store i8 %.sroa.0.0.i146.i, ptr %i.ch, align 1, !tbaa !90
  %i.amp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amo, ptr noundef nonnull %i.ch, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 267
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !76, !range !265, !noundef !69
  %i.amt = trunc nuw i8 %i.ams to i1
  %.val.i147.i = load i8, ptr %i.amq, align 2
  %.sroa.0.0.i149.i = select i1 %i.amt, i8 %.val.i147.i, i8 0
  %i.amu = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i8 %.sroa.0.0.i149.i, ptr %i.cg, align 1, !tbaa !90
  %i.amv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amu, ptr noundef nonnull %i.cg, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !76, !range !265, !noundef !69
  %i.amz = trunc nuw i8 %i.amy to i1
  %.val.i150.i = load i8, ptr %i.amw, align 4
  %.sroa.0.0.i152.i = select i1 %i.amz, i8 %.val.i150.i, i8 0
  %i.ana = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i8 %.sroa.0.0.i152.i, ptr %i.cf, align 1, !tbaa !90
  %i.anb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ana, ptr noundef nonnull %i.cf, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 271
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !76, !range !265, !noundef !69
  %i.anf = trunc nuw i8 %i.ane to i1
  %.val.i153.i = load i8, ptr %i.anc, align 2
  %.sroa.0.0.i155.i = select i1 %i.anf, i8 %.val.i153.i, i8 0
  %i.ang = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i8 %.sroa.0.0.i155.i, ptr %i.ce, align 1, !tbaa !90
  %i.anh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ang, ptr noundef nonnull %i.ce, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.ank = load i8, ptr %i.anj, align 2, !tbaa !75, !range !265, !noundef !69
  %i.anl = trunc nuw i8 %i.ank to i1
  %i.anm = load i16, ptr %i.ani, align 8
  %.0.i156.i = select i1 %i.anl, i16 %i.anm, i16 0 ; 2 uses
  %i.ann = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.ano = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %.not.i.i.i157.i = icmp eq i32 %i.ano, 1
  %i.anp = call i16 @llvm.bswap.i16(i16 %.0.i156.i)
  %spec.select.i.i.i158.i = select i1 %.not.i.i.i157.i, i16 %.0.i156.i, i16 %i.anp
  store i16 %spec.select.i.i.i158.i, ptr %i.cd, align 2, !tbaa !71
  %i.anq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ann, ptr noundef nonnull %i.cd, i64 noundef 2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 374
  %i.ant = load i8, ptr %i.ans, align 2, !tbaa !75, !range !265, !noundef !69
  %i.anu = trunc nuw i8 %i.ant to i1
  %i.anv = load i16, ptr %i.anr, align 4
  %.0.i159.i = select i1 %i.anu, i16 %i.anv, i16 0 ; 2 uses
  %i.anw = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.anx = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %.not.i.i.i160.i = icmp eq i32 %i.anx, 1
  %i.any = call i16 @llvm.bswap.i16(i16 %.0.i159.i)
  %spec.select.i.i.i161.i = select i1 %.not.i.i.i160.i, i16 %.0.i159.i, i16 %i.any
  store i16 %spec.select.i.i.i161.i, ptr %i.cc, align 2, !tbaa !71
  %i.anz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.anw, ptr noundef nonnull %i.cc, i64 noundef 2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.aoa = load i8, ptr %i.ec, align 8, !tbaa !53, !range !265, !noundef !69
  %i.aob = trunc nuw i8 %i.aoa to i1
  br i1 %i.aob, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aod = getelementptr inbounds nuw i8, ptr %0, i64 378
  %i.aoe = load i8, ptr %i.aod, align 2, !tbaa !73, !range !265, !noundef !69
  %i.aof = trunc nuw i8 %i.aoe to i1
  %.val.i162.i = load i16, ptr %i.aoc, align 8
  %.sroa.0.0.i164.i = select i1 %i.aof, i16 %.val.i162.i, i16 -32768 ; 2 uses
  %i.aog = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aoh = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %.not.i.i.i165.i = icmp eq i32 %i.aoh, 1
  %i.aoi = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.i164.i)
  %spec.select.i.i.i166.i = select i1 %.not.i.i.i165.i, i16 %.sroa.0.0.i164.i, i16 %i.aoi
  store i16 %spec.select.i.i.i166.i, ptr %i.cb, align 2, !tbaa !71
  %i.aoj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aog, ptr noundef nonnull %i.cb, i64 noundef 2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %i.aok = load i16, ptr %i.oe, align 4, !tbaa !340 ; 2 uses
  %i.aol = icmp ugt i16 %i.aok, 110
  br i1 %i.aol, label %.sink.split.i, label %_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit

bb.cp:                                            ; preds = %bb.cn
  %i.aom = load i16, ptr %i.oe, align 4, !tbaa !340 ; 2 uses
  %i.aon = icmp ugt i16 %i.aom, 72
  br i1 %i.aon, label %.sink.split.i, label %_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit

.sink.split.i:                                    ; preds = %bb.cp, %bb.co
  %.sink.i = phi i16 [ %i.aok, %bb.co ], [ %i.aom, %bb.cp ]
  %.sink242.i = phi i32 [ -110, %bb.co ], [ -72, %bb.cp ]
  %i.aoo = zext i16 %.sink.i to i32
  %i.aop = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  %i.aoq = add nsw i32 %.sink242.i, %i.aoo
  %i.aor = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.aop, i32 noundef %i.aoq) #13 ; 0 uses
  br label %_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit

_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit: ; preds = %.sink.split.i, %bb.cp, %bb.co, %bb.ci, %_ZN12_GLOBAL__N_111XCOFFWriter15writeFileHeaderEv.exit
  %i.aos = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !69, !align !70 ; 4 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 248
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !91 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 256
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !91 ; 2 uses
  %i.aox = icmp eq ptr %i.aou, %i.aow
  br i1 %i.aox, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit
  %i.aoy = ptrtoint ptr %i.aow to i64
  %i.aoz = ptrtoint ptr %i.aou to i64
  %i.apa = sub i64 %i.aoy, %i.aoz
  %i.apb = sdiv exact i64 %i.apa, 120
  %i.apc = and i64 %i.apb, 65535                  ; 2 uses
  %.not.i11 = icmp eq i64 %i.apc, 0
  br i1 %.not.i11, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i ], [ 0, %bb.cq ] ; 2 uses
  %i.apd = load ptr, ptr %i.eq, align 8, !tbaa !78
  %i.ape = getelementptr inbounds nuw [120 x i8], ptr %i.apd, i64 %indvars.iv ; 12 uses
  %.sroa.0.0.copyload40.i = load ptr, ptr %i.ape, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 24
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 32
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 40
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 48
  %.sroa.15.0.copyload.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 56
  %.sroa.17.0.copyload.i = load i16, ptr %.sroa.17.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 58
  %.sroa.19.0.copyload.i = load i16, ptr %.sroa.19.0..sroa_idx.i, align 2 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ape, i64 60
  %.sroa.21.0.copyload.i = load i32, ptr %.sroa.21.0..sroa_idx.i, align 4 ; 4 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 96 ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ape, i64 104 ; 2 uses
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !94 ; 2 uses
  %i.api = load ptr, ptr %i.apf, align 8, !tbaa !82 ; 3 uses
  %i.apj = ptrtoint ptr %i.aph to i64             ; 2 uses
  %i.apk = ptrtoint ptr %i.api to i64             ; 2 uses
  %i.apl = sub i64 %i.apj, %i.apk                 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aph, %i.api
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.apm = sdiv exact i64 %i.apl, 24
  %i.apn = icmp ugt i64 %i.apm, 384307168202282325
  br i1 %i.apn, label %bb.ct, label %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !95

bb.ct:                                            ; preds = %bb.cs
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %i.apo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apl) #16
  %.pre.i = load ptr, ptr %i.apf, align 8, !tbaa !92 ; 2 uses
  %.pre53.i = load ptr, ptr %i.apg, align 8, !tbaa !92
  %.pre54.i = ptrtoint ptr %.pre53.i to i64
  %.pre55.i = ptrtoint ptr %.pre.i to i64
  br label %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i

_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.cr
  %.pre-phi56.i = phi i64 [ %.pre55.i, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.apk, %bb.cr ]
  %.pre-phi.i = phi i64 [ %.pre54.i, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.apj, %bb.cr ]
  %i.app = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.api, %bb.cr ] ; 2 uses
  %i.apq = phi ptr [ %i.apo, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.cr ] ; 4 uses
  %i.apr = sub i64 %.pre-phi.i, %.pre-phi56.i     ; 3 uses
  %i.aps = icmp sgt i64 %i.apr, 24
  br i1 %i.aps, label %bb.cu, label %bb.cv, !prof !96

bb.cu:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.apq, ptr align 8 %i.app, i64 %i.apr, i1 false)
  br label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i

bb.cv:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i
  %i.apt = icmp eq i64 %i.apr, 24
  br i1 %i.apt, label %bb.cw, label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.apq, ptr noundef nonnull align 8 dereferenceable(18) %i.app, i64 18, i1 false), !tbaa.struct !97
  br label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i

_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i:        ; preds = %bb.cw, %bb.cv, %bb.cu
  %.sroa.0.0.copyload.i = load ptr, ptr %i.xh, align 8, !tbaa !54
  call fastcc void @_ZN12_GLOBAL__N_19writeNameEN4llvm9StringRefENS0_7support6endian6WriterE(ptr %.sroa.0.0.copyload40.i, i64 %.sroa.4.0.copyload.i, ptr %.sroa.0.0.copyload.i)
  %i.apu = load i8, ptr %i.ec, align 8, !tbaa !53, !range !265, !noundef !69
  %i.apv = trunc nuw i8 %i.apu to i1
  br i1 %i.apv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i
  %i.apw = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.apx = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %.not.i.i.i.i18 = icmp eq i32 %i.apx, 1
  %i.apy = call i64 @llvm.bswap.i64(i64 %.sroa.5.0.copyload.i) ; 2 uses
  %spec.select.i.i.i.i19 = select i1 %.not.i.i.i.i18, i64 %.sroa.5.0.copyload.i, i64 %i.apy
  store i64 %spec.select.i.i.i.i19, ptr %i.ca, align 8, !tbaa !57
  %i.apz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.apw, ptr noundef nonnull %i.ca, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.aqa = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aqb = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %.not.i.i.i6.i20 = icmp eq i32 %i.aqb, 1
  %spec.select.i.i.i7.i21 = select i1 %.not.i.i.i6.i20, i64 %.sroa.5.0.copyload.i, i64 %i.apy
  store i64 %spec.select.i.i.i7.i21, ptr %i.bz, align 8, !tbaa !57
  %i.aqc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqa, ptr noundef nonnull %i.bz, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.aqd = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aqe = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %.not.i.i.i8.i22 = icmp eq i32 %i.aqe, 1
  %i.aqf = call i64 @llvm.bswap.i64(i64 %.sroa.9.0.copyload.i)
  %spec.select.i.i.i9.i23 = select i1 %.not.i.i.i8.i22, i64 %.sroa.9.0.copyload.i, i64 %i.aqf
  store i64 %spec.select.i.i.i9.i23, ptr %i.by, align 8, !tbaa !57
  %i.aqg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqd, ptr noundef nonnull %i.by, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.aqh = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aqi = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %.not.i.i.i10.i24 = icmp eq i32 %i.aqi, 1
  %i.aqj = call i64 @llvm.bswap.i64(i64 %.sroa.11.0.copyload.i)
  %spec.select.i.i.i11.i25 = select i1 %.not.i.i.i10.i24, i64 %.sroa.11.0.copyload.i, i64 %i.aqj
  store i64 %spec.select.i.i.i11.i25, ptr %i.bx, align 8, !tbaa !57
  %i.aqk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqh, ptr noundef nonnull %i.bx, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.aql = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aqm = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %.not.i.i.i12.i26 = icmp eq i32 %i.aqm, 1
  %i.aqn = call i64 @llvm.bswap.i64(i64 %.sroa.13.0.copyload.i)
  %spec.select.i.i.i13.i27 = select i1 %.not.i.i.i12.i26, i64 %.sroa.13.0.copyload.i, i64 %i.aqn
  store i64 %spec.select.i.i.i13.i27, ptr %i.bw, align 8, !tbaa !57
  %i.aqo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aql, ptr noundef nonnull %i.bw, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.aqp = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aqq = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %.not.i.i.i14.i28 = icmp eq i32 %i.aqq, 1
  %i.aqr = call i64 @llvm.bswap.i64(i64 %.sroa.15.0.copyload.i)
  %spec.select.i.i.i15.i29 = select i1 %.not.i.i.i14.i28, i64 %.sroa.15.0.copyload.i, i64 %i.aqr
  store i64 %spec.select.i.i.i15.i29, ptr %i.bv, align 8, !tbaa !57
  %i.aqs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqp, ptr noundef nonnull %i.bv, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.aqt = zext i16 %.sroa.17.0.copyload.i to i32 ; 2 uses
  %i.aqu = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aqv = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %.not.i.i.i16.i30 = icmp eq i32 %i.aqv, 1
  %i.aqw = call i32 @llvm.bswap.i32(i32 %i.aqt)
  %spec.select.i.i.i17.i31 = select i1 %.not.i.i.i16.i30, i32 %i.aqt, i32 %i.aqw
  store i32 %spec.select.i.i.i17.i31, ptr %i.bu, align 4, !tbaa !72
  %i.aqx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqu, ptr noundef nonnull %i.bu, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.aqy = zext i16 %.sroa.19.0.copyload.i to i32 ; 2 uses
  %i.aqz = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.ara = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %.not.i.i.i18.i32 = icmp eq i32 %i.ara, 1
  %i.arb = call i32 @llvm.bswap.i32(i32 %i.aqy)
  %spec.select.i.i.i19.i33 = select i1 %.not.i.i.i18.i32, i32 %i.aqy, i32 %i.arb
  store i32 %spec.select.i.i.i19.i33, ptr %i.bt, align 4, !tbaa !72
  %i.arc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqz, ptr noundef nonnull %i.bt, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.ard = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.are = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %.not.i.i.i20.i34 = icmp eq i32 %i.are, 1
  %i.arf = call i32 @llvm.bswap.i32(i32 %.sroa.21.0.copyload.i)
  %spec.select.i.i.i21.i35 = select i1 %.not.i.i.i20.i34, i32 %.sroa.21.0.copyload.i, i32 %i.arf
  store i32 %spec.select.i.i.i21.i35, ptr %i.bs, align 4, !tbaa !72
  %i.arg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ard, ptr noundef nonnull %i.bs, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.arh = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  %i.ari = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.arh, i32 noundef 4) #13 ; 0 uses
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i
  %i.arj = trunc i64 %.sroa.5.0.copyload.i to i32 ; 3 uses
  %i.ark = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.arl = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %.not.i.i.i22.i12 = icmp eq i32 %i.arl, 1
  %i.arm = call i32 @llvm.bswap.i32(i32 %i.arj)   ; 2 uses
  %spec.select.i.i.i23.i13 = select i1 %.not.i.i.i22.i12, i32 %i.arj, i32 %i.arm
  store i32 %spec.select.i.i.i23.i13, ptr %i.br, align 4, !tbaa !72
  %i.arn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ark, ptr noundef nonnull %i.br, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.aro = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.arp = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %.not.i.i.i24.i14 = icmp eq i32 %i.arp, 1
  %spec.select.i.i.i25.i15 = select i1 %.not.i.i.i24.i14, i32 %i.arj, i32 %i.arm
  store i32 %spec.select.i.i.i25.i15, ptr %i.bq, align 4, !tbaa !72
  %i.arq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aro, ptr noundef nonnull %i.bq, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.arr = trunc i64 %.sroa.9.0.copyload.i to i32 ; 2 uses
  %i.ars = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.art = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %.not.i.i.i26.i = icmp eq i32 %i.art, 1
  %i.aru = call i32 @llvm.bswap.i32(i32 %i.arr)
  %spec.select.i.i.i27.i = select i1 %.not.i.i.i26.i, i32 %i.arr, i32 %i.aru
  store i32 %spec.select.i.i.i27.i, ptr %i.bp, align 4, !tbaa !72
  %i.arv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ars, ptr noundef nonnull %i.bp, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.arw = trunc i64 %.sroa.11.0.copyload.i to i32 ; 2 uses
  %i.arx = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.ary = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %.not.i.i.i28.i = icmp eq i32 %i.ary, 1
  %i.arz = call i32 @llvm.bswap.i32(i32 %i.arw)
  %spec.select.i.i.i29.i = select i1 %.not.i.i.i28.i, i32 %i.arw, i32 %i.arz
  store i32 %spec.select.i.i.i29.i, ptr %i.bo, align 4, !tbaa !72
  %i.asa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.arx, ptr noundef nonnull %i.bo, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.asb = trunc i64 %.sroa.13.0.copyload.i to i32 ; 2 uses
  %i.asc = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.asd = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %.not.i.i.i30.i16 = icmp eq i32 %i.asd, 1
  %i.ase = call i32 @llvm.bswap.i32(i32 %i.asb)
  %spec.select.i.i.i31.i17 = select i1 %.not.i.i.i30.i16, i32 %i.asb, i32 %i.ase
  store i32 %spec.select.i.i.i31.i17, ptr %i.bn, align 4, !tbaa !72
  %i.asf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.asc, ptr noundef nonnull %i.bn, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.asg = trunc i64 %.sroa.15.0.copyload.i to i32 ; 2 uses
  %i.ash = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.asi = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %.not.i.i.i32.i = icmp eq i32 %i.asi, 1
  %i.asj = call i32 @llvm.bswap.i32(i32 %i.asg)
  %spec.select.i.i.i33.i = select i1 %.not.i.i.i32.i, i32 %i.asg, i32 %i.asj
  store i32 %spec.select.i.i.i33.i, ptr %i.bm, align 4, !tbaa !72
  %i.ask = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ash, ptr noundef nonnull %i.bm, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.asl = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.asm = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %.not.i.i.i34.i = icmp eq i32 %i.asm, 1
  %i.asn = call i16 @llvm.bswap.i16(i16 %.sroa.17.0.copyload.i)
  %spec.select.i.i.i35.i = select i1 %.not.i.i.i34.i, i16 %.sroa.17.0.copyload.i, i16 %i.asn
  store i16 %spec.select.i.i.i35.i, ptr %i.bl, align 2, !tbaa !71
  %i.aso = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.asl, ptr noundef nonnull %i.bl, i64 noundef 2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.asp = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.asq = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %.not.i.i.i36.i = icmp eq i32 %i.asq, 1
  %i.asr = call i16 @llvm.bswap.i16(i16 %.sroa.19.0.copyload.i)
  %spec.select.i.i.i37.i = select i1 %.not.i.i.i36.i, i16 %.sroa.19.0.copyload.i, i16 %i.asr
  store i16 %spec.select.i.i.i37.i, ptr %i.bk, align 2, !tbaa !71
  %i.ass = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.asp, ptr noundef nonnull %i.bk, i64 noundef 2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.ast = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.asu = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %.not.i.i.i38.i = icmp eq i32 %i.asu, 1
  %i.asv = call i32 @llvm.bswap.i32(i32 %.sroa.21.0.copyload.i)
  %spec.select.i.i.i39.i = select i1 %.not.i.i.i38.i, i32 %.sroa.21.0.copyload.i, i32 %i.asv
  store i32 %spec.select.i.i.i39.i, ptr %i.bj, align 4, !tbaa !72
  %i.asw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ast, ptr noundef nonnull %i.bj, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.not.i.i.i.i.i = icmp eq ptr %i.apq, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.apq, i64 noundef %i.apl) #14
  br label %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i

_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i:            ; preds = %bb.da, %bb.cz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.apc
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_111XCOFFWriter19writeSectionHeadersEv.exit, label %bb.cr, !llvm.loop !222

_ZN12_GLOBAL__N_111XCOFFWriter19writeSectionHeadersEv.exit: ; preds = %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !68    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 256
  %.pre214.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  %.phi.trans.insert215.a = getelementptr inbounds nuw i8, ptr %.pre, i64 248
  %.pre216.a = load ptr, ptr %.phi.trans.insert215.a, align 8, !tbaa !78
  %.pre224.a = ptrtoint ptr %.pre214.a to i64
  %.pre225 = ptrtoint ptr %.pre216.a to i64
  %.pre227 = sub i64 %.pre224.a, %.pre225
  %.pre229 = sdiv exact i64 %.pre227, 120
  %.pre231 = and i64 %.pre229, 65535              ; 2 uses
  %i.asx = icmp eq i64 %.pre231, 0
  br i1 %i.asx, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter19writeSectionHeadersEv.exit
  %i.asy = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 4 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 3 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.atc = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.atd = getelementptr inbounds nuw i8, ptr %14, i64 80
  br label %bb.db

bb.db:                                            ; preds = %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i45, %.lr.ph.i36
  %indvars.iv204 = phi i64 [ 0, %.lr.ph.i36 ], [ %indvars.iv.next205, %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i45 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ate = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !69, !align !70
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 248
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !78
  %i.ath = getelementptr inbounds nuw [120 x i8], ptr %i.atg, i64 %indvars.iv204 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %14, ptr noundef nonnull align 8 dereferenceable(120) %i.ath, i64 89, i1 false)
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 96 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ath, i64 104 ; 2 uses
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !94 ; 2 uses
  %i.atl = load ptr, ptr %i.ati, align 8, !tbaa !82 ; 2 uses
  %i.atm = ptrtoint ptr %i.atk to i64
  %i.atn = ptrtoint ptr %i.atl to i64
  %i.ato = sub i64 %i.atm, %i.atn                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.atk, %i.atl
  br i1 %.not.i.i.i.i.i.i37, label %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i39, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.atp = sdiv exact i64 %i.ato, 24
  %i.atq = icmp ugt i64 %i.atp, 384307168202282325
  br i1 %i.atq, label %bb.dd, label %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i38, !prof !95

bb.dd:                                            ; preds = %bb.dc
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i38: ; preds = %bb.dc
  %i.atr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ato) #16
  br label %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i39

_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i39: ; preds = %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i38, %bb.db
  %i.ats = phi ptr [ %i.atr, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i38 ], [ null, %bb.db ] ; 7 uses
  store ptr %i.ats, ptr %i.asy, align 8, !tbaa !82
  store ptr %i.ats, ptr %i.asz, align 8, !tbaa !94
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 %i.ato
  store ptr %i.att, ptr %i.ata, align 8, !tbaa !83
  %i.atu = load ptr, ptr %i.ati, align 8, !tbaa !92 ; 3 uses
  %i.atv = load ptr, ptr %i.atj, align 8, !tbaa !92
  %i.atw = ptrtoint ptr %i.atv to i64
  %i.atx = ptrtoint ptr %i.atu to i64
  %i.aty = sub i64 %i.atw, %i.atx                 ; 4 uses
  %i.atz = icmp sgt i64 %i.aty, 24
  br i1 %i.atz, label %bb.de, label %bb.df, !prof !96

bb.de:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i39
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ats, ptr align 8 %i.atu, i64 %i.aty, i1 false)
  br label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40

bb.df:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i39
  %i.aua = icmp eq i64 %i.aty, 24
  br i1 %i.aua, label %bb.dg, label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ats, ptr noundef nonnull align 8 dereferenceable(18) %i.atu, i64 18, i1 false), !tbaa.struct !97
  br label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40

_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40:      ; preds = %bb.dg, %bb.df, %bb.de
  %i.aub = getelementptr inbounds i8, ptr %i.ats, i64 %i.aty
  store ptr %i.aub, ptr %i.asz, align 8, !tbaa !94
  %i.auc = load i8, ptr %i.atc, align 8, !tbaa !298, !range !265, !noundef !69
  %i.aud = load i64, ptr %i.atd, align 8
  %i.aue = zext nneg i8 %i.auc to i64
  %.0.i.i41 = lshr i64 %i.aud, %i.aue
  %.not.i42 = icmp eq i64 %.0.i.i41, 0
  br i1 %.not.i42, label %.critedge.i, label %bb.dh

bb.dh:                                            ; preds = %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40
  %i.auf = load ptr, ptr %i.eq, align 8, !tbaa !78
  %i.aug = getelementptr inbounds nuw [120 x i8], ptr %i.auf, i64 %indvars.iv204
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 32
  %i.aui = load i64, ptr %i.auh, align 8, !tbaa !57
  %i.auj = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70 ; 4 uses
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !369
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 80
  %i.aum = load ptr, ptr %i.aul, align 8
  %i.aun = call noundef i64 %i.aum(ptr noundef nonnull align 8 dereferenceable(48) %i.auj) #13, !inline_history !223
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auj, i64 32
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !373
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !374
  %i.aus = ptrtoint ptr %i.aup to i64
  %i.aut = ptrtoint ptr %i.aur to i64
  %i.auu = load i64, ptr %i.xv, align 8, !tbaa !58
  %i.auv = add i64 %i.aun, %i.aus
  %.neg19.i = sub i64 %i.aui, %i.auv
  %.neg.i = add i64 %.neg19.i, %i.aut
  %i.auw = add i64 %.neg.i, %i.auu                ; 2 uses
  %i.aux = icmp sgt i64 %i.auw, -1
  br i1 %i.aux, label %.thread.i, label %bb.dj

.thread.i:                                        ; preds = %bb.dh
  %i.auy = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  %i.auz = trunc i64 %i.auw to i32
  %i.ava = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.auy, i32 noundef %i.auz) #13 ; 0 uses
  %i.avb = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  call void @_ZNK4llvm4yaml9BinaryRef13writeAsBinaryERNS_11raw_ostreamEm(ptr noundef nonnull align 8 dereferenceable(17) %i.atb, ptr noundef nonnull align 8 dereferenceable(48) %i.avb, i64 noundef -1) #13
  %.pre.i43 = load ptr, ptr %i.asy, align 8, !tbaa !82
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread.i, %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40
  %i.avc = phi ptr [ %.pre.i43, %.thread.i ], [ %i.ats, %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i40 ] ; 3 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.avc, null
  br i1 %.not.i.i.i.i.i44, label %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i45, label %bb.di

bb.di:                                            ; preds = %.critedge.i
  %i.avd = load ptr, ptr %i.ata, align 8, !tbaa !83
  %i.ave = ptrtoint ptr %i.avd to i64
  %i.avf = ptrtoint ptr %i.avc to i64
  %i.avg = sub i64 %i.ave, %i.avf
  call void @_ZdlPvm(ptr noundef nonnull %i.avc, i64 noundef %i.avg) #14
  br label %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i45

_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i45:          ; preds = %bb.di, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %.pre231
  br i1 %exitcond208.not, label %.loopexit, label %bb.db, !llvm.loop !224

bb.dj:                                            ; preds = %bb.dh
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.avi = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.avj = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.avj, align 1, !tbaa !89
  store ptr @.str.28, ptr %15, align 8, !tbaa !90
  store i8 3, ptr %i.avi, align 8, !tbaa !88
  %i.avk = load ptr, ptr %i.avh, align 8, !tbaa !294
  %i.avl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !295
  call void %i.avk(i64 noundef %i.avm, ptr noundef nonnull align 8 dereferenceable(34) %15) #13, !inline_history !225
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.avn = load ptr, ptr %i.asy, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i17.i = icmp eq ptr %i.avn, null
  br i1 %.not.i.i.i.i17.i, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeSectionDataEv.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.avo = load ptr, ptr %i.ata, align 8, !tbaa !83
  %i.avp = ptrtoint ptr %i.avo to i64
  %i.avq = ptrtoint ptr %i.avn to i64
  %i.avr = sub i64 %i.avp, %i.avq
  call void @_ZdlPvm(ptr noundef nonnull %i.avn, i64 noundef %i.avr) #14
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeSectionDataEv.exit

_ZN12_GLOBAL__N_111XCOFFWriter16writeSectionDataEv.exit: ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

.loopexit:                                        ; preds = %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i45
  %.pre217 = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert218 = getelementptr inbounds nuw i8, ptr %.pre217, i64 256
  %.pre219.a = load ptr, ptr %.phi.trans.insert218, align 8, !tbaa !79
  %.phi.trans.insert220 = getelementptr inbounds nuw i8, ptr %.pre217, i64 248
  %.pre221 = load ptr, ptr %.phi.trans.insert220, align 8, !tbaa !78
  %.pre233 = ptrtoint ptr %.pre219.a to i64
  %.pre235 = ptrtoint ptr %.pre221 to i64
  %.pre237 = sub i64 %.pre233, %.pre235
  %.pre239 = sdiv exact i64 %.pre237, 120
  %.pre241 = and i64 %.pre239, 65535              ; 2 uses
  %i.avs = icmp eq i64 %.pre241, 0
  br i1 %i.avs, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread, label %bb.dl

bb.dl:                                            ; preds = %.loopexit, %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i62
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i62 ], [ 0, %.loopexit ] ; 3 uses
  %i.avt = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !69, !align !70
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 248
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !78
  %i.avw = getelementptr inbounds nuw [120 x i8], ptr %i.avv, i64 %indvars.iv209 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 96 ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 104 ; 2 uses
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !94 ; 2 uses
  %i.awa = load ptr, ptr %i.avx, align 8, !tbaa !82 ; 3 uses
  %i.awb = ptrtoint ptr %i.avz to i64             ; 2 uses
  %i.awc = ptrtoint ptr %i.awa to i64             ; 2 uses
  %i.awd = sub i64 %i.awb, %i.awc                 ; 4 uses
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.avz, %i.awa
  br i1 %.not.i.i.i.i.i.i46, label %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i49, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.awe = sdiv exact i64 %i.awd, 24
  %i.awf = icmp ugt i64 %i.awe, 384307168202282325
  br i1 %i.awf, label %bb.dn, label %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47, !prof !95

bb.dn:                                            ; preds = %bb.dm
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47: ; preds = %bb.dm
  %i.awg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awd) #16
  %.pre.i48 = load ptr, ptr %i.avx, align 8, !tbaa !92 ; 3 uses
  %.pre57.i = load ptr, ptr %i.avy, align 8, !tbaa !92 ; 2 uses
  %.pre58.i = ptrtoint ptr %.pre57.i to i64
  %.pre59.i = ptrtoint ptr %.pre.i48 to i64
  %i.awh = icmp eq ptr %.pre57.i, %.pre.i48
  br label %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i49

_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i49: ; preds = %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47, %bb.dl
  %.pre-phi60.i = phi i64 [ %.pre59.i, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47 ], [ %i.awc, %bb.dl ]
  %.pre-phi.i50 = phi i64 [ %.pre58.i, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47 ], [ %i.awb, %bb.dl ]
  %i.awi = phi i1 [ %i.awh, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47 ], [ true, %bb.dl ]
  %i.awj = phi ptr [ %.pre.i48, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47 ], [ %i.awa, %bb.dl ] ; 2 uses
  %i.awk = phi ptr [ %i.awg, %_ZNSt15__new_allocatorIN4llvm9XCOFFYAML10RelocationEE8allocateEmPKv.exit.i.i.i.i.i.i47 ], [ null, %bb.dl ] ; 8 uses
  %i.awl = sub i64 %.pre-phi.i50, %.pre-phi60.i   ; 4 uses
  %i.awm = icmp sgt i64 %i.awl, 24
  br i1 %i.awm, label %bb.do, label %bb.dp, !prof !96

bb.do:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i49
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.awk, ptr align 8 %i.awj, i64 %i.awl, i1 false)
  br label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i51

bb.dp:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm9XCOFFYAML10RelocationESaIS2_EEC2EmRKS3_.exit.i.i.i49
  %i.awn = icmp eq i64 %i.awl, 24
  br i1 %i.awn, label %bb.dq, label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i51

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.awk, ptr noundef nonnull align 8 dereferenceable(18) %i.awj, i64 18, i1 false), !tbaa.struct !97
  br label %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i51

_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i51:      ; preds = %bb.dq, %bb.dp, %bb.do
  %i.awo = getelementptr inbounds i8, ptr %i.awk, i64 %i.awl
  br i1 %i.awi, label %.critedge.i60, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i51
  %i.awp = load ptr, ptr %i.eq, align 8, !tbaa !78
  %i.awq = getelementptr inbounds nuw [120 x i8], ptr %i.awp, i64 %indvars.iv209
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 40
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !57
  %i.awt = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70 ; 4 uses
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !369
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 80
  %i.aww = load ptr, ptr %i.awv, align 8
  %i.awx = call noundef i64 %i.aww(ptr noundef nonnull align 8 dereferenceable(48) %i.awt) #13, !inline_history !226
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awt, i64 32
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !373
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !374
  %i.axc = ptrtoint ptr %i.awz to i64
  %i.axd = ptrtoint ptr %i.axb to i64
  %i.axe = load i64, ptr %i.xv, align 8, !tbaa !58
  %i.axf = add i64 %i.awx, %i.axc
  %.neg39.i = sub i64 %i.aws, %i.axf
  %.neg.i52 = add i64 %.neg39.i, %i.axd
  %i.axg = add i64 %.neg.i52, %i.axe              ; 2 uses
  %i.axh = icmp sgt i64 %i.axg, -1
  br i1 %i.axh, label %.lr.ph.preheader.i, label %.thread.i53

.thread.i53:                                      ; preds = %bb.dr
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.axj = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.axk = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.axk, align 1, !tbaa !89
  store ptr @.str.29, ptr %13, align 8, !tbaa !90
  store i8 3, ptr %i.axj, align 8, !tbaa !88
  %i.axl = load ptr, ptr %i.axi, align 8, !tbaa !294
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.axn = load i64, ptr %i.axm, align 8, !tbaa !295
  call void %i.axl(i64 noundef %i.axn, ptr noundef nonnull align 8 dereferenceable(34) %13) #13, !inline_history !227
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %.not.i.i.i.i28.i = icmp eq ptr %i.awk, null
  br i1 %.not.i.i.i.i28.i, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit, label %bb.dw

.lr.ph.preheader.i:                               ; preds = %bb.dr
  %i.axo = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  %i.axp = trunc i64 %i.axg to i32
  %i.axq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.axo, i32 noundef %i.axp) #13 ; 0 uses
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.du, %.lr.ph.preheader.i
  %.sroa.030.049.i = phi ptr [ %i.ays, %bb.du ], [ %i.awk, %.lr.ph.preheader.i ] ; 5 uses
  %i.axr = load i8, ptr %i.ec, align 8, !tbaa !53, !range !265, !noundef !69
  %i.axs = trunc nuw i8 %i.axr to i1
  %i.axt = load i64, ptr %.sroa.030.049.i, align 8, !tbaa !57 ; 3 uses
  br i1 %i.axs, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph.i54
  %i.axu = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.axv = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %.not.i.i.i.i63 = icmp eq i32 %i.axv, 1
  %i.axw = call i64 @llvm.bswap.i64(i64 %i.axt)
  %spec.select.i.i.i.i64 = select i1 %.not.i.i.i.i63, i64 %i.axt, i64 %i.axw
  store i64 %spec.select.i.i.i.i64, ptr %i.bi, align 8, !tbaa !57
  %i.axx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.axu, ptr noundef nonnull %i.bi, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.du

bb.dt:                                            ; preds = %.lr.ph.i54
  %i.axy = trunc i64 %i.axt to i32                ; 2 uses
  %i.axz = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.aya = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %.not.i.i.i24.i55 = icmp eq i32 %i.aya, 1
  %i.ayb = call i32 @llvm.bswap.i32(i32 %i.axy)
  %spec.select.i.i.i25.i56 = select i1 %.not.i.i.i24.i55, i32 %i.axy, i32 %i.ayb
  store i32 %spec.select.i.i.i25.i56, ptr %i.bh, align 4, !tbaa !72
  %i.ayc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.axz, ptr noundef nonnull %i.bh, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.ayd = getelementptr inbounds nuw i8, ptr %.sroa.030.049.i, i64 8
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !57
  %i.ayf = trunc i64 %i.aye to i32                ; 2 uses
  %i.ayg = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.ayh = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %.not.i.i.i26.i57 = icmp eq i32 %i.ayh, 1
  %i.ayi = call i32 @llvm.bswap.i32(i32 %i.ayf)
  %spec.select.i.i.i27.i58 = select i1 %.not.i.i.i26.i57, i32 %i.ayf, i32 %i.ayi
  store i32 %spec.select.i.i.i27.i58, ptr %i.bg, align 4, !tbaa !72
  %i.ayj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ayg, ptr noundef nonnull %i.bg, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.ayk = getelementptr inbounds nuw i8, ptr %.sroa.030.049.i, i64 16
  %i.ayl = load i8, ptr %i.ayk, align 8, !tbaa !90
  %i.aym = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 %i.ayl, ptr %i.bf, align 1, !tbaa !90
  %i.ayn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aym, ptr noundef nonnull %i.bf, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.ayo = getelementptr inbounds nuw i8, ptr %.sroa.030.049.i, i64 17
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !90
  %i.ayq = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 %i.ayp, ptr %i.be, align 1, !tbaa !90
  %i.ayr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ayq, ptr noundef nonnull %i.be, i64 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.ays = getelementptr inbounds nuw i8, ptr %.sroa.030.049.i, i64 24 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ays, %i.awo
  br i1 %.not.i59, label %.critedge.i60, label %.lr.ph.i54

.critedge.i60:                                    ; preds = %bb.du, %_ZN4llvm9XCOFFYAML7SectionC2ERKS1_.exit.i51
  %.not.i.i.i.i.i61 = icmp eq ptr %i.awk, null
  br i1 %.not.i.i.i.i.i61, label %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i62, label %bb.dv

bb.dv:                                            ; preds = %.critedge.i60
  call void @_ZdlPvm(ptr noundef nonnull %i.awk, i64 noundef %i.awd) #14
  br label %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i62

_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i62:          ; preds = %bb.dv, %.critedge.i60
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %.pre241
  br i1 %exitcond213.not, label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread.loopexit, label %bb.dl, !llvm.loop !228

bb.dw:                                            ; preds = %.thread.i53
  call void @_ZdlPvm(ptr noundef nonnull %i.awk, i64 noundef %i.awd) #14
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread.loopexit: ; preds = %_ZN4llvm9XCOFFYAML7SectionD2Ev.exit.i62
  %.pre222 = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread

_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread: ; preds = %bb.cq, %_ZN12_GLOBAL__N_111XCOFFWriter19writeSectionHeadersEv.exit, %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread.loopexit, %.loopexit, %_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit
  %i.ayt = phi ptr [ %.pre222, %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread.loopexit ], [ %.pre217, %.loopexit ], [ %i.aos, %_ZN12_GLOBAL__N_111XCOFFWriter18writeAuxFileHeaderEv.exit ], [ %.pre, %_ZN12_GLOBAL__N_111XCOFFWriter19writeSectionHeadersEv.exit ], [ %i.aos, %bb.cq ] ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 272
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !353
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 280
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !353
  %i.ayy = icmp eq ptr %i.ayv, %i.ayx
  br i1 %i.ayy, label %_ZN12_GLOBAL__N_111XCOFFWriter12writeSymbolsEv.exit, label %bb.dx

bb.dx:                                            ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit.thread
  %i.ayz = load i64, ptr %i.yw, align 8, !tbaa !57
  %i.aza = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70 ; 4 uses
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !369
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 80
  %i.azd = load ptr, ptr %i.azc, align 8
  %i.aze = call noundef i64 %i.azd(ptr noundef nonnull align 8 dereferenceable(48) %i.aza) #13, !inline_history !229
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aza, i64 32
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !373
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !374
  %i.azj = ptrtoint ptr %i.azg to i64
  %i.azk = ptrtoint ptr %i.azi to i64
  %i.azl = load i64, ptr %i.xv, align 8, !tbaa !58
  %i.azm = add i64 %i.aze, %i.azj
  %.neg167.i = sub i64 %i.ayz, %i.azm
  %.neg.i65 = add i64 %.neg167.i, %i.azk
  %i.azn = add i64 %.neg.i65, %i.azl              ; 2 uses
  %i.azo = icmp slt i64 %i.azn, 0
  br i1 %i.azo, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.azq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.azr = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.azr, align 1, !tbaa !89
  store ptr @.str.30, ptr %6, align 8, !tbaa !90
  store i8 3, ptr %i.azq, align 8, !tbaa !88
  %i.azs = load ptr, ptr %i.azp, align 8, !tbaa !294
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.azu = load i64, ptr %i.azt, align 8, !tbaa !295
  call void %i.azs(i64 noundef %i.azu, ptr noundef nonnull align 8 dereferenceable(34) %6) #13, !inline_history !230
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZN12_GLOBAL__N_111XCOFFWriter16writeRelocationsEv.exit

bb.dz:                                            ; preds = %bb.dx
  %i.azv = load ptr, ptr %i.xh, align 8, !tbaa !367, !nonnull !69, !align !70
  %i.azw = trunc i64 %i.azn to i32
  %i.azx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.azv, i32 noundef %i.azw) #13 ; 0 uses
  %i.azy = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !69, !align !70 ; 3 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 272
  %i.baa = load ptr, ptr %i.azz, align 8, !tbaa !353 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azy, i64 280
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !353 ; 2 uses
  %.not168189.i = icmp eq ptr %i.baa, %i.bac
  br i1 %.not168189.i, label %_ZN12_GLOBAL__N_111XCOFFWriter12writeSymbolsEv.exit, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.dz
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 140
  br label %bb.ea

bb.ea:                                            ; preds = %bb.gb, %.lr.ph.i66
  %.sroa.0159.0190.i = phi ptr [ %i.baa, %.lr.ph.i66 ], [ %i.btt, %bb.gb ] ; 26 uses
  %i.bag = load i8, ptr %i.ec, align 8, !tbaa !53, !range !265, !noundef !69
  %i.bah = trunc nuw i8 %i.bag to i1
  br i1 %i.bah, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.bai = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 16
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !57 ; 2 uses
  %i.bak = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.bal = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %.not.i.i.i.i83 = icmp eq i32 %i.bal, 1
  %i.bam = call i64 @llvm.bswap.i64(i64 %i.baj)
  %spec.select.i.i.i.i84 = select i1 %.not.i.i.i.i83, i64 %i.baj, i64 %i.bam
  store i64 %spec.select.i.i.i.i84, ptr %i.bd, align 8, !tbaa !57
  %i.ban = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bak, ptr noundef nonnull %i.bd, i64 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.sroa.021.0.copyload.i = load ptr, ptr %.sroa.0159.0190.i, align 8, !tbaa !60 ; 2 uses
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 8
  %.sroa.222.0.copyload.i = load i64, ptr %.sroa.222.0..sroa_idx.i, align 8, !tbaa !57 ; 2 uses
  %i.bao = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.021.0.copyload.i, i64 %.sroa.222.0.copyload.i) #13
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.bao to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.ext.i.i = and i64 %.sroa.222.0.copyload.i, 4294967295
  %.sroa.2.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  %i.bap = call noundef i64 @_ZNK4llvm18StringTableBuilder9getOffsetENS_19CachedHashStringRefE(ptr noundef nonnull align 8 dereferenceable(62) %i.bad, ptr %.sroa.021.0.copyload.i, i64 %.sroa.2.8.insert.insert.i.i) #13
  %i.baq = trunc i64 %i.bap to i32                ; 2 uses
  %i.bar = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.bas = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %.not.i.i.i69.i85 = icmp eq i32 %i.bas, 1
  %i.bat = call i32 @llvm.bswap.i32(i32 %i.baq)
  %spec.select.i.i.i70.i86 = select i1 %.not.i.i.i69.i85, i32 %i.baq, i32 %i.bat
  store i32 %spec.select.i.i.i70.i86, ptr %i.bc, align 4, !tbaa !72
  %i.bau = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bar, ptr noundef nonnull %i.bc, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.eg

bb.ec:                                            ; preds = %bb.ea
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 8 ; 2 uses
  %.sroa.220.0.copyload.i = load i64, ptr %.sroa.220.0..sroa_idx.i, align 8, !tbaa !57 ; 2 uses
  %i.bav = icmp ugt i64 %.sroa.220.0.copyload.i, 8
  br i1 %i.bav, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.baw = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i32 0, ptr %i.bb, align 4, !tbaa !72
  %i.bax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.baw, ptr noundef nonnull %i.bb, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %.sroa.017.0.copyload.i = load ptr, ptr %.sroa.0159.0190.i, align 8, !tbaa !60 ; 2 uses
  %.sroa.218.0.copyload.i = load i64, ptr %.sroa.220.0..sroa_idx.i, align 8, !tbaa !57 ; 2 uses
  %i.bay = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.017.0.copyload.i, i64 %.sroa.218.0.copyload.i) #13
  %.sroa.4.8.insert.ext.i73.i = zext i32 %i.bay to i64
  %.sroa.4.8.insert.shift.i74.i = shl nuw i64 %.sroa.4.8.insert.ext.i73.i, 32
  %.sroa.2.8.insert.ext.i75.i = and i64 %.sroa.218.0.copyload.i, 4294967295
  %.sroa.2.8.insert.insert.i76.i = or disjoint i64 %.sroa.4.8.insert.shift.i74.i, %.sroa.2.8.insert.ext.i75.i
  %i.baz = call noundef i64 @_ZNK4llvm18StringTableBuilder9getOffsetENS_19CachedHashStringRefE(ptr noundef nonnull align 8 dereferenceable(62) %i.bad, ptr %.sroa.017.0.copyload.i, i64 %.sroa.2.8.insert.insert.i76.i) #13
  %i.bba = trunc i64 %i.baz to i32                ; 2 uses
  %i.bbb = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.bbc = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.not.i.i.i77.i81 = icmp eq i32 %i.bbc, 1
  %i.bbd = call i32 @llvm.bswap.i32(i32 %i.bba)
  %spec.select.i.i.i78.i82 = select i1 %.not.i.i.i77.i81, i32 %i.bba, i32 %i.bbd
  store i32 %spec.select.i.i.i78.i82, ptr %i.ba, align 4, !tbaa !72
  %i.bbe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bbb, ptr noundef nonnull %i.ba, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %.sroa.015.0.copyload.i = load ptr, ptr %.sroa.0159.0190.i, align 8, !tbaa !60
  %.sroa.013.0.copyload.i = load ptr, ptr %i.xh, align 8, !tbaa !54
  call fastcc void @_ZN12_GLOBAL__N_19writeNameEN4llvm9StringRefENS0_7support6endian6WriterE(ptr %.sroa.015.0.copyload.i, i64 %.sroa.220.0.copyload.i, ptr %.sroa.013.0.copyload.i)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.bbf = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 16
  %i.bbg = load i64, ptr %i.bbf, align 8, !tbaa !57
  %i.bbh = trunc i64 %i.bbg to i32                ; 2 uses
  %i.bbi = load ptr, ptr %i.xh, align 8, !tbaa !375, !nonnull !69, !align !70
  %i.bbj = load i32, ptr %i.ya, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %.not.i.i.i79.i = icmp eq i32 %i.bbj, 1
  %i.bbk = call i32 @llvm.bswap.i32(i32 %i.bbh)
  %spec.select.i.i.i80.i = select i1 %.not.i.i.i79.i, i32 %i.bbh, i32 %i.bbk
  store i32 %spec.select.i.i.i80.i, ptr %i.az, align 4, !tbaa !72
  %i.bbl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bbi, ptr noundef nonnull %i.az, i64 noundef 4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.eb
  %i.bbm = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 24 ; 3 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 40
  %i.bbo = load i8, ptr %i.bbn, align 8, !tbaa !362, !range !265, !noundef !69
  %i.bbp = trunc nuw i8 %i.bbo to i1
  br i1 %i.bbp, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.bbq = call noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEsNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_sEEEES2_sS4_S7_E6doFindIS2_EEPKS7_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %i.bae, ptr noundef nonnull align 8 dereferenceable(16) %i.bbm), !noalias !379 ; 4 uses
  %.not.not.i.i.i = icmp eq ptr %i.bbq, null
  %i.bbr = load ptr, ptr %i.bae, align 8, !tbaa !65, !noalias !379
  %i.bbs = load i32, ptr %i.baf, align 4, !tbaa !64, !noalias !379
  %i.bbt = zext i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw [24 x i8], ptr %i.bbr, i64 %i.bbt
  %i.bbv = icmp eq ptr %i.bbq, %i.bbu
  %i.bbw = select i1 %.not.not.i.i.i, i1 true, i1 %i.bbv
  br i1 %i.bbw, label %_ZN4llvmplERKNS_5TwineES2_.exit.i, label %bb.ei

_ZN4llvmplERKNS_5TwineES2_.exit.i:                ; preds = %bb.eh
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %.sroa.011.0.copyload.i = load ptr, ptr %i.bbm, align 8, !tbaa !60
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190.i, i64 32
  %.sroa.212.0.copyload.i = load i64, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !57
  %i.bby = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 3, ptr %i.bby, align 8, !tbaa !88, !alias.scope !380
  %i.bbz = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.bbz, align 1, !tbaa !89, !alias.scope !380
  store ptr @.str.31, ptr %8, align 8, !tbaa !90, !alias.scope !380
  %i.bca = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.011.0.copyload.i, ptr %i.bca, align 8, !tbaa !90, !alias.scope !380
  %i.bcb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %.sroa.212.0.copyload.i, ptr %i.bcb, align 8, !tbaa !90, !alias.scope !380
  store ptr %8, ptr %7, align 8, !alias.scope !381
end_hunk_1
