Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizerHelper?download=true
inline.NumInlined: 11701
inline.NumDeleted: 2046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4llvm15LegalizerHelper12narrowScalarERNS_12MachineInstrEjNS_3LLTE:bb.a
  %128 = alloca %"class.llvm::SmallVector.196", align 8 ; 10 uses
  %129 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %130 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %131 = alloca %"class.llvm::DstOp", align 8     ; 5 uses
  %132 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %133 = alloca %"class.llvm::DstOp", align 8     ; 5 uses
  %134 = alloca %"class.llvm::DstOp", align 8     ; 5 uses
  %135 = alloca %"class.llvm::SrcOp", align 8     ; 6 uses
  %136 = alloca %"class.llvm::DstOp", align 8     ; 5 uses
  store i64 %3, ptr %22, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 22 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !226  ; 18 uses
  %i.g = icmp slt i32 %i.f, 0                     ; 7 uses
  br i1 %i.g, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2147483647                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.j = load i32, ptr %i.i, align 8, !tbaa !227
  %i.k = icmp ugt i32 %i.j, %i.h
  br i1 %i.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.m = zext nneg i32 %i.h to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !228
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !226
  %.fr = freeze i64 %i.p                          ; 10 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.q = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.q, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.r = lshr i64 %.fr, 60
  %.off.i.i = add nsw i64 %i.r, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.c
  %i.s = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.s, %i.q
  %i.t = lshr i64 %.fr, 44
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %.fr, 28
  %i.w = select i1 %spec.select.i.i.i, i64 %i.u, i64 %i.v
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.c
  %i.x = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.x, 65535
  %i.y = icmp slt i64 %.fr, -8070450532247928832
  %i.z = lshr i64 %.fr, 44
  %i.aa = and i64 %i.z, 65535
  %i.ab = lshr i64 %.fr, 28
  %spec.select = select i1 %i.y, i64 %i.aa, i64 %i.ab
  %i.ac = mul nuw nsw i64 %spec.select, %.sroa.0.0.insert.ext.i.i.i
  %i.ad = trunc i64 %.fr to i1
  br i1 %i.ad, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b, %bb.a, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i1219 = phi i64 [ %i.w, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.ac, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %.mask.i.i731 = and i64 %3, -1152921504606846976
  %i.ae = icmp eq i64 %.mask.i.i731, 4611686018427387904 ; 3 uses
  br i1 %i.ae, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit742.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.af = lshr i64 %3, 60
  %.off.i.i732 = add nsw i64 %i.af, -1
  %switch.i.i733 = icmp ult i64 %.off.i.i732, 3
  br i1 %switch.i.i733, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit742.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit742

_ZNK4llvm3LLT13getSizeInBitsEv.exit742.thread:    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.e
  %i.ag = icmp slt i64 %3, -8070450532247928832
  %spec.select.i.i.i741 = or i1 %i.ag, %i.ae
  %i.ah = lshr i64 %3, 44
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %3, 28
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = select i1 %spec.select.i.i.i741, i64 %i.ai, i64 %i.ak
  br label %_ZNK4llvm8TypeSizecvmEv.exit743

_ZNK4llvm3LLT13getSizeInBitsEv.exit742:           ; preds = %bb.e
  %i.am = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i734 = and i64 %i.am, 65535
  %i.an = icmp slt i64 %3, -8070450532247928832
  %i.ao = lshr i64 %3, 44
  %i.ap = and i64 %i.ao, 65535
  %i.aq = lshr i64 %3, 28
  %.0.in.i3.i735 = select i1 %i.an, i64 %i.ap, i64 %i.aq
  %i.ar = mul nuw nsw i64 %.0.in.i3.i735, %.sroa.0.0.insert.ext.i.i.i734
  %i.as = and i64 %i.ar, 4294967295
  %i.at = trunc i64 %3 to i1
  br i1 %i.at, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit743

bb.f:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit742
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit743:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit742.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit742
  %.sroa.05.0.i7371230 = phi i64 [ %i.al, %_ZNK4llvm3LLT13getSizeInBitsEv.exit742.thread ], [ %i.as, %_ZNK4llvm3LLT13getSizeInBitsEv.exit742 ] ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 5 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !210 ; 3 uses
  switch i32 %i.av, label %bb.gy [
    i32 73, label %bb.g
    i32 148, label %bb.t
    i32 152, label %bb.ar
    i32 154, label %bb.ar
    i32 143, label %bb.ar
    i32 144, label %bb.as
    i32 90, label %bb.az
    i32 89, label %bb.az
    i32 55, label %bb.bl
    i32 56, label %bb.bl
    i32 171, label %bb.bl
    i32 173, label %bb.bl
    i32 172, label %bb.bl
    i32 174, label %bb.bl
    i32 167, label %bb.bl
    i32 169, label %bb.bl
    i32 168, label %bb.bl
    i32 170, label %bb.bl
    i32 57, label %bb.bm
    i32 177, label %bb.bm
    i32 79, label %bb.bn
    i32 81, label %bb.bo
    i32 99, label %bb.bp
    i32 101, label %bb.bx
    i32 100, label %bb.bx
    i32 102, label %bb.bx
    i32 106, label %bb.cn
    i32 107, label %bb.cy
    i32 166, label %bb.dg
    i32 64, label %bb.dh
    i32 65, label %bb.dh
    i32 66, label %bb.dh
    i32 155, label %bb.di
    i32 156, label %bb.di
    i32 157, label %bb.di
    i32 262, label %bb.dj
    i32 263, label %bb.dj
    i32 260, label %bb.dj
    i32 261, label %bb.dj
    i32 264, label %bb.dj
    i32 265, label %bb.dj
    i32 87, label %bb.dq
    i32 86, label %bb.ds
    i32 74, label %bb.du
    i32 255, label %bb.dy
    i32 254, label %bb.dy
    i32 162, label %bb.ea
    i32 163, label %bb.fk
    i32 153, label %bb.fm
    i32 266, label %bb.gd
    i32 267, label %bb.gd
    i32 240, label %bb.gk
    i32 241, label %bb.gk
    i32 215, label %bb.gm
    i32 214, label %bb.gm
    i32 219, label %bb.gm
    i32 218, label %bb.gm
    i32 212, label %bb.gn
    i32 209, label %bb.gp
    i32 298, label %bb.gp
    i32 251, label %bb.gq
  ]

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  br i1 %i.g, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit745

bb.h:                                             ; preds = %bb.g
  %i.aw = and i32 %i.f, 2147483647                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !227
  %i.az = icmp ugt i32 %i.ay, %i.aw
  br i1 %i.az, label %bb.i, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit745

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !228
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit745

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit745: ; preds = %bb.g, %bb.h, %bb.i
  %i.bf = phi i64 [ %i.be, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  store i64 %i.bf, ptr %23, align 8
  %.lhs.trunc = trunc i64 %.sroa.05.0.i1219 to i32 ; 2 uses
  %.rhs.trunc = trunc nuw i64 %.sroa.05.0.i7371230 to i32 ; 2 uses
  %i.bg = urem i32 %.lhs.trunc, %.rhs.trunc
  %i.bh = udiv i32 %.lhs.trunc, %.rhs.trunc       ; 2 uses
  %.not730 = icmp eq i32 %i.bg, 0
  br i1 %.not730, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit745
  %i.bi = call i64 @_ZNK4llvm3LLT17changeElementTypeES0_(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 %3)
  %i.bj = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store i64 %i.bi, ptr %24, align 8, !tbaa !226
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !243
  %i.bl = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(20) %24) #19
  %i.bm = extractvalue { ptr, ptr } %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !225
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.br = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store i32 %i.f, ptr %25, align 8, !tbaa !238
  %i.bs = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 1, ptr %i.bs, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store i32 %i.bq, ptr %26, align 8, !tbaa !238
  %i.bt = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.bt, align 8, !tbaa !246
  %i.bu = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildAnyExtERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.br, ptr noundef nonnull align 8 dereferenceable(20) %25, ptr noundef nonnull align 8 dereferenceable(20) %26) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.bv = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.s

bb.k:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit745
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.bw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.bw, ptr %27, align 8, !tbaa !228
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !227
  %i.by = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  store i32 2, ptr %i.by, align 4, !tbaa !239
  %i.bz = icmp sgt i32 %i.bh, 0
  br i1 %i.bz, label %.lr.ph1336, label %._crit_edge1337

.lr.ph1336:                                       ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %bb.l

._crit_edge1337:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.k
  %i.cb = lshr i64 %i.bf, 60
  %i.cc = add nsw i64 %i.cb, -5
  %switch.selectcmp.i = icmp ult i64 %i.cc, 4
  %i.cd = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  br i1 %switch.selectcmp.i, label %bb.o, label %bb.p

bb.l:                                             ; preds = %.lr.ph1336, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.06821334 = phi i32 [ 0, %.lr.ph1336 ], [ %i.cs, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %.sroa.0511.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  store i64 %.sroa.0511.0.copyload, ptr %28, align 8, !tbaa !226
  store i32 0, ptr %i.ca, align 8, !tbaa !243
  %i.cf = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ce, ptr noundef nonnull align 8 dereferenceable(20) %28) #19
  %i.cg = extractvalue { ptr, ptr } %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !225
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !226 ; 2 uses
  %i.cl = load i32, ptr %i.bx, align 8, !tbaa !227 ; 2 uses
  %i.cm = load i32, ptr %i.by, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !247

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %27, i32 %i.ck)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.n:                                             ; preds = %bb.l
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %27, align 8, !tbaa !228
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cn
  store i32 %i.ck, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.bx, align 8, !tbaa !227
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.bx, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %i.cs = add nuw nsw i32 %.06821334, 1           ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.bh
  br i1 %i.ct, label %bb.l, label %._crit_edge1337, !llvm.loop !513

bb.o:                                             ; preds = %._crit_edge1337
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  store i32 %i.f, ptr %29, align 8, !tbaa !238
  %i.cu = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 1, ptr %i.cu, align 8, !tbaa !243
  %i.cv = load ptr, ptr %27, align 8, !tbaa !228
  %i.cw = load i32, ptr %i.bx, align 8, !tbaa !227
  %i.cx = zext i32 %i.cw to i64
  %i.cy = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.cd, ptr noundef nonnull align 8 dereferenceable(20) %29, ptr %i.cv, i64 %i.cx) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge1337
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store i32 %i.f, ptr %30, align 8, !tbaa !238
  %i.cz = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 1, ptr %i.cz, align 8, !tbaa !243
  %i.da = load ptr, ptr %27, align 8, !tbaa !228
  %i.db = load i32, ptr %i.bx, align 8, !tbaa !227
  %i.dc = zext i32 %i.db to i64
  %i.dd = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.cd, ptr noundef nonnull align 8 dereferenceable(20) %30, ptr %i.da, i64 %i.dc) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.de = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.df = load ptr, ptr %27, align 8, !tbaa !228  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bw
  br i1 %i.dg, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.df) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.gy

bb.t:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  br i1 %i.g, label %bb.u, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit747

bb.u:                                             ; preds = %bb.t
  %i.dh = and i32 %i.f, 2147483647                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !227
  %i.dk = icmp ugt i32 %i.dj, %i.dh
  br i1 %i.dk, label %bb.v, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit747

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.dm = zext nneg i32 %i.dh to i64
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !228
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit747

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit747: ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.04.0.i746 = phi i64 [ %i.dp, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.04.0.i746, ptr %31, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !226 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  %i.dt = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %31) ; 2 uses
  %.fca.1.extract496 = extractvalue { i64, i8 } %i.dt, 1
  %i.du = trunc nuw i8 %.fca.1.extract496 to i1
  br i1 %i.du, label %bb.w, label %_ZNK4llvm8TypeSizecvmEv.exit748

bb.w:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit747
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit748:                  ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit747
  %.fca.0.extract495 = extractvalue { i64, i8 } %i.dt, 0
  %i.dv = trunc i64 %.fca.0.extract495 to i32     ; 4 uses
  %i.dw = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %22) ; 2 uses
  %.fca.1.extract487 = extractvalue { i64, i8 } %i.dw, 1
  %i.dx = trunc nuw i8 %.fca.1.extract487 to i1
  br i1 %i.dx, label %bb.x, label %_ZNK4llvm8TypeSizecvmEv.exit749

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit748
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit749:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit748
  %.fca.0.extract486 = extractvalue { i64, i8 } %i.dw, 0
  %i.dy = trunc i64 %.fca.0.extract486 to i32     ; 6 uses
  %i.dz = udiv i32 %i.dv, %i.dy                   ; 2 uses
  %.recomposed = urem i32 %i.dv, %i.dy            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.ea = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.ea, ptr %32, align 8, !tbaa !228
  %i.eb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !227
  %i.ec = getelementptr inbounds nuw i8, ptr %32, i64 12 ; 2 uses
  store i32 4, ptr %i.ec, align 4, !tbaa !239
  %.not7281330 = icmp ugt i32 %i.dy, %i.dv
  br i1 %.not7281330, label %._crit_edge1333, label %.lr.ph1332

.lr.ph1332:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit749
  %i.ed = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %34, i64 8
end_hunk_0
begin_hunk_1_@_ZN4llvm15LegalizerHelper12narrowScalarERNS_12MachineInstrEjNS_3LLTE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19
  store i64 %3, ptr %69, align 8, !tbaa !226
  %i.so = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i32 0, ptr %i.so, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19
  store i32 %i.f, ptr %70, align 8, !tbaa !238
  %i.sp = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i32 0, ptr %i.sp, align 8, !tbaa !246
  %i.sq = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildFPTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.sn, ptr noundef nonnull align 8 dereferenceable(20) %69, ptr noundef nonnull align 8 dereferenceable(20) %70, i64 0) #19 ; 2 uses
  %i.sr = extractvalue { ptr, ptr } %i.sq, 0      ; 2 uses
  %i.ss = extractvalue { ptr, ptr } %i.sq, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  %i.st = icmp eq i64 %i.sl, %.sroa.05.0.i7371230
  %i.su = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  br i1 %i.st, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19
  store ptr %i.sr, ptr %71, align 8, !tbaa !262
  %.sroa.51079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %71, i64 8
  store ptr %i.ss, ptr %.sroa.51079.0..sroa_idx, align 8, !tbaa !264
  %i.sv = getelementptr inbounds nuw i8, ptr %71, i64 16
  store i32 1, ptr %i.sv, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19
  store i32 %i.ry, ptr %72, align 8, !tbaa !238
  %i.sw = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i32 0, ptr %i.sw, align 8, !tbaa !246
  %i.sx = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildStoreERKNS_5SrcOpES3_RNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(96) %i.su, ptr noundef nonnull align 8 dereferenceable(20) %71, ptr noundef nonnull align 8 dereferenceable(20) %72, ptr noundef nonnull align 8 dereferenceable(88) %i.si) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19
  store ptr %i.sr, ptr %73, align 8, !tbaa !262
  %.sroa.51079.0..sroa_idx1080 = getelementptr inbounds nuw i8, ptr %73, i64 8
  store ptr %i.ss, ptr %.sroa.51079.0..sroa_idx1080, align 8, !tbaa !264
  %i.sy = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i32 1, ptr %i.sy, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19
  store i32 %i.ry, ptr %74, align 8, !tbaa !238
  %i.sz = getelementptr inbounds nuw i8, ptr %74, i64 16
  store i32 0, ptr %i.sz, align 8, !tbaa !246
  %i.ta = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder15buildStoreInstrEjRKNS_5SrcOpES3_RNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(96) %i.su, i32 noundef 107, ptr noundef nonnull align 8 dereferenceable(20) %73, ptr noundef nonnull align 8 dereferenceable(20) %74, ptr noundef nonnull align 8 dereferenceable(88) %i.si) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.tb = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.gy

bb.dg:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.tc = tail call noundef i32 @_ZN4llvm15LegalizerHelper18narrowScalarSelectERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3)
  br label %bb.gy

bb.dh:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.td = tail call noundef i32 @_ZN4llvm15LegalizerHelper17narrowScalarBasicERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 poison, i64 %3)
  br label %bb.gy

bb.di:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.te = tail call noundef i32 @_ZN4llvm15LegalizerHelper17narrowScalarShiftERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3)
  br label %bb.gy

bb.dj:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.tf = icmp eq i32 %2, 1
  br i1 %i.tf, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  switch i32 %i.av, label %default.unreachable [
    i32 262, label %bb.dl
    i32 263, label %bb.dl
    i32 260, label %bb.dm
    i32 261, label %bb.dm
    i32 265, label %bb.dn
    i32 264, label %bb.do
  ]

bb.dl:                                            ; preds = %bb.dk, %bb.dk
  %i.tg = tail call noundef i32 @_ZN4llvm15LegalizerHelper16narrowScalarCTLZERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1, i64 %3)
  br label %bb.gy

bb.dm:                                            ; preds = %bb.dk, %bb.dk
  %i.th = tail call noundef i32 @_ZN4llvm15LegalizerHelper16narrowScalarCTTZERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1, i64 %3)
  br label %bb.gy

bb.dn:                                            ; preds = %bb.dk
  %i.ti = tail call noundef i32 @_ZN4llvm15LegalizerHelper17narrowScalarCTPOPERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1, i64 %3)
  br label %bb.gy

bb.do:                                            ; preds = %bb.dk
  %i.tj = tail call noundef i32 @_ZN4llvm15LegalizerHelper16narrowScalarCTLSERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1, i64 %3)
  br label %bb.gy

bb.dp:                                            ; preds = %bb.dj
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !182
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.to = load ptr, ptr %i.tn, align 8
  tail call void %i.to(ptr noundef nonnull align 8 dereferenceable(64) %i.tl, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.tp = load ptr, ptr %i.c, align 8, !tbaa !225 ; 2 uses
  %i.tq = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180
  %i.tr = tail call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.tq, i64 %3, ptr nonnull @.str, i64 0) #19 ; 2 uses
  %i.ts = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.tt, align 8, !nonnull !179, !noundef !179 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.tu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.tu, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.dp
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 44
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !266
  %i.tx = and i32 %i.tw, 8
  %.not34.i.i.i.i = icmp eq i32 %i.tx, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.tz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !267 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 44
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !266
  %i.uc = and i32 %i.ub, 8
  %.not3.i.i.i.i = icmp eq i32 %i.uc, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !0

_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %bb.dp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.dp ], [ %.sroa.0.0.copyload.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.tz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !267
  store ptr %i.ue, ptr %i.tt, align 8
  %i.uf = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !226
  store i32 %i.uh, ptr %18, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %i.ui, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store i32 %i.tr, ptr %19, align 8, !tbaa !238
  %i.uj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.uj, align 8, !tbaa !246
  %i.uk = load ptr, ptr %i.uf, align 8, !tbaa !182
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 32
  %i.um = load ptr, ptr %i.ul, align 8
  %i.un = call { ptr, ptr } %i.um(ptr noundef nonnull align 8 dereferenceable(96) %i.uf, i32 noundef 154, ptr nonnull %18, i64 1, ptr nonnull %19, i64 1, i64 0) #19, !inline_history !268 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.tp, i32 %i.tr) #19
  %i.uo = load ptr, ptr %i.tk, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !182
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 40
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(64) %i.uo, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.dq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not723 = icmp eq i32 %2, 1
  br i1 %.not723, label %bb.dr, label %bb.gy

bb.dr:                                            ; preds = %bb.dq
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !182
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.uw = load ptr, ptr %i.uv, align 8
  tail call void %i.uw(ptr noundef nonnull align 8 dereferenceable(64) %i.ut, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper15narrowScalarSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 1)
  %i.ux = load ptr, ptr %i.us, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !182
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 40
  %i.va = load ptr, ptr %i.uz, align 8
  tail call void %i.va(ptr noundef nonnull align 8 dereferenceable(64) %i.ux, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.ds:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not722 = icmp eq i32 %2, 0
  br i1 %.not722, label %bb.dt, label %bb.gy

bb.dt:                                            ; preds = %bb.ds
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !182
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = load ptr, ptr %i.ve, align 8
  tail call void %i.vf(ptr noundef nonnull align 8 dereferenceable(64) %i.vc, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 0, i32 noundef 154)
  %i.vg = load ptr, ptr %i.vb, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !182
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 40
  %i.vj = load ptr, ptr %i.vi, align 8
  tail call void %i.vj(ptr noundef nonnull align 8 dereferenceable(64) %i.vg, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.du:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %.lhs.trunc1244 = trunc i64 %.sroa.05.0.i1219 to i32 ; 3 uses
  %.rhs.trunc1245 = trunc nuw i64 %.sroa.05.0.i7371230 to i32 ; 3 uses
  %i.vk = urem i32 %.lhs.trunc1244, %.rhs.trunc1245
  %i.vl = udiv i32 %.lhs.trunc1244, %.rhs.trunc1245 ; 2 uses
  %.not721 = icmp eq i32 %i.vk, 0
  br i1 %.not721, label %bb.dv, label %bb.gy

bb.dv:                                            ; preds = %bb.du
  %.zext1249 = zext i32 %i.vl to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  call void @_ZN4llvm11SmallVectorINS_8RegisterELj2EEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %75, i64 noundef %.zext1249)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.vn = load i24, ptr %i.vm, align 8
  %i.vo = zext i24 %i.vn to i64
  %i.vp = lshr i64 %i.vo, 1
  call void @_ZN4llvm11SmallVectorINS0_INS_8RegisterELj2EEELj2EEC2Em(ptr noundef nonnull align 8 dereferenceable(64) %76, i64 noundef %i.vp)
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !182
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.vu = load ptr, ptr %i.vt, align 8
  call void %i.vu(ptr noundef nonnull align 8 dereferenceable(64) %i.vr, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.vv = load i24, ptr %i.vm, align 8
  %i.vw = icmp ugt i24 %i.vv, 1
  br i1 %i.vw, label %.lr.ph1316, label %._crit_edge1317

._crit_edge1317:                                  ; preds = %.lr.ph1316, %bb.dv
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !269 ; 3 uses
  %i.vz = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 64
  store ptr %i.vy, ptr %i.wa, align 8, !tbaa !270
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 72
  store ptr %1, ptr %i.wb, align 8
  %.not1342 = icmp ugt i32 %.rhs.trunc1245, %.lhs.trunc1244
  br i1 %.not1342, label %._crit_edge1325, label %.lr.ph1324

.lr.ph1324:                                       ; preds = %._crit_edge1317
  %i.wc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.wd = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.we = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.wh = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.dx

.lr.ph1316:                                       ; preds = %bb.dv, %.lr.ph1316
  %indvars.iv1360 = phi i64 [ %indvars.iv.next1361, %.lr.ph1316 ], [ 1, %bb.dv ] ; 4 uses
  %i.wi = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.wj = getelementptr inbounds nuw [32 x i8], ptr %i.wi, i64 %indvars.iv1360
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 48
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !226 ; 2 uses
  %i.wm = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %i.wn = call ptr @_ZN4llvm17MachineBasicBlock25getFirstTerminatorForwardEv(ptr noundef nonnull align 8 dereferenceable(360) %i.wl) #19
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 64
  store ptr %i.wl, ptr %i.wo, align 8, !tbaa !270
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 72
  store ptr %i.wn, ptr %i.wp, align 8
  %i.wq = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.wq, i64 %indvars.iv1360
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !226
  %.sroa.0236.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  %i.wu = lshr i64 %indvars.iv1360, 1
  %i.wv = load ptr, ptr %76, align 8, !tbaa !228
  %i.ww = getelementptr inbounds nuw [24 x i8], ptr %i.wv, i64 %i.wu
  %i.wx = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.wy = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %i.wt, i64 %.sroa.0236.0.copyload, i32 noundef %i.vl, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr noundef nonnull align 8 dereferenceable(96) %i.wx, ptr noundef nonnull align 8 dereferenceable(520) %i.wy) #19
  %indvars.iv.next1361 = add nuw nsw i64 %indvars.iv1360, 2 ; 2 uses
  %i.wz = load i24, ptr %i.vm, align 8
  %i.xa = zext i24 %i.wz to i64
  %i.xb = icmp samesign ult i64 %indvars.iv.next1361, %i.xa
  br i1 %i.xb, label %.lr.ph1316, label %._crit_edge1317, !llvm.loop !519

._crit_edge1325:                                  ; preds = %._crit_edge1321, %._crit_edge1317
  %i.xc = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %i.xd = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.vy) #19
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 64
  store ptr %i.vy, ptr %i.xe, align 8, !tbaa !270
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 72
  store ptr %i.xd, ptr %i.xf, align 8
  %i.xg = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #19
  %i.xh = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !226
  store i32 %i.xj, ptr %77, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %77, i64 16
  store i32 1, ptr %i.xk, align 8, !tbaa !243
  %i.xl = load ptr, ptr %75, align 8, !tbaa !228
  %i.xm = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !227
  %i.xo = zext i32 %i.xn to i64
  %i.xp = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.xg, ptr noundef nonnull align 8 dereferenceable(20) %77, ptr %i.xl, i64 %i.xo) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  %i.xq = load ptr, ptr %i.vq, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !182
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 40
  %i.xt = load ptr, ptr %i.xs, align 8
  call void %i.xt(ptr noundef nonnull align 8 dereferenceable(64) %i.xq, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.xu = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  call void @_ZN4llvm11SmallVectorINS0_INS_8RegisterELj2EEELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %76) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  %i.xv = load ptr, ptr %75, align 8, !tbaa !228  ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.xx = icmp eq ptr %i.xv, %i.xw
  br i1 %i.xx, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit802, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge1325
  call void @free(ptr noundef %i.xv) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit802

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit802: ; preds = %._crit_edge1325, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  br label %bb.gy

bb.dx:                                            ; preds = %.lr.ph1324, %._crit_edge1321
  %indvars.iv1366 = phi i64 [ 0, %.lr.ph1324 ], [ %indvars.iv.next1367, %._crit_edge1321 ] ; 4 uses
  %i.xy = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180
  %.sroa.0226.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  %i.xz = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.xy, i64 %.sroa.0226.0.copyload, ptr nonnull @.str, i64 0) #19
  %i.ya = load ptr, ptr %75, align 8, !tbaa !228
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv1366
  store i32 %i.xz, ptr %i.yb, align 4, !tbaa !238
  %i.yc = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %i.yd = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %i.yc, i32 noundef 74) #19 ; 2 uses
  %i.ye = extractvalue { ptr, ptr } %i.yd, 0
  %i.yf = extractvalue { ptr, ptr } %i.yd, 1
  %i.yg = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %i.yc, ptr %i.ye, ptr %i.yf) #19 ; 2 uses
  %i.yh = extractvalue { ptr, ptr } %i.yg, 0      ; 3 uses
  %i.yi = extractvalue { ptr, ptr } %i.yg, 1      ; 3 uses
  %i.yj = load ptr, ptr %75, align 8, !tbaa !228
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv1366
  %.sroa.0225.0.copyload = load i32, ptr %i.yk, align 4, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr null, ptr %i.wc, align 8, !tbaa !272, !alias.scope !549
  store i32 %.sroa.0225.0.copyload, ptr %i.wd, align 4, !tbaa !226, !alias.scope !549
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.we, i8 0, i64 16, i1 false), !alias.scope !549
  store i32 16777216, ptr %17, align 8, !alias.scope !549
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yi, ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.yl = load i24, ptr %i.vm, align 8
  %i.ym = icmp ugt i24 %i.yl, 1
  br i1 %i.ym, label %.lr.ph1320, label %._crit_edge1321

._crit_edge1321:                                  ; preds = %.lr.ph1320, %bb.dx
  %indvars.iv.next1367 = add nuw nsw i64 %indvars.iv1366, 1 ; 2 uses
  %i.yn = icmp samesign ult i64 %indvars.iv.next1367, %.zext1249
  br i1 %i.yn, label %bb.dx, label %._crit_edge1325, !llvm.loop !522

.lr.ph1320:                                       ; preds = %bb.dx, %.lr.ph1320
  %indvars.iv1363 = phi i64 [ %indvars.iv.next1364, %.lr.ph1320 ], [ 1, %bb.dx ] ; 3 uses
  %i.yo = lshr i64 %indvars.iv1363, 1
  %i.yp = load ptr, ptr %76, align 8, !tbaa !228
  %i.yq = getelementptr inbounds nuw [24 x i8], ptr %i.yp, i64 %i.yo
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !228
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv1366
  %.sroa.0220.0.copyload = load i32, ptr %i.ys, align 4, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr null, ptr %i.wf, align 8, !tbaa !272, !alias.scope !550
  store i32 %.sroa.0220.0.copyload, ptr %i.wg, align 4, !tbaa !226, !alias.scope !550
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i8 0, i64 16, i1 false), !alias.scope !550
  store i32 0, ptr %16, align 8, !alias.scope !550
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yi, ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.yt = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.yu = getelementptr inbounds nuw [32 x i8], ptr %i.yt, i64 %indvars.iv1363
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yi, ptr noundef nonnull align 8 dereferenceable(1065) %i.yh, ptr noundef nonnull align 8 dereferenceable(32) %i.yv) #19
  %indvars.iv.next1364 = add nuw nsw i64 %indvars.iv1363, 2 ; 2 uses
  %i.yw = load i24, ptr %i.vm, align 8
  %i.yx = zext i24 %i.yw to i64
  %i.yy = icmp samesign ult i64 %indvars.iv.next1364, %i.yx
  br i1 %i.yy, label %.lr.ph1320, label %._crit_edge1321, !llvm.loop !525

bb.dy:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not720 = icmp eq i32 %2, 2
  br i1 %.not720, label %bb.dz, label %bb.gy

bb.dz:                                            ; preds = %bb.dy
  %i.yz = icmp eq i32 %i.av, 255
  %i.za = select i1 %i.yz, i32 2, i32 3
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !182
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 32
  %i.zf = load ptr, ptr %i.ze, align 8
  tail call void %i.zf(ptr noundef nonnull align 8 dereferenceable(64) %i.zc, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper15narrowScalarSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef %i.za)
  %i.zg = load ptr, ptr %i.zb, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !182
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 40
  %i.zj = load ptr, ptr %i.zi, align 8
  tail call void %i.zj(ptr noundef nonnull align 8 dereferenceable(64) %i.zg, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.ea:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.zk = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !226 ; 3 uses
  %i.zm = icmp slt i32 %i.zl, 0
  br i1 %i.zm, label %bb.eb, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit804

bb.eb:                                            ; preds = %bb.ea
  %i.zn = and i32 %i.zl, 2147483647               ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !227
  %i.zq = icmp ugt i32 %i.zp, %i.zn
  br i1 %i.zq, label %bb.ec, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit804

bb.ec:                                            ; preds = %bb.eb
  %i.zr = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.zs = zext nneg i32 %i.zn to i64
  %i.zt = load ptr, ptr %i.zr, align 8, !tbaa !228
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %i.zs
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit804

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit804: ; preds = %bb.ea, %bb.eb, %bb.ec
  %.sroa.04.0.i803 = phi i64 [ %i.zv, %bb.ec ], [ 0, %bb.eb ], [ 0, %bb.ea ] ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !226 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #19
  store i64 0, ptr %78, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19
  %i.zy = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  store ptr %i.zy, ptr %79, align 8, !tbaa !228
  %i.zz = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 3 uses
  store i32 0, ptr %i.zz, align 8, !tbaa !227
  %i.aaa = getelementptr inbounds nuw i8, ptr %79, i64 12
  store i32 4, ptr %i.aaa, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19
  %i.aab = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  store ptr %i.aab, ptr %80, align 8, !tbaa !228
  %i.aac = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm15LegalizerHelper12narrowScalarERNS_12MachineInstrEjNS_3LLTE:bb.a
  store ptr %i.aje, ptr %.sroa.4931.0..sroa_idx, align 8, !tbaa !264
  store i32 1, ptr %i.agw, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #19
  store i32 %.sroa.0966.11288, ptr %114, align 8, !tbaa !238
  store i32 0, ptr %i.agx, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #19
  store ptr %i.aiv, ptr %115, align 8, !tbaa !262
  store ptr %i.aiw, ptr %.sroa.4936.0..sroa_idx, align 8, !tbaa !264
  store i32 1, ptr %i.agy, align 8, !tbaa !246
  %i.ajg = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildSelectERKNS_5DstOpERKNS_5SrcOpES6_S6_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.ajf, ptr noundef nonnull align 8 dereferenceable(20) %112, ptr noundef nonnull align 8 dereferenceable(20) %113, ptr noundef nonnull align 8 dereferenceable(20) %114, ptr noundef nonnull align 8 dereferenceable(20) %115, i64 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #19
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %indvars.iv.next1355 = add nuw nsw i64 %indvars.iv1354, 1 ; 2 uses
  %.not716 = icmp eq i64 %indvars.iv.next1355, %i.ahd
  br i1 %.not716, label %.loopexit, label %bb.ey, !llvm.loop !544

.loopexit:                                        ; preds = %bb.fd, %._crit_edge1286, %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit811
  %i.ajh = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ed, %.loopexit
  %.8 = phi i32 [ 1, %.loopexit ], [ 2, %bb.ed ]
  %i.aji = load ptr, ptr %83, align 8, !tbaa !228 ; 2 uses
  %i.ajj = icmp eq ptr %i.aji, %i.aaj
  br i1 %i.ajj, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit813, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef %i.aji) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit813

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit813: ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  %i.ajk = load ptr, ptr %82, align 8, !tbaa !228 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajk, %i.aag
  br i1 %i.ajl, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit814, label %bb.fg

bb.fg:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit813
  call void @free(ptr noundef %i.ajk) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit814

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit814: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit813, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit804, %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit814
  %.9 = phi i32 [ %.8, %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit814 ], [ 2, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit804 ]
  %i.ajm = load ptr, ptr %80, align 8, !tbaa !228 ; 2 uses
  %i.ajn = icmp eq ptr %i.ajm, %i.aab
  br i1 %i.ajn, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit815, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @free(ptr noundef %i.ajm) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit815

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit815: ; preds = %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19
  %i.ajo = load ptr, ptr %79, align 8, !tbaa !228 ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.zy
  br i1 %i.ajp, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit816, label %bb.fj

bb.fj:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit815
  call void @free(ptr noundef %i.ajo) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit816

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit816: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit815, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  br label %bb.gy

bb.fk:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not714 = icmp eq i32 %2, 0
  br i1 %.not714, label %bb.fl, label %bb.gy

bb.fl:                                            ; preds = %bb.fk
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !182
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 32
  %i.aju = load ptr, ptr %i.ajt, align 8
  tail call void %i.aju(ptr noundef nonnull align 8 dereferenceable(64) %i.ajr, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 0, i32 noundef 154)
  %i.ajv = load ptr, ptr %i.ajq, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !182
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8
  tail call void %i.ajy(ptr noundef nonnull align 8 dereferenceable(64) %i.ajv, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.fm:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not709 = icmp eq i32 %2, 0
  br i1 %.not709, label %bb.fn, label %bb.gy

bb.fn:                                            ; preds = %bb.fm
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !226 ; 4 uses
  %i.akb = icmp slt i64 %3, -8070450532247928832
  %spec.select.i.i = or i1 %i.akb, %i.ae
  %i.akc = lshr i64 %3, 44
  %i.akd = and i64 %i.akc, 65535
  %i.ake = lshr i64 %3, 28
  %i.akf = and i64 %i.ake, 4294967295
  %i.akg = select i1 %spec.select.i.i, i64 %i.akd, i64 %i.akf
  %i.akh = icmp slt i64 %i.aka, %i.akg
  br i1 %i.akh, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !182
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 32
  %i.akm = load ptr, ptr %i.akl, align 8
  tail call void %i.akm(ptr noundef nonnull align 8 dereferenceable(64) %i.akj, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.akn = load ptr, ptr %i.c, align 8, !tbaa !225 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 32
  %i.akp = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #19
  store i64 %3, ptr %116, align 8, !tbaa !226
  %i.akq = getelementptr inbounds nuw i8, ptr %116, i64 16
  store i32 0, ptr %i.akq, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #19
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akn, i64 36
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !226
  store i32 %i.aks, ptr %117, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %117, i64 16
  store i32 0, ptr %i.akt, align 8, !tbaa !246
  %i.aku = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.akp, ptr noundef nonnull align 8 dereferenceable(20) %116, ptr noundef nonnull align 8 dereferenceable(20) %117, i64 0) #19
  %i.akv = extractvalue { ptr, ptr } %i.aku, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #19
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 32
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !225
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !226
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ako, i32 %i.akz) #19
  %i.ala = load ptr, ptr %i.c, align 8, !tbaa !225 ; 2 uses
  %i.alb = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180
  %.sroa.074.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  %i.alc = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.alb, i64 %.sroa.074.0.copyload, ptr nonnull @.str, i64 0) #19 ; 2 uses
  %i.ald = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ale, align 8, !nonnull !179, !noundef !179 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.alf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.alf, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.fo
  %i.alg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 44
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !266
  %i.ali = and i32 %i.alh, 8
  %.not34.i.i.i = icmp eq i32 %i.ali, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.alk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.0.0.copyload.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !267 ; 3 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 44
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !266
  %i.aln = and i32 %i.alm, 8
  %.not3.i.i.i = icmp eq i32 %i.aln, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.fo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.fo ], [ %.sroa.0.0.copyload.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.alk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.alo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !267
  store ptr %i.alp, ptr %i.ale, align 8
  %i.alq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #19
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ala, i64 4
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !226
  store i32 %i.als, ptr %118, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %118, i64 16
  store i32 1, ptr %i.alt, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #19
  store i32 %i.alc, ptr %119, align 8, !tbaa !238
  %i.alu = getelementptr inbounds nuw i8, ptr %119, i64 16
  store i32 0, ptr %i.alu, align 8, !tbaa !246
  %i.alv = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildSExtERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.alq, ptr noundef nonnull align 8 dereferenceable(20) %118, ptr noundef nonnull align 8 dereferenceable(20) %119) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #19
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ala, i32 %i.alc) #19
  %i.alw = load ptr, ptr %i.aki, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !182
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 40
  %i.alz = load ptr, ptr %i.aly, align 8
  call void %i.alz(ptr noundef nonnull align 8 dereferenceable(64) %i.alw, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.fp:                                            ; preds = %bb.fn
  %.lhs.trunc1250 = trunc i64 %.sroa.05.0.i1219 to i32 ; 2 uses
  %.rhs.trunc1251 = trunc nuw i64 %.sroa.05.0.i7371230 to i32 ; 2 uses
  %i.ama = urem i32 %.lhs.trunc1250, %.rhs.trunc1251
  %i.amb = udiv i32 %.lhs.trunc1250, %.rhs.trunc1251 ; 3 uses
  %.not710 = icmp eq i32 %i.ama, 0
  br i1 %.not710, label %bb.fq, label %bb.gy

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #19
  %i.amc = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 2 uses
  store ptr %i.amc, ptr %120, align 8, !tbaa !228
  %i.amd = getelementptr inbounds nuw i8, ptr %120, i64 8 ; 5 uses
  store i32 0, ptr %i.amd, align 8, !tbaa !227
  %i.ame = getelementptr inbounds nuw i8, ptr %120, i64 12
  store i32 2, ptr %i.ame, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #19
  %i.amf = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 3 uses
  store ptr %i.amf, ptr %121, align 8, !tbaa !228
  %i.amg = getelementptr inbounds nuw i8, ptr %121, i64 8 ; 5 uses
  store i32 0, ptr %i.amg, align 8, !tbaa !227
  %i.amh = getelementptr inbounds nuw i8, ptr %121, i64 12 ; 2 uses
  store i32 2, ptr %i.amh, align 4, !tbaa !239
  %i.ami = icmp sgt i32 %i.amb, 0                 ; 2 uses
  br i1 %i.ami, label %.lr.ph1273, label %._crit_edge1274

._crit_edge1274.loopexit:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit824
  %.pre = load ptr, ptr %121, align 8, !tbaa !228
  %.pre1375 = load i32, ptr %i.amg, align 8, !tbaa !227
  %.pre1376 = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.amj = zext i32 %.pre1375 to i64
  br label %._crit_edge1274

._crit_edge1274:                                  ; preds = %._crit_edge1274.loopexit, %bb.fq
  %i.amk = phi ptr [ %.pre1376, %._crit_edge1274.loopexit ], [ %i.d, %bb.fq ]
  %i.aml = phi i64 [ %i.amj, %._crit_edge1274.loopexit ], [ 0, %bb.fq ]
  %i.amm = phi ptr [ %.pre, %._crit_edge1274.loopexit ], [ %i.amf, %bb.fq ]
  %i.amn = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #19
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amk, i64 36
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !226
  store i32 %i.amp, ptr %122, align 8
  %i.amq = getelementptr inbounds nuw i8, ptr %122, i64 16
  store i32 0, ptr %i.amq, align 8, !tbaa !246
  %i.amr = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_8ArrayRefINS_8RegisterEEERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.amn, ptr %i.amm, i64 %i.aml, ptr noundef nonnull align 8 dereferenceable(20) %122) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #19
  %i.ams = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #19
  %.sroa.058.0.copyload = load i64, ptr %22, align 8, !tbaa !226 ; 5 uses
  store i64 %.sroa.058.0.copyload, ptr %123, align 8, !tbaa !226
  %i.amt = getelementptr inbounds nuw i8, ptr %123, i64 16
  store i32 0, ptr %i.amt, align 8, !tbaa !243
  %.mask.i.i.i819 = and i64 %.sroa.058.0.copyload, -1152921504606846976
  %i.amu = icmp eq i64 %.mask.i.i.i819, 4611686018427387904
  %i.amv = icmp slt i64 %.sroa.058.0.copyload, -8070450532247928832
  %spec.select.i.i820 = or i1 %i.amv, %i.amu
  %i.amw = lshr i64 %.sroa.058.0.copyload, 44
  %i.amx = and i64 %i.amw, 65535
  %i.amy = lshr i64 %.sroa.058.0.copyload, 28
  %.0.in.i821 = select i1 %spec.select.i.i820, i64 %i.amx, i64 %i.amy
  %i.amz = add nuw nsw i64 %.0.in.i821, 4294967295
  %i.ana = and i64 %i.amz, 4294967295
  %i.anb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.ams, ptr noundef nonnull align 8 dereferenceable(20) %123, i64 noundef %i.ana) #19
  %i.anc = extractvalue { ptr, ptr } %i.anb, 1
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 32
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !225
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 4
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #19
  br i1 %i.ami, label %.lr.ph1279, label %._crit_edge1280

.lr.ph1279:                                       ; preds = %._crit_edge1274
  %.sroa.4903.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.anh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ani = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.anj = getelementptr inbounds nuw i8, ptr %125, i64 16
  %i.ank = getelementptr inbounds nuw i8, ptr %125, i64 24
  %.lhs.trunc1256 = trunc nuw i64 %i.aka to i32
  %i.anl = getelementptr inbounds nuw i8, ptr %125, i64 40
  %i.anm = zext nneg i32 %i.amb to i64
  br label %bb.fv

.lr.ph1273:                                       ; preds = %bb.fq, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit824
  %.06941271 = phi i32 [ %i.anw, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit824 ], [ 0, %bb.fq ]
  %i.ann = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180
  %.sroa.063.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  %i.ano = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ann, i64 %.sroa.063.0.copyload, ptr nonnull @.str, i64 0) #19 ; 2 uses
  %i.anp = load i32, ptr %i.amg, align 8, !tbaa !227 ; 2 uses
  %i.anq = load i32, ptr %i.amh, align 4, !tbaa !239
  %.not.i823 = icmp ult i32 %i.anp, %i.anq
  br i1 %.not.i823, label %bb.fs, label %bb.fr, !prof !247

bb.fr:                                            ; preds = %.lr.ph1273
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %121, i32 %i.ano)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit824

bb.fs:                                            ; preds = %.lr.ph1273
  %i.anr = zext i32 %i.anp to i64
  %i.ans = load ptr, ptr %121, align 8, !tbaa !228
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.anr
  store i32 %i.ano, ptr %i.ant, align 1
  %i.anu = load i32, ptr %i.amg, align 8, !tbaa !227
  %i.anv = add i32 %i.anu, 1
  store i32 %i.anv, ptr %i.amg, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit824

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit824: ; preds = %bb.fr, %bb.fs
  %i.anw = add nuw nsw i32 %.06941271, 1          ; 2 uses
  %i.anx = icmp slt i32 %i.anw, %i.amb
  br i1 %i.anx, label %.lr.ph1273, label %._crit_edge1274.loopexit, !llvm.loop !545

._crit_edge1280:                                  ; preds = %bb.gc, %._crit_edge1274
  %i.any = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 4
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !226
  %i.aob = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #19
  store i32 %i.aoa, ptr %126, align 8, !tbaa !238
  %i.aoc = getelementptr inbounds nuw i8, ptr %126, i64 16
  store i32 1, ptr %i.aoc, align 8, !tbaa !243
  %i.aod = load ptr, ptr %120, align 8, !tbaa !228
  %i.aoe = load i32, ptr %i.amd, align 8, !tbaa !227
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.aob, ptr noundef nonnull align 8 dereferenceable(20) %126, ptr %i.aod, i64 %i.aof) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #19
  %i.aoh = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.aoi = load ptr, ptr %121, align 8, !tbaa !228 ; 2 uses
  %i.aoj = icmp eq ptr %i.aoi, %i.amf
  br i1 %i.aoj, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit825, label %bb.ft

bb.ft:                                            ; preds = %._crit_edge1280
  call void @free(ptr noundef %i.aoi) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit825

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit825: ; preds = %._crit_edge1280, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #19
  %i.aok = load ptr, ptr %120, align 8, !tbaa !228 ; 2 uses
  %i.aol = icmp eq ptr %i.aok, %i.amc
  br i1 %i.aol, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit826, label %bb.fu

bb.fu:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit825
  call void @free(ptr noundef %i.aok) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit826

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit826: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit825, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #19
  br label %bb.gy

bb.fv:                                            ; preds = %.lr.ph1279, %bb.gc
  %indvars.iv1348 = phi i64 [ 0, %.lr.ph1279 ], [ %indvars.iv.next1349, %bb.gc ] ; 4 uses
  %.sroa.0907.01276 = phi i32 [ 0, %.lr.ph1279 ], [ %.sroa.0907.1, %bb.gc ] ; 3 uses
  %.sroa.0908.01275 = phi i32 [ 0, %.lr.ph1279 ], [ %.sroa.0908.1, %bb.gc ] ; 5 uses
  %indvars.iv.next1349 = add nuw nsw i64 %indvars.iv1348, 1 ; 3 uses
  %i.aom = load i64, ptr %22, align 8             ; 6 uses
  %.mask.i.i.i827 = and i64 %i.aom, -1152921504606846976
  %i.aon = icmp eq i64 %.mask.i.i.i827, 4611686018427387904
  %i.aoo = icmp slt i64 %i.aom, -8070450532247928832
  %spec.select.i.i828 = or i1 %i.aoo, %i.aon
  %i.aop = lshr i64 %i.aom, 44
  %i.aoq = and i64 %i.aop, 65535
  %i.aor = lshr i64 %i.aom, 28
  %.0.in.i829 = select i1 %spec.select.i.i828, i64 %i.aoq, i64 %i.aor ; 3 uses
  %.0.i830 = trunc i64 %.0.in.i829 to i32
  %i.aos = mul i64 %indvars.iv.next1349, %.0.in.i829
  %i.aot = and i64 %i.aos, 4294967295
  %.not711 = icmp slt i64 %i.aka, %i.aot
  br i1 %.not711, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aou = load ptr, ptr %121, align 8, !tbaa !228
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %indvars.iv1348
  %.sroa.051.0.copyload = load i32, ptr %i.aov, align 4, !tbaa !238
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %120, i32 %.sroa.051.0.copyload)
  %i.aow = load ptr, ptr %120, align 8, !tbaa !228
  %i.aox = load i32, ptr %i.amd, align 8, !tbaa !227
  %i.aoy = zext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %i.aoy
  %i.apa = getelementptr inbounds i8, ptr %i.aoz, i64 -4
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !238
  br label %bb.gc

bb.fx:                                            ; preds = %bb.fv
  %i.apc = mul i64 %indvars.iv1348, %.0.in.i829
  %i.apd = and i64 %i.apc, 4294967295
  %.not712 = icmp sgt i64 %i.aka, %i.apd
  br i1 %.not712, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.not713 = icmp eq i32 %.sroa.0908.01275, 0
  br i1 %.not713, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %120, i32 %.sroa.0908.01275)
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  %i.ape = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %i.aom, ptr %6, align 8
  store i32 0, ptr %.sroa.4903.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %.sroa.0907.01276, ptr %7, align 8
  store i32 0, ptr %.sroa.4899.0..sroa_idx, align 8, !tbaa !261
  store i32 %i.ang, ptr %i.anh, align 8
  store i32 0, ptr %.sroa.4895.0..sroa_idx, align 8, !tbaa !261
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !182
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 32
  %i.aph = load ptr, ptr %i.apg, align 8
  %i.api = call { ptr, ptr } %i.aph(ptr noundef nonnull align 8 dereferenceable(96) %i.ape, i32 noundef 157, ptr nonnull %6, i64 1, ptr nonnull %7, i64 2, i64 0) #19, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.apj = extractvalue { ptr, ptr } %i.api, 1
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 32
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !225
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !226
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %120, i32 %i.apn)
  %i.apo = load ptr, ptr %120, align 8, !tbaa !228
  %i.app = load i32, ptr %i.amd, align 8, !tbaa !227
  %i.apq = zext i32 %i.app to i64
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %i.apq
  %i.aps = getelementptr inbounds i8, ptr %i.apr, i64 -4
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !238
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fx
  %i.apu = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #19
  store i64 %i.aom, ptr %124, align 8, !tbaa !226
  store i32 0, ptr %i.ani, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #19
  %i.apv = load ptr, ptr %121, align 8, !tbaa !228
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv1348
  %.sroa.039.0.copyload = load i32, ptr %i.apw, align 4, !tbaa !238
  store i32 %.sroa.039.0.copyload, ptr %125, align 8, !tbaa !238
  store i32 0, ptr %i.anj, align 8, !tbaa !246
  %i.apx = urem i32 %.lhs.trunc1256, %.0.i830
  %.zext1258 = zext i32 %i.apx to i64
  store i64 %.zext1258, ptr %i.ank, align 8, !tbaa !226
  store i32 3, ptr %i.anl, align 8, !tbaa !246
  %i.apy = load ptr, ptr %i.apu, align 8, !tbaa !182
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 32
  %i.aqa = load ptr, ptr %i.apz, align 8
  %i.aqb = call { ptr, ptr } %i.aqa(ptr noundef nonnull align 8 dereferenceable(96) %i.apu, i32 noundef 153, ptr nonnull %124, i64 1, ptr nonnull %125, i64 2, i64 0) #19
  %i.aqc = extractvalue { ptr, ptr } %i.aqb, 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 32
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !225
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 4
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !226
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %120, i32 %i.aqg)
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #19
  %i.aqh = load ptr, ptr %120, align 8, !tbaa !228
  %i.aqi = load i32, ptr %i.amd, align 8, !tbaa !227
  %i.aqj = zext i32 %i.aqi to i64
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %i.aqj
  %i.aql = getelementptr inbounds i8, ptr %i.aqk, i64 -4
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !238
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fw, %bb.gb, %bb.ga, %bb.fz
  %.sroa.0908.1 = phi i32 [ %.sroa.0908.01275, %bb.gb ], [ %i.apt, %bb.ga ], [ %.sroa.0908.01275, %bb.fz ], [ %.sroa.0908.01275, %bb.fw ]
  %.sroa.0907.1 = phi i32 [ %i.aqm, %bb.gb ], [ %.sroa.0907.01276, %bb.ga ], [ %.sroa.0907.01276, %bb.fz ], [ %i.apb, %bb.fw ]
  %i.aqn = icmp samesign ult i64 %indvars.iv.next1349, %i.anm
  br i1 %i.aqn, label %bb.fv, label %._crit_edge1280, !llvm.loop !546

bb.gd:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %.lhs.trunc1259 = trunc i64 %.sroa.05.0.i1219 to i32 ; 3 uses
  %.rhs.trunc1260 = trunc nuw i64 %.sroa.05.0.i7371230 to i32 ; 3 uses
  %i.aqo = urem i32 %.lhs.trunc1259, %.rhs.trunc1260
  %i.aqp = udiv i32 %.lhs.trunc1259, %.rhs.trunc1260 ; 3 uses
  %.not708 = icmp eq i32 %i.aqo, 0
  br i1 %.not708, label %bb.ge, label %bb.gy

bb.ge:                                            ; preds = %bb.gd
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !182
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 32
  %i.aqu = load ptr, ptr %i.aqt, align 8
  tail call void %i.aqu(ptr noundef nonnull align 8 dereferenceable(64) %i.aqr, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #19
  %i.aqv = getelementptr inbounds nuw i8, ptr %127, i64 16 ; 2 uses
  store ptr %i.aqv, ptr %127, align 8, !tbaa !228
  %i.aqw = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i32 0, ptr %i.aqw, align 8, !tbaa !227
  %i.aqx = getelementptr inbounds nuw i8, ptr %127, i64 12
  store i32 2, ptr %i.aqx, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #19
  %i.aqy = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  store ptr %i.aqy, ptr %128, align 8, !tbaa !228
  %i.aqz = getelementptr inbounds nuw i8, ptr %128, i64 8 ; 5 uses
  store i32 0, ptr %i.aqz, align 8, !tbaa !227
  %i.ara = getelementptr inbounds nuw i8, ptr %128, i64 12 ; 2 uses
  store i32 2, ptr %i.ara, align 4, !tbaa !239
  %i.arb = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 36
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !226
  %i.are = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.arf = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %i.ard, i64 %3, i32 noundef %i.aqp, ptr noundef nonnull align 8 dereferenceable(16) %127, ptr noundef nonnull align 8 dereferenceable(96) %i.are, ptr noundef nonnull align 8 dereferenceable(520) %i.arf) #19
  %.not1338 = icmp ugt i32 %.rhs.trunc1260, %.lhs.trunc1259
  br i1 %.not1338, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ge
  %i.arg = getelementptr inbounds nuw i8, ptr %129, i64 16
  %i.arh = getelementptr inbounds nuw i8, ptr %130, i64 16
  %i.ari = zext i32 %i.aqp to i64
  br label %bb.gh

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit842, %bb.ge
  %i.arj = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #19
  %i.ark = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 4
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !226
  store i32 %i.arm, ptr %131, align 8
  %i.arn = getelementptr inbounds nuw i8, ptr %131, i64 16
  store i32 1, ptr %i.arn, align 8, !tbaa !243
  %i.aro = load ptr, ptr %128, align 8, !tbaa !228
  %i.arp = load i32, ptr %i.aqz, align 8, !tbaa !227
  %i.arq = zext i32 %i.arp to i64
  %i.arr = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.arj, ptr noundef nonnull align 8 dereferenceable(20) %131, ptr %i.aro, i64 %i.arq) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #19
  %i.ars = load ptr, ptr %i.aqq, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !182
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 40
  %i.arv = load ptr, ptr %i.aru, align 8
  call void %i.arv(ptr noundef nonnull align 8 dereferenceable(64) %i.ars, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.arw = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.arx = load ptr, ptr %128, align 8, !tbaa !228 ; 2 uses
  %i.ary = icmp eq ptr %i.arx, %i.aqy
  br i1 %i.ary, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit839, label %bb.gf

bb.gf:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.arx) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit839

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit839: ; preds = %._crit_edge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #19
  %i.arz = load ptr, ptr %127, align 8, !tbaa !228 ; 2 uses
  %i.asa = icmp eq ptr %i.arz, %i.aqv
  br i1 %i.asa, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit840, label %bb.gg

bb.gg:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit839
  call void @free(ptr noundef %i.arz) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit840

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit840: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit839, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #19
  br label %bb.gy

bb.gh:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit842
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit842 ] ; 2 uses
  %i.asb = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %i.asc = load i32, ptr %i.au, align 4, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #19
  %.sroa.024.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  store i64 %.sroa.024.0.copyload, ptr %129, align 8, !tbaa !226
  store i32 0, ptr %i.arg, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #19
  %i.asd = trunc nuw i64 %indvars.iv to i32
  %i.ase = xor i32 %i.asd, -1
  %i.asf = add i32 %i.aqp, %i.ase
  %i.asg = zext i32 %i.asf to i64
  %i.ash = load ptr, ptr %127, align 8, !tbaa !228
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %i.asg
  %.sroa.021.0.copyload = load i32, ptr %i.asi, align 4, !tbaa !238
  store i32 %.sroa.021.0.copyload, ptr %130, align 8, !tbaa !238
  store i32 0, ptr %i.arh, align 8, !tbaa !246
  %i.asj = load ptr, ptr %i.asb, align 8, !tbaa !182
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 32
  %i.asl = load ptr, ptr %i.ask, align 8
  %i.asm = call { ptr, ptr } %i.asl(ptr noundef nonnull align 8 dereferenceable(96) %i.asb, i32 noundef %i.asc, ptr nonnull %129, i64 1, ptr nonnull %130, i64 1, i64 0) #19
  %i.asn = extractvalue { ptr, ptr } %i.asm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #19
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 32
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !225
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 4
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !226 ; 2 uses
  %i.ass = load i32, ptr %i.aqz, align 8, !tbaa !227 ; 2 uses
  %i.ast = load i32, ptr %i.ara, align 4, !tbaa !239
  %.not.i841 = icmp ult i32 %i.ass, %i.ast
  br i1 %.not.i841, label %bb.gj, label %bb.gi, !prof !247

bb.gi:                                            ; preds = %bb.gh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %128, i32 %i.asr)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit842

bb.gj:                                            ; preds = %bb.gh
  %i.asu = zext i32 %i.ass to i64
  %i.asv = load ptr, ptr %128, align 8, !tbaa !228
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.asv, i64 %i.asu
  store i32 %i.asr, ptr %i.asw, align 1
  %i.asx = load i32, ptr %i.aqz, align 8, !tbaa !227
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.aqz, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit842

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit842: ; preds = %bb.gi, %bb.gj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.asz = icmp samesign ult i64 %indvars.iv.next, %i.ari
  br i1 %i.asz, label %bb.gh, label %._crit_edge, !llvm.loop !547

bb.gk:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not707 = icmp eq i32 %2, 1
  br i1 %.not707, label %bb.gl, label %bb.gy

bb.gl:                                            ; preds = %bb.gk
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !182
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 32
  %i.ate = load ptr, ptr %i.atd, align 8
  tail call void %i.ate(ptr noundef nonnull align 8 dereferenceable(64) %i.atb, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper15narrowScalarSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 2)
  %i.atf = load ptr, ptr %i.ata, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !182
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 40
  %i.ati = load ptr, ptr %i.ath, align 8
  tail call void %i.ati(ptr noundef nonnull align 8 dereferenceable(64) %i.atf, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.gm:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.atj = tail call noundef i32 @_ZN4llvm15LegalizerHelper17narrowScalarFPTOIERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3)
  br label %bb.gy

bb.gn:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.go, label %bb.gy

bb.go:                                            ; preds = %bb.gn
  %i.atk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !182
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 32
  %i.ato = load ptr, ptr %i.atn, align 8
  tail call void %i.ato(ptr noundef nonnull align 8 dereferenceable(64) %i.atl, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper15narrowScalarDstERNS_12MachineInstrENS_3LLTEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 0, i32 noundef 212)
  %i.atp = load ptr, ptr %i.atk, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !182
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 40
  %i.ats = load ptr, ptr %i.atr, align 8
  tail call void %i.ats(ptr noundef nonnull align 8 dereferenceable(64) %i.atp, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.gy

bb.gp:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743, %_ZNK4llvm8TypeSizecvmEv.exit743
  %i.att = tail call noundef i32 @_ZN4llvm15LegalizerHelper18narrowScalarFLDEXPERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3)
  br label %bb.gy

bb.gq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit743
  br i1 %i.g, label %bb.gr, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit844

bb.gr:                                            ; preds = %bb.gq
  %i.atu = and i32 %i.f, 2147483647               ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.atw = load i32, ptr %i.atv, align 8, !tbaa !227
  %i.atx = icmp ugt i32 %i.atw, %i.atu
  br i1 %i.atx, label %bb.gs, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit844

bb.gs:                                            ; preds = %bb.gr
  %i.aty = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.atz = zext nneg i32 %i.atu to i64
  %i.aua = load ptr, ptr %i.aty, align 8, !tbaa !228
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %i.aua, i64 %i.atz
  %i.auc = load i64, ptr %i.aub, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit844

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit844: ; preds = %bb.gq, %bb.gr, %bb.gs
  %.sroa.04.0.i843 = phi i64 [ %i.auc, %bb.gs ], [ 0, %bb.gr ], [ 0, %bb.gq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #19
  %i.aud = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %22) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.aud, 1
  %i.aue = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.aue, label %bb.gt, label %_ZNK4llvm8TypeSizecvmEv.exit845

bb.gt:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit844
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit845:                  ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit844
  %.fca.0.extract = extractvalue { i64, i8 } %i.aud, 0
  %i.auf = trunc i64 %.fca.0.extract to i32       ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 2 uses
  store i32 %i.auf, ptr %i.aug, align 8, !tbaa !250
  %i.auh = icmp ult i32 %i.auf, 65
  br i1 %i.auh, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit845
  store i64 1, ptr %132, align 8, !tbaa !226
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.gv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit845
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %132, i64 noundef 1, i1 noundef zeroext false) #19
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.gu, %bb.gv
  %i.aui = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #19
  %.sroa.06.0.copyload = load i64, ptr %22, align 8, !tbaa !226
  store i64 %.sroa.06.0.copyload, ptr %133, align 8, !tbaa !226
end_hunk_2
begin_hunk_3_@_ZN4llvm15LegalizerHelper18moreElementsVectorERNS_12MachineInstrEjNS_3LLTE:bb.a
  %.sroa.0.0.copyload.i.i243 = load ptr, ptr %i.tx, align 8, !nonnull !179, !noundef !179 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i244 = load i64, ptr %.sroa.0.0.copyload.i.i243, align 8
  %i.ty = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i244, 4
  %.not.i.i.i.i245 = icmp eq i64 %i.ty, 0
  br i1 %.not.i.i.i.i245, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i247, label %_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit252

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i247: ; preds = %_ZNK4llvm3LLT17changeElementTypeES0_.exit227
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i243, i64 44
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !266
  %i.ub = and i32 %i.ua, 8
  %.not34.i.i.i.i248 = icmp eq i32 %i.ub, 0
  br i1 %.not34.i.i.i.i248, label %_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit252, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i247, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249
  %.sroa.0.05.i.i.i.i250 = phi ptr [ %i.ud, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249 ], [ %.sroa.0.0.copyload.i.i243, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i247 ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i250, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !267 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 44
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !266
  %i.ug = and i32 %i.uf, 8
  %.not3.i.i.i.i251 = icmp eq i32 %i.ug, 0
  br i1 %.not3.i.i.i.i251, label %_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit252, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249, !llvm.loop !0

_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit252: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249, %_ZNK4llvm3LLT17changeElementTypeES0_.exit227, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i247
  %.sroa.0.1.i.i.i.i246 = phi ptr [ %.sroa.0.0.copyload.i.i243, %_ZNK4llvm3LLT17changeElementTypeES0_.exit227 ], [ %.sroa.0.0.copyload.i.i243, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i247 ], [ %i.ud, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i249 ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i246, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !267
  store ptr %i.ui, ptr %i.tx, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !226
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !212, !nonnull !179, !align !180
  %i.un = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.um, i64 %.sroa.0283.0, ptr nonnull @.str, i64 0) #19 ; 2 uses
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.tv, i32 %i.un) #19
  %i.uo = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.uk, ptr %4, align 8, !tbaa !238
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.up, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 %i.un, ptr %5, align 8, !tbaa !238
  %i.uq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.uq, align 8, !tbaa !246
  %i.ur = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder33buildDeleteTrailingVectorElementsERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.uo, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.us = load ptr, ptr %i.pp, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !182
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(64) %i.us, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.cl

bb.bk:                                            ; preds = %bb.a, %bb.a
  %.not168 = icmp eq i32 %2, 1
  br i1 %.not168, label %bb.bl, label %bb.cl

bb.bl:                                            ; preds = %bb.bk
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !182
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  %i.va = load ptr, ptr %i.uz, align 8
  tail call void %i.va(ptr noundef nonnull align 8 dereferenceable(64) %i.ux, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZN4llvm15LegalizerHelper21moreElementsVectorSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 2)
  tail call void @_ZN4llvm15LegalizerHelper21moreElementsVectorSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !212, !nonnull !179, !align !180 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !225
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !226 ; 2 uses
  %i.vh = icmp slt i32 %i.vg, 0
  br i1 %i.vh, label %bb.bm, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit254

bb.bm:                                            ; preds = %bb.bl
  %i.vi = and i32 %i.vg, 2147483647               ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 472
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !227
  %i.vl = icmp ugt i32 %i.vk, %i.vi
  br i1 %i.vl, label %bb.bn, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit254

bb.bn:                                            ; preds = %bb.bm
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vc, i64 464
  %i.vn = zext nneg i32 %i.vi to i64
  %i.vo = load ptr, ptr %i.vm, align 8, !tbaa !228
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vn
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit254

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit254: ; preds = %bb.bl, %bb.bm, %bb.bn
  %.sroa.04.0.i253 = phi i64 [ %i.vq, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ]
  store i64 %.sroa.04.0.i253, ptr %42, align 8
  %i.vr = call i64 @_ZNK4llvm3LLT14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %42)
  %i.vs = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.vs, 65535
  %i.vt = shl i64 %3, 32
  %.sroa.2.0.insert.shift.i.i.i = and i64 %i.vt, 4294967296
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.vu = call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.insert.i.i.i, i64 %i.vr)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %i.vu, i32 noundef 0)
  %i.vv = load ptr, ptr %i.uw, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !182
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8
  call void %i.vy(ptr noundef nonnull align 8 dereferenceable(64) %i.vv, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.cl

bb.bo:                                            ; preds = %bb.a
  %.not166 = icmp eq i32 %2, 0
  br i1 %.not166, label %bb.bp, label %bb.cl

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !212, !nonnull !179, !align !180 ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !225 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 36
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !226 ; 2 uses
  %i.wf = icmp slt i32 %i.we, 0
  br i1 %i.wf, label %bb.bq, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256

bb.bq:                                            ; preds = %bb.bp
  %i.wg = and i32 %i.we, 2147483647               ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wa, i64 472
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !227
  %i.wj = icmp ugt i32 %i.wi, %i.wg
  br i1 %i.wj, label %bb.br, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256

bb.br:                                            ; preds = %bb.bq
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wa, i64 464
  %i.wl = zext nneg i32 %i.wg to i64
  %i.wm = load ptr, ptr %i.wk, align 8, !tbaa !228
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wl
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256: ; preds = %bb.bp, %bb.bq, %bb.br
  %.sroa.04.0.i255 = phi i64 [ %i.wo, %bb.br ], [ 0, %bb.bq ], [ 0, %bb.bp ] ; 3 uses
  store i64 %.sroa.04.0.i255, ptr %43, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !226 ; 2 uses
  %i.wr = icmp slt i32 %i.wq, 0
  br i1 %i.wr, label %bb.bs, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit258

bb.bs:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256
  %i.ws = and i32 %i.wq, 2147483647               ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wa, i64 472
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !227
  %i.wv = icmp ugt i32 %i.wu, %i.ws
  br i1 %i.wv, label %bb.bt, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit258

bb.bt:                                            ; preds = %bb.bs
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wa, i64 464
  %i.wx = zext nneg i32 %i.ws to i64
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !228
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.wx
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit258

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit258: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256, %bb.bs, %bb.bt
  %.sroa.04.0.i257 = phi i64 [ %i.xa, %bb.bt ], [ 0, %bb.bs ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit256 ] ; 2 uses
  %i.xb = trunc i64 %.sroa.04.0.i255 to i1
  br i1 %i.xb, label %bb.bu, label %_ZNK4llvm3LLT14getNumElementsEv.exit259

bb.bu:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit258
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit259:          ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit258
  %i.xc = trunc i64 %3 to i1
  br i1 %i.xc, label %bb.bv, label %_ZNK4llvm3LLT14getNumElementsEv.exit260

bb.bv:                                            ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit259
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit260:          ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit259
  %i.xd = trunc i64 %.sroa.04.0.i255 to i32
  %i.xe = lshr i32 %i.xd, 4
  %i.xf = and i32 %i.xe, 65535
  %i.xg = trunc i64 %3 to i32
  %i.xh = lshr i32 %i.xg, 4
  %i.xi = and i32 %i.xh, 65535
  %i.xj = mul nuw nsw i32 %i.xf, %i.xi            ; 2 uses
  %i.xk = trunc i64 %.sroa.04.0.i257 to i1
  br i1 %i.xk, label %bb.bw, label %_ZNK4llvm3LLT14getNumElementsEv.exit261

bb.bw:                                            ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit260
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit261:          ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit260
  %i.xl = trunc i64 %.sroa.04.0.i257 to i32
  %i.xm = lshr i32 %i.xl, 4
  %i.xn = and i32 %i.xm, 65535                    ; 2 uses
  %i.xo = urem i32 %i.xj, %i.xn
  %i.xp = udiv i32 %i.xj, %i.xn
  %.not167 = icmp eq i32 %i.xo, 0
  br i1 %.not167, label %_ZNK4llvm3LLT14getNumElementsEv.exit262, label %bb.bx

_ZNK4llvm3LLT14getNumElementsEv.exit262:          ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit261
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.xp to i64
  %i.xq = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 %.sroa.0.0.insert.ext.i)
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !182
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dereferenceable(64) %i.xs, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  call void @_ZN4llvm15LegalizerHelper21moreElementsVectorSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %i.xq, i32 noundef 1)
  call void @_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 0)
  %i.xw = load ptr, ptr %i.xr, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !182
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  %i.xz = load ptr, ptr %i.xy, align 8
  call void %i.xz(ptr noundef nonnull align 8 dereferenceable(64) %i.xw, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit261, %_ZNK4llvm3LLT14getNumElementsEv.exit262
  %.1 = phi i32 [ 1, %_ZNK4llvm3LLT14getNumElementsEv.exit262 ], [ 2, %_ZNK4llvm3LLT14getNumElementsEv.exit261 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br label %bb.cl

bb.by:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !212, !nonnull !179, !align !180 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !225 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 36
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !226 ; 3 uses
  %i.yh = icmp slt i32 %i.yg, 0
  br i1 %i.yh, label %bb.bz, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit264

bb.bz:                                            ; preds = %bb.by
  %i.yi = and i32 %i.yg, 2147483647               ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yb, i64 472
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !227
  %i.yl = icmp ugt i32 %i.yk, %i.yi
  br i1 %i.yl, label %bb.ca, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit264

bb.ca:                                            ; preds = %bb.bz
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 464
  %i.yn = zext nneg i32 %i.yi to i64
  %i.yo = load ptr, ptr %i.ym, align 8, !tbaa !228
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.yn
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit264

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit264: ; preds = %bb.by, %bb.bz, %bb.ca
  %.sroa.04.0.i263 = phi i64 [ %i.yq, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.by ] ; 2 uses
  %i.yr = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  store i64 %3, ptr %44, align 8, !tbaa !226
  %i.ys = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.ys, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  store i32 %i.yg, ptr %45, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 0, ptr %i.yt, align 8, !tbaa !246
  %i.yu = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder31buildPadVectorWithUndefElementsERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.yr, ptr noundef nonnull align 8 dereferenceable(20) %44, ptr noundef nonnull align 8 dereferenceable(20) %45) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  %i.yv = load i32, ptr %i.a, align 4, !tbaa !210
  %i.yw = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.yx = icmp slt i64 %3, -8070450532247928832
  br i1 %i.yx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit264
  %i.yy = and i64 %3, 1152921504605798400
  %i.yz = or disjoint i64 %i.yy, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit271

bb.cc:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit264
  %.mask.i.i265 = and i64 %3, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i265, label %bb.ch [
    i64 8070450532247928832, label %bb.cd
    i64 6917529027641081856, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.za = trunc i64 %3 to i32
  %i.zb = lshr i32 %i.za, 20
  %i.zc = and i32 %i.zb, 255                      ; 2 uses
  %i.zd = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.ze = trunc nuw i8 %i.zd to i1
  %i.zf = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.zc) #19
  %i.zg = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.zf) #19
  %i.zh = zext i32 %i.zg to i64
  %i.zi = shl nuw nsw i64 %i.zh, 28               ; 2 uses
  br i1 %i.ze, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %storemerge.i.i.i.i.i269 = or disjoint i64 %i.zi, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit271

bb.cf:                                            ; preds = %bb.cd
  %i.zj = shl nuw nsw i32 %i.zc, 20
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = or disjoint i64 %i.zi, %i.zk
  %i.zm = or disjoint i64 %i.zl, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit271

bb.cg:                                            ; preds = %bb.cc
  %i.zn = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.zo = trunc nuw i8 %i.zn to i1
  %i.zp = and i64 %3, 1152921504338411520
  %.sroa.0.0.v.i.i266 = select i1 %i.zo, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i267 = or disjoint i64 %.sroa.0.0.v.i.i266, %i.zp
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit271

bb.ch:                                            ; preds = %bb.cc
  %i.zq = icmp eq i64 %.mask.i.i265, 4611686018427387904
  %i.zr = lshr i64 %3, 44
  %i.zs = and i64 %i.zr, 65535
  %i.zt = lshr i64 %3, 28
  %i.zu = and i64 %i.zt, 4294967295
  %i.zv = select i1 %i.zq, i64 %i.zs, i64 %i.zu
  %i.zw = shl nuw nsw i64 %i.zv, 28
  %storemerge.i.i.i.i270 = or disjoint i64 %i.zw, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit271

_ZNK4llvm3LLT14getElementTypeEv.exit271:          ; preds = %bb.cb, %bb.ce, %bb.cf, %bb.cg, %bb.ch
  %.sroa.0.0.i268 = phi i64 [ %i.yz, %bb.cb ], [ %storemerge.i.i.i.i270, %bb.ch ], [ %.sroa.0.0.i6.i267, %bb.cg ], [ %i.zm, %bb.cf ], [ %storemerge.i.i.i.i.i269, %bb.ce ]
  %i.zx = call { ptr, ptr } @_ZN4llvm15LegalizerHelper29getNeutralElementForVecReduceEjRNS_16MachineIRBuilderENS_3LLTE(ptr nonnull align 8 poison, i32 noundef %i.yv, ptr noundef nonnull align 8 dereferenceable(96) %i.yw, i64 %.sroa.0.0.i268) ; 2 uses
  %i.zy = extractvalue { ptr, ptr } %i.zx, 0
  %i.zz = extractvalue { ptr, ptr } %i.zx, 1
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !275, !nonnull !179, !align !180 ; 2 uses
  %i.aac = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !223
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !224, !nonnull !179, !align !180
  %i.aag = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %i.aaf) #19
  %i.aah = load ptr, ptr %i.aab, align 8, !tbaa !182
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 64
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = call noundef i32 %i.aaj(ptr noundef nonnull align 8 dereferenceable(518435) %i.aab, ptr noundef nonnull align 8 dereferenceable(912) %i.aag) #19, !inline_history !17
  %i.aal = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.aam = trunc nuw i8 %i.aal to i1
  %i.aan = zext i32 %i.aak to i64
  %i.aao = shl nuw nsw i64 %i.aan, 28
  %.sroa.0.0.v.i.i272 = select i1 %i.aam, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i.i = or disjoint i64 %.sroa.0.0.v.i.i272, %i.aao
  %i.aap = trunc i64 %.sroa.04.0.i263 to i1
  br i1 %i.aap, label %bb.ci, label %_ZNK4llvm3LLT14getNumElementsEv.exit273

bb.ci:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit271
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit273:          ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit271
  %i.aaq = trunc i64 %3 to i1
  br i1 %i.aaq, label %bb.cj, label %_ZNK4llvm3LLT14getNumElementsEv.exit274

bb.cj:                                            ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit273
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit274:          ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit273
  %i.aar = lshr i64 %.sroa.04.0.i263, 4
  %i.aas = and i64 %i.aar, 65535                  ; 2 uses
  %i.aat = lshr i64 %3, 4
  %i.aau = and i64 %i.aat, 65535                  ; 2 uses
  %.sroa.5.0384 = extractvalue { ptr, ptr } %i.yu, 1 ; 2 uses
  %.not385 = icmp eq i64 %i.aas, %i.aau
  br i1 %.not385, label %._crit_edge390, label %.lr.ph389

.lr.ph389:                                        ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit274
  %i.aav = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %48, i64 16
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.aay = getelementptr inbounds nuw i8, ptr %49, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %50, i64 16
  br label %bb.ck

._crit_edge390:                                   ; preds = %bb.ck, %_ZNK4llvm3LLT14getNumElementsEv.exit274
  %.sroa.5.0.lcssa = phi ptr [ %.sroa.5.0384, %_ZNK4llvm3LLT14getNumElementsEv.exit274 ], [ %.sroa.5.0, %bb.ck ]
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !182
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abe = load ptr, ptr %i.abd, align 8
  call void %i.abe(ptr noundef nonnull align 8 dereferenceable(64) %i.abb, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa, i64 32
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !225
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !226
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ye, i32 %i.abi) #19
  %i.abj = load ptr, ptr %i.aba, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !182
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 40
  %i.abm = load ptr, ptr %i.abl, align 8
  call void %i.abm(ptr noundef nonnull align 8 dereferenceable(64) %i.abj, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
end_hunk_3
begin_hunk_4_@_ZN4llvm15LegalizerHelper18narrowScalarAddSubERNS_12MachineInstrEjNS_3LLTE:bb.a
  %i.ge = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i32 %i.fp, ptr %13, align 8, !tbaa !238
  store i32 1, ptr %i.dj, align 8, !tbaa !243
  store i32 %storemerge174177, ptr %i.dk, align 8, !tbaa !238
  store i32 1, ptr %i.dl, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.gf = load ptr, ptr %6, align 8, !tbaa !228
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv
  %.sroa.025.0.copyload = load i32, ptr %i.gg, align 4, !tbaa !238
  store i32 %.sroa.025.0.copyload, ptr %14, align 8, !tbaa !238
  store i32 0, ptr %i.dm, align 8, !tbaa !246
  %i.gh = load ptr, ptr %7, align 8, !tbaa !228
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv
  %.sroa.024.0.copyload = load i32, ptr %i.gi, align 4, !tbaa !238
  store i32 %.sroa.024.0.copyload, ptr %i.dn, align 8, !tbaa !238
  store i32 0, ptr %i.do, align 8, !tbaa !246
  store i32 %.sroa.0162.1182, ptr %i.dp, align 8, !tbaa !238
  store i32 0, ptr %i.dq, align 8, !tbaa !246
  %i.gj = load ptr, ptr %i.ge, align 8, !tbaa !182
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call { ptr, ptr } %i.gl(ptr noundef nonnull align 8 dereferenceable(96) %i.ge, i32 noundef %.0112, ptr nonnull %13, i64 2, ptr nonnull %14, i64 3, i64 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gn = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i32 %i.fp, ptr %15, align 8, !tbaa !238
  store i32 1, ptr %i.dr, align 8, !tbaa !243
  store i32 %i.fu, ptr %i.ds, align 8, !tbaa !238
  store i32 1, ptr %i.dt, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.go = load ptr, ptr %6, align 8, !tbaa !228
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %.sroa.014.0.copyload = load i32, ptr %i.gp, align 4, !tbaa !238
  store i32 %.sroa.014.0.copyload, ptr %16, align 8, !tbaa !238
  store i32 0, ptr %i.du, align 8, !tbaa !246
  %i.gq = load ptr, ptr %7, align 8, !tbaa !228
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  %.sroa.013.0.copyload = load i32, ptr %i.gr, align 4, !tbaa !238
  store i32 %.sroa.013.0.copyload, ptr %i.dv, align 8, !tbaa !238
  store i32 0, ptr %i.dw, align 8, !tbaa !246
  store i32 %.sroa.0162.1182, ptr %i.dx, align 8, !tbaa !238
  store i32 0, ptr %i.dy, align 8, !tbaa !246
  %i.gs = load ptr, ptr %i.gn, align 8, !tbaa !182
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call { ptr, ptr } %i.gu(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, i32 noundef %.0111, ptr nonnull %15, i64 2, ptr nonnull %16, i64 3, i64 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ae

bb.ae:                                            ; preds = %.thread175, %bb.ad, %bb.ab
  %storemerge173 = phi i32 [ %storemerge174177, %.thread175 ], [ %i.fu, %bb.ad ], [ %storemerge172, %bb.ab ]
  %i.gw = load i32, ptr %i.bu, align 8, !tbaa !227 ; 2 uses
  %i.gx = load i32, ptr %i.bv, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.gw, %i.gx
  br i1 %.not.i, label %bb.ag, label %bb.af, !prof !247

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 %i.fp)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gy = zext i32 %i.gw to i64
  %i.gz = load ptr, ptr %10, align 8, !tbaa !228
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gy
  store i32 %i.fp, ptr %i.ha, align 1
  %i.hb = load i32, ptr %i.bu, align 8, !tbaa !227
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.bu, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.af, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not115 = icmp eq i64 %indvars.iv.next, %i.eg
  br i1 %.not115, label %._crit_edge, label %bb.x, !llvm.loop !643

bb.ah:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit130, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.a
  %.1 = phi i32 [ 2, %bb.a ], [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit130 ], [ 2, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper15narrowScalarMulERNS_12MachineInstrENS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.196", align 8 ; 9 uses
  %4 = alloca %"class.llvm::SmallVector.196", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.196", align 8 ; 11 uses
  %6 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225, !noalias !646 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !226, !noalias !646 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !226, !noalias !646
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !226, !noalias !646
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212, !nonnull !179, !align !180 ; 3 uses
  %i.k = icmp slt i32 %i.d, 0
  br i1 %i.k, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.d, 2147483647                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 472
  %i.n = load i32, ptr %i.m, align 8, !tbaa !227
  %i.o = icmp ugt i32 %i.n, %i.l
  br i1 %i.o, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %i.q = zext nneg i32 %i.l to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !228
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !226
  %.fr = freeze i64 %i.t                          ; 10 uses
  %i.u = lshr i64 %.fr, 60                        ; 2 uses
  %i.v = add nsw i64 %i.u, -5
  %switch.selectcmp.i = icmp ult i64 %i.v, 4
  br i1 %switch.selectcmp.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.w = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  %.off.i.i = add nsw i64 %i.u, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  %or.cond = select i1 %i.w, i1 true, i1 %switch.i.i
  br i1 %or.cond, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.c
  %i.x = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.x, %i.w
  %i.y = lshr i64 %.fr, 44
  %i.z = and i64 %i.y, 65535
  %i.aa = lshr i64 %.fr, 28
  %i.ab = select i1 %spec.select.i.i.i, i64 %i.z, i64 %i.aa
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.c
  %i.ac = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ac, 65535
  %i.ad = icmp slt i64 %.fr, -8070450532247928832
  %i.ae = lshr i64 %.fr, 44
  %i.af = and i64 %i.ae, 65535
  %i.ag = lshr i64 %.fr, 28
  %spec.select = select i1 %i.ad, i64 %i.af, i64 %i.ag
  %i.ah = mul nuw nsw i64 %spec.select, %.sroa.0.0.insert.ext.i.i.i
  %i.ai = trunc i64 %.fr to i1
  br i1 %i.ai, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a, %bb.b, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i90 = phi i64 [ %i.ab, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.ah, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.aj = trunc i64 %.sroa.05.0.i90 to i32        ; 2 uses
  %.mask.i.i35 = and i64 %2, -1152921504606846976
  %i.ak = icmp eq i64 %.mask.i.i35, 4611686018427387904 ; 2 uses
  br i1 %i.ak, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.al = lshr i64 %2, 60
  %.off.i.i36 = add nsw i64 %i.al, -1
  %switch.i.i37 = icmp ult i64 %.off.i.i36, 3
  br i1 %switch.i.i37, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit46

_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread:     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.e
  %i.am = icmp slt i64 %2, -8070450532247928832
  %spec.select.i.i.i45 = or i1 %i.am, %i.ak
  %i.an = lshr i64 %2, 44
  %i.ao = and i64 %i.an, 65535
  %i.ap = lshr i64 %2, 28
  %i.aq = select i1 %spec.select.i.i.i45, i64 %i.ao, i64 %i.ap
  br label %_ZNK4llvm8TypeSizecvmEv.exit47

_ZNK4llvm3LLT13getSizeInBitsEv.exit46:            ; preds = %bb.e
  %i.ar = lshr i64 %2, 4
  %.sroa.0.0.insert.ext.i.i.i38 = and i64 %i.ar, 65535
  %i.as = icmp slt i64 %2, -8070450532247928832
  %i.at = lshr i64 %2, 44
  %i.au = and i64 %i.at, 65535
  %i.av = lshr i64 %2, 28
  %.0.in.i3.i39 = select i1 %i.as, i64 %i.au, i64 %i.av
  %i.aw = mul nuw nsw i64 %.0.in.i3.i39, %.sroa.0.0.insert.ext.i.i.i38
  %i.ax = trunc i64 %2 to i1
  br i1 %i.ax, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit47

bb.f:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit46
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit47:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit46
  %.sroa.05.0.i41101 = phi i64 [ %i.aq, %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread ], [ %i.aw, %_ZNK4llvm3LLT13getSizeInBitsEv.exit46 ]
  %i.ay = trunc i64 %.sroa.05.0.i41101 to i32     ; 2 uses
  %i.az = urem i32 %i.aj, %i.ay
  %i.ba = udiv i32 %i.aj, %i.ay                   ; 5 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit47
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !210
  %i.bd = icmp eq i32 %i.bc, 177
  %i.be = zext i1 %i.bd to i32
  %i.bf = shl i32 %i.ba, %i.be                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bg, ptr %3, align 8, !tbaa !228
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !227
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.bi, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !228
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !227
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.bl, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bm = zext i32 %i.bf to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bn, ptr %5, align 8, !tbaa !228
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 2, ptr %i.bp, align 4, !tbaa !239
  %i.bq = icmp eq i32 %i.bf, 0
  br i1 %i.bq, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EEC2Em.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = icmp ugt i32 %i.bf, 2
  br i1 %i.br, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.bn, i64 noundef %i.bm, i64 noundef 4) #19
  %.pre.i.i.i = load i32, ptr %i.bo, align 8, !tbaa !227 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !228
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.h
  %i.bs = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.bn, %bb.h ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %.pre-phi.i.i3.i
  %i.bu = sub nsw i64 %i.bm, %.pre-phi.i.i3.i
  %i.bv = shl nsw i64 %i.bu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bt, i8 0, i64 %i.bv, i1 false), !tbaa !303
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  store i32 %i.bf, ptr %i.bo, align 8, !tbaa !227
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !212
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EEC2Em.exit

_ZN4llvm11SmallVectorINS_8RegisterELj2EEC2Em.exit: ; preds = %bb.g, %.sink.split.i.i.i
  %i.bw = phi ptr [ %i.j, %bb.g ], [ %.pre, %.sink.split.i.i.i ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %i.f, i64 %2, i32 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.bx, ptr noundef nonnull align 8 dereferenceable(520) %i.bw) #19
  %i.by = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %i.h, i64 %2, i32 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.by, ptr noundef nonnull align 8 dereferenceable(520) %i.bz) #19
  %i.ca = load ptr, ptr %3, align 8, !tbaa !228
  %i.cb = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load ptr, ptr %4, align 8, !tbaa !228
  call void @_ZN4llvm15LegalizerHelper17multiplyRegistersERNS_15SmallVectorImplINS_8RegisterEEENS_8ArrayRefIS2_EES6_NS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.ca, i64 %i.cc, ptr %i.cd, i64 poison, i64 %2)
  %i.ce = sub i32 %i.bf, %i.ba
  %i.cf = zext i32 %i.ce to i64
  %i.cg = load ptr, ptr %5, align 8, !tbaa !228
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = zext i32 %i.ba to i64
  %i.cj = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 %i.d, ptr %6, align 8, !tbaa !238
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1, ptr %i.ck, align 8, !tbaa !243
  %i.cl = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.cj, ptr noundef nonnull align 8 dereferenceable(20) %6, ptr %i.ch, i64 %i.ci) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cm = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !228   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bn
  br i1 %i.co, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EEC2Em.exit
  call void @free(ptr noundef %i.cn) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EEC2Em.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cp = load ptr, ptr %4, align 8, !tbaa !228   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bj
  br i1 %i.cq, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit48, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit
  call void @free(ptr noundef %i.cp) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit48

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit48: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cr = load ptr, ptr %3, align 8, !tbaa !228   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bg
  br i1 %i.cs, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit49, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit48
  call void @free(ptr noundef %i.cr) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit49

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit49: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit48, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit49, %_ZNK4llvm8TypeSizecvmEv.exit47, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %.1 = phi i32 [ 2, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ], [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit49 ], [ 2, %_ZNK4llvm8TypeSizecvmEv.exit47 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper19narrowScalarExtractERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::LLT", align 8         ; 2 uses
  %5 = alloca %"class.llvm::SmallVector.196", align 8 ; 11 uses
  %6 = alloca %"class.llvm::SmallVector.196", align 8 ; 14 uses
  %7 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %8 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %10 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %11 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %12 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  store i64 %3, ptr %4, align 8
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %.mask.i.i = and i64 %3, -1152921504606846976
  %i.a = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.a, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = lshr i64 %3, 60
  %.off.i.i = add nsw i64 %i.b, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.b, %bb.c
  %i.c = icmp slt i64 %3, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.c, %i.a
  %i.d = lshr i64 %3, 44
  %i.e = and i64 %i.d, 65535
  %i.f = lshr i64 %3, 28
  %i.g = and i64 %i.f, 4294967295
  %i.h = select i1 %spec.select.i.i.i, i64 %i.e, i64 %i.g
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.c
  %i.i = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.i, 65535
  %i.j = icmp slt i64 %3, -8070450532247928832
  %i.k = lshr i64 %3, 44
  %i.l = and i64 %i.k, 65535
  %i.m = lshr i64 %3, 28
  %.0.in.i3.i = select i1 %i.j, i64 %i.l, i64 %i.m
  %i.n = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.o = and i64 %i.n, 4294967295
  %i.p = trunc i64 %3 to i1
  br i1 %i.p, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i155 = phi i64 [ %i.h, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.o, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !212, !nonnull !179, !align !180 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !225
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !226  ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit98

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.x = and i32 %i.v, 2147483647                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.z = load i32, ptr %i.y, align 8, !tbaa !227
  %i.aa = icmp ugt i32 %i.z, %i.x
  br i1 %i.aa, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm8TypeSizecvmEv.exit98

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 464
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !226
  %.fr = freeze i64 %i.af                         ; 10 uses
  %.mask.i.i86 = and i64 %.fr, -1152921504606846976
  %i.ag = icmp eq i64 %.mask.i.i86, 4611686018427387904 ; 2 uses
  br i1 %i.ag, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit97.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ah = lshr i64 %.fr, 60
  %.off.i.i87 = add nsw i64 %i.ah, -1
  %switch.i.i88 = icmp ult i64 %.off.i.i87, 3
  br i1 %switch.i.i88, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit97.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit97

_ZNK4llvm3LLT13getSizeInBitsEv.exit97.thread:     ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.f
  %i.ai = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i96 = or i1 %i.ai, %i.ag
  %i.aj = lshr i64 %.fr, 44
  %i.ak = and i64 %i.aj, 65535
  %i.al = lshr i64 %.fr, 28
  %i.am = select i1 %spec.select.i.i.i96, i64 %i.ak, i64 %i.al
  br label %_ZNK4llvm8TypeSizecvmEv.exit98

_ZNK4llvm3LLT13getSizeInBitsEv.exit97:            ; preds = %bb.f
  %i.an = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i89 = and i64 %i.an, 65535
  %i.ao = icmp slt i64 %.fr, -8070450532247928832
  %i.ap = lshr i64 %.fr, 44
  %i.aq = and i64 %i.ap, 65535
  %i.ar = lshr i64 %.fr, 28
  %spec.select = select i1 %i.ao, i64 %i.aq, i64 %i.ar
  %i.as = mul nuw nsw i64 %spec.select, %.sroa.0.0.insert.ext.i.i.i89
  %i.at = trunc i64 %.fr to i1
  br i1 %i.at, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit98

bb.g:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit97
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit98:                   ; preds = %bb.e, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm3LLT13getSizeInBitsEv.exit97.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit97
  %.sroa.05.0.i92174 = phi i64 [ %i.am, %_ZNK4llvm3LLT13getSizeInBitsEv.exit97.thread ], [ %i.as, %_ZNK4llvm3LLT13getSizeInBitsEv.exit97 ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ], [ 0, %bb.e ]
  %.lhs.trunc = trunc i64 %.sroa.05.0.i92174 to i32 ; 2 uses
  %.rhs.trunc = trunc nuw i64 %.sroa.05.0.i155 to i32 ; 2 uses
  %i.au = urem i32 %.lhs.trunc, %.rhs.trunc
  %i.av = udiv i32 %.lhs.trunc, %.rhs.trunc       ; 3 uses
  %.not81 = icmp eq i32 %i.au, 0
  br i1 %.not81, label %bb.h, label %bb.ah

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !228
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !227
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 2, ptr %i.ay, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !228
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !227
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 2, ptr %i.bb, align 4, !tbaa !239
  %i.bc = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %i.v, i64 %3, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %i.r) #19
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !225 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !226 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !226 ; 6 uses
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !212, !nonnull !179, !align !180 ; 3 uses
  %i.bj = icmp slt i32 %i.bf, 0                   ; 2 uses
  br i1 %i.bj, label %bb.i, label %_ZNK4llvm8TypeSizecvmEv.exit113

bb.i:                                             ; preds = %bb.h
  %i.bk = and i32 %i.bf, 2147483647               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 472
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !227
  %i.bn = icmp ugt i32 %i.bm, %i.bk
  br i1 %i.bn, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit100, label %_ZNK4llvm8TypeSizecvmEv.exit113

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit100: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 464
  %i.bp = zext nneg i32 %i.bk to i64
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !228
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !226
  %.fr222 = freeze i64 %i.bs                      ; 10 uses
  %.mask.i.i101 = and i64 %.fr222, -1152921504606846976
  %i.bt = icmp eq i64 %.mask.i.i101, 4611686018427387904 ; 2 uses
  br i1 %i.bt, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit112.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit100
  %i.bu = lshr i64 %.fr222, 60
  %.off.i.i102 = add nsw i64 %i.bu, -1
  %switch.i.i103 = icmp ult i64 %.off.i.i102, 3
  br i1 %switch.i.i103, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit112.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit112

_ZNK4llvm3LLT13getSizeInBitsEv.exit112.thread:    ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit100, %bb.j
  %i.bv = icmp slt i64 %.fr222, -8070450532247928832
  %spec.select.i.i.i111 = or i1 %i.bv, %i.bt
  %i.bw = lshr i64 %.fr222, 44
  %i.bx = and i64 %i.bw, 65535
  %i.by = lshr i64 %.fr222, 28
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = select i1 %spec.select.i.i.i111, i64 %i.bx, i64 %i.bz
  br label %_ZNK4llvm8TypeSizecvmEv.exit113

_ZNK4llvm3LLT13getSizeInBitsEv.exit112:           ; preds = %bb.j
  %i.cb = lshr i64 %.fr222, 4
  %.sroa.0.0.insert.ext.i.i.i104 = and i64 %i.cb, 65535
  %i.cc = icmp slt i64 %.fr222, -8070450532247928832
  %i.cd = lshr i64 %.fr222, 44
  %i.ce = and i64 %i.cd, 65535
  %i.cf = lshr i64 %.fr222, 28
  %spec.select221 = select i1 %i.cc, i64 %i.ce, i64 %i.cf
  %i.cg = mul nuw nsw i64 %spec.select221, %.sroa.0.0.insert.ext.i.i.i104
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = trunc i64 %.fr222 to i1
  br i1 %i.ci, label %bb.k, label %_ZNK4llvm8TypeSizecvmEv.exit113

bb.k:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit112
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit113:                  ; preds = %bb.i, %bb.h, %_ZNK4llvm3LLT13getSizeInBitsEv.exit112.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit112
  %.sroa.05.0.i107201 = phi i64 [ %i.ca, %_ZNK4llvm3LLT13getSizeInBitsEv.exit112.thread ], [ %i.ch, %_ZNK4llvm3LLT13getSizeInBitsEv.exit112 ], [ 0, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %i.cj = icmp sgt i32 %i.av, 0
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit113
  %i.ck = add i64 %.sroa.05.0.i107201, %i.bh      ; 2 uses
  %i.cl = and i32 %i.bf, 2147483647               ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cp = zext nneg i32 %i.av to i64
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !225
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre225 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !226
  %.pre226 = load ptr, ptr %i.q, align 8, !tbaa !212
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4llvm8TypeSizecvmEv.exit113
  %i.cq = phi ptr [ %.pre226, %._crit_edge.loopexit ], [ %i.bi, %_ZNK4llvm8TypeSizecvmEv.exit113 ] ; 2 uses
  %i.cr = phi i32 [ %.pre225, %._crit_edge.loopexit ], [ %i.bf, %_ZNK4llvm8TypeSizecvmEv.exit113 ] ; 5 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.l, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit115.thread

bb.l:                                             ; preds = %._crit_edge
  %i.ct = and i32 %i.cr, 2147483647               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 472
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !227
  %i.cw = icmp ugt i32 %i.cv, %i.ct
  br i1 %i.cw, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit115, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit115.thread

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit115: ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 464
  %i.cy = zext nneg i32 %i.ct to i64
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !228
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !tbaa !226
  %i.dc = lshr i64 %i.db, 60
  %i.dd = add nsw i64 %i.dc, -5
  %switch.selectcmp.i = icmp ult i64 %i.dd, 4
  br i1 %switch.selectcmp.i, label %bb.ab, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit115.thread

bb.m:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 5 uses
  %i.de = mul i64 %indvars.iv, %.sroa.05.0.i155
  %i.df = and i64 %i.de, 4294967295               ; 6 uses
  %i.dg = add nuw nsw i64 %.sroa.05.0.i155, %i.df ; 2 uses
  %.not82 = icmp ugt i64 %i.dg, %i.bh
  %.not83 = icmp ugt i64 %i.ck, %i.df
  %or.cond = select i1 %.not82, i1 %.not83, i1 false
  br i1 %or.cond, label %bb.n, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.n:                                             ; preds = %bb.m
  %i.dh = icmp eq i64 %i.bh, %i.df
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  br i1 %i.dh, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !212, !nonnull !179, !align !180 ; 2 uses
  br i1 %i.bj, label %bb.p, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit117

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 472
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !227
  %i.dl = icmp ugt i32 %i.dk, %i.cl
  br i1 %i.dl, label %bb.q, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit117

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 464
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !228
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cm
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit117

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit117: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.04.0.i116 = phi i64 [ %i.dp, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sroa.04.0.i116, ptr %7, align 8
  %i.dq = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.dq, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit117
  %i.dr = load ptr, ptr %5, align 8, !tbaa !228
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv
  %.sroa.027.0.copyload = load i32, ptr %i.ds, align 4, !tbaa !238 ; 2 uses
  %i.dt = load i32, ptr %i.ba, align 8, !tbaa !227 ; 2 uses
  %i.du = load i32, ptr %i.bb, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i, label %bb.t, label %bb.s, !prof !247

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 %.sroa.027.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.t:                                             ; preds = %bb.r
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %6, align 8, !tbaa !228
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  store i32 %.sroa.027.0.copyload, ptr %i.dx, align 1
  %i.dy = load i32, ptr %i.ba, align 8, !tbaa !227
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.ba, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit117, %.critedge
  %i.ea = icmp ult i64 %i.bh, %i.df
  br i1 %i.ea, label %.thread210, label %bb.v

.thread210:                                       ; preds = %bb.u
  %i.eb = sub nuw i64 %i.ck, %i.df
  %.sroa.speculated129 = call i64 @llvm.umin.i64(i64 %i.eb, i64 %.sroa.05.0.i155)
  br label %bb.w

end_hunk_4
begin_hunk_5_@_ZN4llvm15LegalizerHelper12lowerBitcastERNS_12MachineInstrE:bb.a
  %i.hh = shl nuw nsw i64 %i.hg, 28               ; 2 uses
  br i1 %i.hd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %storemerge.i.i.i.i.i103 = or disjoint i64 %i.hh, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit105

bb.ba:                                            ; preds = %bb.ay
  %i.hi = shl nuw nsw i32 %i.hb, 20
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = or disjoint i64 %i.hh, %i.hj
  %i.hl = or disjoint i64 %i.hk, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit105

bb.bb:                                            ; preds = %bb.ax
  %i.hm = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = and i64 %i.gp, 1152921504338411520
  %.sroa.0.0.v.i.i100 = select i1 %i.hn, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i101 = or disjoint i64 %.sroa.0.0.v.i.i100, %i.ho
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit105

bb.bc:                                            ; preds = %bb.ax
  %i.hp = icmp eq i64 %.mask.i.i99, 4611686018427387904
  %i.hq = lshr i64 %i.gp, 44
  %i.hr = and i64 %i.hq, 65535
  %i.hs = lshr i64 %i.gp, 28
  %i.ht = and i64 %i.hs, 4294967295
  %i.hu = select i1 %i.hp, i64 %i.hr, i64 %i.ht
  %i.hv = shl nuw nsw i64 %i.hu, 28
  %storemerge.i.i.i.i104 = or disjoint i64 %i.hv, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit105

_ZNK4llvm3LLT14getElementTypeEv.exit105:          ; preds = %bb.aw, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.sroa.0.0.i102 = phi i64 [ %i.gy, %bb.aw ], [ %storemerge.i.i.i.i104, %bb.bc ], [ %.sroa.0.0.i6.i101, %bb.bb ], [ %i.hl, %bb.ba ], [ %storemerge.i.i.i.i.i103, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i32 %.sroa.04.0.copyload, ptr %2, align 8, !tbaa !238
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.hw, align 8, !tbaa !246
  %i.hx = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.gv, i64 %.sroa.0.0.i102, ptr noundef nonnull align 8 dereferenceable(20) %2) #19
  %i.hy = extractvalue { ptr, ptr } %i.hx, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load i24, ptr %i.hz, align 8
  %i.ib = zext i24 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, -1                   ; 2 uses
  %.not10.i106 = icmp eq i32 %i.ic, 0
  br i1 %.not10.i106, label %_ZL16getUnmergePiecesRN4llvm15SmallVectorImplINS_8RegisterEEERNS_16MachineIRBuilderES1_NS_3LLTE.exit113, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit105
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ie = zext i32 %i.ic to i64
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i110, %.lr.ph.i107
  %indvars.iv.i108 = phi i64 [ 0, %.lr.ph.i107 ], [ %indvars.iv.next.i111, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i110 ] ; 2 uses
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !225
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %indvars.iv.i108
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !226 ; 2 uses
  %i.ij = load i32, ptr %i.gt, align 8, !tbaa !227 ; 2 uses
  %i.ik = load i32, ptr %i.gu, align 4, !tbaa !239
  %.not.i.i109 = icmp ult i32 %i.ij, %i.ik
  br i1 %.not.i.i109, label %bb.bf, label %bb.be, !prof !247

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 %i.ii)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i110

bb.bf:                                            ; preds = %bb.bd
  %i.il = zext i32 %i.ij to i64
  %i.im = load ptr, ptr %10, align 8, !tbaa !228
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.il
  store i32 %i.ii, ptr %i.in, align 1
  %i.io = load i32, ptr %i.gt, align 8, !tbaa !227
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.gt, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i110

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i110: ; preds = %bb.bf, %bb.be
  %indvars.iv.next.i111 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %.not.i112 = icmp eq i64 %indvars.iv.next.i111, %i.ie
  br i1 %.not.i112, label %_ZL16getUnmergePiecesRN4llvm15SmallVectorImplINS_8RegisterEEERNS_16MachineIRBuilderES1_NS_3LLTE.exit113, label %bb.bd, !llvm.loop !683

_ZL16getUnmergePiecesRN4llvm15SmallVectorImplINS_8RegisterEEERNS_16MachineIRBuilderES1_NS_3LLTE.exit113: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i110, %_ZNK4llvm3LLT14getElementTypeEv.exit105
  %i.iq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.02.0.copyload, ptr %11, align 8, !tbaa !238
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 1, ptr %i.ir, align 8, !tbaa !243
  %i.is = load ptr, ptr %10, align 8, !tbaa !228
  %i.it = load i32, ptr %i.gt, align 8, !tbaa !227
  %i.iu = zext i32 %i.it to i64
  %i.iv = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.iq, ptr noundef nonnull align 8 dereferenceable(20) %11, ptr %i.is, i64 %i.iu) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.iw = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.ix = load ptr, ptr %10, align 8, !tbaa !228  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.gs
  br i1 %i.iy, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit114, label %bb.bg

bb.bg:                                            ; preds = %_ZL16getUnmergePiecesRN4llvm15SmallVectorImplINS_8RegisterEEERNS_16MachineIRBuilderES1_NS_3LLTE.exit113
  call void @free(ptr noundef %i.ix) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit114

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit114: ; preds = %_ZL16getUnmergePiecesRN4llvm15SmallVectorImplINS_8RegisterEEERNS_16MachineIRBuilderES1_NS_3LLTE.exit113, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.au, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit114, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %.0 = phi i32 [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ], [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit114 ], [ 2, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm3LLT24changeVectorElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 7 uses
  %i.b = icmp slt i64 %i.a, -8070450532247928832
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 1152921504605798400
  %i.d = or disjoint i64 %i.c, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.c:                                             ; preds = %bb.a
  %.mask.i.i = and i64 %i.a, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i, label %bb.h [
    i64 8070450532247928832, label %bb.d
    i64 6917529027641081856, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = trunc i64 %i.a to i32
  %i.f = lshr i32 %i.e, 20
  %i.g = and i32 %i.f, 255                        ; 2 uses
  %i.h = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.g) #19
  %i.k = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.j) #19
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 28                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %storemerge.i.i.i.i.i = or disjoint i64 %i.m, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.n = shl nuw nsw i32 %i.g, 20
  %i.o = zext nneg i32 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o
  %i.q = or disjoint i64 %i.p, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.g:                                             ; preds = %bb.c
  %i.r = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = and i64 %i.a, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.s, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.t
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.v = lshr i64 %i.a, 44
  %i.w = and i64 %i.v, 65535
  %i.x = lshr i64 %i.a, 28
  %i.y = and i64 %i.x, 4294967295
  %i.z = select i1 %i.u, i64 %i.w, i64 %i.y
  %i.aa = shl nuw nsw i64 %i.z, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.aa, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.d, %bb.b ], [ %storemerge.i.i.i.i, %bb.h ], [ %.sroa.0.0.i6.i, %bb.g ], [ %i.q, %bb.f ], [ %storemerge.i.i.i.i.i, %bb.e ]
  %i.ab = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %1, i64 %.sroa.0.0.i)
  ret i64 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper23bitcastExtractVectorEltERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 7 uses
  %6 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %7 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %8 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %9 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %10 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %11 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %12 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %13 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %14 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %15 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %16 = alloca %"class.llvm::LLT", align 8        ; 2 uses
  %17 = alloca %"class.std::tuple.332", align 8   ; 13 uses
  %18 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.170", align 8 ; 11 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %22 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %23 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %24 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %25 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %26 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %27 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %28 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %29 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  store i64 %3, ptr %16, align 8
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @_ZNK4llvm12MachineInstr16getFirst3RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.332") align 8 %17, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.c, align 8              ; 7 uses
  %i.f = icmp slt i64 %i.e, -8070450532247928832
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.e, 1152921504605798400
  %i.h = or disjoint i64 %i.g, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i = and i64 %i.e, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i, label %bb.i [
    i64 8070450532247928832, label %bb.e
    i64 6917529027641081856, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = trunc i64 %i.e to i32
  %i.j = lshr i32 %i.i, 20
  %i.k = and i32 %i.j, 255                        ; 2 uses
  %i.l = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.k) #19
  %i.o = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.n) #19
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 28                 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %storemerge.i.i.i.i.i = or disjoint i64 %i.q, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.k, 20
  %i.s = zext nneg i32 %i.r to i64
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = or disjoint i64 %i.t, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = and i64 %i.e, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.w, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.x
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.z = lshr i64 %i.e, 44
  %i.aa = and i64 %i.z, 65535
  %i.ab = lshr i64 %i.e, 28
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = select i1 %i.y, i64 %i.aa, i64 %i.ac
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.ae, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.h, %bb.c ], [ %storemerge.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i, %bb.h ], [ %i.u, %bb.g ], [ %storemerge.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.af = lshr i64 %3, 60
  %i.ag = add nsw i64 %i.af, -5
  %switch.selectcmp.i = icmp ult i64 %i.ag, 4     ; 2 uses
  br i1 %switch.selectcmp.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.ah = trunc i64 %3 to i1
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = trunc i64 %3 to i32                     ; 2 uses
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = and i32 %i.aj, 65535                    ; 5 uses
  %i.al = load i64, ptr %i.c, align 8             ; 6 uses
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %bb.m, label %bb.n

.thread:                                          ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.an = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.m, label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.m:                                             ; preds = %.thread, %bb.l
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp slt i64 %3, -8070450532247928832
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = and i64 %3, 1152921504605798400
  %i.ar = or disjoint i64 %i.aq, 4611686018427387904
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.p:                                             ; preds = %bb.n
  %.mask.i.i.i = and i64 %3, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i.i, label %bb.u [
    i64 8070450532247928832, label %bb.q
    i64 6917529027641081856, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.as = lshr i32 %i.ai, 20
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %i.au = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.at) #19
  %i.ax = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.aw) #19
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 28               ; 2 uses
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %storemerge.i.i.i.i.i.i = or disjoint i64 %i.az, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.s:                                             ; preds = %bb.q
  %i.ba = shl nuw nsw i32 %i.at, 20
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.az, %i.bb
  %i.bd = or disjoint i64 %i.bc, 3458764513820540928
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.t:                                             ; preds = %bb.p
  %i.be = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = and i64 %3, 1152921504338411520
  %.sroa.0.0.v.i.i.i = select i1 %i.bf, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i, %i.bg
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.u:                                             ; preds = %bb.p
  %i.bh = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.bi = lshr i64 %3, 44
  %i.bj = and i64 %i.bi, 65535
  %i.bk = lshr i64 %3, 28
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = select i1 %i.bh, i64 %i.bj, i64 %i.bl
  %i.bn = shl nuw nsw i64 %i.bm, 28
  %storemerge.i.i.i.i.i92 = or disjoint i64 %i.bn, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

_ZNK4llvm3LLT13getScalarTypeEv.exit:              ; preds = %.thread, %bb.o, %bb.r, %bb.s, %bb.t, %bb.u
  %.in.in.in = phi i64 [ %i.al, %bb.r ], [ %i.al, %bb.o ], [ %i.al, %bb.u ], [ %i.al, %bb.t ], [ %i.al, %bb.s ], [ %i.an, %.thread ]
  %i.bo = phi i32 [ %i.ak, %bb.r ], [ %i.ak, %bb.o ], [ %i.ak, %bb.u ], [ %i.ak, %bb.t ], [ %i.ak, %bb.s ], [ 1, %.thread ] ; 3 uses
  %.sroa.0.0.i91 = phi i64 [ %storemerge.i.i.i.i.i.i, %bb.r ], [ %i.ar, %bb.o ], [ %storemerge.i.i.i.i.i92, %bb.u ], [ %.sroa.0.0.i6.i.i, %bb.t ], [ %i.bd, %bb.s ], [ %3, %.thread ] ; 13 uses
  %.in.in = trunc i64 %.in.in.in to i32
  %.in = lshr i32 %.in.in, 4                      ; 2 uses
  %i.bp = and i32 %.in, 65535                     ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.051.0.copyload = load i32, ptr %i.b, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store i64 %3, ptr %14, align 8
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %.sroa.4208.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i32 %.sroa.051.0.copyload, ptr %15, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %.sroa.4204.0..sroa_idx, align 8, !tbaa !261
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !182
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call { ptr, ptr } %i.bt(ptr noundef nonnull align 8 dereferenceable(96) %i.bq, i32 noundef 88, ptr nonnull %14, i64 1, ptr nonnull %15, i64 1, i64 0) #19, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.bv = extractvalue { ptr, ptr } %i.bu, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !225
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !226 ; 3 uses
  %.mask.i.i93 = and i64 %.sroa.0.0.i91, -1152921504606846976
  %i.ca = icmp eq i64 %.mask.i.i93, 4611686018427387904 ; 2 uses
  br i1 %i.ca, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  %i.cb = lshr i64 %.sroa.0.0.i91, 60
  %.off.i.i = add nsw i64 %i.cb, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit, %bb.v
  %i.cc = icmp slt i64 %.sroa.0.0.i91, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.cc, %i.ca
  %i.cd = lshr i64 %.sroa.0.0.i91, 44
  %i.ce = and i64 %i.cd, 65535
  %i.cf = lshr i64 %.sroa.0.0.i91, 28
  %i.cg = select i1 %spec.select.i.i.i, i64 %i.ce, i64 %i.cf
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.v
  %i.ch = lshr i64 %.sroa.0.0.i91, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ch, 65535
  %i.ci = icmp slt i64 %.sroa.0.0.i91, -8070450532247928832
  %i.cj = lshr i64 %.sroa.0.0.i91, 44
  %i.ck = and i64 %i.cj, 65535
  %i.cl = lshr i64 %.sroa.0.0.i91, 28
  %.0.in.i3.i = select i1 %i.ci, i64 %i.ck, i64 %i.cl
  %i.cm = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.cn = trunc i64 %.sroa.0.0.i91 to i1
  br i1 %i.cn, label %bb.w, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.w:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i221 = phi i64 [ %i.cg, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.cm, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.co = trunc i64 %.sroa.05.0.i221 to i32       ; 4 uses
  %.mask.i.i94 = and i64 %.sroa.0.0.i, -1152921504606846976
  %i.cp = icmp eq i64 %.mask.i.i94, 4611686018427387904
  %i.cq = lshr i64 %.sroa.0.0.i, 44
  %i.cr = and i64 %i.cq, 65535
  %i.cs = lshr i64 %.sroa.0.0.i, 28
  %i.ct = select i1 %i.cp, i64 %i.cr, i64 %i.cs
  %i.cu = trunc i64 %i.ct to i32                  ; 4 uses
  %i.cv = icmp samesign ugt i32 %i.bo, %i.bp
  br i1 %i.cv, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.lhs.trunc = trunc nuw i32 %i.bo to i16        ; 3 uses
  %.rhs.trunc = trunc i32 %.in to i16             ; 3 uses
  %i.cw = urem i16 %.lhs.trunc, %.rhs.trunc
  %i.cx = udiv i16 %.lhs.trunc, %.rhs.trunc       ; 4 uses
  %.not89 = icmp eq i16 %i.cw, 0
  br i1 %.not89, label %bb.y, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.y:                                             ; preds = %bb.x
  %.zext229 = zext i16 %i.cx to i32
  %.sroa.0.0.insert.ext.i = zext i16 %i.cx to i64 ; 5 uses
  %i.cy = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 %.sroa.0.0.insert.ext.i)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %.sroa.031.0.copyload = load i64, ptr %17, align 8, !tbaa !226
  store i64 %.sroa.031.0.copyload, ptr %18, align 8, !tbaa !226
  %i.da = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.da, align 8, !tbaa !243
  %i.db = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, ptr noundef nonnull align 8 dereferenceable(20) %18, i64 noundef %.sroa.0.0.insert.ext.i) #19 ; 2 uses
  %i.dc = extractvalue { ptr, ptr } %i.db, 0
  %i.dd = extractvalue { ptr, ptr } %i.db, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.de, ptr %19, align 8, !tbaa !228
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i32 0, ptr %i.df, align 8, !tbaa !227
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 8, ptr %i.dg, align 4, !tbaa !239
  %i.dh = icmp ugt i16 %.rhs.trunc, %.lhs.trunc   ; 2 uses
  br i1 %i.dh, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit, label %31

31:                                               ; preds = %bb.y
  %32 = icmp ugt i16 %i.cx, 8
  br i1 %32, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i: ; preds = %31
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull %i.de, i64 noundef %.sroa.0.0.insert.ext.i, i64 noundef 4) #19
  %.pre.i.i.i = load i32, ptr %i.df, align 8, !tbaa !227
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %.sroa.0.0.insert.ext.i, %.pre13.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  %.pre.i = load ptr, ptr %19, align 8, !tbaa !228
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %31
  %i.di = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.de, %31 ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %31 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %.pre-phi.i.i3.i
  %i.dk = sub nsw i64 %.sroa.0.0.insert.ext.i, %.pre-phi.i.i3.i
  %i.dl = shl nsw i64 %i.dk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dj, i8 0, i64 %i.dl, i1 false), !tbaa !303
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplINS_8RegisterEE7reserveEm.exit.i.i.i
  store i32 %.zext229, ptr %i.df, align 8, !tbaa !227
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit: ; preds = %bb.y, %.sink.split.i.i.i
  %i.dm = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.030.0.copyload = load i64, ptr %17, align 8, !tbaa !226
  %.sroa.029.0.copyload = load i32, ptr %i.d, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i64 %.sroa.030.0.copyload, ptr %12, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i32 %.sroa.029.0.copyload, ptr %13, align 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %.sroa.4187.0..sroa_idx, align 8, !tbaa !261
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.dc, ptr %i.dn, align 8
  %.sroa.0182.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.dd, ptr %.sroa.0182.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 1, ptr %.sroa.4183.0..sroa_idx, align 8, !tbaa !261
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !182
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call { ptr, ptr } %i.dq(ptr noundef nonnull align 8 dereferenceable(96) %i.dm, i32 noundef 57, ptr nonnull %12, i64 1, ptr nonnull %13, i64 2, i64 0) #19, !inline_history !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0
  %i.dt = extractvalue { ptr, ptr } %i.dr, 1
  br i1 %i.dh, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit.._crit_edge_crit_edge, label %.lr.ph

_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit.._crit_edge_crit_edge: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit
  %.pre = load ptr, ptr %19, align 8, !tbaa !228
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit
  %33 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0168.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.0165.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %35 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %38 = zext i16 %i.cx to i64
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.aa, %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit.._crit_edge_crit_edge
  %39 = phi ptr [ %.pre, %_ZN4llvm11SmallVectorINS_8RegisterELj8EEC2Em.exit.._crit_edge_crit_edge ], [ %i.fb, %bb.aa ]
  %i.du = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store i64 %i.cy, ptr %24, align 8, !tbaa !226
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.dv, align 8, !tbaa !243
  %i.dw = load i32, ptr %i.df, align 8, !tbaa !227
  %i.dx = zext i32 %i.dw to i64
  %i.dy = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.du, ptr noundef nonnull align 8 dereferenceable(20) %24, ptr %39, i64 %i.dx) #19 ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.eb = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.018.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 %.sroa.018.0.copyload, ptr %10, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 1, ptr %.sroa.4155.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.dz, ptr %11, align 8
  %.sroa.0150.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ea, ptr %.sroa.0150.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 1, ptr %.sroa.4151.0..sroa_idx, align 8, !tbaa !261
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !182
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call { ptr, ptr } %i.ee(ptr noundef nonnull align 8 dereferenceable(96) %i.eb, i32 noundef 88, ptr nonnull %10, i64 1, ptr nonnull %11, i64 1, i64 0) #19, !inline_history !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.eg = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.eh = load ptr, ptr %19, align 8, !tbaa !228  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.de
  br i1 %i.ei, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.eh) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.aa:                                            ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.ej = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %.sroa.024.0.copyload = load i64, ptr %17, align 8, !tbaa !226
  store i64 %.sroa.024.0.copyload, ptr %20, align 8, !tbaa !226
  store i32 0, ptr %33, align 8, !tbaa !243
  %i.ek = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.ej, ptr noundef nonnull align 8 dereferenceable(20) %20, i64 noundef %indvars.iv) #19 ; 2 uses
  %i.el = extractvalue { ptr, ptr } %i.ek, 0
  %i.em = extractvalue { ptr, ptr } %i.ek, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.en = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.023.0.copyload = load i64, ptr %17, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 %.sroa.023.0.copyload, ptr %8, align 8
  store i32 0, ptr %.sroa.4173.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.ds, ptr %9, align 8
  store ptr %i.dt, ptr %.sroa.0168.sroa.4.0..sroa_idx, align 8, !tbaa !226
  store i32 1, ptr %.sroa.4169.0..sroa_idx, align 8, !tbaa !261
  store ptr %i.el, ptr %34, align 8
  store ptr %i.em, ptr %.sroa.0165.sroa.4.0..sroa_idx, align 8, !tbaa !226
  store i32 1, ptr %.sroa.4166.0..sroa_idx, align 8, !tbaa !261
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !182
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call { ptr, ptr } %i.eq(ptr noundef nonnull align 8 dereferenceable(96) %i.en, i32 noundef 55, ptr nonnull %8, i64 1, ptr nonnull %9, i64 2, i64 0) #19, !inline_history !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.es = extractvalue { ptr, ptr } %i.er, 0
  %i.et = extractvalue { ptr, ptr } %i.er, 1
  %i.eu = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store i64 %.sroa.0.0.i91, ptr %21, align 8, !tbaa !226
  store i32 0, ptr %35, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store i32 %i.bz, ptr %22, align 8, !tbaa !238
  store i32 0, ptr %36, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store ptr %i.es, ptr %23, align 8, !tbaa !262
  store ptr %i.et, ptr %.sroa.4176.0..sroa_idx, align 8, !tbaa !264
  store i32 1, ptr %37, align 8, !tbaa !246
  %i.ev = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96) %i.eu, ptr noundef nonnull align 8 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(20) %22, ptr noundef nonnull align 8 dereferenceable(20) %23) #19
  %i.ew = extractvalue { ptr, ptr } %i.ev, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !225
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !226
  %i.fb = load ptr, ptr %19, align 8, !tbaa !228  ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !238
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next, %38
  br i1 %i.fd, label %bb.aa, label %._crit_edge, !llvm.loop !684

bb.ab:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.fe = icmp samesign ult i32 %i.bo, %i.bp
  br i1 %i.fe, label %bb.ac, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ff = urem i32 %i.co, %i.cu
  %i.fg = udiv i32 %i.co, %i.cu                   ; 2 uses
  %.not88 = icmp eq i32 %i.ff, 0
  br i1 %.not88, label %bb.ad, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i = icmp ule i32 %i.cu, %i.co
  %i.fh = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fg)
  %i.fi = icmp samesign ult i32 %i.fh, 2
  %or.cond = select i1 %.not.i.i, i1 %i.fi, i1 false
  br i1 %or.cond, label %bb.ae, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fj = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fg, i1 false)
  %40 = sub nuw nsw i32 31, %i.fj
  %i.fk = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %.sroa.014.0.copyload = load i64, ptr %17, align 8, !tbaa !226
  store i64 %.sroa.014.0.copyload, ptr %25, align 8, !tbaa !226
  %i.fl = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.fl, align 8, !tbaa !243
  %i.fm = zext nneg i32 %40 to i64
  %i.fn = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.fk, ptr noundef nonnull align 8 dereferenceable(20) %25, i64 noundef %i.fm) #19 ; 2 uses
  %i.fo = extractvalue { ptr, ptr } %i.fn, 0
  %i.fp = extractvalue { ptr, ptr } %i.fn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.fq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %17, align 8, !tbaa !226
  %.sroa.012.0.copyload = load i32, ptr %i.d, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %.sroa.013.0.copyload, ptr %6, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.4144.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %.sroa.012.0.copyload, ptr %7, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !261
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.fo, ptr %i.fr, align 8
  %.sroa.0135.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.fp, ptr %.sroa.0135.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 1, ptr %.sroa.4136.0..sroa_idx, align 8, !tbaa !261
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !182
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call { ptr, ptr } %i.fu(ptr noundef nonnull align 8 dereferenceable(96) %i.fq, i32 noundef 156, ptr nonnull %6, i64 1, ptr nonnull %7, i64 2, i64 0) #19, !inline_history !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %switch.selectcmp.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fw = extractvalue { ptr, ptr } %i.fv, 1
  %i.fx = extractvalue { ptr, ptr } %i.fv, 0
  %i.fy = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store i64 %.sroa.0.0.i91, ptr %26, align 8, !tbaa !226
  %i.fz = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.fz, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store i32 %i.bz, ptr %27, align 8, !tbaa !238
  %i.ga = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.ga, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store ptr %i.fx, ptr %28, align 8, !tbaa !262
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.fw, ptr %.sroa.4147.0..sroa_idx, align 8, !tbaa !264
  %i.gb = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 1, ptr %i.gb, align 8, !tbaa !246
  %i.gc = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96) %i.fy, ptr noundef nonnull align 8 dereferenceable(20) %26, ptr noundef nonnull align 8 dereferenceable(20) %27, ptr noundef nonnull align 8 dereferenceable(20) %28) #19
  %i.gd = extractvalue { ptr, ptr } %i.gc, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !225
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.011.0 = phi i32 [ %i.gh, %bb.af ], [ %i.bz, %bb.ae ]
  %i.gi = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %.sroa.06.0.copyload = load i32, ptr %i.d, align 8, !tbaa !238
  %i.gj = call fastcc i32 @_ZL34getBitcastWiderVectorElementOffsetRN4llvm16MachineIRBuilderENS_8RegisterEjj(ptr noundef nonnull align 8 dereferenceable(96) %i.gi, i32 %.sroa.06.0.copyload, i32 noundef %i.co, i32 noundef %i.cu)
  %i.gk = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.sroa.0.0.i91, ptr %4, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 %.sroa.011.0, ptr %5, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !261
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.gj, ptr %i.gl, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %.sroa.4116.0..sroa_idx, align 8, !tbaa !261
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !182
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call { ptr, ptr } %i.go(ptr noundef nonnull align 8 dereferenceable(96) %i.gk, i32 noundef 156, ptr nonnull %4, i64 1, ptr nonnull %5, i64 2, i64 0) #19, !inline_history !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.gq = extractvalue { ptr, ptr } %i.gp, 0
  %i.gr = extractvalue { ptr, ptr } %i.gp, 1
  %i.gs = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.02.0.copyload, ptr %29, align 8, !tbaa !238
  %i.gt = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 1, ptr %i.gt, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store ptr %i.gq, ptr %30, align 8, !tbaa !262
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %i.gr, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !264
  %i.gu = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 1, ptr %i.gu, align 8, !tbaa !246
  %i.gv = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.gs, ptr noundef nonnull align 8 dereferenceable(20) %29, ptr noundef nonnull align 8 dereferenceable(20) %30, i64 0) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %i.gw = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %bb.ad, %bb.ab, %bb.ac, %bb.x, %bb.ag, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %.0 = phi i32 [ 2, %bb.ad ], [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ], [ 2, %bb.x ], [ 1, %bb.ag ], [ 2, %bb.ac ], [ 2, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZN4llvm13isPowerOf2_32Ej.exit.thread
  %.1 = phi i32 [ %.0, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 9 uses
  %i.b = lshr i64 %i.a, 60
  %i.c = add nsw i64 %i.b, -5
  %switch.selectcmp.i.i = icmp ult i64 %i.c, 4
  br i1 %switch.selectcmp.i.i, label %bb.b, label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, -8070450532247928832
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.a, 1152921504605798400
  %i.f = or disjoint i64 %i.e, 4611686018427387904
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i = and i64 %i.a, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i.i, label %bb.i [
    i64 8070450532247928832, label %bb.e
    i64 6917529027641081856, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = trunc i64 %i.a to i32
  %i.h = lshr i32 %i.g, 20
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.i) #19
  %i.m = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.l) #19
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 28                 ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %storemerge.i.i.i.i.i.i = or disjoint i64 %i.o, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = shl nuw nsw i32 %i.i, 20
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.o, %i.q
  %i.s = or disjoint i64 %i.r, 3458764513820540928
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.t = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = and i64 %i.a, 1152921504338411520
  %.sroa.0.0.v.i.i.i = select i1 %i.u, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i, %i.v
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.x = lshr i64 %i.a, 44
  %i.y = and i64 %i.x, 65535
  %i.z = lshr i64 %i.a, 28
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = select i1 %i.w, i64 %i.y, i64 %i.aa
  %i.ac = shl nuw nsw i64 %i.ab, 28
  %storemerge.i.i.i.i.i = or disjoint i64 %i.ac, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

_ZNK4llvm3LLT13getScalarTypeEv.exit:              ; preds = %bb.a, %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i.i.i.i, %bb.f ], [ %i.f, %bb.c ], [ %storemerge.i.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i.i, %bb.h ], [ %i.s, %bb.g ], [ %i.a, %bb.a ] ; 2 uses
  %i.ad = and i64 %1, 8589934591
  %.not4.not.i = icmp eq i64 %i.ad, 1
  br i1 %.not4.not.i, label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  %i.ae = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %1, i64 %.sroa.0.0.i)
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit

_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit: ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ae, %bb.j ], [ %.sroa.0.0.i, %_ZNK4llvm3LLT13getScalarTypeEv.exit ]
  ret i64 %.sroa.03.0.i
}

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZL34getBitcastWiderVectorElementOffsetRN4llvm16MachineIRBuilderENS_8RegisterEjj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
end_hunk_5
begin_hunk_6_@_ZL34getBitcastWiderVectorElementOffsetRN4llvm16MachineIRBuilderENS_8RegisterEjj:bb.a
  %i.dd = load ptr, ptr %0, align 8, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call { ptr, ptr } %i.df(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 155, ptr nonnull %4, i64 1, ptr nonnull %5, i64 2, i64 0) #19, !inline_history !5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dh = extractvalue { ptr, ptr } %i.dg, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !225
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret i32 %i.dl
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper22bitcastInsertVectorEltERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %6 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %7 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %8 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %9 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %10 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %11 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %12 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %13 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %14 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %15 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %16 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %17 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %21 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %22 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %23 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %24 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %25 = alloca %"class.std::tuple.270", align 8   ; 10 uses
  %26 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %27 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %28 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %29 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %30 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %31 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %32 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %33 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @_ZNK4llvm12MachineInstr16getFirst4RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.270") align 8 %25, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !226  ; 9 uses
  %i.g = icmp slt i64 %i.f, -8070450532247928832
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, 1152921504605798400
  %i.i = or disjoint i64 %i.h, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i = and i64 %i.f, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i, label %bb.i [
    i64 8070450532247928832, label %bb.e
    i64 6917529027641081856, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = trunc i64 %i.f to i32
  %i.k = lshr i32 %i.j, 20
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.l) #19
  %i.p = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.o) #19
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 28                 ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %storemerge.i.i.i.i.i = or disjoint i64 %i.r, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.s = shl nuw nsw i32 %i.l, 20
  %i.t = zext nneg i32 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.w = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = and i64 %i.f, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.x, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.y
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.aa = lshr i64 %i.f, 44
  %i.ab = and i64 %i.aa, 65535
  %i.ac = lshr i64 %i.f, 28
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = select i1 %i.z, i64 %i.ab, i64 %i.ad
  %i.af = shl nuw nsw i64 %i.ae, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.af, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ %storemerge.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i, %bb.h ], [ %i.v, %bb.g ], [ %storemerge.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ag = lshr i64 %3, 60
  %i.ah = add nsw i64 %i.ag, -5
  %switch.selectcmp.i = icmp ult i64 %i.ah, 4     ; 4 uses
  br i1 %switch.selectcmp.i, label %bb.j, label %_ZNK4llvm3LLT14getElementTypeEv.exit61

bb.j:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.ai = icmp slt i64 %3, -8070450532247928832
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = and i64 %3, 1152921504605798400
  %i.ak = or disjoint i64 %i.aj, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit61

bb.l:                                             ; preds = %bb.j
  %.mask.i.i55 = and i64 %3, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i55, label %bb.q [
    i64 8070450532247928832, label %bb.m
    i64 6917529027641081856, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.al = trunc i64 %3 to i32
  %i.am = lshr i32 %i.al, 20
  %i.an = and i32 %i.am, 255                      ; 2 uses
  %i.ao = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.an) #19
  %i.ar = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.aq) #19
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 28               ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %storemerge.i.i.i.i.i59 = or disjoint i64 %i.at, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit61

bb.o:                                             ; preds = %bb.m
  %i.au = shl nuw nsw i32 %i.an, 20
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = or disjoint i64 %i.at, %i.av
  %i.ax = or disjoint i64 %i.aw, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit61

bb.p:                                             ; preds = %bb.l
  %i.ay = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = and i64 %3, 1152921504338411520
  %.sroa.0.0.v.i.i56 = select i1 %i.az, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i57 = or disjoint i64 %.sroa.0.0.v.i.i56, %i.ba
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit61

bb.q:                                             ; preds = %bb.l
  %i.bb = icmp eq i64 %.mask.i.i55, 4611686018427387904
  %i.bc = lshr i64 %3, 44
  %i.bd = and i64 %i.bc, 65535
  %i.be = lshr i64 %3, 28
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = select i1 %i.bb, i64 %i.bd, i64 %i.bf
  %i.bh = shl nuw nsw i64 %i.bg, 28
  %storemerge.i.i.i.i60 = or disjoint i64 %i.bh, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit61

_ZNK4llvm3LLT14getElementTypeEv.exit61:           ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit, %bb.q, %bb.p, %bb.o, %bb.n, %bb.k
  %storemerge = phi i64 [ %storemerge.i.i.i.i.i59, %bb.n ], [ %i.ak, %bb.k ], [ %storemerge.i.i.i.i60, %bb.q ], [ %.sroa.0.0.i6.i57, %bb.p ], [ %i.ax, %bb.o ], [ %3, %_ZNK4llvm3LLT14getElementTypeEv.exit ] ; 11 uses
  %.mask.i.i62 = and i64 %storemerge, -1152921504606846976
  %i.bi = icmp eq i64 %.mask.i.i62, 4611686018427387904 ; 2 uses
  br i1 %i.bi, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit61
  %i.bj = lshr i64 %storemerge, 60
  %.off.i.i = add nsw i64 %i.bj, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit61, %bb.r
  %i.bk = icmp slt i64 %storemerge, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.bk, %i.bi
  %i.bl = lshr i64 %storemerge, 44
  %i.bm = and i64 %i.bl, 65535
  %i.bn = lshr i64 %storemerge, 28
  %i.bo = select i1 %spec.select.i.i.i, i64 %i.bm, i64 %i.bn
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.r
  %i.bp = lshr i64 %storemerge, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.bp, 65535
  %i.bq = icmp slt i64 %storemerge, -8070450532247928832
  %i.br = lshr i64 %storemerge, 44
  %i.bs = and i64 %i.br, 65535
  %i.bt = lshr i64 %storemerge, 28
  %.0.in.i3.i = select i1 %i.bq, i64 %i.bs, i64 %i.bt
  %i.bu = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bv = trunc i64 %storemerge to i1
  br i1 %i.bv, label %bb.s, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.s:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i140 = phi i64 [ %i.bo, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.bu, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.bw = trunc i64 %.sroa.05.0.i140 to i32       ; 4 uses
  %.mask.i.i63 = and i64 %.sroa.0.0.i, -1152921504606846976
  %i.bx = icmp eq i64 %.mask.i.i63, 4611686018427387904
  %i.by = lshr i64 %.sroa.0.0.i, 44
  %i.bz = and i64 %i.by, 65535
  %i.ca = lshr i64 %.sroa.0.0.i, 28
  %i.cb = select i1 %i.bx, i64 %i.bz, i64 %i.ca
  %i.cc = trunc i64 %i.cb to i32                  ; 4 uses
  br i1 %switch.selectcmp.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cd = trunc i64 %3 to i1
  br i1 %i.cd, label %bb.u, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.t
  %i.ce = trunc i64 %3 to i32
  %i.cf = lshr i32 %i.ce, 4
  %i.cg = and i32 %i.cf, 65535
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm3LLT14getNumElementsEv.exit
  %i.ch = phi i32 [ %i.cg, %_ZNK4llvm3LLT14getNumElementsEv.exit ], [ 1, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %i.ci = trunc i64 %i.f to i1
  br i1 %i.ci, label %bb.w, label %_ZNK4llvm3LLT14getNumElementsEv.exit77

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit77:           ; preds = %bb.v
  %i.cj = trunc i64 %i.f to i32
  %i.ck = lshr i32 %i.cj, 4
  %i.cl = and i32 %i.ck, 65535
  %i.cm = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.022.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store i64 %3, ptr %23, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store i32 %.sroa.022.0.copyload, ptr %24, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %.sroa.4109.0..sroa_idx, align 8, !tbaa !261
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !182
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call { ptr, ptr } %i.cp(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, i32 noundef 88, ptr nonnull %23, i64 1, ptr nonnull %24, i64 1, i64 0) #19, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.cr = extractvalue { ptr, ptr } %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !225
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !226 ; 3 uses
  %i.cw = icmp samesign ult i32 %i.ch, %i.cl
  br i1 %i.cw, label %bb.x, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.x:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit77
  %i.cx = urem i32 %i.bw, %i.cc
  %i.cy = udiv i32 %i.bw, %i.cc                   ; 2 uses
  %.not54 = icmp eq i32 %i.cx, 0
  br i1 %.not54, label %bb.y, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.y:                                             ; preds = %bb.x
  %.not.i.i = icmp ule i32 %i.cc, %i.bw
  %i.cz = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.cy)
  %i.da = icmp samesign ult i32 %i.cz, 2
  %or.cond = select i1 %.not.i.i, i1 %i.da, i1 false
  br i1 %or.cond, label %bb.z, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.db = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cy, i1 false)
  %34 = sub nuw nsw i32 31, %i.db
  %i.dc = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %.sroa.021.0.copyload = load i64, ptr %25, align 8, !tbaa !226
  store i64 %.sroa.021.0.copyload, ptr %26, align 8, !tbaa !226
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.dd, align 8, !tbaa !243
  %i.de = zext nneg i32 %34 to i64
  %i.df = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, ptr noundef nonnull align 8 dereferenceable(20) %26, i64 noundef %i.de) #19 ; 2 uses
  %i.dg = extractvalue { ptr, ptr } %i.df, 0
  %i.dh = extractvalue { ptr, ptr } %i.df, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.di = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %25, align 8, !tbaa !226
  %.sroa.019.0.copyload = load i32, ptr %i.e, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store i64 %.sroa.020.0.copyload, ptr %21, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store i32 %.sroa.019.0.copyload, ptr %22, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !261
  %i.dj = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.dg, ptr %i.dj, align 8
  %.sroa.089.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.dh, ptr %.sroa.089.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i32 1, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !261
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !182
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call { ptr, ptr } %i.dm(ptr noundef nonnull align 8 dereferenceable(96) %i.di, i32 noundef 156, ptr nonnull %21, i64 1, ptr nonnull %22, i64 2, i64 0) #19, !inline_history !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.do = extractvalue { ptr, ptr } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.dn, 1      ; 2 uses
  br i1 %switch.selectcmp.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store i64 %storemerge, ptr %27, align 8, !tbaa !226
  %i.dr = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.dr, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store i32 %i.cv, ptr %28, align 8, !tbaa !238
  %i.ds = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  store ptr %i.do, ptr %29, align 8, !tbaa !262
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.dp, ptr %.sroa.5102.0..sroa_idx, align 8, !tbaa !264
  %i.dt = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 1, ptr %i.dt, align 8, !tbaa !246
  %i.du = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96) %i.dq, ptr noundef nonnull align 8 dereferenceable(20) %27, ptr noundef nonnull align 8 dereferenceable(20) %28, ptr noundef nonnull align 8 dereferenceable(20) %29) #19
  %i.dv = extractvalue { ptr, ptr } %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !225
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.018.0 = phi i32 [ %i.dz, %bb.aa ], [ %i.cv, %bb.z ] ; 3 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %.sroa.013.0.copyload = load i32, ptr %i.e, align 8, !tbaa !238
  %i.eb = call fastcc i32 @_ZL34getBitcastWiderVectorElementOffsetRN4llvm16MachineIRBuilderENS_8RegisterEjj(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 %.sroa.013.0.copyload, i32 noundef %i.bw, i32 noundef %i.cc) ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 14 uses
  %.sroa.09.0.copyload = load i32, ptr %i.d, align 8, !tbaa !238 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !240 ; 4 uses
  %i.ef = icmp slt i32 %.sroa.018.0, 0
  br i1 %i.ef, label %bb.ac, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.eg = and i32 %.sroa.018.0, 2147483647        ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 472
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !227
  %i.ej = icmp ugt i32 %i.ei, %i.eg
  br i1 %i.ej, label %bb.ad, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 464
  %i.el = zext nneg i32 %i.eg to i64
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !228
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.04.0.i.i = phi i64 [ %i.eo, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ] ; 18 uses
  %i.ep = icmp slt i32 %.sroa.09.0.copyload, 0
  br i1 %i.ep, label %bb.ae, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit34.i

bb.ae:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i
  %i.eq = and i32 %.sroa.09.0.copyload, 2147483647 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 472
  %i.es = load i32, ptr %i.er, align 8, !tbaa !227
  %i.et = icmp ugt i32 %i.es, %i.eq
  br i1 %i.et, label %bb.af, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit34.i

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 464
  %i.ev = zext nneg i32 %i.eq to i64
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !228
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit34.i

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit34.i: ; preds = %bb.af, %bb.ae, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i
  %.sroa.04.0.i33.i = phi i64 [ %i.ey, %bb.af ], [ 0, %bb.ae ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store i64 %.sroa.04.0.i.i, ptr %17, align 8, !tbaa !226
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.ez, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store i32 %.sroa.09.0.copyload, ptr %18, align 8, !tbaa !238
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.fa, align 8, !tbaa !246
  %i.fb = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildZExtERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.ec, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %18, i64 0) #19 ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fb, 0
  %i.fd = extractvalue { ptr, ptr } %i.fb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i64 %.sroa.04.0.i.i, ptr %15, align 8
  %.sroa.4127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %.sroa.4127.0..sroa_idx.i, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr %i.fc, ptr %16, align 8
  %.sroa.0122.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.fd, ptr %.sroa.0122.sroa.4.0..sroa_idx.i, align 8, !tbaa !226
  %.sroa.4123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 1, ptr %.sroa.4123.0..sroa_idx.i, align 8, !tbaa !261
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.eb, ptr %i.fe, align 8
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 0, ptr %.sroa.4120.0..sroa_idx.i, align 8, !tbaa !261
  %i.ff = load ptr, ptr %i.ec, align 8, !tbaa !182
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call { ptr, ptr } %i.fh(ptr noundef nonnull align 8 dereferenceable(96) %i.ec, i32 noundef 155, ptr nonnull %15, i64 1, ptr nonnull %16, i64 2, i64 0) #19, !inline_history !704 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store i64 %.sroa.04.0.i.i, ptr %19, align 8, !tbaa !226
  %i.fj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.fj, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %.mask.i.i.i = and i64 %.sroa.04.0.i.i, -1152921504606846976
  %i.fk = icmp eq i64 %.mask.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.fk, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit34.i
  %i.fl = lshr i64 %.sroa.04.0.i.i, 60
  %.off.i.i.i = add nsw i64 %i.fl, -1
  %switch.i.i.i = icmp ult i64 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i:     ; preds = %bb.ag, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit34.i
  %i.fm = icmp slt i64 %.sroa.04.0.i.i, -8070450532247928832
  %spec.select.i.i.i.i = or i1 %i.fm, %i.fk
  %i.fn = lshr i64 %.sroa.04.0.i.i, 44
  %i.fo = and i64 %i.fn, 65535
  %i.fp = lshr i64 %.sroa.04.0.i.i, 28
  %i.fq = and i64 %i.fp, 4294967295
  %i.fr = select i1 %spec.select.i.i.i.i, i64 %i.fo, i64 %i.fq
  br label %_ZNK4llvm8TypeSizecvmEv.exit.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit.i:            ; preds = %bb.ag
  %i.fs = lshr i64 %.sroa.04.0.i.i, 4
  %.sroa.0.0.insert.ext.i.i.i.i = and i64 %i.fs, 65535
  %i.ft = icmp slt i64 %.sroa.04.0.i.i, -8070450532247928832
  %i.fu = lshr i64 %.sroa.04.0.i.i, 44
  %i.fv = and i64 %i.fu, 65535
  %i.fw = lshr i64 %.sroa.04.0.i.i, 28
  %.0.in.i3.i.i = select i1 %i.ft, i64 %i.fv, i64 %i.fw
  %i.fx = mul nuw nsw i64 %.0.in.i3.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = trunc i64 %.sroa.04.0.i.i to i1
  br i1 %i.fz, label %bb.ah, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.ah:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i
  %.sroa.05.0.i153.i = phi i64 [ %i.fr, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i ], [ %i.fy, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i ] ; 2 uses
  %i.ga = trunc nuw i64 %.sroa.05.0.i153.i to i32
  %.mask.i.i35.i = and i64 %.sroa.04.0.i33.i, -1152921504606846976
  %i.gb = icmp eq i64 %.mask.i.i35.i, 4611686018427387904 ; 2 uses
  br i1 %i.gb, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.gc = lshr i64 %.sroa.04.0.i33.i, 60
  %.off.i.i36.i = add nsw i64 %i.gc, -1
  %switch.i.i37.i = icmp ult i64 %.off.i.i36.i, 3
  br i1 %switch.i.i37.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit46.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit46.thread.i:   ; preds = %bb.ai, %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.gd = icmp slt i64 %.sroa.04.0.i33.i, -8070450532247928832
  %spec.select.i.i.i45.i = or i1 %i.gd, %i.gb
  %i.ge = lshr i64 %.sroa.04.0.i33.i, 44
  %i.gf = and i64 %i.ge, 65535
end_hunk_6
begin_hunk_7_@_ZN4llvm15LegalizerHelper23bitcastExtractSubvectorERNS_12MachineInstrEjNS_3LLTE:bb.a

bb.j:                                             ; preds = %bb.h
  %i.av = lshr i64 %i.am, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.av, 65535
  %i.aw = icmp slt i64 %i.am, -8070450532247928832
  %i.ax = lshr i64 %i.am, 44
  %i.ay = and i64 %i.ax, 65535
  %i.az = lshr i64 %i.am, 28
  %.0.in.i3.i = select i1 %i.aw, i64 %i.ay, i64 %i.az
  %i.ba = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = trunc i64 %i.am to i8
  %.sroa.0.4.extract.trunc.i = and i8 %i.bc, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.i, %bb.j
  %.sroa.05.0.i = phi i64 [ %i.au, %bb.i ], [ %i.bb, %bb.j ]
  %.sroa.3.0.i = phi i8 [ 0, %bb.i ], [ %.sroa.0.4.extract.trunc.i, %bb.j ]
  %i.bd = load i64, ptr %8, align 8               ; 16 uses
  %.mask.i.i60 = and i64 %i.bd, -1152921504606846976 ; 2 uses
  %i.be = icmp eq i64 %.mask.i.i60, 4611686018427387904 ; 3 uses
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.bf = lshr i64 %i.bd, 60
  %.off.i.i61 = add nsw i64 %i.bf, -1
  %switch.i.i62 = icmp ult i64 %.off.i.i61, 3
  br i1 %switch.i.i62, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.bg = icmp slt i64 %i.bd, -8070450532247928832
  %spec.select.i.i.i70 = or i1 %i.bg, %i.be
  %i.bh = lshr i64 %i.bd, 44
  %i.bi = and i64 %i.bh, 65535
  %i.bj = lshr i64 %i.bd, 28
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = select i1 %spec.select.i.i.i70, i64 %i.bi, i64 %i.bk
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit71

bb.m:                                             ; preds = %bb.k
  %i.bm = lshr i64 %i.bd, 4
  %.sroa.0.0.insert.ext.i.i.i63 = and i64 %i.bm, 65535
  %i.bn = icmp slt i64 %i.bd, -8070450532247928832
  %i.bo = lshr i64 %i.bd, 44
  %i.bp = and i64 %i.bo, 65535
  %i.bq = lshr i64 %i.bd, 28
  %.0.in.i3.i64 = select i1 %i.bn, i64 %i.bp, i64 %i.bq
  %i.br = mul nuw nsw i64 %.0.in.i3.i64, %.sroa.0.0.insert.ext.i.i.i63
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = trunc i64 %i.bd to i8
  %.sroa.0.4.extract.trunc.i65 = and i8 %i.bt, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit71

_ZNK4llvm3LLT13getSizeInBitsEv.exit71:            ; preds = %bb.l, %bb.m
  %.sroa.05.0.i66 = phi i64 [ %i.bl, %bb.l ], [ %i.bs, %bb.m ]
  %.sroa.3.0.i67 = phi i8 [ 0, %bb.l ], [ %.sroa.0.4.extract.trunc.i65, %bb.m ]
  %.not.i = icmp ne i64 %.sroa.05.0.i, %.sroa.05.0.i66
  %i.bu = icmp ne i8 %.sroa.3.0.i, %.sroa.3.0.i67
  %i.bv = or i1 %.not.i, %i.bu
  br i1 %i.bv, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit71
  %i.bw = icmp slt i64 %i.bd, -8070450532247928832
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = and i64 %i.bd, 1152921504605798400
  %i.by = or disjoint i64 %i.bx, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.p:                                             ; preds = %bb.n
  switch i64 %.mask.i.i60, label %bb.u [
    i64 8070450532247928832, label %bb.q
    i64 6917529027641081856, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.bz = trunc i64 %i.bd to i32
  %i.ca = lshr i32 %i.bz, 20
  %i.cb = and i32 %i.ca, 255                      ; 2 uses
  %i.cc = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.cb) #19
  %i.cf = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.ce) #19
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 28               ; 2 uses
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %storemerge.i.i.i.i.i = or disjoint i64 %i.ch, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.s:                                             ; preds = %bb.q
  %i.ci = shl nuw nsw i32 %i.cb, 20
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = or disjoint i64 %i.ch, %i.cj
  %i.cl = or disjoint i64 %i.ck, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.t:                                             ; preds = %bb.p
  %i.cm = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = and i64 %i.bd, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.cn, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.co
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.u:                                             ; preds = %bb.p
  %i.cp = lshr i64 %i.bd, 44
  %i.cq = and i64 %i.cp, 65535
  %i.cr = lshr i64 %i.bd, 28
  %i.cs = and i64 %i.cr, 4294967295
  %i.ct = select i1 %i.be, i64 %i.cq, i64 %i.cs
  %i.cu = shl nuw nsw i64 %i.ct, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.cu, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i = phi i64 [ %i.by, %bb.o ], [ %storemerge.i.i.i.i, %bb.u ], [ %.sroa.0.0.i6.i, %bb.t ], [ %i.cl, %bb.s ], [ %storemerge.i.i.i.i.i, %bb.r ] ; 3 uses
  %.mask.i.i73 = and i64 %.sroa.0.0.i, -1152921504606846976
  %i.cv = icmp eq i64 %.mask.i.i73, 4611686018427387904
  %i.cw = lshr i64 %.sroa.0.0.i, 44
  %i.cx = and i64 %i.cw, 65535
  %i.cy = lshr i64 %.sroa.0.0.i, 28
  %i.cz = select i1 %i.cv, i64 %i.cx, i64 %i.cy
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = load i64, ptr %9, align 8               ; 7 uses
  %i.dc = icmp slt i64 %i.db, -8070450532247928832
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.dd = and i64 %i.db, 1152921504605798400
  %i.de = or disjoint i64 %i.dd, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit91

bb.w:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %.mask.i.i85 = and i64 %i.db, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i85, label %bb.ab [
    i64 8070450532247928832, label %bb.x
    i64 6917529027641081856, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.df = trunc i64 %i.db to i32
  %i.dg = lshr i32 %i.df, 20
  %i.dh = and i32 %i.dg, 255                      ; 2 uses
  %i.di = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.dh) #19
  %i.dl = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.dk) #19
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 28               ; 2 uses
  br i1 %i.dj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %storemerge.i.i.i.i.i89 = or disjoint i64 %i.dn, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit91

bb.z:                                             ; preds = %bb.x
  %i.do = shl nuw nsw i32 %i.dh, 20
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = or disjoint i64 %i.dn, %i.dp
  %i.dr = or disjoint i64 %i.dq, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit91

bb.aa:                                            ; preds = %bb.w
  %i.ds = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = and i64 %i.db, 1152921504338411520
  %.sroa.0.0.v.i.i86 = select i1 %i.dt, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i87 = or disjoint i64 %.sroa.0.0.v.i.i86, %i.du
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit91

bb.ab:                                            ; preds = %bb.w
  %i.dv = icmp eq i64 %.mask.i.i85, 4611686018427387904
  %i.dw = lshr i64 %i.db, 44
  %i.dx = and i64 %i.dw, 65535
  %i.dy = lshr i64 %i.db, 28
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = select i1 %i.dv, i64 %i.dx, i64 %i.dz
  %i.eb = shl nuw nsw i64 %i.ea, 28
  %storemerge.i.i.i.i90 = or disjoint i64 %i.eb, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit91

_ZNK4llvm3LLT14getElementTypeEv.exit91:           ; preds = %bb.v, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sroa.0.0.i88 = phi i64 [ %i.de, %bb.v ], [ %storemerge.i.i.i.i90, %bb.ab ], [ %.sroa.0.0.i6.i87, %bb.aa ], [ %i.dr, %bb.z ], [ %storemerge.i.i.i.i.i89, %bb.y ] ; 3 uses
  %.mask.i.i92 = and i64 %.sroa.0.0.i88, -1152921504606846976
  %i.ec = icmp eq i64 %.mask.i.i92, 4611686018427387904
  %i.ed = lshr i64 %.sroa.0.0.i88, 44
  %i.ee = and i64 %i.ed, 65535
  %i.ef = lshr i64 %.sroa.0.0.i88, 28
  %i.eg = select i1 %i.ec, i64 %i.ee, i64 %i.ef
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  %i.ei = icmp ult i32 %i.da, %i.eh
  br i1 %i.ei, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit91
  %i.ej = udiv i32 %i.da, %i.eh                   ; 4 uses
  %i.ek = zext i32 %i.ej to i64                   ; 3 uses
  %i.el = urem i64 %i.j, %i.ek
  %i.em = udiv i64 %i.j, %i.ek
  %.not52 = icmp eq i64 %i.el, 0
  br i1 %.not52, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.en = urem i32 %.sroa.0140.0.extract.trunc, %i.ej
  %.not53 = icmp eq i32 %i.en, 0
  br i1 %.not53, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eo = urem i32 %.sroa.0136.0.extract.trunc, %i.ej
  %i.ep = udiv i32 %.sroa.0136.0.extract.trunc, %i.ej
  %.not54 = icmp eq i32 %i.eo, 0
  br i1 %.not54, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.2.0.insert.shift.i.i105 = and i64 %.sroa.04.0.i55, 1
  %i.eq = shl nuw nsw i64 %i.ek, 28
  %i.er = shl nuw nsw i32 %i.ep, 4
  %i.es = zext nneg i32 %i.er to i64
  %i.et = or disjoint i64 %.sroa.2.0.insert.shift.i.i105, %i.es
  %i.eu = or disjoint i64 %i.et, %i.eq
  %storemerge.i.i.i = or disjoint i64 %i.eu, 5764607523034234880
  %i.ev = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %storemerge.i.i.i, ptr %6, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %i.h, ptr %7, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %.sroa.4115.0..sroa_idx, align 8, !tbaa !261
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !182
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call { ptr, ptr } %i.ey(ptr noundef nonnull align 8 dereferenceable(96) %i.ev, i32 noundef 88, ptr nonnull %6, i64 1, ptr nonnull %7, i64 1, i64 0) #19, !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1
  %i.fc = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %.sroa.03.0.copyload = load i64, ptr %8, align 8, !tbaa !226
  store i64 %.sroa.03.0.copyload, ptr %10, align 8, !tbaa !226
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.fd, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.fa, ptr %11, align 8, !tbaa !262
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.fb, ptr %.sroa.4122.0..sroa_idx, align 8, !tbaa !264
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 1, ptr %i.fe, align 8, !tbaa !246
  %i.ff = trunc i64 %i.em to i32
  %i.fg = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder21buildExtractSubvectorERKNS_5DstOpERKNS_5SrcOpEj(ptr noundef nonnull align 8 dereferenceable(96) %i.fc, ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef %i.ff) #19 ; 2 uses
  %i.fh = extractvalue { ptr, ptr } %i.fg, 0
  %i.fi = extractvalue { ptr, ptr } %i.fg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fj = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.f, ptr %4, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.fh, ptr %5, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fi, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !261
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !182
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call { ptr, ptr } %i.fm(ptr noundef nonnull align 8 dereferenceable(96) %i.fj, i32 noundef 88, ptr nonnull %4, i64 1, ptr nonnull %5, i64 1, i64 0) #19, !inline_history !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.fo = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit91, %bb.ac, %bb.ad, %bb.ae, %bb.af, %_ZNK4llvm3LLT13getSizeInBitsEv.exit71, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit56
  %.2 = phi i32 [ 2, %_ZNK4llvm3LLT13getSizeInBitsEv.exit71 ], [ 1, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit56 ], [ 2, %_ZNK4llvm3LLT14getElementTypeEv.exit91 ], [ 1, %bb.af ], [ 2, %bb.ae ], [ 2, %bb.ad ], [ 2, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  %.3 = phi i32 [ 2, %bb.a ], [ %.2, %bb.ag ]
  ret i32 %.3
}

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder21buildExtractSubvectorERKNS_5DstOpERKNS_5SrcOpEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper22bitcastInsertSubvectorERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %6 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %7 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %8 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %9 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %10 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %11 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %12 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %14 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  store i64 %3, ptr %10, align 8
  %i.a = lshr i64 %3, 60
  %i.b = add nsw i64 %i.a, -5
  %switch.selectcmp.i = icmp ult i64 %i.b, 4
  %.not = icmp eq i32 %2, 0
  %or.cond = and i1 %.not, %switch.selectcmp.i
  br i1 %or.cond, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !226  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !226  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !226  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !226  ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !240  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.p = icmp slt i32 %i.f, 0
  br i1 %i.p, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.f, 2147483647                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  %i.s = load i32, ptr %i.r, align 8, !tbaa !227
  %i.t = icmp ugt i32 %i.s, %i.q
  br i1 %i.t, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  %i.v = zext nneg i32 %i.q to i64
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !228
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.04.0.i = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  store i64 %.sroa.04.0.i, ptr %11, align 8
  %i.z = icmp slt i32 %i.h, 0
  br i1 %i.z, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.aa = and i32 %i.h, 2147483647                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !227
  %i.ad = icmp ugt i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !228
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.e, %bb.f
  %.sroa.04.0.i74 = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 2 uses
  %i.aj = icmp slt i32 %i.j, 0
  br i1 %i.aj, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75
  %i.ak = and i32 %i.j, 2147483647                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  %i.am = load i32, ptr %i.al, align 8, !tbaa !227
  %i.an = icmp ugt i32 %i.am, %i.ak
  br i1 %i.an, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !228
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75, %bb.g, %bb.h
  %.sroa.04.0.i76 = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75 ] ; 2 uses
  %i.at = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
  br i1 %i.at, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77
  %i.au = load i64, ptr %11, align 8              ; 11 uses
  %.mask.i.i = and i64 %i.au, -1152921504606846976
  %i.av = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = lshr i64 %i.au, 60
  %.off.i.i = add nsw i64 %i.aw, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = icmp slt i64 %i.au, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.ax, %i.av
  %i.ay = lshr i64 %i.au, 44
  %i.az = and i64 %i.ay, 65535
  %i.ba = lshr i64 %i.au, 28
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = select i1 %spec.select.i.i.i, i64 %i.az, i64 %i.bb
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit
end_hunk_7
begin_hunk_8_@_ZN4llvm15LegalizerHelper22bitcastInsertSubvectorERNS_12MachineInstrEjNS_3LLTE:bb.a
  %i.bi = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = trunc i64 %i.au to i8
  %.sroa.0.4.extract.trunc.i = and i8 %i.bk, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.k, %bb.l
  %.sroa.05.0.i = phi i64 [ %i.bc, %bb.k ], [ %i.bj, %bb.l ]
  %.sroa.3.0.i = phi i8 [ 0, %bb.k ], [ %.sroa.0.4.extract.trunc.i, %bb.l ]
  %i.bl = load i64, ptr %10, align 8              ; 16 uses
  %.mask.i.i78 = and i64 %i.bl, -1152921504606846976 ; 2 uses
  %i.bm = icmp eq i64 %.mask.i.i78, 4611686018427387904 ; 3 uses
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.bn = lshr i64 %i.bl, 60
  %.off.i.i79 = add nsw i64 %i.bn, -1
  %switch.i.i80 = icmp ult i64 %.off.i.i79, 3
  br i1 %switch.i.i80, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.bo = icmp slt i64 %i.bl, -8070450532247928832
  %spec.select.i.i.i88 = or i1 %i.bo, %i.bm
  %i.bp = lshr i64 %i.bl, 44
  %i.bq = and i64 %i.bp, 65535
  %i.br = lshr i64 %i.bl, 28
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = select i1 %spec.select.i.i.i88, i64 %i.bq, i64 %i.bs
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit89

bb.o:                                             ; preds = %bb.m
  %i.bu = lshr i64 %i.bl, 4
  %.sroa.0.0.insert.ext.i.i.i81 = and i64 %i.bu, 65535
  %i.bv = icmp slt i64 %i.bl, -8070450532247928832
  %i.bw = lshr i64 %i.bl, 44
  %i.bx = and i64 %i.bw, 65535
  %i.by = lshr i64 %i.bl, 28
  %.0.in.i3.i82 = select i1 %i.bv, i64 %i.bx, i64 %i.by
  %i.bz = mul nuw nsw i64 %.0.in.i3.i82, %.sroa.0.0.insert.ext.i.i.i81
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = trunc i64 %i.bl to i8
  %.sroa.0.4.extract.trunc.i83 = and i8 %i.cb, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit89

_ZNK4llvm3LLT13getSizeInBitsEv.exit89:            ; preds = %bb.n, %bb.o
  %.sroa.05.0.i84 = phi i64 [ %i.bt, %bb.n ], [ %i.ca, %bb.o ]
  %.sroa.3.0.i85 = phi i8 [ 0, %bb.n ], [ %.sroa.0.4.extract.trunc.i83, %bb.o ]
  %.not.i = icmp ne i64 %.sroa.05.0.i, %.sroa.05.0.i84
  %i.cc = icmp ne i8 %.sroa.3.0.i, %.sroa.3.0.i85
  %i.cd = or i1 %.not.i, %i.cc
  br i1 %i.cd, label %bb.aj, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit89
  %i.ce = trunc i64 %i.au to i32
  %i.cf = lshr i32 %i.ce, 4
  %.sroa.0177.0.extract.trunc = and i32 %i.cf, 65535
  %i.cg = trunc i64 %.sroa.04.0.i74 to i32
  %i.ch = lshr i32 %i.cg, 4
  %.sroa.0173.0.extract.trunc = and i32 %i.ch, 65535 ; 2 uses
  %i.ci = trunc i64 %.sroa.04.0.i76 to i32
  %i.cj = lshr i32 %i.ci, 4
  %.sroa.0169.0.extract.trunc = and i32 %i.cj, 65535 ; 2 uses
  %i.ck = icmp slt i64 %i.bl, -8070450532247928832
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = and i64 %i.bl, 1152921504605798400
  %i.cm = or disjoint i64 %i.cl, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.r:                                             ; preds = %bb.p
  switch i64 %.mask.i.i78, label %bb.w [
    i64 8070450532247928832, label %bb.s
    i64 6917529027641081856, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.bl to i32
  %i.co = lshr i32 %i.cn, 20
  %i.cp = and i32 %i.co, 255                      ; 2 uses
  %i.cq = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.cp) #19
  %i.ct = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.cs) #19
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 28               ; 2 uses
  br i1 %i.cr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %storemerge.i.i.i.i.i = or disjoint i64 %i.cv, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.u:                                             ; preds = %bb.s
  %i.cw = shl nuw nsw i32 %i.cp, 20
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = or disjoint i64 %i.cv, %i.cx
  %i.cz = or disjoint i64 %i.cy, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.v:                                             ; preds = %bb.r
  %i.da = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = and i64 %i.bl, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.db, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.dc
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.w:                                             ; preds = %bb.r
  %i.dd = lshr i64 %i.bl, 44
  %i.de = and i64 %i.dd, 65535
  %i.df = lshr i64 %i.bl, 28
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = select i1 %i.bm, i64 %i.de, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.dh, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.di, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.q, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.q ], [ %storemerge.i.i.i.i, %bb.w ], [ %.sroa.0.0.i6.i, %bb.v ], [ %i.cz, %bb.u ], [ %storemerge.i.i.i.i.i, %bb.t ] ; 3 uses
  %.mask.i.i97 = and i64 %.sroa.0.0.i, -1152921504606846976
  %i.dj = icmp eq i64 %.mask.i.i97, 4611686018427387904
  %i.dk = lshr i64 %.sroa.0.0.i, 44
  %i.dl = and i64 %i.dk, 65535
  %i.dm = lshr i64 %.sroa.0.0.i, 28
  %i.dn = select i1 %i.dj, i64 %i.dl, i64 %i.dm
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = load i64, ptr %11, align 8              ; 7 uses
  %i.dq = icmp slt i64 %i.dp, -8070450532247928832
  br i1 %i.dq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.dr = and i64 %i.dp, 1152921504605798400
  %i.ds = or disjoint i64 %i.dr, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit115

bb.y:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %.mask.i.i109 = and i64 %i.dp, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i109, label %bb.ad [
    i64 8070450532247928832, label %bb.z
    i64 6917529027641081856, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.dt = trunc i64 %i.dp to i32
  %i.du = lshr i32 %i.dt, 20
  %i.dv = and i32 %i.du, 255                      ; 2 uses
  %i.dw = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.dv) #19
  %i.dz = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.dy) #19
  %i.ea = zext i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 28               ; 2 uses
  br i1 %i.dx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %storemerge.i.i.i.i.i113 = or disjoint i64 %i.eb, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit115

bb.ab:                                            ; preds = %bb.z
  %i.ec = shl nuw nsw i32 %i.dv, 20
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = or disjoint i64 %i.eb, %i.ed
  %i.ef = or disjoint i64 %i.ee, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit115

bb.ac:                                            ; preds = %bb.y
  %i.eg = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = and i64 %i.dp, 1152921504338411520
  %.sroa.0.0.v.i.i110 = select i1 %i.eh, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i111 = or disjoint i64 %.sroa.0.0.v.i.i110, %i.ei
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit115

bb.ad:                                            ; preds = %bb.y
  %i.ej = icmp eq i64 %.mask.i.i109, 4611686018427387904
  %i.ek = lshr i64 %i.dp, 44
  %i.el = and i64 %i.ek, 65535
  %i.em = lshr i64 %i.dp, 28
  %i.en = and i64 %i.em, 4294967295
  %i.eo = select i1 %i.ej, i64 %i.el, i64 %i.en
  %i.ep = shl nuw nsw i64 %i.eo, 28
  %storemerge.i.i.i.i114 = or disjoint i64 %i.ep, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit115

_ZNK4llvm3LLT14getElementTypeEv.exit115:          ; preds = %bb.x, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0.0.i112 = phi i64 [ %i.ds, %bb.x ], [ %storemerge.i.i.i.i114, %bb.ad ], [ %.sroa.0.0.i6.i111, %bb.ac ], [ %i.ef, %bb.ab ], [ %storemerge.i.i.i.i.i113, %bb.aa ] ; 3 uses
  %.mask.i.i116 = and i64 %.sroa.0.0.i112, -1152921504606846976
  %i.eq = icmp eq i64 %.mask.i.i116, 4611686018427387904
  %i.er = lshr i64 %.sroa.0.0.i112, 44
  %i.es = and i64 %i.er, 65535
  %i.et = lshr i64 %.sroa.0.0.i112, 28
  %i.eu = select i1 %i.eq, i64 %i.es, i64 %i.et
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = icmp ult i32 %i.do, %i.ev
  br i1 %i.ew, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit115
  %i.ex = udiv i32 %i.do, %i.ev                   ; 6 uses
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = urem i64 %i.l, %i.ey
  %i.fa = udiv i64 %i.l, %i.ey
  %.not70 = icmp eq i64 %i.ez, 0
  br i1 %.not70, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fb = urem i32 %.sroa.0177.0.extract.trunc, %i.ex
  %.not71 = icmp eq i32 %i.fb, 0
  br i1 %.not71, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fc = urem i32 %.sroa.0173.0.extract.trunc, %i.ex
  %i.fd = udiv i32 %.sroa.0173.0.extract.trunc, %i.ex
  %.not72 = icmp eq i32 %i.fc, 0
  br i1 %.not72, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fe = urem i32 %.sroa.0169.0.extract.trunc, %i.ex
  %i.ff = udiv i32 %.sroa.0169.0.extract.trunc, %i.ex
  %.not73 = icmp eq i32 %i.fe, 0
  br i1 %.not73, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.sroa.2.0.insert.shift.i.i129 = and i64 %.sroa.04.0.i74, 1
  %i.fg = shl nuw nsw i64 %i.ey, 28               ; 2 uses
  %i.fh = shl nuw nsw i32 %i.fd, 4
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = or disjoint i64 %.sroa.2.0.insert.shift.i.i129, %i.fi
  %i.fk = or disjoint i64 %i.fj, %i.fg
  %storemerge.i.i.i = or disjoint i64 %i.fk, 5764607523034234880
  %.sroa.2.0.insert.shift.i.i132 = and i64 %.sroa.04.0.i76, 1
  %i.fl = shl nuw nsw i32 %i.ff, 4
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = or disjoint i64 %.sroa.2.0.insert.shift.i.i132, %i.fm
  %i.fo = or disjoint i64 %i.fn, %i.fg
  %storemerge.i.i.i136 = or disjoint i64 %i.fo, 5764607523034234880
  %i.fp = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 %storemerge.i.i.i, ptr %8, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %.sroa.4158.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 %i.h, ptr %9, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %.sroa.4154.0..sroa_idx, align 8, !tbaa !261
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !182
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call { ptr, ptr } %i.fs(ptr noundef nonnull align 8 dereferenceable(96) %i.fp, i32 noundef 88, ptr nonnull %8, i64 1, ptr nonnull %9, i64 1, i64 0) #19, !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.fu = extractvalue { ptr, ptr } %i.ft, 0
  %i.fv = extractvalue { ptr, ptr } %i.ft, 1
  %i.fw = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %storemerge.i.i.i136, ptr %6, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %i.j, ptr %7, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %.sroa.4144.0..sroa_idx, align 8, !tbaa !261
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !182
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call { ptr, ptr } %i.fz(ptr noundef nonnull align 8 dereferenceable(96) %i.fw, i32 noundef 88, ptr nonnull %6, i64 1, ptr nonnull %7, i64 1, i64 0) #19, !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.gb = extractvalue { ptr, ptr } %i.ga, 0
  %i.gc = extractvalue { ptr, ptr } %i.ga, 1
  %i.gd = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %.sroa.03.0.copyload = load i64, ptr %10, align 8, !tbaa !226
  store i64 %.sroa.03.0.copyload, ptr %12, align 8, !tbaa !226
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.ge, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %i.fu, ptr %13, align 8, !tbaa !262
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.fv, ptr %.sroa.4161.0..sroa_idx, align 8, !tbaa !264
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 1, ptr %i.gf, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr %i.gb, ptr %14, align 8, !tbaa !262
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.gc, ptr %.sroa.4151.0..sroa_idx, align 8, !tbaa !264
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 1, ptr %i.gg, align 8, !tbaa !246
  %i.gh = trunc i64 %i.fa to i32
  %i.gi = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder20buildInsertSubvectorERKNS_5DstOpERKNS_5SrcOpES6_j(ptr noundef nonnull align 8 dereferenceable(96) %i.gd, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 8 dereferenceable(20) %14, i32 noundef %i.gh) #19 ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.gi, 0
  %i.gk = extractvalue { ptr, ptr } %i.gi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.gl = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.f, ptr %4, align 8
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %.sroa.4139.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.gj, ptr %5, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gk, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !226
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !261
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !182
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call { ptr, ptr } %i.go(ptr noundef nonnull align 8 dereferenceable(96) %i.gl, i32 noundef 88, ptr nonnull %4, i64 1, ptr nonnull %5, i64 1, i64 0) #19, !inline_history !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.gq = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit115, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %_ZNK4llvm3LLT13getSizeInBitsEv.exit89, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77
  %.2 = phi i32 [ 2, %_ZNK4llvm3LLT13getSizeInBitsEv.exit89 ], [ 1, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77 ], [ 2, %_ZNK4llvm3LLT14getElementTypeEv.exit115 ], [ 1, %bb.ai ], [ 2, %bb.ah ], [ 2, %bb.ag ], [ 2, %bb.af ], [ 2, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  %.3 = phi i32 [ 2, %bb.a ], [ %.2, %bb.aj ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper9lowerLoadERNS_8GAnyLoadE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %6 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %7 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %8 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %9 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %10 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %11 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %14 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %15 = alloca %"class.llvm::LLT", align 8        ; 12 uses
  %16 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %17 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %18 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %19 = alloca %"class.llvm::LLT", align 8        ; 7 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %22 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %23 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %24 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %25 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %26 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %27 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %28 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %29 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %30 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %31 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %32 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %33 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %34 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %35 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %36 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %37 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %38 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %39 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %40 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %41 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %42 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %43 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %44 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %45 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !226  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !226  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212, !nonnull !179, !align !180 ; 2 uses
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %i.d, 2147483647                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  %i.l = load i32, ptr %i.k, align 8, !tbaa !227
  %i.m = icmp ugt i32 %i.l, %i.j
  br i1 %i.m, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.o = zext nneg i32 %i.j to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !228
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.s = phi i64 [ %i.r, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 11 uses
  store i64 %i.s, ptr %15, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !226  ; 4 uses
  %i.v = icmp ugt i64 %i.u, 7
  tail call void @llvm.assume(i1 %i.v)
  %i.w = and i64 %i.u, 7
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.y = inttoptr i64 %i.u to ptr                 ; 2 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !226
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.z = and i64 %i.u, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
end_hunk_8
begin_hunk_9_@_ZN4llvm15LegalizerHelper14lowerStackSaveERNS_12MachineInstrE:bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !226
  store i32 %i.h, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.i, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 8, !tbaa !238
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !246
  %i.k = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.l = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper17lowerStackRestoreERNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !179, !align !180
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !238 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i32 %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !238
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.e, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !226
  store i32 %i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !246
  %i.k = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.l = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper12lowerExtractERNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %6 = alloca %"class.std::tuple.420", align 8    ; 11 uses
  %7 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.170", align 8 ; 11 uses
  %9 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %11 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %12 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %13 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %14 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %16 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %17 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNK4llvm12MachineInstr16getFirst2RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.420") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !226  ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = load i64, ptr %6, align 8                ; 8 uses
  %i.j = lshr i64 %i.i, 60
  %i.k = add nsw i64 %i.j, -5
  %switch.selectcmp.i = icmp ult i64 %i.k, 4
  br i1 %switch.selectcmp.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i64 %i.i, -8070450532247928832
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %i.i, 1152921504605798400
  %i.n = or disjoint i64 %i.m, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i = and i64 %i.i, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i, label %bb.i [
    i64 8070450532247928832, label %bb.e
    i64 6917529027641081856, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = trunc i64 %i.i to i32
  %i.p = lshr i32 %i.o, 20
  %i.q = and i32 %i.p, 255                        ; 2 uses
  %i.r = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.q) #19
  %i.u = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.t) #19
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 28                 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %storemerge.i.i.i.i.i = or disjoint i64 %i.w, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.x = shl nuw nsw i32 %i.q, 20
  %i.y = zext nneg i32 %i.x to i64
  %i.z = or disjoint i64 %i.w, %i.y
  %i.aa = or disjoint i64 %i.z, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = and i64 %i.i, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.ac, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.ad
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.i:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.af = lshr i64 %i.i, 44
  %i.ag = and i64 %i.af, 65535
  %i.ah = lshr i64 %i.i, 28
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = select i1 %i.ae, i64 %i.ag, i64 %i.ai
  %i.ak = shl nuw nsw i64 %i.aj, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.ak, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.c ], [ %storemerge.i.i.i.i, %bb.i ], [ %.sroa.0.0.i6.i, %bb.h ], [ %i.aa, %bb.g ], [ %storemerge.i.i.i.i.i, %bb.f ] ; 3 uses
  %.mask.i.i116 = and i64 %.sroa.0.0.i, -1152921504606846976
  %i.al = icmp eq i64 %.mask.i.i116, 4611686018427387904
  %i.am = lshr i64 %.sroa.0.0.i, 44
  %i.an = and i64 %i.am, 65535
  %i.ao = lshr i64 %.sroa.0.0.i, 28
  %i.ap = select i1 %i.al, i64 %i.an, i64 %i.ao   ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 4 uses
  %i.ar = load i64, ptr %i.b, align 8             ; 10 uses
  %.mask.i.i117 = and i64 %i.ar, -1152921504606846976
  %i.as = icmp eq i64 %.mask.i.i117, 4611686018427387904 ; 2 uses
  br i1 %i.as, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit128.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.at = lshr i64 %i.ar, 60
  %.off.i.i118 = add nsw i64 %i.at, -1
  %switch.i.i119 = icmp ult i64 %.off.i.i118, 3
  br i1 %switch.i.i119, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit128.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit128

_ZNK4llvm3LLT13getSizeInBitsEv.exit128.thread:    ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit, %bb.j
  %i.au = icmp slt i64 %i.ar, -8070450532247928832
  %spec.select.i.i.i127 = or i1 %i.au, %i.as
  %i.av = lshr i64 %i.ar, 44
  %i.aw = and i64 %i.av, 65535
  %i.ax = lshr i64 %i.ar, 28
  %i.ay = select i1 %spec.select.i.i.i127, i64 %i.aw, i64 %i.ax
  br label %_ZNK4llvm8TypeSizecvmEv.exit129

_ZNK4llvm3LLT13getSizeInBitsEv.exit128:           ; preds = %bb.j
  %i.az = lshr i64 %i.ar, 4
  %.sroa.0.0.insert.ext.i.i.i120 = and i64 %i.az, 65535
  %i.ba = icmp slt i64 %i.ar, -8070450532247928832
  %i.bb = lshr i64 %i.ar, 44
  %i.bc = and i64 %i.bb, 65535
  %i.bd = lshr i64 %i.ar, 28
  %.0.in.i3.i121 = select i1 %i.ba, i64 %i.bc, i64 %i.bd
  %i.be = mul nuw nsw i64 %.0.in.i3.i121, %.sroa.0.0.insert.ext.i.i.i120
  %i.bf = trunc i64 %i.ar to i1
  br i1 %i.bf, label %bb.k, label %_ZNK4llvm8TypeSizecvmEv.exit129

bb.k:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit128
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit129:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit128.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit128
  %.sroa.05.0.i123262 = phi i64 [ %i.ay, %_ZNK4llvm3LLT13getSizeInBitsEv.exit128.thread ], [ %i.be, %_ZNK4llvm3LLT13getSizeInBitsEv.exit128 ]
  %i.bg = trunc i64 %.sroa.05.0.i123262 to i32    ; 2 uses
  %i.bh = urem i32 %i.h, %i.aq
  %i.bi = udiv i32 %i.h, %i.aq
  %i.bj = icmp eq i32 %i.bh, 0
  br i1 %i.bj, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit129
  %i.bk = urem i32 %i.bg, %i.aq
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bm = add i32 %i.bg, %i.h                     ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i64, ptr %6, align 8               ; 16 uses
  %.mask.i.i130 = and i64 %i.bo, -1152921504606846976 ; 2 uses
  %i.bp = icmp eq i64 %.mask.i.i130, 4611686018427387904 ; 3 uses
  br i1 %i.bp, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit141.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = lshr i64 %i.bo, 60
  %.off.i.i131 = add nsw i64 %i.bq, -1
  %switch.i.i132 = icmp ult i64 %.off.i.i131, 3
  br i1 %switch.i.i132, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit141.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit141

_ZNK4llvm3LLT13getSizeInBitsEv.exit141.thread:    ; preds = %bb.m, %bb.n
  %i.br = icmp slt i64 %i.bo, -8070450532247928832
  %spec.select.i.i.i140 = or i1 %i.br, %i.bp
  %i.bs = lshr i64 %i.bo, 44
  %i.bt = and i64 %i.bs, 65535
  %i.bu = lshr i64 %i.bo, 28
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = select i1 %spec.select.i.i.i140, i64 %i.bt, i64 %i.bv
  br label %_ZNK4llvm8TypeSizecvmEv.exit142

_ZNK4llvm3LLT13getSizeInBitsEv.exit141:           ; preds = %bb.n
  %i.bx = lshr i64 %i.bo, 4
  %.sroa.0.0.insert.ext.i.i.i133 = and i64 %i.bx, 65535
  %i.by = icmp slt i64 %i.bo, -8070450532247928832
  %i.bz = lshr i64 %i.bo, 44
  %i.ca = and i64 %i.bz, 65535
  %i.cb = lshr i64 %i.bo, 28
  %.0.in.i3.i134 = select i1 %i.by, i64 %i.ca, i64 %i.cb
  %i.cc = mul nuw nsw i64 %.0.in.i3.i134, %.sroa.0.0.insert.ext.i.i.i133
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = trunc i64 %i.bo to i1
  br i1 %i.ce, label %bb.o, label %_ZNK4llvm8TypeSizecvmEv.exit142

bb.o:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit141
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit142:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit141.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit141
  %.sroa.05.0.i136267 = phi i64 [ %i.bw, %_ZNK4llvm3LLT13getSizeInBitsEv.exit141.thread ], [ %i.cd, %_ZNK4llvm3LLT13getSizeInBitsEv.exit141 ]
  %.not = icmp samesign ult i64 %.sroa.05.0.i136267, %i.bn
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit142
  %i.cf = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.cg = icmp slt i64 %i.bo, -8070450532247928832
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = and i64 %i.bo, 1152921504605798400
  %i.ci = or disjoint i64 %i.ch, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit149

bb.r:                                             ; preds = %bb.p
  switch i64 %.mask.i.i130, label %bb.w [
    i64 8070450532247928832, label %bb.s
    i64 6917529027641081856, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc i64 %i.bo to i32
  %i.ck = lshr i32 %i.cj, 20
  %i.cl = and i32 %i.ck, 255                      ; 2 uses
  %i.cm = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.cl) #19
  %i.cp = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.co) #19
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 28               ; 2 uses
  br i1 %i.cn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %storemerge.i.i.i.i.i147 = or disjoint i64 %i.cr, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit149

bb.u:                                             ; preds = %bb.s
  %i.cs = shl nuw nsw i32 %i.cl, 20
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = or disjoint i64 %i.cr, %i.ct
  %i.cv = or disjoint i64 %i.cu, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit149

bb.v:                                             ; preds = %bb.r
  %i.cw = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = and i64 %i.bo, 1152921504338411520
  %.sroa.0.0.v.i.i144 = select i1 %i.cx, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i145 = or disjoint i64 %.sroa.0.0.v.i.i144, %i.cy
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit149

bb.w:                                             ; preds = %bb.r
  %i.cz = lshr i64 %i.bo, 44
  %i.da = and i64 %i.cz, 65535
  %i.db = lshr i64 %i.bo, 28
  %i.dc = and i64 %i.db, 4294967295
  %i.dd = select i1 %i.bp, i64 %i.da, i64 %i.dc
  %i.de = shl nuw nsw i64 %i.dd, 28
  %storemerge.i.i.i.i148 = or disjoint i64 %i.de, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit149

_ZNK4llvm3LLT14getElementTypeEv.exit149:          ; preds = %bb.q, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i146 = phi i64 [ %i.ci, %bb.q ], [ %storemerge.i.i.i.i148, %bb.w ], [ %.sroa.0.0.i6.i145, %bb.v ], [ %i.cv, %bb.u ], [ %storemerge.i.i.i.i.i147, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.sroa.048.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  store i32 %.sroa.048.0.copyload, ptr %7, align 8, !tbaa !238
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.df, align 8, !tbaa !246
  %i.dg = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.cf, i64 %.sroa.0.0.i146, ptr noundef nonnull align 8 dereferenceable(20) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.dh, ptr %8, align 8, !tbaa !228
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.di, align 8, !tbaa !227
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 8, ptr %i.dj, align 4, !tbaa !239
  %i.dk = udiv i32 %i.bm, %i.aq                   ; 2 uses
  %i.dl = icmp ult i32 %i.bi, %i.dk
  br i1 %i.dl, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit149
  %i.dm = extractvalue { ptr, ptr } %i.dg, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.lhs.trunc = trunc i64 %i.g to i32
  %.rhs.trunc = trunc i64 %i.ap to i32
  %i.do = udiv i32 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i32 %i.do to i64
  %i.dp = zext i32 %i.dk to i64
  br label %bb.x

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.pre = load i32, ptr %i.di, align 8, !tbaa !227 ; 2 uses
  %i.dq = icmp eq i32 %.pre, 1
  br i1 %i.dq, label %bb.aa, label %._crit_edge.thread

bb.x:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ %.zext, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !225
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !226 ; 2 uses
  %i.dv = load i32, ptr %i.di, align 8, !tbaa !227 ; 2 uses
  %i.dw = load i32, ptr %i.dj, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i, label %bb.z, label %bb.y, !prof !247

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 %i.du)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.z:                                             ; preds = %bb.x
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !228
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dx
  store i32 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.di, align 8, !tbaa !227
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.di, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.y, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = icmp samesign ult i64 %indvars.iv.next, %i.dp
  br i1 %i.ec, label %bb.x, label %._crit_edge, !llvm.loop !819

bb.aa:                                            ; preds = %._crit_edge
  %i.ed = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %.sroa.043.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.043.0.copyload, ptr %9, align 8, !tbaa !238
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 1, ptr %i.ee, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ef = load ptr, ptr %8, align 8, !tbaa !228
  %.sroa.042.0.copyload = load i32, ptr %i.ef, align 4, !tbaa !238
  store i32 %.sroa.042.0.copyload, ptr %10, align 8, !tbaa !238
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.eg, align 8, !tbaa !246
  %i.eh = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ed, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(20) %10) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.critedge115

._crit_edge.thread:                               ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit149, %._crit_edge
  %i.ei = phi i32 [ %.pre, %._crit_edge ], [ 0, %_ZNK4llvm3LLT14getElementTypeEv.exit149 ]
  %i.ej = zext i32 %i.ei to i64
  %i.ek = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %.sroa.039.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
end_hunk_9
begin_hunk_10_@_ZN4llvm15LegalizerHelper11lowerInsertERNS_12MachineInstrE:bb.a
_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.w = icmp slt i32 %i.h, 0
  br i1 %i.w, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.x = and i32 %i.h, 2147483647                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.z = load i32, ptr %i.y, align 8, !tbaa !227
  %i.aa = icmp ugt i32 %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !226
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.d, %bb.e
  %i.ag = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 6 uses
  store i64 %i.ag, ptr %14, align 8
  %i.ah = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !223
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !224, !nonnull !179, !align !180
  %i.al = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ak) #19 ; 2 uses
  %.mask.i.i = and i64 %i.ag, -1152921504606846976
  %i.am = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.an = icmp slt i64 %i.ag, -8070450532247928832
  %spec.select.i = or i1 %i.an, %i.am
  br i1 %spec.select.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153
  %i.ao = lshr i64 %i.ag, 20
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 16777215
  %i.ar = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.al, i32 noundef %i.aq) #19 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !432
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !449
  %.not.i = icmp ne i32 %i.at, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !range !293
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !range !293
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = select i1 %or.cond.i, i1 true, i1 %i.bb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153
  %i.bd = phi i1 [ false, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit153 ], [ %i.bc, %bb.f ] ; 3 uses
  %.mask.i.i154 = and i64 %.sroa.04.0.i, -1152921504606846976 ; 3 uses
  %i.be = icmp eq i64 %.mask.i.i154, 4611686018427387904 ; 6 uses
  %i.bf = icmp slt i64 %.sroa.04.0.i, -8070450532247928832 ; 6 uses
  %spec.select.i155 = or i1 %i.bf, %i.be          ; 2 uses
  br i1 %spec.select.i155, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = lshr i64 %.sroa.04.0.i, 20
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 16777215
  %i.bj = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.al, i32 noundef %i.bi) #19 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !432
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !449
  %.not.i156 = icmp ne i32 %i.bl, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !293
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i157 = select i1 %.not.i156, i1 true, i1 %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 17
  %i.bs = load i8, ptr %i.br, align 1, !range !293
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %or.cond.i157, i1 true, i1 %i.bt
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bv = phi i1 [ false, %bb.g ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bw = lshr i64 %.sroa.04.0.i, 60              ; 2 uses
  %i.bx = add nsw i64 %i.bw, -5
  %switch.selectcmp.i = icmp ult i64 %i.bx, 4
  br i1 %switch.selectcmp.i, label %bb.j, label %.thread435

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = and i64 %.sroa.04.0.i, 1152921504605798400
  %i.bz = or disjoint i64 %i.by, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.l:                                             ; preds = %bb.j
  switch i64 %.mask.i.i154, label %bb.q [
    i64 8070450532247928832, label %bb.m
    i64 6917529027641081856, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ca = trunc i64 %.sroa.04.0.i to i32
  %i.cb = lshr i32 %i.ca, 20
  %i.cc = and i32 %i.cb, 255                      ; 2 uses
  %i.cd = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.cc) #19
  %i.cg = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.cf) #19
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 28               ; 2 uses
  br i1 %i.ce, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %storemerge.i.i.i.i.i = or disjoint i64 %i.ci, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.o:                                             ; preds = %bb.m
  %i.cj = shl nuw nsw i32 %i.cc, 20
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = or disjoint i64 %i.ci, %i.ck
  %i.cm = or disjoint i64 %i.cl, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.p:                                             ; preds = %bb.l
  %i.cn = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = and i64 %.sroa.04.0.i, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.co, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.cp
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.q:                                             ; preds = %bb.l
  %i.cq = lshr i64 %.sroa.04.0.i, 44
  %i.cr = and i64 %i.cq, 65535
  %i.cs = lshr i64 %.sroa.04.0.i, 28
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = select i1 %i.be, i64 %i.cr, i64 %i.ct
  %i.cv = shl nuw nsw i64 %i.cu, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.cv, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.k, %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i = phi i64 [ %i.bz, %bb.k ], [ %storemerge.i.i.i.i, %bb.q ], [ %.sroa.0.0.i6.i, %bb.p ], [ %i.cm, %bb.o ], [ %storemerge.i.i.i.i.i, %bb.n ] ; 2 uses
  store i64 %.sroa.0.0.i, ptr %15, align 8
  %or.cond = or i1 %i.bd, %i.bv
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.cw = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %i.cw, label %._crit_edge476, label %.critedge

._crit_edge476:                                   ; preds = %bb.r
  %.pre = load i64, ptr %15, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge476, %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.cx = phi i64 [ %.pre, %._crit_edge476 ], [ %.sroa.0.0.i, %_ZNK4llvm3LLT14getElementTypeEv.exit ] ; 11 uses
  %.mask.i.i159 = and i64 %i.cx, -1152921504606846976
  %i.cy = icmp eq i64 %.mask.i.i159, 4611686018427387904 ; 2 uses
  br i1 %i.cy, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = lshr i64 %i.cx, 60
  %.off.i.i = add nsw i64 %i.cz, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.s, %bb.t
  %i.da = icmp slt i64 %i.cx, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.da, %i.cy
  %i.db = lshr i64 %i.cx, 44
  %i.dc = and i64 %i.db, 65535
  %i.dd = lshr i64 %i.cx, 28
  %i.de = and i64 %i.dd, 4294967295
  %i.df = select i1 %spec.select.i.i.i, i64 %i.dc, i64 %i.de
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.t
  %i.dg = lshr i64 %i.cx, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.dg, 65535
  %i.dh = icmp slt i64 %i.cx, -8070450532247928832
  %i.di = lshr i64 %i.cx, 44
  %i.dj = and i64 %i.di, 65535
  %i.dk = lshr i64 %i.cx, 28
  %.0.in.i3.i = select i1 %i.dh, i64 %i.dj, i64 %i.dk
  %i.dl = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = trunc i64 %i.cx to i1
  br i1 %i.dn, label %bb.u, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.u:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i414 = phi i64 [ %i.df, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.dm, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ] ; 7 uses
  %i.do = load i64, ptr %14, align 8              ; 11 uses
  %.mask.i.i160 = and i64 %i.do, -1152921504606846976
  %i.dp = icmp eq i64 %.mask.i.i160, 4611686018427387904 ; 2 uses
  br i1 %i.dp, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit171.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.dq = lshr i64 %i.do, 60
  %.off.i.i161 = add nsw i64 %i.dq, -1
  %switch.i.i162 = icmp ult i64 %.off.i.i161, 3
  br i1 %switch.i.i162, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit171.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit171

_ZNK4llvm3LLT13getSizeInBitsEv.exit171.thread:    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.v
  %i.dr = icmp slt i64 %i.do, -8070450532247928832
  %spec.select.i.i.i170 = or i1 %i.dr, %i.dp
  %i.ds = lshr i64 %i.do, 44
  %i.dt = and i64 %i.ds, 65535
  %i.du = lshr i64 %i.do, 28
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = select i1 %spec.select.i.i.i170, i64 %i.dt, i64 %i.dv
  br label %_ZNK4llvm8TypeSizecvmEv.exit172

_ZNK4llvm3LLT13getSizeInBitsEv.exit171:           ; preds = %bb.v
  %i.dx = lshr i64 %i.do, 4
  %.sroa.0.0.insert.ext.i.i.i163 = and i64 %i.dx, 65535
  %i.dy = icmp slt i64 %i.do, -8070450532247928832
  %i.dz = lshr i64 %i.do, 44
  %i.ea = and i64 %i.dz, 65535
  %i.eb = lshr i64 %i.do, 28
  %.0.in.i3.i164 = select i1 %i.dy, i64 %i.ea, i64 %i.eb
  %i.ec = mul nuw nsw i64 %.0.in.i3.i164, %.sroa.0.0.insert.ext.i.i.i163
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = trunc i64 %i.do to i1
  br i1 %i.ee, label %bb.w, label %_ZNK4llvm8TypeSizecvmEv.exit172

bb.w:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit171
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit172:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit171.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit171
  %.sroa.05.0.i166419 = phi i64 [ %i.dw, %_ZNK4llvm3LLT13getSizeInBitsEv.exit171.thread ], [ %i.ed, %_ZNK4llvm3LLT13getSizeInBitsEv.exit171 ] ; 2 uses
  %i.ef = urem i64 %i.j, %.sroa.05.0.i414
  %i.eg = udiv i64 %i.j, %.sroa.05.0.i414
  %i.eh = icmp eq i64 %i.ef, 0
  br i1 %i.eh, label %bb.x, label %bb.at

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit172
  %i.ei = trunc nuw i64 %.sroa.05.0.i166419 to i32
  %i.ej = trunc nuw i64 %.sroa.05.0.i414 to i32
  %i.ek = urem i32 %i.ei, %i.ej
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.em = add i64 %.sroa.05.0.i166419, %i.j       ; 2 uses
  br i1 %i.be, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit184

_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread:    ; preds = %bb.y
  %i.en = lshr i64 %.sroa.04.0.i, 44
  %i.eo = and i64 %i.en, 65535
  br label %_ZNK4llvm8TypeSizecvmEv.exit185

_ZNK4llvm3LLT13getSizeInBitsEv.exit184:           ; preds = %bb.y
  %i.ep = lshr i64 %.sroa.04.0.i, 4
  %.sroa.0.0.insert.ext.i.i.i176 = and i64 %i.ep, 65535
  %i.eq = lshr i64 %.sroa.04.0.i, 44
  %i.er = and i64 %i.eq, 65535
  %i.es = lshr i64 %.sroa.04.0.i, 28
  %.0.in.i3.i177 = select i1 %i.bf, i64 %i.er, i64 %i.es
  %i.et = mul nuw nsw i64 %.0.in.i3.i177, %.sroa.0.0.insert.ext.i.i.i176
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = trunc i64 %.sroa.04.0.i to i1
  br i1 %i.ev, label %bb.z, label %_ZNK4llvm8TypeSizecvmEv.exit185

bb.z:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit184
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit185:                  ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit184
  %.sroa.05.0.i179424 = phi i64 [ %i.eo, %_ZNK4llvm3LLT13getSizeInBitsEv.exit184.thread ], [ %i.eu, %_ZNK4llvm3LLT13getSizeInBitsEv.exit184 ]
  %.not = icmp ugt i64 %i.em, %.sroa.05.0.i179424
  br i1 %.not, label %bb.at, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit185
  %i.ew = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store i32 %i.f, ptr %16, align 8, !tbaa !238
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.ex, align 8, !tbaa !246
  %i.ey = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ew, i64 %i.cx, ptr noundef nonnull align 8 dereferenceable(20) %16) #19
  %i.ez = extractvalue { ptr, ptr } %i.ey, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.fa, ptr %17, align 8, !tbaa !228
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 11 uses
  store i32 0, ptr %i.fb, align 8, !tbaa !227
  %i.fc = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 4 uses
  store i32 8, ptr %i.fc, align 4, !tbaa !239
  %.not473 = icmp ugt i64 %.sroa.05.0.i414, %i.j
  br i1 %.not473, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %i.fe = phi i64 [ 0, %.lr.ph ], [ %i.fr, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ]
  %.0144463 = phi i32 [ 0, %.lr.ph ], [ %i.fq, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ]
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !225
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !226 ; 2 uses
  %i.fj = load i32, ptr %i.fb, align 8, !tbaa !227 ; 2 uses
  %i.fk = load i32, ptr %i.fc, align 4, !tbaa !239
  %.not.i186 = icmp ult i32 %i.fj, %i.fk
  br i1 %.not.i186, label %bb.ad, label %bb.ac, !prof !247

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 %i.fi)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fl = zext i32 %i.fj to i64
  %i.fm = load ptr, ptr %17, align 8, !tbaa !228
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fl
  store i32 %i.fi, ptr %i.fn, align 1
  %i.fo = load i32, ptr %i.fb, align 8, !tbaa !227
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fb, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ac, %bb.ad
  %i.fq = add i32 %.0144463, 1                    ; 3 uses
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = icmp ugt i64 %i.eg, %i.fr
  br i1 %i.fs, label %bb.ab, label %._crit_edge, !llvm.loop !822

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, %bb.aa
  %.0144.lcssa = phi i32 [ 0, %bb.aa ], [ %i.fq, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 4 uses
  %i.ft = load i64, ptr %14, align 8              ; 10 uses
  %.mask.i.i187 = and i64 %i.ft, -1152921504606846976
  %i.fu = icmp eq i64 %.mask.i.i187, 4611686018427387904 ; 3 uses
  br i1 %i.fu, label %_ZNK4llvm8TypeSizecvmEv.exit199, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.fv = lshr i64 %i.ft, 60
  %.off.i.i188 = add nsw i64 %i.fv, -1
  %switch.i.i189 = icmp ult i64 %.off.i.i188, 3
  br i1 %switch.i.i189, label %_ZNK4llvm8TypeSizecvmEv.exit199, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit198

_ZNK4llvm3LLT13getSizeInBitsEv.exit198:           ; preds = %bb.ae
  %i.fw = trunc i64 %i.ft to i1
  br i1 %i.fw, label %bb.af, label %_ZNK4llvm8TypeSizecvmEv.exit199.thread

bb.af:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit198
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit199:                  ; preds = %bb.ae, %._crit_edge
  %i.fx = icmp slt i64 %i.ft, -8070450532247928832
  %spec.select.i.i.i197 = or i1 %i.fx, %i.fu
  %i.fy = lshr i64 %i.ft, 44
  %i.fz = and i64 %i.fy, 65535
  %i.ga = lshr i64 %i.ft, 28
  %i.gb = and i64 %i.ga, 4294967295
  %i.gc = select i1 %spec.select.i.i.i197, i64 %i.fz, i64 %i.gb
  %i.gd = icmp ugt i64 %i.gc, %.sroa.05.0.i414
  br i1 %i.gd, label %bb.ag, label %bb.ak

_ZNK4llvm8TypeSizecvmEv.exit199.thread:           ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit198
  %i.ge = icmp slt i64 %i.ft, -8070450532247928832
  %i.gf = lshr i64 %i.ft, 44
  %i.gg = and i64 %i.gf, 65535
  %i.gh = lshr i64 %i.ft, 28
  %.0.in.i3.i191 = select i1 %i.ge, i64 %i.gg, i64 %i.gh
  %i.gi = lshr i64 %i.ft, 4
  %.sroa.0.0.insert.ext.i.i.i190 = and i64 %i.gi, 65535
  %i.gj = mul nuw nsw i64 %.0.in.i3.i191, %.sroa.0.0.insert.ext.i.i.i190
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = icmp ugt i64 %i.gk, %.sroa.05.0.i414
  br i1 %i.gl, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit199.thread, %_ZNK4llvm8TypeSizecvmEv.exit199
  %i.gm = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %.sroa.066.0.copyload = load i64, ptr %15, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store i32 %i.h, ptr %18, align 8, !tbaa !238
  %i.gn = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.gn, align 8, !tbaa !246
  %i.go = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildUnmergeENS_3LLTERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.gm, i64 %.sroa.066.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.gp = udiv i64 %i.em, %.sroa.05.0.i414        ; 2 uses
  %i.gq = zext i32 %.0144.lcssa to i64
  %i.gr = icmp ugt i64 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph467, label %.loopexit

.lr.ph467:                                        ; preds = %bb.ag
  %i.gs = extractvalue { ptr, ptr } %i.go, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph467, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit201
  %.1145465 = phi i32 [ %.0144.lcssa, %.lr.ph467 ], [ %i.hg, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit201 ]
  %.0147464 = phi i32 [ 0, %.lr.ph467 ], [ %i.hh, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit201 ] ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !225
  %i.gv = zext i32 %.0147464 to i64
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !226 ; 2 uses
  %i.gz = load i32, ptr %i.fb, align 8, !tbaa !227 ; 2 uses
  %i.ha = load i32, ptr %i.fc, align 4, !tbaa !239
  %.not.i200 = icmp ult i32 %i.gz, %i.ha
  br i1 %.not.i200, label %bb.aj, label %bb.ai, !prof !247

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 %i.gy)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit201

bb.aj:                                            ; preds = %bb.ah
  %i.hb = zext i32 %i.gz to i64
  %i.hc = load ptr, ptr %17, align 8, !tbaa !228
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hb
  store i32 %i.gy, ptr %i.hd, align 1
  %i.he = load i32, ptr %i.fb, align 8, !tbaa !227
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.fb, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit201

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit201: ; preds = %bb.ai, %bb.aj
  %i.hg = add i32 %.1145465, 1                    ; 3 uses
  %i.hh = add i32 %.0147464, 1
  %i.hi = zext i32 %i.hg to i64
  %i.hj = icmp ugt i64 %i.gp, %i.hi
  br i1 %i.hj, label %bb.ah, label %.loopexit, !llvm.loop !823

bb.ak:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit199
  br i1 %i.fu, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.hk = load i64, ptr %15, align 8              ; 2 uses
  %.mask.i202 = and i64 %i.hk, -1152921504606846976
  %i.hl = icmp eq i64 %.mask.i202, 4611686018427387904
  br i1 %i.hl, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hm = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i64 %i.hk, ptr %12, align 8
  %.sroa.4367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %.sroa.4367.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i32 %i.h, ptr %13, align 8
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %.sroa.4363.0..sroa_idx, align 8, !tbaa !261
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !182
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call { ptr, ptr } %i.hp(ptr noundef nonnull align 8 dereferenceable(96) %i.hm, i32 noundef 86, ptr nonnull %12, i64 1, ptr nonnull %13, i64 1, i64 0) #19, !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.sink.split

.thread:                                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit199.thread, %bb.ak
  %i.hr = load i64, ptr %15, align 8              ; 2 uses
  %.mask.i204 = and i64 %i.hr, -1152921504606846976
  %i.hs = icmp eq i64 %.mask.i204, 4611686018427387904
  br i1 %i.hs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread
  %i.ht = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 %i.hr, ptr %10, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %.sroa.4357.0..sroa_idx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i32 %i.h, ptr %11, align 8
  %.sroa.4353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %.sroa.4353.0..sroa_idx, align 8, !tbaa !261
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !182
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call { ptr, ptr } %i.hw(ptr noundef nonnull align 8 dereferenceable(96) %i.ht, i32 noundef 87, ptr nonnull %10, i64 1, ptr nonnull %11, i64 1, i64 0) #19, !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.am, %bb.an
  %.sink = phi { ptr, ptr } [ %i.hx, %bb.an ], [ %i.hq, %bb.am ]
  %i.hy = extractvalue { ptr, ptr } %.sink, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !225
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !226
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.al, %.thread
  %.sroa.0399.0 = phi i32 [ %i.h, %.thread ], [ %i.h, %bb.al ], [ %i.ic, %.sink.split ]
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 %.sroa.0399.0)
  %i.id = add i32 %.0144.lcssa, 1
end_hunk_10
begin_hunk_11_@_ZN4llvm15LegalizerHelper41fewerElementsVectorExtractInsertVectorEltERNS_12MachineInstrEjNS_3LLTE:bb.a
  store i32 0, ptr %i.ec, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %i.dk, ptr %15, align 8, !tbaa !262
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.dl, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !264
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 1, ptr %i.ed, align 8, !tbaa !246
  %i.ee = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder24buildInsertVectorElementERKNS_5DstOpERKNS_5SrcOpES6_S6_(ptr noundef nonnull align 8 dereferenceable(96) %i.dz, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 8 dereferenceable(20) %15) #19
  %i.ef = extractvalue { ptr, ptr } %i.ee, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !225
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !226
  %i.ek = load ptr, ptr %10, align 8, !tbaa !228  ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.zext
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !238
  %i.em = load i32, ptr %i.cb, align 8, !tbaa !227
  %i.en = zext i32 %i.em to i64
  call void @_ZN4llvm15LegalizerHelper24buildWidenedRemergeToDstENS_8RegisterENS_3LLTENS_8ArrayRefIS1_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 %i.d, i64 %i.cp, ptr %i.ek, i64 %i.en)
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit75
  %i.eo = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store i32 %i.d, ptr %16, align 8, !tbaa !238
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 1, ptr %i.ep, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.eq = load ptr, ptr %10, align 8, !tbaa !228
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.zext
  %.sroa.02.0.copyload = load i32, ptr %i.er, align 4, !tbaa !238
  store i32 %.sroa.02.0.copyload, ptr %17, align 8, !tbaa !238
  %i.es = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.es, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr %i.dk, ptr %18, align 8, !tbaa !262
  %.sroa.5.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.dl, ptr %.sroa.5.0..sroa_idx82, align 8, !tbaa !264
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %i.et, align 8, !tbaa !246
  %i.eu = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96) %i.eo, ptr noundef nonnull align 8 dereferenceable(20) %16, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %18) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit77
  %i.ev = load ptr, ptr %10, align 8, !tbaa !228  ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ca
  br i1 %i.ew, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit78, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ev) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit78

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit78: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit78, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit
  %i.ex = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ey = call noundef i32 @_ZN4llvm15LegalizerHelper27lowerExtractInsertVectorEltERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.h, %bb.z, %bb.aa
  %.1 = phi i32 [ %i.ey, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.h ]
  %i.ez = load i8, ptr %i.af, align 8, !tbaa !448, !range !293, !noundef !179
  %i.fa = trunc nuw i8 %i.ez to i1
  store i8 0, ptr %i.af, align 8, !tbaa !448
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = icmp ugt i32 %i.fc, 64
  %or.cond.i.i.i = select i1 %i.fa, i1 %i.fd, i1 false
  br i1 %or.cond.i.i.i, label %bb.ac, label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fe = load ptr, ptr %4, align 8, !tbaa !226   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.fe) #21
  br label %_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EED2Ev.exit: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.1
}

declare void @_ZN4llvm34getIConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind writable sret(%"class.std::optional.519") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL22getNarrowTypeBreakDownN4llvm3LLTES0_RS0_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::LLT", align 8         ; 2 uses
  store i64 %0, ptr %3, align 8
  %.mask.i.i = and i64 %0, -1152921504606846976
  %i.a = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 3 uses
  br i1 %i.a, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %0, 60
  %.off.i.i = add nsw i64 %i.b, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.a, %bb.b
  %i.c = icmp slt i64 %0, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.c, %i.a
  %i.d = lshr i64 %0, 44
  %i.e = and i64 %i.d, 65535
  %i.f = lshr i64 %0, 28
  %i.g = select i1 %spec.select.i.i.i, i64 %i.e, i64 %i.f
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.b
  %i.h = lshr i64 %0, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.h, 65535
  %i.i = icmp slt i64 %0, -8070450532247928832
  %i.j = lshr i64 %0, 44
  %i.k = and i64 %i.j, 65535
  %i.l = lshr i64 %0, 28
  %.0.in.i3.i = select i1 %i.i, i64 %i.k, i64 %i.l
  %i.m = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.n = trunc i64 %0 to i1
  br i1 %i.n, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i75 = phi i64 [ %i.g, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.m, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.o = trunc i64 %.sroa.05.0.i75 to i32         ; 3 uses
  %.mask.i.i27 = and i64 %1, -1152921504606846976
  %i.p = icmp eq i64 %.mask.i.i27, 4611686018427387904 ; 2 uses
  br i1 %i.p, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit38.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.q = lshr i64 %1, 60
  %.off.i.i28 = add nsw i64 %i.q, -1
  %switch.i.i29 = icmp ult i64 %.off.i.i28, 3
  br i1 %switch.i.i29, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit38.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit38

_ZNK4llvm3LLT13getSizeInBitsEv.exit38.thread:     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.d
  %i.r = icmp slt i64 %1, -8070450532247928832
  %spec.select.i.i.i37 = or i1 %i.r, %i.p
  %i.s = lshr i64 %1, 44
  %i.t = and i64 %i.s, 65535
  %i.u = lshr i64 %1, 28
  %i.v = select i1 %spec.select.i.i.i37, i64 %i.t, i64 %i.u
  br label %_ZNK4llvm8TypeSizecvmEv.exit39

_ZNK4llvm3LLT13getSizeInBitsEv.exit38:            ; preds = %bb.d
  %i.w = lshr i64 %1, 4
  %.sroa.0.0.insert.ext.i.i.i30 = and i64 %i.w, 65535
  %i.x = icmp slt i64 %1, -8070450532247928832
  %i.y = lshr i64 %1, 44
  %i.z = and i64 %i.y, 65535
  %i.aa = lshr i64 %1, 28
  %.0.in.i3.i31 = select i1 %i.x, i64 %i.z, i64 %i.aa
  %i.ab = mul nuw nsw i64 %.0.in.i3.i31, %.sroa.0.0.insert.ext.i.i.i30
  %i.ac = trunc i64 %1 to i1
  br i1 %i.ac, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit39

bb.e:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit38
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit39:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit38.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit38
  %.sroa.05.0.i3380 = phi i64 [ %i.v, %_ZNK4llvm3LLT13getSizeInBitsEv.exit38.thread ], [ %i.ab, %_ZNK4llvm3LLT13getSizeInBitsEv.exit38 ]
  %i.ad = trunc i64 %.sroa.05.0.i3380 to i32      ; 3 uses
  %i.ae = udiv i32 %i.o, %i.ad                    ; 3 uses
  %i.af = mul i32 %i.ae, %i.ad
  %.recomposed = urem i32 %i.o, %i.ad             ; 4 uses
  %i.ag = icmp eq i32 %i.af, %i.o
  br i1 %i.ag, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit39
  %i.ah = lshr i64 %1, 60
  %i.ai = add nsw i64 %i.ah, -5
  %switch.selectcmp.i = icmp ult i64 %i.ai, 4
  br i1 %switch.selectcmp.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp slt i64 %0, -8070450532247928832
  %spec.select.i.i = or i1 %i.aj, %i.a
  %i.ak = lshr i64 %0, 44
  %i.al = and i64 %i.ak, 65535
  %i.am = lshr i64 %0, 28
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.al, i64 %i.am
  %.0.i = trunc i64 %.0.in.i to i32               ; 2 uses
  %i.an = urem i32 %.recomposed, %.0.i
  %i.ao = udiv i32 %.recomposed, %.0.i
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.g
  %.sroa.0.0.insert.ext.i = zext i32 %i.ao to i64
  %i.ap = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.0.0.insert.ext.i)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = zext i32 %.recomposed to i64
  %i.at = shl nuw nsw i64 %i.as, 28
  %.sroa.0.0.v.i = select i1 %i.ar, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i = or disjoint i64 %.sroa.0.0.v.i, %i.at
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %storemerge = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %i.ap, %.thread ] ; 11 uses
  store i64 %storemerge, ptr %2, align 8, !tbaa !226
  %.mask.i.i40 = and i64 %storemerge, -1152921504606846976
  %i.au = icmp eq i64 %.mask.i.i40, 4611686018427387904 ; 2 uses
  br i1 %i.au, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit51.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = lshr i64 %storemerge, 60
  %.off.i.i41 = add nsw i64 %i.av, -1
  %switch.i.i42 = icmp ult i64 %.off.i.i41, 3
  br i1 %switch.i.i42, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit51.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit51

_ZNK4llvm3LLT13getSizeInBitsEv.exit51.thread:     ; preds = %bb.i, %bb.j
  %i.aw = icmp slt i64 %storemerge, -8070450532247928832
  %spec.select.i.i.i50 = or i1 %i.aw, %i.au
  %i.ax = lshr i64 %storemerge, 44
  %i.ay = and i64 %i.ax, 65535
  %i.az = lshr i64 %storemerge, 28
  %i.ba = select i1 %spec.select.i.i.i50, i64 %i.ay, i64 %i.az
  br label %_ZNK4llvm8TypeSizecvmEv.exit52

_ZNK4llvm3LLT13getSizeInBitsEv.exit51:            ; preds = %bb.j
  %i.bb = lshr i64 %storemerge, 4
  %.sroa.0.0.insert.ext.i.i.i43 = and i64 %i.bb, 65535
  %i.bc = icmp slt i64 %storemerge, -8070450532247928832
  %i.bd = lshr i64 %storemerge, 44
  %i.be = and i64 %i.bd, 65535
  %i.bf = lshr i64 %storemerge, 28
  %.0.in.i3.i44 = select i1 %i.bc, i64 %i.be, i64 %i.bf
  %i.bg = mul nuw nsw i64 %.0.in.i3.i44, %.sroa.0.0.insert.ext.i.i.i43
  %i.bh = trunc i64 %storemerge to i1
  br i1 %i.bh, label %bb.k, label %_ZNK4llvm8TypeSizecvmEv.exit52

bb.k:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit51
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit52:                   ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit51.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit51
  %.sroa.05.0.i4685 = phi i64 [ %i.ba, %_ZNK4llvm3LLT13getSizeInBitsEv.exit51.thread ], [ %i.bg, %_ZNK4llvm3LLT13getSizeInBitsEv.exit51 ]
  %.rhs.trunc = trunc i64 %.sroa.05.0.i4685 to i32
  %i.bi = udiv i32 %.recomposed, %.rhs.trunc
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 32
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_ZNK4llvm8TypeSizecvmEv.exit39, %_ZNK4llvm8TypeSizecvmEv.exit52
  %.sroa.069.1 = phi i32 [ %i.ae, %_ZNK4llvm8TypeSizecvmEv.exit39 ], [ %i.ae, %_ZNK4llvm8TypeSizecvmEv.exit52 ], [ -1, %bb.g ]
  %.sroa.470.1 = phi i64 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit39 ], [ %i.bk, %_ZNK4llvm8TypeSizecvmEv.exit52 ], [ -4294967296, %bb.g ]
  %.sroa.069.0.insert.ext = zext i32 %.sroa.069.1 to i64
  %.sroa.069.0.insert.insert = or disjoint i64 %.sroa.470.1, %.sroa.069.0.insert.ext
  ret i64 %.sroa.069.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i32 @"_ZZN4llvm15LegalizerHelper20reduceLoadStoreWidthERNS_10GLoadStoreEjNS_3LLTEENK3$_0clES3_RNS_15SmallVectorImplINS_8RegisterEEEjj"(ptr noundef nonnull align 8 dereferenceable(114) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Register", align 4    ; 6 uses
  %6 = alloca %"class.std::optional.623", align 8 ; 3 uses
  %7 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !443    ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223
  %.mask.i.i = and i64 %1, -1152921504606846976
  %i.e = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.e, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 60
  %.off.i.i = add nsw i64 %i.f, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.a, %bb.b
  %i.g = icmp slt i64 %1, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.g, %i.e
  %i.h = lshr i64 %1, 44
  %i.i = and i64 %i.h, 65535
  %i.j = lshr i64 %1, 28
  %i.k = select i1 %spec.select.i.i.i, i64 %i.i, i64 %i.j
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.b
  %i.l = lshr i64 %1, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.l, 65535
  %i.m = icmp slt i64 %1, -8070450532247928832
  %i.n = lshr i64 %1, 44
  %i.o = and i64 %i.n, 65535
  %i.p = lshr i64 %1, 28
  %.0.in.i3.i = select i1 %i.m, i64 %i.o, i64 %i.p
  %i.q = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.r = trunc i64 %1 to i1
  br i1 %i.r, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i42 = phi i64 [ %i.k, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.q, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.s = trunc i64 %.sroa.05.0.i42 to i32         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not43 = icmp eq i32 %3, 0
  br i1 %.not43, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.ag = sub i32 0, %i.s
  %i.ah = zext i32 %3 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.045 = phi i32 [ %4, %.lr.ph ], [ %i.bh, %bb.j ] ; 4 uses
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !444
  %i.aj = icmp ult i32 %.045, %i.ai
  br i1 %i.aj, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.j, %_ZNK4llvm8TypeSizecvmEv.exit
  %.0.lcssa = phi i32 [ %4, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %i.bh, %bb.j ], [ %.045, %bb.d ]
  ret i32 %.0.lcssa

bb.e:                                             ; preds = %bb.d
  %i.ak = lshr i32 %.045, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !303
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !192, !nonnull !179, !align !180
  %.sroa.014.0.copyload = load i32, ptr %i.u, align 4, !tbaa !238
  %.sroa.013.0.copyload = load i64, ptr %i.v, align 8, !tbaa !226
  %i.am = zext nneg i32 %i.ak to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4llvm16MachineIRBuilder26materializeObjectPtrOffsetERNS_8RegisterES1_NS_3LLTEm(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.623") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 %.sroa.014.0.copyload, i64 %.sroa.013.0.copyload, i64 noundef %i.am) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.an = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull %i.w, i64 noundef %i.am, i64 %1) #19 ; 2 uses
  %i.ao = load i8, ptr %i.x, align 8, !tbaa !445, !range !293, !noundef !179
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !212, !nonnull !179, !align !180
  %i.ar = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.aq, i64 %1, ptr nonnull @.str, i64 0) #19 ; 3 uses
  %i.as = load i32, ptr %i.ab, align 8, !tbaa !227 ; 2 uses
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !247

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %i.ar)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.h:                                             ; preds = %bb.f
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %2, align 8, !tbaa !228
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.au
  store i32 %i.ar, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.ab, align 8, !tbaa !227
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ab, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.g, %bb.h
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 %i.ar, ptr %7, align 8, !tbaa !238
  store i32 1, ptr %i.ad, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %.sroa.05.0.copyload = load i32, ptr %5, align 4, !tbaa !238
  store i32 %.sroa.05.0.copyload, ptr %8, align 8, !tbaa !238
end_hunk_11
