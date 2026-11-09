Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 254
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 338
begin_hunk_0_@"_ZZL35lowerV8I16GeneralSingleInputShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueENS_15MutableArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_3clENS_8ArrayRefIiEESE_SE_SE_ii":bb.a
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !4517, !nonnull !80, !align !237
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !4515, !nonnull !80, !align !237
  %i.cj = call fastcc noundef i32 @_ZL18getV4X86ShuffleImmN4llvm8ArrayRefIiEE(ptr nonnull %i.a, i64 4)
  %i.ck = zext i32 %i.cj to i64
  %i.cl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ci, i64 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.cl, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.cl, 1
  store ptr %.fca.0.extract28, ptr %11, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.231.0..sroa_idx, align 8
  %i.cm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i32 noundef 775, ptr noundef nonnull align 8 dereferenceable(12) %i.cc, i16 %.sroa.040.0.copyload, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #39 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.cm, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.cm, 1
  %i.cn = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i16 %.sroa.043.0.copyload, ptr null, ptr %.fca.0.extract24, i32 %.fca.1.extract25) #39 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.cn, 0 ; 2 uses
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.cn, 1 ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !4519, !nonnull !80, !align !237 ; 2 uses
  store ptr %.fca.0.extract20, ptr %i.co, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store i32 %.fca.1.extract21, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !4520, !nonnull !80, !align !237 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !691 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !692 ; 3 uses
  %.idx154 = shl i64 %i.ct, 2                     ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx154
  %.not80152 = icmp eq i64 %i.ct, 0
  br i1 %.not80152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cv = add i64 %.idx154, -4                    ; 2 uses
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.cv, 12
  br i1 %min.iters.check167, label %scalar.ph166.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %.lr.ph
  %n.vec169 = and i64 %i.cx, 9223372036854775804  ; 3 uses
  %i.cy = shl i64 %n.vec169, 2
  %i.cz = getelementptr i8, ptr %i.cr, i64 %i.cy
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.158, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert170 = insertelement <4 x i32> poison, i32 %., i64 0
  %broadcast.splat171 = shufflevector <4 x i32> %broadcast.splatinsert170, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body172

vector.body172:                                   ; preds = %pred.store.continue184, %vector.ph168
  %index173 = phi i64 [ 0, %vector.ph168 ], [ %index.next185, %pred.store.continue184 ] ; 2 uses
  %i.da = shl i64 %index173, 2                    ; 4 uses
  %next.gep174 = getelementptr i8, ptr %i.cr, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %i.cr, i64 %i.da
  %next.gep175 = getelementptr i8, ptr %i.db, i64 4
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.da
  %next.gep176 = getelementptr i8, ptr %i.dc, i64 8
  %i.dd = getelementptr i8, ptr %i.cr, i64 %i.da
  %next.gep177 = getelementptr i8, ptr %i.dd, i64 12
  %wide.load178 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !240 ; 6 uses
  %i.de = icmp sgt <4 x i32> %wide.load178, splat (i32 -1) ; 2 uses
  %i.df = lshr <4 x i32> %wide.load178, splat (i32 1) ; 2 uses
  %i.dg = icmp eq <4 x i32> %i.df, %broadcast.splat ; 2 uses
  %i.dh = xor <4 x i1> %i.dg, splat (i1 true)
  %i.di = select <4 x i1> %i.de, <4 x i1> %i.dh, <4 x i1> zeroinitializer
  %i.dj = icmp eq <4 x i32> %i.df, %broadcast.splat171
  %i.dk = select <4 x i1> %i.di, <4 x i1> %i.dj, <4 x i1> zeroinitializer
  %i.dl = select <4 x i1> %i.de, <4 x i1> %i.dg, <4 x i1> zeroinitializer ; 2 uses
  %i.dm = or <4 x i1> %i.dk, %i.dl                ; 4 uses
  %predphi = select <4 x i1> %i.dl, <4 x i32> %broadcast.splat171, <4 x i32> %broadcast.splat ; 4 uses
  %i.dn = extractelement <4 x i1> %i.dm, i64 0
  br i1 %i.dn, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body172
  %i.do = extractelement <4 x i32> %predphi, i64 0
  %i.dp = shl nsw i32 %i.do, 1
  %i.dq = extractelement <4 x i32> %wide.load178, i64 0
  %i.dr = and i32 %i.dq, 1
  %i.ds = or disjoint i32 %i.dr, %i.dp
  store i32 %i.ds, ptr %next.gep174, align 4, !tbaa !240
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body172
  %i.dt = extractelement <4 x i1> %i.dm, i64 1
  br i1 %i.dt, label %pred.store.if179, label %pred.store.continue180

pred.store.if179:                                 ; preds = %pred.store.continue
  %i.du = extractelement <4 x i32> %predphi, i64 1
  %i.dv = shl nsw i32 %i.du, 1
  %i.dw = extractelement <4 x i32> %wide.load178, i64 1
  %i.dx = and i32 %i.dw, 1
  %i.dy = or disjoint i32 %i.dx, %i.dv
  store i32 %i.dy, ptr %next.gep175, align 4, !tbaa !240
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.if179, %pred.store.continue
  %i.dz = extractelement <4 x i1> %i.dm, i64 2
  br i1 %i.dz, label %pred.store.if181, label %pred.store.continue182

pred.store.if181:                                 ; preds = %pred.store.continue180
  %i.ea = extractelement <4 x i32> %predphi, i64 2
  %i.eb = shl nsw i32 %i.ea, 1
  %i.ec = extractelement <4 x i32> %wide.load178, i64 2
  %i.ed = and i32 %i.ec, 1
  %i.ee = or disjoint i32 %i.ed, %i.eb
  store i32 %i.ee, ptr %next.gep176, align 4, !tbaa !240
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.if181, %pred.store.continue180
  %i.ef = extractelement <4 x i1> %i.dm, i64 3
  br i1 %i.ef, label %pred.store.if183, label %pred.store.continue184

pred.store.if183:                                 ; preds = %pred.store.continue182
  %i.eg = extractelement <4 x i32> %predphi, i64 3
  %i.eh = shl nsw i32 %i.eg, 1
  %i.ei = extractelement <4 x i32> %wide.load178, i64 3
  %i.ej = and i32 %i.ei, 1
  %i.ek = or disjoint i32 %i.ej, %i.eh
  store i32 %i.ek, ptr %next.gep177, align 4, !tbaa !240
  br label %pred.store.continue184

pred.store.continue184:                           ; preds = %pred.store.if183, %pred.store.continue182
  %index.next185 = add nuw i64 %index173, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next185, %n.vec169
  br i1 %i.el, label %middle.block186, label %vector.body172, !llvm.loop !4512

middle.block186:                                  ; preds = %pred.store.continue184
  %cmp.n187 = icmp eq i64 %i.cx, %n.vec169
  br i1 %cmp.n187, label %._crit_edge.loopexit, label %scalar.ph166.preheader

scalar.ph166.preheader:                           ; preds = %.lr.ph, %middle.block186
  %.0153.ph = phi ptr [ %i.cr, %.lr.ph ], [ %i.cz, %middle.block186 ]
  br label %scalar.ph166

._crit_edge.loopexit:                             ; preds = %bb.j, %middle.block186
  %.sroa.25.0.copyload.pre = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.sroa.25.0.copyload = phi i32 [ %.sroa.25.0.copyload.pre, %._crit_edge.loopexit ], [ %.fca.1.extract21, %bb.g ]
  %i.em = load ptr, ptr %i.cb, align 8, !tbaa !4517, !nonnull !80, !align !237
  %i.en = load ptr, ptr %i.bz, align 8, !tbaa !4516, !nonnull !80, !align !1264
  %.sroa.06.0.copyload = load i16, ptr %i.en, align 2, !tbaa !345
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !4521, !nonnull !80, !align !237
  %i.eq = load ptr, ptr %i.bx, align 8, !tbaa !4515, !nonnull !80, !align !237
  %i.er = call fastcc { ptr, i32 } @_ZL35lowerV8I16GeneralSingleInputShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueENS_15MutableArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %i.em, i16 %.sroa.06.0.copyload, ptr %.fca.0.extract20, i32 %.sroa.25.0.copyload, ptr %i.cr, i64 %i.ct, ptr noundef nonnull align 8 dereferenceable(519752) %i.ep, ptr noundef nonnull align 8 dereferenceable(920) %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret { ptr, i32 } %i.er

scalar.ph166:                                     ; preds = %scalar.ph166.preheader, %bb.j
  %.0153 = phi ptr [ %i.ez, %bb.j ], [ %.0153.ph, %scalar.ph166.preheader ] ; 3 uses
  %i.es = load i32, ptr %.0153, align 4, !tbaa !240 ; 3 uses
  %i.et = icmp sgt i32 %i.es, -1
  br i1 %i.et, label %bb.h, label %bb.j

bb.h:                                             ; preds = %scalar.ph166
  %i.eu = lshr i32 %i.es, 1                       ; 2 uses
  %i.ev = icmp eq i32 %i.eu, %.158
  br i1 %i.ev, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = icmp eq i32 %i.eu, %.
  br i1 %i.ew, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h
  %.sink163.in = phi i32 [ %., %bb.h ], [ %.158, %bb.i ]
  %.sink163 = shl nsw i32 %.sink163.in, 1
  %i.ex = and i32 %i.es, 1
  %i.ey = or disjoint i32 %i.ex, %.sink163
  store i32 %i.ey, ptr %.0153, align 4, !tbaa !240
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %scalar.ph166, %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.0153, i64 4 ; 2 uses
  %.not80 = icmp eq ptr %i.ez, %i.cu
  br i1 %.not80, label %._crit_edge.loopexit, label %scalar.ph166, !llvm.loop !4513
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZZL35lowerV8I16GeneralSingleInputShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueENS_15MutableArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGEENK3$_5clES6_NS_8ArrayRefIiEES6_S6_S6_ii"(ptr nofree captures(none) %.0.val, ptr nofree captures(address) %0, i64 %1, i64 %2, ptr %.0.val1, i64 %.8.val, ptr nofree captures(address) %.0.val3, i64 %.8.val5, ptr nofree captures(address) %.0.val7, i64 %.8.val9, i32 noundef range(i32 0, 5) %3, i32 noundef range(i32 0, 5) %4) unnamed_addr #27 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.lr.ph81, label %bb.m

.lr.ph81:                                         ; preds = %bb.b
  %.idx90 = shl nuw nsw i64 %1, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx90
  %.idx91 = shl i64 %.8.val5, 2                   ; 4 uses
  %i.d = getelementptr i8, ptr %.0.val3, i64 %.idx91 ; 2 uses
  %.not16674 = icmp eq i64 %.8.val5, 0
  %i.e = sub nsw i32 %4, %3
  %i.f = shl nuw nsw i32 %3, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add i64 %.idx91, -4                      ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.h, 28
  %invariant.op = sub i64 4, %i.g
  %n.vec35 = and i64 %i.j, 9223372036854775800    ; 3 uses
  %i.k = shl i64 %n.vec35, 2
  %i.l = getelementptr i8, ptr %.0.val3, i64 %i.k
  %cmp.n72 = icmp eq i64 %i.j, %n.vec35
  br label %bb.c

._crit_edge82:                                    ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val3, i64 %.idx91
  %.not16483 = icmp eq i64 %.8.val5, 0
  br i1 %.not16483, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge82
  %i.n = add nuw nsw i32 %3, 4                    ; 2 uses
  %i.o = sub nsw i32 %4, %3                       ; 9 uses
  %i.p = add i64 %.idx91, -4                      ; 2 uses
  %i.q = lshr exact i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check75 = icmp ult i64 %i.p, 28
  br i1 %min.iters.check75, label %scalar.ph74.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph86
  %n.vec77 = and i64 %i.r, 9223372036854775800    ; 3 uses
  %i.s = shl i64 %n.vec77, 2
  %i.t = getelementptr i8, ptr %.0.val3, i64 %i.s
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body82

vector.body82:                                    ; preds = %pred.store.continue109, %vector.ph76
  %index83 = phi i64 [ 0, %vector.ph76 ], [ %index.next110, %pred.store.continue109 ] ; 2 uses
  %i.u = shl i64 %index83, 2                      ; 8 uses
  %next.gep84 = getelementptr i8, ptr %.0.val3, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep85 = getelementptr i8, ptr %i.v, i64 4
  %i.w = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep86 = getelementptr i8, ptr %i.w, i64 8
  %i.x = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep87 = getelementptr i8, ptr %i.x, i64 12
  %i.y = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep88 = getelementptr i8, ptr %i.y, i64 16
  %i.z = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep89 = getelementptr i8, ptr %i.z, i64 20
  %i.aa = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep90 = getelementptr i8, ptr %i.aa, i64 24
  %i.ab = getelementptr i8, ptr %.0.val3, i64 %i.u
  %next.gep91 = getelementptr i8, ptr %i.ab, i64 28
  %i.ac = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load92 = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !240 ; 6 uses
  %wide.load93 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !240 ; 6 uses
  %i.ad = icmp sge <4 x i32> %wide.load92, %broadcast.splat81
  %i.ae = icmp sge <4 x i32> %wide.load93, %broadcast.splat81
  %i.af = icmp slt <4 x i32> %wide.load92, %broadcast.splat79
  %i.ag = icmp slt <4 x i32> %wide.load93, %broadcast.splat79
  %i.ah = select <4 x i1> %i.ad, <4 x i1> %i.af, <4 x i1> zeroinitializer ; 4 uses
  %i.ai = select <4 x i1> %i.ae, <4 x i1> %i.ag, <4 x i1> zeroinitializer ; 4 uses
  %i.aj = extractelement <4 x i1> %i.ah, i64 0
  br i1 %i.aj, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %vector.body82
  %i.ak = extractelement <4 x i32> %wide.load92, i64 0
  %i.al = add nsw i32 %i.o, %i.ak
  store i32 %i.al, ptr %next.gep84, align 4, !tbaa !240
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %vector.body82
  %i.am = extractelement <4 x i1> %i.ah, i64 1
  br i1 %i.am, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.an = extractelement <4 x i32> %wide.load92, i64 1
  %i.ao = add nsw i32 %i.o, %i.an
  store i32 %i.ao, ptr %next.gep85, align 4, !tbaa !240
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.ap = extractelement <4 x i1> %i.ah, i64 2
  br i1 %i.ap, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.aq = extractelement <4 x i32> %wide.load92, i64 2
  %i.ar = add nsw i32 %i.o, %i.aq
  store i32 %i.ar, ptr %next.gep86, align 4, !tbaa !240
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.as = extractelement <4 x i1> %i.ah, i64 3
  br i1 %i.as, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.at = extractelement <4 x i32> %wide.load92, i64 3
  %i.au = add nsw i32 %i.o, %i.at
  store i32 %i.au, ptr %next.gep87, align 4, !tbaa !240
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.av = extractelement <4 x i1> %i.ai, i64 0
  br i1 %i.av, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.aw = extractelement <4 x i32> %wide.load93, i64 0
  %i.ax = add nsw i32 %i.o, %i.aw
  store i32 %i.ax, ptr %next.gep88, align 4, !tbaa !240
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.ay = extractelement <4 x i1> %i.ai, i64 1
  br i1 %i.ay, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.az = extractelement <4 x i32> %wide.load93, i64 1
  %i.ba = add nsw i32 %i.o, %i.az
  store i32 %i.ba, ptr %next.gep89, align 4, !tbaa !240
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.bb = extractelement <4 x i1> %i.ai, i64 2
  br i1 %i.bb, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.bc = extractelement <4 x i32> %wide.load93, i64 2
  %i.bd = add nsw i32 %i.o, %i.bc
  store i32 %i.bd, ptr %next.gep90, align 4, !tbaa !240
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.be = extractelement <4 x i1> %i.ai, i64 3
  br i1 %i.be, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.bf = extractelement <4 x i32> %wide.load93, i64 3
  %i.bg = add nsw i32 %i.o, %i.bf
  store i32 %i.bg, ptr %next.gep91, align 4, !tbaa !240
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %index.next110 = add nuw i64 %index83, 8        ; 2 uses
  %i.bh = icmp eq i64 %index.next110, %n.vec77
  br i1 %i.bh, label %middle.block111, label %vector.body82, !llvm.loop !4522

middle.block111:                                  ; preds = %pred.store.continue109
  %cmp.n112 = icmp eq i64 %i.r, %n.vec77
  br i1 %cmp.n112, label %.loopexit, label %scalar.ph74.preheader

scalar.ph74.preheader:                            ; preds = %.lr.ph86, %middle.block111
  %.015084.ph = phi ptr [ %.0.val3, %.lr.ph86 ], [ %i.t, %middle.block111 ]
  br label %scalar.ph74

bb.c:                                             ; preds = %.lr.ph81, %bb.j
  %.015379 = phi ptr [ %0, %.lr.ph81 ], [ %i.dt, %bb.j ] ; 2 uses
  %i.bi = load i32, ptr %.015379, align 4, !tbaa !240 ; 6 uses
  %i.bj = sub nsw i32 %i.bi, %3                   ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0.val1, i64 %i.bk ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !240 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  %i.bo = icmp ne i32 %i.bm, %i.bj
  %spec.select.i = and i1 %i.bn, %i.bo
  br i1 %spec.select.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.val1, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !240
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.e, label %.loopexit49

bb.e:                                             ; preds = %bb.d
  store i32 %i.bj, ptr %i.bq, align 4, !tbaa !240
  br i1 %.not16674, label %.loopexit49, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %bb.e
  br i1 %min.iters.check33, label %.lr.ph77.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph77.preheader
  %i.bt = sext i32 %i.bi to i64
  %i.bu = shl nsw i64 %i.bt, 2
  %.reass = add i64 %i.bu, %invariant.op
  %i.bv = getelementptr i8, ptr %.0.val1, i64 %.reass
  %bound0 = icmp ult ptr %.0.val3, %i.bv
  %bound1 = icmp ult ptr %i.bl, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph77.preheader114, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !240, !alias.scope !4534
  %i.bx = add nsw i32 %i.bw, %3
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert36 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat37 = shufflevector <4 x i32> %broadcast.splatinsert36, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body38

vector.body38:                                    ; preds = %pred.store.continue69, %vector.ph34
  %index39 = phi i64 [ 0, %vector.ph34 ], [ %index.next70, %pred.store.continue69 ] ; 2 uses
  %i.by = shl i64 %index39, 2                     ; 8 uses
  %next.gep40 = getelementptr i8, ptr %.0.val3, i64 %i.by ; 3 uses
  %i.bz = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep41 = getelementptr i8, ptr %i.bz, i64 4
  %i.ca = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep42 = getelementptr i8, ptr %i.ca, i64 8
  %i.cb = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep43 = getelementptr i8, ptr %i.cb, i64 12
  %i.cc = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep44 = getelementptr i8, ptr %i.cc, i64 16
  %i.cd = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep45 = getelementptr i8, ptr %i.cd, i64 20
  %i.ce = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep46 = getelementptr i8, ptr %i.ce, i64 24
  %i.cf = getelementptr i8, ptr %.0.val3, i64 %i.by
  %next.gep47 = getelementptr i8, ptr %i.cf, i64 28
  %i.cg = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load48 = load <4 x i32>, ptr %next.gep40, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534 ; 2 uses
  %wide.load49 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534 ; 2 uses
  %i.ch = icmp eq <4 x i32> %wide.load48, %broadcast.splat51 ; 2 uses
  %i.ci = icmp eq <4 x i32> %wide.load49, %broadcast.splat51 ; 2 uses
  %i.cj = icmp eq <4 x i32> %wide.load48, %broadcast.splat37
  %i.ck = icmp eq <4 x i32> %wide.load49, %broadcast.splat37
  %i.cl = or <4 x i1> %i.cj, %i.ch                ; 4 uses
  %i.cm = or <4 x i1> %i.ck, %i.ci                ; 4 uses
  %predphi52 = select <4 x i1> %i.ch, <4 x i32> %broadcast.splat37, <4 x i32> %broadcast.splat51 ; 4 uses
  %predphi53 = select <4 x i1> %i.ci, <4 x i32> %broadcast.splat37, <4 x i32> %broadcast.splat51 ; 4 uses
  %i.cn = extractelement <4 x i1> %i.cl, i64 0
  br i1 %i.cn, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %vector.body38
  %i.co = extractelement <4 x i32> %predphi52, i64 0
  store i32 %i.co, ptr %next.gep40, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %vector.body38
  %i.cp = extractelement <4 x i1> %i.cl, i64 1
  br i1 %i.cp, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.cq = extractelement <4 x i32> %predphi52, i64 1
  store i32 %i.cq, ptr %next.gep41, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.cr = extractelement <4 x i1> %i.cl, i64 2
  br i1 %i.cr, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.cs = extractelement <4 x i32> %predphi52, i64 2
  store i32 %i.cs, ptr %next.gep42, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.ct = extractelement <4 x i1> %i.cl, i64 3
  br i1 %i.ct, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.cu = extractelement <4 x i32> %predphi52, i64 3
  store i32 %i.cu, ptr %next.gep43, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.cv = extractelement <4 x i1> %i.cm, i64 0
  br i1 %i.cv, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.cw = extractelement <4 x i32> %predphi53, i64 0
  store i32 %i.cw, ptr %next.gep44, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.cx = extractelement <4 x i1> %i.cm, i64 1
  br i1 %i.cx, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.cy = extractelement <4 x i32> %predphi53, i64 1
  store i32 %i.cy, ptr %next.gep45, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.cz = extractelement <4 x i1> %i.cm, i64 2
  br i1 %i.cz, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.da = extractelement <4 x i32> %predphi53, i64 2
  store i32 %i.da, ptr %next.gep46, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.db = extractelement <4 x i1> %i.cm, i64 3
  br i1 %i.db, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.dc = extractelement <4 x i32> %predphi53, i64 3
  store i32 %i.dc, ptr %next.gep47, align 4, !tbaa !240, !alias.scope !4535, !noalias !4534
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %index.next70 = add nuw i64 %index39, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next70, %n.vec35
  br i1 %i.dd, label %middle.block71, label %vector.body38, !llvm.loop !4526

middle.block71:                                   ; preds = %pred.store.continue69
  br i1 %cmp.n72, label %.loopexit49, label %.lr.ph77.preheader114

.lr.ph77.preheader114:                            ; preds = %vector.memcheck, %.lr.ph77.preheader, %middle.block71
  %.015175.ph = phi ptr [ %.0.val3, %vector.memcheck ], [ %.0.val3, %.lr.ph77.preheader ], [ %i.l, %middle.block71 ]
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader114, %bb.g
  %.015175 = phi ptr [ %i.dj, %bb.g ], [ %.015175.ph, %.lr.ph77.preheader114 ] ; 3 uses
  %i.de = load i32, ptr %.015175, align 4, !tbaa !240 ; 2 uses
  %i.df = load i32, ptr %i.bl, align 4, !tbaa !240
  %i.dg = add nsw i32 %i.df, %3                   ; 2 uses
  %i.dh = icmp eq i32 %i.de, %i.dg
  br i1 %i.dh, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %.lr.ph77
  %i.di = icmp eq i32 %i.de, %i.bi
  br i1 %i.di, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %.lr.ph77
  %.sink = phi i32 [ %i.bi, %.lr.ph77 ], [ %i.dg, %bb.f ]
  store i32 %.sink, ptr %.015175, align 4, !tbaa !240
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %.015175, i64 4 ; 2 uses
  %.not166 = icmp eq ptr %i.dj, %i.d
  br i1 %.not166, label %.loopexit49, label %.lr.ph77, !llvm.loop !4527

.loopexit49:                                      ; preds = %bb.g, %middle.block71, %bb.e, %bb.d
  %i.dk = load i32, ptr %i.bl, align 4, !tbaa !240
  %i.dl = add nsw i32 %i.dk, %3
  br label %bb.h

bb.h:                                             ; preds = %.loopexit49, %bb.c
  %.0152 = phi i32 [ %i.dl, %.loopexit49 ], [ %i.bi, %bb.c ] ; 2 uses
  %i.dm = add i32 %i.e, %.0152
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !240
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ds = sdiv i32 %.0152, 2
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !240
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.015379, i64 4 ; 2 uses
  %.not163 = icmp eq ptr %i.dt, %i.c
  br i1 %.not163, label %._crit_edge82, label %bb.c

scalar.ph74:                                      ; preds = %scalar.ph74.preheader, %bb.l
  %.015084 = phi ptr [ %i.dx, %bb.l ], [ %.015084.ph, %scalar.ph74.preheader ] ; 3 uses
  %i.du = load i32, ptr %.015084, align 4, !tbaa !240 ; 3 uses
  %.not165 = icmp sge i32 %i.du, %3
  %i.dv = icmp slt i32 %i.du, %i.n
  %or.cond = select i1 %.not165, i1 %i.dv, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %scalar.ph74
  %i.dw = add nsw i32 %i.o, %i.du
  store i32 %i.dw, ptr %.015084, align 4, !tbaa !240
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %scalar.ph74
  %i.dx = getelementptr inbounds nuw i8, ptr %.015084, i64 4 ; 2 uses
  %.not164 = icmp eq ptr %i.dx, %i.m
  br i1 %.not164, label %.loopexit, label %scalar.ph74, !llvm.loop !4528

bb.m:                                             ; preds = %bb.b
  %i.dy = icmp eq i64 %1, 1
  br i1 %i.dy, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.dz = load i32, ptr %0, align 4, !tbaa !240   ; 2 uses
  %i.ea = sub nsw i32 %i.dz, %3                   ; 3 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0.val1, i64 %i.eb
end_hunk_0
