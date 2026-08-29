Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/normalizer2impl?download=true
inline.NumInlined: 333
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7815Normalizer2Impl13addCompositesEPKtRNS_10UnicodeSetE:bb.a
  %.0.i.i = select i1 %.not.i.i, i16 %i.at, i16 %i.aw
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.ay = lshr i16 %.0.i.i, 1
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.ba, align 2, !tbaa !47
  %i.bd = and i16 %i.bc, 31
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.be
  tail call void @_ZNK6icu_7815Normalizer2Impl13addCompositesEPKtRNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.bf, ptr noundef nonnull align 8 dereferenceable(200) %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit, %bb.e
  %i.bg = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.s) ; 0 uses
  %i.bh = icmp sgt i16 %i.e, -1
  br i1 %i.bh, label %bb.b, label %bb.n, !llvm.loop !114

bb.n:                                             ; preds = %bb.m
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7815Normalizer2Impl9recomposeERNS_16ReorderingBufferEia(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.at, label %.preheader180

.preheader180:                                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %.not158 = icmp eq i8 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.preheader180
  %.0140.ph = phi ptr [ %i.d, %.preheader180 ], [ %.0140.ph.be, %.outer.backedge ]
  %.0136.ph = phi ptr [ %i.f, %.preheader180 ], [ %.0136.ph.be, %.outer.backedge ] ; 15 uses
  %.0132.ph = phi ptr [ null, %.preheader180 ], [ %.0132.ph485, %.outer.backedge ]
  %.0120.ph = phi ptr [ null, %.preheader180 ], [ %.0120.ph.be, %.outer.backedge ]
  %.0117.ph = phi i8 [ 0, %.preheader180 ], [ %.0117, %.outer.backedge ]
  %.0115.ph = phi i8 [ 0, %.preheader180 ], [ %.0115.ph.be, %.outer.backedge ]
  %.0136.ph432 = ptrtoaddr ptr %.0136.ph to i64   ; 2 uses
  br label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer

_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer: ; preds = %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge, %.outer
  %.0140.ph484 = phi ptr [ %.0140.ph, %.outer ], [ %.2142, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge ]
  %.0132.ph485 = phi ptr [ %.0132.ph, %.outer ], [ %.0132.ph485.be, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge ] ; 12 uses
  %.0120.ph486 = phi ptr [ %.0120.ph, %.outer ], [ %i.iv, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge ]
  %.0117.ph487 = phi i8 [ %.0117.ph, %.outer ], [ %i.bc, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge ]
  %.0115.ph488 = phi i8 [ %.0115.ph, %.outer ], [ %.0115.ph488.be, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge ] ; 5 uses
  br label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread

_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread: ; preds = %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer
  %.0140 = phi ptr [ %.0140.ph484, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer ], [ %.2142, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge ] ; 3 uses
  %.0120 = phi ptr [ %.0120.ph486, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer ], [ %.0120.be, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge ] ; 6 uses
  %.0117 = phi i8 [ %.0117.ph487, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer ], [ %i.bc, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0140, i64 2 ; 4 uses
  %i.m = load i16, ptr %.0140, align 2, !tbaa !30
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = and i32 %i.n, 63488
  %i.p = icmp eq i32 %i.o, 55296
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = lshr i32 %i.n, 6
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !47
  %i.w = zext i16 %i.v to i32
  %i.x = and i32 %i.n, 63
  %i.y = add nuw nsw i32 %i.x, %i.w
  br label %bb.i

bb.c:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread
  %i.z = and i32 %i.n, 1024
  %i.aa = icmp ne i32 %i.z, 0
  %.not = icmp eq ptr %i.l, %.0136.ph
  %or.cond163 = select i1 %i.aa, i1 true, i1 %.not
  br i1 %or.cond163, label %._crit_edge273, label %bb.d

._crit_edge273:                                   ; preds = %bb.c
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ab = load i16, ptr %i.l, align 2, !tbaa !30
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 64512
  %i.ae = icmp eq i32 %i.ad, 56320
  %.pre274 = load ptr, ptr %i.h, align 8, !tbaa !44 ; 5 uses
  br i1 %i.ae, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0140, i64 4 ; 2 uses
  %i.ag = shl nuw nsw i32 %i.n, 10
  %i.ah = add nsw i32 %i.ag, -56613888
  %i.ai = add nuw nsw i32 %i.ah, %i.ac            ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre274, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !48
  %.not156 = icmp slt i32 %i.ai, %i.ak
  br i1 %.not156, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.pre274, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !49
  %i.an = add nsw i32 %i.am, -2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ao = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre274, i32 noundef %i.ai)
  %.pre275 = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge273, %bb.d
  %i.ap = phi ptr [ %.pre, %._crit_edge273 ], [ %.pre274, %bb.d ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %i.as = add nsw i32 %i.ar, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %i.at = phi ptr [ %i.q, %bb.b ], [ %i.ap, %bb.h ], [ %.pre275, %bb.g ], [ %.pre274, %bb.f ] ; 7 uses
  %.2142 = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.h ], [ %i.af, %bb.g ], [ %i.af, %bb.f ] ; 25 uses
  %.1119 = phi i32 [ %i.n, %bb.b ], [ %i.n, %bb.h ], [ %i.ai, %bb.g ], [ %i.ai, %bb.f ] ; 8 uses
  %.1 = phi i32 [ %i.y, %bb.b ], [ %i.as, %bb.h ], [ %i.ao, %bb.g ], [ %i.an, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = sext i32 %.1 to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !47 ; 9 uses
  %i.az = icmp ugt i16 %i.ay, -1025
  %i.ba = lshr i16 %i.ay, 1
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = select i1 %i.az, i8 %i.bb, i8 0         ; 4 uses
  %i.bd = load i16, ptr %i.i, align 2, !tbaa !80  ; 6 uses
  %i.be = icmp ule i16 %i.bd, %i.ay
  %i.bf = icmp ult i16 %i.ay, -511
  %i.bg = and i1 %i.bf, %i.be
  %i.bh = icmp ne ptr %.0120, null
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.j, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp ult i8 %.0117, %i.bc
  %i.bj = icmp eq i8 %.0117, 0
  %or.cond4 = or i1 %i.bj, %i.bi
  br i1 %or.cond4, label %bb.k, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.k:                                             ; preds = %bb.j
  %.not176 = icmp eq i16 %i.ay, -512
  br i1 %.not176, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.2142431.le = ptrtoaddr ptr %.2142 to i64
  %i.bk = icmp samesign ult i32 %.1119, 4519
  br i1 %i.bk, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bl = load i16, ptr %.0132.ph485, align 2, !tbaa !30
  %i.bm = add i16 %i.bl, -4352                    ; 2 uses
  %i.bn = icmp ult i16 %i.bm, 19
  br i1 %i.bn, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds i8, ptr %.2142, i64 -2 ; 10 uses
  %narrow = mul nuw nsw i16 %i.bm, 21
  %i.bp = trunc nuw nsw i32 %.1119 to i16
  %i.bq = add nsw i16 %i.bp, -4449
  %i.br = add nsw i16 %i.bq, %narrow
  %i.bs = mul i16 %i.br, 28
  %i.bt = add i16 %i.bs, -21504                   ; 3 uses
  %.not162 = icmp eq ptr %.2142, %.0136.ph
  br i1 %.not162, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load i16, ptr %.2142, align 2, !tbaa !30
  %i.bv = add i16 %i.bu, -4519                    ; 2 uses
  %i.bw = icmp ult i16 %i.bv, 28
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.2142, i64 2
  %i.by = add i16 %i.bv, %i.bt
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.3143 = phi ptr [ %i.bx, %bb.p ], [ %.2142, %bb.o ], [ %.2142, %bb.n ] ; 8 uses
  %.0 = phi i16 [ %i.by, %bb.p ], [ %i.bt, %bb.o ], [ %i.bt, %bb.n ]
  %.3143430 = ptrtoaddr ptr %.3143 to i64         ; 2 uses
  store i16 %.0, ptr %.0132.ph485, align 2, !tbaa !30
  %i.bz = icmp ult ptr %.3143, %.0136.ph
  br i1 %i.bz, label %iter.check, label %.thread

iter.check:                                       ; preds = %bb.q
  %i.ca = xor i64 %.3143430, -1
  %i.cb = add i64 %i.ca, %.0136.ph432             ; 3 uses
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = add nuw i64 %i.cc, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cb, 6
  br i1 %min.iters.check, label %.lr.ph234.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %reass.sub = sub i64 %.2142431.le, %.3143430
  %i.ce = add i64 %reass.sub, -3
  %diff.check = icmp ult i64 %i.ce, 31
  br i1 %diff.check, label %.lr.ph234.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check434 = icmp ult i64 %i.cb, 30
  br i1 %min.iters.check434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cf = and i64 %i.cd, 12
  %n.vec = and i64 %i.cd, -16                     ; 4 uses
  %i.cg = shl i64 %n.vec, 1                       ; 2 uses
  %i.ch = getelementptr i8, ptr %.3143, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.bo, i64 %i.cg  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.3143, i64 %i.cj ; 2 uses
  %next.gep435 = getelementptr i8, ptr %i.bo, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !30
  %wide.load436 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !30
  %i.cl = getelementptr i8, ptr %next.gep435, i64 16
  store <8 x i16> %wide.load, ptr %next.gep435, align 2, !tbaa !30
  store <8 x i16> %wide.load436, ptr %i.cl, align 2, !tbaa !30
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.outer.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph234.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec438 = and i64 %i.cd, -4                   ; 3 uses
  %i.cn = shl i64 %n.vec438, 1                    ; 2 uses
  %i.co = getelementptr i8, ptr %.3143, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.bo, i64 %i.cn  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index439 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next443, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = shl i64 %index439, 1                    ; 2 uses
  %next.gep440.a = getelementptr i8, ptr %.3143, i64 %i.cq
  %next.gep441 = getelementptr i8, ptr %i.bo, i64 %i.cq
  %wide.load442 = load <4 x i16>, ptr %next.gep440.a, align 2, !tbaa !30
  store <4 x i16> %wide.load442, ptr %next.gep441, align 2, !tbaa !30
  %index.next443 = add nuw i64 %index439, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next443, %n.vec438
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n444 = icmp eq i64 %i.cd, %n.vec438
  br i1 %cmp.n444, label %.outer.backedge, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0123232.ph = phi ptr [ %.3143, %iter.check ], [ %.3143, %vector.memcheck ], [ %i.ch, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.0127231.ph = phi ptr [ %i.bo, %iter.check ], [ %i.bo, %vector.memcheck ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %.lr.ph234
  %.0123232 = phi ptr [ %i.cs, %.lr.ph234 ], [ %.0123232.ph, %.lr.ph234.preheader ] ; 2 uses
  %.0127231 = phi ptr [ %i.cu, %.lr.ph234 ], [ %.0127231.ph, %.lr.ph234.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0123232, i64 2 ; 2 uses
  %i.ct = load i16, ptr %.0123232, align 2, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %.0127231, i64 2 ; 2 uses
  store i16 %i.ct, ptr %.0127231, align 2, !tbaa !30
  %i.cv = icmp ult ptr %i.cs, %.0136.ph
  br i1 %i.cv, label %.lr.ph234, label %.outer.backedge, !llvm.loop !117

.loopexit:                                        ; preds = %bb.m, %bb.l
  %i.cw = icmp eq ptr %.2142, %.0136.ph
  br i1 %i.cw, label %.thread, label %.outer.backedge

.outer.backedge:                                  ; preds = %.lr.ph234, %middle.block, %vec.epilog.middle.block, %.loopexit179.thread311, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit, %.loopexit
  %.0140.ph.be = phi ptr [ %.2142, %.loopexit ], [ %.6314, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %.6314, %.loopexit179.thread311 ], [ %i.bo, %middle.block ], [ %i.bo, %vec.epilog.middle.block ], [ %i.bo, %.lr.ph234 ]
  %.0136.ph.be = phi ptr [ %.0136.ph, %.loopexit ], [ %.3139315, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %.3139315, %.loopexit179.thread311 ], [ %i.ci, %middle.block ], [ %i.cp, %vec.epilog.middle.block ], [ %i.cu, %.lr.ph234 ]
  %.0120.ph.be = phi ptr [ null, %.loopexit ], [ %i.im, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ null, %.loopexit179.thread311 ], [ null, %middle.block ], [ null, %vec.epilog.middle.block ], [ null, %.lr.ph234 ]
  %.0115.ph.be = phi i8 [ %.0115.ph488, %.loopexit ], [ %.1116, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %.1116, %.loopexit179.thread311 ], [ %.0115.ph488, %middle.block ], [ %.0115.ph488, %vec.epilog.middle.block ], [ %.0115.ph488, %.lr.ph234 ]
  br label %.outer, !llvm.loop !118

bb.r:                                             ; preds = %bb.k
  %i.cx = icmp samesign ult i32 %.1119, 13312
  br i1 %i.cx, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cy = shl nuw nsw i32 %.1119, 1               ; 3 uses
  %i.cz = load i16, ptr %.0120, align 2, !tbaa !47
  %i.da = zext i16 %i.cz to i32                   ; 3 uses
  %i.db = icmp samesign ugt i32 %i.cy, %i.da
  br i1 %i.db, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %i.dc = phi i32 [ %i.di, %.lr.ph.i ], [ %i.da, %bb.s ]
  %.03049.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.0120, %bb.s ]
  %i.dd = and i32 %i.dc, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.03049.i, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 3 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !47
  %i.di = zext i16 %i.dh to i32                   ; 3 uses
  %i.dj = icmp samesign ugt i32 %i.cy, %i.di
  br i1 %i.dj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.s
  %.030.lcssa.i = phi ptr [ %.0120, %bb.s ], [ %i.dg, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.da, %bb.s ], [ %i.di, %.lr.ph.i ] ; 2 uses
  %i.dk = and i32 %.lcssa.i, 32766
  %i.dl = icmp eq i32 %i.cy, %i.dk
  br i1 %i.dl, label %bb.t, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.t:                                             ; preds = %._crit_edge.i
  %i.dm = and i32 %.lcssa.i, 1
  %.not42.i = icmp eq i32 %i.dm, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !47
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  br i1 %.not42.i, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

bb.u:                                             ; preds = %bb.r
  %i.dq = lshr i32 %.1119, 9
  %i.dr = add nuw nsw i32 %i.dq, 13312
  %i.ds = shl nuw nsw i32 %.1119, 6
  %i.dt = and i32 %i.dr, 65534                    ; 2 uses
  %i.du = and i32 %i.ds, 65472                    ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %bb.u
  %.131.i = phi ptr [ %.0120, %bb.u ], [ %.131.i.be, %.backedge ] ; 5 uses
  %i.dv = load i16, ptr %.131.i, align 2, !tbaa !47 ; 2 uses
  %i.dw = zext i16 %i.dv to i32                   ; 3 uses
  %i.dx = icmp samesign ugt i32 %i.dt, %i.dw
  br i1 %i.dx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dy = and i32 %i.dw, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.131.i, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  br label %.backedge

bb.x:                                             ; preds = %bb.v
  %i.ec = and i32 %i.dw, 32766
  %i.ed = icmp eq i32 %i.dt, %i.ec
  br i1 %i.ed, label %bb.y, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %.131.i, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !47
  %i.eg = zext i16 %i.ef to i32                   ; 3 uses
  %i.eh = icmp samesign ugt i32 %i.du, %i.eg
  br i1 %i.eh, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i = icmp sgt i16 %i.dv, -1
  br i1 %.not.i, label %bb.aa, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %.131.i, i64 6
  br label %.backedge

.backedge:                                        ; preds = %bb.aa, %bb.w
  %.131.i.be = phi ptr [ %i.eb, %bb.w ], [ %i.ei, %bb.aa ]
  br label %bb.v, !llvm.loop !113

bb.ab:                                            ; preds = %bb.y
  %i.ej = and i32 %i.eg, 65472
  %i.ek = icmp eq i32 %i.du, %i.ej
  br i1 %i.ek, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread304, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread304: ; preds = %bb.ab
  %i.el = shl nuw i32 %i.eg, 16
  %i.em = and i32 %i.el, 4128768
  br label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169.split.loop.exit207

_ZN6icu_7815Normalizer2Impl7combineEPKti.exit:    ; preds = %bb.t
  %i.en = shl nuw i32 %i.dp, 16                   ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169.split.loop.exit207, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169.split.loop.exit207: ; preds = %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread304
  %.sink.i308 = phi i32 [ %i.em, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread304 ], [ %i.en, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit ]
  %.131.lcssa69.sink.i307 = phi ptr [ %.131.i, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread304 ], [ %.030.lcssa.i, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.131.lcssa69.sink.i307, i64 4
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !47
  %i.er = zext i16 %i.eq to i32
  %i.es = or disjoint i32 %.sink.i308, %i.er
  br label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169

_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169: ; preds = %bb.t, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169.split.loop.exit207
  %.1.i171 = phi i32 [ %i.es, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169.split.loop.exit207 ], [ %i.dp, %bb.t ] ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.2142267271 = ptrtoaddr ptr %.2142 to i64      ; 3 uses
  %.0132253272 = ptrtoaddr ptr %.0132.ph485 to i64
  %i.eu = lshr i32 %.1.i171, 1                    ; 8 uses
  %i.ev = icmp ult i32 %.1119, 65536
  %.neg = select i1 %i.ev, i64 -1, i64 -2         ; 2 uses
  %i.ew = getelementptr inbounds [2 x i8], ptr %.2142, i64 %.neg ; 7 uses
  %.not160 = icmp eq i8 %.0115.ph488, 0
  %i.ex = add nsw i32 %i.eu, -65536
  %i.ey = icmp ult i32 %i.ex, 1048576             ; 2 uses
  br i1 %.not160, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169
  br i1 %i.ey, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ez = lshr i32 %.1.i171, 11
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = add i16 %i.fa, -10304
  store i16 %i.fb, ptr %.0132.ph485, align 2, !tbaa !30
  %i.fc = trunc i32 %i.eu to i16
  %i.fd = and i16 %i.fc, 1023
  %i.fe = or disjoint i16 %i.fd, -9216
  %i.ff = getelementptr inbounds nuw i8, ptr %.0132.ph485, i64 2
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !30
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.fg = trunc i32 %i.eu to i16
  store i16 %i.fg, ptr %.0132.ph485, align 2, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %.0132.ph485, i64 4 ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %i.ew
  br i1 %i.fi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ae
  %scevgep = getelementptr i8, ptr %.0132.ph485, i64 2
  %i.fj = add i64 %.2142267271, -5
  %4 = shl nsw i64 %.neg, 1
  %i.fk = add i64 %i.fj, %4
  %i.fl = sub i64 %i.fk, %.0132253272
  %i.fm = and i64 %i.fl, -2
  %i.fn = add i64 %i.fm, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep, ptr nonnull align 2 %i.fh, i64 %i.fn, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.ae
  %i.fo = getelementptr inbounds i8, ptr %i.ew, i64 -2
  br label %bb.ai

bb.af:                                            ; preds = %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fp = getelementptr inbounds nuw i8, ptr %.0132.ph485, i64 2 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ew, i64 2 ; 2 uses
  %i.fr = icmp ult ptr %i.fp, %i.ew
  br i1 %i.fr, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %bb.ag, %.lr.ph226
  %.2125224 = phi ptr [ %i.fu, %.lr.ph226 ], [ %i.fq, %bb.ag ]
  %.2129223 = phi ptr [ %i.fs, %.lr.ph226 ], [ %i.ew, %bb.ag ]
  %i.fs = getelementptr inbounds i8, ptr %.2129223, i64 -2 ; 3 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !30
  %i.fu = getelementptr inbounds i8, ptr %.2125224, i64 -2 ; 2 uses
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !30
  %i.fv = icmp ult ptr %i.fp, %i.fs
  br i1 %i.fv, label %.lr.ph226, label %._crit_edge227, !llvm.loop !119

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.ag
  %i.fw = trunc i32 %i.eu to i16
  %i.fx = and i16 %i.fw, 1023
  %i.fy = or disjoint i16 %i.fx, -9216
  store i16 %i.fy, ptr %i.fp, align 2, !tbaa !30
  %i.fz = lshr i32 %.1.i171, 11
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = add i16 %i.ga, -10304
  store i16 %i.gb, ptr %.0132.ph485, align 2, !tbaa !30
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gc = trunc i32 %i.eu to i16
  store i16 %i.gc, ptr %.0132.ph485, align 2, !tbaa !30
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge227, %bb.ah, %bb.ad, %._crit_edge
  %.0131 = phi ptr [ %i.ew, %bb.ad ], [ %i.fo, %._crit_edge ], [ %i.fq, %._crit_edge227 ], [ %i.ew, %bb.ah ] ; 11 uses
  %.1116 = phi i8 [ 1, %bb.ad ], [ 0, %._crit_edge ], [ 1, %._crit_edge227 ], [ 0, %bb.ah ] ; 2 uses
  %.0131448 = ptrtoaddr ptr %.0131 to i64
  %i.gd = icmp ult ptr %.0131, %.2142
  br i1 %i.gd, label %.preheader, label %.loopexit179

.preheader:                                       ; preds = %bb.ai
  %i.ge = icmp ult ptr %.2142, %.0136.ph
  br i1 %i.ge, label %iter.check467, label %.thread

iter.check467:                                    ; preds = %.preheader
  %i.gf = xor i64 %.2142267271, -1
  %i.gg = add i64 %i.gf, %.0136.ph432             ; 3 uses
  %i.gh = lshr i64 %i.gg, 1
  %i.gi = add nuw i64 %i.gh, 1                    ; 5 uses
  %min.iters.check451.a = icmp ult i64 %i.gg, 6
  %i.gj = sub i64 %.2142267271, %.0131448
  %diff.check449 = icmp ugt i64 %i.gj, -32
  %or.cond483 = select i1 %min.iters.check451.a, i1 true, i1 %diff.check449
  br i1 %or.cond483, label %.lr.ph230.preheader, label %vector.main.loop.iter.check452

vector.main.loop.iter.check452:                   ; preds = %iter.check467
  %min.iters.check453 = icmp ult i64 %i.gg, 30
  br i1 %min.iters.check453, label %vec.epilog.ph471, label %vector.ph454

vector.ph454:                                     ; preds = %vector.main.loop.iter.check452
  %i.gk = and i64 %i.gi, 12
  %n.vec455 = and i64 %i.gi, -16                  ; 4 uses
  %i.gl = shl i64 %n.vec455, 1                    ; 2 uses
  %i.gm = getelementptr i8, ptr %.2142, i64 %i.gl
  %i.gn = getelementptr i8, ptr %.0131, i64 %i.gl ; 2 uses
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next462, %vector.body456 ] ; 2 uses
  %i.go = shl i64 %index457, 1                    ; 2 uses
  %next.gep458 = getelementptr i8, ptr %.2142, i64 %i.go ; 2 uses
  %next.gep459 = getelementptr i8, ptr %.0131, i64 %i.go ; 2 uses
  %i.gp = getelementptr i8, ptr %next.gep458, i64 16
  %wide.load460 = load <8 x i16>, ptr %next.gep458, align 2, !tbaa !30
  %wide.load461 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !30
  %i.gq = getelementptr i8, ptr %next.gep459, i64 16
  store <8 x i16> %wide.load460, ptr %next.gep459, align 2, !tbaa !30
  store <8 x i16> %wide.load461, ptr %i.gq, align 2, !tbaa !30
  %index.next462 = add nuw i64 %index457, 16      ; 2 uses
  %i.gr = icmp eq i64 %index.next462, %n.vec455
  br i1 %i.gr, label %middle.block463, label %vector.body456, !llvm.loop !120

middle.block463:                                  ; preds = %vector.body456
  %cmp.n464 = icmp eq i64 %i.gi, %n.vec455
  br i1 %cmp.n464, label %.loopexit179.thread311, label %vec.epilog.iter.check469

vec.epilog.iter.check469:                         ; preds = %middle.block463
  %min.epilog.iters.check470 = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check470, label %.lr.ph230.preheader, label %vec.epilog.ph471, !prof !62

vec.epilog.ph471:                                 ; preds = %vector.main.loop.iter.check452, %vec.epilog.iter.check469
  %vec.epilog.resume.val465 = phi i64 [ %n.vec455, %vec.epilog.iter.check469 ], [ 0, %vector.main.loop.iter.check452 ]
  %n.vec472 = and i64 %i.gi, -4                   ; 3 uses
  %i.gs = shl i64 %n.vec472, 1                    ; 2 uses
  %i.gt = getelementptr i8, ptr %.2142, i64 %i.gs
  %i.gu = getelementptr i8, ptr %.0131, i64 %i.gs ; 2 uses
  br label %vec.epilog.vector.body473

vec.epilog.vector.body473:                        ; preds = %vec.epilog.vector.body473, %vec.epilog.ph471
  %index474 = phi i64 [ %vec.epilog.resume.val465, %vec.epilog.ph471 ], [ %index.next478, %vec.epilog.vector.body473 ] ; 2 uses
  %i.gv = shl i64 %index474, 1                    ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.2142, i64 %i.gv
  %next.gep476 = getelementptr i8, ptr %.0131, i64 %i.gv
  %wide.load477 = load <4 x i16>, ptr %next.gep475, align 2, !tbaa !30
  store <4 x i16> %wide.load477, ptr %next.gep476, align 2, !tbaa !30
  %index.next478 = add nuw i64 %index474, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next478, %n.vec472
  br i1 %i.gw, label %vec.epilog.middle.block479, label %vec.epilog.vector.body473, !llvm.loop !121

vec.epilog.middle.block479:                       ; preds = %vec.epilog.vector.body473
  %cmp.n480 = icmp eq i64 %i.gi, %n.vec472
  br i1 %cmp.n480, label %.loopexit179.thread311, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %iter.check467, %vec.epilog.iter.check469, %vec.epilog.middle.block479
  %.3126229.ph = phi ptr [ %.2142, %iter.check467 ], [ %i.gm, %vec.epilog.iter.check469 ], [ %i.gt, %vec.epilog.middle.block479 ]
  %.3130228.ph = phi ptr [ %.0131, %iter.check467 ], [ %i.gn, %vec.epilog.iter.check469 ], [ %i.gu, %vec.epilog.middle.block479 ]
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %.3126229 = phi ptr [ %i.gx, %.lr.ph230 ], [ %.3126229.ph, %.lr.ph230.preheader ] ; 2 uses
  %.3130228 = phi ptr [ %i.gz, %.lr.ph230 ], [ %.3130228.ph, %.lr.ph230.preheader ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.3126229, i64 2 ; 2 uses
  %i.gy = load i16, ptr %.3126229, align 2, !tbaa !30
  %i.gz = getelementptr inbounds nuw i8, ptr %.3130228, i64 2 ; 2 uses
  store i16 %i.gy, ptr %.3130228, align 2, !tbaa !30
  %i.ha = icmp ult ptr %i.gx, %.0136.ph
  br i1 %i.ha, label %.lr.ph230, label %.loopexit179.thread311, !llvm.loop !122

.loopexit179:                                     ; preds = %bb.ai
  %i.hb = icmp eq ptr %.2142, %.0136.ph
  br i1 %i.hb, label %.thread, label %.loopexit179.thread311

.loopexit179.thread311:                           ; preds = %.lr.ph230, %middle.block463, %vec.epilog.middle.block479, %.loopexit179
  %.3139315 = phi ptr [ %.0136.ph, %.loopexit179 ], [ %i.gu, %vec.epilog.middle.block479 ], [ %i.gn, %middle.block463 ], [ %i.gz, %.lr.ph230 ] ; 2 uses
  %.6314 = phi ptr [ %.2142, %.loopexit179 ], [ %.0131, %vec.epilog.middle.block479 ], [ %.0131, %middle.block463 ], [ %.0131, %.lr.ph230 ] ; 2 uses
  %i.hc = and i32 %.1.i171, 1
  %.not161 = icmp eq i32 %i.hc, 0
  br i1 %.not161, label %.outer.backedge, label %bb.aj, !llvm.loop !118

bb.aj:                                            ; preds = %.loopexit179.thread311
  %i.hd = load ptr, ptr %i.et, align 8, !tbaa !21
  %i.he = icmp samesign ult i32 %.1.i171, 131072
  br i1 %i.he, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hf = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.hg = lshr i32 %.1.i171, 7
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !47
  %i.hk = zext i16 %i.hj to i32
  %i.hl = and i32 %i.eu, 63
  %i.hm = add nuw nsw i32 %i.hl, %i.hk
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.al:                                            ; preds = %bb.aj
  %i.hn = icmp samesign ult i32 %.1.i171, 2228224
  br i1 %i.hn, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ho = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !48
  %.not.i164 = icmp slt i32 %i.eu, %i.hp
  br i1 %.not.i164, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hq = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !49
  %i.hs = add nsw i32 %i.hr, -2
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.ao:                                            ; preds = %bb.am
  %i.ht = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.at, i32 noundef %i.eu)
  %.pre276 = load i16, ptr %i.i, align 2, !tbaa !80
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.ap:                                            ; preds = %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !49
  %i.hw = add nsw i32 %i.hv, -1
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit: ; preds = %bb.ak, %bb.an, %bb.ao, %bb.ap
  %i.hx = phi i16 [ %i.bd, %bb.ak ], [ %i.bd, %bb.ap ], [ %i.bd, %bb.an ], [ %.pre276, %bb.ao ] ; 2 uses
  %i.hy = phi i32 [ %i.hm, %bb.ak ], [ %i.hw, %bb.ap ], [ %i.hs, %bb.an ], [ %i.ht, %bb.ao ]
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !47 ; 3 uses
  %.not.i.i = icmp ult i16 %i.ib, %i.hx
  %narrow.i.i = sub i16 %i.ib, %i.hx
  %i.ic = load i16, ptr %i.j, align 2
  %i.id = add i16 %narrow.i.i, %i.ic
  %.0.i.i = select i1 %.not.i.i, i16 %i.ib, i16 %i.id
  %i.ie = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.if = lshr i16 %.0.i.i, 1
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ij = load i16, ptr %i.ih, align 2, !tbaa !47
  %i.ik = and i16 %i.ij, 31
  %i.il = zext nneg i16 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.il
  br label %.outer.backedge, !llvm.loop !118

_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread: ; preds = %bb.z, %bb.x, %bb.ab, %._crit_edge.i, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit, %bb.j, %bb.i
  %i.in = icmp eq ptr %.2142, %.0136.ph
  br i1 %i.in, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread
  %i.io = icmp eq i8 %i.bc, 0
  br i1 %i.io, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ip = add i16 %i.ay, 1024
  %or.cond.i = icmp ult i16 %i.ip, 1026
  br i1 %or.cond.i, label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge, label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit

_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge: ; preds = %bb.ar, %bb.as, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit
  %.0120.be = phi ptr [ null, %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit ], [ null, %bb.ar ], [ %spec.select, %bb.as ]
  br label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread, !llvm.loop !118

_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit: ; preds = %bb.ar
  %i.iq = load i16, ptr %i.j, align 2
  %i.ir = load ptr, ptr %i.k, align 8, !tbaa !69  ; 2 uses
  %.not159 = icmp eq ptr %i.ir, null
  br i1 %.not159, label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge, label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge

_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer.backedge: ; preds = %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit
  %.not.i.i165.le = icmp ult i16 %i.ay, %i.bd
  %narrow.i.i166.le = sub i16 %i.ay, %i.bd
  %i.is = add i16 %narrow.i.i166.le, %i.iq
  %.0.i.i167.le = select i1 %.not.i.i165.le, i16 %i.ay, i16 %i.is
  %i.it = lshr i16 %.0.i.i167.le, 1
  %i.iu = zext nneg i16 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.iu
  %i.iw = icmp ult i32 %.1119, 65536              ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %.2142, i64 -2
  %i.iy = getelementptr inbounds i8, ptr %.2142, i64 -4
  %.0132.ph485.be = select i1 %i.iw, ptr %i.ix, ptr %i.iy
  %.0115.ph488.be = select i1 %i.iw, i8 0, i8 1
  br label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.outer, !llvm.loop !118

bb.as:                                            ; preds = %bb.aq
  %spec.select = select i1 %.not158, ptr %.0120, ptr null
  br label %_ZNK6icu_7815Normalizer2Impl31getCompositionsListForDecompYesEt.exit.thread.backedge

.thread:                                          ; preds = %.preheader, %bb.q, %.loopexit179, %.loopexit, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread
end_hunk_0
