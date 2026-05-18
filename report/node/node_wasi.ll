inline.NumInlined: 4603
inline.NumDeleted: 1161
begin_hunk_0_@_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjmmjEXadL_ZNS1_8FdAdviseES3_S4_jmmjEEjJjmmjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEE:bb.a
  %i.af = inttoptr i64 %i.ae to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.q, i32 noundef 1) #27
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ag, %bb.e ] ; 4 uses
  %i.ah = icmp eq ptr %.0.i.i, null
  br i1 %i.ah, label %bb.s, label %bb.f

bb.f:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, label %bb.g

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.f
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.an) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ao) #27 ; 0 uses
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 47
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, 271
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = tail call ptr @_ZN4node20ERR_WASI_NOT_STARTEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.az, i64 32, ptr nonnull @.str.177)
  %i.bb = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr %i.ba) #27 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call ptr @_ZN2v816WasmMemoryObject6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.aj) #27 ; 2 uses
  %i.bd = tail call noundef i64 @_ZNK2v811ArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bc) #27 ; 0 uses
  %i.be = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bc) #27
  %.not15 = icmp eq ptr %i.be, null
  br i1 %.not15, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjmmjEXadL_ZNS1_8FdAdviseES3_S4_jmmjEEjJjmmjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %0, align 8               ; 2 uses
  %i.bg = load i64, ptr %i.g, align 8
  %i.bh = trunc i64 %i.bg to i32
  %.not.i16.i = icmp sgt i32 %i.bh, 0
  br i1 %.not.i16.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %i.bk, 648
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i

bb.k:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.o, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i: ; preds = %bb.k, %bb.j
  %.sroa.06.0.i = phi ptr [ %i.bn, %bb.k ], [ %i.bm, %bb.j ]
  %i.bo = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.06.0.i) #27 ; 2 uses
  %i.bp = load i64, ptr %i.g, align 8
  %i.bq = trunc i64 %i.bp to i32
  %.not.i14.i = icmp sgt i32 %i.bq, 1
  br i1 %.not.i14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 648
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i

bb.m:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i
  %i.bx = load ptr, ptr %i.o, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i: ; preds = %bb.m, %bb.l
  %.sroa.05.0.i = phi ptr [ %i.by, %bb.m ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.bz = call noundef i64 @_ZNK2v86BigInt11Uint64ValueEPb(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.05.0.i, ptr noundef nonnull %i.f) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ca = load i64, ptr %i.g, align 8
  %i.cb = trunc i64 %i.ca to i32
  %.not.i12.i = icmp sgt i32 %i.cb, 2
  br i1 %.not.i12.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cf, 648
  %i.ch = inttoptr i64 %i.cg to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i

bb.o:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i
  %i.ci = load ptr, ptr %i.o, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i: ; preds = %bb.o, %bb.n
  %.sroa.04.0.i = phi ptr [ %i.cj, %bb.o ], [ %i.ch, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ck = call noundef i64 @_ZNK2v86BigInt11Uint64ValueEPb(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.04.0.i, ptr noundef nonnull %i.e) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.cl = load i64, ptr %i.g, align 8
  %i.cm = trunc i64 %i.cl to i32
  %.not.i.i = icmp sgt i32 %i.cm, 3
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i
  %i.cn = load ptr, ptr %0, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = add i64 %i.cq, 648
  %i.cs = inttoptr i64 %i.cr to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i

bb.q:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i
  %i.ct = load ptr, ptr %i.o, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.03.0.i = phi ptr [ %i.cu, %bb.q ], [ %i.cs, %bb.p ]
  %i.cv = call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.03.0.i) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.bo, ptr %i.a, align 4
  store i64 %i.bz, ptr %i.b, align 8
  store i64 %i.ck, ptr %i.c, align 8
  store i32 %i.cv, ptr %i.d, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2591
  %i.db = load i8, ptr %i.da, align 1, !range !26, !noundef !38
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.r, label %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjmmjETnT_XadL_ZNS3_8FdAdviseES4_S5_jmmjEEjJjmmjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit, !prof !30

bb.r:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i
  %i.dd = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRjRmS2_S1_EEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.dd, i64 26, ptr nonnull @.str.62, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #34
  %.pre.i.i = load i32, ptr %i.a, align 4
  %.pre2.i.i = load i64, ptr %i.b, align 8
  %.pre3.i.i = load i64, ptr %i.c, align 8
  %.pre4.i.i = load i32, ptr %i.d, align 4
  br label %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjmmjETnT_XadL_ZNS3_8FdAdviseES4_S5_jmmjEEjJjmmjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit

_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjmmjETnT_XadL_ZNS3_8FdAdviseES4_S5_jmmjEEjJjmmjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i, %bb.r
  %i.de = phi i32 [ %i.cv, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i ], [ %.pre4.i.i, %bb.r ]
  %i.df = phi i64 [ %i.ck, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i ], [ %.pre3.i.i, %bb.r ]
  %i.dg = phi i64 [ %i.bz, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i ], [ %.pre2.i.i, %bb.r ]
  %i.dh = phi i32 [ %i.bo, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit.i ], [ %.pre.i.i, %bb.r ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.dk = trunc i32 %i.de to i8
  %i.dl = call zeroext i16 @uvwasi_fd_advise(ptr noundef nonnull %i.dj, i32 noundef %i.dh, i64 noundef %i.dg, i64 noundef %i.df, i8 noundef zeroext %i.dk) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dm = zext i16 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 32
  store i64 %i.dn, ptr %i.di, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjmmjETnT_XadL_ZNS3_8FdAdviseES4_S5_jmmjEEjJjmmjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_6ObjectEEEJEEES5_NS4_ImJEEESA_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <6 x i16> <i16 10, i16 4, i16 6, i16 6, i16 4, i16 255>, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjmmjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %.not.i.i.i = icmp sgt i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, 648
  %i.i = inttoptr i64 %i.h to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i) #27
  br i1 %i.l, label %bb.d, label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJmmjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

bb.d:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i
  %i.m = load i64, ptr %i.a, align 8
  %i.n = trunc i64 %i.m to i32
  %.not.i.i.i.i = icmp sgt i32 %i.n, 1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 648
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.t, %bb.e ]
  %i.x = tail call noundef zeroext i1 @_ZNK2v85Value8IsBigIntEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i) #27
  br i1 %i.x, label %bb.g, label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJmmjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

bb.g:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i
  %i.y = load i64, ptr %i.a, align 8
  %i.z = trunc i64 %i.y to i32
  %.not.i.i.i.i.i = icmp sgt i32 %i.z, 2
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = add i64 %i.ad, 648
  %i.af = inttoptr i64 %i.ae to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %i.af, %bb.h ]
  %i.aj = tail call noundef zeroext i1 @_ZNK2v85Value8IsBigIntEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i.i) #27
  br i1 %i.aj, label %bb.j, label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJmmjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

bb.j:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i
  %i.ak = load i64, ptr %i.a, align 8
  %i.al = trunc i64 %i.ak to i32
  %.not.i.i6.i.i.i = icmp sgt i32 %i.al, 3
  br i1 %.not.i.i6.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 648
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i7.i.i.i = phi ptr [ %i.au, %bb.l ], [ %i.ar, %bb.k ]
  %i.av = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i7.i.i.i) #27
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJmmjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJmmjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit: ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i
  %.0.i = phi i1 [ false, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i ], [ false, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i ], [ %i.av, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i ], [ false, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesImEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjmmEXadL_ZNS1_10FdAllocateES3_S4_jmmEEjJjmmEE11SetFunctionEPNS_11EnvironmentEPKcN2v85LocalINSC_16FunctionTemplateEEE(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %4 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_ImJEEES8_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjmmRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_ImJEEES8_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjmmRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_6ObjectEEEJEEES5_NS4_ImJEEESA_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(26) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_ImJEEES8_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_ImJEEES8_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjmmRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit

_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjmmRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjmmEXadL_ZNS1_10FdAllocateES3_S4_jmmEEjJjmmEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjmmRNS8_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_ImJEEES8_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.d = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x ptr> %i.d, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef %i.f, ptr noundef nonnull @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjmmEXadL_ZNS1_10FdAllocateES3_S4_jmmEEjJjmmEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEE, ptr null, ptr null, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #27 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.h, ptr noundef %1, i32 noundef 1, i32 noundef -1) #27 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjmmRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjmmRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, %bb.d
  %i.k = call ptr @_ZN2v816FunctionTemplate17PrototypeTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #27
  call void @_ZN2v88Template3SetENS_5LocalINS_4NameEEENS1_INS_4DataEEENS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.i, ptr %i.g, i32 noundef 0) #27
  call void @_ZN2v816FunctionTemplate12SetClassNameENS_5LocalINS_6StringEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjmmEXadL_ZNS1_10FdAllocateES3_S4_jmmEEjJjmmEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjmmRNS8_22FastApiCallbackOptionsE(ptr %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 1) #27
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 4 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.m, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.v = ptrtoint ptr %i.u to i64
end_hunk_0
begin_hunk_1_@_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjjjjEXadL_ZNS1_6FdReadES3_S4_jjjjEEjJjjjjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEE:bb.a
  %i.c = and i64 %i.b, 4294967295
  %.not = icmp eq i64 %i.c, 4
  br i1 %.not, label %bb.b, label %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit16

_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit16:     ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 120259084288, ptr %i.e, align 8
  br label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.f, label %bb.c, label %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit

_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit:       ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 120259084288, ptr %i.h, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = icmp eq i16 %i.r, 1040
  %i.t = add i16 %i.r, -1057
  %i.u = icmp ult i16 %i.t, 1002
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.w = add i64 %i.l, 39
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %i.z = inttoptr i64 %i.y to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i32 noundef 1) #27
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.z, %bb.d ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = icmp eq ptr %.0.i.i, null
  br i1 %i.ab, label %bb.r, label %bb.f

bb.f:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, label %bb.g

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.f
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ah) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #27 ; 0 uses
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 47
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, 271
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = tail call ptr @_ZN4node20ERR_WASI_NOT_STARTEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.at, i64 32, ptr nonnull @.str.177)
  %i.av = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr %i.au) #27 ; 0 uses
  br label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call ptr @_ZN2v816WasmMemoryObject6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #27 ; 2 uses
  %i.ax = tail call noundef i64 @_ZNK2v811ArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.aw) #27
  %i.ay = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.aw) #27 ; 2 uses
  %.not15 = icmp eq ptr %i.ay, null
  br i1 %.not15, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjjjjEXadL_ZNS1_6FdReadES3_S4_jjjjEEjJjjjjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8               ; 2 uses
  %i.ba = load i64, ptr %i.a, align 8
  %i.bb = trunc i64 %i.ba to i32
  %.not.i16.i = icmp sgt i32 %i.bb, 0
  br i1 %.not.i16.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.be, 648
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i

bb.k:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.i, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i: ; preds = %bb.k, %bb.j
  %.sroa.023.0.i = phi ptr [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.023.0.i) #27
  %i.bj = load i64, ptr %i.a, align 8
  %i.bk = trunc i64 %i.bj to i32
  %.not.i14.i = icmp sgt i32 %i.bk, 1
  br i1 %.not.i14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 648
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i

bb.m:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i
  %i.br = load ptr, ptr %i.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i: ; preds = %bb.m, %bb.l
  %.sroa.022.0.i = phi ptr [ %i.bs, %bb.m ], [ %i.bq, %bb.l ]
  %i.bt = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.022.0.i) #27
  %i.bu = load i64, ptr %i.a, align 8
  %i.bv = trunc i64 %i.bu to i32
  %.not.i12.i = icmp sgt i32 %i.bv, 2
  br i1 %.not.i12.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = add i64 %i.bz, 648
  %i.cb = inttoptr i64 %i.ca to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i

bb.o:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i
  %i.cc = load ptr, ptr %i.i, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i: ; preds = %bb.o, %bb.n
  %.sroa.021.0.i = phi ptr [ %i.cd, %bb.o ], [ %i.cb, %bb.n ]
  %i.ce = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.021.0.i) #27
  %i.cf = load i64, ptr %i.a, align 8
  %i.cg = trunc i64 %i.cf to i32
  %.not.i.i = icmp sgt i32 %i.cg, 3
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = add i64 %i.ck, 648
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjjjjETnT_XadL_ZNS3_6FdReadES4_S5_jjjjEEjJjjjjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit

bb.q:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i
  %i.cn = load ptr, ptr %i.i, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  br label %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjjjjETnT_XadL_ZNS3_6FdReadES4_S5_jjjjEEjJjjjjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit

_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjjjjETnT_XadL_ZNS3_6FdReadES4_S5_jjjjEEjJjjjjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit: ; preds = %bb.p, %bb.q
  %.sroa.020.0.i = phi ptr [ %i.co, %bb.q ], [ %i.cm, %bb.p ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.cq = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.020.0.i) #27
  %i.cr = tail call noundef i32 @_ZN4node4wasi4WASI6FdReadERS1_NS0_10WasmMemoryEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %.0.i.i, ptr nonnull %i.ay, i64 %i.ax, i32 noundef %i.bi, i32 noundef %i.bt, i32 noundef %i.ce, i32 noundef %i.cq)
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 32
  store i64 %i.ct, ptr %i.cp, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjjjjETnT_XadL_ZNS3_6FdReadES4_S5_jjjjEEjJjjjjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_6ObjectEEEJEEES5_S5_S5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <6 x i16> <i16 10, i16 4, i16 4, i16 4, i16 4, i16 255>, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %.not.i.i.i = icmp sgt i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, 648
  %i.i = inttoptr i64 %i.h to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i) #27
  br i1 %i.l, label %bb.d, label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

bb.d:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i
  %i.m = load i64, ptr %i.a, align 8
  %i.n = trunc i64 %i.m to i32
  %.not.i.i.i.i = icmp sgt i32 %i.n, 1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 648
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.t, %bb.e ]
  %i.x = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i) #27
  br i1 %i.x, label %bb.g, label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

bb.g:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i
  %i.y = load i64, ptr %i.a, align 8
  %i.z = trunc i64 %i.y to i32
  %.not.i.i.i.i.i = icmp sgt i32 %i.z, 2
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = add i64 %i.ad, 648
  %i.af = inttoptr i64 %i.ae to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %i.af, %bb.h ]
  %i.aj = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i.i) #27
  br i1 %i.aj, label %bb.j, label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

bb.j:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i
  %i.ak = load i64, ptr %i.a, align 8
  %i.al = trunc i64 %i.ak to i32
  %.not.i.i6.i.i.i = icmp sgt i32 %i.al, 3
  br i1 %.not.i.i6.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 648
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit8.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit8.i.i.i

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit8.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i7.i.i.i = phi ptr [ %i.au, %bb.l ], [ %i.ar, %bb.k ]
  %i.av = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i7.i.i.i) #27
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjJjjjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_DpT0_.exit: ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit8.i.i.i
  %.0.i = phi i1 [ false, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i ], [ false, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i ], [ %i.av, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit8.i.i.i ], [ false, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjjjmjEXadL_ZNS1_9FdReaddirES3_S4_jjjmjEEjJjjjmjEE11SetFunctionEPNS_11EnvironmentEPKcN2v85LocalINSC_16FunctionTemplateEEE(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %4 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_S3_S3_NS2_ImJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjjjmjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_S3_S3_NS2_ImJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjjjmjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_6ObjectEEEJEEES5_S5_S5_NS4_ImJEEES5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(30) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_S3_S3_NS2_ImJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_S3_S3_NS2_ImJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjjjmjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit

_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjjjmjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjjjmjEXadL_ZNS1_9FdReaddirES3_S4_jjjmjEEjJjjjmjEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjjjmjRNS8_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_S3_S3_NS2_ImJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.d = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x ptr> %i.d, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef %i.f, ptr noundef nonnull @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjjjmjEXadL_ZNS1_9FdReaddirES3_S4_jjjmjEEjJjjjmjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEE, ptr null, ptr null, i32 noundef 5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #27 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.h, ptr noundef %1, i32 noundef 1, i32 noundef -1) #27 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjjjmjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjjjmjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, %bb.d
  %i.k = call ptr @_ZN2v816FunctionTemplate17PrototypeTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #27
  call void @_ZN2v88Template3SetENS_5LocalINS_4NameEEENS1_INS_4DataEEENS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.i, ptr %i.g, i32 noundef 0) #27
  call void @_ZN2v816FunctionTemplate12SetClassNameENS_5LocalINS_6StringEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjjjmjEXadL_ZNS1_9FdReaddirES3_S4_jjjmjEEjJjjjmjEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjjjmjRNS8_22FastApiCallbackOptionsE(ptr %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = icmp eq i16 %i.g, 1040
  %i.i = add i16 %i.g, -1057
  %i.j = icmp ult i16 %i.i, 1002
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.a, 39
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 1) #27
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = icmp eq ptr %.0.i.i, null
  br i1 %i.q, label %bb.k, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.r = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #27 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 560
  %i.u = inttoptr i64 %i.t to ptr                 ; 6 uses
  store ptr %i.r, ptr %7, align 8
end_hunk_1
begin_hunk_2_@_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjljjEXadL_ZNS1_6FdSeekES3_S4_jljjEEjJjljjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEE:bb.a
  %i.am = inttoptr i64 %i.al to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjljjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE.exit

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  br label %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjljjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE.exit

_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjljjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i7.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %i.am, %bb.i ]
  %i.ap = tail call noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i7.i.i.i.i) #27
  br i1 %i.ap, label %bb.k, label %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit

_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit:       ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIlEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIjEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEEiT_.exit.i.i, %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjljjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE.exit
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 120259084288, ptr %i.ar, align 8
  br label %bb.z

bb.k:                                             ; preds = %_ZN4node4wasi12_GLOBAL__N_110CheckTypesIJjljjEEEbRKN2v820FunctionCallbackInfoINS3_5ValueEEE.exit
  %i.as = load ptr, ptr %i.g, align 8
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = add i64 %i.au, -1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = icmp eq i16 %i.ba, 1040
  %i.bc = add i16 %i.ba, -1057
  %i.bd = icmp ult i16 %i.bc, 1002
  %i.be = or i1 %i.bb, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.bf = add i64 %i.au, 39
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = inttoptr i64 %i.bh to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i32 noundef 1) #27
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i17 = phi ptr [ %i.bi, %bb.l ], [ %i.bj, %bb.m ] ; 3 uses
  %i.bk = icmp eq ptr %.0.i.i17, null
  br i1 %i.bk, label %bb.z, label %bb.n

bb.n:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, label %bb.o

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.n
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bq) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bs = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.br) #27 ; 0 uses
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = add i64 %i.bt, 47
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bw, 271
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = tail call ptr @_ZN4node20ERR_WASI_NOT_STARTEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cc, i64 32, ptr nonnull @.str.177)
  %i.ce = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.cc, ptr %i.cd) #27 ; 0 uses
  br label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.cf = tail call ptr @_ZN2v816WasmMemoryObject6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #27 ; 2 uses
  %i.cg = tail call noundef i64 @_ZNK2v811ArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cf) #27
  %i.ch = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cf) #27 ; 2 uses
  %.not15 = icmp eq ptr %i.ch, null
  br i1 %.not15, label %bb.p, label %bb.q, !prof !5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjljjEXadL_ZNS1_6FdSeekES3_S4_jljjEEjJjljjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %0, align 8               ; 2 uses
  %i.cj = load i64, ptr %i.b, align 8
  %i.ck = trunc i64 %i.cj to i32
  %.not.i16.i = icmp sgt i32 %i.ck, 0
  br i1 %.not.i16.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = add i64 %i.cn, 648
  %i.cp = inttoptr i64 %i.co to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i

bb.s:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %i.g, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i: ; preds = %bb.s, %bb.r
  %.sroa.023.0.i = phi ptr [ %i.cq, %bb.s ], [ %i.cp, %bb.r ]
  %i.cr = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.023.0.i) #27
  %i.cs = load i64, ptr %i.b, align 8
  %i.ct = trunc i64 %i.cs to i32
  %.not.i14.i = icmp sgt i32 %i.ct, 1
  br i1 %.not.i14.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i
  %i.cu = load ptr, ptr %0, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = add i64 %i.cx, 648
  %i.cz = inttoptr i64 %i.cy to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i

bb.u:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit17.i
  %i.da = load ptr, ptr %i.g, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i: ; preds = %bb.u, %bb.t
  %.sroa.022.0.i = phi ptr [ %i.db, %bb.u ], [ %i.cz, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.dc = call noundef i64 @_ZNK2v86BigInt10Int64ValueEPb(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.022.0.i, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.dd = load i64, ptr %i.b, align 8
  %i.de = trunc i64 %i.dd to i32
  %.not.i12.i = icmp sgt i32 %i.de, 2
  br i1 %.not.i12.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i
  %i.df = load ptr, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = add i64 %i.di, 648
  %i.dk = inttoptr i64 %i.dj to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i

bb.w:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit15.i
  %i.dl = load ptr, ptr %i.g, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i: ; preds = %bb.w, %bb.v
  %.sroa.021.0.i = phi ptr [ %i.dm, %bb.w ], [ %i.dk, %bb.v ]
  %i.dn = call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.021.0.i) #27
  %i.do = load i64, ptr %i.b, align 8
  %i.dp = trunc i64 %i.do to i32
  %.not.i.i = icmp sgt i32 %i.dp, 3
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = add i64 %i.dt, 648
  %i.dv = inttoptr i64 %i.du to ptr
  br label %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjljjETnT_XadL_ZNS3_6FdSeekES4_S5_jljjEEjJjljjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit

bb.y:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit13.i
  %i.dw = load ptr, ptr %i.g, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  br label %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjljjETnT_XadL_ZNS3_6FdSeekES4_S5_jljjEEjJjljjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit

_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjljjETnT_XadL_ZNS3_6FdSeekES4_S5_jljjEEjJjljjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit: ; preds = %bb.x, %bb.y
  %.sroa.020.0.i = phi ptr [ %i.dx, %bb.y ], [ %i.dv, %bb.x ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.dz = call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.020.0.i) #27
  %i.ea = call noundef i32 @_ZN4node4wasi4WASI6FdSeekERS1_NS0_10WasmMemoryEjljj(ptr noundef nonnull align 8 dereferenceable(192) %.0.i.i17, ptr nonnull %i.ch, i64 %i.cg, i32 noundef %i.cr, i64 noundef %i.dc, i32 noundef %i.dn, i32 noundef %i.dz)
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 32
  store i64 %i.ec, ptr %i.dy, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %_ZN4node4wasi12_GLOBAL__N_116CallAndSetReturnIPFjRNS0_4WASIENS0_10WasmMemoryEjljjETnT_XadL_ZNS3_6FdSeekES4_S5_jljjEEjJjljjEJLm0ELm1ELm2ELm3EETnNSt9enable_ifIXntsr3std7is_voidIT1_EE5valueEbE4typeELb1EEEvSt16integer_sequenceImJXspT3_EEERKN2v820FunctionCallbackInfoINSF_5ValueEEEPS3_S5_.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetEi.exit16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_6ObjectEEEJEEES5_NS4_IlJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <6 x i16> <i16 10, i16 4, i16 5, i16 4, i16 4, i16 255>, ptr %i.a, align 8
  ret void
}

declare noundef i64 @_ZNK2v86BigInt10Int64ValueEPb(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjEXadL_ZNS1_6FdSyncES3_S4_jEEjJjEE11SetFunctionEPNS_11EnvironmentEPKcN2v85LocalINSC_16FunctionTemplateEEE(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %4 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, !prof !178

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_6ObjectEEEJEEES5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(22) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit

_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjEXadL_ZNS1_6FdSyncES3_S4_jEEjJjEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjRNS8_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_6ObjectEEEJEEES3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.d = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x ptr> %i.d, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef %i.f, ptr noundef nonnull @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjEXadL_ZNS1_6FdSyncES3_S4_jEEjJjEE12SlowCallbackERKN2v820FunctionCallbackInfoINS8_5ValueEEE, ptr null, ptr null, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #27 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.h, ptr noundef %1, i32 noundef 1, i32 noundef -1) #27 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v89CFunction9ArgUnwrapIPFjNS_5LocalINS_6ObjectEEEjRNS_22FastApiCallbackOptionsEEE4MakeES8_NS_13CFunctionInfo19Int64RepresentationE.exit, %bb.d
  %i.k = call ptr @_ZN2v816FunctionTemplate17PrototypeTemplateEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #27
  call void @_ZN2v88Template3SetENS_5LocalINS_4NameEEENS1_INS_4DataEEENS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.i, ptr %i.g, i32 noundef 0) #27
  call void @_ZN2v816FunctionTemplate12SetClassNameENS_5LocalINS_6StringEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjEXadL_ZNS1_6FdSyncES3_S4_jEEjJjEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjRNS8_22FastApiCallbackOptionsE(ptr %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %i.i = icmp eq i16 %i.h, 1040
  %i.j = add i16 %i.h, -1057
  %i.k = icmp ult i16 %i.j, 1002
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %i.b, 39
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = inttoptr i64 %i.o to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 1) #27
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 4 uses
  %i.r = icmp eq ptr %.0.i.i, null
  br i1 %i.r, label %bb.m, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.s = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 560
  %i.v = inttoptr i64 %i.u to ptr                 ; 4 uses
  store ptr %i.s, ptr %3, align 8
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.ah = tail call ptr @_ZN4node20ERR_WASI_NOT_STARTEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.s, i64 32, ptr nonnull @.str.177)
  %i.ai = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr %i.ah) #27 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.af, align 8
  %i.ak = icmp eq ptr %i.w, %i.z
  br i1 %i.ak, label %bb.f, label %_ZN2v89LocalBaseINS_16WasmMemoryObjectEE3NewEPNS_7IsolateEPS1_.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.s) #27
  br label %_ZN2v89LocalBaseINS_16WasmMemoryObjectEE3NewEPNS_7IsolateEPS1_.exit

_ZN2v89LocalBaseINS_16WasmMemoryObjectEE3NewEPNS_7IsolateEPS1_.exit: ; preds = %bb.f, %bb.e
  %.0.i = phi ptr [ %i.al, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i to i64
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.v, align 8
  store i64 %i.aj, ptr %.0.i, align 8
  %i.ap = tail call ptr @_ZN2v816WasmMemoryObject6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i) #27 ; 2 uses
  %i.aq = tail call noundef i64 @_ZNK2v811ArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ap) #27 ; 0 uses
  %i.ar = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ap) #27
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %_ZN2v89LocalBaseINS_16WasmMemoryObjectEE3NewEPNS_7IsolateEPS1_.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node4wasi4WASI12WasiFunctionIPFjRS1_NS0_10WasmMemoryEjEXadL_ZNS1_6FdSyncES3_S4_jEEjJjEE12FastCallbackEN2v85LocalINS8_6ObjectEEEjRNS8_22FastApiCallbackOptionsEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.h:                                             ; preds = %_ZN2v89LocalBaseINS_16WasmMemoryObjectEE3NewEPNS_7IsolateEPS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2591
  %i.ax = load i8, ptr %i.aw, align 1, !range !26, !noundef !38
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %bb.j, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRjEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.az, i64 12, ptr nonnull @.str.80, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #34
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = phi i32 [ %1, %bb.h ], [ %.pre.i, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bc = call zeroext i16 @uvwasi_fd_sync(ptr noundef nonnull %i.bb, i32 noundef %i.ba) #27
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %i.be = icmp eq ptr %.pre, null
  br i1 %i.be, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.k, !prof !179

bb.k:                                             ; preds = %.thread, %bb.j
  %.028 = phi i32 [ 28, %.thread ], [ %i.bd, %bb.j ] ; 2 uses
  %i.bf = phi ptr [ %i.s, %.thread ], [ %.pre, %bb.j ] ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = add i64 %i.bg, 560
  %i.bi = inttoptr i64 %i.bh to ptr               ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.w, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.x, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.not.i = icmp eq ptr %i.bo, %i.z
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  store ptr %i.z, ptr %i.bn, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.bf) #27
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %bb.j, %bb.k, %bb.l
  %.029 = phi i32 [ %i.bd, %bb.j ], [ %.028, %bb.k ], [ %.028, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.m

bb.m:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %_ZN2v811HandleScopeD2Ev.exit
  %.1 = phi i32 [ %.029, %_ZN2v811HandleScopeD2Ev.exit ], [ 28, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit ]
  ret i32 %.1
}

end_hunk_2
