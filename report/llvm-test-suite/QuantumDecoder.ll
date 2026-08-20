inline.NumInlined: 60
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj:bb.a
  %i.hi = load i8, ptr %i.he, align 1, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i82, i64 7
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !11
  %i.hk = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.hl = load i8, ptr %i.hh, align 1, !tbaa !11
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i82, i64 8
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !11
  %i.hn = add i32 %.018.i, -8                     ; 2 uses
  %.not27.i.7 = icmp eq i32 %i.hn, 0
  br i1 %.not27.i.7, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !85

bb.am:                                            ; preds = %.preheader156, %bb.ao
  %.119.i = phi i32 [ %i.ic, %bb.ao ], [ %spec.select, %.preheader156 ]
  %.1.i = phi i32 [ %i.hr, %bb.ao ], [ %.017.i, %.preheader156 ] ; 2 uses
  %i.ho = load i32, ptr %i.bb, align 4, !tbaa !75
  %i.hp = icmp eq i32 %.1.i, %i.ho
  %spec.store.select.i = select i1 %i.hp, i32 0, i32 %.1.i ; 2 uses
  %i.hq = load ptr, ptr %i.ay, align 8, !tbaa !76 ; 2 uses
  %i.hr = add i32 %spec.store.select.i, 1
  %i.hs = zext i32 %spec.store.select.i to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !11
  %i.hv = load i32, ptr %i.az, align 8, !tbaa !74 ; 2 uses
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr %i.az, align 8, !tbaa !74
  %i.hx = zext i32 %i.hv to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hx
  store i8 %i.hu, ptr %i.hy, align 1, !tbaa !11
  %i.hz = load i32, ptr %i.az, align 8, !tbaa !74
  %i.ia = load i32, ptr %i.bc, align 4, !tbaa !77
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ay)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ic = add i32 %.119.i, -1                     ; 2 uses
  %.not26.i = icmp eq i32 %i.ic, 0
  br i1 %.not26.i, label %.loopexit, label %bb.am, !llvm.loop !86

.loopexit:                                        ; preds = %bb.ao, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %i.id = sub i32 %.154104, %spec.select
  %.not68.not = icmp ugt i32 %.252, %.154104
  br i1 %.not68.not, label %_ZN12CLzOutWindow9CopyBlockEjj.exit.thread94, label %_ZN12CLzOutWindow9CopyBlockEjj.exit

_ZN12CLzOutWindow9CopyBlockEjj.exit.thread94:     ; preds = %.loopexit
  %i.ie = sub i32 %.252, %spec.select
  store i32 %i.ie, ptr %i.a, align 8, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.049, ptr %i.if, align 4, !tbaa !73
  br label %.loopexit98

_ZN12CLzOutWindow9CopyBlockEjj.exit:              ; preds = %.loopexit, %_ZN12CLzOutWindow7PutByteEh.exit70
  %.457 = phi i32 [ %i.ct, %_ZN12CLzOutWindow7PutByteEh.exit70 ], [ %i.id, %.loopexit ] ; 2 uses
  %.not = icmp eq i32 %.457, 0
  br i1 %.not, label %.loopexit98, label %bb.n

.loopexit98:                                      ; preds = %_ZN12CLzOutWindow9CopyBlockEjj.exit, %.preheader, %_ZN12CLzOutWindow9CopyBlockEjj.exit.thread94
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ih = load i8, ptr %i.ig, align 4, !tbaa !79, !range !64, !noundef !65
  %i.ii = zext nneg i8 %i.ih to i32
  br label %_ZN12CLzOutWindow9CopyBlockEjj.exit.thread91

_ZN12CLzOutWindow9CopyBlockEjj.exit.thread91:     ; preds = %bb.ah, %bb.ai, %bb.n, %.thread, %bb.k, %bb.e, %bb.c, %.loopexit98
  %.4 = phi i32 [ -2147024882, %bb.e ], [ 0, %bb.k ], [ -2147024882, %bb.c ], [ %i.ii, %.loopexit98 ], [ 0, %.thread ], [ 1, %bb.n ], [ 1, %bb.ai ], [ 1, %bb.ah ]
  ret i32 %.4
}

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NQuantum11NRangeCoder13CModelDecoder6DecodeEPNS1_8CDecoderE(ptr noundef nonnull align 4 dereferenceable(202) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 28 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !12
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72
  %i.f = add i32 %i.e, 1
  %i.g = mul i32 %i.f, %i.c
  %i.h = add i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !68
  %i.k = udiv i32 %i.h, %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.0 = phi i32 [ %i.q, %bb.b ], [ 1, %bb.a ]     ; 3 uses
  %i.l = zext i32 %.0 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !12
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp ult i32 %i.k, %i.o
  %i.q = add i32 %.0, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.p, label %bb.b, label %iter.check, !llvm.loop !87

iter.check:                                       ; preds = %bb.b
  %i.r = add i32 %.0, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !12
  %i.v = zext i16 %i.u to i32
  tail call void @_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.o, i32 noundef %i.v, i32 noundef %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i32 %indvars.iv to i64              ; 6 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i32 %indvars.iv, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check95 = icmp ult i32 %indvars.iv, 15
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 8589934576              ; 4 uses
  %i.ac = sub nsw i64 %i.z, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = sub i64 %i.z, %index
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -14 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -30 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.af, align 2, !tbaa !12
  %wide.load96 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !12
  %i.ah = add <8 x i16> %wide.load, splat (i16 8)
  %i.ai = add <8 x i16> %wide.load96, splat (i16 8)
  store <8 x i16> %i.ah, ptr %i.af, align 2, !tbaa !12
  store <8 x i16> %i.ai, ptr %i.ag, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit145, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %i.aa, 8589934588            ; 3 uses
  %i.ak = sub nsw i64 %i.z, %n.vec97
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 2 uses
  %i.al = sub i64 %i.z, %index98
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -6 ; 2 uses
  %wide.load99 = load <4 x i16>, ptr %i.an, align 2, !tbaa !12
  %i.ao = add <4 x i16> %wide.load99, splat (i16 8)
  store <4 x i16> %i.ao, ptr %i.an, align 2, !tbaa !12
  %index.next100 = add nuw i64 %index98, 4        ; 2 uses
  %i.ap = icmp eq i64 %index.next100, %n.vec97
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n101 = icmp eq i64 %i.aa, %n.vec97
  br i1 %cmp.n101, label %.loopexit145, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv63.ph = phi i64 [ %i.z, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %vec.epilog.scalar.ph ], [ %indvars.iv63.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv63 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !12
  %i.as = add i16 %i.ar, 8
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !12
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %.not = icmp eq i64 %indvars.iv63, 0
  br i1 %.not, label %.loopexit145, label %vec.epilog.scalar.ph, !llvm.loop !90

.loopexit145:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.at = load i16, ptr %i.a, align 4, !tbaa !12  ; 3 uses
  %i.au = icmp ugt i16 %i.at, 3800
  br i1 %i.au, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit145
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !10
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i32 50, ptr %i.av, align 4, !tbaa !10
  %i.az = load i32, ptr %0, align 4, !tbaa !8     ; 6 uses
  %.not59 = icmp eq i32 %i.az, 0
  br i1 %.not59, label %.lr.ph57.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i32 %i.az to i64        ; 3 uses
  %min.iters.check103 = icmp ult i32 %i.az, 8
  br i1 %min.iters.check103, label %.lr.ph.preheader146, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.preheader
  %n.vec105 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %vector.recur.init = insertelement <8 x i16> poison, i16 %i.at, i64 7
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 3 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph104 ], [ %wide.load108, %vector.body106 ]
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index107
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index107
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %wide.load108 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !12 ; 4 uses
  %i.bd = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load108, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.be = zext <8 x i16> %i.bd to <8 x i32>
  %i.bf = zext <8 x i16> %wide.load108 to <8 x i32>
  %i.bg = add nuw nsw <8 x i32> %i.be, splat (i32 1)
  %i.bh = sub nsw <8 x i32> %i.bg, %i.bf
  %i.bi = lshr <8 x i32> %i.bh, splat (i32 1)
  %i.bj = trunc <8 x i32> %i.bi to <8 x i16>
  store <8 x i16> %i.bj, ptr %i.ba, align 4, !tbaa !12
  %index.next109 = add nuw i64 %index107, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.bk, label %middle.block110, label %vector.body106, !llvm.loop !91

middle.block110:                                  ; preds = %vector.body106
  %vector.recur.extract = extractelement <8 x i16> %wide.load108, i64 7
  %cmp.n111 = icmp eq i64 %n.vec105, %wide.trip.count
  br i1 %cmp.n111, label %.preheader50, label %.lr.ph.preheader146

.lr.ph.preheader146:                              ; preds = %.lr.ph.preheader, %middle.block110
  %.ph = phi i16 [ %i.at, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block110 ]
  %indvars.iv66.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec105, %middle.block110 ]
  br label %.lr.ph

.preheader50:                                     ; preds = %.lr.ph, %middle.block110
  %i.bl = add i32 %i.az, -1                       ; 2 uses
  %.not60 = icmp eq i32 %i.bl, 0
  br i1 %.not60, label %iter.check131, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %bb.d, %.preheader50
  %i.bm = phi i32 [ %i.bl, %.preheader50 ], [ -1, %bb.d ] ; 2 uses
  %i.bn = zext i32 %i.az to i64
  %wide.trip.count78 = zext i32 %i.bm to i64
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader146, %.lr.ph
  %i.bo = phi i16 [ %i.bs, %.lr.ph ], [ %.ph, %.lr.ph.preheader146 ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.lr.ph ], [ %indvars.iv66.ph, %.lr.ph.preheader146 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv66
  %i.bq = zext i16 %i.bo to i32
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next67
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !12 ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bq, 1
  %i.bv = sub nsw i32 %i.bu, %i.bt
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = trunc i32 %i.bw to i16
  store i16 %i.bx, ptr %i.bp, align 2, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count
  br i1 %exitcond.not, label %.preheader50, label %.lr.ph, !llvm.loop !92

.loopexit49:                                      ; preds = %bb.g, %.lr.ph57
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader.loopexit, label %.lr.ph57, !llvm.loop !93

.preheader.loopexit:                              ; preds = %.loopexit49
  %i.by = zext i32 %i.bm to i64
  br label %iter.check131

iter.check131:                                    ; preds = %.preheader50, %.preheader.loopexit
  %.3.lcssa = phi i64 [ %i.by, %.preheader.loopexit ], [ 0, %.preheader50 ] ; 11 uses
  %i.bz = add nuw nsw i64 %.3.lcssa, 1            ; 5 uses
  %trunc = trunc nuw i64 %.3.lcssa to i32
  %trunc.off = add i32 %trunc, -3
  %switch = icmp ult i32 %trunc.off, -4
  br i1 %switch, label %vector.memcheck, label %vec.epilog.scalar.ph132.preheader

vec.epilog.scalar.ph132.preheader:                ; preds = %iter.check131, %vector.memcheck, %vec.epilog.iter.check133, %vec.epilog.middle.block142
  %indvars.iv80.ph = phi i64 [ %i.df, %vec.epilog.middle.block142 ], [ %i.cs, %vec.epilog.iter.check133 ], [ %.3.lcssa, %vector.memcheck ], [ %.3.lcssa, %iter.check131 ] ; 6 uses
  %i.ca = and i64 %indvars.iv80.ph, 1
  %lcmp.mod149.not.not = icmp eq i64 %i.ca, 0
  br i1 %lcmp.mod149.not.not, label %vec.epilog.scalar.ph132.prol, label %vec.epilog.scalar.ph132.prol.loopexit

vec.epilog.scalar.ph132.prol:                     ; preds = %vec.epilog.scalar.ph132.preheader
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv80.ph ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !12
  %i.cd = and i64 %indvars.iv80.ph, 4294967294
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !12
  %i.ch = add i16 %i.cg, %i.cc
  store i16 %i.ch, ptr %i.cb, align 2, !tbaa !12
  %indvars.iv.next81.prol = add nsw i64 %indvars.iv80.ph, -1
  br label %vec.epilog.scalar.ph132.prol.loopexit

vec.epilog.scalar.ph132.prol.loopexit:            ; preds = %vec.epilog.scalar.ph132.prol, %vec.epilog.scalar.ph132.preheader
  %indvars.iv80.unr = phi i64 [ %indvars.iv80.ph, %vec.epilog.scalar.ph132.preheader ], [ %indvars.iv.next81.prol, %vec.epilog.scalar.ph132.prol ]
  %i.ci = icmp eq i64 %indvars.iv80.ph, 0
  br i1 %i.ci, label %.loopexit, label %vec.epilog.scalar.ph132

vector.memcheck:                                  ; preds = %iter.check131
  %i.cj = shl nuw nsw i64 %.3.lcssa, 1            ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 %i.cj
  %scevgep = getelementptr i8, ptr %i.ck, i64 10
  %i.cl = shl nuw nsw i64 %.3.lcssa, 1
  %i.cm = add nuw nsw i64 %i.cl, 2
  %i.cn = and i64 %i.cm, 8589934590               ; 2 uses
  %i.co = add nuw nsw i64 %i.cn, 8
  %i.cp = sub nsw i64 %i.co, %i.cj
  %scevgep112 = getelementptr i8, ptr %0, i64 %i.cp
  %i.cq = getelementptr i8, ptr %0, i64 %i.cn
  %scevgep113 = getelementptr i8, ptr %i.cq, i64 10
  %bound0 = icmp ult ptr %i.a, %scevgep113
  %bound1 = icmp ult ptr %scevgep112, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph132.preheader, label %vector.main.loop.iter.check116

vector.main.loop.iter.check116:                   ; preds = %vector.memcheck
  %min.iters.check117 = icmp samesign ult i64 %.3.lcssa, 15
  br i1 %min.iters.check117, label %vec.epilog.ph135, label %vector.ph118

vector.ph118:                                     ; preds = %vector.main.loop.iter.check116
  %i.cr = and i64 %i.bz, 12
  %n.vec119 = and i64 %i.bz, 8589934576           ; 4 uses
  %i.cs = sub nsw i64 %.3.lcssa, %n.vec119
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.ct = sub i64 %.3.lcssa, %index121            ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -14 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -30 ; 2 uses
  %wide.load122 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !12, !alias.scope !94, !noalias !97
  %wide.load123 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !12, !alias.scope !94, !noalias !97
  %i.cx = add nuw i64 %i.ct, 1
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -14
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -30
  %wide.load124 = load <8 x i16>, ptr %i.da, align 2, !tbaa !12, !alias.scope !97
  %wide.load125 = load <8 x i16>, ptr %i.db, align 2, !tbaa !12, !alias.scope !97
  %i.dc = add <8 x i16> %wide.load124, %wide.load122
  %i.dd = add <8 x i16> %wide.load125, %wide.load123
  store <8 x i16> %i.dc, ptr %i.cv, align 2, !tbaa !12, !alias.scope !94, !noalias !97
  store <8 x i16> %i.dd, ptr %i.cw, align 2, !tbaa !12, !alias.scope !94, !noalias !97
  %index.next126 = add nuw i64 %index121, 16      ; 2 uses
  %i.de = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.de, label %middle.block127, label %vector.body120, !llvm.loop !99

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.bz, %n.vec119
  br i1 %cmp.n128, label %.loopexit, label %vec.epilog.iter.check133

vec.epilog.iter.check133:                         ; preds = %middle.block127
  %min.epilog.iters.check134 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check134, label %vec.epilog.scalar.ph132.preheader, label %vec.epilog.ph135, !prof !49

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check116, %vec.epilog.iter.check133
  %vec.epilog.resume.val129 = phi i64 [ %n.vec119, %vec.epilog.iter.check133 ], [ 0, %vector.main.loop.iter.check116 ]
  %n.vec136 = and i64 %i.bz, 8589934588           ; 3 uses
  %i.df = sub nsw i64 %.3.lcssa, %n.vec136
  br label %vec.epilog.vector.body137

vec.epilog.vector.body137:                        ; preds = %vec.epilog.vector.body137, %vec.epilog.ph135
  %index138 = phi i64 [ %vec.epilog.resume.val129, %vec.epilog.ph135 ], [ %index.next141, %vec.epilog.vector.body137 ] ; 2 uses
  %i.dg = sub i64 %.3.lcssa, %index138            ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -6 ; 2 uses
  %wide.load139 = load <4 x i16>, ptr %i.di, align 2, !tbaa !12, !alias.scope !94, !noalias !97
  %i.dj = add nuw i64 %i.dg, 1
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -6
  %wide.load140 = load <4 x i16>, ptr %i.dm, align 2, !tbaa !12, !alias.scope !97
  %i.dn = add <4 x i16> %wide.load140, %wide.load139
  store <4 x i16> %i.dn, ptr %i.di, align 2, !tbaa !12, !alias.scope !94, !noalias !97
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.do, label %vec.epilog.middle.block142, label %vec.epilog.vector.body137, !llvm.loop !100

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body137
  %cmp.n143 = icmp eq i64 %i.bz, %n.vec136
  br i1 %cmp.n143, label %.loopexit, label %vec.epilog.scalar.ph132.preheader

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.loopexit49
  %indvars.iv75 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next76, %.loopexit49 ] ; 3 uses
  %indvars.iv69 = phi i64 [ 1, %.lr.ph57.preheader ], [ %indvars.iv.next70, %.loopexit49 ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 3 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next76, %i.bn
  br i1 %i.dp, label %.lr.ph55, label %.loopexit49

.lr.ph55:                                         ; preds = %.lr.ph57
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv75 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv75 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph55, %bb.g
  %indvars.iv71 = phi i64 [ %indvars.iv69, %.lr.ph55 ], [ %indvars.iv.next72, %bb.g ] ; 3 uses
  %i.ds = load i16, ptr %i.dq, align 2, !tbaa !12 ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv71 ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !12 ; 2 uses
  %i.dv = icmp ult i16 %i.ds, %i.du
  br i1 %i.dv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dw = load i8, ptr %i.dr, align 1, !tbaa !11
  store i16 %i.du, ptr %i.dq, align 2, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv71 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !11
  store i8 %i.dy, ptr %i.dr, align 1, !tbaa !11
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !12
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next72 to i32
  %exitcond74.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond74.not, label %.loopexit49, label %bb.e, !llvm.loop !101

vec.epilog.scalar.ph132:                          ; preds = %vec.epilog.scalar.ph132.prol.loopexit, %vec.epilog.scalar.ph132
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %vec.epilog.scalar.ph132 ], [ %indvars.iv80.unr, %vec.epilog.scalar.ph132.prol.loopexit ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv80 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !12
  %i.eb = add nuw i64 %indvars.iv80, 1
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !12
  %i.ef = add i16 %i.ee, %i.ea
  store i16 %i.ef, ptr %i.dz, align 2, !tbaa !12
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next81 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !12
  %i.ei = and i64 %indvars.iv80, 4294967295
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !12
  %i.el = add i16 %i.ek, %i.eh
  store i16 %i.el, ptr %i.eg, align 2, !tbaa !12
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, -2
  %.not48.1 = icmp eq i64 %indvars.iv.next81, 0
  br i1 %.not48.1, label %.loopexit, label %vec.epilog.scalar.ph132, !llvm.loop !102

bb.h:                                             ; preds = %bb.c
  %i.em = load i32, ptr %0, align 4, !tbaa !8     ; 5 uses
  %.phi.trans.insert = zext i32 %i.em to i64
  %.phi.trans.insert83 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert83, align 2, !tbaa !12 ; 3 uses
  %xtraiter = and i32 %i.em, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.h
  %.5.prol = add nsw i32 %i.em, -1                ; 2 uses
  %i.en = zext i32 %.5.prol to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !12
  %i.eq = lshr i16 %i.ep, 1                       ; 2 uses
  %.not46.prol = icmp ugt i16 %i.eq, %.pre
  %i.er = add i16 %.pre, 1
  %spec.select.prol = select i1 %.not46.prol, i16 %i.eq, i16 %i.er ; 2 uses
  store i16 %spec.select.prol, ptr %i.eo, align 2, !tbaa !12
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.h
  %.unr = phi i16 [ %.pre, %bb.h ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %.5.in.unr = phi i32 [ %i.em, %bb.h ], [ %.5.prol, %.prol.loopexit.unr-lcssa ]
  %i.es = icmp eq i32 %i.em, 1
  br i1 %i.es, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.et = phi i16 [ %spec.select.1, %.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.5.in = phi i32 [ %.5.1, %.new ], [ %.5.in.unr, %.prol.loopexit ] ; 2 uses
  %.5 = add i32 %.5.in, -1
  %i.eu = zext i32 %.5 to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eu ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !12
  %i.ex = lshr i16 %i.ew, 1                       ; 2 uses
  %.not46 = icmp ugt i16 %i.ex, %i.et
  %i.ey = add i16 %i.et, 1
  %spec.select = select i1 %.not46, i16 %i.ex, i16 %i.ey ; 3 uses
  store i16 %spec.select, ptr %i.ev, align 2, !tbaa !12
  %.5.1 = add i32 %.5.in, -2                      ; 3 uses
  %i.ez = zext i32 %.5.1 to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ez ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !12
  %i.fc = lshr i16 %i.fb, 1                       ; 2 uses
  %.not46.1 = icmp ugt i16 %i.fc, %spec.select
  %i.fd = add i16 %spec.select, 1
  %spec.select.1 = select i1 %.not46.1, i16 %i.fc, i16 %i.fd ; 2 uses
  store i16 %spec.select.1, ptr %i.fa, align 2, !tbaa !12
  %.not47.1 = icmp eq i32 %.5.1, 0
  br i1 %.not47.1, label %.loopexit, label %.new, !llvm.loop !103

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %vec.epilog.scalar.ph132.prol.loopexit, %vec.epilog.scalar.ph132, %middle.block127, %vec.epilog.middle.block142, %.loopexit145
  %i.fe = zext i8 %i.y to i32
  ret i32 %i.fe
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(2020) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.NCompress::NQuantum::CDecoder::CDecoderFlusher", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp eq ptr %4, null
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(2020) %0, ptr noundef %1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  tail call void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef %2)
  %i.j = load ptr, ptr %0, align 8, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(2020) %0, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %0, ptr %6, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 1, ptr %i.n, align 8, !tbaa !110
  %i.o = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %.preheader unwind label %bb.f ; 3 uses

.preheader:                                       ; preds = %bb.b
  %.not45 = icmp eq ptr %5, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %.not45, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %select.unfold.us
  %i.s = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.c unwind label %.split.us

bb.c:                                             ; preds = %.preheader.split.us
  %.neg.us = sub i64 %i.o, %i.s
  %i.t = add i64 %.neg.us, %i.d                   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.split61.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select58.us = tail call i64 @llvm.umin.i64(i64 %i.t, i64 262144)
  %spec.select.us = trunc nuw nsw i64 %spec.select58.us to i32
  %i.v = invoke noundef i32 @_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj(ptr noundef nonnull align 8 dereferenceable(2020) %0, i32 noundef %spec.select.us)
          to label %select.unfold.us unwind label %.split63.us ; 2 uses

select.unfold.us:                                 ; preds = %bb.d
  %.not.us = icmp eq i32 %i.v, 0
  br i1 %.not.us, label %.preheader.split.us, label %.loopexit

.split.us:                                        ; preds = %.preheader.split.us
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.split63.us:                                      ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.preheader.split:                                 ; preds = %.preheader, %select.unfold
  %i.y = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.e unwind label %.split

bb.e:                                             ; preds = %.preheader.split
  %.neg = sub i64 %i.o, %i.y
  %i.z = add i64 %.neg, %i.d                      ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.split61.us, label %bb.g

bb.f:                                             ; preds = %.split61.us, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.split:                                           ; preds = %.preheader.split
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %spec.select58 = call i64 @llvm.umin.i64(i64 %i.z, i64 262144)
  %spec.select = trunc nuw nsw i64 %spec.select58 to i32
  %i.ad = invoke noundef i32 @_ZN9NCompress8NQuantum8CDecoder8CodeSpecEj(ptr noundef nonnull align 8 dereferenceable(2020) %0, i32 noundef %spec.select)
          to label %bb.h unwind label %.split63   ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.i, label %.loopexit

.split63:                                         ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.af = load i64, ptr %i.q, align 8, !tbaa !111
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = add i64 %i.af, %i.ai
  %i.al = sub i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.am = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = sub i64 %i.am, %i.o
  store i64 %i.an, ptr %i.b, align 8, !tbaa !104
  %i.ao = load ptr, ptr %5, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
end_hunk_0
