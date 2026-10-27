Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Sccp?download=true
inline.NumInlined: 336
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau8Bytecode15SccpInterpreter13evaluateArithE10LuauOpcodeNS0_5BcRefINS0_6BcInstEEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %i.s, i64 24, i1 false)
  %.pre79 = load i32, ptr %8, align 4             ; 3 uses
  %i.t = load i32, ptr %7, align 4, !tbaa !61     ; 3 uses
  %i.u = icmp eq i32 %i.t, 3
  %i.v = icmp eq i32 %.pre79, 3
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.w

bb.d:                                             ; preds = %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit65
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.y = load i8, ptr %i.x, align 4, !tbaa !63, !range !27, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !63, !range !27, !noundef !16
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit66, label %bb.f

bb.f:                                             ; preds = %_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit66: ; preds = %_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ae = load i8, ptr %i.w, align 4, !tbaa !33
  %i.af = icmp eq i8 %i.ae, 1
  %i.ag = load i8, ptr %i.ad, align 4
  %i.ah = icmp eq i8 %i.ag, 1
  %or.cond63 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond63, label %bb.g, label %.thread84

bb.g:                                             ; preds = %_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit66
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !18 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18 ; 7 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  switch i32 %2, label %bb.j [
    i32 81, label %bb.i
    i32 37, label %bb.i
    i32 36, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  store i32 1, ptr %0, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.an, align 4, !tbaa !62
  br label %.critedge

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ao = and i32 %2, -3
  %or.cond8 = icmp eq i32 %i.ao, 36
  br i1 %or.cond8, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %0, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ap, align 4, !tbaa !62
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  switch i32 %2, label %bb.t [
    i32 33, label %bb.m
    i32 34, label %bb.n
    i32 35, label %bb.o
    i32 37, label %bb.p
    i32 81, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = sext i32 %i.aj to i64
  %i.ar = sext i32 %i.al to i64
  %i.as = add nsw i64 %i.ar, %i.aq
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.at = sext i32 %i.aj to i64
  %i.au = sext i32 %i.al to i64
  %i.av = sub nsw i64 %i.at, %i.au
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.aw = sext i32 %i.aj to i64
  %i.ax = sext i32 %i.al to i64
  %i.ay = mul nsw i64 %i.ax, %i.aw
  br label %bb.u

bb.p:                                             ; preds = %bb.l
  %i.az = sext i32 %i.aj to i64
  %i.ba = sext i32 %i.al to i64                   ; 2 uses
  %i.bb = srem i64 %i.az, %i.ba                   ; 2 uses
  %.not59 = icmp eq i64 %i.bb, 0
  br i1 %.not59, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not61.unshifted = xor i32 %i.al, %i.aj
  %.not6177 = icmp slt i32 %.not61.unshifted, 0
  %i.bc = select i1 %.not6177, i64 %i.ba, i64 0
  %spec.select = add nsw i64 %i.bb, %i.bc
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  %i.bd = sext i32 %i.aj to i64                   ; 2 uses
  %i.be = sext i32 %i.al to i64                   ; 2 uses
  %i.bf = sdiv i64 %i.bd, %i.be                   ; 3 uses
  %i.bg = srem i64 %i.bd, %i.be
  %i.bh = icmp slt i64 %i.bf, 0
  br i1 %i.bh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not = icmp ne i64 %i.bg, 0
  %i.bi = sext i1 %.not to i64
  %spec.select64 = add nsw i64 %i.bf, %i.bi
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  store i32 1, ptr %0, align 4, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bj, align 4, !tbaa !62
  br label %.critedge

bb.u:                                             ; preds = %bb.s, %bb.q, %bb.r, %bb.o, %bb.n, %bb.m
  %.053 = phi i64 [ %i.as, %bb.m ], [ %i.av, %bb.n ], [ %i.ay, %bb.o ], [ %i.bf, %bb.r ], [ %spec.select, %bb.q ], [ %spec.select64, %bb.s ] ; 2 uses
  %i.bk = add nsw i64 %.053, -32768
  %or.cond10 = icmp ult i64 %i.bk, -65536
  br i1 %or.cond10, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %0, align 4, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bl, align 4, !tbaa !62
  br label %.critedge

.thread:                                          ; preds = %bb.p, %bb.u
  %.05375 = phi i64 [ %.053, %bb.u ], [ 0, %bb.p ]
  %i.bm = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  %i.bn = trunc nsw i64 %.05375 to i32
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef %i.bn)
  store i32 3, ptr %0, align 4, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bs, align 4, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %i.br, ptr %i.bt, align 4
  br label %.critedge

bb.w:                                             ; preds = %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit65
  %i.bu = icmp eq i32 %i.t, 2
  %i.bv = icmp eq i32 %.pre79, 2
  %or.cond13 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond13, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !62, !range !27, !noundef !16
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit: ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !62, !range !27, !noundef !16
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67, label %bb.z

bb.z:                                             ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67: ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !66
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call i64 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.ce, i32 noundef %2) ; 2 uses
  %i.ci = and i64 %i.ch, 4294967296
  %.not76 = icmp eq i64 %i.ci, 0
  br i1 %.not76, label %bb.aa, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit68

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit68: ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67
  %.sroa.0.0.extract.trunc = trunc i64 %i.ch to i32
  store i32 2, ptr %0, align 4, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.cj, align 4, !tbaa !18
  br label %.critedge.sink.split

bb.aa:                                            ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67
  store i32 1, ptr %0, align 4, !tbaa !61
  br label %.critedge.sink.split

bb.ab:                                            ; preds = %bb.w
  %i.ck = icmp eq i32 %i.t, 0
  %i.cl = icmp eq i32 %.pre79, 0
  %or.cond16 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond16, label %bb.ac, label %.thread84

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %0, align 4, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cm, align 4, !tbaa !62
  br label %.critedge

.thread84:                                        ; preds = %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit, %_ZNRSt8optionalIN4Luau8Bytecode5BcImmEE5valueEv.exit66, %bb.ab
  store i32 1, ptr %0, align 4, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cn, align 4, !tbaa !62
  br label %.critedge

.critedge.sink.split:                             ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit68, %bb.aa
  %.sink87 = phi i8 [ 0, %bb.aa ], [ 1, %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit68 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink87, ptr %9, align 4, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.i, %bb.t, %bb.v, %.thread, %bb.k, %.thread84, %bb.ac
  %.sink = phi i8 [ 0, %.thread84 ], [ 0, %bb.ac ], [ 0, %bb.i ], [ 0, %bb.t ], [ 0, %bb.v ], [ 1, %.thread ], [ 0, %bb.k ], [ 0, %.critedge.sink.split ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sink, ptr %i.co, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.Luau::Bytecode::ConstnessLattice", align 4 ; 25 uses
  %5 = alloca %"struct.Luau::Bytecode::ConstnessLattice", align 4 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.c = load i32, ptr %2, align 4, !noalias !97
  %i.d = and i32 %i.c, 15
  switch i32 %i.d, label %bb.c [
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  store i32 1, ptr %4, align 4, !tbaa !61, !alias.scope !97
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.e, align 4, !tbaa !62, !alias.scope !97
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.f, align 4, !tbaa !63, !alias.scope !97
  br label %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4Luau13DenseHashMap2INS_8Bytecode4BcOpENS1_16ConstnessLatticeENS1_8BcOpHashESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2), !noalias !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %i.g, i64 24, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit

_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.i = load i32, ptr %3, align 4, !noalias !98
  %i.j = and i32 %i.i, 15
  switch i32 %i.j, label %bb.e [
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit
  store i32 1, ptr %5, align 4, !tbaa !61, !alias.scope !98
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.k, align 4, !tbaa !62, !alias.scope !98
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.l, align 4, !tbaa !63, !alias.scope !98
  br label %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62

bb.e:                                             ; preds = %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit
  %i.m = tail call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4Luau13DenseHashMap2INS_8Bytecode4BcOpENS1_16ConstnessLatticeENS1_8BcOpHashESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3), !noalias !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62

_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62: ; preds = %bb.d, %bb.e
  switch i32 %1, label %bb.o [
    i32 32, label %.critedge
    i32 29, label %.critedge
    i32 28, label %.critedge
    i32 31, label %.critedge
  ]

.critedge:                                        ; preds = %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62
  %i.n = load i32, ptr %4, align 4, !tbaa !61
  switch i32 %i.n, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread" [
    i32 2, label %bb.f
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i8, ptr %i.o, align 4, !tbaa !62, !range !27, !noundef !16
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNKRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.r), !inline_history !96
  br i1 %i.w, label %bb.j, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread"

bb.h:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.y = load i8, ptr %i.x, align 4, !tbaa !63, !range !27, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit": ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !33
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread"

bb.j:                                             ; preds = %_ZNKRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit.i, %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit"
  %i.ad = load i32, ptr %5, align 4, !tbaa !61
  switch i32 %i.ad, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread" [
    i32 2, label %bb.k
    i32 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !62, !range !27, !noundef !16
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNKRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit.i65, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNKRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit.i65: ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.ah), !inline_history !96
  br i1 %i.am, label %bb.o, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread"

bb.m:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !63, !range !27, !noundef !16
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit66", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit66": ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !33
  %i.as = icmp eq i8 %i.ar, 1
  br i1 %i.as, label %bb.o, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread"

bb.o:                                             ; preds = %_ZNKRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit.i65, %_ZN4Luau8Bytecode9SccpState14operandLatticeERKNS0_4BcOpE.exit62, %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit66"
  %i.at = load i32, ptr %4, align 4, !tbaa !61    ; 2 uses
  %i.au = icmp eq i32 %i.at, 2
  %i.av = load i32, ptr %5, align 4               ; 2 uses
  %i.aw = icmp eq i32 %i.av, 2
  %or.cond6 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond6, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !62, !range !27, !noundef !16
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit: ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !62, !range !27, !noundef !16
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67, label %bb.r

bb.r:                                             ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67: ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.bf)
  br i1 %i.bj, label %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67._crit_edge, label %"_ZZN4Luau8Bytecode15SccpInterpreter27evaluateComparisonConditionE10LuauOpcodeRKNS0_4BcOpES5_ENK3$_0clERKNS0_16ConstnessLatticeE.exit.thread"

_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67._crit_edge: ; preds = %_ZNRSt8optionalIN4Luau8Bytecode4BcOpEE5valueEv.exit67
  %.pre89 = load i32, ptr %4, align 4, !tbaa !61
  %.pre90 = load i32, ptr %5, align 4
  br label %bb.s

end_hunk_0
