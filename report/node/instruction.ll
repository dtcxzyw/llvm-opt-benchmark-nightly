Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction?download=true
inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2v88internal8compiler12ParallelMove6EqualsERKS2_:bb.a
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp eq i64 %i.g, %i.n
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.o = icmp eq ptr %i.b, %i.d
  br i1 %i.o, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.p = add nuw i64 %.0810, 1                    ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %.not13 = icmp ult i64 %i.p, %i.v
  br i1 %.not13, label %.lr.ph, label %.loopexit, !llvm.loop !17

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.w = phi ptr [ %i.r, %bb.b ], [ %i.d, %.preheader ]
  %.0810 = phi i64 [ %i.p, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.0810
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0810
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 @_ZNK2v88internal8compiler12MoveOperands6EqualsERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.ab) ; 3 uses
  br i1 %i.ac, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.ac, %bb.b ], [ %i.ac, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal8compiler12MoveOperands6EqualsERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 6 uses
  %i.b = and i64 %i.a, 7                          ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = icmp eq i64 %i.b, 4
  br i1 %i.e, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.b, 4
  br i1 %i.f, label %bb.d, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %i.a, 8
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.a, 3840
  %i.j = icmp ne i64 %i.i, 0
  %i.k = and i1 %i.j, %i.h
  %i.l = and i64 %i.a, -4088
  %i.m = select i1 %i.k, i64 288, i64 0
  %i.n = or disjoint i64 %i.l, %i.m
  %i.o = or disjoint i64 %i.n, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.02.i.i.i = phi i64 [ %i.o, %bb.d ], [ %i.a, %bb.c ]
  %i.p = load i64, ptr %i.d, align 8              ; 5 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp samesign ugt i64 %i.q, 4
  br i1 %i.r, label %bb.e, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i
  %i.s = and i64 %i.p, 8
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i64 %i.p, 3840
  %i.v = icmp ne i64 %i.u, 0
  %i.w = and i1 %i.v, %i.t
  %i.x = and i64 %i.p, -4088
  %i.y = select i1 %i.w, i64 288, i64 0
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = or disjoint i64 %i.z, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i, %bb.e
  %.02.i4.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.p, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i ]
  %i.ab = icmp eq i64 %.02.i.i.i, %.02.i4.i.i
  br i1 %i.ab, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.ac = load i64, ptr %1, align 8               ; 5 uses
  %i.ad = and i64 %i.ac, 7                        ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = icmp eq i64 %i.ad, 4
  br i1 %i.ag, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp samesign ugt i64 %i.ad, 4
  br i1 %i.ah, label %bb.h, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i5

bb.h:                                             ; preds = %bb.g
  %i.ai = and i64 %i.ac, 8
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = and i64 %i.ac, 3840
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = and i1 %i.al, %i.aj
  %i.an = and i64 %i.ac, -4088
  %i.ao = select i1 %i.am, i64 288, i64 0
  %i.ap = or disjoint i64 %i.an, %i.ao
  %i.aq = or disjoint i64 %i.ap, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i5

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i5: ; preds = %bb.h, %bb.g
  %.02.i.i.i6 = phi i64 [ %i.aq, %bb.h ], [ %i.ac, %bb.g ]
  %i.ar = load i64, ptr %i.af, align 8            ; 5 uses
  %i.as = and i64 %i.ar, 7
  %i.at = icmp samesign ugt i64 %i.as, 4
  br i1 %i.at, label %bb.i, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9

bb.i:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i5
  %i.au = and i64 %i.ar, 8
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = and i64 %i.ar, 3840
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = and i1 %i.ax, %i.av
  %i.az = and i64 %i.ar, -4088
  %i.ba = select i1 %i.ay, i64 288, i64 0
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = or disjoint i64 %i.bb, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i5, %bb.i
  %.02.i4.i.i8 = phi i64 [ %i.bc, %bb.i ], [ %i.ar, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i5 ]
  %i.bd = icmp eq i64 %.02.i.i.i6, %.02.i4.i.i8
  br i1 %i.bd, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11: ; preds = %bb.f, %bb.b, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.be = icmp eq i64 %i.b, 4
  %i.bf = icmp eq ptr %0, %1                      ; 2 uses
  %i.bg = load i64, ptr %1, align 8
  %i.bh = icmp eq i64 %i.a, %i.bg
  %.0.i = select i1 %i.be, i1 %i.bf, i1 %i.bh
  br i1 %.0.i, label %bb.j, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9.thread

bb.j:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bl = and i64 %i.bk, 7
  %i.bm = icmp eq i64 %i.bl, 4
  %i.bn = load i64, ptr %i.bj, align 8
  %i.bo = icmp eq i64 %i.bk, %i.bn
  %.0.i10 = select i1 %i.bm, i1 %i.bf, i1 %i.bo
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9.thread

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9.thread: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11, %bb.j, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9
  %.0 = phi i1 [ true, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit9 ], [ false, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread11 ], [ %.0.i10, %bb.j ], [ true, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler12ParallelMove9EliminateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.09, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8compiler11InstructionC2Ej(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8compiler11InstructionC2EjmPNS1_18InstructionOperandEmS4_mS4_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #9 align 2 {
bb.a:
  %8 = ptrtoaddr ptr %7 to i64
  %9 = ptrtoaddr ptr %5 to i64
  %10 = ptrtoaddr ptr %3 to i64
  %11 = ptrtoaddr ptr %0 to i64                   ; 3 uses
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = trunc i64 %2 to i32
  %i.c = trunc i64 %4 to i32
  %i.d = shl i32 %i.c, 8
  %i.e = or i32 %i.d, %i.b
  %i.f = trunc i64 %6 to i32
  %i.g = shl i32 %i.f, 24
  %i.h = or i32 %i.e, %i.g
  store i32 %i.h, ptr %i.a, align 4
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br i1 %.not, label %.preheader27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 10
  br i1 %min.iters.check, label %.lr.ph.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = sub i64 %11, %10
  %i.k = add i64 %i.j, 39
  %diff.check = icmp ult i64 %i.k, 31
  br i1 %diff.check, label %.lr.ph.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8
  %wide.load44 = load <2 x i64>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %wide.load, ptr %i.m, align 8
  store <2 x i64> %wide.load44, ptr %i.o, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader27, label %.lr.ph.preheader77

.lr.ph.preheader77:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.02329.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader77, %.lr.ph.prol
  %.02329.prol = phi i64 [ %i.r, %.lr.ph.prol ], [ %.02329.ph, %.lr.ph.preheader77 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader77 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.02329.prol
  %i.r = add nuw i64 %.02329.prol, 1              ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %.02329.prol
  %i.t = load i64, ptr %i.q, align 8
  store i64 %i.t, ptr %i.s, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader77
  %.02329.unr = phi i64 [ %.02329.ph, %.lr.ph.preheader77 ], [ %i.r, %.lr.ph.prol ]
  %i.u = sub i64 %.02329.ph, %2
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %.preheader27, label %.lr.ph

.preheader27:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.not37 = icmp eq i64 %4, 0
  br i1 %.not37, label %.preheader, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader27
  %min.iters.check48 = icmp ult i64 %4, 12
  br i1 %min.iters.check48, label %.lr.ph32.preheader76, label %vector.memcheck45

vector.memcheck45:                                ; preds = %.lr.ph32.preheader
  %i.w = shl i64 %2, 3
  %i.x = add i64 %i.w, %11
  %i.y = sub i64 %i.x, %9
  %i.z = add i64 %i.y, 39
  %diff.check46 = icmp ult i64 %i.z, 31
  br i1 %diff.check46, label %.lr.ph32.preheader76, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck45
  %n.vec50 = and i64 %4, -4                       ; 4 uses
  %i.aa = add i64 %2, %n.vec50                    ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %.ptr, i64 %2
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next55, %vector.body51 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index52 ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %index52 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load53 = load <2 x i64>, ptr %i.ac, align 8
  %wide.load54 = load <2 x i64>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %wide.load53, ptr %i.ad, align 8
  store <2 x i64> %wide.load54, ptr %i.af, align 8
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.ag, label %middle.block56, label %vector.body51, !llvm.loop !20

middle.block56:                                   ; preds = %vector.body51
  %cmp.n57 = icmp eq i64 %4, %n.vec50
  br i1 %cmp.n57, label %.preheader, label %.lr.ph32.preheader76

.lr.ph32.preheader76:                             ; preds = %vector.memcheck45, %.lr.ph32.preheader, %middle.block56
  %.02231.ph = phi i64 [ 0, %vector.memcheck45 ], [ 0, %.lr.ph32.preheader ], [ %n.vec50, %middle.block56 ] ; 3 uses
  %.130.ph = phi i64 [ %2, %vector.memcheck45 ], [ %2, %.lr.ph32.preheader ], [ %i.aa, %middle.block56 ] ; 2 uses
  %xtraiter78 = and i64 %4, 3                     ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader76, %.lr.ph32.prol
  %.02231.prol = phi i64 [ %i.al, %.lr.ph32.prol ], [ %.02231.ph, %.lr.ph32.preheader76 ] ; 2 uses
  %.130.prol = phi i64 [ %i.ai, %.lr.ph32.prol ], [ %.130.ph, %.lr.ph32.preheader76 ] ; 2 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph32.prol ], [ 0, %.lr.ph32.preheader76 ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02231.prol
  %i.ai = add i64 %.130.prol, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %.130.prol
  %i.ak = load i64, ptr %i.ah, align 8
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = add nuw i64 %.02231.prol, 1             ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol, !llvm.loop !21

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader76
  %.lcssa.unr = phi i64 [ poison, %.lr.ph32.preheader76 ], [ %i.ai, %.lr.ph32.prol ]
  %.02231.unr = phi i64 [ %.02231.ph, %.lr.ph32.preheader76 ], [ %i.al, %.lr.ph32.prol ]
  %.130.unr = phi i64 [ %.130.ph, %.lr.ph32.preheader76 ], [ %i.ai, %.lr.ph32.prol ]
  %i.am = sub i64 %.02231.ph, %4
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.preheader, label %.lr.ph32

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02329 = phi i64 [ %i.bb, %.lr.ph ], [ %.02329.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.02329
  %i.ap = add nuw i64 %.02329, 1                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %.02329
  %i.ar = load i64, ptr %i.ao, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ap
  %i.at = add nuw i64 %.02329, 2                  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %i.ap
  %i.av = load i64, ptr %i.as, align 8
  store i64 %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.at
  %i.ax = add nuw i64 %.02329, 3                  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %i.at
  %i.az = load i64, ptr %i.aw, align 8
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ax
  %i.bb = add nuw i64 %.02329, 4                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %i.ax
  %i.bd = load i64, ptr %i.ba, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %exitcond.not.3 = icmp eq i64 %i.bb, %2
  br i1 %exitcond.not.3, label %.preheader27, label %.lr.ph, !llvm.loop !22

.preheader:                                       ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32, %middle.block56, %.preheader27
  %.1.lcssa = phi i64 [ %2, %.preheader27 ], [ %i.aa, %middle.block56 ], [ %.lcssa.unr, %.lr.ph32.prol.loopexit ], [ %i.cl, %.lr.ph32 ] ; 5 uses
  %.not38 = icmp eq i64 %6, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %.preheader
  %min.iters.check63 = icmp ult i64 %6, 12
  br i1 %min.iters.check63, label %.lr.ph36.preheader75, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph36.preheader
  %i.be = shl i64 %.1.lcssa, 3
  %i.bf = add i64 %i.be, %11
  %i.bg = sub i64 %i.bf, %8
  %i.bh = add i64 %i.bg, 39
  %diff.check61 = icmp ult i64 %i.bh, 31
  br i1 %diff.check61, label %.lr.ph36.preheader75, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck60
  %n.vec65 = and i64 %6, -4                       ; 4 uses
  %i.bi = add i64 %.1.lcssa, %n.vec65
  %i.bj = getelementptr [8 x i8], ptr %.ptr, i64 %.1.lcssa
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next70, %vector.body66 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index67 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bj, i64 %index67 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load68 = load <2 x i64>, ptr %i.bk, align 8
  %wide.load69 = load <2 x i64>, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x i64> %wide.load68, ptr %i.bl, align 8
  store <2 x i64> %wide.load69, ptr %i.bn, align 8
  %index.next70 = add nuw i64 %index67, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.bo, label %middle.block71, label %vector.body66, !llvm.loop !23

middle.block71:                                   ; preds = %vector.body66
  %cmp.n72 = icmp eq i64 %6, %n.vec65
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph36.preheader75

.lr.ph36.preheader75:                             ; preds = %vector.memcheck60, %.lr.ph36.preheader, %middle.block71
  %.035.ph = phi i64 [ 0, %vector.memcheck60 ], [ 0, %.lr.ph36.preheader ], [ %n.vec65, %middle.block71 ] ; 3 uses
  %.234.ph = phi i64 [ %.1.lcssa, %vector.memcheck60 ], [ %.1.lcssa, %.lr.ph36.preheader ], [ %i.bi, %middle.block71 ] ; 2 uses
  %xtraiter81 = and i64 %6, 3                     ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol

.lr.ph36.prol:                                    ; preds = %.lr.ph36.preheader75, %.lr.ph36.prol
  %.035.prol = phi i64 [ %i.bt, %.lr.ph36.prol ], [ %.035.ph, %.lr.ph36.preheader75 ] ; 2 uses
  %.234.prol = phi i64 [ %i.bq, %.lr.ph36.prol ], [ %.234.ph, %.lr.ph36.preheader75 ] ; 2 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %.lr.ph36.prol ], [ 0, %.lr.ph36.preheader75 ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.035.prol
  %i.bq = add i64 %.234.prol, 1                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %.234.prol
  %i.bs = load i64, ptr %i.bp, align 8
  store i64 %i.bs, ptr %i.br, align 8
  %i.bt = add nuw i64 %.035.prol, 1               ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %.lr.ph36.prol.loopexit, label %.lr.ph36.prol, !llvm.loop !24

.lr.ph36.prol.loopexit:                           ; preds = %.lr.ph36.prol, %.lr.ph36.preheader75
  %.035.unr = phi i64 [ %.035.ph, %.lr.ph36.preheader75 ], [ %i.bt, %.lr.ph36.prol ]
  %.234.unr = phi i64 [ %.234.ph, %.lr.ph36.preheader75 ], [ %i.bq, %.lr.ph36.prol ]
  %i.bu = sub i64 %.035.ph, %6
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge, label %.lr.ph36

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %.02231 = phi i64 [ %i.cp, %.lr.ph32 ], [ %.02231.unr, %.lr.ph32.prol.loopexit ] ; 5 uses
  %.130 = phi i64 [ %i.cl, %.lr.ph32 ], [ %.130.unr, %.lr.ph32.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02231
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %.130
  %i.by = load i64, ptr %i.bw, align 8
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02231
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = getelementptr [8 x i8], ptr %.ptr, i64 %.130
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.ca, align 8
  store i64 %i.cd, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02231
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr [8 x i8], ptr %.ptr, i64 %.130
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.cf, align 8
  store i64 %i.ci, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02231
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = add i64 %.130, 4                        ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %.ptr, i64 %.130
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.ck, align 8
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = add nuw i64 %.02231, 4                  ; 2 uses
  %exitcond40.not.3 = icmp eq i64 %i.cp, %4
  br i1 %exitcond40.not.3, label %.preheader, label %.lr.ph32, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36, %middle.block71, %.preheader
  ret void

.lr.ph36:                                         ; preds = %.lr.ph36.prol.loopexit, %.lr.ph36
  %.035 = phi i64 [ %i.dj, %.lr.ph36 ], [ %.035.unr, %.lr.ph36.prol.loopexit ] ; 5 uses
  %.234 = phi i64 [ %i.df, %.lr.ph36 ], [ %.234.unr, %.lr.ph36.prol.loopexit ] ; 5 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.035
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %.234
  %i.cs = load i64, ptr %i.cq, align 8
  store i64 %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.035
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = getelementptr [8 x i8], ptr %.ptr, i64 %.234
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cu, align 8
  store i64 %i.cx, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.035
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = getelementptr [8 x i8], ptr %.ptr, i64 %.234
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.cz, align 8
  store i64 %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.035
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = add i64 %.234, 4
  %i.dg = getelementptr [8 x i8], ptr %.ptr, i64 %.234
  %i.dh = getelementptr i8, ptr %i.dg, i64 24
  %i.di = load i64, ptr %i.de, align 8
  store i64 %i.di, ptr %i.dh, align 8
  %i.dj = add nuw i64 %.035, 4                    ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %i.dj, %6
  br i1 %exitcond41.not.3, label %._crit_edge, label %.lr.ph36, !llvm.loop !26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler11Instruction17AreMovesRedundantEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK2v88internal8compiler12ParallelMove11IsRedundantEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not14.i = icmp eq ptr %i.d, %i.f
  br i1 %.not14.i, label %_ZNK2v88internal8compiler12ParallelMove11IsRedundantEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i
  %.01015.i = phi ptr [ %i.aj, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.01015.i, align 8         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = and i64 %i.h, 7                          ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = icmp eq i64 %i.i, 4
  br i1 %i.l, label %_ZNK2v88internal8compiler12ParallelMove11IsRedundantEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.i, 4
  br i1 %i.m, label %bb.e, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %i.h, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = and i64 %i.h, 3840
  %i.q = icmp ne i64 %i.p, 0
  %i.r = and i1 %i.q, %i.o
  %i.s = and i64 %i.h, -4088
  %i.t = select i1 %i.r, i64 288, i64 0
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = or disjoint i64 %i.u, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.02.i.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.h, %bb.d ]
  %i.w = load i64, ptr %i.k, align 8              ; 5 uses
  %i.x = and i64 %i.w, 7
  %i.y = icmp samesign ugt i64 %i.x, 4
  br i1 %i.y, label %bb.f, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i

bb.f:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i
  %i.z = and i64 %i.w, 8
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i64 %i.w, 3840
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = and i1 %i.ac, %i.aa
  %i.ae = and i64 %i.w, -4088
  %i.af = select i1 %i.ad, i64 288, i64 0
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = or disjoint i64 %i.ag, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i: ; preds = %bb.f, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i
  %.02.i4.i.i.i = phi i64 [ %i.ah, %bb.f ], [ %i.w, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i ]
  %i.ai = icmp eq i64 %.02.i.i.i.i, %.02.i4.i.i.i
  br i1 %i.ai, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i, label %_ZNK2v88internal8compiler12ParallelMove11IsRedundantEv.exit

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.f
  br i1 %.not.i, label %_ZNK2v88internal8compiler12ParallelMove11IsRedundantEv.exit.thread, label %.lr.ph.i

_ZNK2v88internal8compiler12ParallelMove11IsRedundantEv.exit.thread: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i, %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
end_hunk_0
