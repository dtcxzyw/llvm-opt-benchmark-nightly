Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/objects?download=true
inline.NumInlined: 13178
inline.NumDeleted: 2935
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_SB_T1_T2_:bb.a
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !390

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
  br i1 %26, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, !llvm.loop !391

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
  br i1 %i.bp, label %.lr.ph, label %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit, !llvm.loop !384

_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit: ; preds = %.lr.ph
  %.pre = inttoptr i64 %.sroa.03.0.i30 to ptr
  br label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit, %bb.c
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.f, %bb.d ], [ %.pre, %_ZSt25__unguarded_linear_insertIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops14_Val_comp_iterINS1_19EnumIndexComparatorINS1_14NameDictionaryEEEEEEvT_T0_.exit.loopexit ], [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store atomic volatile i64 %i.x, ptr %.sink monotonic, align 8
  %.sroa.010.0 = add i64 %.sroa.010.034, 8        ; 2 uses
  %.not = icmp eq i64 %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !392

.loopexit:                                        ; preds = %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN2v88internal10AtomicSlotEiN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_T0_T1_(i64 %0, i64 %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub i64 %1, %0                           ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 135
  br i1 %i.c, label %.lr.ph, label %_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = add i64 %0, 8                            ; 2 uses
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = add i64 %3, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEET_SA_SA_T0_.exit
  %i.j = icmp eq i32 %i.bt, 0
  br i1 %i.j, label %.lr.ph.i.i, label %.lr.ph46, !llvm.loop !393

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph
  %.sroa.018.031.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ] ; 3 uses
  tail call void @_ZSt13__heap_selectIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_T0_(i64 %0, i64 %.sroa.018.031.lcssa, i64 %.sroa.018.031.lcssa, i64 %3)
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
  tail call void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef 0, i32 noundef %i.q, i64 noundef %i.m, i64 %3)
  %i.r = icmp sgt i32 %i.p, 15
  br i1 %i.r, label %bb.c, label %_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_T0_.exit, !llvm.loop !394

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %.03045 = phi i32 [ %i.bt, %bb.b ], [ %2, %.lr.ph ]
  %.sroa.018.03144 = phi i64 [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.s = phi i64 [ %i.bu, %bb.b ], [ %i.a, %.lr.ph ]
  %i.t = lshr i64 %i.s, 1
  %i.u = and i64 %i.t, 1073741816
  %i.v = add i64 %i.u, %0
  %i.w = add i64 %.sroa.018.03144, -8
  tail call void @_ZSt22__move_median_to_firstIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_SA_T0_(i64 %0, i64 %i.d, i64 %i.v, i64 %i.w, i64 %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph46
  %.sroa.014.0.i.i = phi i64 [ %.sroa.018.03144, %.lr.ph46 ], [ %.sroa.014.1.i.i, %bb.g ]
  %.sroa.019.0.i.i = phi i64 [ %i.d, %.lr.ph46 ], [ %i.at, %bb.g ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.019.1.i.i = phi i64 [ %.sroa.019.0.i.i, %bb.d ], [ %i.at, %bb.e ] ; 7 uses
  %i.x = inttoptr i64 %.sroa.019.1.i.i to ptr     ; 3 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.aa = and i64 %i.y, -4294967296
  %sext.i.i.i.i.i.i.i.i.i = add i64 %i.aa, 21474836480
  %i.ab = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i, 29
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 15
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.z, -4294967296
  %sext.i.i.i.i.i2.i.i.i.i = add i64 %i.ah, 21474836480
  %i.ai = ashr exact i64 %sext.i.i.i.i.i2.i.i.i.i, 29
  %i.aj = getelementptr inbounds i8, ptr %i.h, i64 %i.ai
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = add i64 %i.ak, 15
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8
  %sum.shift.i.i.i.i = lshr i64 %i.ag, 40
  %i.ao = trunc nuw nsw i64 %sum.shift.i.i.i.i to i32
  %i.ap = and i32 %i.ao, 8388607
  %sum.shift8.i.i.i.i = lshr i64 %i.an, 40
  %i.aq = trunc nuw nsw i64 %sum.shift8.i.i.i.i to i32
  %i.ar = and i32 %i.aq, 8388607
  %i.as = icmp samesign ult i32 %i.ap, %i.ar
  %i.at = add i64 %.sroa.019.1.i.i, 8             ; 2 uses
  br i1 %i.as, label %bb.e, label %.preheader.i.i, !llvm.loop !395

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.sroa.014.1.in.i.i = phi i64 [ %.sroa.014.1.i.i, %.preheader.i.i ], [ %.sroa.014.0.i.i, %bb.e ]
  %.sroa.014.1.i.i = add i64 %.sroa.014.1.in.i.i, -8 ; 4 uses
  %i.au = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.av = inttoptr i64 %.sroa.014.1.i.i to ptr    ; 3 uses
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  %i.ax = and i64 %i.au, -4294967296
  %sext.i.i.i.i.i.i.i9.i.i = add i64 %i.ax, 21474836480
  %i.ay = ashr exact i64 %sext.i.i.i.i.i.i.i9.i.i, 29
  %i.az = getelementptr inbounds i8, ptr %i.h, i64 %i.ay
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  %i.bb = add i64 %i.ba, 15
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.aw, -4294967296
  %sext.i.i.i.i.i2.i.i10.i.i = add i64 %i.be, 21474836480
  %i.bf = ashr exact i64 %sext.i.i.i.i.i2.i.i10.i.i, 29
  %i.bg = getelementptr inbounds i8, ptr %i.h, i64 %i.bf
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, 15
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load i64, ptr %i.bj, align 8
  %sum.shift.i.i11.i.i = lshr i64 %i.bd, 40
  %i.bl = trunc nuw nsw i64 %sum.shift.i.i11.i.i to i32
  %i.bm = and i32 %i.bl, 8388607
  %sum.shift8.i.i12.i.i = lshr i64 %i.bk, 40
  %i.bn = trunc nuw nsw i64 %sum.shift8.i.i12.i.i to i32
  %i.bo = and i32 %i.bn, 8388607
  %i.bp = icmp samesign ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.f, !llvm.loop !396

bb.f:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult i64 %.sroa.019.1.i.i, %.sroa.014.1.i.i
  br i1 %i.bq, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEET_SA_SA_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.br = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.bs = load atomic volatile i64, ptr %i.av monotonic, align 8
  store atomic volatile i64 %i.bs, ptr %i.x monotonic, align 8
  store atomic volatile i64 %i.br, ptr %i.av monotonic, align 8
  br label %bb.d, !llvm.loop !397

_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEET_SA_SA_T0_.exit: ; preds = %bb.f
  %i.bt = add nsw i32 %.03045, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN2v88internal10AtomicSlotEiN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_T0_T1_(i64 %.sroa.019.1.i.i, i64 %.sroa.018.03144, i32 noundef %i.bt, i64 %3)
  %i.bu = sub i64 %.sroa.019.1.i.i, %0            ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = icmp sgt i32 %i.bv, 135
  br i1 %i.bw, label %bb.b, label %_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_T0_.exit, !llvm.loop !393

_ZSt14__partial_sortIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEET_SA_SA_T0_.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_T0_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = sub i64 %1, %0
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = sdiv i32 %i.b, 8                         ; 3 uses
  %i.d = icmp slt i32 %i.b, 16
  br i1 %i.d, label %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_RT0_.exit, label %bb.b

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
  tail call void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef %i.l, i32 noundef %i.c, i64 noundef %i.k, i64 %3)
  %i.m = icmp eq i64 %indvars.iv.i, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.m, label %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_RT0_.exit, label %bb.c, !llvm.loop !398

_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_RT0_.exit: ; preds = %bb.c, %bb.a
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_RT0_.exit
  %i.o = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.p = add i64 %3, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_RT0_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.020 = phi i64 [ %1, %.lr.ph ], [ %i.aq, %bb.f ] ; 2 uses
  %i.s = inttoptr i64 %.sroa.0.020 to ptr         ; 3 uses
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.v = and i64 %i.t, -4294967296
  %sext.i.i.i.i.i.i.i = add i64 %i.v, 21474836480
  %i.w = ashr exact i64 %sext.i.i.i.i.i.i.i, 29
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 %i.w
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 15
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.u, -4294967296
  %sext.i.i.i.i.i2.i.i = add i64 %i.ac, 21474836480
  %i.ad = ashr exact i64 %sext.i.i.i.i.i2.i.i, 29
  %i.ae = getelementptr inbounds i8, ptr %i.r, i64 %i.ad
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 15
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %sum.shift.i.i = lshr i64 %i.ab, 40
  %i.aj = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.ak = and i32 %i.aj, 8388607
  %sum.shift8.i.i = lshr i64 %i.ai, 40
  %i.al = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.am = and i32 %i.al, 8388607
  %i.an = icmp samesign ult i32 %i.ak, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.ap = load atomic volatile i64, ptr %i.o monotonic, align 8
  store atomic volatile i64 %i.ap, ptr %i.s monotonic, align 8
  tail call void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef 0, i32 noundef %i.c, i64 noundef %i.ao, i64 %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aq = add i64 %.sroa.0.020, 8                 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %2
  br i1 %i.ar, label %bb.d, label %._crit_edge, !llvm.loop !399
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_T2_(i64 %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 %4) local_unnamed_addr #0 comdat {
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
  %i.t = and i64 %i.q, -4294967296
  %sext.i.i.i.i.i.i.i = add i64 %i.t, 21474836480
  %i.u = ashr exact i64 %sext.i.i.i.i.i.i.i, 29
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 15
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.s, -4294967296
  %sext.i.i.i.i.i2.i.i = add i64 %i.aa, 21474836480
  %i.ab = ashr exact i64 %sext.i.i.i.i.i2.i.i, 29
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 %i.ab
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 15
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 8
  %sum.shift.i.i = lshr i64 %i.z, 40
  %i.ah = trunc nuw nsw i64 %sum.shift.i.i to i32
  %i.ai = and i32 %i.ah, 8388607
  %sum.shift8.i.i = lshr i64 %i.ag, 40
  %i.aj = trunc nuw nsw i64 %sum.shift8.i.i to i32
  %i.ak = and i32 %i.aj, 8388607
  %i.al = icmp samesign ult i32 %i.ai, %i.ak
  %spec.select = select i1 %i.al, i32 %i.l, i32 %i.h ; 4 uses
  %i.am = sext i32 %spec.select to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = add i64 %i.an, %0
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = sext i32 %.042 to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = add i64 %i.ar, %0
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.ap monotonic, align 8
  store atomic volatile i64 %i.au, ptr %i.at monotonic, align 8
  %i.av = icmp slt i32 %spec.select, %i.b
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !400

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.aw = and i32 %2, 1
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ay = add nsw i32 %2, -2
  %i.az = ashr exact i32 %i.ay, 1
  %i.ba = icmp eq i32 %.0.lcssa, %i.az
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = shl nsw i32 %.0.lcssa, 1
  %i.bc = or disjoint i32 %i.bb, 1                ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = add i64 %i.be, %0
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = sext i32 %.0.lcssa to i64
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = add i64 %i.bi, %0
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bg monotonic, align 8
  store atomic volatile i64 %i.bl, ptr %i.bk monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i32 [ %i.bc, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bm = icmp sgt i32 %.1, %1
  br i1 %i.bm, label %.lr.ph.i, label %_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.bn = and i64 %3, -4294967296
  %sext.i.i.i.i.i2.i.i.i = add i64 %i.bn, 21474836480
  %i.bo = ashr exact i64 %sext.i.i.i.i.i2.i.i.i, 29
  %i.bp = add i64 %4, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bo
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi i32 [ %.1, %.lr.ph.i ], [ %.0923.i, %bb.g ] ; 3 uses
  %.0923.in.i = add nsw i32 %.022.i, -1
  %.0923.i = sdiv i32 %.0923.in.i, 2              ; 4 uses
  %i.bt = sext i32 %.0923.i to i64
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = add i64 %i.bu, %0
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = and i64 %i.bx, -4294967296
  %sext.i.i.i.i.i.i.i.i = add i64 %i.by, 21474836480
  %i.bz = ashr exact i64 %sext.i.i.i.i.i.i.i.i, 29
  %i.ca = getelementptr inbounds i8, ptr %i.br, i64 %i.bz
  %i.cb = load atomic volatile i64, ptr %i.ca monotonic, align 8
  %i.cc = add i64 %i.cb, 15
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = load atomic volatile i64, ptr %i.bs monotonic, align 8
  %i.cg = add i64 %i.cf, 15
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.ch, align 8
  %sum.shift.i.i.i = lshr i64 %i.ce, 40
  %i.cj = trunc nuw nsw i64 %sum.shift.i.i.i to i32
  %i.ck = and i32 %i.cj, 8388607
  %sum.shift8.i.i.i = lshr i64 %i.ci, 40
  %i.cl = trunc nuw nsw i64 %sum.shift8.i.i.i to i32
  %i.cm = and i32 %i.cl, 8388607
  %i.cn = icmp samesign ult i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.g, label %_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.co = sext i32 %.022.i to i64
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = add i64 %i.cp, %0
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load atomic volatile i64, ptr %i.bw monotonic, align 8
  store atomic volatile i64 %i.cs, ptr %i.cr monotonic, align 8
  %i.ct = icmp sgt i32 %.0923.i, %1
  br i1 %i.ct, label %bb.f, label %_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit, !llvm.loop !401

_ZSt11__push_heapIN2v88internal10AtomicSlotEimN9__gnu_cxx5__ops14_Iter_comp_valINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_T0_SB_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i = phi i32 [ %.1, %bb.e ], [ %.022.i, %bb.f ], [ %.0923.i, %bb.g ]
  %i.cu = sext i32 %.0.lcssa.i to i64
  %i.cv = shl nsw i64 %i.cu, 3
  %i.cw = add i64 %i.cv, %0
  %i.cx = inttoptr i64 %i.cw to ptr
  store atomic volatile i64 %3, ptr %i.cx monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN2v88internal10AtomicSlotEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_19EnumIndexComparatorINS1_16GlobalDictionaryEEEEEEvT_SA_SA_SA_T0_(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.b = load atomic volatile i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %4, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 10 uses
  %i.h = and i64 %i.b, -4294967296
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !402

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
  br i1 %26, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, !llvm.loop !391

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
  br label %bb.e, !llvm.loop !248

_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %.sink = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.b, %bb.c ], [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.bi, %bb.e ]
  store atomic volatile i64 %i.ab, ptr %.sink monotonic, align 8
  %.sroa.010.0 = add i64 %.sroa.010.029, 8        ; 2 uses
  %.not = icmp eq i64 %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !403

.loopexit:                                        ; preds = %_ZSt13move_backwardIN2v88internal10AtomicSlotES2_ET0_T_S4_S3_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare i64 @_ZNK2v88internal7Context12global_proxyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10ErrorUtils30HasErrorStackSymbolOwnPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal24IncrementalStringBuilder6LengthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6String10SlowEqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #2

declare noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.a, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i

_ZN2v88internal4Name9IsPrivateEv.exit.i:          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i:   ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i, %bb.b, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i
  %i.m = phi i32 [ %6, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i ]
  store i32 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = ptrtoint ptr %5 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -1, ptr %i.z, align 8
  %.not = icmp eq i64 %4, -1
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.aa = icmp ugt i64 %4, 4294967294
  br i1 %i.aa, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %5, align 8               ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.d
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp eq i16 %i.ai, 2061
  br i1 %i.aj, label %.critedge, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.ak = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = icmp eq i16 %i.an, 300
  br i1 %i.ao, label %.critedge, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.d, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %i.ap = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %4, i1 noundef zeroext true) #28 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  store i64 %i.aq, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %.sroa.03.0.copyload = phi ptr [ %i.ap, %bb.e ], [ %3, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = and i16 %i.ax, -96
  %.not.i = icmp eq i16 %i.ay, 32
  br i1 %.not.i, label %bb.g, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !16, !noundef !17
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bc = load i8, ptr %i.bb, align 8, !range !16
  %i.bd = trunc nuw i8 %i.bc to i1
  %not..i.i.i = xor i1 %i.ba, true
  %i.be = select i1 %not..i.i.i, i1 true, i1 %i.bd
  br i1 %i.be, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bg = load i8, ptr %i.bf, align 8, !range !16, !noundef !17
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.g
  %.pn.i.i = phi ptr [ %i.bj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.g ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.bk = load ptr, ptr %.in.i.i, align 8
  %i.bl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.03.0.copyload) #28
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %bb.f, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.bl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.03.0.copyload, %bb.f ]
  store ptr %.sroa.05.0.i, ptr %i.s, align 8
  br label %bb.l

.critedge:                                        ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %bb.c, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %3, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = and i16 %i.bs, -96
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN2v88internal17PrototypeIterator43AdvanceFollowingProxiesIgnoringAccessChecksEv:bb.a

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %i.o, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp ne i16 %i.ab, 304
  %i.ad = zext i1 %i.ac to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = phi i8 [ 1, %bb.c ], [ 0, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ae, ptr %i.af, align 4
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.l, align 8
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.s) #28
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %i.r, ptr %.0.i.i.i, align 8
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.j:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8
  %i.as = icmp sgt i32 %i.aq, 102399
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %0, align 8
  %i.au = tail call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.at) #28 ; 0 uses
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.l:                                             ; preds = %bb.j
  %i.av = tail call ptr @_ZN2v88internal7JSProxy12GetPrototypeENS0_12DirectHandleIS1_EE(ptr nonnull %i.b) ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.m

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.l
  store ptr null, ptr %i.a, align 8
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i64, ptr %i.av, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 664
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.az, %i.bc
  %i.be = zext i1 %i.bd to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = phi i8 [ 1, %bb.m ], [ %i.be, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.bf, ptr %i.bg, align 4
  br label %_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit

_ZN2v88internal17PrototypeIterator22AdvanceIgnoringProxiesEv.exit: ; preds = %bb.o, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i, %bb.g, %bb.k
  %.1 = phi i1 [ true, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit.i ], [ false, %bb.k ], [ true, %bb.g ], [ false, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit ], [ true, %bb.o ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN2v88internal7Isolate9MayAccessENS0_12DirectHandleINS0_13NativeContextEEENS2_INS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr) local_unnamed_addr #2

declare i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal5Debug33PerformSideEffectCheckForAccessorENS0_12DirectHandleINS0_12AccessorInfoEEENS2_INS0_6ObjectEEENS0_17AccessorComponentE(ptr noundef nonnull align 8 dereferenceable(256), ptr, ptr, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #2

declare noundef i64 @_ZN2v84base4bits20SignedSaturatedSub64Ell(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal9ScopeInfo4HashEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal12TemplateInfo7GetHashEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %sum.shift.i = lshr i64 %i.c, 34
  %i.d = trunc nuw nsw i64 %sum.shift.i to i32    ; 2 uses
  %i.e = and i32 %i.d, 536870911
  %i.f = xor i32 %i.e, -1
  %i.g = shl i32 %i.d, 15
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i32 %i.h, 12
  %i.j = xor i32 %i.i, %i.h
  %i.k = mul i32 %i.j, 5                          ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = xor i32 %i.l, %i.k
  %i.n = mul i32 %i.m, 2057                       ; 2 uses
  %i.o = lshr i32 %i.n, 16
  %.masked.i = and i32 %i.n, 1073741823
  %i.p = xor i32 %.masked.i, %i.o
  ret i32 %i.p
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD1Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #28, !inline_history !289
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #28, !inline_history !289
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #22 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #22 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #28, !inline_history !289
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28, !inline_history !289
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #31
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #28, !inline_history !404
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #28, !inline_history !404
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #31, !inline_history !405
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator23InternalUpdateProtectorEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS0_17MaybeDirectHandleINS0_6ObjectEEESL_(ptr noundef, ptr, ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator15RestartInternalILb1EEEvNS1_16InterceptorStateE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator15RestartInternalILb0EEEvNS1_16InterceptorStateE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !406
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !406
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal8JSObject20GetFastElementsUsageEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare preserve_mostcc noundef zeroext i1 @_ZN2v88internal7JSArray25HasReadOnlyLengthSlowPathENS0_12DirectHandleIS1_EE(ptr) local_unnamed_addr #2

declare void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4Heap19IsPendingAllocationENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2992) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::StdoutStream", align 8 ; 20 uses
  %i.a = tail call noundef zeroext i1 @_ZN2v88internal4Heap27IsPendingAllocationInternalENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2992) %0, i64 %1) ; 2 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1070), align 2, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = and i1 %i.a, %i.c
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 313
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.i) #28
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.k = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #28 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str.403, i64 noundef 20) #28 ; 0 uses
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, -75
  %i.t = or disjoint i32 %i.s, 8
  store i32 %i.t, ptr %i.q, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str.404, i64 noundef 2) #28 ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %1) #28 ; 0 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str.405, i64 noundef 1) #28 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.d, align 8
  %i.x = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !407
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #28, !inline_history !407
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #28, !inline_history !407
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.a
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4Heap27IsPendingAllocationInternalENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(2992) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = and i64 %1, -262144
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 262144
  %i.d = and i64 %i.c, 64
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load atomic ptr, ptr %i.g seq_cst, align 8 ; 3 uses
  %i.i = add i64 %1, -1                           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i32, ptr %i.j, align 8
  switch i32 %i.k, label %bb.l [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 5, label %bb.i
    i32 8, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
    i32 9, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
    i32 12, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
    i32 7, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
    i32 4, label %bb.m
    i32 10, label %bb.m
    i32 6, label %bb.m
    i32 11, label %bb.m
    i32 0, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  %i.o = load i8, ptr %i.n, align 8, !range !16, !noundef !17
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal13HeapAllocator19new_space_allocatorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZN2v88internal13HeapAllocator19new_space_allocatorEv.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.r = tail call noundef zeroext i1 @_ZN2v88internal13MainAllocator19IsPendingAllocationEm(ptr noundef nonnull align 8 dereferenceable(248) %i.q, i64 noundef %i.i) #28
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.v = load i8, ptr %i.u, align 8, !range !16, !noundef !17
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN2v88internal13HeapAllocator19old_space_allocatorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZN2v88internal13HeapAllocator19old_space_allocatorEv.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.y = tail call noundef zeroext i1 @_ZN2v88internal13MainAllocator19IsPendingAllocationEm(ptr noundef nonnull align 8 dereferenceable(248) %i.x, i64 noundef %i.i) #28
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1144
  %i.ac = load i8, ptr %i.ab, align 8, !range !16, !noundef !17
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal13HeapAllocator20code_space_allocatorEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZN2v88internal13HeapAllocator20code_space_allocatorEv.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 896
  %i.af = tail call noundef zeroext i1 @_ZN2v88internal13MainAllocator19IsPendingAllocationEm(ptr noundef nonnull align 8 dereferenceable(248) %i.ae, i64 noundef %i.i) #28
  br label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 888
  %i.aj = load i8, ptr %i.ai, align 8, !range !16, !noundef !17
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN2v88internal13HeapAllocator23trusted_space_allocatorEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZN2v88internal13HeapAllocator23trusted_space_allocatorEv.exit: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 640
  %i.am = tail call noundef zeroext i1 @_ZN2v88internal13MainAllocator19IsPendingAllocationEm(ptr noundef nonnull align 8 dereferenceable(248) %i.al, i64 noundef %i.i) #28
  br label %bb.m

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = icmp eq i64 %i.i, %i.ap
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #28
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.l:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal13HeapAllocator19new_space_allocatorEv.exit, %_ZN2v88internal13HeapAllocator19old_space_allocatorEv.exit, %_ZN2v88internal13HeapAllocator20code_space_allocatorEv.exit, %_ZN2v88internal13HeapAllocator23trusted_space_allocatorEv.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.r, %_ZN2v88internal13HeapAllocator19new_space_allocatorEv.exit ], [ %i.y, %_ZN2v88internal13HeapAllocator19old_space_allocatorEv.exit ], [ %i.af, %_ZN2v88internal13HeapAllocator20code_space_allocatorEv.exit ], [ %i.am, %_ZN2v88internal13HeapAllocator23trusted_space_allocatorEv.exit ], [ %i.aq, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #28
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal13MainAllocator19IsPendingAllocationEm(ptr noundef nonnull align 8 dereferenceable(248), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !407
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #28, !inline_history !407
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28, !inline_history !407
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !407
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #28, !inline_history !407
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #28, !inline_history !407
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12StdoutStreamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !408
  br label %_ZN2v88internal12StdoutStreamD0Ev.exit

_ZN2v88internal12StdoutStreamD0Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #28, !inline_history !408
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #28, !inline_history !408
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #31, !inline_history !409
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #6

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !28

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #29
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1
  store i8 %i.u, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

end_hunk_1
begin_hunk_2_@llvm.smin.i32
!190 = distinct !{!190, !191, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!191 = distinct !{!191, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!192 = distinct !{!192, !193, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!193 = distinct !{!193, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!194 = !{!195, !197}
!195 = distinct !{!195, !196, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!196 = distinct !{!196, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!197 = distinct !{!197, !198, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!198 = distinct !{!198, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!199 = distinct !{!199, !7}
!200 = !{!201, !203}
!201 = distinct !{!201, !202, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!202 = distinct !{!202, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!203 = distinct !{!203, !204, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!204 = distinct !{!204, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!205 = !{!206, !208}
!206 = distinct !{!206, !207, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!207 = distinct !{!207, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!208 = distinct !{!208, !209, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!209 = distinct !{!209, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!210 = distinct !{!210, !7}
!211 = distinct !{!211, !7}
!212 = !{!213, !215}
!213 = distinct !{!213, !214, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!214 = distinct !{!214, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!215 = distinct !{!215, !216, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!216 = distinct !{!216, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!219 = distinct !{!219, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!220 = distinct !{!220, !221, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!221 = distinct !{!221, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!222 = distinct !{!222, !7}
!223 = distinct !{!223, !7}
!224 = !{!225, !227}
!225 = distinct !{!225, !226, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!226 = distinct !{!226, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!227 = distinct !{!227, !228, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!228 = distinct !{!228, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!229 = !{!230, !232}
!230 = distinct !{!230, !231, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!231 = distinct !{!231, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!232 = distinct !{!232, !233, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!233 = distinct !{!233, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!234 = distinct !{!234, !7}
!235 = distinct !{!235, !7}
!236 = distinct !{!236, !7}
!237 = !{!238, !240}
!238 = distinct !{!238, !239, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!239 = distinct !{!239, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!240 = distinct !{!240, !241, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!241 = distinct !{!241, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!244 = distinct !{!244, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!245 = distinct !{!245, !246, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!246 = distinct !{!246, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!247 = distinct !{!247, !7}
!248 = distinct !{!248, !7}
!249 = distinct !{!249, !7}
!250 = distinct !{null}
!251 = distinct !{!251, !7}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!254 = distinct !{!254, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!257 = distinct !{!257, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!258 = !{!256, !253}
!259 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!260 = distinct !{!260, !7}
!261 = distinct !{!261, !7}
!262 = distinct !{!262, !7}
!263 = distinct !{!263, !7}
!264 = distinct !{null}
!265 = distinct !{!265, !7}
!266 = distinct !{null}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!269 = distinct !{!269, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!270 = !{!271, !268}
!271 = distinct !{!271, !272, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!272 = distinct !{!272, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!273 = distinct !{null, ptr @_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv, null, null, null}
!274 = distinct !{!274, !7}
!275 = distinct !{!275, !7}
!276 = !{ptr @_ZN2v88internal10JSReceiver12GetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EE}
!277 = distinct !{!277, !7}
!278 = !{ptr @_ZN2v88internal17PrototypeIterator23AdvanceFollowingProxiesEv}
!279 = !{!280, !282}
!280 = distinct !{!280, !281, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!281 = distinct !{!281, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!282 = distinct !{!282, !283, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!283 = distinct !{!283, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!284 = !{!285, !287}
!285 = distinct !{!285, !286, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!286 = distinct !{!286, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!287 = distinct !{!287, !288, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!288 = distinct !{!288, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!289 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!292 = distinct !{!292, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!295 = distinct !{!295, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!296 = !{!294, !291}
!297 = !{!298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318}
!298 = distinct !{!298, !299, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!299 = distinct !{!299, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!300 = distinct !{!300, !301, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!301 = distinct !{!301, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!302 = distinct !{!302, !303, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!303 = distinct !{!303, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!304 = distinct !{!304, !305, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!305 = distinct !{!305, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE"}
!306 = distinct !{!306, !307, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!307 = distinct !{!307, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!308 = distinct !{!308, !309, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!309 = distinct !{!309, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!310 = distinct !{!310, !311, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!311 = distinct !{!311, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE"}
!312 = distinct !{!312, !313, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!313 = distinct !{!313, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!314 = distinct !{!314, !315, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!315 = distinct !{!315, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!316 = distinct !{!316, !317, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!317 = distinct !{!317, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE"}
!318 = distinct !{!318, !319, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!319 = distinct !{!319, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE"}
!320 = !{!300, !302, !304, !306, !308, !310, !312, !314, !316, !318}
!321 = !{!306, !308, !310, !312, !314, !316, !318}
!322 = !{!308, !310, !312, !314, !316, !318}
!323 = !{!310, !312, !314, !316, !318}
!324 = !{!312, !314, !316, !318}
!325 = !{!314, !316, !318}
!326 = !{!316, !318}
!327 = !{!328, !316, !318}
!328 = distinct !{!328, !329, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!329 = distinct !{!329, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!330 = !{!318}
!331 = distinct !{!331, !7}
!332 = distinct !{!332, !7}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!335 = distinct !{!335, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!336 = !{!337, !334}
!337 = distinct !{!337, !338, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!338 = distinct !{!338, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!339 = distinct !{ptr @_ZNK2v88internal17JSArrayBufferView23IsDetachedOrOutOfBoundsEv, null, null, null}
!340 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!341 = !{!"branch_weights", i32 -2146410, i32 2146410}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!344 = distinct !{!344, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!345 = !{!346, !343}
!346 = distinct !{!346, !347, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!347 = distinct !{!347, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!348 = distinct !{null, null, null}
!349 = distinct !{!349, !7}
!350 = distinct !{!350, !7}
!351 = distinct !{!351, !7}
!352 = distinct !{!352, !7}
!353 = distinct !{!353, !7}
!354 = !{i64 18119633}
!355 = distinct !{!355, !7}
!356 = distinct !{!356, !7}
!357 = !{ptr @_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_}
!358 = distinct !{!358, !7}
!359 = distinct !{!359, !7}
!360 = distinct !{!360, !7}
!361 = distinct !{!361, !7}
!362 = distinct !{!362, !7}
!363 = distinct !{!363, !7}
!364 = distinct !{!364, !7}
!365 = distinct !{!365, !7}
!366 = distinct !{!366, !7}
!367 = distinct !{!367, !7}
!368 = distinct !{!368, !7}
!369 = !{!370, !372}
!370 = distinct !{!370, !371, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!371 = distinct !{!371, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!372 = distinct !{!372, !373, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!373 = distinct !{!373, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!374 = distinct !{!374, !153}
!375 = distinct !{!375, !153}
!376 = distinct !{!376, !7}
!377 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!378 = distinct !{!378, !7}
!379 = distinct !{!379, !7}
!380 = distinct !{!380, !7}
!381 = distinct !{!381, !7}
!382 = distinct !{!382, !7}
!383 = distinct !{!383, !7}
!384 = distinct !{!384, !7}
!385 = distinct !{!385, !7}
!386 = distinct !{!386, !7}
!387 = distinct !{!387, !7}
!388 = distinct !{!388, !7}
!389 = distinct !{!389, !7}
!390 = distinct !{!390, !153}
!391 = distinct !{!391, !7}
!392 = distinct !{!392, !7}
!393 = distinct !{!393, !7}
!394 = distinct !{!394, !7}
!395 = distinct !{!395, !7}
!396 = distinct !{!396, !7}
!397 = distinct !{!397, !7}
!398 = distinct !{!398, !7}
!399 = distinct !{!399, !7}
!400 = distinct !{!400, !7}
!401 = distinct !{!401, !7}
!402 = distinct !{!402, !153}
!403 = distinct !{!403, !7}
!404 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!405 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!406 = distinct !{null}
!407 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!408 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!409 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
end_hunk_2
