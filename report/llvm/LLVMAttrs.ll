Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMAttrs?download=true
inline.NumInlined: 32640
inline.NumDeleted: 14527
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4mlir4LLVM18AtomicOrderingAttr7classofENS_9AttributeE:bb.a
bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #24
  br label %bb.o

.thread179:                                       ; preds = %_ZNK4llvm5APInt2eqERKS0_.exit53, %.split69
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.r

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %.thread
  %i.bn = phi i1 [ true, %.thread ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ], [ %i.bj, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.pre168 = load i32, ptr %i.am, align 8, !tbaa !115
  %i.bo = icmp ugt i32 %.pre168, 64
  br i1 %i.bo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %12, align 8, !tbaa !116  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #24
  br label %bb.r

.thread180:                                       ; preds = %.split68, %_ZNK4llvm5APInt2eqERKS0_.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.u

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %.thread179
  %i.br = phi i1 [ true, %.thread179 ], [ %i.bn, %bb.q ], [ %i.bn, %bb.p ], [ %i.bn, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.pre169 = load i32, ptr %i.ae, align 8, !tbaa !115
  %i.bs = icmp ugt i32 %.pre169, 64
  br i1 %i.bs, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %10, align 8, !tbaa !116  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #24
  br label %bb.u

.thread181:                                       ; preds = %_ZNK4llvm5APInt2eqERKS0_.exit47, %.split67
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.x

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t, %.thread180
  %i.bv = phi i1 [ true, %.thread180 ], [ %i.br, %bb.t ], [ %i.br, %bb.s ], [ %i.br, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre170 = load i32, ptr %i.w, align 8, !tbaa !115
  %i.bw = icmp ugt i32 %.pre170, 64
  br i1 %i.bw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %8, align 8, !tbaa !116   ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #24
  br label %bb.x

.thread182:                                       ; preds = %.split66, %_ZNK4llvm5APInt2eqERKS0_.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.aa

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w, %.thread181
  %i.bz = phi i1 [ true, %.thread181 ], [ %i.bv, %bb.w ], [ %i.bv, %bb.v ], [ %i.bv, %bb.u ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre171 = load i32, ptr %i.o, align 8, !tbaa !115
  %i.ca = icmp ugt i32 %.pre171, 64
  br i1 %i.ca, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cb = load ptr, ptr %6, align 8, !tbaa !116   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #24
  br label %bb.aa

.thread183:                                       ; preds = %.split, %_ZNK4llvm5APInt2eqERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN4llvm5APIntD2Ev.exit65

.critedge37:                                      ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.critedge39

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z, %.thread182
  %i.cd = phi i1 [ true, %.thread182 ], [ %i.bz, %bb.z ], [ %i.bz, %bb.y ], [ %i.bz, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre172 = load i32, ptr %i.g, align 8, !tbaa !115
  %i.ce = icmp ugt i32 %.pre172, 64
  br i1 %i.ce, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit65

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %4, align 8, !tbaa !116   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN4llvm5APIntD2Ev.exit65, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.cf) #24
  br label %_ZN4llvm5APIntD2Ev.exit65

_ZN4llvm5APIntD2Ev.exit65:                        ; preds = %.thread183, %bb.aa, %bb.ab, %bb.ac
  %i.ch = phi i1 [ true, %.thread183 ], [ %i.cd, %bb.aa ], [ %i.cd, %bb.ab ], [ %i.cd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.critedge39

.critedge39:                                      ; preds = %.critedge37, %_ZN4llvm5APIntD2Ev.exit65
  %i.ci = phi i1 [ false, %.critedge37 ], [ %i.ch, %_ZN4llvm5APIntD2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.ci
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4LLVM18AtomicOrderingAttr3getEPNS_11MLIRContextENS0_14AtomicOrderingE(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %0, i32 noundef 64, i32 noundef 0) #22
  %i.b = tail call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.a, i64 noundef %1) #22
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4mlir4LLVM18AtomicOrderingAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr %i.a, ptr %i.e
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !116
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4LLVM5cconv14stringifyCConvENS1_5CConvE(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 102
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM5cconv14stringifyCConvENS1_5CConvE, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir4LLVM5cconv14stringifyCConvENS1_5CConvE.254, i64 %0
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.49.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.49.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM5cconv14symbolizeCConvEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread1656 [
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i50
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i60
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i70
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i80
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i200
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i150
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i120
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i130
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i270
    i64 24, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i430
    i64 20, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i420
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = xor i16 %i.a, 25443
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 99
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread1656

_ZN4llvmneENS_9StringRefES0_.exit.i.i10:          ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 1953718630
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = xor i32 %i.n, 25443
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not.i.i12 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i12, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i20

_ZN4llvmneENS_9StringRefES0_.exit.i.i20:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
  %i.s = load i32, ptr %0, align 1
  %i.t = xor i32 %i.s, 1684828003
  %i.u = getelementptr i8, ptr %0, i64 4
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = xor i32 %i.w, 25443
  %i.y = or i32 %i.t, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i.i22 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i22, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i100

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.a
  %i.ab = load i32, ptr %0, align 1
  %i.ac = xor i32 %i.ab, 828334947
  %i.ad = getelementptr i8, ptr %0, i64 4
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = xor i32 %i.af, 48
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.i32 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i40

_ZN4llvmneENS_9StringRefES0_.exit.i.i40:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.ak = load i32, ptr %0, align 1
  %i.al = xor i32 %i.ak, 828334947
  %i.am = getelementptr i8, ptr %0, i64 4
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.ao, 49
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not.i.i42 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i42, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread1656

_ZN4llvmneENS_9StringRefES0_.exit.i.i50:          ; preds = %bb.a
  %i.at = load i64, ptr %0, align 1
  %i.au = icmp ne i64 %i.at, 7161681517859139169
  %i.av = zext i1 %i.au to i32
  %.not.i.i52 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i52, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i290

_ZN4llvmneENS_9StringRefES0_.exit.i.i60:          ; preds = %bb.a
  %i.aw = load i64, ptr %0, align 1
  %i.ax = xor i64 %i.aw, 7311156825135870576
  %i.ay = getelementptr i8, ptr %0, i64 7
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 7161695871588720485
  %i.bb = or i64 %i.ax, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not.i.i62 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i62, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i110

_ZN4llvmneENS_9StringRefES0_.exit.i.i70:          ; preds = %bb.a
  %i.be = load i64, ptr %0, align 1
  %i.bf = xor i64 %i.be, 7311156825135870576
  %i.bg = getelementptr i8, ptr %0, i64 6
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = xor i64 %i.bh, 7161687045195130230
  %i.bj = or i64 %i.bf, %i.bi
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not.i.i72 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i72, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i90

_ZN4llvmneENS_9StringRefES0_.exit.i.i80:          ; preds = %bb.a
  %i.bm = load i32, ptr %0, align 1
  %i.bn = xor i32 %i.bm, 1718187891
  %i.bo = getelementptr i8, ptr %0, i64 3
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = xor i32 %i.bp, 1667462246
  %i.br = or i32 %i.bn, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i.i82 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i82, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i260

_ZN4llvmneENS_9StringRefES0_.exit.i.i90:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i70
  %i.bu = load i64, ptr %0, align 1
  %i.bv = xor i64 %i.bu, 8391157623037655139
  %i.bw = getelementptr i8, ptr %0, i64 6
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 7161694742095295603
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %.not.i.i92 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i92, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i140

_ZN4llvmneENS_9StringRefES0_.exit.i.i100:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
  %i.cc = load i32, ptr %0, align 1
  %i.cd = xor i32 %i.cc, 1818845556
  %i.ce = getelementptr i8, ptr %0, i64 4
  %i.cf = load i16, ptr %i.ce, align 1
  %i.cg = zext i16 %i.cf to i32
  %i.ch = xor i32 %i.cg, 25443
  %i.ci = or i32 %i.cd, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %.not.i.i102 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i102, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i280

_ZN4llvmneENS_9StringRefES0_.exit.i.i110:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i60
  %i.cl = load i64, ptr %0, align 1
  %i.cm = xor i64 %i.cl, 6873744694181324387
  %i.cn = getelementptr i8, ptr %0, i64 7
  %i.co = load i64, ptr %i.cn, align 1
  %i.cp = xor i64 %i.co, 7161685907096494943
  %i.cq = or i64 %i.cm, %i.cp
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not.i.i112 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i112, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i170

_ZN4llvmneENS_9StringRefES0_.exit.i.i120:         ; preds = %bb.a
  %i.ct = load i64, ptr %0, align 1
  %i.cu = xor i64 %i.ct, 7593478490006583155
  %i.cv = getelementptr i8, ptr %0, i64 3
  %i.cw = load i64, ptr %i.cv, align 1
  %i.cx = xor i64 %i.cw, 7161687032311608422
  %i.cy = or i64 %i.cu, %i.cx
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not.i.i122 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i122, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i160

_ZN4llvmneENS_9StringRefES0_.exit.i.i130:         ; preds = %bb.a
  %i.db = load i64, ptr %0, align 1
  %i.dc = xor i64 %i.db, 7161977346293381240
  %i.dd = getelementptr i8, ptr %0, i64 5
  %i.de = load i64, ptr %i.dd, align 1
  %i.df = xor i64 %i.de, 7161687045195392116
  %i.dg = or i64 %i.dc, %i.df
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not.i.i132 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i132, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i180

_ZN4llvmneENS_9StringRefES0_.exit.i.i140:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i90
  %i.dj = load i64, ptr %0, align 1
  %i.dk = xor i64 %i.dj, 8391157623033313400
  %i.dl = getelementptr i8, ptr %0, i64 6
  %i.dm = load i64, ptr %i.dl, align 1
  %i.dn = xor i64 %i.dm, 7161687045195396211
  %i.do = or i64 %i.dk, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %.not.i.i142 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i142, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i190

_ZN4llvmneENS_9StringRefES0_.exit.i.i150:         ; preds = %bb.a
  %i.dr = load i64, ptr %0, align 1
  %i.ds = xor i64 %i.dr, 8314612900571214433
  %i.dt = getelementptr i8, ptr %0, i64 8
  %i.du = load i16, ptr %i.dt, align 1
  %i.dv = zext i16 %i.du to i64
  %i.dw = xor i64 %i.dv, 25443
  %i.dx = or i64 %i.ds, %i.dw
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i.i152 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i152, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM5cconv5CConvEES6_E4CaseENS_13StringLiteralES6_.exit465.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i300

_ZN4llvmneENS_9StringRefES0_.exit.i.i160:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i120
end_hunk_0
begin_hunk_1_@_ZN4mlir4LLVM16stringifyDIFlagsB5cxx11ENS0_7DIFlagsE:bb.a
bb.cc:                                            ; preds = %bb.cb
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.115, i64 10)
  %.pre234.pre235.pre237.pre = load i32, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit155

bb.cd:                                            ; preds = %bb.cb
  %i.gr = zext i32 %.pre234.pre235.pre237.pre239 to i64
  %i.gs = load ptr, ptr %2, align 8, !tbaa !124
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gr ; 2 uses
  store ptr @.str.115, ptr %i.gt, align 1
  %.sroa.3.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 10, ptr %.sroa.3.0..sroa_idx.i154, align 1
  %i.gu = load i32, ptr %i.f, align 8, !tbaa !125
  %i.gv = add i32 %i.gu, 1                        ; 2 uses
  store i32 %i.gv, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit155

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit155: ; preds = %bb.cd, %bb.cc, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit152
  %.pre234.pre235.pre237 = phi i32 [ %i.gv, %bb.cd ], [ %.pre234.pre235.pre237.pre, %bb.cc ], [ %.pre234.pre235.pre237.pre239, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit152 ] ; 3 uses
  %i.gw = and i32 %.2, 134217728
  %.not65 = icmp eq i32 %i.gw, 0
  br i1 %.not65, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit155
  %i.gx = load i32, ptr %i.g, align 4, !tbaa !126
  %.not.i156 = icmp ult i32 %.pre234.pre235.pre237, %i.gx
  br i1 %.not.i156, label %bb.cg, label %bb.cf, !prof !127

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.116, i64 9)
  %.pre234.pre235.pre = load i32, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158

bb.cg:                                            ; preds = %bb.ce
  %i.gy = zext i32 %.pre234.pre235.pre237 to i64
  %i.gz = load ptr, ptr %2, align 8, !tbaa !124
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.gy ; 2 uses
  store ptr @.str.116, ptr %i.ha, align 1
  %.sroa.3.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 9, ptr %.sroa.3.0..sroa_idx.i157, align 1
  %i.hb = load i32, ptr %i.f, align 8, !tbaa !125
  %i.hc = add i32 %i.hb, 1                        ; 2 uses
  store i32 %i.hc, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158: ; preds = %bb.cg, %bb.cf, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit155
  %.pre234.pre235 = phi i32 [ %i.hc, %bb.cg ], [ %.pre234.pre235.pre, %bb.cf ], [ %.pre234.pre235.pre237, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit155 ] ; 3 uses
  %i.hd = and i32 %.2, 268435456
  %.not66 = icmp eq i32 %i.hd, 0
  br i1 %.not66, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158
  %i.he = load i32, ptr %i.g, align 4, !tbaa !126
  %.not.i159 = icmp ult i32 %.pre234.pre235, %i.he
  br i1 %.not.i159, label %bb.cj, label %bb.ci, !prof !127

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.117, i64 12)
  %.pre234.pre = load i32, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161

bb.cj:                                            ; preds = %bb.ch
  %i.hf = zext i32 %.pre234.pre235 to i64
  %i.hg = load ptr, ptr %2, align 8, !tbaa !124
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hf ; 2 uses
  store ptr @.str.117, ptr %i.hh, align 1
  %.sroa.3.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 12, ptr %.sroa.3.0..sroa_idx.i160, align 1
  %i.hi = load i32, ptr %i.f, align 8, !tbaa !125
  %i.hj = add i32 %i.hi, 1                        ; 2 uses
  store i32 %i.hj, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161: ; preds = %bb.cj, %bb.ci, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158
  %.pre234 = phi i32 [ %i.hj, %bb.cj ], [ %.pre234.pre, %bb.ci ], [ %.pre234.pre235, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit158 ] ; 3 uses
  %i.hk = and i32 %.2, 536870912
  %.not67 = icmp eq i32 %i.hk, 0
  br i1 %.not67, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit164, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161
  %i.hl = load i32, ptr %i.g, align 4, !tbaa !126
  %.not.i162 = icmp ult i32 %.pre234, %i.hl
  br i1 %.not.i162, label %bb.cm, label %bb.cl, !prof !127

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.118, i64 17)
  %.pre233 = load i32, ptr %i.f, align 8, !tbaa !125, !noalias !1266
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit164

bb.cm:                                            ; preds = %bb.ck
  %i.hm = zext i32 %.pre234 to i64
  %i.hn = load ptr, ptr %2, align 8, !tbaa !124
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.hm ; 2 uses
  store ptr @.str.118, ptr %i.ho, align 1
  %.sroa.3.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 17, ptr %.sroa.3.0..sroa_idx.i163, align 1
  %i.hp = load i32, ptr %i.f, align 8, !tbaa !125
  %i.hq = add i32 %i.hp, 1                        ; 2 uses
  store i32 %i.hq, ptr %i.f, align 8, !tbaa !125
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit164

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit164: ; preds = %bb.cm, %bb.cl, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161
  %i.hr = phi i32 [ %i.hq, %bb.cm ], [ %.pre233, %bb.cl ], [ %.pre234, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit161 ]
  %i.hs = load ptr, ptr %2, align 8, !tbaa !124, !noalias !1266 ; 2 uses
  %i.ht = zext i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.ht
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.hs, ptr noundef %i.hu, ptr nonnull @.str.119, i64 1)
  %i.hv = load ptr, ptr %2, align 8, !tbaa !124   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.e
  br i1 %i.hw, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit164
  call void @free(ptr noundef %i.hv) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit164, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.co

bb.co:                                            ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM16symbolizeDIFlagsEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread713

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1869768026
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread713

_ZN4llvmeqENS_9StringRefES0_.exit.thread713:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !126
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.119, i64 1, i32 noundef -1, i1 noundef zeroext true) #22
  %i.i = load ptr, ptr %4, align 8, !tbaa !124    ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !125  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not1306 = icmp eq i32 %i.j, 0
  br i1 %.not1306, label %.thread1010, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread713
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304
  %.01308 = phi i32 [ 0, %.lr.ph ], [ %i.jx, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304 ]
  %.0161307 = phi ptr [ %i.i, %.lr.ph ], [ %i.jy, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.0161307, i64 16, i1 false), !tbaa.struct !130
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = load i64, ptr %i.m, align 8, !tbaa !132
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.120, i64 6, i64 noundef 0) #22
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !133
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.120, i64 6, i64 noundef -1) #22
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !132  ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !133    ; 61 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  switch i64 %.sroa.speculated.i.i.i.i, label %.thread990 [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i102
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i120
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i129
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i156
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i201
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i192
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i264
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = icmp ne i32 %i.aa, 812935490
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ad = load i32, ptr %i.z, align 1
  %i.ae = icmp ne i32 %i.ad, 829712706
  %i.af = zext i1 %i.ae to i32
  %.not.i.i23 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.ag = load i32, ptr %i.z, align 1
  %i.ah = xor i32 %i.ag, 1986622032
  %i.ai = getelementptr i8, ptr %i.z, i64 3
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = xor i32 %i.aj, 1702125942
  %i.al = or i32 %i.ah, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not.i.i32 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i57

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.ao = load i64, ptr %i.z, align 1
  %i.ap = xor i64 %i.ao, 7310577382525465168
  %i.aq = getelementptr i8, ptr %i.z, i64 8
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = xor i64 %i.as, 100
  %i.au = or i64 %i.ap, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not.i.i41 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i255

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.ax = load i32, ptr %i.z, align 1
  %i.ay = xor i32 %i.ax, 1818391888
  %i.az = getelementptr i8, ptr %i.z, i64 4
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.bb, 25449
  %i.bd = or i32 %i.ay, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i50 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i138

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.bg = load i32, ptr %i.z, align 1
  %i.bh = xor i32 %i.bg, 1147434822
  %i.bi = getelementptr i8, ptr %i.z, i64 3
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = xor i32 %i.bj, 1818453316
  %i.bl = or i32 %i.bh, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not.i.i59 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i84

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.b
  %i.bo = load i64, ptr %i.z, align 1
  %i.bp = xor i64 %i.bo, 8028865239073189953
  %i.bq = getelementptr i8, ptr %i.z, i64 8
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = zext i16 %i.br to i64
  %i.bt = xor i64 %i.bs, 27491
  %i.bu = or i64 %i.bp, %i.bt
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %.not.i.i68 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i93

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %bb.b
  %i.bx = load i64, ptr %i.z, align 1
  %i.by = xor i64 %i.bx, 7234318610140980562
  %i.bz = getelementptr i8, ptr %i.z, i64 8
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = xor i64 %i.cb, 880044354
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not.i.i77 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i147

_ZN4llvmneENS_9StringRefES0_.exit.i.i84:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i57
  %i.cg = load i32, ptr %i.z, align 1
  %i.ch = xor i32 %i.cg, 1953655126
  %i.ci = getelementptr i8, ptr %i.z, i64 3
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = xor i32 %i.cj, 1818326388
  %i.cl = or i32 %i.ch, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %.not.i.i86 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i86, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i93:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  %i.co = load i64, ptr %i.z, align 1
  %i.cp = xor i64 %i.co, 7594029285253608001
  %i.cq = getelementptr i8, ptr %i.z, i64 8
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i64
  %i.ct = xor i64 %i.cs, 27745
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not.i.i95 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i95, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i111

_ZN4llvmneENS_9StringRefES0_.exit.i.i102:         ; preds = %bb.b
  %i.cx = load i64, ptr %i.z, align 1
  %i.cy = icmp ne i64 %i.cx, 8388345085396285509
  %i.cz = zext i1 %i.cy to i32
  %.not.i.i104 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i219

_ZN4llvmneENS_9StringRefES0_.exit.i.i111:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i93
  %i.da = load i64, ptr %i.z, align 1
  %i.db = xor i64 %i.da, 8104637026473570896
  %i.dc = getelementptr i8, ptr %i.z, i64 8
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i64
  %i.df = xor i64 %i.de, 25701
  %i.dg = or i64 %i.db, %i.df
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not.i.i113 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i113, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i273

_ZN4llvmneENS_9StringRefES0_.exit.i.i120:         ; preds = %bb.b
  %i.dj = load i128, ptr %i.z, align 1
  %i.dk = xor i128 %i.dj, 154717068901422030190082598397842973263
  %i.dl = getelementptr i8, ptr %i.z, i64 16
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i128
  %i.do = xor i128 %i.dn, 101
  %i.dp = or i128 %i.dk, %i.do
  %i.dq = icmp ne i128 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not.i.i122 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i122, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i183

_ZN4llvmneENS_9StringRefES0_.exit.i.i129:         ; preds = %bb.b
  %i.ds = load i64, ptr %i.z, align 1
  %i.dt = xor i64 %i.ds, 8021038906598908495
  %i.du = getelementptr i8, ptr %i.z, i64 5
  %i.dv = load i64, ptr %i.du, align 1
  %i.dw = xor i64 %i.dv, 8243122710535688308
  %i.dx = or i64 %i.dt, %i.dw
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i.i131 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i131, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i174

_ZN4llvmneENS_9StringRefES0_.exit.i.i138:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  %i.ea = load i32, ptr %i.z, align 1
  %i.eb = xor i32 %i.ea, 1952671062
  %i.ec = getelementptr i8, ptr %i.z, i64 4
  %i.ed = load i16, ptr %i.ec, align 1
  %i.ee = zext i16 %i.ed to i32
  %i.ef = xor i32 %i.ee, 29295
  %i.eg = or i32 %i.eb, %i.ef
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %.not.i.i140 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i140, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i147:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
  %i.ej = load i64, ptr %i.z, align 1
  %i.ek = xor i64 %i.ej, 7299599875612701779
  %i.el = getelementptr i8, ptr %i.z, i64 8
  %i.em = load i32, ptr %i.el, align 1
  %i.en = zext i32 %i.em to i64
  %i.eo = xor i64 %i.en, 1919246957
  %i.ep = or i64 %i.ek, %i.eo
  %i.eq = icmp ne i64 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %.not.i.i149 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i291

_ZN4llvmneENS_9StringRefES0_.exit.i.i156:         ; preds = %bb.b
  %i.es = load i64, ptr %i.z, align 1
  %i.et = xor i64 %i.es, 7301009500924892748
  %i.eu = getelementptr i8, ptr %i.z, i64 7
  %i.ev = load i64, ptr %i.eu, align 1
  %i.ew = xor i64 %i.ev, 7305804402515076709
  %i.ex = or i64 %i.et, %i.ew
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %.not.i.i158 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i158, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i165
end_hunk_1
