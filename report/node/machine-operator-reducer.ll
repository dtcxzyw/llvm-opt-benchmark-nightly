inline.NumInlined: 3644
inline.NumDeleted: 476
begin_hunk_0_@_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64MulEPNS1_4NodeE:bb.a
  %i.de = load i16, ptr %i.dd, align 8
  %i.df = icmp eq i16 %i.de, 419
  br i1 %i.df, label %bb.r, label %bb.y

bb.r:                                             ; preds = %.thread40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.db)
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dh = load i8, ptr %i.dg, align 8, !range !5, !noundef !6
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.s, label %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit.thread41

bb.s:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %2, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit.i, %bb.s
  %.sroa.09.0.in.i = phi ptr [ %i.dk, %bb.s ], [ %.sroa.09.0.i, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit.i ]
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.0.in.i, align 8 ; 4 uses
  %.not13.i = icmp eq ptr %.sroa.09.0.i, null
  br i1 %.not13.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 16
  %i.do = load i32, ptr %i.dn, align 8            ; 2 uses
  %i.dp = lshr i32 %i.do, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dq ; 2 uses
  %i.ds = trunc i32 %i.do to i1
  br i1 %i.ds, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %i.dr, align 8
  br label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit.i

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit.i: ; preds = %bb.v, %bb.u
  %i.du = phi ptr [ %i.dt, %bb.v ], [ %i.dr, %bb.u ]
  %.not.i35 = icmp eq ptr %i.du, %i.dl
  br i1 %.not.i35, label %bb.t, label %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit.thread41

bb.w:                                             ; preds = %bb.t
  %i.dv = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #15
  unreachable

_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit.thread41: ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.y

_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit: ; preds = %bb.w
  %i.dx = load i64, ptr %i.d, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ea)
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.y

bb.y:                                             ; preds = %.thread40, %bb.n, %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit.thread41, %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit33, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit23, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit14, %bb.d, %bb.b
  %.sroa.013.1 = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.z, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit14 ], [ %1, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit23 ], [ %.sroa.0.0.sroa.speculated.i, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit33 ], [ %1, %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EE9OwnsInputEPNS1_4NodeE.exit.thread41 ], [ null, %bb.n ], [ null, %.thread40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.sroa.013.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt32DivEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.138", align 8   ; 5 uses
  %3 = alloca %"struct.std::array.138", align 8   ; 5 uses
  %4 = alloca %"struct.v8::internal::compiler::BinopMatcher", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.c = load i8, ptr %i.b, align 4, !range !5, !noundef !6 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.l = load i8, ptr %i.k, align 4, !range !5, !noundef !6 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = load i32, ptr %i.n, align 8              ; 8 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.o, 1
  %i.t = select i1 %i.m, i1 %i.s, i1 false
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.a, align 8
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.v = and i8 %i.c, %i.l
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.h, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit28

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit28: ; preds = %bb.g
  %i.w = call noundef i32 @_ZN2v84base4bits11SignedDiv32Eii(i32 noundef %i.f, i32 noundef %i.o) #14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.y, i32 noundef %i.w) #14
  br label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ab = load ptr, ptr %i.j, align 8
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.ae, i32 noundef 0) #14 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder11Word32EqualEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.ag, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.am, align 8
  %i.an = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, ptr noundef %i.al, i32 noundef 2, ptr noundef nonnull %3, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ao = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder11Word32EqualEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.an, ptr %2, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.af, ptr %i.at, align 8
  %i.au = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ap, ptr noundef %i.as, i32 noundef 2, ptr noundef nonnull %2, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i32 %i.o, -1
  %i.aw = select i1 %i.m, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.ay, i32 noundef 0) #14
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.az)
  %i.ba = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.ba)
  call void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2) #14
  %i.bb = load ptr, ptr %i.ax, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32SubEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.be) #14
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  br i1 %i.m, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit29, label %bb.r

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit29: ; preds = %bb.l
  %i.bf = call noundef i32 @llvm.abs.i32(i32 %i.o, i1 false) ; 2 uses
  %.not.i = icmp ne i32 %i.o, 0
  %i.bg = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bf)
  %i.bh = icmp samesign ult i32 %i.bg, 2
  %or.cond = select i1 %.not.i, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.m, label %_ZN2v84base4bits12IsPowerOfTwoIjEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread

bb.m:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit29
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true) ; 3 uses
  %i.bj = icmp samesign ugt i32 %i.bi, 1
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32SarEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aa, i32 noundef 31)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ %i.bk, %bb.n ], [ %i.aa, %bb.m ]
  %i.bl = sub nuw nsw i32 32, %i.bi
  %i.bm = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32ShrEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.0, i32 noundef %i.bl)
  %i.bn = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer8Int32AddEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bm, ptr noundef %i.aa)
  %i.bo = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32SarEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bn, i32 noundef %i.bi)
  br label %bb.p

_ZN2v84base4bits12IsPowerOfTwoIjEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit29
  %i.bp = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer8Int32DivEPNS1_4NodeEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aa, i32 noundef %i.bf)
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v84base4bits12IsPowerOfTwoIjEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread, %bb.o
  %.1 = phi ptr [ %i.bo, %bb.o ], [ %i.bp, %_ZN2v84base4bits12IsPowerOfTwoIjEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread ] ; 2 uses
  %i.bq = icmp slt i32 %i.o, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.bs, i32 noundef 0) #14
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.bt)
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %.1)
  call void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2) #14
  %i.bu = load ptr, ptr %i.br, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32SubEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.bx) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.p, %bb.q, %bb.k, %bb.i, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit28, %bb.f, %bb.d, %bb.b
  %.sroa.0.1 = phi ptr [ %i.i, %bb.b ], [ %i.r, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit28 ], [ %i.au, %bb.i ], [ %1, %bb.k ], [ %.1, %bb.p ], [ %1, %bb.q ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64DivEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.139", align 8   ; 4 uses
  %3 = alloca %"struct.std::array.138", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.138", align 8   ; 5 uses
  %5 = alloca %"struct.v8::internal::compiler::BinopMatcher.95", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !6 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.o, 1
  %i.t = select i1 %i.m, i1 %i.s, i1 false
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.a, align 8
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.v = and i8 %i.c, %i.l
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.h, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit28

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit28: ; preds = %bb.g
  %i.w = call noundef i64 @_ZN2v84base4bits11SignedDiv64Ell(i64 noundef %i.f, i64 noundef %i.o) #14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 noundef %i.w) #14
  %i.ad = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef %i.ac, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  br label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.af = load ptr, ptr %i.j, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef 0) #14
  %i.an = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef %i.am, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder11Word64EqualEv(ptr noundef nonnull align 8 dereferenceable(40) %i.as) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.ao, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.an, ptr %i.au, align 8
  %i.av = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, ptr noundef %i.at, i32 noundef 2, ptr noundef nonnull %4, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.aw = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder11Word64EqualEv(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.av, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.an, ptr %i.bb, align 8
  %i.bc = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef %i.ba, i32 noundef 2, ptr noundef nonnull %3, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.bd = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder18ChangeInt32ToInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.bc, ptr %2, align 8
  %i.bi = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.be, ptr noundef %i.bh, i32 noundef 1, ptr noundef nonnull %2, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.bj = icmp eq i64 %i.o, -1
  %i.bk = select i1 %i.m, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.bl)
  %i.bm = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.bm)
  call void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64SubEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.br) #14
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  br i1 %i.m, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit29, label %bb.r

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit29: ; preds = %bb.l
  %i.bs = call noundef i64 @llvm.abs.i64(i64 %i.o, i1 false) ; 2 uses
  %.not.i = icmp ne i64 %i.o, 0
  %i.bt = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.bs)
  %i.bu = icmp samesign ult i64 %i.bt, 2
  %or.cond = select i1 %.not.i, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.m, label %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.thread

bb.m:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit29
  %i.bv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.o, i1 true) ; 2 uses
  %i.bw = trunc nuw nsw i64 %i.bv to i32          ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.bv, 1
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64SarEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae, i32 noundef 63)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ %i.by, %bb.n ], [ %i.ae, %bb.m ]
  %i.bz = sub nuw nsw i32 64, %i.bw
  %i.ca = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64ShrEPNS1_4NodeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.0, i32 noundef %i.bz)
  %i.cb = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer8Int64AddEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ca, ptr noundef %i.ae)
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler22MachineOperatorReducer14ReduceWordNAndINS1_13Word32AdapterEEENS1_9ReductionEPNS1_4NodeE:bb.a
    i16 561, label %.critedge
    i16 564, label %.critedge
    i16 393, label %bb.i
    i16 415, label %bb.i
  ]

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.073, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 251658240
  %.not.i.i = icmp eq i32 %i.w, 251658240
  %i.x = ptrtoint ptr %.073 to i64
  %i.y = add i64 %i.x, 32
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.h:                                             ; preds = %.critedge
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 16
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.critedge, %bb.h
  %.sink.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.z, %.critedge ]
  %i.ae = load ptr, ptr %.sink.i.i, align 8
  br label %bb.g, !llvm.loop !20

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.073, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 251658240
  %.not.i.i74 = icmp eq i32 %i.ah, 251658240
  %i.ai = ptrtoint ptr %.073 to i64
  %i.aj = add i64 %i.ai, 32
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  br i1 %.not.i.i74, label %bb.j, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit79

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = add i64 %i.am, 16
  %i.ao = inttoptr i64 %i.an to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit79

_ZNK2v88internal8compiler4Node7InputAtEi.exit79:  ; preds = %bb.i, %bb.j
  %.in = phi ptr [ %i.ao, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ap = load ptr, ptr %.in, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit79
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.au, i32 noundef 0) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

.thread:                                          ; preds = %bb.g, %_ZNK2v88internal8compiler4Node7InputAtEi.exit79, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ax = call noundef zeroext i1 @_ZNK2v88internal8compiler11NodeMatcher12IsComparisonEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #14
  %.pre = load i8, ptr %i.b, align 4, !range !5   ; 2 uses
  %i.ay = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ax, label %bb.l, label %.critedge11

bb.l:                                             ; preds = %.thread
  %i.az = load i32, ptr %i.e, align 8
  %i.ba = icmp eq i32 %i.az, 1
  %i.bb = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.m, label %.critedge11

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

.critedge11:                                      ; preds = %.thread, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.be = load i8, ptr %i.bd, align 4, !range !5, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bf, i1 %i.ay, i1 false
  br i1 %i.bg, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit80, label %bb.n

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit80: ; preds = %.critedge11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load i32, ptr %i.e, align 8
  %i.bk = and i32 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.bm, i32 noundef %i.bk) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.n:                                             ; preds = %.critedge11
  %i.bo = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bo, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i16, ptr %i.bs, align 8
  %i.bu = icmp eq i16 %i.bt, 385
  %or.cond = select i1 %i.bu, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.bo)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 4, !range !5, !noundef !6
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.bz)
  %i.ca = load i8, ptr %i.b, align 4, !range !5, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit81, label %bb.r, !prof !10

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #15
  unreachable

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit81: ; preds = %bb.q
  %i.cc = load i8, ptr %i.bv, align 4, !range !5, !noundef !6
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.thread133, label %bb.s, !prof !10

bb.s:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit81
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #15
  unreachable

.thread133:                                       ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit81
  %i.ce = load i32, ptr %i.e, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.cj, i32 noundef %i.ch) #14
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.ck)
  %i.cl = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer15ReduceWord32AndEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1), !inline_history !21 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  %.sroa.0.0.sroa.speculated.i = select i1 %.not.i, ptr %1, ptr %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.pre168 = load i8, ptr %i.b, align 4, !range !5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.cm = phi i8 [ %.pre168, %bb.t ], [ %.pre, %bb.o ]
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit.i, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit.i: ; preds = %bb.u
  %i.co = load i32, ptr %i.e, align 8             ; 9 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit1.i, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit1.i: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit.i
  %i.cq = icmp eq i32 %i.co, -2147483648
  br i1 %i.cq, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit

_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit1.i
  %i.cr = add nsw i32 %i.co, 2147483647
  %i.cs = or i32 %i.cr, %i.co
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit1.i, %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit
  %i.cu = sub i32 0, %i.co                        ; 3 uses
  %i.cv = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i16, ptr %i.cx, align 8
  switch i16 %i.cy, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread [
    i16 388, label %bb.v
    i16 393, label %bb.x
    i16 397, label %bb.al
  ]

bb.v:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIjLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %i.cv)
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.da = load i8, ptr %i.cz, align 4, !range !5, !noundef !6
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit, label %.thread137

_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit: ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = and i32 %i.dd, 31
  %i.df = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.co, i1 true)
  %.not = icmp samesign ult i32 %i.de, %i.df
  br i1 %.not, label %.thread137, label %bb.w

.thread137:                                       ; preds = %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.w:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit
  %i.dg = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.x:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %i.cv)
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dj = load i8, ptr %i.di, align 4, !range !5, !noundef !6
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit85, label %bb.z

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit85: ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dm = load i32, ptr %i.dl, align 8            ; 2 uses
  %i.dn = and i32 %i.dm, %i.co
  %i.do = icmp eq i32 %i.dn, %i.dm
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit85
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.a, align 8
  %i.ds = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dq, ptr noundef %i.dr), !inline_history !22
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.ds)
  %i.dt = load ptr, ptr %i.dh, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dx) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.dy) #14
  %i.dz = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt32AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i86 = icmp eq ptr %i.dz, null
  %.sroa.0.0.sroa.speculated.i88 = select i1 %.not.i86, ptr %1, ptr %i.dz
  br label %.thread149

bb.z:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit85, %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i16, ptr %i.ed, align 8
  %i.ef = icmp eq i16 %i.ee, 397
  br i1 %i.ef, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %i.eb)
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.eh = load i8, ptr %i.eg, align 4, !range !5, !noundef !6
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit, label %.thread141

_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit: ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = srem i32 %i.ek, %i.cu
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ab, label %.thread141

.thread141:                                       ; preds = %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit
  %i.en = load ptr, ptr %i.dh, align 8
  %i.eo = load ptr, ptr %i.a, align 8
  %i.ep = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.en, ptr noundef %i.eo), !inline_history !22
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.ep)
  %i.eq = load ptr, ptr %6, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eu) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ev) #14
  %i.ew = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt32AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i90 = icmp eq ptr %i.ew, null
  %.sroa.0.0.sroa.speculated.i92 = select i1 %.not.i90, ptr %1, ptr %i.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread149

bb.ac:                                            ; preds = %.thread141, %bb.z
  %i.ex = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i16, ptr %i.ez, align 8
  %i.fb = icmp eq i16 %i.fa, 397
  br i1 %i.fb, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.ex)
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.fd = load i8, ptr %i.fc, align 4, !range !5, !noundef !6
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit94, label %.thread144

_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit94: ; preds = %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = srem i32 %i.fg, %i.cu
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ae, label %.thread144

.thread144:                                       ; preds = %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit94, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit94
  %i.fj = load ptr, ptr %i.ea, align 8
  %i.fk = load ptr, ptr %i.a, align 8
  %i.fl = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fj, ptr noundef %i.fk), !inline_history !22
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.fl)
  %i.fm = load ptr, ptr %7, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fq) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.fr) #14
  %i.fs = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt32AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i95 = icmp eq ptr %i.fs, null
  %.sroa.0.0.sroa.speculated.i97 = select i1 %.not.i95, ptr %1, ptr %i.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.thread149

bb.af:                                            ; preds = %.thread144, %bb.ac
  %i.ft = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i16, ptr %i.fv, align 8
  %i.fx = icmp eq i16 %i.fw, 388
  br i1 %i.fx, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.ft)
  %i.fy = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.co, i1 true)
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ga = load i8, ptr %i.fz, align 4, !range !5, !noundef !6
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = icmp eq i32 %i.gd, %i.fy
  %i.gf = select i1 %i.gb, i1 %i.ge, i1 false
  br i1 %i.gf, label %.thread146, label %bb.ah

.thread146:                                       ; preds = %bb.ag
  %i.gg = load ptr, ptr %i.dh, align 8
  %i.gh = load ptr, ptr %i.a, align 8
  %i.gi = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gg, ptr noundef %i.gh), !inline_history !22
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.gi)
  %i.gj = load ptr, ptr %8, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gn) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %1, ptr noundef %i.go) #14
  %i.gp = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt32AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) ; 2 uses
  %.not.i98 = icmp eq ptr %i.gp, null
  %.sroa.0.0.sroa.speculated.i100 = select i1 %.not.i98, ptr %1, ptr %i.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.thread149

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.gq = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i16, ptr %i.gs, align 8
  %i.gu = icmp eq i16 %i.gt, 388
  br i1 %i.gu, label %bb.aj, label %.thread152

.thread152:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %i.gq)
  %i.gv = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.co, i1 true)
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.gx = load i8, ptr %i.gw, align 4, !range !5, !noundef !6
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = icmp eq i32 %i.ha, %i.gv
  %i.hc = select i1 %i.gy, i1 %i.hb, i1 false
  br i1 %i.hc, label %bb.ak, label %.thread155

.thread155:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

.thread149:                                       ; preds = %bb.y, %bb.ab, %.thread146, %bb.ae
  %.sroa.072.13.ph = phi ptr [ %.sroa.0.0.sroa.speculated.i97, %bb.ae ], [ %.sroa.0.0.sroa.speculated.i100, %.thread146 ], [ %.sroa.0.0.sroa.speculated.i92, %bb.ab ], [ %.sroa.0.0.sroa.speculated.i88, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.hd = load ptr, ptr %i.ea, align 8
  %i.he = load ptr, ptr %i.a, align 8
  %i.hf = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word32AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hd, ptr noundef %i.he), !inline_history !22
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.hf)
  %i.hg = load ptr, ptr %9, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.hg)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int32AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hk) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %1, ptr noundef %i.hl) #14
  %i.hm = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt32AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) ; 2 uses
  %.not.i101 = icmp eq ptr %i.hm, null
  %.sroa.0.0.sroa.speculated.i103 = select i1 %.not.i101, ptr %1, ptr %i.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.al:                                            ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.cv)
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ho = load i8, ptr %i.hn, align 4, !range !5, !noundef !6
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit105, label %.thread159

_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit105: ; preds = %bb.al
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.hr = load i32, ptr %i.hq, align 8
  %i.hs = srem i32 %i.hr, %i.cu
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.am, label %.thread159

.thread159:                                       ; preds = %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit105, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE12IsMultipleOfEi.exit105
  %i.hu = load ptr, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit.thread: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83, %.thread137, %.thread152, %.thread155, %.thread159, %bb.u, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit.i, %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit, %bb.w, %.thread149, %bb.ak, %bb.am, %.thread133, %bb.n, %bb.k, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit80, %bb.m, %bb.d, %bb.b
  %.sroa.072.17 = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.bc, %bb.m ], [ %i.bn, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit80 ], [ %i.av, %bb.k ], [ %i.hu, %bb.am ], [ %i.bo, %bb.n ], [ %.sroa.0.0.sroa.speculated.i, %.thread133 ], [ %.sroa.072.13.ph, %.thread149 ], [ %i.dg, %bb.w ], [ %.sroa.0.0.sroa.speculated.i103, %bb.ak ], [ null, %bb.u ], [ null, %_ZNK2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EE18IsNegativePowerOf2Ev.exit ], [ null, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit.i ], [ null, %.thread159 ], [ null, %.thread155 ], [ null, %.thread152 ], [ null, %.thread137 ], [ null, %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.sroa.072.17
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheck6DetectEPNS1_4NodeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::BinopMatcher", align 8 ; 7 uses
  %3 = alloca %"struct.v8::internal::compiler::BinopMatcher.80", align 8 ; 7 uses
  %4 = alloca %"struct.v8::internal::compiler::BinopMatcher.95", align 8 ; 7 uses
  %5 = alloca %"struct.v8::internal::compiler::BinopMatcher.96", align 8 ; 7 uses
  %6 = alloca %"struct.v8::internal::compiler::BinopMatcher.80", align 8 ; 7 uses
  %7 = alloca %"struct.v8::internal::compiler::BinopMatcher.80", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  switch i16 %i.c, label %bb.r [
    i16 427, label %bb.b
    i16 568, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIjLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %1)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i16, ptr %i.g, align 8
  %i.i = icmp eq i16 %i.h, 385
  br i1 %i.i, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIjLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.k = load i8, ptr %i.j, align 4, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.n = load i8, ptr %i.m, align 4, !range !5
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond, label %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit12, label %bb.e

_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit12: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = xor i32 %i.q, -1
  %i.u = and i32 %i.s, %i.t
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit12
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = icmp eq i16 %i.z, 568
  br i1 %i.aa, label %_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheckC2EPNS1_4NodeEjjb.exit, label %.sink.split

_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheckC2EPNS1_4NodeEjjb.exit: ; preds = %bb.d
  %i.ab = call noundef ptr @_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi(ptr noundef nonnull %i.w, i32 noundef 0)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.z

.sink.split:                                      ; preds = %bb.d, %_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheckC2EPNS1_4NodeEjjb.exit
  %.sink36 = phi ptr [ %i.ab, %_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheckC2EPNS1_4NodeEjjb.exit ], [ %i.w, %bb.d ]
  %.sink35 = phi i8 [ 1, %_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheckC2EPNS1_4NodeEjjb.exit ], [ 0, %bb.d ]
  store ptr %.sink36, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink35, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit12
  %.sink = phi i8 [ 0, %_ZNK2v88internal8compiler12ValueMatcherIjLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit12 ], [ 1, %.sink.split ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN2v88internal8compiler12_GLOBAL__N_113BitfieldCheck27TryDetectShiftAndMaskOneBitINS1_13Word64AdapterEEESt8optionalIS3_EPNS1_4NodeE.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 251658240
  %.not.i.i.i = icmp eq i32 %i.ai, 251658240
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = add i64 %i.aj, 32
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 16
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i.i = phi ptr [ %i.ap, %bb.j ], [ %i.al, %bb.i ]
  %i.aq = load ptr, ptr %.sink.i.i.i, align 8     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i16, ptr %i.as, align 8, !noalias !23
  %i.au = icmp eq i16 %i.at, 405
  br i1 %i.au, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !23
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %i.aq), !noalias !23
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aw = load i8, ptr %i.av, align 8, !range !5, !noalias !23, !noundef !6
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler22MachineOperatorReducer14ReduceWordNAndINS1_13Word64AdapterEEENS1_9ReductionEPNS1_4NodeE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.073, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 251658240
  %.not.i.i = icmp eq i32 %i.w, 251658240
  %i.x = ptrtoint ptr %.073 to i64
  %i.y = add i64 %i.x, 32
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.h:                                             ; preds = %.critedge
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 16
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.critedge, %bb.h
  %.sink.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.z, %.critedge ]
  %i.ae = load ptr, ptr %.sink.i.i, align 8
  br label %bb.g, !llvm.loop !29

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.073, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 251658240
  %.not.i.i74 = icmp eq i32 %i.ah, 251658240
  %i.ai = ptrtoint ptr %.073 to i64
  %i.aj = add i64 %i.ai, 32
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  br i1 %.not.i.i74, label %bb.j, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit79

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = add i64 %i.am, 16
  %i.ao = inttoptr i64 %i.an to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit79

_ZNK2v88internal8compiler4Node7InputAtEi.exit79:  ; preds = %bb.i, %bb.j
  %.in = phi ptr [ %i.ao, %bb.j ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ap = load ptr, ptr %.in, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit79
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef 0) #14
  %i.az = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef %i.ay, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

.thread:                                          ; preds = %bb.g, %_ZNK2v88internal8compiler4Node7InputAtEi.exit79, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bb = call noundef zeroext i1 @_ZNK2v88internal8compiler11NodeMatcher12IsComparisonEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #14
  %.pre = load i8, ptr %i.b, align 8, !range !5   ; 2 uses
  %i.bc = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.bb, label %bb.l, label %.critedge11

bb.l:                                             ; preds = %.thread
  %i.bd = load i64, ptr %i.e, align 8
  %i.be = icmp eq i64 %i.bd, 1
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.m, label %.critedge11

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.ba, align 8
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

.critedge11:                                      ; preds = %.thread, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load i8, ptr %i.bh, align 8, !range !5, !noundef !6
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = select i1 %i.bj, i1 %i.bc, i1 false
  br i1 %i.bk, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit80, label %bb.n

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit80: ; preds = %.critedge11
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = load i64, ptr %i.e, align 8
  %i.bo = and i64 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef %i.bo) #14
  %i.bv = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef %i.bu, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.n:                                             ; preds = %.critedge11
  %i.bw = load ptr, ptr %i.ba, align 8            ; 4 uses
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = icmp eq i16 %i.cb, 405
  %or.cond = select i1 %i.cc, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %i.bw)
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8, !range !5, !noundef !6
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.ch)
  %i.ci = load i8, ptr %i.b, align 8, !range !5, !noundef !6
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit81, label %bb.r, !prof !10

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #15
  unreachable

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit81: ; preds = %bb.q
  %i.ck = load i8, ptr %i.cd, align 8, !range !5, !noundef !6
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.thread119, label %bb.s, !prof !10

bb.s:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit81
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #15
  unreachable

.thread119:                                       ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit81
  %i.cm = load i64, ptr %i.e, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = and i64 %i.co, %i.cm
  %i.cq = call noundef ptr @_ZN2v88internal8compiler13Word64Adapter12IntNConstantEl(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.cp)
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.cq)
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceWordNAndINS1_13Word64AdapterEEENS1_9ReductionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull %1), !inline_history !30 ; 2 uses
  %.not.i = icmp eq ptr %i.cs, null
  %.sroa.0.0.sroa.speculated.i = select i1 %.not.i, ptr %1, ptr %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.pre154 = load i8, ptr %i.b, align 8, !range !5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.ct = phi i8 [ %.pre154, %bb.t ], [ %.pre, %bb.o ]
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit.i, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit.i: ; preds = %bb.u
  %i.cv = load i64, ptr %i.e, align 8             ; 9 uses
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit1.i, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit1.i: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit.i
  %i.cx = icmp eq i64 %i.cv, -9223372036854775808
  br i1 %i.cx, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit

_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit1.i
  %i.cy = add nsw i64 %i.cv, 9223372036854775807
  %i.cz = or i64 %i.cy, %i.cv
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit1.i, %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit
  %i.db = sub i64 0, %i.cv                        ; 3 uses
  %i.dc = load ptr, ptr %i.ba, align 8            ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i16, ptr %i.de, align 8
  switch i16 %i.df, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread [
    i16 408, label %bb.v
    i16 415, label %bb.x
    i16 419, label %bb.al
  ]

bb.v:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherImLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dh = load i8, ptr %i.dg, align 8, !range !5, !noundef !6
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZNK2v88internal8compiler12ValueMatcherImLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit, label %.thread123

_ZNK2v88internal8compiler12ValueMatcherImLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit: ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = and i64 %i.dk, 63
  %i.dm = call range(i64 0, 64) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %.not = icmp samesign ult i64 %i.dl, %i.dm
  br i1 %.not, label %.thread123, label %bb.w

.thread123:                                       ; preds = %_ZNK2v88internal8compiler12ValueMatcherImLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.w:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherImLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit
  %i.dn = load ptr, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.x:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.dc)
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.dq = load i8, ptr %i.dp, align 8, !range !5, !noundef !6
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit85, label %bb.z

_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit85: ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = and i64 %i.dt, %i.cv
  %i.dv = icmp eq i64 %i.du, %i.dt
  br i1 %i.dv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit85
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.a, align 8
  %i.dz = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dx, ptr noundef %i.dy), !inline_history !31
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.dz)
  %i.ea = load ptr, ptr %i.do, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ee) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.ef) #14
  %i.eg = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i86 = icmp eq ptr %i.eg, null
  %.sroa.0.0.sroa.speculated.i88 = select i1 %.not.i86, ptr %1, ptr %i.eg
  br label %.thread135

bb.z:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit85, %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i16, ptr %i.ek, align 8
  %i.em = icmp eq i16 %i.el, 419
  br i1 %i.em, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull %i.ei)
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.eo = load i8, ptr %i.en, align 8, !range !5, !noundef !6
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit, label %.thread127

_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit: ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = srem i64 %i.er, %i.db
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.ab, label %.thread127

.thread127:                                       ; preds = %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit
  %i.eu = load ptr, ptr %i.do, align 8
  %i.ev = load ptr, ptr %i.a, align 8
  %i.ew = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.eu, ptr noundef %i.ev), !inline_history !31
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.ew)
  %i.ex = load ptr, ptr %7, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fb) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.fc) #14
  %i.fd = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i90 = icmp eq ptr %i.fd, null
  %.sroa.0.0.sroa.speculated.i92 = select i1 %.not.i90, ptr %1, ptr %i.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.thread135

bb.ac:                                            ; preds = %.thread127, %bb.z
  %i.fe = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i16, ptr %i.fg, align 8
  %i.fi = icmp eq i16 %i.fh, 419
  br i1 %i.fi, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull %i.fe)
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fk = load i8, ptr %i.fj, align 8, !range !5, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit94, label %.thread130

_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit94: ; preds = %bb.ad
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = srem i64 %i.fn, %i.db
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.ae, label %.thread130

.thread130:                                       ; preds = %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit94, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit94
  %i.fq = load ptr, ptr %i.eh, align 8
  %i.fr = load ptr, ptr %i.a, align 8
  %i.fs = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fq, ptr noundef %i.fr), !inline_history !31
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.fs)
  %i.ft = load ptr, ptr %8, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fx) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.fy) #14
  %i.fz = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1) ; 2 uses
  %.not.i95 = icmp eq ptr %i.fz, null
  %.sroa.0.0.sroa.speculated.i97 = select i1 %.not.i95, ptr %1, ptr %i.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.thread135

bb.af:                                            ; preds = %.thread130, %bb.ac
  %i.ga = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i16, ptr %i.gc, align 8
  %i.ge = icmp eq i16 %i.gd, 408
  br i1 %i.ge, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull %i.ga)
  %i.gf = call range(i64 0, 64) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.gh = load i8, ptr %i.gg, align 8, !range !5, !noundef !6
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = icmp eq i64 %i.gk, %i.gf
  %i.gm = select i1 %i.gi, i1 %i.gl, i1 false
  br i1 %i.gm, label %.thread132, label %bb.ah

.thread132:                                       ; preds = %bb.ag
  %i.gn = load ptr, ptr %i.do, align 8
  %i.go = load ptr, ptr %i.a, align 8
  %i.gp = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gn, ptr noundef %i.go), !inline_history !31
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.gp)
  %i.gq = load ptr, ptr %9, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gu) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %1, ptr noundef %i.gv) #14
  %i.gw = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) ; 2 uses
  %.not.i98 = icmp eq ptr %i.gw, null
  %.sroa.0.0.sroa.speculated.i100 = select i1 %.not.i98, ptr %1, ptr %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %.thread135

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.gx = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i16, ptr %i.gz, align 8
  %i.hb = icmp eq i16 %i.ha, 408
  br i1 %i.hb, label %bb.aj, label %.thread138

.thread138:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull %i.gx)
  %i.hc = call range(i64 0, 64) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.he = load i8, ptr %i.hd, align 8, !range !5, !noundef !6
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = icmp eq i64 %i.hh, %i.hc
  %i.hj = select i1 %i.hf, i1 %i.hi, i1 false
  br i1 %i.hj, label %bb.ak, label %.thread141

.thread141:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

.thread135:                                       ; preds = %bb.y, %bb.ab, %.thread132, %bb.ae
  %.sroa.072.13.ph = phi ptr [ %.sroa.0.0.sroa.speculated.i97, %bb.ae ], [ %.sroa.0.0.sroa.speculated.i100, %.thread132 ], [ %.sroa.0.0.sroa.speculated.i92, %bb.ab ], [ %.sroa.0.0.sroa.speculated.i88, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load ptr, ptr %i.eh, align 8
  %i.hl = load ptr, ptr %i.a, align 8
  %i.hm = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer9Word64AndEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hk, ptr noundef %i.hl), !inline_history !31
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0, ptr noundef %i.hm)
  %i.hn = load ptr, ptr %10, align 8
  call void @_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hr) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %1, ptr noundef %i.hs) #14
  %i.ht = call ptr @_ZN2v88internal8compiler22MachineOperatorReducer14ReduceInt64AddEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) ; 2 uses
  %.not.i101 = icmp eq ptr %i.ht, null
  %.sroa.0.0.sroa.speculated.i103 = select i1 %.not.i101, ptr %1, ptr %i.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.al:                                            ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIlLNS1_8IrOpcode5ValueE28EEES6_LNS0_21MachineRepresentationE5EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull %i.dc)
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.hv = load i8, ptr %i.hu, align 8, !range !5, !noundef !6
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit105, label %.thread145

_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit105: ; preds = %bb.al
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = srem i64 %i.hy, %i.db
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.am, label %.thread145

.thread145:                                       ; preds = %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit105, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE12IsMultipleOfEl.exit105
  %i.ib = load ptr, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread

_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit.thread: ; preds = %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83, %.thread123, %.thread138, %.thread141, %.thread145, %bb.u, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit.i, %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit, %bb.w, %.thread135, %bb.ak, %bb.am, %.thread119, %bb.n, %bb.k, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit80, %bb.m, %bb.d, %bb.b
  %.sroa.072.17 = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.bg, %bb.m ], [ %i.bv, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit80 ], [ %i.az, %bb.k ], [ %i.ib, %bb.am ], [ %i.bw, %bb.n ], [ %.sroa.0.0.sroa.speculated.i, %.thread119 ], [ %.sroa.072.13.ph, %.thread135 ], [ %i.dn, %bb.w ], [ %.sroa.0.0.sroa.speculated.i103, %bb.ak ], [ null, %bb.u ], [ null, %_ZNK2v88internal8compiler10IntMatcherIlLNS1_8IrOpcode5ValueE28EE18IsNegativePowerOf2Ev.exit ], [ null, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit.i ], [ null, %.thread145 ], [ null, %.thread141 ], [ null, %.thread138 ], [ null, %.thread123 ], [ null, %_ZNK2v88internal8compiler12ValueMatcherIlLNS1_8IrOpcode5ValueE28EE13ResolvedValueEv.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.sroa.072.17
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler22MachineOperatorReducer17TryMatchWord32RorEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::BinopMatcher", align 8 ; 6 uses
  %3 = alloca %"struct.v8::internal::compiler::BinopMatcher", align 8 ; 7 uses
  %4 = alloca %"struct.v8::internal::compiler::BinopMatcher", align 8 ; 8 uses
  %5 = alloca %"struct.v8::internal::compiler::BinopMatcher", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i16, ptr %i.d, align 8
  switch i16 %i.e, label %.thread [
    i16 388, label %bb.b
    i16 389, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp eq i16 %i.j, 389
  br i1 %i.k, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i16, ptr %i.o, align 8
  %i.q = icmp eq i16 %i.p, 388
  br i1 %i.q, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015 = phi ptr [ %i.b, %bb.b ], [ %i.m, %bb.c ]
  %.014 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %.015)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %.014)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.not = icmp eq ptr %i.s, %i.u
  br i1 %.not, label %bb.e, label %.thread29

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.w = load i8, ptr %i.v, align 4, !range !5, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.z = load i8, ptr %i.y, align 4, !range !5
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond37 = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond37, label %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit18, label %bb.g

_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit18: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = add nsw i32 %i.ae, %i.ac
  %.not17 = icmp eq i32 %i.af, 32
  br i1 %.not17, label %bb.f, label %.thread29

bb.f:                                             ; preds = %_ZNK2v88internal8compiler12ValueMatcherIiLNS1_8IrOpcode5ValueE27EE13ResolvedValueEv.exit18
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = icmp eq i16 %i.ai, 387
  %i.ak = and i32 %i.ac, 31
  %i.al = icmp eq i32 %i.ak, 0
  %or.cond = and i1 %i.al, %i.aj
  br i1 %or.cond, label %.thread29, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = icmp eq i16 %i.aq, 395
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = icmp eq i16 %i.aw, 395
  br i1 %i.ax, label %bb.i, label %.thread29

bb.i:                                             ; preds = %bb.g, %bb.h
  %.012 = phi ptr [ %i.at, %bb.h ], [ %i.an, %bb.g ]
  %.0 = phi ptr [ %i.an, %bb.h ], [ %i.at, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %.012)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.az = load i8, ptr %i.ay, align 4, !range !5, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp eq i32 %i.bc, 32
  %i.be = select i1 %i.ba, i1 %i.bd, i1 false
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not16 = icmp eq ptr %i.bg, %.0
  %or.cond34 = select i1 %i.be, i1 %.not16, i1 false
  br i1 %or.cond34, label %bb.j, label %.thread31

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = icmp eq i16 %i.bj, 387
  br i1 %i.bk, label %.thread31, label %bb.k

.thread31:                                        ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.thread29

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.pre = load ptr, ptr %i.r, align 8
end_hunk_2
