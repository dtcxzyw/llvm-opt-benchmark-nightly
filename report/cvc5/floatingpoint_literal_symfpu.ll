Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/floatingpoint_literal_symfpu?download=true
inline.NumInlined: 2316
inline.NumDeleted: 248
begin_hunk_0_@_ZN6symfpu19arithmeticRemainderIN4cvc58internal13symfpuLiteral6traitsEEENS_13unpackedFloatIT_EERKNS6_3fptERKNS6_2rmERKS7_SF_:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit112 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit112:          ; preds = %bb.aj
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit113 unwind label %bb.al

bb.al:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit112
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit113:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.cc = zext i1 %i.bv to i8
  store i8 %i.cc, ptr %i.d, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZN4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EE4zeroERKj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.am unwind label %bb.cl

bb.am:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit113
  %i.cd = invoke noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EEgtERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.an unwind label %bb.cm     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit114 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit114:          ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.ch = select i1 %i.cd, ptr %.031.lcssa, ptr %10
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !13, !noalias !270
  store i32 %i.ci, ptr %20, align 8, !tbaa !13, !alias.scope !270
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %.031.sroa.gep202 = getelementptr inbounds nuw i8, ptr %.031.lcssa, i64 8 ; 2 uses
  %.sroa.gep203 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %.sroa.sel204 = select i1 %i.cd, ptr %.031.sroa.gep202, ptr %.sroa.gep203
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.sel204)
          to label %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit116 unwind label %bb.co

_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit116: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit114
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %.031.sroa.gep202)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit117 unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit116
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit117:          ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit116
  call void @_ZdlPvm(ptr noundef nonnull %.031.lcssa, i64 noundef 24) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZN6symfpu10divideStepIN4cvc58internal13symfpuLiteral6traitsEEENS_22resultWithRemainderBitIT_EERKNS6_3ubvESA_(ptr dead_on_unwind nonnull writable sret(%"struct.symfpu::resultWithRemainderBit") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.aq unwind label %bb.cp

bb.aq:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit117
  %i.cm = load i8, ptr %i.d, align 1, !tbaa !21, !range !28, !noundef !29
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !range !28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !31  ; 2 uses
  store i32 %i.cq, ptr %23, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 7 uses
  invoke void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 noundef 2)
          to label %.noexc120 unwind label %bb.cq

.noexc120:                                        ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK4cvc58internal7Integer9modByPow2Ej(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Integer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i32 noundef %i.cq)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.noexc120
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.av unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #19
  unreachable

bb.at:                                            ; preds = %.noexc120
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.body121 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #19
  unreachable

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EEngEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.aw unwind label %bb.cr

bb.aw:                                            ; preds = %bb.av
  %i.cx = invoke noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EEgtERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.ax unwind label %bb.cs     ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit124 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit124:          ; preds = %bb.ax
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit125 unwind label %bb.az

bb.az:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit124
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit125:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.dd = load i8, ptr %i.d, align 1, !tbaa !21, !range !28, !noalias !271, !noundef !29
  %i.de = trunc nuw i8 %i.dd to i1                ; 2 uses
  %.val = load i32, ptr %21, align 8
  %.val212 = load i32, ptr %10, align 8
  %i.df = select i1 %i.de, i32 %.val, i32 %.val212
  store i32 %i.df, ptr %24, align 8, !tbaa !13, !alias.scope !271
  %i.dg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %.sroa.gep195 = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %.sroa.sel197 = select i1 %i.de, ptr %.sroa.gep195, ptr %.sroa.gep203
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.sel197)
          to label %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit127 unwind label %bb.cv

_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit127: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZN6symfpu10divideStepIN4cvc58internal13symfpuLiteral6traitsEEENS_22resultWithRemainderBitIT_EERKNS6_3ubvESA_(ptr dead_on_unwind nonnull writable sret(%"struct.symfpu::resultWithRemainderBit") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ba unwind label %bb.cw

bb.ba:                                            ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit127
  %i.dh = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !range !28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %.val213 = load i32, ptr %25, align 8
  %.val214 = load i32, ptr %10, align 8
  %i.dj = select i1 %i.cx, i32 %.val213, i32 %.val214
  store i32 %i.dj, ptr %26, align 8, !tbaa !13, !alias.scope !272
  %i.dk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %.sroa.sel = select i1 %i.cx, ptr %.sroa.gep, ptr %.sroa.gep203
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.sel)
          to label %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit129 unwind label %bb.cx

_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit129: ; preds = %bb.ba
  %i.dl = invoke noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE10isAllZerosEv(ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.bb unwind label %bb.cy     ; 2 uses

bb.bb:                                            ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit129
  %i.dm = xor i1 %i.dl, true
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit130 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit130:          ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.dp = invoke noundef i32 @_ZNK4cvc58internal9BitVector7getSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit unwind label %bb.da

_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit130
  %i.dq = add i32 %i.dp, -1
  invoke void @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE7extractEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %i.dq, i32 noundef 1)
          to label %bb.bd unwind label %bb.da

bb.bd:                                            ; preds = %_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit
  store i8 0, ptr %27, align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %27, i64 1
  store i8 0, ptr %i.dr, align 1, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %27, i64 2
  store i8 0, ptr %i.ds, align 2, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %27, i64 3
  store i8 %i.m, ptr %i.dt, align 1, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dv = load i32, ptr %i.o, align 8, !tbaa !13
  store i32 %i.dv, ptr %i.du, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.dx)
          to label %.noexc132 unwind label %bb.db

.noexc132:                                        ; preds = %bb.bd
  %i.dy = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.dz = load i32, ptr %28, align 8, !tbaa !13
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKbRKNS3_16wrappedBitVectorILb1EEERKNS8_ILb0EEE.exit unwind label %bb.be

bb.be:                                            ; preds = %.noexc132
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %.body133 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKbRKNS3_16wrappedBitVectorILb1EEERKNS8_ILb0EEE.exit: ; preds = %.noexc132
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit135 unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKbRKNS3_16wrappedBitVectorILb1EEERKNS8_ILb0EEE.exit
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit135:          ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKbRKNS3_16wrappedBitVectorILb1EEERKNS8_ILb0EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  invoke void @_ZNK6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEE21normaliseUpDetectZeroEv(ptr dead_on_unwind nonnull writable sret(%"class.symfpu::unpackedFloat") align 8 %30, ptr noundef nonnull align 8 dereferenceable(56) %27)
          to label %bb.bh unwind label %bb.dd

bb.bh:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit135
  invoke void @_ZN6symfpu3iteIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEE5iteOpERKbRKS6_SB_(ptr dead_on_unwind nonnull writable sret(%"class.symfpu::unpackedFloat") align 8 %29, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit unwind label %bb.de

_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit: ; preds = %bb.bh
  %i.eh = getelementptr inbounds nuw i8, ptr %30, i64 40
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.eh)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit.i137 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit.i137:        ; preds = %_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %30, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i137
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.en = load i32, ptr %2, align 4, !tbaa !42
  %i.eo = invoke noundef i32 @_ZN4cvc58internal13symfpuLiteral6traits3RNEEv()
          to label %.noexc138 unwind label %bb.dg

.noexc138:                                        ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit
  %i.ep = icmp eq i32 %i.en, %i.eo
  %i.eq = trunc nuw i8 %i.di to i1
  %i.er = select i1 %i.cx, i1 %i.eq, i1 false     ; 3 uses
  %or.cond = select i1 %i.ep, i1 %i.er, i1 false  ; 2 uses
  %brmerge.not = and i1 %i.dl, %or.cond
  %33 = trunc nuw i8 %i.cp to i1
  %34 = select i1 %i.cn, i1 %33, i1 false
  %35 = select i1 %brmerge.not, i1 %34, i1 %or.cond
  %36 = load i32, ptr %2, align 4, !tbaa !42
  %37 = invoke noundef i32 @_ZN4cvc58internal13symfpuLiteral6traits3RNAEv()
          to label %.noexc139 unwind label %bb.dg

.noexc139:                                        ; preds = %.noexc138
  %i.es = icmp eq i32 %36, %37
  %spec.select = select i1 %i.es, i1 %i.er, i1 false
  %i.et = load i32, ptr %2, align 4, !tbaa !42
  %i.eu = invoke noundef i32 @_ZN4cvc58internal13symfpuLiteral6traits3RTPEv()
          to label %.noexc140 unwind label %bb.dg

.noexc140:                                        ; preds = %.noexc139
  %i.ev = icmp ne i32 %i.et, %i.eu
  %i.ew = trunc nuw i8 %i.m to i1                 ; 2 uses
  %or.cond208 = or i1 %i.ev, %i.ew
  %spec.select209 = or i1 %i.er, %i.dm            ; 2 uses
  %not.or.cond208 = xor i1 %or.cond208, true
  %i.ex = select i1 %not.or.cond208, i1 %spec.select209, i1 false
  %i.ey = load i32, ptr %2, align 4, !tbaa !42
  %i.ez = invoke noundef i32 @_ZN4cvc58internal13symfpuLiteral6traits3RTNEv()
          to label %.noexc141 unwind label %bb.dg

.noexc141:                                        ; preds = %.noexc140
  %i.fa = invoke noundef i32 @_ZN4cvc58internal13symfpuLiteral6traits3RTZEv()
          to label %bb.bk unwind label %bb.dg     ; 0 uses

bb.bk:                                            ; preds = %.noexc141
  %i.fb = icmp eq i32 %i.ey, %i.ez
  %or.cond210 = and i1 %i.fb, %i.ew
  %i.fc = select i1 %or.cond210, i1 %spec.select209, i1 false
  %or.cond.i = select i1 %35, i1 true, i1 %spec.select
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.ex
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.fc
  %i.fd = zext i1 %or.cond5.i to i8
  store i8 %i.fd, ptr %i.e, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.fe = load i8, ptr %4, align 8, !tbaa !25, !range !28, !noundef !29 ; 2 uses
  store i8 %i.fe, ptr %31, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !26, !range !28, !noundef !29
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %31, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !27, !range !28, !noundef !29
  store i8 %i.fk, ptr %i.fi, align 2, !tbaa !27
  %i.fl = getelementptr inbounds nuw i8, ptr %31, i64 3
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.fn = trunc nuw i8 %i.fe to i1
  %.val.i.i = load i8, ptr %i.fm, align 1, !range !28
  %.val3.i.i = load i8, ptr %i.l, align 1, !range !28
  %i.fo = select i1 %i.fn, i8 %.val.i.i, i8 %.val3.i.i
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !30
  %i.fp = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fq = load i32, ptr %i.o, align 8, !tbaa !13
  store i32 %i.fq, ptr %i.fp, align 8, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.dx)
          to label %.noexc144 unwind label %bb.dh

.noexc144:                                        ; preds = %bb.bk
  %i.fs = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ft = load i32, ptr %i.r, align 8, !tbaa !13
  store i32 %i.ft, ptr %i.fs, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %i.fv)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKS5_RKb.exit unwind label %bb.bl

bb.bl:                                            ; preds = %.noexc144
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %.body145 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKS5_RKb.exit: ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i8 0, ptr %i.f, align 1, !tbaa !21
  invoke void @_ZN6symfpu3addIN4cvc58internal13symfpuLiteral6traitsEEENS_13unpackedFloatIT_EERKNS6_3fptERKNS6_2rmERKS7_SF_RKNS6_4propE(ptr dead_on_unwind nonnull writable sret(%"class.symfpu::unpackedFloat") align 8 %32, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.bn unwind label %bb.di

bb.bn:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKS5_RKb.exit
  invoke void @_ZN6symfpu3iteIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEE5iteOpERKbRKS6_SB_(ptr dead_on_unwind writable sret(%"class.symfpu::unpackedFloat") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(56) %29)
          to label %_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit148 unwind label %bb.dj

_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit148: ; preds = %bb.bn
  %i.fz = getelementptr inbounds nuw i8, ptr %32, i64 40
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit.i149 unwind label %bb.bo

bb.bo:                                            ; preds = %_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit148
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit.i149:        ; preds = %_ZN6symfpu3ITEIbNS_13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEEEEKT0_RKT_RS8_SC_.exit148
  %i.gc = getelementptr inbounds nuw i8, ptr %32, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.gc)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit150 unwind label %bb.bp

bb.bp:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i149
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit150: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.gf = invoke noundef zeroext i1 @_ZNK6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEE5validERKNS2_17FloatingPointSizeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.bq unwind label %bb.dl

bb.bq:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit150
  %i.gg = zext i1 %i.gf to i8
  store i8 %i.gg, ptr %i.g, align 1, !tbaa !21
  invoke void @_ZN4cvc58internal13symfpuLiteral6traits13postconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.br unwind label %bb.dl

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fu)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit.i151 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit.i151:        ; preds = %bb.br
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit152 unwind label %bb.bt

bb.bt:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i151
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit152: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.gl = getelementptr inbounds nuw i8, ptr %29, i64 40
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.gl)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit.i153 unwind label %bb.bu

bb.bu:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit152
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit.i153:        ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit152
  %i.go = getelementptr inbounds nuw i8, ptr %29, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.go)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit154 unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i153
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit154: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit.i155 unwind label %bb.bw

bb.bw:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit154
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit.i155:        ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit154
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit156 unwind label %bb.bx

bb.bx:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i155
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #19
  unreachable

_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit156: ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep)
          to label %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit158 unwind label %bb.by

bb.by:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit156
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #19
  unreachable

_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit158: ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit159 unwind label %bb.bz

bb.bz:                                            ; preds = %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit158
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit159:          ; preds = %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit158
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep195)
          to label %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit161 unwind label %bb.ca

end_hunk_0
begin_hunk_1_@_ZN6symfpu19arithmeticRemainderIN4cvc58internal13symfpuLiteral6traitsEEENS_13unpackedFloatIT_EERKNS6_3fptERKNS6_2rmERKS7_SF_:bb.a
_ZN4cvc58internal9BitVectorD2Ev.exit166:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit165
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

bb.cg:                                            ; preds = %._crit_edge
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit168

bb.ch:                                            ; preds = %bb.ah
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit167

bb.ci:                                            ; preds = %bb.ai
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.hq)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit167 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit167:          ; preds = %bb.ci, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.ho, %bb.ch ], [ %i.hp, %bb.ci ]
  %i.ht = getelementptr inbounds nuw i8, ptr %18, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ht)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit168 unwind label %bb.ck

bb.ck:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit167
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit168:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit167, %bb.cg
  %.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.cg ], [ %.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.dw

bb.cl:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit113
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit169

bb.cm:                                            ; preds = %bb.am
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %i.hy = getelementptr inbounds nuw i8, ptr %19, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.hy)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit169 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit169:          ; preds = %bb.cm, %bb.cl
  %.pn67 = phi { ptr, i32 } [ %i.hw, %bb.cl ], [ %i.hx, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.dw

bb.co:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit114
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit179

bb.cp:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit117
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit178

bb.cq:                                            ; preds = %bb.aq
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.cr:                                            ; preds = %bb.av
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit170

bb.cs:                                            ; preds = %bb.aw
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = getelementptr inbounds nuw i8, ptr %22, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ig)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit170 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit170:          ; preds = %bb.cs, %bb.cr
  %.pn69 = phi { ptr, i32 } [ %i.ie, %bb.cr ], [ %i.if, %bb.cs ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.body121 unwind label %bb.cu

bb.cu:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit170
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #19
  unreachable

.body121:                                         ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit170, %bb.cq, %bb.at
  %.pn69.pn = phi { ptr, i32 } [ %i.cu, %bb.at ], [ %i.id, %bb.cq ], [ %.pn69, %_ZN4cvc58internal9BitVectorD2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.dt

bb.cv:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit125
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit176

bb.cw:                                            ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit127
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit175

bb.cx:                                            ; preds = %bb.ba
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit172

bb.cy:                                            ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit129
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit172 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit172:          ; preds = %bb.cy, %bb.cx
  %.pn72 = phi { ptr, i32 } [ %i.in, %bb.cx ], [ %i.io, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.dq

bb.da:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit130, %_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit173

bb.db:                                            ; preds = %bb.bd
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body133

.body133:                                         ; preds = %bb.be, %bb.db
  %eh.lpad-body134 = phi { ptr, i32 } [ %i.is, %bb.db ], [ %i.ec, %bb.be ]
  %i.it = getelementptr inbounds nuw i8, ptr %28, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.it)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit173 unwind label %bb.dc

bb.dc:                                            ; preds = %.body133
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit173:          ; preds = %.body133, %bb.da
  %.pn74 = phi { ptr, i32 } [ %i.ir, %bb.da ], [ %eh.lpad-body134, %.body133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.dp

bb.dd:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit135
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.bh
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #18
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn76 = phi { ptr, i32 } [ %i.ix, %bb.de ], [ %i.iw, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.do

bb.dg:                                            ; preds = %.noexc141, %.noexc140, %.noexc139, %.noexc138, %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dh:                                            ; preds = %bb.bk
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body145

bb.di:                                            ; preds = %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKS5_RKb.exit
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.bn
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %32) #18
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn78 = phi { ptr, i32 } [ %i.jb, %bb.dj ], [ %i.ja, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.dm

bb.dl:                                            ; preds = %bb.bq, %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit150
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #18
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn80 = phi { ptr, i32 } [ %i.jc, %bb.dl ], [ %.pn78, %bb.dk ]
  call void @_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %31) #18
  br label %.body145

.body145:                                         ; preds = %bb.dh, %bb.bl, %bb.dm
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.dm ], [ %i.iz, %bb.dh ], [ %i.fw, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.dn

bb.dn:                                            ; preds = %.body145, %bb.dg
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %.body145 ], [ %i.iy, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %29) #18
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.df
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn, %bb.dn ], [ %.pn76, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #18
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZN4cvc58internal9BitVectorD2Ev.exit173
  %.pn80.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn, %bb.do ], [ %.pn74, %_ZN4cvc58internal9BitVectorD2Ev.exit173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZN4cvc58internal9BitVectorD2Ev.exit172
  %.pn80.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn, %bb.dp ], [ %.pn72, %_ZN4cvc58internal9BitVectorD2Ev.exit172 ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep)
          to label %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit175 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #19
  unreachable

_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit175: ; preds = %bb.dq, %bb.cw
  %.pn80.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.im, %bb.cw ], [ %.pn80.pn.pn.pn.pn.pn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit176 unwind label %bb.ds

bb.ds:                                            ; preds = %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit175
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit176:          ; preds = %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit175, %bb.cv
  %.pn80.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.il, %bb.cv ], [ %.pn80.pn.pn.pn.pn.pn.pn, %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit176, %.body121
  %.pn80.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit176 ], [ %.pn69.pn, %.body121 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %21, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
          to label %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit178 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #19
  unreachable

_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit178: ; preds = %bb.dt, %bb.cp
  %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ic, %bb.cp ], [ %.pn80.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit179 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit178
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit179:          ; preds = %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit178, %bb.co
  %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.co ], [ %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN6symfpu22resultWithRemainderBitIN4cvc58internal13symfpuLiteral6traitsEED2Ev.exit178 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit169, %_ZN4cvc58internal9BitVectorD2Ev.exit179, %_ZN4cvc58internal9BitVectorD2Ev.exit168
  %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit168 ], [ %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit179 ], [ %.pn67, %_ZN4cvc58internal9BitVectorD2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.body, %_ZN4cvc58internal9BitVectorD2Ev.exit111, %bb.dw, %bb.l, %bb.k
  %.pn96.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %.pn80.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dw ], [ %.pn96.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit111 ], [ %.pn94, %.body ]
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit180 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit180:          ; preds = %bb.dx, %bb.j
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %.pn96.pn.pn.pn.pn, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.jo)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit181 unwind label %bb.dz

bb.dz:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit180
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit181:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit180, %bb.i
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %.pn96.pn.pn.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.jr)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit182 unwind label %bb.ea

bb.ea:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit181
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit182:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit181, %bb.h
  %.pn96.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %.pn96.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit182, %bb.g
  %.pn96.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit182 ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ju)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit183 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit183:          ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  resume { ptr, i32 } %.pn96.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6symfpu24addRemainderSpecialCasesIN4cvc58internal13symfpuLiteral6traitsEEENS_13unpackedFloatIT_EERKNS6_3fptERKS7_SC_SC_(ptr dead_on_unwind noalias writable sret(%"class.symfpu::unpackedFloat") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.symfpu::unpackedFloat", align 8 ; 8 uses
  %6 = alloca %"class.symfpu::unpackedFloat", align 8 ; 8 uses
  %i.c = load i8, ptr %2, align 8, !tbaa !21, !range !28, !noundef !29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21, !range !28, !noundef !29
end_hunk_1
begin_hunk_2_@_ZN6symfpu10divideStepIN4cvc58internal13symfpuLiteral6traitsEEENS_22resultWithRemainderBitIT_EERKNS6_3ubvESA_:bb.a
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit24 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit24:           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit25 unwind label %bb.k

bb.k:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit24
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit25:           ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit26 unwind label %bb.l

bb.l:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit25
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit26:           ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit27 unwind label %bb.m

bb.m:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit26
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit27:           ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.n:                                             ; preds = %bb.b, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit28 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit28:           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.z

bb.p:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit29 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit29:           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit33

bb.r:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit23
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit32

bb.s:                                             ; preds = %_ZN6symfpu3ITEIbN4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEEEEKT0_RKT_RS7_SB_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit31

bb.t:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit30

bb.u:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit30 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit30:           ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.av, %bb.t ], [ %i.aw, %bb.u ]
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit31 unwind label %bb.w

bb.w:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit30
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit31:           ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit30, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.s ], [ %.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit32 unwind label %bb.x

bb.x:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit31
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit32:           ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit31, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.r ], [ %.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.gep)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit33 unwind label %bb.y

bb.y:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit32
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #19
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit33:           ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit32, %_ZN4cvc58internal9BitVectorD2Ev.exit29
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %_ZN4cvc58internal9BitVectorD2Ev.exit29 ], [ %.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.z

bb.z:                                             ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit33, %_ZN4cvc58internal9BitVectorD2Ev.exit28
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN4cvc58internal9BitVectorD2Ev.exit33 ], [ %i.al, %_ZN4cvc58internal9BitVectorD2Ev.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE13modularNegateEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6symfpu8orderingIN4cvc58internal13symfpuLiteral6traitsEEENT_4propERKNS5_3fptERKNS_13unpackedFloatIS5_EESD_S6_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = tail call noundef zeroext i1 @_ZNK6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEE5validERKNS2_17FloatingPointSizeE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(8) %0)
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !21
  call void @_ZN4cvc58internal13symfpuLiteral6traits12preconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.e = call noundef zeroext i1 @_ZNK6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEE5validERKNS2_17FloatingPointSizeE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(8) %0)
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr %i.b, align 1, !tbaa !21
  call void @_ZN4cvc58internal13symfpuLiteral6traits12preconditionERKb(ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.g = load i8, ptr %1, align 8, !tbaa !21, !range !28, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %2, align 8, !tbaa !21, !range !28, !noundef !29
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26, !range !28, !noundef !29 ; 3 uses
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 6 uses
  %i.q = load i8, ptr %i.p, align 1, !range !28   ; 3 uses
  %i.r = trunc nuw i8 %i.q to i1                  ; 5 uses
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26, !range !28, !noundef !29 ; 5 uses
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !range !28       ; 5 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = xor i1 %i.v, true
  %i.x = select i1 %3, i1 true, i1 %i.w
  %i.y = trunc nuw i8 %5 to i1
  %i.z = xor i1 %i.y, true
  %i.aa = select i1 %i.x, i1 true, i1 %i.z
  br i1 %i.aa, label %.thread119, label %.thread110

bb.e:                                             ; preds = %bb.c
  %6 = trunc nuw i8 %5 to i1
  %not. = xor i1 %i.v, true
  %7 = select i1 %not., i1 true, i1 %6
  br i1 %7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = xor i1 %i.o, true
  %i.ac = or i1 %3, %i.ab
  %i.ad = select i1 %i.ac, i1 true, i1 %i.r
  br i1 %i.ad, label %.thread119, label %.thread110

bb.g:                                             ; preds = %bb.e
  %8 = and i8 %i.u, %i.n
  %brmerge.demorgan.not = icmp eq i8 %8, 0
  br i1 %brmerge.demorgan.not, label %bb.h, label %.thread110

.thread110:                                       ; preds = %bb.d, %bb.f, %bb.g
  %9 = phi i8 [ %i.u, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ]
  %i.ae = phi i8 [ %5, %bb.g ], [ 0, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %i.af = icmp eq i8 %i.q, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread110
  %10 = phi i8 [ %9, %.thread110 ], [ %i.u, %bb.g ]
  %11 = phi i8 [ %i.ae, %.thread110 ], [ %5, %bb.g ]
  %12 = phi i1 [ %i.af, %.thread110 ], [ false, %bb.g ]
  %i.ag = select i1 %3, i1 %12, i1 false
  br label %.thread119

.thread119:                                       ; preds = %bb.h, %bb.f, %bb.d
  %13 = phi i8 [ 1, %bb.f ], [ %i.u, %bb.d ], [ %10, %bb.h ]
  %i.ah = phi i8 [ 0, %bb.f ], [ %5, %bb.d ], [ %11, %bb.h ] ; 4 uses
  %i.ai = phi i1 [ true, %bb.f ], [ true, %bb.d ], [ %i.ag, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !21, !range !28, !noundef !29 ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !21, !range !28, !noundef !29 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  br i1 %i.al, label %bb.i, label %.thread111

bb.i:                                             ; preds = %.thread119
  %14 = trunc nuw i8 %i.ah to i1
  %or.cond = select i1 %i.ao, i1 true, i1 %14
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %spec.select = and i1 %3, %i.ao
  %i.ap = or i1 %i.ai, %spec.select
  br label %.thread114

.thread111:                                       ; preds = %.thread119
  %i.aq = select i1 %i.ao, i1 %i.r, i1 false
  br i1 %i.aq, label %bb.k, label %.thread114

.thread114:                                       ; preds = %bb.j, %.thread111
  %i.ar = phi i1 [ %i.ai, %.thread111 ], [ %i.ap, %bb.j ]
  %i.as = and i1 %i.l, %i.ar
  %i.at = trunc nuw i8 %i.an to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.thread111, %.thread114
  %i.au = phi i1 [ true, %.thread111 ], [ false, %bb.i ], [ %i.at, %.thread114 ]
  %i.av = phi i1 [ %i.l, %.thread111 ], [ %i.l, %bb.i ], [ %i.as, %.thread114 ]
  br i1 %i.h, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %2, align 8, !tbaa !21, !range !28, !noundef !29
  %i.ax = or i8 %13, %i.aw
  %i.ay = or i8 %i.ax, %i.ak
  %i.az = or i8 %i.ay, %i.n
  %or.cond145 = icmp ne i8 %i.az, 0
  %brmerge = select i1 %or.cond145, i1 true, i1 %i.au
  br i1 %brmerge, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = trunc nuw i8 %i.ah to i1
  %i.bb = xor i1 %i.ba, true
  %15 = select i1 %i.r, i1 %i.bb, i1 false
  %16 = icmp ne i8 %i.q, %i.ah
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.m
  %i.bc = phi i1 [ false, %bb.m ], [ true, %bb.k ], [ true, %bb.l ]
  %.0 = phi i1 [ %15, %bb.m ], [ false, %bb.k ], [ false, %bb.l ]
  %i.bd = phi i1 [ %16, %bb.m ], [ true, %bb.k ], [ true, %bb.l ]
  br i1 %i.r, label %.thread, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.be = trunc nuw i8 %i.ah to i1
  br i1 %i.be, label %.thread136.a, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EEltERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg) ; 2 uses
  %.pre = load i8, ptr %i.p, align 1, !tbaa !21, !range !28
  %i.bi = trunc nuw i8 %.pre to i1
  br i1 %i.bi, label %.thread, label %.thread136.a

.thread:                                          ; preds = %.critedge, %bb.o
  %i.bj = phi i1 [ %i.bh, %bb.o ], [ false, %.critedge ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21, !range !28, !noundef !29
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.p, label %.thread136.a

bb.p:                                             ; preds = %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EEgtERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
  %i.bq = or i1 %i.bj, %i.bp
  br label %.thread136.a

.thread136.a:                                     ; preds = %bb.n, %bb.p, %.thread, %bb.o
  %i.br = phi i1 [ %i.bj, %.thread ], [ %i.bh, %bb.o ], [ %i.bq, %bb.p ], [ false, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EEeqERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
  %i.bv = load i8, ptr %i.p, align 1, !tbaa !21, !range !28, !noundef !29
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.thread137, label %bb.q

bb.q:                                             ; preds = %.thread136.a
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21, !range !28, !noundef !29
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.thread139, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cc = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEltERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.cb) ; 2 uses
  %.pre133 = load i8, ptr %i.p, align 1, !tbaa !21, !range !28
  %i.cd = trunc nuw i8 %.pre133 to i1
  br i1 %i.cd, label %.thread137, label %.thread139

.thread137:                                       ; preds = %.thread136.a, %bb.r
  %i.ce = phi i1 [ %i.cc, %bb.r ], [ false, %.thread136.a ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21, !range !28, !noundef !29
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.s, label %.thread143

bb.s:                                             ; preds = %.thread137
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEgtERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj)
  %i.cl = or i1 %i.ce, %i.ck                      ; 2 uses
  %.pre134 = load i8, ptr %i.p, align 1, !tbaa !21, !range !28
  %i.cm = trunc nuw i8 %.pre134 to i1
  br i1 %i.cm, label %.thread143, label %.thread139

.thread139:                                       ; preds = %bb.q, %bb.r, %bb.s
  %i.cn = phi i1 [ %i.cl, %bb.s ], [ %i.cc, %bb.r ], [ false, %bb.q ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21, !range !28, !noundef !29
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.thread144, label %bb.t

bb.t:                                             ; preds = %.thread139
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ct = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEleERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cs) ; 2 uses
  %.pre135 = load i8, ptr %i.p, align 1, !tbaa !21, !range !28
  %i.cu = trunc nuw i8 %.pre135 to i1
  br i1 %i.cu, label %.thread143, label %.thread144

.thread143:                                       ; preds = %.thread137, %bb.s, %bb.t
  %i.cv = phi i1 [ %i.ct, %bb.t ], [ false, %bb.s ], [ false, %.thread137 ] ; 2 uses
  %i.cw = phi i1 [ %i.cn, %bb.t ], [ %i.cl, %bb.s ], [ %i.ce, %.thread137 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !21, !range !28, !noundef !29
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.u, label %.thread144

bb.u:                                             ; preds = %.thread143
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = call noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEgeERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dd = or i1 %i.cv, %i.dc
  br label %.thread144

.thread144:                                       ; preds = %.thread139, %bb.u, %.thread143, %bb.t
  %i.de = phi i1 [ %i.cw, %.thread143 ], [ %i.cn, %bb.t ], [ %i.cw, %bb.u ], [ %i.cn, %.thread139 ]
  %i.df = phi i1 [ %i.cv, %.thread143 ], [ %i.ct, %bb.t ], [ %i.dd, %bb.u ], [ false, %.thread139 ]
  %.v = select i1 %3, i1 %i.df, i1 %i.de
  %.v132 = select i1 %i.bu, i1 %.v, i1 %i.br
  %i.dg = select i1 %i.bd, i1 %.0, i1 %.v132
  %i.dh = select i1 %i.bc, i1 %i.av, i1 %i.dg
  ret i1 %i.dh
}

declare noundef zeroext i1 @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EEgtERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEE6extendEjj(ptr dead_on_unwind noalias writable sret(%"class.symfpu::unpackedFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.__mpz_struct, align 8       ; 4 uses
  %5 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::symfpuLiteral::wrappedBitVector", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2", align 8 ; 7 uses
  %9 = alloca %"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb1EE6extendEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE6extendEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %3)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.c = invoke noundef i32 @_ZNK4cvc58internal9BitVector7getSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit unwind label %bb.p

_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit: ; preds = %bb.b
  %i.d = add i32 %i.c, %3                         ; 2 uses
  store i32 %i.d, ptr %9, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.f = zext i32 %3 to i64
  invoke void @__gmpz_init_set_ui(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.f)
          to label %_ZN4cvc58internal7IntegerC2Ej.exit.i.i unwind label %bb.p

_ZN4cvc58internal7IntegerC2Ej.exit.i.i:           ; preds = %_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EE8getWidthEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK4cvc58internal7Integer9modByPow2Ej(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Integer") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN4cvc58internal7IntegerC2Ej.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #19
  unreachable

bb.e:                                             ; preds = %_ZN4cvc58internal7IntegerC2Ej.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  invoke void @_ZNK4cvc58internal13symfpuLiteral16wrappedBitVectorILb0EElsERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::symfpuLiteral::wrappedBitVector.2") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.l = load <4 x i8>, ptr %1, align 8, !tbaa !21
  store <4 x i8> %i.l, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %6, align 8, !tbaa !13
  store i32 %i.n, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc12 unwind label %bb.r

.noexc12:                                         ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %7, align 8, !tbaa !13
  store i32 %i.r, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN6symfpu13unpackedFloatIN4cvc58internal13symfpuLiteral6traitsEEC2ERKbS7_S7_S7_RKNS3_16wrappedBitVectorILb1EEERKNS8_ILb0EEE.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc12
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
end_hunk_2
