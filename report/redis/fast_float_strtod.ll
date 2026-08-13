inline.NumInlined: 299
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i:bb.a
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ag
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !25
  %i.bb = add nuw nsw i16 %i.af, 1
  store i16 %i.bb, ptr %i.v, align 8, !tbaa !48
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i: ; preds = %bb.l, %._crit_edge.i.i.i, %bb.j, %bb.i
  %.not9.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not9.i.i, label %_ZN10fast_float6bigint4pow2Ej.exit, label %bb.m

bb.m:                                             ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i
  %i.bc = load i16, ptr %i.v, align 8, !tbaa !48  ; 3 uses
  %i.bd = zext i16 %i.bc to i64                   ; 3 uses
  %i.be = add nuw nsw i64 %i.ad, %i.bd
  %i.bf = icmp samesign ult i64 %i.be, 63
  %i.bg = icmp ne i16 %i.bc, 0
  %or.cond.not.i.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.not.i.i.i, label %bb.n, label %_ZN10fast_float6bigint4pow2Ej.exit

bb.n:                                             ; preds = %bb.m
  %.idx12.i.i.i = shl nuw nsw i64 %i.ad, 3        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 %.idx12.i.i.i ; 2 uses
  %i.bi = icmp ugt i16 %i.bc, 1
  br i1 %i.bi, label %bb.o, label %bb.p, !prof !65

bb.o:                                             ; preds = %bb.n
  %.idx.i.i.i = shl nuw nsw i64 %i.bd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 dereferenceable(504) %4, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i = load i16, ptr %i.v, align 8, !tbaa !48
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i

bb.p:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bd
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = load i64, ptr %4, align 8, !tbaa !25
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !25
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i

_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.bm = phi i16 [ %.pre.i.i, %bb.o ], [ 1, %bb.p ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %4, i8 0, i64 %.idx12.i.i.i, i1 false), !tbaa !25
  %i.bn = trunc nuw i64 %i.ad to i16
  %i.bo = add i16 %i.bm, %i.bn
  store i16 %i.bo, ptr %i.v, align 8, !tbaa !48
  br label %_ZN10fast_float6bigint4pow2Ej.exit

bb.q:                                             ; preds = %bb.h
  %i.bp = icmp slt i32 %i.x, 0
  br i1 %i.bp, label %bb.r, label %_ZN10fast_float6bigint4pow2Ej.exit

bb.r:                                             ; preds = %bb.q
  %i.bq = sub nsw i32 0, %i.x
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = and i64 %i.br, 63                       ; 4 uses
  %i.bt = lshr i64 %i.br, 6                       ; 4 uses
  %.not.i.i33 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i33, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = sub nuw nsw i64 64, %i.bs               ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !48 ; 5 uses
  %i.bx = zext i16 %i.bw to i64                   ; 4 uses
  %.not25.i.i.i34 = icmp eq i16 %i.bw, 0
  br i1 %.not25.i.i.i34, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, label %.lr.ph.i.i.i35.preheader

.lr.ph.i.i.i35.preheader:                         ; preds = %bb.s
  %min.iters.check = icmp ult i16 %i.bw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i35.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i35.preheader
  %n.vec = and i64 %i.bx, 65532                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert126 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat127 = shufflevector <2 x i64> %broadcast.splatinsert126, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load128, %vector.body ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !tbaa !25 ; 3 uses
  %wide.load128 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !25 ; 4 uses
  %i.ca = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.cb = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load128, <2 x i32> <i32 1, i32 2>
  %i.cc = shl <2 x i64> %wide.load, %broadcast.splat
  %i.cd = shl <2 x i64> %wide.load128, %broadcast.splat
  %i.ce = lshr <2 x i64> %i.ca, %broadcast.splat127
  %i.cf = lshr <2 x i64> %i.cb, %broadcast.splat127
  %i.cg = or disjoint <2 x i64> %i.cc, %i.ce
  %i.ch = or disjoint <2 x i64> %i.cd, %i.cf
  store <2 x i64> %i.cg, ptr %i.by, align 8, !tbaa !25
  store <2 x i64> %i.ch, ptr %i.bz, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load128, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br i1 %cmp.n, label %._crit_edge.i.i.i39, label %.lr.ph.i.i.i35.preheader151

.lr.ph.i.i.i35.preheader151:                      ; preds = %.lr.ph.i.i.i35.preheader, %middle.block
  %.01622.i.i.i36.ph = phi i64 [ 0, %.lr.ph.i.i.i35.preheader ], [ %vector.recur.extract, %middle.block ]
  %.01721.i.i.i37.ph = phi i64 [ 0, %.lr.ph.i.i.i35.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i35

._crit_edge.i.i.i39:                              ; preds = %.lr.ph.i.i.i35, %middle.block
  %.lcssa121 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.cl, %.lr.ph.i.i.i35 ]
  %i.cj = lshr i64 %.lcssa121, %i.bu              ; 2 uses
  %.not.i.i.i40 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i40, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, label %bb.t

.lr.ph.i.i.i35:                                   ; preds = %.lr.ph.i.i.i35.preheader151, %.lr.ph.i.i.i35
  %.01622.i.i.i36 = phi i64 [ %i.cl, %.lr.ph.i.i.i35 ], [ %.01622.i.i.i36.ph, %.lr.ph.i.i.i35.preheader151 ]
  %.01721.i.i.i37 = phi i64 [ %i.cp, %.lr.ph.i.i.i35 ], [ %.01721.i.i.i37.ph, %.lr.ph.i.i.i35.preheader151 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01721.i.i.i37 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !25 ; 3 uses
  %i.cm = shl i64 %i.cl, %i.bs
  %i.cn = lshr i64 %.01622.i.i.i36, %i.bu
  %i.co = or disjoint i64 %i.cm, %i.cn
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !25
  %i.cp = add nuw nsw i64 %.01721.i.i.i37, 1      ; 2 uses
  %exitcond.not.i.i.i38 = icmp eq i64 %i.cp, %i.bx
  br i1 %exitcond.not.i.i.i38, label %._crit_edge.i.i.i39, label %.lr.ph.i.i.i35, !llvm.loop !70

bb.t:                                             ; preds = %._crit_edge.i.i.i39
  %i.cq = icmp ult i16 %i.bw, 62
  br i1 %i.cq, label %bb.u, label %_ZN10fast_float6bigint4pow2Ej.exit

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx
  store i64 %i.cj, ptr %i.cr, align 8, !tbaa !25
  %i.cs = add nuw nsw i16 %i.bw, 1
  store i16 %i.cs, ptr %i.bv, align 8, !tbaa !48
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42: ; preds = %bb.u, %._crit_edge.i.i.i39, %bb.s, %bb.r
  %.not9.i.i43 = icmp eq i64 %i.bt, 0
  br i1 %.not9.i.i43, label %_ZN10fast_float6bigint4pow2Ej.exit, label %bb.v

bb.v:                                             ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !48 ; 3 uses
  %i.cv = zext i16 %i.cu to i64                   ; 3 uses
  %i.cw = add nuw nsw i64 %i.bt, %i.cv
  %i.cx = icmp samesign ult i64 %i.cw, 63
  %i.cy = icmp ne i16 %i.cu, 0
  %or.cond.not.i.i.i44 = and i1 %i.cy, %i.cx
  br i1 %or.cond.not.i.i.i44, label %bb.w, label %_ZN10fast_float6bigint4pow2Ej.exit

bb.w:                                             ; preds = %bb.v
  %.idx12.i.i.i46 = shl nuw nsw i64 %i.bt, 3      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i46 ; 2 uses
  %i.da = icmp ugt i16 %i.cu, 1
  br i1 %i.da, label %bb.x, label %bb.y, !prof !65

bb.x:                                             ; preds = %bb.w
  %.idx.i.i.i48 = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i48, i1 false)
  %.pre.i.i49 = load i16, ptr %i.ct, align 8, !tbaa !48
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cv
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -8
  %i.dd = load i64, ptr %0, align 8, !tbaa !25
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !25
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47

_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47: ; preds = %bb.y, %bb.x
  %i.de = phi i16 [ %.pre.i.i49, %bb.x ], [ 1, %bb.y ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i46, i1 false), !tbaa !25
  %i.df = trunc nuw i64 %i.bt to i16
  %i.dg = add i16 %i.de, %i.df
  store i16 %i.dg, ptr %i.ct, align 8, !tbaa !48
  br label %_ZN10fast_float6bigint4pow2Ej.exit

_ZN10fast_float6bigint4pow2Ej.exit:               ; preds = %bb.v, %bb.m, %bb.t, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, %bb.k, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !48 ; 4 uses
  %i.dj = load i16, ptr %i.v, align 8, !tbaa !48  ; 2 uses
  %i.dk = icmp ugt i16 %i.di, %i.dj
  br i1 %i.dk, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN10fast_float6bigint4pow2Ej.exit
  %i.dl = icmp ult i16 %i.di, %i.dj
  br i1 %i.dl, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.z
  %.not.i51122 = icmp eq i16 %i.di, 0
  br i1 %.not.i51122, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.dm = zext i16 %i.di to i64
  br label %bb.aa

.preheader.i:                                     ; preds = %bb.aa
  %.not.i51 = icmp eq i64 %5, 0
  br i1 %.not.i51, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %bb.aa, !llvm.loop !71

bb.aa:                                            ; preds = %.lr.ph, %.preheader.i
  %.0.i124 = phi i32 [ undef, %.lr.ph ], [ %.1.i, %.preheader.i ]
  %.014.i123 = phi i64 [ %i.dm, %.lr.ph ], [ %5, %.preheader.i ]
  %5 = add nsw i64 %.014.i123, -1                 ; 4 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.dn = load i64, ptr %6, align 8, !tbaa !25    ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %5
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !25 ; 3 uses
  %.not21.i = icmp ugt i64 %i.dn, %i.dp
  %.not22.i = icmp ult i64 %i.dn, %i.dp
  %..0.i = select i1 %.not22.i, i32 -1, i32 %.0.i124
  %cond.i = icmp eq i64 %i.dn, %i.dp
  %.1.i = select i1 %.not21.i, i32 1, i32 %..0.i  ; 2 uses
  br i1 %cond.i, label %.preheader.i, label %._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge, !llvm.loop !71

._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge: ; preds = %bb.aa
  br label %_ZNK10fast_float6bigint7compareERKS0_.exit, !llvm.loop !71

_ZNK10fast_float6bigint7compareERKS0_.exit:       ; preds = %.preheader.i, %.preheader.preheader.i, %._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge, %_ZN10fast_float6bigint4pow2Ej.exit, %bb.z
  %.3.i = phi i32 [ -1, %bb.z ], [ 1, %_ZN10fast_float6bigint4pow2Ej.exit ], [ 0, %.preheader.preheader.i ], [ %.1.i, %._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge ], [ 0, %.preheader.i ] ; 4 uses
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK10fast_float6bigint7compareERKS0_.exit
  %i.dq = sub i32 1, %2                           ; 2 uses
  %.sroa.speculated87 = call i32 @llvm.smin.i32(i32 %i.dq, i32 64)
  %i.dr = icmp sgt i32 %i.dq, 63
  %i.ds = zext nneg i32 %.sroa.speculated87 to i64
  %i.dt = lshr i64 %1, %i.ds
  %storemerge.i53 = select i1 %i.dr, i64 0, i64 %i.dt ; 2 uses
  %i.du = trunc i64 %storemerge.i53 to i1
  %i.dv = icmp sgt i32 %.3.i, 0
  %i.dw = icmp sgt i32 %.3.i, -1
  %..i.i = and i1 %i.dw, %i.du
  %.0.i.i54 = or i1 %i.dv, %..i.i
  %i.dx = zext i1 %.0.i.i54 to i64
  %i.dy = add i64 %storemerge.i53, %i.dx          ; 2 uses
  %i.dz = icmp ugt i64 %i.dy, 4503599627370495
  %i.ea = zext i1 %i.dz to i32
  br label %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE0_EEvS5_T0_.exit

bb.ac:                                            ; preds = %_ZNK10fast_float6bigint7compareERKS0_.exit
  %i.eb = lshr i64 %1, 11                         ; 2 uses
  %i.ec = trunc i64 %i.eb to i1
  %i.ed = icmp sgt i32 %.3.i, 0
  %i.ee = icmp sgt i32 %.3.i, -1
  %..i.i56 = and i1 %i.ee, %i.ec
  %.0.i.i57 = or i1 %i.ed, %..i.i56
  %i.ef = zext i1 %.0.i.i57 to i64
  %i.eg = add nuw nsw i64 %i.eb, %i.ef            ; 2 uses
  %.not14.i28 = icmp samesign ult i64 %i.eg, 9007199254740992 ; 2 uses
  %spec.select96.v = select i1 %.not14.i28, i32 11, i32 12
  %spec.select96 = add nsw i32 %spec.select96.v, %2 ; 2 uses
  %i.eh = and i64 %i.eg, 13510798882111487
  %.not15.i29 = icmp samesign ult i32 %spec.select96, 2047
  %i.ei = call i32 @llvm.umin.i32(i32 %spec.select96, i32 2047)
  %i.ej = select i1 %.not15.i29, i1 %.not14.i28, i1 false
  %spec.select99 = select i1 %i.ej, i64 %i.eh, i64 0
  br label %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE0_EEvS5_T0_.exit

_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE0_EEvS5_T0_.exit: ; preds = %bb.ac, %bb.ab
  %.sroa.12.1 = phi i32 [ %i.ei, %bb.ac ], [ %i.ea, %bb.ab ]
  %.sroa.069.1 = phi i64 [ %spec.select99, %bb.ac ], [ %i.dy, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.069.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.12.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10fast_float6bigint4pow5Ej(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i32 %1, 134
  br i1 %i.a, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %.011.lcssa = phi i32 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %i.b = icmp samesign ugt i32 %.011.lcssa, 26
  br i1 %i.b, label %.lr.ph34, label %._crit_edge

.lr.ph34:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.promoted = load i16, ptr %i.c, align 8, !tbaa !48
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01132 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.d = tail call noundef zeroext i1 @_ZN10fast_float8long_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr nonnull @_ZN10fast_float11pow5_tablesIvE16large_power_of_5E, i64 5) #10
  br i1 %i.d, label %bb.b, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i32 %.01132, -135                    ; 3 uses
  %i.f = icmp ugt i32 %i.e, 134
  br i1 %i.f, label %.lr.ph, label %.preheader, !llvm.loop !72

bb.c:                                             ; preds = %.lr.ph34, %bb.e
  %i.g = phi i16 [ %.promoted, %.lr.ph34 ], [ %i.an, %bb.e ] ; 7 uses
  %.11233 = phi i32 [ %.011.lcssa, %.lr.ph34 ], [ %i.ao, %bb.e ]
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %.not19.i = icmp eq i16 %i.g, 0
  br i1 %.not19.i, label %bb.e, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i16 %i.g, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, 65534
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod71 = trunc i16 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw nsw i128 %i.l, 7450580596923828125
  %i.n = zext nneg i64 %.01215.i.epil.init to i128
  %i.o = add nuw nsw i128 %i.m, %i.n              ; 2 uses
  %i.p = lshr i128 %i.o, 64                       ; 2 uses
  %i.q = trunc nuw nsw i128 %i.p to i64
  %i.r = trunc i128 %i.o to i64
  store i64 %i.r, ptr %i.j, align 8, !tbaa !25
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa65 = phi i128 [ %i.ag, %._crit_edge.i.unr-lcssa ], [ %i.p, %.lr.ph.i.epil.preheader ]
  %.lcssa64 = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.q, %.lr.ph.i.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa65, 0
  br i1 %.not.i, label %bb.e, label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 7450580596923828125
  %i.w = zext nneg i64 %.01215.i to i128
  %i.x = add nuw nsw i128 %i.v, %i.w              ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = trunc i128 %i.x to i64
  store i64 %i.z, ptr %i.s, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 7450580596923828125
  %i.af = add nuw nsw i128 %i.ae, %i.y            ; 2 uses
  %i.ag = lshr i128 %i.af, 64                     ; 2 uses
  %i.ah = trunc nuw nsw i128 %i.ag to i64         ; 3 uses
  %i.ai = trunc i128 %i.af to i64
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !25
  %i.aj = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !52

bb.d:                                             ; preds = %._crit_edge.i
  %i.ak = icmp ult i16 %i.g, 62
  br i1 %i.ak, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store i64 %.lcssa64, ptr %i.al, align 8, !tbaa !25
  %i.am = add nuw nsw i16 %i.g, 1                 ; 2 uses
  store i16 %i.am, ptr %i.c, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, %._crit_edge.i, %bb.c
  %i.an = phi i16 [ %i.am, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i ], [ %i.g, %._crit_edge.i ], [ 0, %bb.c ]
  %i.ao = add nsw i32 %.11233, -27                ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 26
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.112.lcssa = phi i32 [ %.011.lcssa, %.preheader ], [ %i.ao, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.112.lcssa, 0
  br i1 %.not, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !48 ; 6 uses
  %i.as = zext i16 %i.ar to i64                   ; 3 uses
  %.not19.i13 = icmp eq i16 %i.ar, 0
  br i1 %.not19.i13, label %_ZN10fast_float9large_mulILt62EEEbRNS_8stackvecIXT_EEENS_4spanImEE.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.f
  %i.at = zext nneg i32 %.112.lcssa to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float11pow5_tablesIvE16small_power_of_5E, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !25
  %i.aw = zext i64 %i.av to i128                  ; 3 uses
  %xtraiter72 = and i64 %i.as, 1
  %i.ax = icmp eq i16 %i.ar, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter77 = and i64 %i.as, 65534
end_hunk_0
