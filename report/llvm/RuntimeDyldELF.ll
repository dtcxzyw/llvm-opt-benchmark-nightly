Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RuntimeDyldELF?download=true
inline.NumInlined: 9052
inline.NumDeleted: 2495
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm14RuntimeDyldELF20processRelocationRefEjNS_6object16content_iteratorINS1_13RelocationRefEEERKNS1_10ObjectFileERSt3mapINS1_10SectionRefEjSt4lessIS9_ESaISt4pairIKS9_jEEERS8_INS_18RelocationValueRefEmSA_ISI_ESaISC_IKSI_mEEE:bb.a
  %i.ba = load ptr, ptr %5, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call { i64, ptr } %i.bc(ptr noundef nonnull align 8 dereferenceable(48) %5) #25
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %.not.i.i.i.i606.not = icmp eq i64 %i.ad, %i.be
  br i1 %.not.i.i.i.i606.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %.sroa.0838.1, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0838.1) #25
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.bf, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.bg = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0838.1, i64 %.sroa.0.0.i) #25
  %i.bh = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.aw, ptr %.sroa.0838.1, i64 %.sroa.0.0.i, i32 noundef %i.bg) #25 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !101
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bk = load i32, ptr %i.ay, align 8, !tbaa !102
  %i.bl = zext i32 %i.bk to i64
  br label %_ZN4llvm9StringMapINS_16SymbolTableEntryENS_15MallocAllocatorEE4findENS_9StringRefE.exit

bb.j:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bm = sext i32 %i.bh to i64
  br label %_ZN4llvm9StringMapINS_16SymbolTableEntryENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZN4llvm9StringMapINS_16SymbolTableEntryENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i = phi i64 [ %i.bm, %bb.j ], [ %i.bl, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !8, !noalias !330
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !330
  call void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.88") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 %i.ad) #25, !inline_history !333
  %i.bq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = trunc i8 %i.br to i1
  br i1 %i.bs, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN4llvm9StringMapINS_16SymbolTableEntryENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.bt, ptr %23, align 8, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !59
  store i8 0, ptr %i.bt, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(32) %23)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.bv = load i8, ptr %i.bq, align 8, !noalias !334
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i609, label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i609: ; preds = %bb.k
  %i.bx = load i64, ptr %22, align 8, !tbaa !161, !noalias !334
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr null, ptr %22, align 8, !tbaa !161, !noalias !334
  br label %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEE9takeErrorEv.exit: ; preds = %bb.k, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i609
  %storemerge.i608 = phi ptr [ %i.by, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i609 ], [ null, %bb.k ]
  store ptr %storemerge.i608, ptr %25, align 8, !tbaa !163, !alias.scope !334
  %i.bz = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 1, ptr %i.bz, align 8, !tbaa !165
  %i.ca = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.ca, align 1, !tbaa !168
  call void @_ZN4llvm21logAllUnhandledErrorsENS_5ErrorERNS_11raw_ostreamENS_5TwineE(ptr nofree noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %26) #25
  %i.cb = load ptr, ptr %25, align 8, !tbaa !163  ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN4llvm5ErrorD2Ev.exit610, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEE9takeErrorEv.exit
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #25, !inline_history !169
  br label %_ZN4llvm5ErrorD2Ev.exit610

_ZN4llvm5ErrorD2Ev.exit610:                       ; preds = %_ZN4llvm8ExpectedINS_6object9SymbolRef4TypeEE9takeErrorEv.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 4, ptr %i.cg, align 8, !tbaa !165
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.ch, align 1, !tbaa !168
  store ptr %23, ptr %27, align 8, !tbaa !60
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %27, i1 noundef zeroext true) #27
  unreachable

bb.m:                                             ; preds = %_ZN4llvm9StringMapINS_16SymbolTableEntryENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %.sink.i.i ; 2 uses
  %i.cj = load i32, ptr %22, align 8, !tbaa !337  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.ck = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.cl = load i32, ptr %i.ay, align 8, !tbaa !102
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cm
  %.not930 = icmp eq ptr %i.ci, %i.cn
  br i1 %.not930, label %bb.o, label %bb.n

.thread:                                          ; preds = %bb.f
  %i.co = zext i32 %i.az to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.cr = load i32, ptr %i.ay, align 8, !tbaa !102
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cs
  %.not929 = icmp eq ptr %i.cp, %i.ct
  br i1 %.not929, label %.thread912, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.0532911 = phi i32 [ 0, %.thread ], [ %i.cj, %bb.m ]
  %.sroa.0832.0908 = phi ptr [ %i.cp, %.thread ], [ %i.ci, %bb.m ]
  %i.cu = load ptr, ptr %.sroa.0832.0908, align 8, !tbaa !103 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !181
  store i32 %i.cx, ptr %21, align 8, !tbaa !189
  %i.cy = load i64, ptr %i.cv, align 8, !tbaa !188 ; 2 uses
  store i64 %i.cy, ptr %i.av, align 8, !tbaa !308
  %i.cz = add i64 %i.cy, %.0529
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !197
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.db = icmp eq i32 %i.cj, 3
  br i1 %i.db, label %bb.p, label %.thread912

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.dc = load ptr, ptr %i.ae, align 8, !tbaa !8, !noalias !339
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !339
  call void %i.de(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.75") align 8 %28, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 %i.ad) #25, !inline_history !282
  %i.df = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.dg = load i8, ptr %i.df, align 8
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.di = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.di, ptr %29, align 8, !tbaa !58
  %i.dj = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !59
  store i8 0, ptr %i.di, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull align 8 dereferenceable(32) %29)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.dk = load i8, ptr %i.df, align 8, !noalias !342
  %i.dl = trunc i8 %i.dk to i1
  br i1 %i.dl, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i616, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i616: ; preds = %bb.q
  %i.dm = load i64, ptr %28, align 8, !tbaa !161, !noalias !342
  %i.dn = inttoptr i64 %i.dm to ptr
  store ptr null, ptr %28, align 8, !tbaa !161, !noalias !342
  br label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit: ; preds = %bb.q, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i616
  %storemerge.i615 = phi ptr [ %i.dn, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i616 ], [ null, %bb.q ]
  store ptr %storemerge.i615, ptr %31, align 8, !tbaa !163, !alias.scope !342
  %i.do = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 1, ptr %i.do, align 8, !tbaa !165
  %i.dp = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 1, ptr %i.dp, align 1, !tbaa !168
  call void @_ZN4llvm21logAllUnhandledErrorsENS_5ErrorERNS_11raw_ostreamENS_5TwineE(ptr nofree noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %32) #25
  %i.dq = load ptr, ptr %31, align 8, !tbaa !163  ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN4llvm5ErrorD2Ev.exit617, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) #25, !inline_history !169
  br label %_ZN4llvm5ErrorD2Ev.exit617

_ZN4llvm5ErrorD2Ev.exit617:                       ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEE9takeErrorEv.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.dv = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 4, ptr %i.dv, align 8, !tbaa !165
  %i.dw = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 1, ptr %i.dw, align 1, !tbaa !168
  store ptr %29, ptr %33, align 8, !tbaa !60
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %33, i1 noundef zeroext true) #27
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false), !tbaa.struct !286
  %i.dx = load ptr, ptr %5, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 360
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call { i64, ptr } %i.dz(ptr noundef nonnull align 8 dereferenceable(48) %5) #25 ; 2 uses
  %68 = extractvalue { i64, ptr } %i.ea, 0
  %69 = extractvalue { i64, ptr } %i.ea, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !250 ; 3 uses
  %70 = icmp ne ptr %i.ec, %69
  %lhsv.i.i.i = load i64, ptr %34, align 8        ; 2 uses
  %.not.i.i.i618 = icmp ne i64 %lhsv.i.i.i, %68
  %.not932 = select i1 %70, i1 true, i1 %.not.i.i.i618
  call void @llvm.assume(i1 %.not932)
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 200
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, i64 %lhsv.i.i.i) #25, !inline_history !287
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  call void @_ZN4llvm15RuntimeDyldImpl17findOrEmitSectionERKNS_6object10ObjectFileERKNS1_10SectionRefEbRSt3mapIS5_jSt4lessIS5_ESaISt4pairIS6_jEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.72") align 8 %35, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(16) %34, i1 noundef zeroext %i.eg, ptr noundef nonnull align 8 dereferenceable(48) %6) #25
  %i.eh = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ei = load i8, ptr %i.eh, align 8
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %.critedge, label %bb.t

.critedge:                                        ; preds = %bb.s
  %i.ek = load i64, ptr %35, align 8, !tbaa !161, !noalias !345
  %i.el = inttoptr i64 %i.ek to ptr
  store ptr null, ptr %35, align 8, !tbaa !161, !noalias !345
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.en = load i8, ptr %i.em, align 8
  %i.eo = or i8 %i.en, 1
  store i8 %i.eo, ptr %i.em, align 8
  store ptr %i.el, ptr %0, align 8, !tbaa !161, !alias.scope !348
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.ep = load i8, ptr %i.df, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %bb.gg, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit728

bb.t:                                             ; preds = %bb.s
  %i.er = load i32, ptr %35, align 8, !tbaa !109
  store i32 %i.er, ptr %21, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  %i.es = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 %.0529, ptr %i.es, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.et = load i8, ptr %i.df, align 8
  %i.eu = trunc i8 %i.et to i1
  br i1 %i.eu, label %bb.u, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.ev = load ptr, ptr %28, align 8, !tbaa !161  ; 3 uses
  %.not.i.i627 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i627, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i628

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i628: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev) #25, !inline_history !291
  br label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit: ; preds = %bb.t, %bb.u, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i628
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.w

.thread912:                                       ; preds = %.thread, %bb.o
  %.0532910914 = phi i32 [ %i.cj, %bb.o ], [ 0, %.thread ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  store ptr %.sroa.0838.1, ptr %i.ez, align 8, !tbaa !179
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 %.0529, ptr %i.fa, align 8, !tbaa !197
  %.not = icmp eq ptr %.sroa.0838.1, null
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread912
  store ptr @.str.10, ptr %i.ez, align 8, !tbaa !179
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit, %bb.v, %.thread912, %bb.n
  %.0532909 = phi i32 [ 3, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit ], [ %.0532910914, %bb.v ], [ %.0532910914, %.thread912 ], [ %.0532911, %bb.n ]
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !270 ; 2 uses
  %.sroa.0.0.copyload.i629 = load i64, ptr %18, align 8, !tbaa !60
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 304
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef i64 %i.fe(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i64 %.sroa.0.0.copyload.i629) #25, !inline_history !193 ; 46 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !178 ; 2 uses
  switch i32 %i.fh, label %bb.bi [
    i32 3, label %bb.x
    i32 4, label %bb.x
    i32 1, label %bb.af
    i32 14, label %bb.bb
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.fi = and i64 %i.e, -2
  %or.cond = icmp eq i64 %i.fi, 282
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !118, !nonnull !119, !align !120 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = call noundef zeroext i1 %i.fn(ptr noundef nonnull align 8 dereferenceable(9) %i.fk) #25
  br i1 %i.fo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0258.0.copyload = load i64, ptr %18, align 8, !tbaa !60
  %.sroa.2259.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !261
  call void @_ZN4llvm14RuntimeDyldELF20resolveAArch64BranchEjRKNS_18RelocationValueRefENS_6object16content_iteratorINS4_13RelocationRefEEERSt3mapIS1_mSt4lessIS1_ESaISt4pairIS2_mEEE(ptr noundef nonnull align 8 dereferenceable(1176) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(33) %21, i64 %.sroa.0258.0.copyload, ptr %.sroa.2259.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %7)
  br label %.thread923

bb.aa:                                            ; preds = %bb.x, %bb.y
  switch i64 %i.e, label %bb.ad [
    i64 311, label %bb.ab
    i64 312, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fp = call noundef i64 @_ZN4llvm14RuntimeDyldELF19findOrAllocGOTEntryERKNS_18RelocationValueRefEj(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(33) %21, i32 noundef 257)
  %i.fq = add i64 %i.fp, %.0529
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i64 %i.ff, ptr %14, align 8, !tbaa !213
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !215
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %2, ptr %i.fs, align 8, !tbaa !216
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 275, ptr %i.ft, align 4, !tbaa !217
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 0, ptr %i.fu, align 8, !tbaa !60
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 0, ptr %i.fv, align 8, !tbaa !218
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = and i8 %i.fx, -4
  store i8 %i.fy, ptr %i.fw, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !351
  call void @_ZN4llvm15RuntimeDyldImpl23addRelocationForSectionERKNS_15RelocationEntryEj(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(37) %14, i32 noundef %i.ga) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.thread923

bb.ac:                                            ; preds = %bb.aa
  %i.gb = call noundef i64 @_ZN4llvm14RuntimeDyldELF19findOrAllocGOTEntryERKNS_18RelocationValueRefEj(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(33) %21, i32 noundef 257)
  %i.gc = add i64 %i.gb, %.0529
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store i64 %i.ff, ptr %13, align 8, !tbaa !213
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !215
  %i.ge = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %2, ptr %i.ge, align 8, !tbaa !216
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 286, ptr %i.gf, align 4, !tbaa !217
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 0, ptr %i.gg, align 8, !tbaa !60
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 0, ptr %i.gh, align 8, !tbaa !218
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 4
  %i.gk = and i8 %i.gj, -4
  store i8 %i.gk, ptr %i.gi, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !351
  call void @_ZN4llvm15RuntimeDyldImpl23addRelocationForSectionERKNS_15RelocationEntryEj(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(37) %13, i32 noundef %i.gm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.thread923

bb.ad:                                            ; preds = %bb.aa
  %i.gn = trunc i64 %i.e to i32
  %.sroa.0864.0.copyload = load i32, ptr %21, align 8, !tbaa !109
  %.sroa.3866.0.copyload = load i64, ptr %i.av, align 8, !tbaa !219
  %.sroa.4867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.4867.0.copyload = load i64, ptr %.sroa.4867.0..sroa_idx, align 8, !tbaa !219
  %.sroa.5868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.5868.0.copyload = load ptr, ptr %.sroa.5868.0..sroa_idx, align 8, !tbaa !221 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store i64 %i.ff, ptr %12, align 8, !tbaa !213
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.4867.0.copyload, ptr %i.go, align 8, !tbaa !215
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %2, ptr %i.gp, align 8, !tbaa !216
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %i.gn, ptr %i.gq, align 4, !tbaa !217
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %.sroa.3866.0.copyload, ptr %i.gr, align 8, !tbaa !60
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 0, ptr %i.gs, align 8, !tbaa !218
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 4
  %i.gv = and i8 %i.gu, -4
  store i8 %i.gv, ptr %i.gt, align 4
  %.not.i630 = icmp eq ptr %.sroa.5868.0.copyload, null
  br i1 %.not.i630, label %bb.ae, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.ad
  %i.gw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.5868.0.copyload) #25
  call void @_ZN4llvm15RuntimeDyldImpl22addRelocationForSymbolERKNS_15RelocationEntryENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(37) %12, ptr nonnull %.sroa.5868.0.copyload, i64 %i.gw) #25
  br label %_ZN4llvm14RuntimeDyldELF23processSimpleRelocationEjmjNS_18RelocationValueRefE.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm15RuntimeDyldImpl23addRelocationForSectionERKNS_15RelocationEntryEj(ptr noundef nonnull align 8 dereferenceable(1176) %1, ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef %.sroa.0864.0.copyload) #25
  br label %_ZN4llvm14RuntimeDyldELF23processSimpleRelocationEjmjNS_18RelocationValueRefE.exit

_ZN4llvm14RuntimeDyldELF23processSimpleRelocationEjmjNS_18RelocationValueRefE.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.thread923

bb.af:                                            ; preds = %bb.w
end_hunk_0
