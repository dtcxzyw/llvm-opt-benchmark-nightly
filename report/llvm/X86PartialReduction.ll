Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86PartialReduction?download=true
inline.NumInlined: 1134
inline.NumDeleted: 722
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_119X86PartialReduction3runERN4llvm8FunctionE:bb.a
  %49 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %50 = alloca %"class.llvm::SmallPtrSet.137", align 8 ; 12 uses
  %51 = alloca %"class.llvm::SmallVector.140", align 8 ; 14 uses
  %52 = alloca %"class.llvm::SmallVector.126", align 8 ; 10 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !34
  %i.f = tail call noundef ptr @_ZNK4llvm16X86TargetMachine16getSubtargetImplERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(1768) %i.e, ptr noundef nonnull align 8 dereferenceable(140) %1) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !56
  %i.h = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.0244.0301 = load ptr, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %.not282302 = icmp eq ptr %.sroa.0244.0301, %i.k
  br i1 %.not282302, label %._crit_edge307, label %.lr.ph306

.lr.ph306:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %52, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %51, i64 12 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %41, i64 88 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %41, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %41, i64 40 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %41, i64 48 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %41, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %41, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %41, i64 68
  %i.ag = getelementptr inbounds nuw i8, ptr %41, i64 69
  %i.ah = getelementptr inbounds nuw i8, ptr %41, i64 70
  %i.ai = getelementptr inbounds nuw i8, ptr %41, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %41, i64 24 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %42, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %43, i64 12 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.au = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 33
  %i.bb = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %48, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %26, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %26, i64 68
  %i.bo = getelementptr inbounds nuw i8, ptr %26, i64 69
  %i.bp = getelementptr inbounds nuw i8, ptr %26, i64 70
  %i.bq = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 9 uses
  %.sroa.4.0..sroa_idx.i.i.i51 = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 15 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %31, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %36, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %39, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.b

._crit_edge307:                                   ; preds = %._crit_edge299, %bb.a
  %.029.lcssa = phi i1 [ false, %bb.a ], [ %.1.lcssa, %._crit_edge299 ]
  ret i1 %.029.lcssa

bb.b:                                             ; preds = %.lr.ph306, %._crit_edge299
  %.sroa.0244.0304 = phi ptr [ %.sroa.0244.0301, %.lr.ph306 ], [ %.sroa.0244.0, %._crit_edge299 ] ; 3 uses
  %.029303 = phi i1 [ false, %.lr.ph306 ], [ %.1.lcssa, %._crit_edge299 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0244.0304, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0244.0304, i64 24 ; 2 uses
  %.sroa.0240.0293 = load ptr, ptr %i.db, align 8, !tbaa !61 ; 2 uses
  %.not283294 = icmp eq ptr %.sroa.0240.0293, %i.dc
  br i1 %.not283294, label %._crit_edge299, label %.lr.ph298

._crit_edge299:                                   ; preds = %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread, %bb.b
  %.1.lcssa = phi i1 [ %.029303, %bb.b ], [ %.6, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0244.0304, i64 8
  %.sroa.0244.0 = load ptr, ptr %i.dd, align 8, !tbaa !58 ; 2 uses
  %.not282 = icmp eq ptr %.sroa.0244.0, %i.k
  br i1 %.not282, label %._crit_edge307, label %bb.b

.lr.ph298:                                        ; preds = %bb.b, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread
  %.sroa.0240.0296 = phi ptr [ %.sroa.0240.0, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread ], [ %.sroa.0240.0293, %bb.b ] ; 5 uses
  %.1295 = phi i1 [ %.6, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread ], [ %.029303, %bb.b ] ; 15 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0240.0296, i64 -24
  %i.df = load i8, ptr %i.de, align 8, !tbaa !64
  %.not = icmp eq i8 %i.df, 93
  br i1 %.not, label %bb.c, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.c:                                             ; preds = %.lr.ph298
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0240.0296, i64 -56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !69 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !64
  %.not.i = icmp eq i8 %i.di, 5
  br i1 %.not.i, label %bb.d, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp slt i8 %i.dk, 0
  br i1 %i.dl, label %bb.e, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0240.0296, i64 -88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !69 ; 6 uses
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !64
  %.not67.i = icmp eq i8 %i.do, 44
  br i1 %.not67.i, label %bb.f, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !74 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit.i

_ZNK4llvm5Value9hasOneUseEv.exit.i:               ; preds = %bb.f
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !75
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.g, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0240.0296, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !77 ; 2 uses
  %i.dz = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dy)
  %or.cond.i = icmp eq i32 %i.dz, 1
  br i1 %or.cond.i, label %bb.h, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !83
  %.not68.i = icmp eq ptr %i.ea, %i.ec            ; 2 uses
  %i.ed = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dy, i1 false) ; 2 uses
  %i.ee = sub nuw nsw i32 31, %i.ed
  %.not69100.i = icmp eq i32 %i.ed, 31
  br i1 %.not69100.i, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread256, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.p
  %.1251 = phi i1 [ %spec.select281, %bb.p ], [ %.not68.i, %bb.h ]
  %.051102.i = phi i32 [ %i.ev, %bb.p ], [ 0, %bb.h ] ; 3 uses
  %.052101.i = phi ptr [ %.1.ph.i, %bb.p ], [ %i.dn, %bb.h ] ; 5 uses
  %i.ef = load i8, ptr %.052101.i, align 8, !tbaa !64
  %.not71.i = icmp eq i8 %i.ef, 44
  br i1 %.not71.i, label %bb.i, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.i:                                             ; preds = %.lr.ph.i
  %i.eg = load ptr, ptr %i.du, align 8, !tbaa !83
  %i.eh = getelementptr inbounds nuw i8, ptr %.052101.i, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !83
  %.not72.i = icmp eq ptr %i.eg, %i.ei
  %spec.select281 = select i1 %.not72.i, i1 %.1251, i1 false ; 2 uses
  %.not73.i = icmp eq i32 %.051102.i, 0
  br i1 %.not73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = call noundef zeroext i1 @_ZNK4llvm5Value8hasNUsesEj(ptr noundef nonnull align 8 dereferenceable(24) %.052101.i, i32 noundef 2) #17
  br i1 %i.ej, label %bb.k, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ek = getelementptr inbounds i8, ptr %.052101.i, i64 -64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !69 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.052101.i, i64 -32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !69 ; 3 uses
  %i.eo = load i8, ptr %i.el, align 8, !tbaa !64
  %.not97.i = icmp eq i8 %i.eo, 95
  br i1 %.not97.i, label %select.unfold.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = load i8, ptr %i.en, align 8, !tbaa !64
  %i.eq = icmp eq i8 %i.ep, 95
  br i1 %i.eq, label %select.unfold.i, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

select.unfold.i:                                  ; preds = %bb.l, %bb.k
  %.1.ph.i = phi ptr [ %i.en, %bb.k ], [ %i.el, %bb.l ] ; 4 uses
  %.050.ph.i = phi ptr [ %i.el, %bb.k ], [ %i.en, %bb.l ] ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.050.ph.i, i64 -64
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !69
  %.not76.i = icmp eq ptr %i.es, %.1.ph.i
  br i1 %.not76.i, label %bb.m, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.m:                                             ; preds = %select.unfold.i
  %53 = shl nuw i32 1, %.051102.i                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.050.ph.i, i64 72
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !86
  %wide.trip.count.i = zext i32 %53 to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.p, label %bb.o, !llvm.loop !88

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %indvars113.i = trunc i64 %indvars.iv.i to i32
  %54 = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i
  %55 = load i32, ptr %54, align 4, !tbaa !90
  %56 = add i32 %53, %indvars113.i
  %.not77.i = icmp eq i32 %55, %56
  br i1 %.not77.i, label %bb.n, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ev = add nuw i32 %.051102.i, 1               ; 2 uses
  %.not69.i = icmp eq i32 %i.ev, %i.ee
  br i1 %.not69.i, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit, label %.lr.ph.i, !llvm.loop !91

_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit: ; preds = %bb.p
  %.not35 = icmp eq ptr %.1.ph.i, null
  br i1 %.not35, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread, label %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread256

_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread256: ; preds = %bb.h, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit
  %.8.i261 = phi ptr [ %.1.ph.i, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit ], [ %i.dn, %bb.h ] ; 5 uses
  %.3260 = phi i1 [ %spec.select281, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit ], [ %.not68.i, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #17
  store ptr %i.l, ptr %52, align 8, !tbaa !86
  store i32 0, ptr %i.m, align 8, !tbaa !92
  store i32 8, ptr %i.n, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #17
  store ptr %i.o, ptr %50, align 8, !tbaa !38
  store i32 8, ptr %i.p, align 8, !tbaa !44
  store i32 0, ptr %i.q, align 4, !tbaa !46
  store i8 1, ptr %i.r, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #17
  store ptr %i.s, ptr %51, align 8, !tbaa !86
  store i32 8, ptr %i.u, align 4, !tbaa !93
  store ptr %.8.i261, ptr %i.s, align 8
  br label %bb.q

thread-pre-split.ithread-pre-split:               ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6insertIPNS_3UseEvEEPS2_S7_T_S8_.exit125, %bb.ae, %._crit_edge.i, %bb.ai, %bb.aj, %_ZNK4llvm5Value9hasOneUseEv.exit.i.i, %.preheader.i.i, %_ZL18isReachableFromPHIPN4llvm7PHINodeEPNS_14BinaryOperatorE.exit.i, %bb.aq, %bb.ar, %bb.at, %bb.au
  %.pr.i.pr = load i32, ptr %i.t, align 8, !tbaa !92
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.ithread-pre-split, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit.i
  %.pr.i = phi i32 [ %.pr.i.pr, %thread-pre-split.ithread-pre-split ], [ %i.mo, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit.i ] ; 2 uses
  %.not.i56.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i56.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.thread105.i, label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread256
  %i.ew = phi i32 [ 1, %_ZL17matchAddReductionRKN4llvm18ExtractElementInstERb.exit.thread256 ], [ %.pr.i, %thread-pre-split.i ] ; 2 uses
  %i.ex = load ptr, ptr %51, align 8, !tbaa !86
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !94 ; 27 uses
  %i.fc = add i32 %i.ew, -1
  store i32 %i.fc, ptr %i.t, align 8, !tbaa !92
  %i.fd = load i8, ptr %i.r, align 8, !tbaa !45, !range !95, !noalias !96, !noundef !99
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.r, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ff = load ptr, ptr %50, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.fg = load i32, ptr %i.q, align 4, !tbaa !46, !noalias !96 ; 4 uses
  %i.fh = zext i32 %i.fg to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.fh, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.fk, %.critedge.i.i.i ], [ %i.ff, %bb.r ] ; 2 uses
  %i.fj = load ptr, ptr %.023.i.i.i, align 8, !tbaa !17, !noalias !96
  %.not15.i.i.i = icmp eq ptr %i.fj, %i.fb
  br i1 %.not15.i.i.i, label %thread-pre-split.ithread-pre-split, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fk, %i.fi
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.r
  %i.fl = load i32, ptr %i.p, align 8, !tbaa !44, !noalias !96
  %i.fm = icmp ult i32 %i.fg, %i.fl
  br i1 %i.fm, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.thread, label %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.thread: ; preds = %._crit_edge.i.i.i
  %i.fn = add nuw i32 %i.fg, 1
  store i32 %i.fn, ptr %i.q, align 4, !tbaa !46, !noalias !96
  store ptr %i.fb, ptr %i.fi, align 8, !tbaa !17, !noalias !96
  br label %bb.s

_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i: ; preds = %bb.q, %._crit_edge.i.i.i
  %i.fo = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %50, ptr noundef %i.fb) #17, !noalias !96
  %i.fp = extractvalue { ptr, i8 } %i.fo, 1
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.s, label %thread-pre-split.ithread-pre-split, !llvm.loop !100

bb.s:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i.thread, %_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE6insertES2_.exit.i
  %i.fr = load i8, ptr %i.fb, align 8, !tbaa !64  ; 2 uses
  switch i8 %i.fr, label %bb.aq [
    i8 87, label %bb.t
    i8 44, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.fs = icmp eq ptr %i.fb, %.8.i261
  %i.ft = select i1 %i.fs, i32 2, i32 1
  %i.fu = call noundef zeroext i1 @_ZNK4llvm5Value8hasNUsesEj(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i32 noundef %i.ft) #17
  br i1 %i.fu, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.thread105.i

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fw = load i32, ptr %i.fv, align 4            ; 3 uses
  %i.fx = and i32 %i.fw, 1073741824
  %.not.i.i.i.i.i57.i = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i.i.i.i57.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = getelementptr inbounds i8, ptr %i.fb, i64 -8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !101
  %.pre.i.i.i.i = and i32 %i.fw, 268435455
  %.pre1.i.i.i.i = zext nneg i32 %.pre.i.i.i.i to i64
  br label %bb.av

bb.w:                                             ; preds = %bb.u
  %i.ga = and i32 %i.fw, 268435455
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = sub nsw i64 0, %i.gb
  %i.gd = getelementptr inbounds [32 x i8], ptr %i.fb, i64 %i.gc
  br label %bb.av

bb.x:                                             ; preds = %bb.s
  %i.ge = icmp eq ptr %i.fb, %.8.i261             ; 2 uses
  %i.gf = select i1 %i.ge, i32 2, i32 1
  %i.gg = call noundef zeroext i1 @_ZNK4llvm5Value8hasNUsesEj(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i32 noundef %i.gf) #17
  br i1 %i.gg, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.gi = load i32, ptr %i.gh, align 4            ; 3 uses
  %i.gj = and i32 %i.gi, 1073741824
  %.not.i.i.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gk = getelementptr inbounds i8, ptr %i.fb, i64 -8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !101
  %.pre.i.i.i = and i32 %i.gi, 268435455
  %.pre1.i.i.i = zext nneg i32 %.pre.i.i.i to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gm = and i32 %i.gi, 268435455
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.go = sub nsw i64 0, %i.gn
  %i.gp = getelementptr inbounds [32 x i8], ptr %i.fb, i64 %i.go
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.gq = phi ptr [ %i.gl, %bb.z ], [ %i.gp, %bb.aa ] ; 3 uses
  %.pre-phi2.i.i.i = phi i64 [ %.pre1.i.i.i, %bb.z ], [ %i.gn, %bb.aa ] ; 4 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i.i, 5     ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx
  %i.gs = load i32, ptr %i.t, align 8, !tbaa !92  ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = add nuw nsw i64 %.pre-phi2.i.i.i, %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.u, align 4, !tbaa !93
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ugt i64 %i.gu, %i.gw
  br i1 %i.gx, label %bb.ac, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i112

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %51, ptr noundef nonnull %i.s, i64 noundef %i.gu, i64 noundef 8) #17
  %.pre.i.i122 = load i32, ptr %i.t, align 8, !tbaa !92 ; 2 uses
  %.pre8.i.i123 = zext i32 %.pre.i.i122 to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i112

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i112: ; preds = %bb.ac, %bb.ab
  %.pre-phi.i.i114 = phi i64 [ %i.gt, %bb.ab ], [ %.pre8.i.i123, %bb.ac ]
  %i.gy = phi i32 [ %i.gs, %bb.ab ], [ %.pre.i.i122, %bb.ac ]
  %.not9.i.i.i.i.i.i115 = icmp eq i64 %.pre-phi2.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i115, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6insertIPNS_3UseEvEEPS2_S7_T_S8_.exit125, label %.lr.ph.i.i.i.i.preheader.i.i116

.lr.ph.i.i.i.i.preheader.i.i116:                  ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i112
  %.pre64.i113 = load ptr, ptr %51, align 8, !tbaa !86
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.pre64.i113, i64 %.pre-phi.i.i114 ; 2 uses
  %i.ha = add nsw i64 %.idx, -32                  ; 2 uses
  %i.hb = lshr exact i64 %i.ha, 5
  %i.hc = add nuw nsw i64 %i.hb, 1
  %xtraiter = and i64 %i.hc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i117.prol

.lr.ph.i.i.i.i.i.i117.prol:                       ; preds = %.lr.ph.i.i.i.i.preheader.i.i116, %.lr.ph.i.i.i.i.i.i117.prol
  %.011.i.i.i.i.i.i118.prol = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i117.prol ], [ %i.gz, %.lr.ph.i.i.i.i.preheader.i.i116 ] ; 2 uses
  %.0810.i.i.i.i.i.i119.prol = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i117.prol ], [ %i.gq, %.lr.ph.i.i.i.i.preheader.i.i116 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i117.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i116 ]
  %i.hd = load ptr, ptr %.0810.i.i.i.i.i.i119.prol, align 8, !tbaa !69
  store ptr %i.hd, ptr %.011.i.i.i.i.i.i118.prol, align 8, !tbaa !94
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i119.prol, i64 32 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i118.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i117.prol, !llvm.loop !102

.lr.ph.i.i.i.i.i.i117.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i117.prol, %.lr.ph.i.i.i.i.preheader.i.i116
  %.011.i.i.i.i.i.i118.unr = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.preheader.i.i116 ], [ %i.hf, %.lr.ph.i.i.i.i.i.i117.prol ]
  %.0810.i.i.i.i.i.i119.unr = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.preheader.i.i116 ], [ %i.he, %.lr.ph.i.i.i.i.i.i117.prol ]
  %i.hg = icmp ult i64 %i.ha, 224
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119X86PartialReduction3runERN4llvm8FunctionE:bb.a
  %i.aju = load ptr, ptr %i.ajt, align 8
  %i.ajv = call noundef ptr %i.aju(ptr noundef nonnull align 8 dereferenceable(8) %i.ajr, i32 noundef 51, ptr noundef nonnull %i.ajn, ptr noundef %i.ahf) #17, !inline_history !322 ; 2 uses
  %.not.not.i219 = icmp eq ptr %i.ajv, null
  br i1 %.not.not.i219, label %bb.ef, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i16 257, ptr %i.cn, align 8
  %i.ajw = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 51, ptr noundef nonnull %i.ajn, ptr noundef %i.ahf, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #17 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ajx = load i8, ptr %i.ajw, align 8, !tbaa !64 ; 2 uses
  %i.ajy = icmp ult i8 %i.ajx, 30
  br i1 %i.ajy, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  switch i8 %i.ajx, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275 [
    i8 43, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 45, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 47, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 49, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 52, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 55, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 76, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 77, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 74, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 75, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 86, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 87, label %bb.eh
    i8 89, label %bb.eh
    i8 88, label %bb.eh
  ]

bb.eh:                                            ; preds = %bb.eg, %bb.eg, %bb.eg
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !76 ; 6 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load i32, ptr %i.akb, align 8          ; 5 uses
  %i.akd = and i32 %i.akc, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.akd, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.ei, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aka, i64 16
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !323
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !324
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %.pre.i.i.i239 = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i:       ; preds = %bb.ei, %bb.eh
  %i.akh = phi i32 [ %.pre.i.i.i239, %bb.ei ], [ %i.akc, %bb.eh ] ; 2 uses
  %trunc.i.i.i.i.i = trunc i32 %i.akh to i8
  switch i8 %trunc.i.i.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i:      ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i
  %i.aki = and i32 %i.akh, 253
  %spec.select.i.i.i.i = icmp eq i32 %i.aki, 4
  br i1 %spec.select.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread, label %bb.ej

bb.ej:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i
  %trunc.i.i = trunc i32 %i.akc to i8
  switch i8 %trunc.i.i, label %.loopexit.i.i.i [
    i8 16, label %bb.ek
    i8 17, label %.preheader.i.i.i
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.akj = and i32 %i.akc, 1024
  %.not26.i.i.i = icmp eq i32 %i.akj, 0
  br i1 %.not26.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.akk = call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aka) #17
  br i1 %i.akk, label %bb.em, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275

bb.em:                                            ; preds = %bb.el
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aka, i64 16
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !323
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !324 ; 2 uses
  %.phi.trans.insert.i2.i.i = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %.pre.i3.i.i = load i32, ptr %.phi.trans.insert.i2.i.i, align 8
  br label %.loopexit.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ej, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.akp, %.preheader.i.i.i ], [ %i.aka, %bb.ej ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !325 ; 4 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.akr = load i32, ptr %i.akq, align 8          ; 2 uses
  %i.aks = and i32 %i.akr, 255
  %i.akt = icmp ne i32 %i.aks, 17
  %.not1828.i.i.i = icmp eq ptr %i.akp, null
  %.not18.i.i.i = or i1 %.not1828.i.i.i, %i.akt
  br i1 %.not18.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !327

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.em, %bb.ej
  %i.aku = phi i32 [ %i.akc, %bb.ej ], [ %.pre.i3.i.i, %bb.em ], [ %i.akr, %.preheader.i.i.i ] ; 2 uses
  %.2.ph.i.i.i = phi ptr [ %i.aka, %bb.ej ], [ %i.akn, %bb.em ], [ %i.akp, %.preheader.i.i.i ]
  %i.akv = and i32 %i.aku, 254
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.akv, 18
  br i1 %spec.select.i.i.i.i.i.i, label %bb.en, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i

bb.en:                                            ; preds = %.loopexit.i.i.i
  %i.akw = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i, i64 16
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !323
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !324
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %.pre.i.i.i.i238 = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i:     ; preds = %bb.en, %.loopexit.i.i.i
  %i.akz = phi i32 [ %.pre.i.i.i.i238, %bb.en ], [ %i.aku, %.loopexit.i.i.i ] ; 2 uses
  %trunc.i.i.i.i.i.i = trunc i32 %i.akz to i8
  switch i8 %trunc.i.i.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
  ]

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i
  %i.ala = and i32 %i.akz, 253
  %spec.select.i.i21.i.i.i = icmp eq i32 %i.ala, 4
  br i1 %spec.select.i.i21.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %bb.eg, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit
  %.sroa.0.0.copyload.i = load i32, ptr %i.bm, align 8, !tbaa !90
  %i.alb = load ptr, ptr %i.bl, align 8           ; 2 uses
  %.not9.i.i = icmp eq ptr %i.alb, null
  br i1 %.not9.i.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.ajw, i32 noundef 3, ptr noundef nonnull %i.alb) #17
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i: ; preds = %bb.eo, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.ajw, i32 %.sroa.0.0.copyload.i) #17
  br label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275: ; preds = %bb.eg, %bb.ek, %bb.ef, %bb.el, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit
  %i.alc = load ptr, ptr %i.bk, align 8, !tbaa !296, !nonnull !99, !align !262 ; 2 uses
  %.sroa.0.0.copyload.i.i221 = load ptr, ptr %i.bs, align 8
  %.sroa.2.0.copyload.i.i223 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i51, align 8
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !15
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %i.alf = load ptr, ptr %i.ale, align 8
  call void %i.alf(ptr noundef nonnull align 8 dereferenceable(8) %i.alc, ptr noundef nonnull %i.ajw, ptr noundef nonnull align 8 dereferenceable(34) %35, ptr %.sroa.0.0.copyload.i.i221, i64 %.sroa.2.0.copyload.i.i223) #17, !inline_history !328
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull %i.ajw) #17
  br label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit

_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit: ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i, %bb.ee, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275
  %.1.i220 = phi ptr [ %i.ajv, %bb.ee ], [ %i.ajw, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread275 ], [ %i.ajn, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit.i ]
  %i.alg = load ptr, ptr %30, align 8, !tbaa !86
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %indvars.iv226.i
  store ptr %.1.i220, ptr %i.alh, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  %i.ali = load ptr, ptr %31, align 8, !tbaa !86  ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.cd
  br i1 %i.alj, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit.i, label %bb.ep

bb.ep:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit
  call void @free(ptr noundef %i.ali) #17
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit.i

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit.i:         ; preds = %bb.ep, %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %.not128.i = icmp eq i64 %indvars.iv.next227.i, %i.ahi
  br i1 %.not128.i, label %._crit_edge207.i, label %vector.ph412, !llvm.loop !329

.loopexit.i:                                      ; preds = %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit170.i
  %.not129.i = icmp eq i32 %i.alt, 0
  br i1 %.not129.i, label %._crit_edge213.i, label %bb.eq, !llvm.loop !330

._crit_edge213.i:                                 ; preds = %.loopexit.i, %._crit_edge207.i
  %i.alk = load i32, ptr %i.adr, align 8, !tbaa !77 ; 10 uses
  %i.all = icmp eq i32 %i.alk, 2
  br i1 %i.all, label %bb.ev, label %bb.ex

bb.eq:                                            ; preds = %.loopexit.i, %.lr.ph212.i
  %.0107210.i = phi i32 [ %i.aia, %.lr.ph212.i ], [ %i.alt, %.loopexit.i ]
  %i.alm = load ptr, ptr %30, align 8, !tbaa !86
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !94
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !76
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 32
  %i.alr = load i32, ptr %i.alq, align 8, !tbaa !77
  %i.als = shl i32 %i.alr, 1                      ; 5 uses
  %i.alt = add i32 %.0107210.i, -1                ; 3 uses
  %i.alu = shl nuw i32 1, %i.alt
  %i.alv = zext i32 %i.als to i64                 ; 3 uses
  %i.alw = icmp eq i32 %i.als, 0
  %i.alx = icmp ugt i32 %i.als, 64
  %.idx197.i = shl nuw nsw i64 %i.alv, 2          ; 2 uses
  %i.aly = add nsw i64 %.idx197.i, -4             ; 2 uses
  %i.alz = lshr exact i64 %i.aly, 2
  %i.ama = add nuw nsw i64 %i.alz, 1              ; 2 uses
  %min.iters.check397 = icmp ult i64 %i.aly, 28
  %n.vec399 = and i64 %i.ama, 9223372036854775800 ; 4 uses
  %i.amb = trunc i64 %n.vec399 to i32
  %i.amc = shl i64 %n.vec399, 2
  %cmp.n407 = icmp eq i64 %i.ama, %n.vec399
  br label %bb.er

bb.er:                                            ; preds = %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit170.i, %bb.eq
  %indvars.iv229.i = phi i64 [ 0, %bb.eq ], [ %indvars.iv.next230.i, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit170.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  store ptr %i.co, ptr %36, align 8, !tbaa !86
  store i32 0, ptr %i.cp, align 8, !tbaa !92
  store i32 64, ptr %i.cq, align 4, !tbaa !93
  br i1 %i.alw, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i56, label %bb.es

bb.es:                                            ; preds = %bb.er
  br i1 %i.alx, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i152.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i: ; preds = %bb.es
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %36, ptr noundef nonnull %i.co, i64 noundef %i.alv, i64 noundef 4) #17
  %.pre.i.i.i155.i = load i32, ptr %i.cp, align 8, !tbaa !92 ; 2 uses
  %.not11.i.i.i157.i = icmp eq i32 %i.als, %.pre.i.i.i155.i
  %.pre236.pre.i = load ptr, ptr %36, align 8, !tbaa !86 ; 2 uses
  br i1 %.not11.i.i.i157.i, label %.lr.ph.i160.preheader.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre13.i.i.i156.i = zext i32 %.pre.i.i.i155.i to i64
  br label %.lr.ph.preheader.i.i.i152.i

.lr.ph.preheader.i.i.i152.i:                      ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %bb.es
  %i.amd = phi ptr [ %.pre236.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.co, %bb.es ] ; 2 uses
  %.pre-phi.i.i3.i153.i = phi i64 [ %.pre13.i.i.i156.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %bb.es ] ; 2 uses
  %i.ame = getelementptr [4 x i8], ptr %i.amd, i64 %.pre-phi.i.i3.i153.i
  %i.amf = sub nsw i64 %i.alv, %.pre-phi.i.i3.i153.i
  %i.amg = shl nsw i64 %i.amf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ame, i8 0, i64 %i.amg, i1 false), !tbaa !90
  br label %.lr.ph.i160.preheader.i

.lr.ph.i160.preheader.i:                          ; preds = %.lr.ph.preheader.i.i.i152.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre236.i = phi ptr [ %i.amd, %.lr.ph.preheader.i.i.i152.i ], [ %.pre236.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i ] ; 5 uses
  store i32 %i.als, ptr %i.cp, align 8, !tbaa !92
  %i.amh = getelementptr inbounds nuw i8, ptr %.pre236.i, i64 %.idx197.i
  br i1 %min.iters.check397, label %.lr.ph.i160.i.preheader, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph.i160.preheader.i
  %i.ami = getelementptr i8, ptr %.pre236.i, i64 %i.amc
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next404, %vector.body400 ] ; 2 uses
  %vec.ind402 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph398 ], [ %vec.ind.next405, %vector.body400 ] ; 3 uses
  %step.add403 = add nuw nsw <4 x i32> %vec.ind402, splat (i32 4)
  %i.amj = shl i64 %index401, 2
  %next.gep = getelementptr i8, ptr %.pre236.i, i64 %i.amj ; 2 uses
  %i.amk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind402, ptr %next.gep, align 4, !tbaa !90
  store <4 x i32> %step.add403, ptr %i.amk, align 4, !tbaa !90
  %index.next404 = add nuw i64 %index401, 8       ; 2 uses
  %vec.ind.next405 = add nuw nsw <4 x i32> %vec.ind402, splat (i32 8)
  %i.aml = icmp eq i64 %index.next404, %n.vec399
  br i1 %i.aml, label %middle.block406, label %vector.body400, !llvm.loop !331

middle.block406:                                  ; preds = %vector.body400
  br i1 %cmp.n407, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i, label %.lr.ph.i160.i.preheader

.lr.ph.i160.i.preheader:                          ; preds = %.lr.ph.i160.preheader.i, %middle.block406
  %.08.i161.i.ph = phi i32 [ 0, %.lr.ph.i160.preheader.i ], [ %i.amb, %middle.block406 ]
  %.057.i162.i.ph = phi ptr [ %.pre236.i, %.lr.ph.i160.preheader.i ], [ %i.ami, %middle.block406 ]
  br label %.lr.ph.i160.i

.lr.ph.i160.i:                                    ; preds = %.lr.ph.i160.i.preheader, %.lr.ph.i160.i
  %.08.i161.i = phi i32 [ %i.amm, %.lr.ph.i160.i ], [ %.08.i161.i.ph, %.lr.ph.i160.i.preheader ] ; 2 uses
  %.057.i162.i = phi ptr [ %i.amn, %.lr.ph.i160.i ], [ %.057.i162.i.ph, %.lr.ph.i160.i.preheader ] ; 2 uses
  store i32 %.08.i161.i, ptr %.057.i162.i, align 4, !tbaa !90
  %i.amm = add nuw nsw i32 %.08.i161.i, 1
  %i.amn = getelementptr inbounds nuw i8, ptr %.057.i162.i, i64 4 ; 2 uses
  %.not.i163.i = icmp eq ptr %i.amn, %i.amh
  br i1 %.not.i163.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i, label %.lr.ph.i160.i, !llvm.loop !332

_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i:          ; preds = %.lr.ph.i160.i, %middle.block406
  %.pre237.i = load i32, ptr %i.cp, align 8, !tbaa !92
  %i.amo = zext i32 %.pre237.i to i64
  br label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i56

_ZSt4iotaIPiiEvT_S1_T0_.exit.i56:                 ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i, %bb.er
  %i.amp = phi ptr [ %.pre236.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i ], [ %i.co, %bb.er ] ; 2 uses
  %i.amq = phi i64 [ %i.amo, %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i ], [ 0, %bb.er ] ; 2 uses
  %57 = trunc nuw i64 %indvars.iv229.i to i32
  %58 = shl i32 %57, 1                            ; 2 uses
  %59 = zext i32 %58 to i64
  %i.amr = load ptr, ptr %30, align 8, !tbaa !86  ; 2 uses
  %60 = getelementptr inbounds nuw [8 x i8], ptr %i.amr, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !94     ; 2 uses
  %62 = or disjoint i32 %58, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw [8 x i8], ptr %i.amr, i64 %63
  %i.ams = load ptr, ptr %64, align 8, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17
  store i16 257, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.amt = load ptr, ptr %i.bj, align 8, !tbaa !290, !nonnull !99, !align !262 ; 2 uses
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !15
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 112
  %i.amw = load ptr, ptr %i.amv, align 8
  %i.amx = call noundef ptr %i.amw(ptr noundef nonnull align 8 dereferenceable(8) %i.amt, ptr noundef %61, ptr noundef %i.ams, ptr %i.amp, i64 %i.amq) #17, !inline_history !319 ; 2 uses
  %.not.not.i164.i = icmp eq ptr %i.amx, null
  br i1 %.not.not.i164.i, label %bb.et, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit169.i

bb.et:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i56
  %i.amy = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store i16 257, ptr %i.cs, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.amy, ptr noundef %61, ptr noundef %i.ams, ptr %i.amp, i64 %i.amq, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %21) #17
  %i.amz = load ptr, ptr %i.bk, align 8, !tbaa !296, !nonnull !99, !align !262 ; 2 uses
  %.sroa.0.0.copyload.i.i166.i = load ptr, ptr %i.bs, align 8
  %.sroa.2.0.copyload.i.i168.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i51, align 8
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !15
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %i.anc = load ptr, ptr %i.anb, align 8
  call void %i.anc(ptr noundef nonnull align 8 dereferenceable(8) %i.amz, ptr noundef nonnull %i.amy, ptr noundef nonnull align 8 dereferenceable(34) %37, ptr %.sroa.0.0.copyload.i.i166.i, i64 %.sroa.2.0.copyload.i.i168.i) #17, !inline_history !320
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull %i.amy) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit169.i

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit169.i: ; preds = %bb.et, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i56
  %.1.i165.i = phi ptr [ %i.amy, %bb.et ], [ %i.amx, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.and = load ptr, ptr %30, align 8, !tbaa !86
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.and, i64 %indvars.iv229.i
  store ptr %.1.i165.i, ptr %i.ane, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  %i.anf = load ptr, ptr %36, align 8, !tbaa !86  ; 2 uses
  %i.ang = icmp eq ptr %i.anf, %i.co
  br i1 %i.ang, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit170.i, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit169.i
  call void @free(ptr noundef %i.anf) #17
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit170.i

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit170.i:      ; preds = %bb.eu, %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  %indvars.iv.next230.i = add nuw nsw i64 %indvars.iv229.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next230.i to i32
  %exitcond = icmp eq i32 %i.alu, %lftr.wideiv
  br i1 %exitcond, label %.loopexit.i, label %bb.er, !llvm.loop !333

bb.ev:                                            ; preds = %._crit_edge213.i
  %i.anh = load ptr, ptr %30, align 8, !tbaa !86
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !94 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !90
  store i32 1, ptr %i.cy, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #17
  store i16 257, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.anj = load ptr, ptr %i.bj, align 8, !tbaa !290, !nonnull !99, !align !262 ; 2 uses
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !15
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 112
  %i.anm = load ptr, ptr %i.anl, align 8
  %i.ann = call noundef ptr %i.anm(ptr noundef nonnull align 8 dereferenceable(8) %i.anj, ptr noundef %i.ani, ptr noundef %i.ani, ptr nonnull %i.d, i64 2) #17, !inline_history !298 ; 2 uses
  %.not.not.i213 = icmp eq ptr %i.ann, null
  br i1 %.not.not.i213, label %bb.ew, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit218

bb.ew:                                            ; preds = %bb.ev
  %i.ano = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i16 257, ptr %i.da, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.ano, ptr noundef %i.ani, ptr noundef %i.ani, ptr nonnull %i.d, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %8) #17
  %i.anp = load ptr, ptr %i.bk, align 8, !tbaa !296, !nonnull !99, !align !262 ; 2 uses
  %.sroa.0.0.copyload.i.i215 = load ptr, ptr %i.bs, align 8
  %.sroa.2.0.copyload.i.i217 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i51, align 8
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !15
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  %i.ans = load ptr, ptr %i.anr, align 8
  call void %i.ans(ptr noundef nonnull align 8 dereferenceable(8) %i.anp, ptr noundef nonnull %i.ano, ptr noundef nonnull align 8 dereferenceable(34) %38, ptr %.sroa.0.0.copyload.i.i215, i64 %.sroa.2.0.copyload.i.i217) #17, !inline_history !299
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull %i.ano) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit218

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit218: ; preds = %bb.ev, %bb.ew
  %.1.i214 = phi ptr [ %i.ano, %bb.ew ], [ %i.ann, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ant = load ptr, ptr %30, align 8, !tbaa !86
  store ptr %.1.i214, ptr %i.ant, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.fb

bb.ex:                                            ; preds = %._crit_edge213.i
  %i.anu = icmp ugt i32 %i.alk, 7
  br i1 %i.anu, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #17
  %i.anv = zext i32 %i.alk to i64                 ; 2 uses
  store ptr %i.ct, ptr %39, align 8, !tbaa !86
  store i32 0, ptr %i.cu, align 8, !tbaa !92
  store i32 32, ptr %i.cv, align 4, !tbaa !93
  %i.anw = icmp ugt i32 %i.alk, 32
  br i1 %i.anw, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i206, label %.lr.ph.preheader.i.i.i203

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i206: ; preds = %bb.ey
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %39, ptr noundef nonnull %i.ct, i64 noundef %i.anv, i64 noundef 4) #17
  %.pre.i.i.i207 = load i32, ptr %i.cu, align 8, !tbaa !92 ; 2 uses
  %.not11.i.i.i209 = icmp eq i32 %i.alk, %.pre.i.i.i207
  br i1 %.not11.i.i.i209, label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit212, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i210

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i210: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i206
  %.pre13.i.i.i208 = zext i32 %.pre.i.i.i207 to i64
  %.pre.i211 = load ptr, ptr %39, align 8, !tbaa !86
  br label %.lr.ph.preheader.i.i.i203

.lr.ph.preheader.i.i.i203:                        ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i210, %bb.ey
  %i.anx = phi ptr [ %.pre.i211, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i210 ], [ %i.ct, %bb.ey ]
  %.pre-phi.i.i3.i204 = phi i64 [ %.pre13.i.i.i208, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i210 ], [ 0, %bb.ey ] ; 2 uses
  %i.any = getelementptr [4 x i8], ptr %i.anx, i64 %.pre-phi.i.i3.i204
  %i.anz = sub nsw i64 %i.anv, %.pre-phi.i.i3.i204
  %i.aoa = shl nsw i64 %i.anz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.any, i8 0, i64 %i.aoa, i1 false), !tbaa !90
  br label %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit212

_ZN4llvm11SmallVectorIiLj32EEC2Em.exit212:        ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i206, %.lr.ph.preheader.i.i.i203
  store i32 %i.alk, ptr %i.cu, align 8, !tbaa !92
  %i.aob = load ptr, ptr %30, align 8, !tbaa !86
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !94
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !76 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 32
  %i.aog = load i32, ptr %i.aof, align 8, !tbaa !77 ; 14 uses
  %.not130214.i = icmp eq i32 %i.aog, 0
  br i1 %.not130214.i, label %.preheader.i, label %.lr.ph217.i

.lr.ph217.i:                                      ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit212
  %i.aoh = load ptr, ptr %39, align 8, !tbaa !86  ; 2 uses
  %i.aoi = zext i32 %i.aog to i64                 ; 3 uses
  %min.iters.check = icmp ult i32 %i.aog, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph217.i
  %n.vec = and i64 %i.aoi, 4294967288             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %index ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 16
  store <4 x i32> %vec.ind, ptr %i.aoj, align 4, !tbaa !90
  store <4 x i32> %step.add, ptr %i.aok, align 4, !tbaa !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aol = icmp eq i64 %index.next, %n.vec
  br i1 %i.aol, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aoi
  br i1 %cmp.n, label %.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph217.i, %middle.block
  %indvars.iv232.i.ph = phi i64 [ 0, %.lr.ph217.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader.i:                                     ; preds = %scalar.ph, %middle.block, %_ZN4llvm11SmallVectorIiLj32EEC2Em.exit212
  %.not131218.i = icmp eq i32 %i.aog, %i.alk
  br i1 %.not131218.i, label %._crit_edge221.i, label %.lr.ph220.i

.lr.ph220.i:                                      ; preds = %.preheader.i
  %i.aom = load ptr, ptr %39, align 8, !tbaa !86  ; 3 uses
  %i.aon = sub i32 %i.alk, %i.aog
  %.neg = add i32 %i.aog, 1
  %xtraiter471 = and i32 %i.aon, 1
  %lcmp.mod472.not = icmp eq i32 %xtraiter471, 0
  br i1 %lcmp.mod472.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph220.i
  %i.aoo = zext i32 %i.aog to i64
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %i.aoo
  store i32 %i.aog, ptr %i.aop, align 4, !tbaa !90
  %i.aoq = add i32 %i.aog, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph220.i
  %.0104219.i.unr = phi i32 [ %i.aog, %.lr.ph220.i ], [ %i.aoq, %.prol.loopexit.unr-lcssa ]
  %i.aor = icmp eq i32 %i.alk, %.neg
  br i1 %i.aor, label %._crit_edge221.i, label %.lr.ph220.i.new

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %scalar.ph ], [ %indvars.iv232.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %indvars.iv232.i
  %i.aot = trunc nuw i64 %indvars.iv232.i to i32
  store i32 %i.aot, ptr %i.aos, align 4, !tbaa !90
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %.not130.i = icmp eq i64 %indvars.iv.next233.i, %i.aoi
  br i1 %.not130.i, label %.preheader.i, label %scalar.ph, !llvm.loop !335

._crit_edge221.i:                                 ; preds = %.prol.loopexit, %.lr.ph220.i.new, %.preheader.i
  %i.aou = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef nonnull %i.aoe) #17 ; 2 uses
  %i.aov = load ptr, ptr %30, align 8, !tbaa !86
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !94 ; 2 uses
  %i.aox = load ptr, ptr %39, align 8, !tbaa !86  ; 2 uses
  %i.aoy = load i32, ptr %i.cu, align 8, !tbaa !92
  %i.aoz = zext i32 %i.aoy to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #17
  store i16 257, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.apa = load ptr, ptr %i.bj, align 8, !tbaa !290, !nonnull !99, !align !262 ; 2 uses
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !15
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 112
  %i.apd = load ptr, ptr %i.apc, align 8
  %i.ape = call noundef ptr %i.apd(ptr noundef nonnull align 8 dereferenceable(8) %i.apa, ptr noundef %i.aow, ptr noundef %i.aou, ptr %i.aox, i64 %i.aoz) #17, !inline_history !298 ; 2 uses
  %.not.not.i197 = icmp eq ptr %i.ape, null
  br i1 %.not.not.i197, label %bb.ez, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit202

bb.ez:                                            ; preds = %._crit_edge221.i
  %i.apf = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i16 257, ptr %i.cx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.apf, ptr noundef %i.aow, ptr noundef %i.aou, ptr %i.aox, i64 %i.aoz, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %10) #17
  %i.apg = load ptr, ptr %i.bk, align 8, !tbaa !296, !nonnull !99, !align !262 ; 2 uses
  %.sroa.0.0.copyload.i.i199 = load ptr, ptr %i.bs, align 8
  %.sroa.2.0.copyload.i.i201 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i51, align 8
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !15
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load ptr, ptr %i.api, align 8
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(8) %i.apg, ptr noundef nonnull %i.apf, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr %.sroa.0.0.copyload.i.i199, i64 %.sroa.2.0.copyload.i.i201) #17, !inline_history !299
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef nonnull %i.apf) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit202

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit202: ; preds = %._crit_edge221.i, %bb.ez
  %.1.i198 = phi ptr [ %i.apf, %bb.ez ], [ %i.ape, %._crit_edge221.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.apk = load ptr, ptr %30, align 8, !tbaa !86
  store ptr %.1.i198, ptr %i.apk, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  %i.apl = load ptr, ptr %39, align 8, !tbaa !86  ; 2 uses
  %i.apm = icmp eq ptr %i.apl, %i.ct
  br i1 %i.apm, label %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit171.i, label %bb.fa

bb.fa:                                            ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit202
  call void @free(ptr noundef %i.apl) #17
end_hunk_1
