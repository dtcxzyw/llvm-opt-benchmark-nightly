Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveDebugVariables?download=true
inline.NumInlined: 5856
inline.NumDeleted: 2801
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE8iterator10treeInsertES1_S1_S3_:bb.a
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !174 ; 2 uses
  %i.dx = call i64 @_ZNK4llvm15IntervalMapImpl4Path14getLeftSiblingEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %i.dr) #24 ; 3 uses
  %.not99.i = icmp eq i64 %i.dx, 0                ; 2 uses
  br i1 %.not99.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 63
  %i.ea = add nuw nsw i32 %i.dz, 1                ; 3 uses
  store i32 %i.ea, ptr %i.a, align 16, !tbaa !174
  %i.eb = add i32 %i.ea, %i.dw
  %i.ec = and i64 %i.dx, -64
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr %i.ed, ptr %i.b, align 16, !tbaa !1007
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.076.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]    ; 3 uses
  %.074.i = phi i32 [ %i.ea, %bb.n ], [ 0, %bb.m ]
  %.073.i = phi i32 [ %i.eb, %bb.n ], [ %i.dw, %bb.m ]
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ds ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !173 ; 2 uses
  %i.ei = zext nneg i32 %.076.i to i64            ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !174
  %i.ek = add i32 %i.eh, %.074.i                  ; 2 uses
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !169
  %i.em = add nuw nsw i32 %.076.i, 1              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ei
  store ptr %i.el, ptr %i.en, align 8, !tbaa !1007
  %i.eo = call i64 @_ZNK4llvm15IntervalMapImpl4Path15getRightSiblingEj(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %i.dr) #24 ; 3 uses
  %.not100.i = icmp eq i64 %i.eo, 0
  br i1 %.not100.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = and i32 %i.ep, 63
  %i.er = add nuw nsw i32 %i.eq, 1                ; 2 uses
  %i.es = zext nneg i32 %i.em to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.es
  store i32 %i.er, ptr %i.et, align 4, !tbaa !174
  %i.eu = add i32 %i.er, %i.ek
  %i.ev = and i64 %i.eo, -64
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = or disjoint i32 %.076.i, 2
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.es
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !1007
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.177.i = phi i32 [ %i.ex, %bb.p ], [ %i.em, %bb.o ] ; 6 uses
  %.175.i = phi i32 [ %i.eu, %bb.p ], [ %i.ek, %bb.o ] ; 2 uses
  %i.ez = add i32 %.175.i, 1
  %i.fa = shl nuw nsw i32 %.177.i, 2
  %i.fb = icmp ugt i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.fc = icmp eq i32 %.177.i, 1
  %i.fd = add nsw i32 %.177.i, -1
  %i.fe = select i1 %i.fc, i32 1, i32 %i.fd       ; 2 uses
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !174
  %i.fi = zext nneg i32 %.177.i to i64            ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fi
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !174
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ff ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1007
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fi
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !1007
  store i32 0, ptr %i.fg, align 4, !tbaa !174
  %i.fn = load ptr, ptr %0, align 8, !tbaa !163
  %i.fo = getelementptr i8, ptr %i.fn, i64 168
  %.val83.i = load ptr, ptr %i.fo, align 8, !tbaa !222 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val83.i, i64 8 ; 3 uses
  %i.fq = load ptr, ptr %.val83.i, align 8, !tbaa !530 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !532
  store ptr %i.fr, ptr %.val83.i, align 8, !tbaa !530
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i

bb.t:                                             ; preds = %bb.r
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !537
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = add i64 %i.ft, 63
  %i.fv = and i64 %i.fu, -64                      ; 2 uses
  %i.fw = add i64 %i.fv, 192                      ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val83.i, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !538
  %i.fz = icmp ult i64 %i.fw, %i.fy
  br i1 %i.fz, label %bb.u, label %bb.v, !prof !171

bb.u:                                             ; preds = %bb.t
  %i.ga = inttoptr i64 %i.fw to ptr
  store ptr %i.ga, ptr %i.fp, align 8, !tbaa !537
  %i.gb = inttoptr i64 %i.fv to ptr
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i

bb.v:                                             ; preds = %bb.t
  %i.gc = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.fp, i64 noundef 192, i64 noundef 192, i8 6)
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i

_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  %i.gd = phi ptr [ %i.fq, %bb.s ], [ %i.gb, %bb.u ], [ %i.gc, %bb.v ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.gd, i8 0, i64 160, i1 false)
  store ptr %i.gd, ptr %i.fk, align 8, !tbaa !1007
  %i.ge = add nuw nsw i32 %.177.i, 1
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i, %bb.q
  %.278.i = phi i32 [ %i.ge, %_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i ], [ %.177.i, %bb.q ] ; 5 uses
  %.072.i = phi i32 [ %i.fe, %_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE7newNodeINS_15IntervalMapImpl8LeafNodeIS1_S3_Lj4ES5_EEEEPT_v.exit.i ], [ 0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.gf = call i64 @_ZN4llvm15IntervalMapImpl10distributeEjjjPKjPjjb(i32 noundef %.278.i, i32 noundef %.175.i, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %.073.i, i1 noundef zeroext true) #24 ; 2 uses
  %.sroa.016.0.extract.trunc.i = trunc i64 %i.gf to i32 ; 2 uses
  %i.gg = add nsw i32 %.278.i, -1                 ; 2 uses
  %.not247.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not247.i.i, label %_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_8LeafNodeINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS3_EEEEEEvPPT_jPjPKj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.w
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit246.i.i, %.lr.ph.preheader.i.i
  %indvars.iv261.i.i = phi i64 [ %i.gh, %.lr.ph.preheader.i.i ], [ %indvars.iv.next262.i.i, %.loopexit246.i.i ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv261.i.i ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !174 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv261.i.i ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !174 ; 2 uses
  %i.gm = icmp eq i32 %i.gj, %i.gl
  br i1 %i.gm, label %.loopexit246.i.i, label %.preheader245.i.i

.preheader245.i.i:                                ; preds = %.lr.ph.i.i
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv261.i.i
  %.not76.i.i217 = icmp eq i64 %indvars.iv261.i.i, 0
  br i1 %.not76.i.i217, label %.loopexit246.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader245.i.i
  %i.go = trunc nuw i64 %indvars.iv261.i.i to i32
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !1007 ; 10 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 64 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 64 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  br label %bb.y

bb.x:                                             ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i
  %.not76.i.i = icmp eq i32 %.069.i.i218, 0
  br i1 %.not76.i.i, label %.loopexit246.i.i, label %bb.y, !llvm.loop !1001

bb.y:                                             ; preds = %.lr.ph, %bb.x
  %.069.i.i218.in = phi i32 [ %i.go, %.lr.ph ], [ %.069.i.i218, %bb.x ]
  %i.gu = phi i32 [ %i.gj, %.lr.ph ], [ %i.mi, %bb.x ] ; 7 uses
  %i.gv = phi i32 [ %i.gl, %.lr.ph ], [ %i.mj, %bb.x ]
  %.069.i.i218 = add nsw i32 %.069.i.i218.in, -1  ; 3 uses
  %i.gw = zext nneg i32 %.069.i.i218 to i64       ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !1007 ; 4 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !174 ; 5 uses
  %i.hb = sub i32 %i.gv, %i.gu                    ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i22.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y
  %i.hd = sub i32 4, %i.gu
  %i.he = call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.hb)
  %.sroa.speculated39.i.i.i = call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.he) ; 5 uses
  %.not9.i.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit.i.i, label %.lr.ph.i130.i.i

.lr.ph.i130.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.hf = icmp eq i32 %.sroa.speculated39.i.i.i, 0
  br i1 %i.hf, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %.lr.ph.i130.i.i
  %i.hg = zext i32 %i.gu to i64
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i, %.lr.ph.split.i.preheader.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i ], [ %i.hg, %.lr.ph.split.i.preheader.i.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  %i.hh = and i64 %indvars.iv.next.i.i.i, 4294967295 ; 2 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.hh
  %i.hj = add i32 %.sroa.speculated39.i.i.i, %indvars.i.i.i
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.hk
  %i.hm = load <2 x i64>, ptr %i.hi, align 8, !tbaa !170
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !170
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.hh ; 3 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.hk ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 5 uses
  %.val17.i.i131.i.i = load i8, ptr %i.hp, align 8
  %i.hq = and i8 %.val17.i.i131.i.i, 63           ; 2 uses
  %.not.i.i132.i.i = icmp eq i8 %i.hq, 0
  br i1 %.not.i.i132.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.i.i.i
  %i.hr = shl nuw i8 %i.hq, 2
  %i.hs = zext i8 %i.hr to i64
  %i.ht = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hs) #26 ; 2 uses
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !175 ; 2 uses
  store ptr %i.ht, ptr %i.ho, align 8, !tbaa !175
  %.not.i.i.i.i133.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i133.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i136.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i134.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i134.i.i: ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #27
  %.val.pre.i.i135.i.i = load ptr, ptr %i.ho, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i136.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i136.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i134.i.i, %bb.z
  %.val.i.i137.i.i = phi ptr [ %i.ht, %bb.z ], [ %.val.pre.i.i135.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i134.i.i ] ; 2 uses
  %.val18.i.i138.i.i = load ptr, ptr %i.hn, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i139.i.i = load i8, ptr %i.hp, align 8
  %i.hv = shl i8 %.val20.i.i139.i.i, 2            ; 3 uses
  %i.hw = icmp ugt i8 %i.hv, 4
  br i1 %i.hw, label %bb.aa, label %bb.ab, !prof !171

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i136.i.i
  %.idx.i.i146.i.i = zext i8 %i.hv to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i137.i.i, ptr align 4 %.val18.i.i138.i.i, i64 %.idx.i.i146.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i136.i.i
  %i.hx = icmp eq i8 %i.hv, 4
  br i1 %i.hx, label %bb.ac, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.hy = load i32, ptr %.val18.i.i138.i.i, align 4, !tbaa !174
  store i32 %i.hy, ptr %.val.i.i137.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i

bb.ad:                                            ; preds = %.lr.ph.split.i.i.i
  store ptr null, ptr %i.ho, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i:      ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.val15.i.i141.i.i = load i8, ptr %i.hp, align 8
  %6 = and i8 %.val15.i.i141.i.i, 63              ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %7 = load i8, ptr %i.hz, align 8
  %8 = and i8 %7, -64
  %9 = or disjoint i8 %8, %6                      ; 2 uses
  store i8 %9, ptr %i.hz, align 8
  %.val12.i.i142.i.i = load i8, ptr %i.hp, align 8
  %10 = and i8 %.val12.i.i142.i.i, 64             ; 2 uses
  %11 = and i8 %9, -65
  %12 = or disjoint i8 %11, %10
  store i8 %12, ptr %i.hz, align 8
  %.val13.i.i143.i.i = load i8, ptr %i.hp, align 8
  %13 = and i8 %.val13.i.i143.i.i, -128
  %14 = or disjoint i8 %6, %13
  %15 = or disjoint i8 %14, %10
  store i8 %15, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %.val14.i.i144.i.i = load ptr, ptr %i.ia, align 8, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store ptr %.val14.i.i144.i.i, ptr %i.ib, align 8, !tbaa !254
  %.not.i145.i.i = icmp eq i32 %indvars.i.i.i, 0
  br i1 %.not.i145.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !31

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i140.i.i, %.lr.ph.i.i.i.i.i
  %.not13.i108.i.i = icmp eq i32 %.sroa.speculated39.i.i.i, 0
  br i1 %.not13.i108.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i, label %.lr.ph.i109.i.i

.lr.ph.i109.i.i:                                  ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit.i.i
  %i.ic = sub i32 %i.ha, %.sroa.speculated39.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i, %.lr.ph.i109.i.i
  %indvars.iv258.i.i = phi i64 [ %indvars.iv.next259.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i ], [ 0, %.lr.ph.i109.i.i ] ; 3 uses
  %.015.i110.i.i = phi i32 [ %i.jl, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i ], [ %i.ic, %.lr.ph.i109.i.i ] ; 2 uses
  %i.ie = zext i32 %.015.i110.i.i to i64          ; 2 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv258.i.i ; 2 uses
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !170
  store i64 %i.ih, ptr %i.ig, align 8, !tbaa !170
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !170
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !170
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.ie ; 4 uses
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %indvars.iv258.i.i ; 7 uses
  %i.in = icmp eq ptr %i.im, %i.il
  br i1 %i.in, label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 5 uses
  %.val17.i.i112.i.i = load i8, ptr %i.io, align 8
  %i.ip = and i8 %.val17.i.i112.i.i, 63           ; 2 uses
  %.not.i.i113.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i113.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iq = shl nuw i8 %i.ip, 2
  %i.ir = zext i8 %i.iq to i64
  %i.is = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ir) #26 ; 2 uses
  %i.it = load ptr, ptr %i.im, align 8, !tbaa !175 ; 2 uses
  store ptr %i.is, ptr %i.im, align 8, !tbaa !175
  %.not.i.i.i.i114.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i114.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i117.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i115.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i115.i.i: ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.it) #27
  %.val.pre.i.i116.i.i = load ptr, ptr %i.im, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i117.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i117.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i115.i.i, %bb.ag
  %.val.i.i118.i.i = phi ptr [ %i.is, %bb.ag ], [ %.val.pre.i.i116.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i115.i.i ] ; 2 uses
  %.val18.i.i119.i.i = load ptr, ptr %i.il, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i120.i.i = load i8, ptr %i.io, align 8
  %i.iu = shl i8 %.val20.i.i120.i.i, 2            ; 3 uses
  %i.iv = icmp ugt i8 %i.iu, 4
  br i1 %i.iv, label %bb.ah, label %bb.ai, !prof !171

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i117.i.i
  %.idx.i.i128.i.i = zext i8 %i.iu to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i118.i.i, ptr align 4 %.val18.i.i119.i.i, i64 %.idx.i.i128.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i121.i.i

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i117.i.i
  %i.iw = icmp eq i8 %i.iu, 4
  br i1 %i.iw, label %bb.aj, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i121.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ix = load i32, ptr %.val18.i.i119.i.i, align 4, !tbaa !174
  store i32 %i.ix, ptr %.val.i.i118.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i121.i.i

bb.ak:                                            ; preds = %bb.af
  store ptr null, ptr %i.im, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i121.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i121.i.i:      ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.val15.i.i122.i.i = load i8, ptr %i.io, align 8
  %i.iy = and i8 %.val15.i.i122.i.i, 63           ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.ja = load i8, ptr %i.iz, align 8
  %i.jb = and i8 %i.ja, -64
  %i.jc = or disjoint i8 %i.jb, %i.iy             ; 2 uses
  store i8 %i.jc, ptr %i.iz, align 8
  %.val12.i.i123.i.i = load i8, ptr %i.io, align 8
  %i.jd = and i8 %.val12.i.i123.i.i, 64           ; 2 uses
  %i.je = and i8 %i.jc, -65
  %i.jf = or disjoint i8 %i.je, %i.jd
  store i8 %i.jf, ptr %i.iz, align 8
  %.val13.i.i124.i.i = load i8, ptr %i.io, align 8
  %i.jg = and i8 %.val13.i.i124.i.i, -128
  %i.jh = or disjoint i8 %i.iy, %i.jg
  %i.ji = or disjoint i8 %i.jh, %i.jd
  store i8 %i.ji, ptr %i.iz, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %.val14.i.i125.i.i = load ptr, ptr %i.jj, align 8, !tbaa !254
  %i.jk = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %.val14.i.i125.i.i, ptr %i.jk, align 8, !tbaa !254
  br label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i

_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i121.i.i, %bb.ae
  %i.jl = add i32 %.015.i110.i.i, 1               ; 2 uses
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1
  %.not.i127.i.i = icmp eq i32 %i.jl, %i.ha
  br i1 %.not.i127.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i, label %bb.ae, !llvm.loop !32

.lr.ph.i.i22.i.i.i:                               ; preds = %bb.y
  %i.jm = sub nsw i32 0, %i.hb
  %i.jn = sub i32 4, %i.ha
  %i.jo = call i32 @llvm.umin.i32(i32 %i.gu, i32 %i.jm)
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.jn, i32 %i.jo) ; 5 uses
  %.not13.i86.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not13.i86.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i, label %.lr.ph.i87.i.i

.lr.ph.i87.i.i:                                   ; preds = %.lr.ph.i.i22.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.jq = zext nneg i32 %.sroa.speculated.i.i.i to i64
  br label %bb.al

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i, %.lr.ph.i87.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i ], [ 0, %.lr.ph.i87.i.i ] ; 3 uses
  %.01214.i89.i.i = phi i32 [ %i.ky, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i ], [ %i.ha, %.lr.ph.i87.i.i ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv.i.i ; 2 uses
  %i.js = zext i32 %.01214.i89.i.i to i64         ; 2 uses
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.js ; 2 uses
  %i.ju = load i64, ptr %i.jr, align 8, !tbaa !170
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !170
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !170
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !170
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %indvars.iv.i.i ; 4 uses
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %i.js ; 7 uses
  %i.ka = icmp eq ptr %i.jz, %i.jy
  br i1 %i.ka, label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 5 uses
  %.val17.i.i90.i.i = load i8, ptr %i.kb, align 8
  %i.kc = and i8 %.val17.i.i90.i.i, 63            ; 2 uses
  %.not.i.i91.i.i = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i91.i.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kd = shl nuw i8 %i.kc, 2
  %i.ke = zext i8 %i.kd to i64
  %i.kf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ke) #26 ; 2 uses
  %i.kg = load ptr, ptr %i.jz, align 8, !tbaa !175 ; 2 uses
  store ptr %i.kf, ptr %i.jz, align 8, !tbaa !175
  %.not.i.i.i.i92.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i92.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i95.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i93.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i93.i.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.kg) #27
  %.val.pre.i.i94.i.i = load ptr, ptr %i.jz, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i95.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i95.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i93.i.i, %bb.an
  %.val.i.i96.i.i = phi ptr [ %i.kf, %bb.an ], [ %.val.pre.i.i94.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i93.i.i ] ; 2 uses
  %.val18.i.i97.i.i = load ptr, ptr %i.jy, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i98.i.i = load i8, ptr %i.kb, align 8
  %i.kh = shl i8 %.val20.i.i98.i.i, 2             ; 3 uses
  %i.ki = icmp ugt i8 %i.kh, 4
  br i1 %i.ki, label %bb.ao, label %bb.ap, !prof !171

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i95.i.i
  %.idx.i.i106.i.i = zext i8 %i.kh to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i96.i.i, ptr align 4 %.val18.i.i97.i.i, i64 %.idx.i.i106.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i99.i.i

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i95.i.i
  %i.kj = icmp eq i8 %i.kh, 4
  br i1 %i.kj, label %bb.aq, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i99.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.kk = load i32, ptr %.val18.i.i97.i.i, align 4, !tbaa !174
  store i32 %i.kk, ptr %.val.i.i96.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i99.i.i

bb.ar:                                            ; preds = %bb.am
  store ptr null, ptr %i.jz, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i99.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i99.i.i:       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.val15.i.i100.i.i = load i8, ptr %i.kb, align 8
  %i.kl = and i8 %.val15.i.i100.i.i, 63           ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kn = load i8, ptr %i.km, align 8
  %i.ko = and i8 %i.kn, -64
  %i.kp = or disjoint i8 %i.ko, %i.kl             ; 2 uses
  store i8 %i.kp, ptr %i.km, align 8
  %.val12.i.i101.i.i = load i8, ptr %i.kb, align 8
  %i.kq = and i8 %.val12.i.i101.i.i, 64           ; 2 uses
  %i.kr = and i8 %i.kp, -65
  %i.ks = or disjoint i8 %i.kr, %i.kq
  store i8 %i.ks, ptr %i.km, align 8
end_hunk_0
begin_hunk_1_@_ZN4llvm11IntervalMapINS_9SlotIndexEN12_GLOBAL__N_116DbgVariableValueELj4ENS_15IntervalMapInfoIS1_EEE8iterator10treeInsertES1_S1_S3_:bb.a
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %.val14.i.i103.i.i = load ptr, ptr %i.kw, align 8, !tbaa !254
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store ptr %.val14.i.i103.i.i, ptr %i.kx, align 8, !tbaa !254
  br label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i

_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i99.i.i, %bb.al
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ky = add i32 %.01214.i89.i.i, 1
  %.not.i105.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.jq
  br i1 %.not.i105.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i, label %bb.al, !llvm.loop !32

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i: ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i104.i.i, %.lr.ph.i.i22.i.i.i
  %.not13.i.i.i = icmp eq i32 %i.gu, %.sroa.speculated.i.i.i
  br i1 %.not13.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i
  %indvars.iv255.i.i = phi i64 [ %indvars.iv.next256.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i ] ; 4 uses
  %.015.i.i.i = phi i32 [ %i.md, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i ], [ %.sroa.speculated.i.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i ] ; 2 uses
  %i.kz = zext i32 %.015.i.i.i to i64             ; 3 uses
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.kz
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv255.i.i
  %i.lc = load <2 x i64>, ptr %i.la, align 8, !tbaa !170
  store <2 x i64> %i.lc, ptr %i.lb, align 8, !tbaa !170
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.kz ; 3 uses
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %indvars.iv255.i.i ; 6 uses
  %i.lf = icmp eq i64 %indvars.iv255.i.i, %i.kz
  br i1 %i.lf, label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 5 uses
  %.val17.i.i.i.i = load i8, ptr %i.lg, align 8
  %i.lh = and i8 %.val17.i.i.i.i, 63              ; 2 uses
  %.not.i.i.i86.i = icmp eq i8 %i.lh, 0
  br i1 %.not.i.i.i86.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.li = shl nuw i8 %i.lh, 2
  %i.lj = zext i8 %i.li to i64
  %i.lk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.lj) #26 ; 2 uses
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !175 ; 2 uses
  store ptr %i.lk, ptr %i.le, align 8, !tbaa !175
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.ll) #27
  %.val.pre.i.i.i.i = load ptr, ptr %i.le, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.at
  %.val.i.i.i.i = phi ptr [ %i.lk, %bb.at ], [ %.val.pre.i.i.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i ] ; 2 uses
  %.val18.i.i.i.i = load ptr, ptr %i.ld, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i.i.i = load i8, ptr %i.lg, align 8
  %i.lm = shl i8 %.val20.i.i.i.i, 2               ; 3 uses
  %i.ln = icmp ugt i8 %i.lm, 4
  br i1 %i.ln, label %bb.au, label %bb.av, !prof !171

bb.au:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.i.i
  %.idx.i.i.i.i = zext i8 %i.lm to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i.i.i, ptr align 4 %.val18.i.i.i.i, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i.i.i

bb.av:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i.i.i
  %i.lo = icmp eq i8 %i.lm, 4
  br i1 %i.lo, label %bb.aw, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.lp = load i32, ptr %.val18.i.i.i.i, align 4, !tbaa !174
  store i32 %i.lp, ptr %.val.i.i.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.as
  store ptr null, ptr %i.le, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i.i.i:         ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.val15.i.i.i.i = load i8, ptr %i.lg, align 8
  %i.lq = and i8 %.val15.i.i.i.i, 63              ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 4 uses
  %i.ls = load i8, ptr %i.lr, align 8
  %i.lt = and i8 %i.ls, -64
  %i.lu = or disjoint i8 %i.lt, %i.lq             ; 2 uses
  store i8 %i.lu, ptr %i.lr, align 8
  %.val12.i.i.i.i = load i8, ptr %i.lg, align 8
  %i.lv = and i8 %.val12.i.i.i.i, 64              ; 2 uses
  %i.lw = and i8 %i.lu, -65
  %i.lx = or disjoint i8 %i.lw, %i.lv
  store i8 %i.lx, ptr %i.lr, align 8
  %.val13.i.i.i.i = load i8, ptr %i.lg, align 8
  %i.ly = and i8 %.val13.i.i.i.i, -128
  %i.lz = or disjoint i8 %i.lq, %i.ly
  %i.ma = or disjoint i8 %i.lz, %i.lv
  store i8 %i.ma, ptr %i.lr, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %.val14.i.i.i.i = load ptr, ptr %i.mb, align 8, !tbaa !254
  %i.mc = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store ptr %.val14.i.i.i.i, ptr %i.mc, align 8, !tbaa !254
  br label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i

_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.md = add i32 %.015.i.i.i, 1                  ; 2 uses
  %indvars.iv.next256.i.i = add nuw nsw i64 %indvars.iv255.i.i, 1
  %.not.i.i.i76 = icmp eq i32 %i.md, %i.gu
  br i1 %.not.i.i.i76, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !32

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit.i.i: ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit107.i.i
  %i.me = sub nsw i32 0, %.sroa.speculated.i.i.i
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i: ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit.i.i, %.lr.ph.i130.i.i
  %.0.i.i.i = phi i32 [ %i.me, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit.i.i ], [ 0, %.lr.ph.i130.i.i ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit.i.i ], [ %.sroa.speculated39.i.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i126.i.i ] ; 2 uses
  %i.mf = load i32, ptr %i.gz, align 4, !tbaa !174
  %i.mg = sub i32 %i.mf, %.0.i.i.i
  store i32 %i.mg, ptr %i.gz, align 4, !tbaa !174
  %i.mh = load i32, ptr %i.gi, align 4, !tbaa !174
  %i.mi = add i32 %i.mh, %.0.i.i.i                ; 3 uses
  store i32 %i.mi, ptr %i.gi, align 4, !tbaa !174
  %i.mj = load i32, ptr %i.gk, align 4, !tbaa !174 ; 2 uses
  %.not77.i.i = icmp ult i32 %i.mi, %i.mj
  br i1 %.not77.i.i, label %bb.x, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i..loopexit246.i.i.loopexit_crit_edge, !llvm.loop !1001

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i..loopexit246.i.i.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i
  br label %.loopexit246.i.i, !llvm.loop !1001

.loopexit246.i.i:                                 ; preds = %bb.x, %.preheader245.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit.i.i..loopexit246.i.i.loopexit_crit_edge, %.lr.ph.i.i
  %indvars.iv.next262.i.i = add nsw i64 %indvars.iv261.i.i, -1 ; 2 uses
  %i.mk = and i64 %indvars.iv.next262.i.i, 4294967295
  %.not.i.i77 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i77, label %.lr.ph251.i.i, label %.lr.ph.i.i, !llvm.loop !1002

.lr.ph251.i.i:                                    ; preds = %.loopexit246.i.i, %.loopexit.i.i
  %indvars.iv276.i.i = phi i64 [ %indvars.iv.next277.i.i, %.loopexit.i.i ], [ 0, %.loopexit246.i.i ] ; 5 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv276.i.i ; 3 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !174 ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv276.i.i ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !174 ; 2 uses
  %i.mp = icmp eq i32 %i.mm, %i.mo
  br i1 %i.mp, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph251.i.i
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv276.i.i
  %i.mr = trunc nuw nsw i64 %indvars.iv276.i.i to i32
  %.0.i.i219 = add i32 %i.mr, 1                   ; 2 uses
  %.not74.i.i220 = icmp eq i32 %.0.i.i219, %.278.i
  br i1 %.not74.i.i220, label %.loopexit.i.i, label %.lr.ph222.preheader

.lr.ph222.preheader:                              ; preds = %.preheader.i.i
  %i.ms = load ptr, ptr %i.mq, align 8, !tbaa !1007 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  br label %.lr.ph222

bb.ay:                                            ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit85.i.i
  %.0.i.i = add i32 %.0.i.i221, 1                 ; 2 uses
  %.not74.i.i = icmp eq i32 %.0.i.i, %.278.i
  br i1 %.not74.i.i, label %.loopexit.i.i, label %.lr.ph222, !llvm.loop !1003

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %bb.ay
  %.0.i.i221 = phi i32 [ %.0.i.i, %bb.ay ], [ %.0.i.i219, %.lr.ph222.preheader ] ; 2 uses
  %i.mv = phi i32 [ %i.sl, %bb.ay ], [ %i.mm, %.lr.ph222.preheader ] ; 6 uses
  %i.mw = phi i32 [ %i.sm, %bb.ay ], [ %i.mo, %.lr.ph222.preheader ]
  %i.mx = zext i32 %.0.i.i221 to i64              ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1007 ; 10 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mx ; 3 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !174 ; 6 uses
  %i.nc = sub i32 %i.mv, %i.mw                    ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 0
  br i1 %i.nd, label %.lr.ph.i.i.i82.i.i, label %.lr.ph.i.i22.i78.i.i

.lr.ph.i.i.i82.i.i:                               ; preds = %.lr.ph222
  %i.ne = sub i32 4, %i.nb
  %i.nf = call i32 @llvm.umin.i32(i32 %i.mv, i32 %i.nc)
  %.sroa.speculated39.i84.i.i = call i32 @llvm.umin.i32(i32 %i.ne, i32 %i.nf) ; 5 uses
  %.not9.i213.i.i = icmp eq i32 %i.nb, 0
  br i1 %.not9.i213.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit239.i.i, label %.lr.ph.i214.i.i

.lr.ph.i214.i.i:                                  ; preds = %.lr.ph.i.i.i82.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 64 ; 2 uses
  %i.nh = icmp eq i32 %.sroa.speculated39.i84.i.i, 0
  br i1 %i.nh, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit85.i.i, label %.lr.ph.split.i215.preheader.i.i

.lr.ph.split.i215.preheader.i.i:                  ; preds = %.lr.ph.i214.i.i
  %i.ni = zext i32 %i.nb to i64
  br label %.lr.ph.split.i215.i.i

.lr.ph.split.i215.i.i:                            ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i, %.lr.ph.split.i215.preheader.i.i
  %indvars.iv.i216.i.i = phi i64 [ %indvars.iv.next.i217.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i ], [ %i.ni, %.lr.ph.split.i215.preheader.i.i ]
  %indvars.iv.next.i217.i.i = add nsw i64 %indvars.iv.i216.i.i, -1 ; 3 uses
  %indvars.i218.i.i = trunc i64 %indvars.iv.next.i217.i.i to i32 ; 2 uses
  %i.nj = and i64 %indvars.iv.next.i217.i.i, 4294967295 ; 2 uses
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %i.nj
  %i.nl = add i32 %.sroa.speculated39.i84.i.i, %indvars.i218.i.i
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %i.nm
  %i.no = load <2 x i64>, ptr %i.nk, align 8, !tbaa !170
  store <2 x i64> %i.no, ptr %i.nn, align 8, !tbaa !170
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %i.nj ; 3 uses
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %i.nm ; 6 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 5 uses
  %.val17.i.i219.i.i = load i8, ptr %i.nr, align 8
  %i.ns = and i8 %.val17.i.i219.i.i, 63           ; 2 uses
  %.not.i.i220.i.i = icmp eq i8 %i.ns, 0
  br i1 %.not.i.i220.i.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i215.i.i
  %i.nt = shl nuw i8 %i.ns, 2
  %i.nu = zext i8 %i.nt to i64
  %i.nv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.nu) #26 ; 2 uses
  %i.nw = load ptr, ptr %i.nq, align 8, !tbaa !175 ; 2 uses
  store ptr %i.nv, ptr %i.nq, align 8, !tbaa !175
  %.not.i.i.i.i221.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i221.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i224.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i222.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i222.i.i: ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.nw) #27
  %.val.pre.i.i223.i.i = load ptr, ptr %i.nq, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i224.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i224.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i222.i.i, %bb.az
  %.val.i.i225.i.i = phi ptr [ %i.nv, %bb.az ], [ %.val.pre.i.i223.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i222.i.i ] ; 2 uses
  %.val18.i.i226.i.i = load ptr, ptr %i.np, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i227.i.i = load i8, ptr %i.nr, align 8
  %i.nx = shl i8 %.val20.i.i227.i.i, 2            ; 3 uses
  %i.ny = icmp ugt i8 %i.nx, 4
  br i1 %i.ny, label %bb.ba, label %bb.bb, !prof !171

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i224.i.i
  %.idx.i.i234.i.i = zext i8 %i.nx to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i225.i.i, ptr align 4 %.val18.i.i226.i.i, i64 %.idx.i.i234.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i224.i.i
  %i.nz = icmp eq i8 %i.nx, 4
  br i1 %i.nz, label %bb.bc, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.oa = load i32, ptr %.val18.i.i226.i.i, align 4, !tbaa !174
  store i32 %i.oa, ptr %.val.i.i225.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i

bb.bd:                                            ; preds = %.lr.ph.split.i215.i.i
  store ptr null, ptr %i.nq, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i:      ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.val15.i.i229.i.i = load i8, ptr %i.nr, align 8
  %16 = and i8 %.val15.i.i229.i.i, 63             ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 4 uses
  %17 = load i8, ptr %i.ob, align 8
  %18 = and i8 %17, -64
  %19 = or disjoint i8 %18, %16                   ; 2 uses
  store i8 %19, ptr %i.ob, align 8
  %.val12.i.i230.i.i = load i8, ptr %i.nr, align 8
  %20 = and i8 %.val12.i.i230.i.i, 64             ; 2 uses
  %21 = and i8 %19, -65
  %22 = or disjoint i8 %21, %20
  store i8 %22, ptr %i.ob, align 8
  %.val13.i.i231.i.i = load i8, ptr %i.nr, align 8
  %23 = and i8 %.val13.i.i231.i.i, -128
  %24 = or disjoint i8 %16, %23
  %25 = or disjoint i8 %24, %20
  store i8 %25, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %.val14.i.i232.i.i = load ptr, ptr %i.oc, align 8, !tbaa !254
  %i.od = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store ptr %.val14.i.i232.i.i, ptr %i.od, align 8, !tbaa !254
  %.not.i233.i.i = icmp eq i32 %indvars.i218.i.i, 0
  br i1 %.not.i233.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit239.i.i, label %.lr.ph.split.i215.i.i, !llvm.loop !31

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit239.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i228.i.i, %.lr.ph.i.i.i82.i.i
  %.not13.i191.i.i = icmp eq i32 %.sroa.speculated39.i84.i.i, 0
  br i1 %.not13.i191.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit85.i.i, label %.lr.ph.i192.i.i

.lr.ph.i192.i.i:                                  ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE9moveRightEjjj.exit239.i.i
  %i.oe = sub i32 %i.mv, %.sroa.speculated39.i84.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.mz, i64 64
  br label %bb.be

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i209.i.i, %.lr.ph.i192.i.i
  %indvars.iv272.i.i = phi i64 [ %indvars.iv.next273.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i209.i.i ], [ 0, %.lr.ph.i192.i.i ] ; 3 uses
  %.015.i193.i.i = phi i32 [ %i.pn, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i209.i.i ], [ %i.oe, %.lr.ph.i192.i.i ] ; 2 uses
  %i.og = zext i32 %.015.i193.i.i to i64          ; 2 uses
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %indvars.iv272.i.i ; 2 uses
  %i.oj = load i64, ptr %i.oh, align 8, !tbaa !170
  store i64 %i.oj, ptr %i.oi, align 8, !tbaa !170
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !170
  store i64 %i.om, ptr %i.ol, align 8, !tbaa !170
  %i.on = getelementptr inbounds nuw [24 x i8], ptr %i.mu, i64 %i.og ; 4 uses
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %indvars.iv272.i.i ; 7 uses
  %i.op = icmp eq ptr %i.oo, %i.on
  br i1 %i.op, label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i209.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 5 uses
  %.val17.i.i195.i.i = load i8, ptr %i.oq, align 8
  %i.or = and i8 %.val17.i.i195.i.i, 63           ; 2 uses
  %.not.i.i196.i.i = icmp eq i8 %i.or, 0
  br i1 %.not.i.i196.i.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.os = shl nuw i8 %i.or, 2
  %i.ot = zext i8 %i.os to i64
  %i.ou = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ot) #26 ; 2 uses
  %i.ov = load ptr, ptr %i.oo, align 8, !tbaa !175 ; 2 uses
  store ptr %i.ou, ptr %i.oo, align 8, !tbaa !175
  %.not.i.i.i.i197.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i.i197.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i200.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i198.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i198.i.i: ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.ov) #27
  %.val.pre.i.i199.i.i = load ptr, ptr %i.oo, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i200.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i200.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i198.i.i, %bb.bg
  %.val.i.i201.i.i = phi ptr [ %i.ou, %bb.bg ], [ %.val.pre.i.i199.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i198.i.i ] ; 2 uses
  %.val18.i.i202.i.i = load ptr, ptr %i.on, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i203.i.i = load i8, ptr %i.oq, align 8
  %i.ow = shl i8 %.val20.i.i203.i.i, 2            ; 3 uses
  %i.ox = icmp ugt i8 %i.ow, 4
  br i1 %i.ox, label %bb.bh, label %bb.bi, !prof !171

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i200.i.i
  %.idx.i.i211.i.i = zext i8 %i.ow to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i201.i.i, ptr align 4 %.val18.i.i202.i.i, i64 %.idx.i.i211.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i204.i.i

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i200.i.i
  %i.oy = icmp eq i8 %i.ow, 4
  br i1 %i.oy, label %bb.bj, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i204.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.oz = load i32, ptr %.val18.i.i202.i.i, align 4, !tbaa !174
  store i32 %i.oz, ptr %.val.i.i201.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i204.i.i

bb.bk:                                            ; preds = %bb.bf
  store ptr null, ptr %i.oo, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i204.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i204.i.i:      ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.val15.i.i205.i.i = load i8, ptr %i.oq, align 8
  %i.pa = and i8 %.val15.i.i205.i.i, 63           ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 4 uses
  %i.pc = load i8, ptr %i.pb, align 8
  %i.pd = and i8 %i.pc, -64
  %i.pe = or disjoint i8 %i.pd, %i.pa             ; 2 uses
  store i8 %i.pe, ptr %i.pb, align 8
  %.val12.i.i206.i.i = load i8, ptr %i.oq, align 8
  %i.pf = and i8 %.val12.i.i206.i.i, 64           ; 2 uses
  %i.pg = and i8 %i.pe, -65
  %i.ph = or disjoint i8 %i.pg, %i.pf
  store i8 %i.ph, ptr %i.pb, align 8
  %.val13.i.i207.i.i = load i8, ptr %i.oq, align 8
  %i.pi = and i8 %.val13.i.i207.i.i, -128
  %i.pj = or disjoint i8 %i.pa, %i.pi
  %i.pk = or disjoint i8 %i.pj, %i.pf
  store i8 %i.pk, ptr %i.pb, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %.val14.i.i208.i.i = load ptr, ptr %i.pl, align 8, !tbaa !254
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store ptr %.val14.i.i208.i.i, ptr %i.pm, align 8, !tbaa !254
  br label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i209.i.i

_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i209.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i204.i.i, %bb.be
  %i.pn = add i32 %.015.i193.i.i, 1               ; 2 uses
  %indvars.iv.next273.i.i = add nuw nsw i64 %indvars.iv272.i.i, 1
  %.not.i210.i.i = icmp eq i32 %i.pn, %i.mv
  br i1 %.not.i210.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE17adjustFromLeftSibEjRS7_ji.exit85.i.i, label %bb.be, !llvm.loop !32

.lr.ph.i.i22.i78.i.i:                             ; preds = %.lr.ph222
  %i.po = sub nsw i32 0, %i.nc
  %i.pp = sub i32 4, %i.mv
  %i.pq = call i32 @llvm.umin.i32(i32 %i.nb, i32 %i.po)
  %.sroa.speculated.i80.i.i = call i32 @llvm.umin.i32(i32 %i.pp, i32 %i.pq) ; 5 uses
  %.not13.i169.i.i = icmp eq i32 %.sroa.speculated.i80.i.i, 0
  br i1 %.not13.i169.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairINS_9SlotIndexES3_EN12_GLOBAL__N_116DbgVariableValueELj4EE4copyILj4EEEvRKNS1_IS4_S6_XT_EEEjjj.exit190.i.i, label %.lr.ph.i170.i.i

.lr.ph.i170.i.i:                                  ; preds = %.lr.ph.i.i22.i78.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.mz, i64 64
  %i.ps = zext nneg i32 %.sroa.speculated.i80.i.i to i64
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i187.i.i, %.lr.ph.i170.i.i
  %indvars.iv264.i.i = phi i64 [ %indvars.iv.next265.i.i, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i187.i.i ], [ 0, %.lr.ph.i170.i.i ] ; 3 uses
  %.01214.i172.i.i = phi i32 [ %i.ra, %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i187.i.i ], [ %i.mv, %.lr.ph.i170.i.i ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %indvars.iv264.i.i ; 2 uses
  %i.pu = zext i32 %.01214.i172.i.i to i64        ; 2 uses
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.pu ; 2 uses
  %i.pw = load i64, ptr %i.pt, align 8, !tbaa !170
  store i64 %i.pw, ptr %i.pv, align 8, !tbaa !170
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !170
  store i64 %i.pz, ptr %i.py, align 8, !tbaa !170
  %i.qa = getelementptr inbounds nuw [24 x i8], ptr %i.pr, i64 %indvars.iv264.i.i ; 4 uses
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %i.mt, i64 %i.pu ; 7 uses
  %i.qc = icmp eq ptr %i.qb, %i.qa
  br i1 %i.qc, label %_ZN12_GLOBAL__N_116DbgVariableValueaSERKS0_.exit.i187.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 5 uses
  %.val17.i.i173.i.i = load i8, ptr %i.qd, align 8
  %i.qe = and i8 %.val17.i.i173.i.i, 63           ; 2 uses
  %.not.i.i174.i.i = icmp eq i8 %i.qe, 0
  br i1 %.not.i.i174.i.i, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qf = shl nuw i8 %i.qe, 2
  %i.qg = zext i8 %i.qf to i64
  %i.qh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.qg) #26 ; 2 uses
  %i.qi = load ptr, ptr %i.qb, align 8, !tbaa !175 ; 2 uses
  store ptr %i.qh, ptr %i.qb, align 8, !tbaa !175
  %.not.i.i.i.i175.i.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i175.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i178.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i176.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i176.i.i: ; preds = %bb.bn
  call void @_ZdaPv(ptr noundef nonnull %i.qi) #27
  %.val.pre.i.i177.i.i = load ptr, ptr %i.qb, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i178.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i178.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i176.i.i, %bb.bn
  %.val.i.i179.i.i = phi ptr [ %i.qh, %bb.bn ], [ %.val.pre.i.i177.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i176.i.i ] ; 2 uses
  %.val18.i.i180.i.i = load ptr, ptr %i.qa, align 8, !tbaa !175 ; 2 uses
  %.val20.i.i181.i.i = load i8, ptr %i.qd, align 8
  %i.qj = shl i8 %.val20.i.i181.i.i, 2            ; 3 uses
  %i.qk = icmp ugt i8 %i.qj, 4
  br i1 %i.qk, label %bb.bo, label %bb.bp, !prof !171

bb.bo:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i178.i.i
  %.idx.i.i189.i.i = zext i8 %i.qj to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i179.i.i, ptr align 4 %.val18.i.i180.i.i, i64 %.idx.i.i189.i.i, i1 false)
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i182.i.i

bb.bp:                                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.i.i178.i.i
  %i.ql = icmp eq i8 %i.qj, 4
  br i1 %i.ql, label %bb.bq, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i182.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.qm = load i32, ptr %.val18.i.i180.i.i, align 4, !tbaa !174
  store i32 %i.qm, ptr %.val.i.i179.i.i, align 4, !tbaa !174
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i182.i.i

bb.br:                                            ; preds = %bb.bm
  store ptr null, ptr %i.qb, align 8, !tbaa !175
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i182.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i.i182.i.i:      ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.val15.i.i183.i.i = load i8, ptr %i.qd, align 8
  %i.qn = and i8 %.val15.i.i183.i.i, 63           ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 4 uses
  %i.qp = load i8, ptr %i.qo, align 8
  %i.qq = and i8 %i.qp, -64
  %i.qr = or disjoint i8 %i.qq, %i.qn             ; 2 uses
  store i8 %i.qr, ptr %i.qo, align 8
  %.val12.i.i184.i.i = load i8, ptr %i.qd, align 8
  %i.qs = and i8 %.val12.i.i184.i.i, 64           ; 2 uses
  %i.qt = and i8 %i.qr, -65
  %i.qu = or disjoint i8 %i.qt, %i.qs
  store i8 %i.qu, ptr %i.qo, align 8
end_hunk_1
