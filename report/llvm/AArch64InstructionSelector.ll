Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstructionSelector?download=true
inline.NumInlined: 8919
inline.NumDeleted: 2625
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@"_ZZN12_GLOBAL__N_126AArch64InstructionSelector18emitConstantVectorEN4llvm8RegisterEPNS1_8ConstantERNS1_16MachineIRBuilderERNS1_19MachineRegisterInfoEENK3$_0clENS1_5APIntE":bb.a

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.fr) #25
  %.pr138 = load i32, ptr %i.h, align 8, !tbaa !580
  br label %_ZN4llvm5APIntD2Ev.exit59

_ZN4llvm5APIntD2Ev.exit59:                        ; preds = %_ZN4llvm5APIntD2Ev.exit58.thread170, %_ZN4llvm5APIntD2Ev.exit58.thread, %_ZN4llvm5APIntD2Ev.exit58, %bb.as, %bb.at
  %i.ft = phi i32 [ %i.fl, %_ZN4llvm5APIntD2Ev.exit58.thread ], [ %i.fl, %_ZN4llvm5APIntD2Ev.exit58 ], [ %i.fl, %bb.as ], [ %.pr138, %bb.at ], [ %i.fl, %_ZN4llvm5APIntD2Ev.exit58.thread170 ] ; 2 uses
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !1656, !nonnull !226, !align !628
  %.sroa.03.0.copyload = load i32, ptr %i.fu, align 4, !tbaa !320
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !1657, !nonnull !226, !align !628
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !320
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 %i.ft, ptr %i.fx, align 8, !tbaa !580
  %i.fy = icmp ult i32 %i.ft, 65
  br i1 %i.fy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit59
  %i.fz = load i64, ptr %1, align 8, !tbaa !323
  store i64 %i.fz, ptr %14, align 8, !tbaa !323
  br label %_ZN4llvm5APIntC2ERKS0_.exit60

bb.av:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit59
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit60

_ZN4llvm5APIntC2ERKS0_.exit60:                    ; preds = %bb.au, %bb.av
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !1658, !nonnull !226, !align !436
  %i.gb = call fastcc noundef ptr @_ZN12_GLOBAL__N_126AArch64InstructionSelector18tryAdvSIMDModImm32EN4llvm8RegisterEjNS1_5APIntERNS1_16MachineIRBuilderEb(ptr noundef nonnull align 8 dereferenceable(1488) %i.a, i32 %.sroa.03.0.copyload, i32 noundef %i.fw, ptr nofree noundef align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(96) %i.ga, i1 noundef zeroext true) ; 2 uses
  %.not43 = icmp eq ptr %i.gb, null
  br i1 %.not43, label %bb.aw, label %_ZN4llvm5APIntD2Ev.exit63

bb.aw:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit60
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !1656, !nonnull !226, !align !628
  %.sroa.02.0.copyload = load i32, ptr %i.gc, align 4, !tbaa !320
  %i.gd = load ptr, ptr %i.d, align 8, !tbaa !1657, !nonnull !226, !align !628
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !320
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.h, align 8, !tbaa !580 ; 2 uses
  store i32 %i.gg, ptr %i.gf, align 8, !tbaa !580
  %i.gh = icmp ult i32 %i.gg, 65
  br i1 %i.gh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gi = load i64, ptr %1, align 8, !tbaa !323
  store i64 %i.gi, ptr %15, align 8, !tbaa !323
  br label %_ZN4llvm5APIntC2ERKS0_.exit61

bb.ay:                                            ; preds = %bb.aw
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit61

_ZN4llvm5APIntC2ERKS0_.exit61:                    ; preds = %bb.ax, %bb.ay
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !1658, !nonnull !226, !align !436
  %i.gk = call fastcc noundef ptr @_ZN12_GLOBAL__N_126AArch64InstructionSelector20tryAdvSIMDModImm321sEN4llvm8RegisterEjNS1_5APIntERNS1_16MachineIRBuilderEb(ptr noundef nonnull align 8 dereferenceable(1488) %i.a, i32 %.sroa.02.0.copyload, i32 noundef %i.ge, ptr nofree noundef align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(96) %i.gj, i1 noundef zeroext true) ; 2 uses
  %.not44 = icmp eq ptr %i.gk, null
  br i1 %.not44, label %bb.az, label %_ZN4llvm5APIntD2Ev.exit63.thread147

bb.az:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit61
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !1656, !nonnull !226, !align !628
  %.sroa.0.0.copyload = load i32, ptr %i.gl, align 4, !tbaa !320
  %i.gm = load ptr, ptr %i.d, align 8, !tbaa !1657, !nonnull !226, !align !628
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !320
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.h, align 8, !tbaa !580 ; 2 uses
  store i32 %i.gp, ptr %i.go, align 8, !tbaa !580
  %i.gq = icmp ult i32 %i.gp, 65
  br i1 %i.gq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gr = load i64, ptr %1, align 8, !tbaa !323
  store i64 %i.gr, ptr %16, align 8, !tbaa !323
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.gs = load ptr, ptr %i.l, align 8, !tbaa !1658, !nonnull !226, !align !436
  %i.gt = call fastcc noundef ptr @_ZN12_GLOBAL__N_126AArch64InstructionSelector18tryAdvSIMDModImm16EN4llvm8RegisterEjNS1_5APIntERNS1_16MachineIRBuilderEb(ptr noundef nonnull align 8 dereferenceable(1488) %i.a, i32 %.sroa.0.0.copyload, i32 noundef %i.gn, ptr nofree noundef align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(96) %i.gs, i1 noundef zeroext true) ; 4 uses
  %i.gu = icmp ne ptr %i.gt, null                 ; 3 uses
  %i.gv = load i32, ptr %i.go, align 8, !tbaa !580
  %i.gw = icmp ugt i32 %i.gv, 64
  br i1 %i.gw, label %bb.bd, label %_ZN4llvm5APIntD2Ev.exit63.thread147

bb.bd:                                            ; preds = %bb.bc
  %i.gx = load ptr, ptr %16, align 8, !tbaa !323  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN4llvm5APIntD2Ev.exit63.thread147, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.gx) #25
  br label %_ZN4llvm5APIntD2Ev.exit63.thread147

_ZN4llvm5APIntD2Ev.exit63.thread147:              ; preds = %bb.bc, %bb.bd, %bb.be, %_ZN4llvm5APIntC2ERKS0_.exit61
  %.1143146 = phi ptr [ %i.gk, %_ZN4llvm5APIntC2ERKS0_.exit61 ], [ %i.gt, %bb.be ], [ %i.gt, %bb.bd ], [ %i.gt, %bb.bc ] ; 3 uses
  %i.gz = phi i1 [ true, %_ZN4llvm5APIntC2ERKS0_.exit61 ], [ %i.gu, %bb.be ], [ %i.gu, %bb.bd ], [ %i.gu, %bb.bc ] ; 3 uses
  %i.ha = load i32, ptr %i.gf, align 8, !tbaa !580
  %i.hb = icmp ugt i32 %i.ha, 64
  br i1 %i.hb, label %bb.bf, label %_ZN4llvm5APIntD2Ev.exit63

bb.bf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit63.thread147
  %i.hc = load ptr, ptr %15, align 8, !tbaa !323  ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_ZN4llvm5APIntD2Ev.exit63, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.hc) #25
  br label %_ZN4llvm5APIntD2Ev.exit63

_ZN4llvm5APIntD2Ev.exit63:                        ; preds = %bb.bg, %bb.bf, %_ZN4llvm5APIntD2Ev.exit63.thread147, %_ZN4llvm5APIntC2ERKS0_.exit60
  %.1143145 = phi ptr [ %i.gb, %_ZN4llvm5APIntC2ERKS0_.exit60 ], [ %.1143146, %_ZN4llvm5APIntD2Ev.exit63.thread147 ], [ %.1143146, %bb.bf ], [ %.1143146, %bb.bg ]
  %i.he = phi i1 [ true, %_ZN4llvm5APIntC2ERKS0_.exit60 ], [ %i.gz, %_ZN4llvm5APIntD2Ev.exit63.thread147 ], [ %i.gz, %bb.bf ], [ %i.gz, %bb.bg ]
  %i.hf = load i32, ptr %i.fx, align 8, !tbaa !580
  %i.hg = icmp ugt i32 %i.hf, 64
  br i1 %i.hg, label %bb.bh, label %_ZN4llvm5APIntD2Ev.exit65

bb.bh:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit63
  %i.hh = load ptr, ptr %14, align 8, !tbaa !323  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN4llvm5APIntD2Ev.exit65, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.hh) #25
  br label %_ZN4llvm5APIntD2Ev.exit65

_ZN4llvm5APIntD2Ev.exit65:                        ; preds = %_ZN4llvm5APIntD2Ev.exit63, %bb.bh, %bb.bi
  %.1. = select i1 %i.he, ptr %.1143145, ptr null
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit65, %_ZN4llvm5APIntD2Ev.exit54
  %.024 = phi ptr [ %.0268187110121132, %_ZN4llvm5APIntD2Ev.exit54 ], [ %.1., %_ZN4llvm5APIntD2Ev.exit65 ]
  ret ptr %.024
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZZN12_GLOBAL__N_126AArch64InstructionSelector18emitConstantVectorEN4llvm8RegisterEPNS1_8ConstantERNS1_16MachineIRBuilderERNS1_19MachineRegisterInfoEENK3$_1clENS1_5APIntEij"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef range(i32 16, 65) %2, i32 noundef range(i32 3928, 3942) %3) unnamed_addr #4 align 2 {
_ZN4llvm5APInt14getHighBitsSetEjj.exit:
  %4 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 17 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %10 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %11 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %2, ptr %i.a, align 8, !tbaa !580, !alias.scope !1666
  %i.b = add nsw i32 %2, -1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  store i64 %i.d, ptr %5, align 8, !tbaa !323, !alias.scope !1666
  %i.e = load ptr, ptr %0, align 8, !tbaa !1669, !nonnull !226, !align !628
  %i.f = load i32, ptr %i.e, align 4, !tbaa !320
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.f) #24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !580
  %i.h = icmp ugt i32 %i.g, 64
  br i1 %i.h, label %bb.a, label %_ZN4llvm5APIntD2Ev.exit

bb.a:                                             ; preds = %_ZN4llvm5APInt14getHighBitsSetEjj.exit
  %i.i = load ptr, ptr %5, align 8, !tbaa !323    ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4llvm5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.i) #25
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt14getHighBitsSetEjj.exit, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.k = load ptr, ptr %0, align 8, !tbaa !1669, !nonnull !226, !align !628 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !320  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !580
  %i.n = icmp ult i32 %i.l, 65
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  store i64 0, ptr %6, align 8, !tbaa !323
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.d:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef 0, i1 noundef zeroext false) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !1669
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.k, %bb.c ], [ %.pre, %bb.d ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !320  ; 2 uses
  %.not40 = icmp ugt i32 %2, %i.p
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.q = udiv i32 %i.p, %2
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %umax = call i32 @llvm.umax.i32(i32 %i.q, i32 1)
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN4llvm5APIntD2Ev.exit26, %_ZN4llvm5APIntC2Ejmbb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !580  ; 3 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !580
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %._crit_edge
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  %.pr = load i32, ptr %i.t, align 8, !tbaa !580, !noalias !1671 ; 2 uses
  %i.x = icmp ult i32 %.pr, 65
  br i1 %i.x, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %bb.e

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %._crit_edge
  %.sink = phi ptr [ %1, %._crit_edge ], [ %8, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.y = phi i32 [ %i.v, %._crit_edge ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %.pre42 = load i64, ptr %.sink, align 8, !tbaa !323
  %i.z = load i64, ptr %6, align 8, !tbaa !323, !noalias !1671
  %i.aa = xor i64 %.pre42, %i.z                   ; 2 uses
  store i64 %i.aa, ptr %8, align 8, !tbaa !323, !noalias !1671
  br label %_ZN4llvmeoENS_5APIntERKS0_.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt17xorAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(12) %6) #24, !noalias !1671
  %.pre.i = load i32, ptr %i.t, align 8, !tbaa !580, !noalias !1671
  %.pre1.i = load i64, ptr %8, align 8, !noalias !1671
  br label %_ZN4llvmeoENS_5APIntERKS0_.exit

_ZN4llvmeoENS_5APIntERKS0_.exit:                  ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.thread, %bb.e
  %i.ab = phi i64 [ %i.aa, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pre1.i, %bb.e ] ; 3 uses
  %i.ac = phi i32 [ %i.y, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pre.i, %bb.e ] ; 7 uses
  store i32 0, ptr %i.t, align 8, !tbaa !580, !noalias !1671
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !580
  %i.ae = icmp ult i32 %i.ad, 65
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit22.thread, label %bb.f

_ZN4llvm5APIntD2Ev.exit22.thread:                 ; preds = %_ZN4llvmeoENS_5APIntERKS0_.exit
  store i64 %i.ab, ptr %6, align 8
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !580
  br label %_ZN4llvm5APIntD2Ev.exit23

bb.f:                                             ; preds = %_ZN4llvmeoENS_5APIntERKS0_.exit
  %i.af = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4llvm5APIntD2Ev.exit22.thread54, label %_ZN4llvm5APIntD2Ev.exit22

_ZN4llvm5APIntD2Ev.exit22.thread54:               ; preds = %bb.f
  store i64 %i.ab, ptr %6, align 8
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !580
  br label %_ZN4llvm5APIntD2Ev.exit23

_ZN4llvm5APIntD2Ev.exit22:                        ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.af) #25
  %.pr37.pre = load i32, ptr %i.t, align 8, !tbaa !580
  %i.ah = icmp ugt i32 %.pr37.pre, 64
  store i64 %i.ab, ptr %6, align 8
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !580
  br i1 %i.ah, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit23

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit22
  %i.ai = load ptr, ptr %8, align 8, !tbaa !323   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvm5APIntD2Ev.exit23, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #25
  %.pr38 = load i32, ptr %i.m, align 8, !tbaa !580
  br label %_ZN4llvm5APIntD2Ev.exit23

_ZN4llvm5APIntD2Ev.exit23:                        ; preds = %_ZN4llvm5APIntD2Ev.exit22.thread54, %_ZN4llvm5APIntD2Ev.exit22.thread, %_ZN4llvm5APIntD2Ev.exit22, %bb.g, %bb.h
  %i.ak = phi i32 [ %i.ac, %_ZN4llvm5APIntD2Ev.exit22.thread ], [ %i.ac, %_ZN4llvm5APIntD2Ev.exit22 ], [ %i.ac, %bb.g ], [ %.pr38, %bb.h ], [ %i.ac, %_ZN4llvm5APIntD2Ev.exit22.thread54 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1674, !nonnull !226, !align !436
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %i.ak, ptr %i.an, align 8, !tbaa !580
  %i.ao = icmp ult i32 %i.ak, 65
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit23
  %i.ap = load i64, ptr %6, align 8, !tbaa !323
  store i64 %i.ap, ptr %9, align 8, !tbaa !323
  br label %_ZN4llvm5APIntC2ERKS0_.exit24

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit23
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %6) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit24

_ZN4llvm5APIntC2ERKS0_.exit24:                    ; preds = %bb.i, %bb.j
  %i.aq = call fastcc noundef ptr @"_ZZN12_GLOBAL__N_126AArch64InstructionSelector18emitConstantVectorEN4llvm8RegisterEPNS1_8ConstantERNS1_16MachineIRBuilderERNS1_19MachineRegisterInfoEENK3$_0clENS1_5APIntE"(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr nofree noundef align 8 dereferenceable(16) %9) ; 2 uses
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !580
  %i.as = icmp ugt i32 %i.ar, 64
  br i1 %i.as, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit25

bb.k:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit24
  %i.at = load ptr, ptr %9, align 8, !tbaa !323   ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4llvm5APIntD2Ev.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.at) #25
  br label %_ZN4llvm5APIntD2Ev.exit25

_ZN4llvm5APIntD2Ev.exit25:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit24, %bb.k, %bb.l
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.t, label %bb.s

bb.m:                                             ; preds = %.lr.ph, %_ZN4llvm5APIntD2Ev.exit26
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm5APIntD2Ev.exit26 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = mul i32 %2, %i.av                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.ax = load i32, ptr %i.s, align 8, !tbaa !580, !noalias !1681 ; 3 uses
  store i32 %i.ax, ptr %i.r, align 8, !tbaa !580, !alias.scope !1681
  %i.ay = icmp ult i32 %i.ax, 65
  br i1 %i.ay, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.m
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %4) #24
  %.pr.i.i = load i32, ptr %i.r, align 8, !tbaa !580, !alias.scope !1681 ; 2 uses
  %i.az = icmp ult i32 %.pr.i.i, 65
  br i1 %i.az, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.n

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i, %bb.m
  %.sink.i.i = phi ptr [ %4, %bb.m ], [ %7, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ]
  %i.ba = phi i32 [ %i.ax, %bb.m ], [ %.pr.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ] ; 3 uses
  %.pre.i.i = load i64, ptr %.sink.i.i, align 8
  %i.bb = icmp eq i32 %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.aw to i64
  %i.bd = shl i64 %.pre.i.i, %i.bc
  %storemerge.i.i.i = select i1 %i.bb, i64 0, i64 %i.bd
  %i.be = sub nsw i32 0, %i.ba
  %i.bf = and i32 %i.be, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = lshr i64 -1, %i.bg
  %i.bi = icmp eq i32 %i.ba, 0
  %.04.i.i.i.i = select i1 %i.bi, i64 0, i64 %i.bh, !prof !671
  %i.bj = and i64 %.04.i.i.i.i, %storemerge.i.i.i
  store i64 %i.bj, ptr %7, align 8, !tbaa !323, !alias.scope !1681
  br label %_ZNK4llvm5APIntlsEj.exit

bb.n:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.aw) #24
  br label %_ZNK4llvm5APIntlsEj.exit

_ZNK4llvm5APIntlsEj.exit:                         ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.n
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !580
  %i.bl = icmp ult i32 %i.bk, 65
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4llvm5APIntlsEj.exit
  %i.bm = load i64, ptr %7, align 8, !tbaa !323
  %i.bn = load i64, ptr %6, align 8, !tbaa !323
  %i.bo = or i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %6, align 8, !tbaa !323
  br label %_ZN4llvm5APIntoRERKS0_.exit

bb.p:                                             ; preds = %_ZNK4llvm5APIntlsEj.exit
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7) #24
  br label %_ZN4llvm5APIntoRERKS0_.exit

_ZN4llvm5APIntoRERKS0_.exit:                      ; preds = %bb.o, %bb.p
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !580
  %i.bq = icmp ugt i32 %i.bp, 64
  br i1 %i.bq, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit26

bb.q:                                             ; preds = %_ZN4llvm5APIntoRERKS0_.exit
  %i.br = load ptr, ptr %7, align 8, !tbaa !323   ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN4llvm5APIntD2Ev.exit26, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.br) #25
  br label %_ZN4llvm5APIntD2Ev.exit26

_ZN4llvm5APIntD2Ev.exit26:                        ; preds = %_ZN4llvm5APIntoRERKS0_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1682

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit25
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1683, !nonnull !226, !align !436
  %i.bv = load ptr, ptr %0, align 8, !tbaa !1669, !nonnull !226, !align !628
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !320
  %i.bx = icmp eq i32 %i.bw, 64
  %i.by = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 5824)
  %i.bz = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.bu, ptr noundef nonnull %i.by, ptr nonnull @.str.2, i64 0) #24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !553
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i32 %i.bz) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1684, !nonnull !226, !align !436 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
