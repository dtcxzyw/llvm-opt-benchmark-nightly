Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/keys?download=true
inline.NumInlined: 2616
inline.NumDeleted: 1036
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt22__move_median_to_firstIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_SA_T0_:bb.a
  %sext.i.i.i.i.i.i.i = add i64 %i.h, 21474836480
  %i.i = ashr exact i64 %sext.i.i.i.i.i.i.i, 29
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 15
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.d, -4294967296
  %sext.i.i.i.i.i2.i.i = add i64 %i.o, 21474836480
  %i.p = ashr exact i64 %sext.i.i.i.i.i2.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 15
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %sum.shift.i.i = lshr i64 %i.n, 40
  %i.v = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.w = and i32 %i.v, 8388607
  %sum.shift8.i.i = lshr i64 %i.u, 40
  %i.x = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.y = and i32 %i.x, 8388607
  %i.z = icmp samesign ult i32 %i.w, %i.y
  %i.aa = inttoptr i64 %3 to ptr                  ; 8 uses
  br i1 %i.z, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ab = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.ac = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ad = and i64 %i.ab, -4294967296
  %sext.i.i.i.i.i.i.i44 = add i64 %i.ad, 21474836480
  %i.ae = ashr exact i64 %sext.i.i.i.i.i.i.i44, 29
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 15
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.ac, -4294967296
  %sext.i.i.i.i.i2.i.i45 = add i64 %i.ak, 21474836480
  %i.al = ashr exact i64 %sext.i.i.i.i.i2.i.i45, 29
  %i.am = getelementptr inbounds i8, ptr %i.g, i64 %i.al
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 15
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %sum.shift.i.i46 = lshr i64 %i.aj, 40
  %i.ar = trunc nuw nsw i64 %sum.shift.i.i46 to i32
  %i.as = and i32 %i.ar, 8388607
  %sum.shift8.i.i47 = lshr i64 %i.aq, 40
  %i.at = trunc nuw nsw i64 %sum.shift8.i.i47 to i32
  %i.au = and i32 %i.at, 8388607
  %i.av = icmp samesign ult i32 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = load atomic volatile i64, ptr %i.c monotonic, align 8
  store atomic volatile i64 %i.ay, ptr %i.aw monotonic, align 8
  store atomic volatile i64 %i.ax, ptr %i.c monotonic, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.az = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.ba = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.bb = and i64 %i.az, -4294967296
  %sext.i.i.i.i.i.i.i48 = add i64 %i.bb, 21474836480
  %i.bc = ashr exact i64 %sext.i.i.i.i.i.i.i48, 29
  %i.bd = getelementptr inbounds i8, ptr %i.g, i64 %i.bc
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 15
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.ba, -4294967296
  %sext.i.i.i.i.i2.i.i49 = add i64 %i.bi, 21474836480
  %i.bj = ashr exact i64 %sext.i.i.i.i.i2.i.i49, 29
  %i.bk = getelementptr inbounds i8, ptr %i.g, i64 %i.bj
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 15
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i64, ptr %i.bn, align 8
  %sum.shift.i.i50 = lshr i64 %i.bh, 40
  %i.bp = trunc nuw nsw i64 %sum.shift.i.i50 to i32
  %i.bq = and i32 %i.bp, 8388607
  %sum.shift8.i.i51 = lshr i64 %i.bo, 40
  %i.br = trunc nuw nsw i64 %sum.shift8.i.i51 to i32
  %i.bs = and i32 %i.br, 8388607
  %i.bt = icmp samesign ult i32 %i.bq, %i.bs
  %i.bu = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bv = load atomic volatile i64, ptr %i.bu monotonic, align 8 ; 2 uses
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bw = load atomic volatile i64, ptr %i.aa monotonic, align 8
  store atomic volatile i64 %i.bw, ptr %i.bu monotonic, align 8
  store atomic volatile i64 %i.bv, ptr %i.aa monotonic, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.bx = load atomic volatile i64, ptr %i.a monotonic, align 8
  store atomic volatile i64 %i.bx, ptr %i.bu monotonic, align 8
  store atomic volatile i64 %i.bv, ptr %i.a monotonic, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.by = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.bz = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ca = and i64 %i.by, -4294967296
  %sext.i.i.i.i.i.i.i52 = add i64 %i.ca, 21474836480
  %i.cb = ashr exact i64 %sext.i.i.i.i.i.i.i52, 29
  %i.cc = getelementptr inbounds i8, ptr %i.g, i64 %i.cb
  %i.cd = load atomic volatile i64, ptr %i.cc monotonic, align 8
  %i.ce = add i64 %i.cd, 15
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = and i64 %i.bz, -4294967296
  %sext.i.i.i.i.i2.i.i53 = add i64 %i.ch, 21474836480
  %i.ci = ashr exact i64 %sext.i.i.i.i.i2.i.i53, 29
  %i.cj = getelementptr inbounds i8, ptr %i.g, i64 %i.ci
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8
  %i.cl = add i64 %i.ck, 15
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i64, ptr %i.cm, align 8
  %sum.shift.i.i54 = lshr i64 %i.cg, 40
  %i.co = trunc nuw nsw i64 %sum.shift.i.i54 to i32
  %i.cp = and i32 %i.co, 8388607
  %sum.shift8.i.i55 = lshr i64 %i.cn, 40
  %i.cq = trunc nuw nsw i64 %sum.shift8.i.i55 to i32
  %i.cr = and i32 %i.cq, 8388607
  %i.cs = icmp samesign ult i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ct = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8
  %i.cv = load atomic volatile i64, ptr %i.a monotonic, align 8
  store atomic volatile i64 %i.cv, ptr %i.ct monotonic, align 8
  store atomic volatile i64 %i.cu, ptr %i.a monotonic, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cw = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.cx = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.cy = and i64 %i.cw, -4294967296
  %sext.i.i.i.i.i.i.i56 = add i64 %i.cy, 21474836480
  %i.cz = ashr exact i64 %sext.i.i.i.i.i.i.i56, 29
  %i.da = getelementptr inbounds i8, ptr %i.g, i64 %i.cz
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8
  %i.dc = add i64 %i.db, 15
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = and i64 %i.cx, -4294967296
  %sext.i.i.i.i.i2.i.i57 = add i64 %i.df, 21474836480
  %i.dg = ashr exact i64 %sext.i.i.i.i.i2.i.i57, 29
  %i.dh = getelementptr inbounds i8, ptr %i.g, i64 %i.dg
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8
  %i.dj = add i64 %i.di, 15
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load i64, ptr %i.dk, align 8
  %sum.shift.i.i58 = lshr i64 %i.de, 40
  %i.dm = trunc nuw nsw i64 %sum.shift.i.i58 to i32
  %i.dn = and i32 %i.dm, 8388607
  %sum.shift8.i.i59 = lshr i64 %i.dl, 40
  %i.do = trunc nuw nsw i64 %sum.shift8.i.i59 to i32
  %i.dp = and i32 %i.do, 8388607
  %i.dq = icmp samesign ult i32 %i.dn, %i.dp
  %i.dr = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.ds = load atomic volatile i64, ptr %i.dr monotonic, align 8 ; 2 uses
  br i1 %i.dq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dt = load atomic volatile i64, ptr %i.aa monotonic, align 8
  store atomic volatile i64 %i.dt, ptr %i.dr monotonic, align 8
  store atomic volatile i64 %i.ds, ptr %i.aa monotonic, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.du = load atomic volatile i64, ptr %i.c monotonic, align 8
  store atomic volatile i64 %i.du, ptr %i.dr monotonic, align 8
  store atomic volatile i64 %i.ds, ptr %i.c monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_T0_(i64 %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.026 = add i64 %0, 8                  ; 2 uses
  %.not27 = icmp eq i64 %.sroa.010.026, %1
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = add i64 %2, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit
  %.sroa.010.029 = phi i64 [ %.sroa.010.026, %.lr.ph ], [ %.sroa.010.0, %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit ] ; 7 uses
  %.sroa.010.0.in28 = phi i64 [ %0, %.lr.ph ], [ %.sroa.010.029, %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit ]
  %i.f = inttoptr i64 %.sroa.010.029 to ptr       ; 2 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.i = and i64 %i.g, -4294967296
  %sext.i.i.i.i.i.i.i = add i64 %i.i, 21474836480
  %i.j = ashr exact i64 %sext.i.i.i.i.i.i.i, 29
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 15
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.h, -4294967296
  %sext.i.i.i.i.i2.i.i = add i64 %i.p, 21474836480
  %i.q = ashr exact i64 %sext.i.i.i.i.i2.i.i, 29
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 15
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %sum.shift.i.i = lshr i64 %i.o, 40
  %i.w = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.x = and i32 %i.w, 8388607
  %sum.shift8.i.i = lshr i64 %i.v, 40
  %i.y = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.z = and i32 %i.y, 8388607
  %i.aa = icmp samesign ult i32 %i.x, %i.z
  %i.ab = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 2 uses
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = sub i64 %.sroa.010.029, %0
  %.fr33 = freeze i64 %i.ac
  %i.ad = trunc i64 %.fr33 to i32                 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.af = add i64 %.sroa.010.0.in28, 16           ; 2 uses
  %i.ag = lshr i32 %i.ad, 3                       ; 4 uses
  %3 = add nsw i32 %i.ag, -1
  %xtraiter = and i32 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi i32 [ %9, %.lr.ph.i.i.i.i.i.prol ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.09.012.i.i.i.i.i.prol = phi i64 [ %4, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.010.029, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.06.011.i.i.i.i.i.prol = phi i64 [ %6, %.lr.ph.i.i.i.i.i.prol ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %4 = add i64 %.sroa.09.012.i.i.i.i.i.prol, -8   ; 3 uses
  %5 = inttoptr i64 %4 to ptr
  %6 = add i64 %.sroa.06.011.i.i.i.i.i.prol, -8   ; 3 uses
  %7 = inttoptr i64 %6 to ptr
  %8 = load atomic volatile i64, ptr %5 monotonic, align 8
  store atomic volatile i64 %8, ptr %7 monotonic, align 8
  %9 = add nsw i32 %.013.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !66

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i.unr = phi i32 [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ], [ %9, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.09.012.i.i.i.i.i.unr = phi i64 [ %.sroa.010.029, %.lr.ph.preheader.i.i.i.i.i ], [ %4, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.06.011.i.i.i.i.i.unr = phi i64 [ %i.af, %.lr.ph.preheader.i.i.i.i.i ], [ %6, %.lr.ph.i.i.i.i.i.prol ]
  %10 = icmp ult i32 %3, 3
  br i1 %10, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.09.012.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.sroa.09.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.sroa.06.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %11 = add i64 %.sroa.09.012.i.i.i.i.i, -8
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %.sroa.06.011.i.i.i.i.i, -8
  %14 = inttoptr i64 %13 to ptr
  %15 = load atomic volatile i64, ptr %12 monotonic, align 8
  store atomic volatile i64 %15, ptr %14 monotonic, align 8
  %16 = add i64 %.sroa.09.012.i.i.i.i.i, -16
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %.sroa.06.011.i.i.i.i.i, -16
  %19 = inttoptr i64 %18 to ptr
  %20 = load atomic volatile i64, ptr %17 monotonic, align 8
  store atomic volatile i64 %20, ptr %19 monotonic, align 8
  %21 = add i64 %.sroa.09.012.i.i.i.i.i, -24
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %.sroa.06.011.i.i.i.i.i, -24
  %24 = inttoptr i64 %23 to ptr
  %25 = load atomic volatile i64, ptr %22 monotonic, align 8
  store atomic volatile i64 %25, ptr %24 monotonic, align 8
  %i.ah = add i64 %.sroa.09.012.i.i.i.i.i, -32    ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = add i64 %.sroa.06.011.i.i.i.i.i, -32    ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i64, ptr %i.ai monotonic, align 8
  store atomic volatile i64 %i.al, ptr %i.ak monotonic, align 8
  %i.am = add nsw i32 %.013.i.i.i.i.i, -4
  %26 = icmp sgt i32 %.013.i.i.i.i.i, 4
  br i1 %26, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, !llvm.loop !68

bb.d:                                             ; preds = %bb.b
  %i.an = and i64 %i.ab, -4294967296
  %sext.i.i.i.i.i.i.i.i = add i64 %i.an, 21474836480
  %i.ao = ashr exact i64 %sext.i.i.i.i.i.i.i.i, 29
  %i.ap = getelementptr inbounds i8, ptr %i.e, i64 %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.011.0.i = phi i64 [ %.sroa.010.029, %bb.d ], [ %.sroa.03.0.i, %bb.f ] ; 2 uses
  %.sroa.03.0.i = add i64 %.sroa.011.0.i, -8      ; 2 uses
  %i.aq = inttoptr i64 %.sroa.03.0.i to ptr       ; 2 uses
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.at = add i64 %i.as, 15
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.ar, -4294967296
  %sext.i.i.i.i.i2.i.i.i = add i64 %i.aw, 21474836480
  %i.ax = ashr exact i64 %sext.i.i.i.i.i2.i.i.i, 29
  %i.ay = getelementptr inbounds i8, ptr %i.e, i64 %i.ax
  %i.az = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.ba = add i64 %i.az, 15
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i64, ptr %i.bb, align 8
  %sum.shift.i.i.i = lshr i64 %i.av, 40
  %i.bd = trunc nuw nsw i64 %sum.shift.i.i.i to i32
  %i.be = and i32 %i.bd, 8388607
  %sum.shift8.i.i.i = lshr i64 %i.bc, 40
  %i.bf = trunc nuw nsw i64 %sum.shift8.i.i.i to i32
  %i.bg = and i32 %i.bf, 8388607
  %i.bh = icmp samesign ult i32 %i.be, %i.bg
  %i.bi = inttoptr i64 %.sroa.011.0.i to ptr      ; 2 uses
  br i1 %i.bh, label %bb.f, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = load atomic volatile i64, ptr %i.aq monotonic, align 8
  store atomic volatile i64 %i.bj, ptr %i.bi monotonic, align 8
  br label %bb.e, !llvm.loop !43

_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %.sink = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.b, %bb.c ], [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.bi, %bb.e ]
  store atomic volatile i64 %i.ab, ptr %.sink monotonic, align 8
  %.sroa.010.0 = add i64 %.sroa.010.029, 8        ; 2 uses
  %.not = icmp eq i64 %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !69

.loopexit:                                        ; preds = %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, %.preheader, %bb.a
  ret void
}

declare noundef i32 @_ZN2v88internal10DictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE28NumberOfEnumerablePropertiesEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN2v88internal10AtomicSlotEiN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_T1_(i64 %0, i64 %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub i64 %1, %0                           ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 135
  br i1 %i.c, label %.lr.ph, label %_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = add i64 %0, 8                            ; 2 uses
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = add i64 %3, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEET_SA_SA_T0_.exit
  %i.j = icmp eq i32 %i.bl, 0
  br i1 %i.j, label %.lr.ph.i.i, label %.lr.ph46, !llvm.loop !70

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph
  %.sroa.018.031.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ] ; 3 uses
  tail call void @_ZSt13__heap_selectIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_T0_(i64 %0, i64 %.sroa.018.031.lcssa, i64 %.sroa.018.031.lcssa, i64 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi i64 [ %.sroa.018.031.lcssa, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %i.k = add i64 %.sroa.0.09.i.i, -8              ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = load atomic volatile i64, ptr %i.e monotonic, align 8
  store atomic volatile i64 %i.n, ptr %i.l monotonic, align 8
  %i.o = sub i64 %i.k, %0
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = sdiv i32 %i.p, 8
  tail call void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef 0, i32 noundef %i.q, i64 noundef %i.m, i64 %3)
  %i.r = icmp sgt i32 %i.p, 15
  br i1 %i.r, label %bb.c, label %_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_T0_.exit, !llvm.loop !71

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %.03045 = phi i32 [ %i.bl, %bb.b ], [ %2, %.lr.ph ]
  %.sroa.018.03144 = phi i64 [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.s = phi i64 [ %i.bm, %bb.b ], [ %i.a, %.lr.ph ]
  %i.t = lshr i64 %i.s, 1
  %i.u = and i64 %i.t, 1073741816
  %i.v = add i64 %i.u, %0
  %i.w = add i64 %.sroa.018.03144, -8
  tail call void @_ZSt22__move_median_to_firstIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_SA_T0_(i64 %0, i64 %i.d, i64 %i.v, i64 %i.w, i64 %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph46
  %.sroa.014.0.i.i = phi i64 [ %.sroa.018.03144, %.lr.ph46 ], [ %.sroa.014.1.i.i, %bb.g ]
  %.sroa.019.0.i.i = phi i64 [ %i.d, %.lr.ph46 ], [ %i.ap, %bb.g ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.019.1.i.i = phi i64 [ %.sroa.019.0.i.i, %bb.d ], [ %i.ap, %bb.e ] ; 7 uses
  %i.x = inttoptr i64 %.sroa.019.1.i.i to ptr     ; 3 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aa = ashr i64 %i.y, 32
  %i.ab = mul i64 %i.aa, 12884901888
  %sext.i.i.i.i.i.i = add i64 %i.ab, 34359738368
  %i.ac = ashr exact i64 %sext.i.i.i.i.i.i, 29
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = ashr i64 %i.z, 32
  %i.ag = mul i64 %i.af, 12884901888
  %sext.i.i2.i.i.i.i = add i64 %i.ag, 34359738368
  %i.ah = ashr exact i64 %sext.i.i2.i.i.i.i, 29
  %i.ai = getelementptr inbounds i8, ptr %i.h, i64 %i.ah
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %sum.shift.i.i.i.i = lshr i64 %i.ae, 40
  %i.ak = trunc nuw nsw i64 %sum.shift.i.i.i.i to i32
  %i.al = and i32 %i.ak, 8388607
  %sum.shift8.i.i.i.i = lshr i64 %i.aj, 40
  %i.am = trunc nuw nsw i64 %sum.shift8.i.i.i.i to i32
  %i.an = and i32 %i.am, 8388607
  %i.ao = icmp samesign ult i32 %i.al, %i.an
  %i.ap = add i64 %.sroa.019.1.i.i, 8             ; 2 uses
  br i1 %i.ao, label %bb.e, label %.preheader.i.i, !llvm.loop !72

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.sroa.014.1.in.i.i = phi i64 [ %.sroa.014.1.i.i, %.preheader.i.i ], [ %.sroa.014.0.i.i, %bb.e ]
  %.sroa.014.1.i.i = add i64 %.sroa.014.1.in.i.i, -8 ; 4 uses
  %i.aq = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ar = inttoptr i64 %.sroa.014.1.i.i to ptr    ; 3 uses
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = ashr i64 %i.aq, 32
  %i.au = mul i64 %i.at, 12884901888
  %sext.i.i.i.i9.i.i = add i64 %i.au, 34359738368
  %i.av = ashr exact i64 %sext.i.i.i.i9.i.i, 29
  %i.aw = getelementptr inbounds i8, ptr %i.h, i64 %i.av
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = ashr i64 %i.as, 32
  %i.az = mul i64 %i.ay, 12884901888
  %sext.i.i2.i.i10.i.i = add i64 %i.az, 34359738368
  %i.ba = ashr exact i64 %sext.i.i2.i.i10.i.i, 29
  %i.bb = getelementptr inbounds i8, ptr %i.h, i64 %i.ba
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %sum.shift.i.i11.i.i = lshr i64 %i.ax, 40
  %i.bd = trunc nuw nsw i64 %sum.shift.i.i11.i.i to i32
  %i.be = and i32 %i.bd, 8388607
  %sum.shift8.i.i12.i.i = lshr i64 %i.bc, 40
  %i.bf = trunc nuw nsw i64 %sum.shift8.i.i12.i.i to i32
  %i.bg = and i32 %i.bf, 8388607
  %i.bh = icmp samesign ult i32 %i.be, %i.bg
  br i1 %i.bh, label %.preheader.i.i, label %bb.f, !llvm.loop !73

bb.f:                                             ; preds = %.preheader.i.i
  %i.bi = icmp ult i64 %.sroa.019.1.i.i, %.sroa.014.1.i.i
  br i1 %i.bi, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEET_SA_SA_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bj = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.bk = load atomic volatile i64, ptr %i.ar monotonic, align 8
  store atomic volatile i64 %i.bk, ptr %i.x monotonic, align 8
  store atomic volatile i64 %i.bj, ptr %i.ar monotonic, align 8
  br label %bb.d, !llvm.loop !74

_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEET_SA_SA_T0_.exit: ; preds = %bb.f
  %i.bl = add nsw i32 %.03045, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN2v88internal10AtomicSlotEiN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_T1_(i64 %.sroa.019.1.i.i, i64 %.sroa.018.03144, i32 noundef %i.bl, i64 %3)
  %i.bm = sub i64 %.sroa.019.1.i.i, %0            ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp sgt i32 %i.bn, 135
  br i1 %i.bo, label %bb.b, label %_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_T0_.exit, !llvm.loop !70

_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEET_SA_SA_T0_.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_(i64 %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub i64 %1, %0
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 135
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %0, 128                          ; 3 uses
  tail call void @_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_(i64 %0, i64 %i.d, i64 %2)
  %.not14.i = icmp eq i64 %i.d, %1
  br i1 %.not14.i, label %_ZSt26__unguarded_insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.b
  %i.e = add i64 %2, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.i, %.lr.ph16.i
  %.sroa.0.015.i = phi i64 [ %i.d, %.lr.ph16.i ], [ %i.aq, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.h = inttoptr i64 %.sroa.0.015.i to ptr       ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.j = ashr i64 %i.i, 32
  %i.k = mul i64 %i.j, 12884901888
  %sext.i.i.i.i.i.i = add i64 %i.k, 34359738368
  %i.l = ashr exact i64 %sext.i.i.i.i.i.i, 29
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %i.l ; 2 uses
  %.sroa.03.0.i8.i = add i64 %.sroa.0.015.i, -8   ; 2 uses
  %i.n = inttoptr i64 %.sroa.03.0.i8.i to ptr     ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.q = ashr i64 %i.o, 32
  %i.r = mul i64 %i.q, 12884901888
  %sext.i.i2.i.i.i9.i = add i64 %i.r, 34359738368
  %i.s = ashr exact i64 %sext.i.i2.i.i.i9.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.g, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %sum.shift.i.i.i10.i = lshr i64 %i.p, 40
  %i.v = trunc nuw nsw i64 %sum.shift.i.i.i10.i to i32
  %i.w = and i32 %i.v, 8388607
  %sum.shift8.i.i.i11.i = lshr i64 %i.u, 40
  %i.x = trunc nuw nsw i64 %sum.shift8.i.i.i11.i to i32
  %i.y = and i32 %i.x, 8388607
  %i.z = icmp samesign ult i32 %i.w, %i.y
  br i1 %i.z, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.n, %bb.c ]
  %.sroa.03.0.i13.i = phi i64 [ %.sroa.03.0.i.i, %.lr.ph.i ], [ %.sroa.03.0.i8.i, %bb.c ] ; 3 uses
  %.sroa.011.0.i12.i = phi i64 [ %.sroa.03.0.i13.i, %.lr.ph.i ], [ %.sroa.0.015.i, %bb.c ]
  %i.ab = inttoptr i64 %.sroa.011.0.i12.i to ptr
  %i.ac = load atomic volatile i64, ptr %i.aa monotonic, align 8
  store atomic volatile i64 %i.ac, ptr %i.ab monotonic, align 8
  %.sroa.03.0.i.i = add i64 %.sroa.03.0.i13.i, -8 ; 2 uses
  %i.ad = inttoptr i64 %.sroa.03.0.i.i to ptr     ; 2 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.ag = ashr i64 %i.ae, 32
  %i.ah = mul i64 %i.ag, 12884901888
  %sext.i.i2.i.i.i.i = add i64 %i.ah, 34359738368
  %i.ai = ashr exact i64 %sext.i.i2.i.i.i.i, 29
  %i.aj = getelementptr inbounds i8, ptr %i.g, i64 %i.ai
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %sum.shift.i.i.i.i = lshr i64 %i.af, 40
  %i.al = trunc nuw nsw i64 %sum.shift.i.i.i.i to i32
  %i.am = and i32 %i.al, 8388607
  %sum.shift8.i.i.i.i = lshr i64 %i.ak, 40
  %i.an = trunc nuw nsw i64 %sum.shift8.i.i.i.i to i32
  %i.ao = and i32 %i.an, 8388607
  %i.ap = icmp samesign ult i32 %i.am, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit.i, !llvm.loop !75

_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = inttoptr i64 %.sroa.03.0.i13.i to ptr
  br label %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.i

_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.i: ; preds = %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit.i, %bb.c
  %.pre-phi.i = phi ptr [ %.pre.i, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit.i ], [ %i.h, %bb.c ]
  store atomic volatile i64 %i.i, ptr %.pre-phi.i monotonic, align 8
  %i.aq = add i64 %.sroa.0.015.i, 8               ; 2 uses
  %.not.i = icmp eq i64 %i.aq, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_.exit, label %bb.c, !llvm.loop !76

bb.d:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_(i64 %0, i64 %1, i64 %2)
  br label %_ZSt26__unguarded_insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_.exit

_ZSt26__unguarded_insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_T0_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub i64 %1, %0
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = sdiv i32 %i.b, 8                         ; 3 uses
  %i.d = icmp slt i32 %i.b, 16
  br i1 %i.d, label %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -2
  %i.f = lshr i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %i.g, %bb.b ] ; 4 uses
  %i.h = shl nsw i64 %indvars.iv.i, 3
  %i.i = add i64 %i.h, %0
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = trunc nsw i64 %indvars.iv.i to i32
  tail call void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef %i.l, i32 noundef %i.c, i64 noundef %i.k, i64 %3)
  %i.m = icmp eq i64 %indvars.iv.i, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.m, label %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_RT0_.exit, label %bb.c, !llvm.loop !77

_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_RT0_.exit: ; preds = %bb.c, %bb.a
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_RT0_.exit
  %i.o = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.p = add i64 %3, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_RT0_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.020 = phi i64 [ %1, %.lr.ph ], [ %i.am, %bb.f ] ; 2 uses
  %i.s = inttoptr i64 %.sroa.0.020 to ptr         ; 3 uses
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.v = ashr i64 %i.t, 32
  %i.w = mul i64 %i.v, 12884901888
  %sext.i.i.i.i = add i64 %i.w, 34359738368
  %i.x = ashr exact i64 %sext.i.i.i.i, 29
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = ashr i64 %i.u, 32
  %i.ab = mul i64 %i.aa, 12884901888
  %sext.i.i2.i.i = add i64 %i.ab, 34359738368
  %i.ac = ashr exact i64 %sext.i.i2.i.i, 29
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %sum.shift.i.i = lshr i64 %i.z, 40
  %i.af = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.ag = and i32 %i.af, 8388607
  %sum.shift8.i.i = lshr i64 %i.ae, 40
  %i.ah = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.ai = and i32 %i.ah, 8388607
  %i.aj = icmp samesign ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.al = load atomic volatile i64, ptr %i.o monotonic, align 8
  store atomic volatile i64 %i.al, ptr %i.s monotonic, align 8
  tail call void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef 0, i32 noundef %i.c, i64 noundef %i.ak, i64 %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.am = add i64 %.sroa.0.020, 8                 ; 2 uses
  %i.an = icmp ult i64 %i.am, %2
  br i1 %i.an, label %bb.d, label %._crit_edge, !llvm.loop !78
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = sdiv i32 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = add i64 %4, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.042 = phi i32 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = shl i32 %.042, 1                         ; 2 uses
  %i.h = add i32 %i.g, 2                          ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = add i64 %i.j, %0
  %i.l = or disjoint i32 %i.g, 1                  ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = add i64 %i.n, %0
  %i.p = inttoptr i64 %i.k to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = inttoptr i64 %i.o to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = ashr i64 %i.q, 32
  %i.u = mul i64 %i.t, 12884901888
  %sext.i.i.i.i = add i64 %i.u, 34359738368
  %i.v = ashr exact i64 %sext.i.i.i.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = ashr i64 %i.s, 32
  %i.z = mul i64 %i.y, 12884901888
  %sext.i.i2.i.i = add i64 %i.z, 34359738368
  %i.aa = ashr exact i64 %sext.i.i2.i.i, 29
  %i.ab = getelementptr inbounds i8, ptr %i.f, i64 %i.aa
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %sum.shift.i.i = lshr i64 %i.x, 40
  %i.ad = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.ae = and i32 %i.ad, 8388607
  %sum.shift8.i.i = lshr i64 %i.ac, 40
  %i.af = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.ag = and i32 %i.af, 8388607
  %i.ah = icmp samesign ult i32 %i.ae, %i.ag
  %spec.select = select i1 %i.ah, i32 %i.l, i32 %i.h ; 4 uses
  %i.ai = sext i32 %spec.select to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = add i64 %i.aj, %0
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = sext i32 %.042 to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = add i64 %i.an, %0
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.al monotonic, align 8
  store atomic volatile i64 %i.aq, ptr %i.ap monotonic, align 8
  %i.ar = icmp slt i32 %spec.select, %i.b
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.as = and i32 %2, 1
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.au = add nsw i32 %2, -2
  %i.av = ashr exact i32 %i.au, 1
  %i.aw = icmp eq i32 %.0.lcssa, %i.av
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = shl nsw i32 %.0.lcssa, 1
  %i.ay = or disjoint i32 %i.ax, 1                ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  %i.bb = add i64 %i.ba, %0
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = sext i32 %.0.lcssa to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = add i64 %i.be, %0
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.bc monotonic, align 8
  store atomic volatile i64 %i.bh, ptr %i.bg monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i32 [ %i.ay, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bi = icmp sgt i32 %.1, %1
  br i1 %i.bi, label %.lr.ph.i, label %_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.bj = ashr i64 %3, 32
  %i.bk = mul i64 %i.bj, 12884901888
  %sext.i.i2.i.i.i = add i64 %i.bk, 34359738368
  %i.bl = ashr exact i64 %sext.i.i2.i.i.i, 29
  %i.bm = add i64 %4, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi i32 [ %.1, %.lr.ph.i ], [ %.0923.i, %bb.g ] ; 3 uses
  %.0923.in.i = add nsw i32 %.022.i, -1
  %.0923.i = sdiv i32 %.0923.in.i, 2              ; 4 uses
  %i.bq = sext i32 %.0923.i to i64
  %i.br = shl nsw i64 %i.bq, 3
  %i.bs = add i64 %i.br, %0
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = ashr i64 %i.bu, 32
  %i.bw = mul i64 %i.bv, 12884901888
  %sext.i.i.i.i.i = add i64 %i.bw, 34359738368
  %i.bx = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.by = getelementptr inbounds i8, ptr %i.bo, i64 %i.bx
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %sum.shift.i.i.i = lshr i64 %i.bz, 40
  %i.cb = trunc nuw nsw i64 %sum.shift.i.i.i to i32
  %i.cc = and i32 %i.cb, 8388607
  %sum.shift8.i.i.i = lshr i64 %i.ca, 40
  %i.cd = trunc nuw nsw i64 %sum.shift8.i.i.i to i32
  %i.ce = and i32 %i.cd, 8388607
  %i.cf = icmp samesign ult i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = sext i32 %.022.i to i64
  %i.ch = shl nsw i64 %i.cg, 3
  %i.ci = add i64 %i.ch, %0
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.bt monotonic, align 8
  store atomic volatile i64 %i.ck, ptr %i.cj monotonic, align 8
  %i.cl = icmp sgt i32 %.0923.i, %1
  br i1 %i.cl, label %bb.f, label %_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit, !llvm.loop !80

_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i = phi i32 [ %.1, %bb.e ], [ %.022.i, %bb.f ], [ %.0923.i, %bb.g ]
  %i.cm = sext i32 %.0.lcssa.i to i64
  %i.cn = shl nsw i64 %i.cm, 3
  %i.co = add i64 %i.cn, %0
  %i.cp = inttoptr i64 %i.co to ptr
  store atomic volatile i64 %3, ptr %i.cp monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_SA_SA_T0_(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %4, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = ashr i64 %i.b, 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 10 uses
  %i.i = mul i64 %i.g, 12884901888
  %sext.i.i.i.i = add i64 %i.i, 34359738368
  %i.j = ashr exact i64 %sext.i.i.i.i, 29
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = ashr i64 %i.d, 32
  %i.n = mul i64 %i.m, 12884901888
  %sext.i.i2.i.i = add i64 %i.n, 34359738368
  %i.o = ashr exact i64 %sext.i.i2.i.i, 29
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %sum.shift.i.i = lshr i64 %i.l, 40
  %i.r = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.s = and i32 %i.r, 8388607
  %sum.shift8.i.i = lshr i64 %i.q, 40
  %i.t = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.u = and i32 %i.t, 8388607
  %i.v = icmp samesign ult i32 %i.s, %i.u
  %i.w = inttoptr i64 %3 to ptr                   ; 8 uses
  br i1 %i.v, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.x = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.y = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.z = ashr i64 %i.x, 32
  %i.aa = mul i64 %i.z, 12884901888
  %sext.i.i.i.i44 = add i64 %i.aa, 34359738368
  %i.ab = ashr exact i64 %sext.i.i.i.i44, 29
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = ashr i64 %i.y, 32
  %i.af = mul i64 %i.ae, 12884901888
  %sext.i.i2.i.i45 = add i64 %i.af, 34359738368
  %i.ag = ashr exact i64 %sext.i.i2.i.i45, 29
  %i.ah = getelementptr inbounds i8, ptr %i.h, i64 %i.ag
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %sum.shift.i.i46 = lshr i64 %i.ad, 40
  %i.aj = trunc nuw nsw i64 %sum.shift.i.i46 to i32
  %i.ak = and i32 %i.aj, 8388607
  %sum.shift8.i.i47 = lshr i64 %i.ai, 40
  %i.al = trunc nuw nsw i64 %sum.shift8.i.i47 to i32
  %i.am = and i32 %i.al, 8388607
  %i.an = icmp samesign ult i32 %i.ak, %i.am
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = load atomic volatile i64, ptr %i.c monotonic, align 8
  store atomic volatile i64 %i.aq, ptr %i.ao monotonic, align 8
  store atomic volatile i64 %i.ap, ptr %i.c monotonic, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.ar = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.as = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.at = ashr i64 %i.ar, 32
  %i.au = mul i64 %i.at, 12884901888
  %sext.i.i.i.i48 = add i64 %i.au, 34359738368
  %i.av = ashr exact i64 %sext.i.i.i.i48, 29
  %i.aw = getelementptr inbounds i8, ptr %i.h, i64 %i.av
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = ashr i64 %i.as, 32
  %i.az = mul i64 %i.ay, 12884901888
  %sext.i.i2.i.i49 = add i64 %i.az, 34359738368
  %i.ba = ashr exact i64 %sext.i.i2.i.i49, 29
  %i.bb = getelementptr inbounds i8, ptr %i.h, i64 %i.ba
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %sum.shift.i.i50 = lshr i64 %i.ax, 40
  %i.bd = trunc nuw nsw i64 %sum.shift.i.i50 to i32
  %i.be = and i32 %i.bd, 8388607
  %sum.shift8.i.i51 = lshr i64 %i.bc, 40
  %i.bf = trunc nuw nsw i64 %sum.shift8.i.i51 to i32
  %i.bg = and i32 %i.bf, 8388607
  %i.bh = icmp samesign ult i32 %i.be, %i.bg
  %i.bi = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bj = load atomic volatile i64, ptr %i.bi monotonic, align 8 ; 2 uses
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = load atomic volatile i64, ptr %i.w monotonic, align 8
  store atomic volatile i64 %i.bk, ptr %i.bi monotonic, align 8
  store atomic volatile i64 %i.bj, ptr %i.w monotonic, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.bl = load atomic volatile i64, ptr %i.a monotonic, align 8
  store atomic volatile i64 %i.bl, ptr %i.bi monotonic, align 8
  store atomic volatile i64 %i.bj, ptr %i.a monotonic, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bm = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.bn = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.bo = ashr i64 %i.bm, 32
  %i.bp = mul i64 %i.bo, 12884901888
  %sext.i.i.i.i52 = add i64 %i.bp, 34359738368
  %i.bq = ashr exact i64 %sext.i.i.i.i52, 29
  %i.br = getelementptr inbounds i8, ptr %i.h, i64 %i.bq
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8
  %i.bt = ashr i64 %i.bn, 32
  %i.bu = mul i64 %i.bt, 12884901888
  %sext.i.i2.i.i53 = add i64 %i.bu, 34359738368
  %i.bv = ashr exact i64 %sext.i.i2.i.i53, 29
  %i.bw = getelementptr inbounds i8, ptr %i.h, i64 %i.bv
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %sum.shift.i.i54 = lshr i64 %i.bs, 40
  %i.by = trunc nuw nsw i64 %sum.shift.i.i54 to i32
  %i.bz = and i32 %i.by, 8388607
  %sum.shift8.i.i55 = lshr i64 %i.bx, 40
  %i.ca = trunc nuw nsw i64 %sum.shift8.i.i55 to i32
  %i.cb = and i32 %i.ca, 8388607
  %i.cc = icmp samesign ult i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ce = load atomic volatile i64, ptr %i.cd monotonic, align 8
  %i.cf = load atomic volatile i64, ptr %i.a monotonic, align 8
  store atomic volatile i64 %i.cf, ptr %i.cd monotonic, align 8
  store atomic volatile i64 %i.ce, ptr %i.a monotonic, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cg = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.ch = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.ci = ashr i64 %i.cg, 32
  %i.cj = mul i64 %i.ci, 12884901888
  %sext.i.i.i.i56 = add i64 %i.cj, 34359738368
  %i.ck = ashr exact i64 %sext.i.i.i.i56, 29
  %i.cl = getelementptr inbounds i8, ptr %i.h, i64 %i.ck
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.cn = ashr i64 %i.ch, 32
  %i.co = mul i64 %i.cn, 12884901888
  %sext.i.i2.i.i57 = add i64 %i.co, 34359738368
  %i.cp = ashr exact i64 %sext.i.i2.i.i57, 29
  %i.cq = getelementptr inbounds i8, ptr %i.h, i64 %i.cp
  %i.cr = load atomic volatile i64, ptr %i.cq monotonic, align 8
  %sum.shift.i.i58 = lshr i64 %i.cm, 40
  %i.cs = trunc nuw nsw i64 %sum.shift.i.i58 to i32
  %i.ct = and i32 %i.cs, 8388607
  %sum.shift8.i.i59 = lshr i64 %i.cr, 40
  %i.cu = trunc nuw nsw i64 %sum.shift8.i.i59 to i32
  %i.cv = and i32 %i.cu, 8388607
  %i.cw = icmp samesign ult i32 %i.ct, %i.cv
  %i.cx = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.cy = load atomic volatile i64, ptr %i.cx monotonic, align 8 ; 2 uses
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cz = load atomic volatile i64, ptr %i.w monotonic, align 8
  store atomic volatile i64 %i.cz, ptr %i.cx monotonic, align 8
  store atomic volatile i64 %i.cy, ptr %i.w monotonic, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.da = load atomic volatile i64, ptr %i.c monotonic, align 8
  store atomic volatile i64 %i.da, ptr %i.cx monotonic, align 8
  store atomic volatile i64 %i.cy, ptr %i.c monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_SA_T0_(i64 %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.031 = add i64 %0, 8                  ; 2 uses
  %.not32 = icmp eq i64 %.sroa.010.031, %1
  br i1 %.not32, label %.loopexit, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = add i64 %2, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph36, %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit
  %.sroa.010.034 = phi i64 [ %.sroa.010.031, %.lr.ph36 ], [ %.sroa.010.0, %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit ] ; 7 uses
  %.sroa.010.0.in33 = phi i64 [ %0, %.lr.ph36 ], [ %.sroa.010.034, %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit ] ; 3 uses
  %i.f = inttoptr i64 %.sroa.010.034 to ptr       ; 3 uses
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.i = ashr i64 %i.g, 32
  %i.j = mul i64 %i.i, 12884901888
  %sext.i.i.i.i = add i64 %i.j, 34359738368
  %i.k = ashr exact i64 %sext.i.i.i.i, 29
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = ashr i64 %i.h, 32
  %i.o = mul i64 %i.n, 12884901888
  %sext.i.i2.i.i = add i64 %i.o, 34359738368
  %i.p = ashr exact i64 %sext.i.i2.i.i, 29
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %sum.shift.i.i = lshr i64 %i.m, 40
  %i.s = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.t = and i32 %i.s, 8388607
  %sum.shift8.i.i = lshr i64 %i.r, 40
  %i.u = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.v = and i32 %i.u, 8388607
  %i.w = icmp samesign ult i32 %i.t, %i.v
  %i.x = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = sub i64 %.sroa.010.034, %0
  %.fr39 = freeze i64 %i.y
  %i.z = trunc i64 %.fr39 to i32                  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 7
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.ab = add i64 %.sroa.010.0.in33, 16           ; 2 uses
  %i.ac = lshr i32 %i.z, 3                        ; 4 uses
  %3 = add nsw i32 %i.ac, -1
  %xtraiter = and i32 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi i32 [ %9, %.lr.ph.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.09.012.i.i.i.i.i.prol = phi i64 [ %4, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.010.034, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.06.011.i.i.i.i.i.prol = phi i64 [ %6, %.lr.ph.i.i.i.i.i.prol ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %4 = add i64 %.sroa.09.012.i.i.i.i.i.prol, -8   ; 3 uses
  %5 = inttoptr i64 %4 to ptr
  %6 = add i64 %.sroa.06.011.i.i.i.i.i.prol, -8   ; 3 uses
  %7 = inttoptr i64 %6 to ptr
  %8 = load atomic volatile i64, ptr %5 monotonic, align 8
  store atomic volatile i64 %8, ptr %7 monotonic, align 8
  %9 = add nsw i32 %.013.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !81

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i.unr = phi i32 [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ], [ %9, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.09.012.i.i.i.i.i.unr = phi i64 [ %.sroa.010.034, %.lr.ph.preheader.i.i.i.i.i ], [ %4, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.06.011.i.i.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ], [ %6, %.lr.ph.i.i.i.i.i.prol ]
  %10 = icmp ult i32 %3, 3
  br i1 %10, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi i32 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.09.012.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.09.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.sroa.06.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %11 = add i64 %.sroa.09.012.i.i.i.i.i, -8
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %.sroa.06.011.i.i.i.i.i, -8
  %14 = inttoptr i64 %13 to ptr
  %15 = load atomic volatile i64, ptr %12 monotonic, align 8
  store atomic volatile i64 %15, ptr %14 monotonic, align 8
  %16 = add i64 %.sroa.09.012.i.i.i.i.i, -16
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %.sroa.06.011.i.i.i.i.i, -16
  %19 = inttoptr i64 %18 to ptr
  %20 = load atomic volatile i64, ptr %17 monotonic, align 8
  store atomic volatile i64 %20, ptr %19 monotonic, align 8
  %21 = add i64 %.sroa.09.012.i.i.i.i.i, -24
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %.sroa.06.011.i.i.i.i.i, -24
  %24 = inttoptr i64 %23 to ptr
  %25 = load atomic volatile i64, ptr %22 monotonic, align 8
  store atomic volatile i64 %25, ptr %24 monotonic, align 8
  %i.ad = add i64 %.sroa.09.012.i.i.i.i.i, -32    ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = add i64 %.sroa.06.011.i.i.i.i.i, -32    ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ae monotonic, align 8
  store atomic volatile i64 %i.ah, ptr %i.ag monotonic, align 8
  %i.ai = add nsw i32 %.013.i.i.i.i.i, -4
  %26 = icmp sgt i32 %.013.i.i.i.i.i, 4
  br i1 %26, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, !llvm.loop !68

bb.d:                                             ; preds = %bb.b
  %i.aj = ashr i64 %i.x, 32
  %i.ak = mul i64 %i.aj, 12884901888
  %sext.i.i.i.i.i = add i64 %i.ak, 34359738368
  %i.al = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.am = getelementptr inbounds i8, ptr %i.e, i64 %i.al ; 2 uses
  %i.an = inttoptr i64 %.sroa.010.0.in33 to ptr   ; 2 uses
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.aq = ashr i64 %i.ao, 32
  %i.ar = mul i64 %i.aq, 12884901888
  %sext.i.i2.i.i.i26 = add i64 %i.ar, 34359738368
  %i.as = ashr exact i64 %sext.i.i2.i.i.i26, 29
  %i.at = getelementptr inbounds i8, ptr %i.e, i64 %i.as
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %sum.shift.i.i.i27 = lshr i64 %i.ap, 40
  %i.av = trunc nuw nsw i64 %sum.shift.i.i.i27 to i32
  %i.aw = and i32 %i.av, 8388607
  %sum.shift8.i.i.i28 = lshr i64 %i.au, 40
  %i.ax = trunc nuw nsw i64 %sum.shift8.i.i.i28 to i32
  %i.ay = and i32 %i.ax, 8388607
  %i.az = icmp samesign ult i32 %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.ba = phi ptr [ %i.bd, %.lr.ph ], [ %i.an, %bb.d ]
  %.sroa.03.0.i30 = phi i64 [ %.sroa.03.0.i, %.lr.ph ], [ %.sroa.010.0.in33, %bb.d ] ; 3 uses
  %.sroa.011.0.i29 = phi i64 [ %.sroa.03.0.i30, %.lr.ph ], [ %.sroa.010.034, %bb.d ]
  %i.bb = inttoptr i64 %.sroa.011.0.i29 to ptr
  %i.bc = load atomic volatile i64, ptr %i.ba monotonic, align 8
  store atomic volatile i64 %i.bc, ptr %i.bb monotonic, align 8
  %.sroa.03.0.i = add i64 %.sroa.03.0.i30, -8     ; 2 uses
  %i.bd = inttoptr i64 %.sroa.03.0.i to ptr       ; 2 uses
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.bg = ashr i64 %i.be, 32
  %i.bh = mul i64 %i.bg, 12884901888
  %sext.i.i2.i.i.i = add i64 %i.bh, 34359738368
  %i.bi = ashr exact i64 %sext.i.i2.i.i.i, 29
  %i.bj = getelementptr inbounds i8, ptr %i.e, i64 %i.bi
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  %sum.shift.i.i.i = lshr i64 %i.bf, 40
  %i.bl = trunc nuw nsw i64 %sum.shift.i.i.i to i32
  %i.bm = and i32 %i.bl, 8388607
  %sum.shift8.i.i.i = lshr i64 %i.bk, 40
  %i.bn = trunc nuw nsw i64 %sum.shift8.i.i.i to i32
  %i.bo = and i32 %i.bn, 8388607
  %i.bp = icmp samesign ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph, label %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit, !llvm.loop !75

_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit: ; preds = %.lr.ph
  %.pre = inttoptr i64 %.sroa.03.0.i30 to ptr
  br label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit, %bb.c
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.f, %bb.d ], [ %.pre, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit ], [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store atomic volatile i64 %i.x, ptr %.sink monotonic, align 8
  %.sroa.010.0 = add i64 %.sroa.010.034, 8        ; 2 uses
  %.not = icmp eq i64 %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !82

.loopexit:                                        ; preds = %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, %.preheader, %bb.a
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_iEERKT_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %2, 2147483647
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val14 = load i32, ptr %i.b, align 8           ; 2 uses
  %i.c = add i32 %.val14, -1
  %i.d = and i32 %i.a, %i.c
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.e ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread
  %.val28 = phi i32 [ %.val, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread ], [ %.val14, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %i.ba, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread ], [ %i.h, %bb.a ] ; 4 uses
  %.023 = phi i64 [ %i.az, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread ], [ %i.e, %bb.a ]
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8 ; 6 uses
  %.val15 = load ptr, ptr %0, align 8
  %i.m = icmp eq ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq ptr %.sroa.01.0.copyload, null
  %i.o = icmp eq ptr %.sroa.0.0.copyload, null
  %or.cond.i.i.i.i = or i1 %i.n, %i.o
  %.pre.i.i = load i64, ptr %.sroa.01.0.copyload, align 8 ; 2 uses
  br i1 %or.cond.i.i.i.i, label %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.thread66.i.i, label %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.i.i

_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.q = icmp eq i64 %.pre.i.i, %i.p
  br i1 %i.q, label %.critedge, label %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.thread66.i.i

_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.thread66.i.i: ; preds = %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.i.i, %bb.b
  %i.r = add i64 %.pre.i.i, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = and i16 %i.w, -96
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.thread66.i.i
  %i.z = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = and i16 %i.af, -96
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.thread66.i.i
  %i.ai = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = icmp eq i16 %i.al, 128
  br i1 %i.am, label %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.ao = add i64 %i.an, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = icmp eq i16 %i.at, 128
  br i1 %i.au, label %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread, label %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit

_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit: ; preds = %bb.e
  %i.av = tail call noundef zeroext i1 @_ZN2v88internal6String10SlowEqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef %.val15, ptr nonnull %.sroa.01.0.copyload, ptr nonnull %.sroa.0.0.copyload) #13
  br i1 %i.av, label %.critedge, label %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit._ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread_crit_edge

_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit._ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread_crit_edge: ; preds = %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit
  %.val.pre = load i32, ptr %i.b, align 8
  br label %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread

_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread: ; preds = %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit._ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread_crit_edge, %bb.c, %bb.d, %bb.e
  %.val = phi i32 [ %.val.pre, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit._ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread_crit_edge ], [ %.val28, %bb.c ], [ %.val28, %bb.d ], [ %.val28, %bb.e ] ; 2 uses
  %i.aw = add nsw i64 %.023, 1
  %i.ax = add i32 %.val, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = and i64 %i.aw, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %.critedge, !llvm.loop !83

.critedge:                                        ; preds = %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread, %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.i.i, %.lr.ph, %bb.a
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.l, %.lr.ph ], [ %i.l, %_ZNK2v88internal12DirectHandleINS0_4NameEE15is_identical_toIS2_EEbNS1_IT_EE.exit.i.i ], [ %i.ba, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit.thread ], [ %i.l, %_ZNK2v88internal12_GLOBAL__N_114NameComparatorclEjjRKNS0_12DirectHandleINS0_4NameEEES7_.exit ]
  ret ptr %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_iEERKS5_RKij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 %.0.val, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  store ptr %.sroa.0.0.copyload, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.val, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = or i32 %3, -2147483648
  store i32 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, 1                          ; 5 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = lshr i32 %i.f, 2
  %i.h = add i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val = load i32, ptr %i.i, align 8             ; 2 uses
  %.not = icmp ult i32 %i.h, %.val
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = shl i32 %.val, 1                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.p = shl nuw nsw i64 %i.n, 4                  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryINS0_6HandleINS0_4NameEEEiEEA_S8_EEPT_m.exit.i, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef %i.p) #13
  %.pre.i.i.i = load i64, ptr %i.s, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryINS0_6HandleINS0_4NameEEEiEEA_S8_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryINS0_6HandleINS0_4NameEEEiEEA_S8_EEPT_m.exit.i: ; preds = %bb.c, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i, %bb.c ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.j, align 8
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %bb.d, label %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE10InitializeEj.exit

bb.d:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryINS0_6HandleINS0_4NameEEEiEEA_S8_EEPT_m.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.21) #14
  unreachable

_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE10InitializeEj.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS_4base20TemplateHashMapEntryINS0_6HandleINS0_4NameEEEiEEA_S8_EEPT_m.exit.i
  store i32 %i.l, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.p, i1 false)
  store i32 0, ptr %i.d, align 4
  %.not.i1 = icmp eq i32 %i.f, 0
  br i1 %.not.i1, label %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE6ResizeEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE10InitializeEj.exit, %bb.f
  %.0.i3 = phi ptr [ %i.ak, %bb.f ], [ %i.k, %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE10InitializeEj.exit ] ; 5 uses
  %.013.i2 = phi i32 [ %.1.i, %bb.f ], [ %i.f, %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE10InitializeEj.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i3, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ad = and i32 %i.ab, 2147483647
  %i.ae = tail call fastcc noundef ptr @_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_iEERKT_j(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %.0.i3, i32 noundef %i.ad), !inline_history !84
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8
  %i.ag = load i32, ptr %i.aa, align 4
  %i.ah = and i32 %i.ag, 2147483647
  %.val9 = load i32, ptr %i.af, align 4
  %i.ai = tail call fastcc noundef ptr @_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE14FillEmptyEntryEPNS0_20TemplateHashMapEntryIS5_iEERKS5_RKij(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %.0.i3, i32 %.val9, i32 noundef %i.ah) ; 0 uses
  %i.aj = add i32 %.013.i2, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.1.i = phi i32 [ %i.aj, %bb.e ], [ %.013.i2, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE6ResizeEv.exit, label %.lr.ph, !llvm.loop !85

_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE6ResizeEv.exit: ; preds = %bb.f, %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE10InitializeEj.exit
  %i.al = tail call fastcc noundef ptr @_ZNK2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE5ProbeIS5_EEPNS0_20TemplateHashMapEntryIS5_iEERKT_j(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE6ResizeEv.exit, %bb.a
  %.0 = phi ptr [ %i.al, %_ZN2v84base19TemplateHashMapImplINS_8internal6HandleINS2_4NameEEEiNS2_12_GLOBAL__N_114NameComparatorENS2_20ZoneAllocationPolicyEE6ResizeEv.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN2v88internal6String10SlowEqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef, ptr, ptr) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { "function-inline-cost-multiplier"="2" }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{ptr @_ZN2v88internal18FastKeyAccumulator11GetKeysSlowENS0_17GetKeysConversionE}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2146410443, i32 1073205}
!11 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb, ptr @_ZN2v88internal14KeyAccumulator27CollectOwnJSProxyTargetKeysENS0_12DirectHandleINS0_7JSProxyEEENS2_INS0_10JSReceiverEEE}
!18 = distinct !{!18, !13}
!19 = distinct !{null}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{ptr @_ZN2v88internal14KeyAccumulator24CollectOwnElementIndicesENS0_12DirectHandleINS0_10JSReceiverEEENS2_INS0_8JSObjectEEE, null}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{null}
!27 = !{!"branch_weights", i32 -2146410, i32 2146410}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!30 = distinct !{!30, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!31 = distinct !{!31, !32, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!32 = distinct !{!32, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!35 = distinct !{!35, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!36 = distinct !{!36, !37, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!37 = distinct !{!37, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!38 = !{ptr @_ZN2v88internal14KeyAccumulator7AddKeysENS0_12DirectHandleINS0_8JSObjectEEENS0_16AddKeyConversionE}
!39 = distinct !{!39, !13}
!40 = distinct !{null}
!41 = distinct !{!41, !13}
!42 = !{!"branch_weights", !"expected", i32 2146369291, i32 1114357}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = !{ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!54 = distinct !{!54, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!55 = distinct !{!55, !56, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!56 = distinct !{!56, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{null}
!85 = distinct !{!85, !13}
end_hunk_0
