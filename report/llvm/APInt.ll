Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 86
begin_hunk_0_@"_ZZN4llvm8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_jENK3$_0clERKS1_S4_":bb.a
  %i.ez = add i64 %i.ey, %i.ew                    ; 3 uses
  %i.fa = icmp uge i64 %i.ez, %i.ew
  %i.fb = add i64 %i.ez, 1                        ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, %i.ew
  %.sink.i.i.i34.1 = select i1 %.1.in.i.i.i35, i64 %i.ez, i64 %i.fb
  %.1.in.i.i.i35.1 = select i1 %.1.in.i.i.i35, i1 %i.fa, i1 %i.fc ; 2 uses
  store i64 %.sink.i.i.i34.1, ptr %i.ev, align 8, !tbaa !26, !noalias !658
  %indvars.iv.next.i.i.i36.1 = add nuw nsw i64 %indvars.iv.i.i.i32, 2 ; 2 uses
  %niter54.next.1 = add nuw nsw i64 %niter54, 2   ; 2 uses
  %niter54.ncmp.1 = icmp eq i64 %niter54.next.1, %unroll_iter53
  br i1 %niter54.ncmp.1, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38.unr-lcssa, label %.lr.ph.i.i.i31, !llvm.loop !4

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38.unr-lcssa: ; preds = %.lr.ph.i.i.i31
  %i.fd = and i64 %i.dd, 64
  %lcmp.mod51.not = icmp eq i64 %i.fd, 0
  br i1 %lcmp.mod51.not, label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38, label %.lr.ph.i.i.i31.epil.preheader

.lr.ph.i.i.i31.epil.preheader:                    ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38.unr-lcssa, %_ZN4llvmmiENS_5APIntERKS0_.exit
  %indvars.iv.i.i.i32.epil.init = phi i64 [ 0, %_ZN4llvmmiENS_5APIntERKS0_.exit ], [ %indvars.iv.next.i.i.i36.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38.unr-lcssa ] ; 2 uses
  %.02021.i.i.i33.epil.init = phi i1 [ true, %_ZN4llvmmiENS_5APIntERKS0_.exit ], [ %.1.in.i.i.i35.1, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38.unr-lcssa ]
  %lcmp.mod52 = trunc i64 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod52)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i32.epil.init ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !26, !noalias !658
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i.i.i32.epil.init
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !26, !noalias !658
  %i.fi = add i64 %i.fh, %i.ff
  %not..02021.i.i.i33.epil.init = xor i1 %.02021.i.i.i33.epil.init, true
  %i.fj = zext i1 %not..02021.i.i.i33.epil.init to i64
  %.sink.i.i.i34.epil = add i64 %i.fi, %i.fj
  store i64 %.sink.i.i.i34.epil, ptr %i.fe, align 8, !tbaa !26, !noalias !658
  br label %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38

_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38:          ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38.unr-lcssa, %.lr.ph.i.i.i31.epil.preheader
  %i.fk = ptrtoint ptr %i.dg to i64
  %i.fl = load i64, ptr %i.ei, align 8, !tbaa !26, !noalias !658
  %i.fm = and i64 %i.fl, %i.eg
  store i64 %i.fm, ptr %i.ei, align 8, !tbaa !26, !noalias !658
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38, %_ZN4llvmmiENS_5APIntERKS0_.exit.thread
  %.sroa.06.0 = phi i64 [ %i.ec, %_ZN4llvmmiENS_5APIntERKS0_.exit.thread ], [ %i.fk, %_ZN4llvm5APInt5tcAddEPmPKmmj.exit.i.i38 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.da, ptr %i.fn, align 8, !tbaa !23, !alias.scope !658
  store i64 %.sroa.06.0, ptr %0, align 8, !alias.scope !658
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.o, %.thread, %bb.h, %bb.g
  %i.fo = load i32, ptr %i.f, align 8, !tbaa !23
  %i.fp = icmp ugt i32 %i.fo, 64
  br i1 %i.fp, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit45

bb.p:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.fq = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_ZN4llvm5APIntD2Ev.exit45, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #22
  br label %_ZN4llvm5APIntD2Ev.exit45

_ZN4llvm5APIntD2Ev.exit45:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4llvm8APIntOps30GetMostSignificantDifferentBitERKNS_5APIntES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %.split, label %_ZNK4llvm5APInteqERKS0_.exit

.split:                                           ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm5APIntD2Ev.exit6, label %_ZNK4llvm5APInt11countl_zeroEv.exit.thread

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.a
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63                 ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %.idx.i.i = and i64 %i.i, 1073741816            ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !24
  %i.k = load ptr, ptr %1, align 8, !tbaa !24
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.k, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm5APInteqERKS0_.exit
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.idx.i.i) #21 ; 5 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %.idx.i.i, i1 false)
  %i.n = load ptr, ptr %1, align 8, !tbaa !24, !noalias !663 ; 2 uses
  %i.o = lshr i64 %i.h, 6                         ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.o, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !tbaa !26, !noalias !663
  %wide.load36 = load <2 x i64>, ptr %i.q, align 8, !tbaa !26, !noalias !663
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load37 = load <2 x i64>, ptr %i.r, align 8, !tbaa !26, !noalias !663
  %wide.load38 = load <2 x i64>, ptr %i.s, align 8, !tbaa !26, !noalias !663
  %i.t = xor <2 x i64> %wide.load37, %wide.load
  %i.u = xor <2 x i64> %wide.load38, %wide.load36
  store <2 x i64> %i.t, ptr %i.r, align 8, !tbaa !26, !noalias !663
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !26, !noalias !663
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.09.i.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26, !noalias !663
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.09.i.i.i ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26, !noalias !663
  %i.aa = xor i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !26, !noalias !663
  %i.ab = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !llvm.loop !662

_ZNK4llvm5APInt11countl_zeroEv.exit.thread:       ; preds = %.split
  %i.ac = xor i64 %i.e, %i.d
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = xor i32 %i.ae, 63
  br label %_ZN4llvm5APIntD2Ev.exit6

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %middle.block
  %i.ag = trunc nuw nsw i64 %i.o to i32
  %i.ah = shl i32 %i.ag, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.o, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.ao, %bb.d ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = or disjoint i32 %.019.i.i, %i.am
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = add i32 %.019.i.i, 64
  %i.ap = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ap, label %bb.c, label %_ZNK4llvm5APInt11countl_zeroEv.exit, !llvm.loop !1

_ZNK4llvm5APInt11countl_zeroEv.exit:              ; preds = %bb.d, %.thread.i.i
  %.2.i.i = phi i32 [ %i.an, %.thread.i.i ], [ %i.ah, %bb.d ]
  %i.aq = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.aq, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.ar = add i32 %.2.i.i, %.neg15.i.i
  %.neg = xor i32 %i.ar, -1
  %i.as = add i32 %i.b, %.neg
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #22
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit.thread, %_ZNK4llvm5APInt11countl_zeroEv.exit, %_ZNK4llvm5APInteqERKS0_.exit, %.split
  %.sroa.014.0 = phi i32 [ undef, %_ZNK4llvm5APInteqERKS0_.exit ], [ undef, %.split ], [ %i.af, %_ZNK4llvm5APInt11countl_zeroEv.exit.thread ], [ %i.as, %_ZNK4llvm5APInt11countl_zeroEv.exit ]
  %.sroa.2.0 = phi i64 [ 0, %_ZNK4llvm5APInteqERKS0_.exit ], [ 0, %.split ], [ 4294967296, %_ZNK4llvm5APInt11countl_zeroEv.exit.thread ], [ 4294967296, %_ZNK4llvm5APInt11countl_zeroEv.exit ]
  %.sroa.014.0.insert.ext = zext i32 %.sroa.014.0 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.2.0, %.sroa.014.0.insert.ext
  ret i64 %.sroa.014.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !23
  %i.e = icmp ult i32 %2, 65
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.f, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = zext i32 %2 to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !24
  %i.l = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.l, i64 %i.j, i1 false)
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.m, align 8, !tbaa !23, !alias.scope !670
  %i.n = icmp ult i32 %2, 65                      ; 4 uses
  br i1 %i.n, label %_ZN4llvm5APInt7getZeroEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext i32 %2 to i64
  %i.p = add nuw nsw i64 %i.o, 63
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21, !noalias !670 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false), !noalias !670
  store i64 0, ptr %i.s, align 8, !tbaa !26, !noalias !670
  %.pre = load i32, ptr %i.a, align 8, !tbaa !23
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.e, %bb.f
  %.pre95 = phi i32 [ %.pre, %bb.f ], [ %i.b, %bb.e ] ; 6 uses
  %.sink.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 4 uses
  store ptr %.sink.i, ptr %0, align 8, !tbaa !24, !alias.scope !670
  %i.t = icmp ult i32 %.pre95, 65
  %i.u = ptrtoint ptr %.sink.i to i64             ; 2 uses
  br i1 %i.t, label %.split, label %.lr.ph.i.i

.split:                                           ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.v = load i64, ptr %1, align 8, !tbaa !24
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4llvm5APIntC2ERKS0_.exit, label %bb.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.x = zext i32 %.pre95 to i64
  %i.y = add nuw nsw i64 %i.x, 63
  %i.z = lshr i64 %i.y, 6                         ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = load ptr, ptr %1, align 8, !tbaa !24
  %i.ac = shl i32 %i.aa, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.aj, %bb.h ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = or disjoint i32 %.019.i.i, %i.ah
  br label %_ZNK4llvm5APInt6isZeroEv.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = add i32 %.019.i.i, 64
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ak, label %bb.g, label %_ZNK4llvm5APInt6isZeroEv.exit, !llvm.loop !1

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.h, %.thread.i.i
  %.2.i.i = phi i32 [ %i.ai, %.thread.i.i ], [ %i.ac, %bb.h ]
  %i.al = and i32 %.pre95, 63
  %.not.i.i = icmp eq i32 %i.al, 0
  %.neg.i.i = or i32 %.pre95, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.am = add i32 %.2.i.i, %.neg15.i.i
  %i.an = icmp eq i32 %i.am, %.pre95
  br i1 %i.an, label %_ZN4llvm5APIntC2ERKS0_.exit, label %bb.i

bb.i:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.ao = icmp ugt i32 %2, %i.b
  br i1 %i.ao, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ap = udiv i32 %2, %i.b                       ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm5APInt7setBitsEjj.exit
  %i.aq = phi i32 [ %.pre95, %bb.j ], [ %i.cu, %_ZN4llvm5APInt7setBitsEjj.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %_ZN4llvm5APInt7setBitsEjj.exit ] ; 5 uses
  %i.ar = and i64 %indvars.iv, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = icmp ult i32 %i.aq, 65
  %i.au = load ptr, ptr %1, align 8
  %i.av = lshr i64 %indvars.iv, 6
  %i.aw = and i64 %i.av, 67108863
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  %.in.i.i = select i1 %i.at, ptr %1, ptr %i.ax
  %i.ay = load i64, ptr %.in.i.i, align 8, !tbaa !24
  %i.az = and i64 %i.ay, %i.as
  %.not70 = icmp eq i64 %i.az, 0
  br i1 %.not70, label %_ZN4llvm5APInt7setBitsEjj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bb = mul i32 %i.ap, %i.ba                    ; 5 uses
  %i.bc = add i32 %i.ba, 1
  %i.bd = mul i32 %i.bc, %i.ap                    ; 5 uses
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %_ZN4llvm5APInt7setBitsEjj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp ult i32 %i.bd, 65
  br i1 %i.bf, label %_ZN4llvm5APInt15setBitsSlowCaseEjj.exit.sink.split.i, label %bb.n

_ZN4llvm5APInt15setBitsSlowCaseEjj.exit.sink.split.i: ; preds = %bb.m
  %.neg.i = add i32 %i.bb, 64
  %i.bg = sub i32 %.neg.i, %i.bd
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = shl i64 %i.bi, %i.bj
  %i.bl = load ptr, ptr %0, align 8
  %.sink.i42 = select i1 %i.n, ptr %0, ptr %i.bl  ; 2 uses
  %i.bm = load i64, ptr %.sink.i42, align 8, !tbaa !24
  %i.bn = or i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %.sink.i42, align 8, !tbaa !24
  %.pre94 = load i32, ptr %i.a, align 8, !tbaa !23
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = lshr i32 %i.bb, 6                       ; 3 uses
  %i.bp = lshr i32 %i.bd, 6                       ; 4 uses
  %i.bq = and i32 %i.bb, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nsw i64 -1, %i.br                   ; 3 uses
  %i.bt = and i32 %i.bd, 63                       ; 2 uses
  %.not.i.i40 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i40, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = sub nuw nsw i32 64, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = lshr i64 -1, %i.bv                      ; 2 uses
  %i.bx = icmp eq i32 %i.bp, %i.bo
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = and i64 %i.bw, %i.bs
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %0, align 8, !tbaa !24
  %i.ca = zext nneg i32 %i.bp to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !26
  %i.cd = or i64 %i.cc, %i.bw
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.1.i.i = phi i64 [ %i.bs, %bb.n ], [ %i.by, %bb.p ], [ %i.bs, %bb.q ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.cf = zext nneg i32 %i.bo to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.ci = or i64 %i.ch, %.1.i.i
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !26
  %.022.i.i = add nuw nsw i32 %i.bo, 1            ; 2 uses
  %i.cj = icmp samesign ult i32 %.022.i.i, %i.bp
  br i1 %i.cj, label %.lr.ph.preheader.i.i, label %_ZN4llvm5APInt7setBitsEjj.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.ck = zext nneg i32 %.022.i.i to i64          ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bp to i64 ; 2 uses
  %6 = udiv i32 %2, %i.b
  %7 = trunc i64 %indvars.iv to i32
  %i.cl = mul i32 %6, %7
  %i.cm = lshr i32 %i.cl, 6
  %i.cn = xor i32 %i.cm, -1
  %i.co = sext i32 %i.cn to i64
  %i.cp = add nsw i64 %i.co, %wide.trip.count.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %.lr.ph.i.i41.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.cp, -4                      ; 3 uses
  %i.cq = add nsw i64 %n.vec, %i.ck
  %invariant.gep = getelementptr [8 x i8], ptr %i.ce, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> splat (i64 -1), ptr %gep, align 8, !tbaa !26
  store <2 x i64> splat (i64 -1), ptr %i.cr, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !666

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZN4llvm5APInt7setBitsEjj.exit, label %.lr.ph.i.i41.preheader

.lr.ph.i.i41.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.ck, %.lr.ph.preheader.i.i ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.lr.ph.i.i41.preheader, %.lr.ph.i.i41
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i41 ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i41.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i
  store i64 -1, ptr %i.ct, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN4llvm5APInt7setBitsEjj.exit, label %.lr.ph.i.i41, !llvm.loop !667

_ZN4llvm5APInt7setBitsEjj.exit:                   ; preds = %.lr.ph.i.i41, %middle.block, %bb.r, %_ZN4llvm5APInt15setBitsSlowCaseEjj.exit.sink.split.i, %bb.l, %bb.k
  %i.cu = phi i32 [ %i.aq, %bb.k ], [ %i.aq, %bb.r ], [ %.pre94, %_ZN4llvm5APInt15setBitsSlowCaseEjj.exit.sink.split.i ], [ %i.aq, %bb.l ], [ %i.aq, %middle.block ], [ %i.aq, %.lr.ph.i.i41 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond, label %_ZN4llvm5APIntC2ERKS0_.exit, label %bb.k, !llvm.loop !668

bb.s:                                             ; preds = %bb.i
  %i.cv = udiv i32 %i.b, %2                       ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %3, label %.split81.us, label %.split81

.split81.us:                                      ; preds = %bb.s, %_ZN4llvm5APInt6setBitEj.exit.us
  %i.cy = phi i64 [ %i.ei, %_ZN4llvm5APInt6setBitEj.exit.us ], [ %i.u, %bb.s ] ; 4 uses
  %i.cz = phi ptr [ %i.ej, %_ZN4llvm5APInt6setBitEj.exit.us ], [ %.sink.i, %bb.s ] ; 4 uses
  %.080.us = phi i32 [ %i.ek, %_ZN4llvm5APInt6setBitEj.exit.us ], [ 0, %bb.s ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.da = mul i32 %.080.us, %i.cv
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.cv, i32 noundef %i.da)
  %i.db = load i32, ptr %i.cx, align 8, !tbaa !23 ; 5 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.thread.us, label %bb.t

bb.t:                                             ; preds = %.split81.us
  %i.dd = icmp ult i32 %i.db, 65
  br i1 %i.dd, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.us, label %.lr.ph.i.i43.us

.lr.ph.i.i43.us:                                  ; preds = %bb.t
  %i.de = zext i32 %i.db to i64
  %i.df = add nuw nsw i64 %i.de, 63
  %i.dg = lshr i64 %i.df, 6                       ; 2 uses
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.dj = shl i32 %i.dh, 6
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i43.us
  %indvars.iv.i.i44.us = phi i64 [ 0, %.lr.ph.i.i43.us ], [ %indvars.iv.next.i.i47.us, %bb.v ] ; 2 uses
  %.0811.i.i.us = phi i32 [ 0, %.lr.ph.i.i43.us ], [ %i.dn, %bb.v ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i.i44.us
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !26 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -1
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = add i32 %.0811.i.i.us, 64
  %indvars.iv.next.i.i47.us = add nuw nsw i64 %indvars.iv.i.i44.us, 1 ; 2 uses
  %exitcond.not.i.i48.us = icmp eq i64 %indvars.iv.next.i.i47.us, %i.dg
  br i1 %exitcond.not.i.i48.us, label %.split65.us, label %bb.u, !llvm.loop !12

bb.w:                                             ; preds = %bb.u
  %i.do = xor i64 %i.dl, -1
  %i.dp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = or disjoint i32 %.0811.i.i.us, %i.dq
  br label %.split65.us

.split65.us:                                      ; preds = %bb.v, %bb.w
  %.1.i.i45.us = phi i32 [ %i.dr, %bb.w ], [ %i.dj, %bb.v ]
  %i.ds = icmp eq i32 %.1.i.i45.us, %i.db
  call void @_ZdaPv(ptr noundef nonnull %i.di) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %i.ds, label %bb.x, label %_ZN4llvm5APInt6setBitEj.exit.us

_ZNK4llvm5APInt9isAllOnesEv.exit.thread.us:       ; preds = %bb.t
  %i.dt = load i64, ptr %4, align 8, !tbaa !24
  %i.du = sub nuw nsw i32 64, %i.db
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = lshr i64 -1, %i.dv
  %i.dx = icmp eq i64 %i.dt, %i.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %i.dx, label %bb.x, label %_ZN4llvm5APInt6setBitEj.exit.us

_ZNK4llvm5APInt9isAllOnesEv.exit.thread.thread.us: ; preds = %.split81.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.thread.us, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.us, %.split65.us
  %i.dy = and i32 %.080.us, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz                    ; 2 uses
  br i1 %i.n, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = lshr i32 %.080.us, 6
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ec ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.ef = or i64 %i.ee, %i.ea
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !26
  br label %_ZN4llvm5APInt6setBitEj.exit.us

bb.z:                                             ; preds = %bb.x
  %i.eg = or i64 %i.cy, %i.ea                     ; 3 uses
  store i64 %i.eg, ptr %0, align 8, !tbaa !24
  %i.eh = inttoptr i64 %i.eg to ptr
  br label %_ZN4llvm5APInt6setBitEj.exit.us

_ZN4llvm5APInt6setBitEj.exit.us:                  ; preds = %bb.z, %bb.y, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.us, %.split65.us
  %i.ei = phi i64 [ %i.eg, %bb.z ], [ %i.cy, %bb.y ], [ %i.cy, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.us ], [ %i.cy, %.split65.us ]
  %i.ej = phi ptr [ %i.eh, %bb.z ], [ %i.cz, %bb.y ], [ %i.cz, %_ZNK4llvm5APInt9isAllOnesEv.exit.thread.us ], [ %i.cz, %.split65.us ]
  %i.ek = add i32 %.080.us, 1                     ; 2 uses
  %.not.us = icmp eq i32 %i.ek, %2
  br i1 %.not.us, label %_ZN4llvm5APIntC2ERKS0_.exit, label %.split81.us, !llvm.loop !669

.split81:                                         ; preds = %bb.s, %_ZN4llvm5APInt6setBitEj.exit
  %i.el = phi i64 [ %i.ft, %_ZN4llvm5APInt6setBitEj.exit ], [ %i.u, %bb.s ] ; 4 uses
  %i.em = phi ptr [ %i.fu, %_ZN4llvm5APInt6setBitEj.exit ], [ %.sink.i, %bb.s ] ; 4 uses
  %.080 = phi i32 [ %i.fv, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %bb.s ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.en = mul i32 %.080, %i.cv
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.cv, i32 noundef %i.en)
  %i.eo = load i32, ptr %i.cw, align 8, !tbaa !23 ; 5 uses
  %i.ep = icmp ult i32 %i.eo, 65
  br i1 %i.ep, label %_ZNK4llvm5APInt6isZeroEv.exit60.thread, label %.lr.ph.i.i49

_ZNK4llvm5APInt6isZeroEv.exit60.thread:           ; preds = %.split81
  %i.eq = load i64, ptr %5, align 8, !tbaa !24
  %i.er = icmp eq i64 %i.eq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.er, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.ac

.lr.ph.i.i49:                                     ; preds = %.split81
  %i.es = zext i32 %i.eo to i64
  %i.et = add nuw nsw i64 %i.es, 63
  %i.eu = lshr i64 %i.et, 6                       ; 2 uses
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ex = shl i32 %i.ev, 6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i49
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i52, %bb.ab ], [ %i.eu, %.lr.ph.i.i49 ] ; 2 uses
  %.019.i.i51 = phi i32 [ %i.fe, %bb.ab ], [ 0, %.lr.ph.i.i49 ] ; 2 uses
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i50, -1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i52
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !26 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ab, label %.thread.i.i53

.thread.i.i53:                                    ; preds = %bb.aa
  %i.fb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = or disjoint i32 %.019.i.i51, %i.fc
  br label %.split68

bb.ab:                                            ; preds = %bb.aa
  %i.fe = add i32 %.019.i.i51, 64
  %i.ff = icmp samesign ugt i64 %indvars.iv.i50, 1
  br i1 %i.ff, label %bb.aa, label %.split68, !llvm.loop !1

.split68:                                         ; preds = %bb.ab, %.thread.i.i53
  %.2.i.i55 = phi i32 [ %i.fd, %.thread.i.i53 ], [ %i.ex, %bb.ab ]
  %i.fg = and i32 %i.eo, 63
  %.not.i.i56 = icmp eq i32 %i.fg, 0
  %.neg.i.i57 = or i32 %i.eo, -64
  %.neg15.i.i58 = select i1 %.not.i.i56, i32 0, i32 %.neg.i.i57
  %i.fh = add i32 %.2.i.i55, %.neg15.i.i58
  %i.fi = icmp eq i32 %i.fh, %i.eo
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #22
end_hunk_0
