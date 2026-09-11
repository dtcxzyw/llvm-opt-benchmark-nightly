Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/redundancy-elimination?download=true
inline.NumInlined: 247
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2v88internal8compiler21RedundancyElimination16EffectPathChecks11LookupCheckEPNS1_4NodeEPNS1_7JSGraphE:bb.a
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::Type", align 8 ; 5 uses
  %.01547 = load ptr, ptr %0, align 8             ; 2 uses
  %.not48 = icmp eq ptr %.01547, null
  br i1 %.not48, label %.thread35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = ptrtoint ptr %1 to i64
  %i.d = add i64 %i.c, 32
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread
  %.01549 = phi ptr [ %.01547, %.lr.ph ], [ %.015, %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread ] ; 4 uses
  %i.g = load ptr, ptr %.01549, align 8           ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load i16, ptr %i.k, align 8              ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8 ; 8 uses
  switch i16 %i.l, label %.thread85.i [
    i16 280, label %bb.d
    i16 289, label %bb.e
    i16 288, label %bb.f
    i16 285, label %bb.g
    i16 123, label %bb.h
    i16 124, label %bb.k
    i16 286, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %.pre.off.i = add i16 %.pre.i, -289
  %switch.i = icmp ult i16 %.pre.off.i, 2
  br i1 %switch.i, label %bb.s, label %.thread85.i

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i16 %.pre.i, 290
  br i1 %i.m, label %bb.s, label %.thread85.i

bb.f:                                             ; preds = %bb.c
  switch i16 %.pre.i, label %.thread85.i [
    i16 283, label %bb.s
    i16 285, label %bb.s
  ]

bb.g:                                             ; preds = %bb.c
  %i.n = icmp eq i16 %.pre.i, 283
  br i1 %i.n, label %bb.s, label %.thread85.i

bb.h:                                             ; preds = %bb.c
  switch i16 %.pre.i, label %.thread85.i [
    i16 124, label %bb.s
    i16 125, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i8, ptr %i.o, align 8
  %i.q = icmp eq i8 %i.p, 5
  br i1 %i.q, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.r = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder18ChangeInt32ToInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #15
  %.fca.1.insert.i.i = insertvalue { i32, ptr } { i32 2, ptr poison }, ptr %i.r, 1
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.s = icmp eq i16 %.pre.i, 125
  br i1 %i.s, label %bb.l, label %.thread85.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i8, ptr %i.t, align 8
  %i.v = icmp eq i8 %i.u, 5
  br i1 %i.v, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.w = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder18ChangeInt32ToInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #15
  %.fca.1.insert.i68.i = insertvalue { i32, ptr } { i32 2, ptr poison }, ptr %i.w, 1
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  %i.x = icmp eq i16 %.pre.i, 287
  br i1 %i.x, label %bb.s, label %.thread85.i

.thread85.i:                                      ; preds = %bb.n, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.not62.i = icmp eq i16 %i.l, %.pre.i
  br i1 %.not62.i, label %bb.o, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread

bb.o:                                             ; preds = %.thread85.i
  switch i16 %i.l, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread [
    i16 273, label %bb.s
    i16 288, label %bb.s
    i16 289, label %bb.s
    i16 290, label %bb.s
    i16 283, label %bb.s
    i16 285, label %bb.s
    i16 230, label %bb.s
    i16 231, label %bb.s
    i16 59, label %bb.p
    i16 109, label %bb.s
    i16 110, label %bb.s
    i16 111, label %bb.s
    i16 112, label %bb.s
    i16 123, label %bb.s
    i16 131, label %bb.s
    i16 130, label %bb.s
    i16 125, label %bb.s
    i16 113, label %bb.s
    i16 114, label %bb.s
    i16 115, label %bb.s
    i16 116, label %bb.s
    i16 117, label %bb.s
    i16 119, label %bb.s
    i16 120, label %bb.q
    i16 122, label %bb.q
    i16 121, label %bb.q
    i16 124, label %bb.q
    i16 128, label %bb.q
    i16 129, label %bb.q
    i16 127, label %bb.r
    i16 126, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.y = call i64 @_ZN2v88internal8compiler15TypeGuardTypeOfEPKNS1_8OperatorE(ptr noundef nonnull %i.i) #15 ; 2 uses
  store i64 %i.y, ptr %5, align 8
  %i.z = load ptr, ptr %1, align 8
  %i.aa = call i64 @_ZN2v88internal8compiler15TypeGuardTypeOfEPKNS1_8OperatorE(ptr noundef %i.z) #15 ; 2 uses
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %.thread86.i, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.i

.thread86.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.s

_ZNK2v88internal8compiler4Type2IsES2_.exit.i:     ; preds = %bb.p
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %i.aa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.ac, label %bb.s, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.ad = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler26CheckMinusZeroParametersOfEPKNS1_8OperatorE(ptr noundef nonnull %i.i) #15
  %i.ae = load ptr, ptr %1, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler26CheckMinusZeroParametersOfEPKNS1_8OperatorE(ptr noundef %i.ae) #15
  %i.ag = load i8, ptr %i.ad, align 8
  %i.ah = load i8, ptr %i.af, align 8
  %.not64.i = icmp eq i8 %i.ag, %i.ah
  br i1 %.not64.i, label %bb.s, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.o
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler28CheckTaggedInputParametersOfEPKNS1_8OperatorE(ptr noundef nonnull %i.i) #15
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler28CheckTaggedInputParametersOfEPKNS1_8OperatorE(ptr noundef %i.aj) #15
  %i.al = load i8, ptr %i.ai, align 8
  %i.am = load i8, ptr %i.ak, align 8
  %.not63.i = icmp ugt i8 %i.al, %i.am
  br i1 %.not63.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %_ZNK2v88internal8compiler4Type2IsES2_.exit.i, %.thread86.i, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.f, %bb.e, %bb.d, %bb.b
  %.pn.i = phi { i32, ptr } [ { i32 1, ptr null }, %.thread86.i ], [ { i32 1, ptr null }, %bb.e ], [ { i32 1, ptr null }, %bb.d ], [ { i32 1, ptr null }, %bb.f ], [ { i32 1, ptr null }, %bb.f ], [ { i32 1, ptr null }, %bb.g ], [ { i32 1, ptr null }, %bb.h ], [ %.fca.1.insert.i.i, %bb.j ], [ { i32 1, ptr null }, %bb.i ], [ %.fca.1.insert.i68.i, %bb.m ], [ { i32 1, ptr null }, %bb.l ], [ { i32 1, ptr null }, %bb.n ], [ { i32 1, ptr null }, %_ZNK2v88internal8compiler4Type2IsES2_.exit.i ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.o ], [ { i32 1, ptr null }, %bb.q ], [ { i32 1, ptr null }, %bb.r ], [ { i32 1, ptr null }, %bb.b ] ; 2 uses
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ar = ptrtoint ptr %i.g to i64
  %i.as = add i64 %i.ar, 32
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = icmp slt i32 %i.ap, 1
  br i1 %i.au, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.s
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = load i32, ptr %i.aq, align 4
  %i.ax = and i32 %i.aw, 251658240
  %.not.i.i.i = icmp eq i32 %i.ax, 251658240
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = and i32 %i.ay, 251658240
  %.not.i.i69.i = icmp eq i32 %i.az, 251658240
  br label %bb.u

bb.t:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit71.i
  %i.ba = trunc nuw i64 %indvars.iv.next.i to i32
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit, label %bb.u, !llvm.loop !23

bb.u:                                             ; preds = %.lr.ph76, %bb.t
  %indvars.iv.i75 = phi i64 [ %i.av, %.lr.ph76 ], [ %indvars.iv.next.i, %bb.t ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i75, -1 ; 4 uses
  br i1 %.not.i.i.i, label %bb.v, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bc = load ptr, ptr %i.at, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = add i64 %i.bd, 16
  %i.bf = inttoptr i64 %i.be to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i:  ; preds = %bb.v, %bb.u
  %.sink.i.i.i = phi ptr [ %i.bf, %bb.v ], [ %i.at, %bb.u ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i, i64 %indvars.iv.next.i
  %i.bh = load ptr, ptr %i.bg, align 8
  br i1 %.not.i.i69.i, label %bb.w, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit71.i

bb.w:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i
  %i.bi = load ptr, ptr %i.e, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 16
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit71.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit71.i: ; preds = %bb.w, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i
  %.sink.i.i70.i = phi ptr [ %i.bl, %bb.w ], [ %i.e, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i70.i, i64 %indvars.iv.next.i
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not66.i = icmp eq ptr %i.bh, %i.bn
  br i1 %.not66.i, label %bb.t, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread, !llvm.loop !23

_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit: ; preds = %bb.t, %bb.s
  %.val18 = load i64, ptr %i.f, align 8           ; 3 uses
  %.not.i21 = icmp eq i64 %.val18, 0
  br i1 %.not.i21, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit
  %i.bo = load ptr, ptr %.01549, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i.i6.i = load i64, ptr %i.bp, align 8 ; 3 uses
  %.not1.i = icmp eq i64 %.sroa.0.0.copyload.i.i6.i, 0
  br i1 %.not1.i, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 %.sroa.0.0.copyload.i.i6.i, ptr %4, align 8
  %i.bq = icmp eq i64 %.sroa.0.0.copyload.i.i6.i, %.val18
  br i1 %i.bq, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread30, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit

_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread30: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit: ; preds = %bb.y
  %i.br = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.val18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %i.br, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread, label %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit, %bb.x, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread30
  %.sroa.019.0.i61 = extractvalue { i32, ptr } %.pn.i, 0
  %i.bs = load ptr, ptr %.01549, align 8          ; 2 uses
  %i.bt = icmp eq i32 %.sroa.019.0.i61, 2
  br i1 %i.bt, label %bb.z, label %.thread35

bb.z:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread
  %.sroa.8.0.i44 = extractvalue { i32, ptr } %.pn.i, 1
  %i.bu = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.bs, ptr %3, align 8
  %i.bv = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bu, ptr noundef %.sroa.8.0.i44, i32 noundef 1, ptr noundef nonnull %3, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.thread35

_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit71.i, %_ZNK2v88internal8compiler4Type2IsES2_.exit.i, %.thread85.i, %bb.q, %bb.o, %bb.r, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.01549, i64 8
  %.015 = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not = icmp eq ptr %.015, null
  br i1 %.not, label %.thread35, label %bb.b, !llvm.loop !24

.thread35:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread, %bb.a, %bb.z, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread
  %i.bx = phi ptr [ %i.bs, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread ], [ %i.bv, %bb.z ], [ null, %bb.a ], [ null, %_ZN2v88internal8compiler12_GLOBAL__N_113CheckSubsumesEPKNS1_4NodeES5_PNS1_22MachineOperatorBuilderE.exit.thread ]
  ret ptr %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler21RedundancyElimination16EffectPathChecks20LookupBoundsCheckForEPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 5 uses
  %.01121 = load ptr, ptr %0, align 8             ; 2 uses
  %.not22 = icmp eq ptr %.01121, null
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01123 = phi ptr [ %.01121, %.lr.ph ], [ %.011, %.critedge ] ; 4 uses
  %i.b = load ptr, ptr %.01123, align 8           ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp eq i16 %i.e, 273
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 251658240
  %.not.i.i = icmp eq i32 %i.i, 251658240
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = add i64 %i.j, 32
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, 16
  %i.p = inttoptr i64 %i.o to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.c, %bb.d
  %.sink.i.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ]
  %i.q = load ptr, ptr %.sink.i.i, align 8
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %.val = load i64, ptr %i.a, align 8             ; 3 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i6.i = load i64, ptr %i.s, align 8 ; 3 uses
  %.not1.i = icmp eq i64 %.sroa.0.0.copyload.i.i6.i, 0
  br i1 %.not1.i, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i64 %.sroa.0.0.copyload.i.i6.i, ptr %2, align 8
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i.i6.i, %.val
  br i1 %i.t, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread17, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit

_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread17: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit: ; preds = %bb.g
  %i.u = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.val) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %i.u, label %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread, label %.critedge

_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread: ; preds = %bb.e, %bb.f, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread17, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit
  %i.v = load ptr, ptr %.01123, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler23CheckBoundsParametersOfEPKNS1_8OperatorE(ptr noundef %i.w) #15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 8
  %i.z = and i32 %.sroa.0.0.copyload.i, 1
  %.not.i14 = icmp eq i32 %i.z, 0
  br i1 %.not.i14, label %bb.h, label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.b, %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.01123, i64 8
  %.011 = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !0

bb.h:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_112TypeSubsumesEPNS1_4NodeES4_.exit.thread
  %i.ab = load ptr, ptr %.01123, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.a, %bb.h
  %i.ac = phi ptr [ %i.ab, %bb.h ], [ null, %bb.a ], [ null, %.critedge ]
  ret ptr %i.ac
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler23CheckBoundsParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler21RedundancyElimination24PathChecksForEffectNodes3SetEPNS1_4NodeEPKNS2_16EffectPathChecksE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 16777215
  %i.d = zext nneg i32 %i.c to i64                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not = icmp ugt i64 %i.l, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = ashr exact i64 %i.q, 3
  %.not.i.i.not = icmp ugt i64 %i.r, %i.d
  br i1 %.not.i.i.not, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21RedundancyElimination16EffectPathChecksEE14EnsureCapacityEm.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler21RedundancyElimination16EffectPathChecksEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m)
  %.pre.i = load ptr, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21RedundancyElimination16EffectPathChecksEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21RedundancyElimination16EffectPathChecksEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.t = phi ptr [ %i.h, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m ; 2 uses
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21RedundancyElimination16EffectPathChecksEE6resizeEmRKS6_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21RedundancyElimination16EffectPathChecksEE14EnsureCapacityEm.exit.i
  %i.w = ptrtoaddr ptr %i.s to i64
  %i.x = ptrtoaddr ptr %i.t to i64
  %i.y = shl nuw nsw i64 %i.d, 3
  %i.z = add i64 %i.y, %i.x
end_hunk_0
