Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DylibVerifier?download=true
inline.NumInlined: 2028
inline.NumDeleted: 1029
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5clang10installapi13DylibVerifier18visitSymbolInDylibERKN4llvm5MachO6RecordERNS1_13SymbolContextE:bb.a
bb.g:                                             ; preds = %_ZN4llvm9StringMapISt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS4_EENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !188 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !378 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !378 ; 2 uses
  %.not188200 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not188200, label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3792
  br label %bb.h

.critedge57.preheader:                            ; preds = %bb.o
  %.not189207 = icmp eq ptr %.sroa.0127.1.ph, %.sroa.7.1.ph
  br i1 %.not189207, label %.loopexit, label %.lr.ph209

.lr.ph209:                                        ; preds = %.critedge57.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3824 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0127.0204 = phi ptr [ null, %.lr.ph ], [ %.sroa.0127.1.ph, %bb.o ] ; 8 uses
  %.sroa.7.0203 = phi ptr [ null, %.lr.ph ], [ %.sroa.7.1.ph, %bb.o ] ; 7 uses
  %.sroa.12.0202 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1.ph, %bb.o ] ; 4 uses
  %.sroa.0124.0201 = phi ptr [ %i.bd, %.lr.ph ], [ %i.cu, %bb.o ] ; 5 uses
  %i.bp = load ptr, ptr %.sroa.0124.0201, align 8, !tbaa !379 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = load i64, ptr %i.bq, align 4, !noalias !381
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.bt = load i64, ptr %i.bs, align 4, !noalias !381
  %i.bu = and i64 %i.br, 9223372036854775807
  %or.cond.i.i.i = icmp ne i64 %i.bu, 0
  %i.bv = and i64 %i.bt, 4611686016279904255
  %i.bw = icmp ne i64 %i.bv, 0
  %or.cond159 = select i1 %or.cond.i.i.i, i1 true, i1 %i.bw
  br i1 %or.cond159, label %_ZNK5clang16AvailabilityInfo11isObsoletedEv.exit.thread, label %bb.i

_ZNK5clang16AvailabilityInfo11isObsoletedEv.exit.thread: ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3824 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !177 ; 2 uses
  %i.bz = icmp ult i32 %i.by, 4
  %spec.select251 = select i1 %i.bz, i32 %i.by, i32 1
  store i32 %spec.select251, ptr %i.bx, align 8, !tbaa !177
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0124.0201, i64 16
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !384
  %i.cc = load i8, ptr %i.bg, align 8, !tbaa !376
  %.not55 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not55, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i70 = icmp eq ptr %.sroa.7.0203, %.sroa.12.0202
  br i1 %.not.i70, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0203, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0124.0201, i64 40, i1 false), !tbaa.struct !239
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.7.0203, i64 40
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ce = ptrtoint ptr %.sroa.7.0203 to i64
  %i.cf = ptrtoint ptr %.sroa.0127.0204 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.m, label %_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #22
  unreachable

_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ci = sdiv exact i64 %i.cg, 40                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 230584300921369395)
  %i.cm = select i1 %i.ck, i64 230584300921369395, i64 %i.cl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cn = mul nuw nsw i64 %i.cm, 40
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #23 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0124.0201, i64 40, i1 false), !tbaa.struct !239
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0127.0204, %.sroa.7.0203
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.co, %_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %.sroa.0127.0204, %_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !239, !alias.scope !385
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %.sroa.7.0203
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !244

_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.co, %_ZNKSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40
  %.not.i23.i.i = icmp eq ptr %.sroa.0127.0204, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.0204, i64 noundef %i.cg) #21
  br label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.cm
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.k, %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.12.1.ph = phi ptr [ %.sroa.12.0202, %bb.k ], [ %i.ct, %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.12.0202, %bb.i ] ; 4 uses
  %.sroa.7.1.ph = phi ptr [ %i.cd, %bb.k ], [ %i.cs, %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.7.0203, %bb.i ] ; 3 uses
  %.sroa.0127.1.ph = phi ptr [ %.sroa.0127.0204, %bb.k ], [ %i.co, %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0127.0204, %bb.i ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0124.0201, i64 40 ; 2 uses
  %.not188 = icmp eq ptr %i.cu, %i.bf
  br i1 %.not188, label %.critedge57.preheader, label %bb.h

bb.p:                                             ; preds = %.lr.ph209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.sroa.0120.0208 = phi ptr [ %.sroa.0127.1.ph, %.lr.ph209 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 6 uses
  %i.cv = load i32, ptr %i.bh, align 8, !tbaa !301 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 3
  %or.cond = or i1 %i.al, %i.cw
  br i1 %or.cond, label %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit73, label %bb.q

_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit73: ; preds = %bb.p
  %i.cx = load i32, ptr %i.bi, align 8, !tbaa !177
  %cond = icmp eq i32 %i.cx, 0
  %spec.select = select i1 %cond, i32 0, i32 3
  br label %.critedge59

bb.q:                                             ; preds = %bb.p
  %i.cy = icmp eq i32 %i.cv, 2
  %i.cz = load i32, ptr %i.bi, align 8, !tbaa !177 ; 2 uses
  %i.da = icmp ult i32 %i.cz, 4
  %spec.select252 = select i1 %i.da, i32 %i.cz, i32 1 ; 2 uses
  br i1 %i.cy, label %.critedge59, label %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit79

_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit79: ; preds = %bb.q
  store i32 %spec.select252, ptr %i.bi, align 8, !tbaa !177
  br label %.loopexit

.critedge59:                                      ; preds = %bb.q, %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit73
  %storemerge = phi i32 [ %spec.select, %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit73 ], [ %spec.select252, %bb.q ]
  %.050 = phi i32 [ 9932, %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit73 ], [ 9958, %bb.q ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !177
  %i.db = load ptr, ptr %i.bj, align 8, !tbaa !193 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0120.0208, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !389
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %i.db, i32 0, i32 noundef 9968) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0120.0208, i64 16
  call void @_ZN4llvm5MachO19getTargetTripleNameB5cxx11ERKNS0_6TargetE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(24) %i.df) #20
  %i.dg = load ptr, ptr %4, align 8, !tbaa !19
  %i.dh = load i64, ptr %i.bk, align 8, !tbaa !12
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr %i.dg, i64 %i.dh)
  %i.di = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bl
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge59
  %i.dk = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.dm = load ptr, ptr %i.bj, align 8, !tbaa !193
  %i.dn = load ptr, ptr %.sroa.0120.0208, align 8, !tbaa !379
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %.sroa.07.0.copyload = load i32, ptr %i.do, align 8, !tbaa !26
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.dm, i32 %.sroa.07.0.copyload, i32 noundef %.050) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN5clang10installapi13DylibVerifier16getAnnotatedNameB5cxx11EPKN4llvm5MachO6RecordERNS1_13SymbolContextEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3960) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(50) %2, i1 noundef zeroext true)
  %i.dp = load ptr, ptr %6, align 8, !tbaa !19
  %i.dq = load i64, ptr %i.bm, align 8, !tbaa !12
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %i.dp, i64 %i.dq)
  %i.dr = load ptr, ptr %.sroa.0120.0208, align 8, !tbaa !379 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !246, !range !85, !noundef !86
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 106
  %i.dw = load i8, ptr %i.dv, align 2, !range !85
  %i.dx = load ptr, ptr %5, align 8, !tbaa !372   ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i80, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit83

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dy = load ptr, ptr %i.bn, align 8, !tbaa !373
  %i.dz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.dy) ; 2 uses
  store ptr %i.dz, ptr %5, align 8, !tbaa !372
  br label %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit83

_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit83: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = phi ptr [ %i.dz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.eb = zext nneg i8 %i.dw to i64
  %13 = select i1 %i.du, i64 1, i64 %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ed = load i8, ptr %i.ea, align 8, !tbaa !390
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  store i8 2, ptr %i.ef, align 1, !tbaa !23
  %i.eg = load ptr, ptr %5, align 8, !tbaa !372   ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i8, ptr %i.eg, align 8, !tbaa !390 ; 2 uses
  %i.ej = add i8 %i.ei, 1                         ; 2 uses
  store i8 %i.ej, ptr %i.eg, align 8, !tbaa !390
  %i.ek = zext i8 %i.ei to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek
  store i64 %13, ptr %i.el, align 8, !tbaa !25
  %i.em = load ptr, ptr %.sroa.0120.0208, align 8, !tbaa !379 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !246, !range !85, !noundef !86
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 106
  %i.er = load i8, ptr %i.eq, align 2, !range !85
  %14 = zext nneg i8 %i.er to i64
  %15 = select i1 %i.ep, i64 1, i64 %14
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.et = zext i8 %i.ej to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.et
  store i8 2, ptr %i.eu, align 1, !tbaa !23
  %i.ev = load ptr, ptr %5, align 8, !tbaa !372   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i8, ptr %i.ev, align 8, !tbaa !390 ; 2 uses
  %i.ey = add i8 %i.ex, 1
  store i8 %i.ey, ptr %i.ev, align 8, !tbaa !390
  %i.ez = zext i8 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ez
  store i64 %15, ptr %i.fa, align 8, !tbaa !25
  %i.fb = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bo
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit83
  %i.fd = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0120.0208, i64 40 ; 2 uses
  %.not189 = icmp eq ptr %i.ff, %.sroa.7.1.ph
  br i1 %.not189, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %.critedge57.preheader, %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit79, %_ZNK5clang16AvailabilityInfo11isObsoletedEv.exit.thread
  %.sroa.12.0199 = phi ptr [ %.sroa.12.0202, %_ZNK5clang16AvailabilityInfo11isObsoletedEv.exit.thread ], [ %.sroa.12.1.ph, %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit79 ], [ %.sroa.12.1.ph, %.critedge57.preheader ], [ %.sroa.12.1.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  %.sroa.0127.0194 = phi ptr [ %.sroa.0127.0204, %_ZNK5clang16AvailabilityInfo11isObsoletedEv.exit.thread ], [ %.sroa.0127.1.ph, %_ZN5clang10installapi13DylibVerifier11updateStateENS1_6ResultE.exit79 ], [ %.sroa.0127.1.ph, %.critedge57.preheader ], [ %.sroa.0127.1.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %.sroa.0127.0194, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.fg = ptrtoint ptr %.sroa.12.0199 to i64
  %i.fh = ptrtoint ptr %.sroa.0127.0194 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.0194, i64 noundef %i.fi) #21
  br label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EED2Ev.exit

bb.s:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !101
  %i.fl = and i8 %i.fk, 2
  %i.fm = icmp ne i8 %i.fl, 0
  %.not.i.i = icmp ugt i64 %i.j, 4
  %or.cond.not.i = select i1 %i.fm, i1 %.not.i.i, i1 false
  br i1 %or.cond.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i, label %bb.t

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.s
  %i.fn = load i32, ptr %i.h, align 1
  %i.fo = xor i32 %i.fn, 1415208799
  %i.fp = getelementptr i8, ptr %i.h, i64 4
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32
  %i.fs = xor i32 %i.fr, 73
  %i.ft = or i32 %i.fo, %i.fs
  %i.fu = icmp ne i32 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit.thread, label %_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit

_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.fx = load i32, ptr %i.h, align 1
  %i.fy = xor i32 %i.fx, 1415208799
  %i.fz = getelementptr i8, ptr %i.h, i64 4
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i32
  %i.gc = xor i32 %i.gb, 83
  %i.gd = or i32 %i.fy, %i.gc
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit.thread, label %.thread

.thread:                                          ; preds = %_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 3688
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  br label %bb.u

_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZN5clang10installapiL15shouldIgnoreCppEN4llvm9StringRefEb.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 3824 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !177 ; 2 uses
  %switch.selectcmp175 = icmp eq i32 %i.gj, 3
  %switch.select176 = select i1 %switch.selectcmp175, i32 3, i32 2
  %switch.selectcmp177 = icmp eq i32 %i.gj, 0
  %switch.select178 = select i1 %switch.selectcmp177, i32 0, i32 %switch.select176
  store i32 %switch.select178, ptr %i.gi, align 8, !tbaa !177
  br label %_ZNSt6vectorIN5clang10installapi18ZipperedDeclSourceESaIS2_EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 3688 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %.not.i91 = icmp eq ptr %i.h, null
  br i1 %.not.i91, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %bb.u

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gm, align 8, !tbaa !12, !alias.scope !402
  store i8 0, ptr %i.gl, align 8, !tbaa !23, !alias.scope !402
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.gn, ptr %7, align 8, !tbaa !24
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.y

bb.u:                                             ; preds = %.thread, %bb.t
  %i.gp = phi ptr [ %i.gh, %.thread ], [ %i.gk, %bb.t ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.gq, ptr %8, align 8, !tbaa !24, !alias.scope !402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !402
  store i64 %i.j, ptr %i.a, align 8, !tbaa !25, !noalias !402
  %i.gr = icmp ugt i64 %i.j, 15
  br i1 %i.gr, label %bb.v, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.gs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.gs, ptr %8, align 8, !tbaa !19, !alias.scope !402
  %i.gt = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !402
  store i64 %i.gt, ptr %i.gq, align 8, !tbaa !23, !alias.scope !402
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.gu = phi ptr [ %i.gs, %bb.v ], [ %i.gq, %bb.u ] ; 2 uses
  switch i64 %i.j, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.gv = load i8, ptr %i.h, align 1, !tbaa !23
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !23
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.x:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.w, %bb.x
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !402 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !12, !alias.scope !402
  %i.gy = load ptr, ptr %8, align 8, !tbaa !19, !alias.scope !402
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gw
  store i8 0, ptr %i.gz, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !402
  %.pre = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ha, ptr %7, align 8, !tbaa !24
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.hc = icmp eq ptr %.pre, %i.hb
  br i1 %i.hc, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

bb.y:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.hd = phi ptr [ %i.go, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.hb, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ] ; 2 uses
  %i.he = phi ptr [ %i.gn, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.ha, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ] ; 2 uses
  %i.hf = phi ptr [ %i.gk, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.gp, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !12 ; 3 uses
  %i.hi = icmp ult i64 %i.hh, 16
  call void @llvm.assume(i1 %i.hi)
  %i.hj = add nuw nsw i64 %i.hh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.he, ptr noundef nonnull align 8 dereferenceable(1) %i.hd, i64 %i.hj, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm5MachO10EncodeKindEEC2IS5_RS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %.pre, ptr %7, align 8, !tbaa !19
  %i.hk = load i64, ptr %i.hb, align 8, !tbaa !23
  store i64 %i.hk, ptr %i.ha, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre214 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm5MachO10EncodeKindEEC2IS5_RS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm5MachO10EncodeKindEEC2IS5_RS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hl = phi ptr [ %i.hd, %bb.y ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ] ; 4 uses
  %i.hm = phi ptr [ %i.he, %bb.y ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ] ; 2 uses
  %i.hn = phi ptr [ %i.hf, %bb.y ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ] ; 2 uses
  %i.ho = phi i64 [ %i.hh, %bb.y ], [ %.pre214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ho, ptr %i.hq, align 8, !tbaa !12
  store ptr %i.hl, ptr %8, align 8, !tbaa !19
  store i64 0, ptr %i.hp, align 8, !tbaa !12
  store i8 0, ptr %i.hl, align 1, !tbaa !23
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.hs = load i8, ptr %i.m, align 8, !tbaa !405
  store i8 %i.hs, ptr %i.hr, align 8, !tbaa !406
  %i.ht = call ptr @_ZNKSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm5MachO10EncodeKindEES0_IKSA_SA_ESt10_Select1stISC_ESt4lessISA_ESaISC_EE4findERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(33) %7)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.not187 = icmp eq ptr %i.ht, %i.hu
  %i.hv = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hm
  br i1 %i.hw, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm5MachO10EncodeKindEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
