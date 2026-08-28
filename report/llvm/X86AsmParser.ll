Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86AsmParser?download=true
inline.NumInlined: 6472
inline.NumDeleted: 1192
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN12_GLOBAL__N_112X86AsmParser23CreateMemForMSInlineAsmEN4llvm10MCRegisterEPKNS1_6MCExprES2_S2_jbNS1_5SMLocES6_jNS1_9StringRefERKNS1_23InlineAsmIdentifierInfoERNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteISD_EEEE:bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  store ptr %.03494, ptr %i.ew, align 8, !tbaa !462, !noalias !839
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 104
  store i8 0, ptr %i.ex, align 8, !tbaa !160, !noalias !839
  store ptr %i.eb, ptr %15, align 8, !tbaa !148
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !103 ; 2 uses
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !125
  %.not.i.i.not.i63 = icmp ult i32 %i.ez, %i.fd
  %.pre3.i64 = load ptr, ptr %12, align 8, !tbaa !21 ; 4 uses
  %i.fe = ptrtoint ptr %i.eb to i64               ; 2 uses
  br i1 %.not.i.i.not.i63, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit69, label %bb.q, !prof !96

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_112X86AsmParser15getPointerWidthEv.exit62
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i64, i64 %i.fa
  %i.fg = icmp uge ptr %15, %.pre3.i64
  %i.fh = icmp ult ptr %15, %i.ff
  %spec.select.i.i.i.i.i65 = and i1 %i.fg, %i.fh
  br i1 %spec.select.i.i.i.i.i65, label %bb.r, label %.critedge.i.i.i66, !prof !151

bb.r:                                             ; preds = %bb.q
  %i.fi = ptrtoint ptr %15 to i64
  %i.fj = ptrtoint ptr %.pre3.i64 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %i.fb)
  %i.fl = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fk ; 2 uses
  %.pre98 = load i64, ptr %i.fm, align 8, !tbaa !152
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit69

.critedge.i.i.i66:                                ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %i.fb)
  %.pre.i67 = load ptr, ptr %12, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit69

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit69: ; preds = %_ZN12_GLOBAL__N_112X86AsmParser15getPointerWidthEv.exit62, %bb.r, %.critedge.i.i.i66
  %i.fn = phi i64 [ %i.fe, %_ZN12_GLOBAL__N_112X86AsmParser15getPointerWidthEv.exit62 ], [ %.pre98, %bb.r ], [ %i.fe, %.critedge.i.i.i66 ]
  %i.fo = phi ptr [ %.pre3.i64, %_ZN12_GLOBAL__N_112X86AsmParser15getPointerWidthEv.exit62 ], [ %i.fl, %bb.r ], [ %.pre.i67, %.critedge.i.i.i66 ]
  %.016.i.i.i68 = phi ptr [ %15, %_ZN12_GLOBAL__N_112X86AsmParser15getPointerWidthEv.exit62 ], [ %i.fm, %bb.r ], [ %15, %.critedge.i.i.i66 ]
  %i.fp = load i32, ptr %i.ey, align 8, !tbaa !103 ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fq
  store i64 %i.fn, ptr %i.fr, align 8, !tbaa !152
  store ptr null, ptr %.016.i.i.i68, align 8, !tbaa !152
  %i.fs = add i32 %i.fp, 1
  store i32 %i.fs, ptr %i.ey, align 8, !tbaa !103
  %i.ft = load ptr, ptr %15, align 8, !tbaa !152  ; 3 uses
  %.not.i70 = icmp eq ptr %i.ft, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN4llvm10X86OperandESt14default_deleteIS1_EED2Ev.exit77, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i71

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i71: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit69
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(48) %i.ft) #22, !inline_history !153
  br label %_ZNSt10unique_ptrIN4llvm10X86OperandESt14default_deleteIS1_EED2Ev.exit77

_ZNSt10unique_ptrIN4llvm10X86OperandESt14default_deleteIS1_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i71, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4llvm10X86OperandESt14default_deleteIS1_EED2Ev.exit58, %_ZNSt10unique_ptrIN4llvm10X86OperandESt14default_deleteIS1_EED2Ev.exit77, %_ZNSt10unique_ptrIN4llvm10X86OperandESt14default_deleteIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112X86AsmParser17CheckDispOverflowEN4llvm10MCRegisterES2_PKNS1_6MCExprENS1_5SMLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(130) %0, i32 %1, i32 %2, ptr nofree noundef readonly captures(none) %3, ptr %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %.not = icmp eq i32 %1, 0
  %.not29 = icmp eq i32 %2, 0
  %or.cond = select i1 %.not, i1 %.not29, i1 false
  br i1 %or.cond, label %.thread161, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 8, !tbaa !97
  %.not172 = icmp eq i8 %i.a, 1
  br i1 %.not172, label %bb.c, label %.thread161

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !320  ; 8 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 72) #22 ; 3 uses
  %i.e = lshr i32 %1, 3                           ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !23
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp samesign ult i32 %i.e, %i.h
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %bb.c
  %i.i = and i32 %1, 7
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = zext nneg i32 %i.e to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 1, %i.i
  %i.s = and i32 %i.r, %i.q
  %.not173 = icmp eq i32 %i.s, 0
  br i1 %.not173, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, label %.critedge

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %bb.c, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 72) #22 ; 3 uses
  %i.u = lshr i32 %2, 3                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  %i.w = load i16, ptr %i.v, align 2, !tbaa !23
  %i.x = zext i16 %i.w to i32
  %.not.i31 = icmp samesign ult i32 %i.u, %i.x
  br i1 %.not.i31, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread
  %i.y = and i32 %2, 7
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ab
  %i.ad = zext nneg i32 %i.u to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 1, %i.y
  %i.ai = and i32 %i.ah, %i.ag
  %.not175 = icmp eq i32 %i.ai, 0                 ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 7) #22 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !23
  %i.am = zext i16 %i.al to i32
  %.not.i34 = icmp samesign ult i32 %i.e, %i.am
  br i1 %.not.i34, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33.thread: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread
  %i.an = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 7) #22 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !23
  %i.aq = zext i16 %i.ap to i32
  %.not.i34165 = icmp samesign ult i32 %i.e, %i.aq
  br i1 %.not.i34165, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread169, label %.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread169: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33.thread
  %i.ar = and i32 %1, 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !28
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.au
  %i.aw = zext nneg i32 %i.e to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 1, %i.ar
  %i.bb = and i32 %i.ba, %i.az
  %.not174 = icmp eq i32 %i.bb, 0
  br i1 %.not174, label %.thread, label %bb.e

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33
  br i1 %.not175, label %bb.d, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33
  br i1 %.not175, label %.thread, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39

.critedge:                                        ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.bc = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getX86MCRegisterClassEj(i32 noundef 7) #22 ; 0 uses
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39: ; preds = %.critedge, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36
  %i.bd = add i64 %i.c, 2147483648
  %i.be = icmp ult i64 %i.bd, 4294967296
  br i1 %i.be, label %.thread161, label %bb.f

bb.d:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36
  %i.bf = and i32 %1, 7
  %i.bg = shl nuw nsw i32 1, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !28
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bj
  %i.bl = zext nneg i32 %i.e to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !29
  %i.bo = zext i8 %i.bn to i32
  %i.bp = and i32 %i.bg, %i.bo
  %.not176 = icmp eq i32 %i.bp, 0
  br i1 %.not176, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread169, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit33.thread, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread, %bb.d
  %13 = add i64 %i.c, 4294967295
  %i.bq = icmp ult i64 %13, 8589934591
  br i1 %i.bq, label %.thread161, label %_ZN4llvmplERKNS_5TwineES2_.exit100

_ZN4llvmplERKNS_5TwineES2_.exit100:               ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %.sroa.04.0.copyload.i.i62.cast = inttoptr i64 %i.c to ptr
  store ptr @.str.424, ptr %9, align 8, !alias.scope !840
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.04.0.copyload.i.i62.cast, ptr %i.br, align 8, !alias.scope !840
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.bs, align 8, !tbaa !111, !alias.scope !840
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 12, ptr %i.bt, align 1, !tbaa !108, !alias.scope !840
  store ptr %9, ptr %8, align 8, !alias.scope !845
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.426, ptr %i.bu, align 8, !alias.scope !845
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.bv, align 8, !tbaa !111, !alias.scope !845
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.bw, align 1, !tbaa !108, !alias.scope !845
  %.sroa.0194.0.insert.ext = and i64 %i.c, 4294967295
  %i.bx = inttoptr i64 %.sroa.0194.0.insert.ext to ptr
  store ptr %8, ptr %7, align 8, !alias.scope !850
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !850
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.bz, align 8, !tbaa !111, !alias.scope !850
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 10, ptr %i.ca, align 1, !tbaa !108, !alias.scope !850
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(243) %i.cc, ptr %4, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, ptr null) #22, !inline_history !273 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.thread161

bb.e:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit36.thread169, %bb.d
  %14 = add i64 %i.c, 65535
  %i.ch = icmp ult i64 %14, 131071
  br i1 %i.ch, label %.thread161, label %_ZN4llvmplERKNS_5TwineES2_.exit145

_ZN4llvmplERKNS_5TwineES2_.exit145:               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %.sroa.04.0.copyload.i.i107.cast = inttoptr i64 %i.c to ptr
  store ptr @.str.424, ptr %12, align 8, !alias.scope !855
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.sroa.04.0.copyload.i.i107.cast, ptr %i.ci, align 8, !alias.scope !855
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 3, ptr %i.cj, align 8, !tbaa !111, !alias.scope !855
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 12, ptr %i.ck, align 1, !tbaa !108, !alias.scope !855
  store ptr %12, ptr %11, align 8, !alias.scope !860
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.427, ptr %i.cl, align 8, !alias.scope !860
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.cm, align 8, !tbaa !111, !alias.scope !860
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.cn, align 1, !tbaa !108, !alias.scope !860
  %sext = shl i64 %i.c, 48
  %i.co = ashr exact i64 %sext, 48
  %.sroa.0.0.insert.ext = and i64 %i.co, 4294967295
  %i.cp = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  store ptr %11, ptr %10, align 8, !alias.scope !865
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !alias.scope !865
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.cr, align 8, !tbaa !111, !alias.scope !865
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 10, ptr %i.cs, align 1, !tbaa !108, !alias.scope !865
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !51 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(243) %i.cu, ptr %4, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr null, ptr null) #22, !inline_history !273 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.thread161

bb.f:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.sroa.04.0.copyload.i.i.cast = inttoptr i64 %i.c to ptr
  store ptr @.str.424, ptr %6, align 8, !alias.scope !870
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.04.0.copyload.i.i.cast, ptr %i.cz, align 8, !alias.scope !870
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.da, align 8, !tbaa !111, !alias.scope !870
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 12, ptr %i.db, align 1, !tbaa !108, !alias.scope !870
  store ptr %6, ptr %5, align 8, !alias.scope !875
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.425, ptr %i.dc, align 8, !alias.scope !875
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.dd, align 8, !tbaa !111, !alias.scope !875
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.de, align 1, !tbaa !108, !alias.scope !875
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.df, align 8, !tbaa !51
  %i.dg = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %4, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread161

.thread161:                                       ; preds = %bb.a, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39, %bb.e, %_ZN4llvmplERKNS_5TwineES2_.exit145, %.thread, %_ZN4llvmplERKNS_5TwineES2_.exit100, %bb.b, %bb.f
  %.3 = phi i1 [ %i.dg, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZN4llvmplERKNS_5TwineES2_.exit100 ], [ false, %.thread ], [ false, %_ZN4llvmplERKNS_5TwineES2_.exit145 ], [ false, %bb.e ], [ false, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit39 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 16, 65) i32 @_ZN12_GLOBAL__N_112X86AsmParser15getPointerWidthEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) #22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %i.d = and i64 %i.c, 4294967296
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) #22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50
  %i.h = and i64 %i.g, 8589934592
  %.not1 = icmp eq i64 %i.h, 0
  br i1 %.not1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) #22 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 64, %bb.c ], [ 16, %bb.a ], [ 32, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10X86Operand9CreateMemEjPKNS_6MCExprENS_5SMLocES4_jNS_9StringRefEPvjbb(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.176") align 8 %0, i32 noundef %1, ptr noundef %2, ptr %3, ptr %4, i32 noundef %5, ptr noundef byval(%"class.llvm::StringRef") align 8 %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %9 to i8
  %i.b = zext i1 %10 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #23, !noalias !880 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 -1, ptr %i.d, align 8, !tbaa !141, !noalias !880
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !143, !noalias !880
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.g, align 8, !tbaa !112, !noalias !880
  store i8 0, ptr %i.f, align 8, !tbaa !29, !noalias !880
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4llvm10X86OperandE, i64 16), ptr %i.c, align 8, !tbaa !8, !noalias !880
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 3, ptr %i.h, align 8, !tbaa !144, !noalias !880
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %3, ptr %i.i, align 8, !tbaa !58, !noalias !880
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %4, ptr %i.j, align 8, !tbaa !58, !noalias !880
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.k, align 8
  store ptr %i.c, ptr %0, align 8, !tbaa !199, !alias.scope !880
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 0, ptr %i.l, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %2, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %5, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i32 %1, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 %8, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i8 %i.b, ptr %i.r, align 4, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  store i8 %i.a, ptr %i.s, align 1, !tbaa !747
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !883
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %7, ptr %i.u, align 8, !tbaa !462
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i8 0, ptr %i.v, align 8, !tbaa !160
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112X86AsmParser21IntelExprStateMachineD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(264) dereferenceable(264) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_112X86AsmParser18InfixCalculatorTokElELj4EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #22
  br label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_112X86AsmParser18InfixCalculatorTokElELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_112X86AsmParser18InfixCalculatorTokElELj4EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN12_GLOBAL__N_112X86AsmParser15InfixCalculatorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_112X86AsmParser18InfixCalculatorTokElELj4EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #22
  br label %_ZN12_GLOBAL__N_112X86AsmParser15InfixCalculatorD2Ev.exit

_ZN12_GLOBAL__N_112X86AsmParser15InfixCalculatorD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_112X86AsmParser18InfixCalculatorTokElELj4EED2Ev.exit.i, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112X86AsmParser21ParseIntelDotOperatorERNS0_21IntelExprStateMachineERN4llvm5SMLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(130) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.llvm::AsmFieldInfo", align 8 ; 8 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 12 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::AsmToken", align 8    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %i.c) #22 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc:bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !104
  %i.f = load i64, ptr %i.a, align 8, !tbaa !186
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !186
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !186
  ret void
}

declare noundef zeroext i1 @_ZN4llvm3X8610isCFCMOVCCEj(i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm3X865isCMPEj(i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm3X866isTESTEj(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18MCParsedAsmOperand13setConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %.not.i = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !143, !alias.scope !1057
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !112, !alias.scope !1057
  store i8 0, ptr %i.b, align 8, !tbaa !29, !alias.scope !1057
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !1057
  store i64 %2, ptr %i.a, align 8, !tbaa !50, !noalias !1057
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !113, !alias.scope !1057
  %i.f = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !1057
  store i64 %i.f, ptr %i.b, align 8, !tbaa !29, !alias.scope !1057
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %2, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.h, ptr %i.g, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !1057 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !112, !alias.scope !1057
  %i.k = load ptr, ptr %3, align 8, !tbaa !113, !alias.scope !1057
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !1057
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %3, align 8, !tbaa !113    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.s, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !112  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  switch i64 %i.u, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.q, align 1, !tbaa !29
  store i8 %i.w, ptr %i.n, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.x = load i64, ptr %i.t, align 8, !tbaa !112  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.x, ptr %i.y, align 8, !tbaa !112
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !29
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.m, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !29
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !29
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !29
  store ptr %i.q, ptr %i.m, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !29
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !29
  %.not.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %3, align 8, !tbaa !113
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %3, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ai = phi ptr [ %i.n, %bb.j ], [ %i.r, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !112
  store i8 0, ptr %i.ai, align 1, !tbaa !29
  %i.ak = load ptr, ptr %3, align 8, !tbaa !113   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !29
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_X86AsmParser.cpp() #18 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21LVIInlineAsmHardening, i32 noundef 0, i32 noundef 0) #22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 120), align 8, !tbaa !969
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL21LVIInlineAsmHardening, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21LVIInlineAsmHardening, ptr nonnull align 1 dereferenceable(42) @.str, i64 41) #22
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 32), align 8, !tbaa !58
  store i64 111, ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 40), align 8, !tbaa !50
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL21LVIInlineAsmHardening, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21LVIInlineAsmHardening) #22
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL21LVIInlineAsmHardening, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <6 x i64> @llvm.ctpop.v6i64(<6 x i64>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #16

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{null}
!14 = !{!15, !17, i64 16}
!15 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !16, i64 0, !5, i64 8, !5, i64 12, !17, i64 16}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!24, !25, i64 18}
!24 = !{!"_ZTSN4llvm15MCRegisterClassE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !25, i64 16, !25, i64 18, !25, i64 20, !6, i64 22, !17, i64 23, !17, i64 24, !5, i64 28, !5, i64 32, !26, i64 40, !6, i64 48, !17, i64 49, !6, i64 50, !6, i64 51, !17, i64 52, !17, i64 53, !5, i64 56, !25, i64 60}
!25 = !{!"short", !6, i64 0}
!26 = !{!"_ZTSN4llvm11LaneBitmaskE", !27, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!24, !5, i64 4}
!29 = !{!6, !6, i64 0}
!30 = !{!31, !12, i64 112}
!31 = !{!"_ZTSN4llvm6TargetE", !32, i64 0, !12, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !17, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256}
!32 = !{!"p1 _ZTSN4llvm6TargetE", !12, i64 0}
!33 = !{!"p1 omnipotent char", !12, i64 0}
!34 = !{!35, !17, i64 9}
!35 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !36, i64 0, !17, i64 8, !17, i64 9}
!36 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!37 = !{!38, !47, i64 104}
!38 = !{!"_ZTSN12_GLOBAL__N_112X86AsmParserE", !39, i64 0, !47, i64 104, !17, i64 112, !5, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !17, i64 129}
!39 = !{!"_ZTSN4llvm17MCTargetAsmParserE", !40, i64 0, !42, i64 24, !17, i64 72, !44, i64 80, !45, i64 88, !46, i64 96}
!40 = !{!"_ZTSN4llvm20MCAsmParserExtensionE", !41, i64 8, !17, i64 16}
!41 = !{!"p1 _ZTSN4llvm11MCAsmParserE", !12, i64 0}
!42 = !{!"_ZTSN4llvm13FeatureBitsetE", !43, i64 0}
!43 = !{!"_ZTSSt5arrayImLm6EE", !6, i64 0}
!44 = !{!"p1 _ZTSN4llvm23MCAsmParserSemaCallbackE", !12, i64 0}
!45 = !{!"p1 _ZTSN4llvm15MCSubtargetInfoE", !12, i64 0}
!46 = !{!"p1 _ZTSN4llvm11MCInstrInfoE", !12, i64 0}
!47 = !{!"p1 _ZTSN4llvm20ParseInstructionInfoE", !12, i64 0}
!48 = !{!38, !17, i64 112}
!49 = distinct !{null}
!50 = !{!27, !27, i64 0}
!51 = !{!40, !41, i64 8}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN4llvm8AsmTokenE", !54, i64 0, !55, i64 8, !56, i64 24}
!54 = !{!"_ZTSN4llvm8AsmToken9TokenKindE", !6, i64 0}
!55 = !{!"_ZTSN4llvm9StringRefE", !33, i64 0, !27, i64 8}
!56 = !{!"_ZTSN4llvm5APIntE", !6, i64 0, !5, i64 8}
!57 = distinct !{null}
!58 = !{!33, !33, i64 0}
!59 = !{!60, !5, i64 0}
!60 = !{!"_ZTSN4llvm10MCRegisterE", !5, i64 0}
!61 = !{!5, !5, i64 0}
!62 = !{!63, !65, i64 16}
!63 = !{!"_ZTSN4llvm11MCAsmParserE", !64, i64 8, !65, i64 16, !66, i64 24, !67, i64 32, !68, i64 40, !69, i64 48, !79, i64 224, !17, i64 240, !17, i64 241, !17, i64 242}
!64 = !{!"p1 _ZTSN4llvm17MCTargetAsmParserE", !12, i64 0}
!65 = !{!"p1 _ZTSN4llvm9MCContextE", !12, i64 0}
!66 = !{!"p1 _ZTSN4llvm10MCStreamerE", !12, i64 0}
!67 = !{!"p1 _ZTSN4llvm9SourceMgrE", !12, i64 0}
!68 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !12, i64 0}
!69 = !{!"_ZTSN4llvm8AsmLexerE", !70, i64 0, !33, i64 56, !55, i64 64, !75, i64 80, !76, i64 88, !68, i64 120, !17, i64 128, !17, i64 129, !17, i64 130, !17, i64 131, !33, i64 136, !17, i64 144, !17, i64 145, !17, i64 146, !17, i64 147, !17, i64 148, !17, i64 149, !17, i64 150, !17, i64 151, !17, i64 152, !5, i64 156, !17, i64 160, !17, i64 161, !78, i64 168}
!70 = !{!"_ZTSN4llvm11SmallVectorINS_8AsmTokenELj1EEE", !71, i64 0, !74, i64 16}
!71 = !{!"_ZTSN4llvm15SmallVectorImplINS_8AsmTokenEEE", !72, i64 0}
!72 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EEE", !73, i64 0}
!73 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8AsmTokenEvEE", !22, i64 0}
!74 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8AsmTokenELj1EEE", !6, i64 0}
!75 = !{!"_ZTSN4llvm5SMLocE", !33, i64 0}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !77, i64 0, !27, i64 8, !6, i64 16}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!78 = !{!"p1 _ZTSN4llvm18AsmCommentConsumerE", !12, i64 0}
!79 = !{!"_ZTSN4llvm11SmallVectorINS_11MCAsmParser14MCPendingErrorELj0EEE", !80, i64 0}
!80 = !{!"_ZTSN4llvm15SmallVectorImplINS_11MCAsmParser14MCPendingErrorEEE", !81, i64 0}
!81 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EEE", !82, i64 0}
!82 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_11MCAsmParser14MCPendingErrorEvEE", !22, i64 0}
!83 = !{i64 8}
!84 = !{!85, !33, i64 0}
!85 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !33, i64 0, !27, i64 8, !86, i64 16, !91, i64 64}
!86 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !87, i64 0, !90, i64 16}
!87 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !88, i64 0}
!88 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !89, i64 0}
!89 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !22, i64 0}
!90 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !6, i64 0}
!91 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !92, i64 0}
!92 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !93, i64 0}
!93 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !94, i64 0}
!94 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !22, i64 0}
!95 = !{!85, !27, i64 8}
!96 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSN4llvm6MCExprE", !99, i64 0, !5, i64 1, !75, i64 8}
!99 = !{!"_ZTSN4llvm6MCExpr8ExprKindE", !6, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTSN4llvm6MCExprE", !12, i64 0}
!102 = !{!75, !33, i64 0}
!103 = !{!22, !5, i64 8}
!104 = !{!105, !12, i64 0}
!105 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !12, i64 0, !27, i64 8, !27, i64 16}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!109, !110, i64 33}
!109 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !110, i64 32, !110, i64 33}
!110 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!111 = !{!109, !110, i64 32}
!112 = !{!76, !27, i64 8}
!113 = !{!76, !33, i64 0}
!114 = !{!38, !6, i64 120}
!115 = !{!38, !6, i64 124}
!116 = !{!38, !17, i64 129}
!117 = distinct !{!117, !107}
!118 = !{!39, !17, i64 72}
!119 = !{!55, !27, i64 8}
!120 = !{!121, !122, i64 0}
!121 = !{!"_ZTSN4llvm20ParseInstructionInfoE", !122, i64 0}
!122 = !{!"p1 _ZTSN4llvm15SmallVectorImplINS_10AsmRewriteEEE", !12, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"_ZTSN4llvm14AsmRewriteKindE", !6, i64 0}
!125 = !{!22, !5, i64 12}
!126 = !{!127, !124, i64 0}
!127 = !{!"_ZTSN4llvm10AsmRewriteE", !124, i64 0, !75, i64 8, !5, i64 16, !17, i64 20, !27, i64 24, !55, i64 32, !128, i64 48, !17, i64 120}
!128 = !{!"_ZTSN4llvm9IntelExprE", !17, i64 0, !27, i64 8, !55, i64 16, !55, i64 32, !55, i64 48, !5, i64 64}
!129 = !{!127, !5, i64 16}
!130 = !{!127, !17, i64 20}
!131 = !{!128, !5, i64 64}
!132 = !{!127, !17, i64 120}
!133 = !{!55, !33, i64 0}
!134 = distinct !{!134, !107}
!135 = !{!38, !5, i64 116}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_ZSt11make_uniqueIN4llvm10X86OperandEJNS1_6KindTyERNS0_5SMLocES4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!138 = distinct !{!138, !"_ZSt11make_uniqueIN4llvm10X86OperandEJNS1_6KindTyERNS0_5SMLocES4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!139 = distinct !{!139, !140, !"_ZN4llvm10X86Operand11CreateTokenENS_9StringRefENS_5SMLocE: argument 0"}
!140 = distinct !{!140, !"_ZN4llvm10X86Operand11CreateTokenENS_9StringRefENS_5SMLocE"}
end_hunk_1
