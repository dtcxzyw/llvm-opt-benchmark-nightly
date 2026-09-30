Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/rust-api?download=true
inline.NumInlined: 1766
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hermes_parser_parse:bb.a
  br label %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i.i

_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i.i: ; preds = %bb.h, %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i.i.i
  %i.aj = load i32, ptr %i.d, align 8
  %i.ak = and i32 %i.aj, 1
  %.not.i.i.i.i1.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i1.i.i, label %bb.i, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i.i

bb.i:                                             ; preds = %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i.i
  %i.al = load ptr, ptr %.06.i.i.i.i.ptr.i1.i.i.i, align 8, !tbaa !213
  call void @_ZdlPv(ptr noundef %i.al) #20
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i.i: ; preds = %bb.i, %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i.i
  %i.am = load i32, ptr %i.c, align 8
  %i.an = and i32 %i.am, 1
  %.not.i.i.i1.i3.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i1.i3.i.i, label %bb.j, label %_ZN12_GLOBAL__N_113ParserContextC2Ev.exit

bb.j:                                             ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i.i
  %i.ao = load ptr, ptr %.06.i.i.i.i.ptr.i.i.i.i, align 8, !tbaa !213
  call void @_ZdlPv(ptr noundef %i.ao) #20
  br label %_ZN12_GLOBAL__N_113ParserContextC2Ev.exit

_ZN12_GLOBAL__N_113ParserContextC2Ev.exit:        ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i.i, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 656 ; 4 uses
  store i32 -1, ptr %i.ap, align 8, !tbaa !291
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 664 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 672 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.ar, align 8, !tbaa !292
  %i.as = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !293
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !292
  %i.au = add i64 %i.at, -1
  %i.av = lshr i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av ; 3 uses
  %i.ax = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #18 ; 6 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !294
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !295
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 360 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !297
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store ptr %i.aw, ptr %i.be, align 8, !tbaa !295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !296
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !297
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !902
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !298
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 776 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !299
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 784 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !300
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 792 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 808 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !301
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 800 ; 4 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !302
  store i8 0, ptr %i.bl, align 8, !tbaa !303
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 824 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !304 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  store ptr @_ZZN12_GLOBAL__N_113ParserContextC1EvENUlRKN4llvh12SMDiagnosticEPvE_8__invokeES4_S5_, ptr %i.bq, align 8, !tbaa !915
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store ptr %i.a, ptr %i.br, align 8, !tbaa !916
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bs = trunc i40 %0 to i8
  %i.bt = and i8 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 %i.bt, ptr %i.bu, align 8, !tbaa !309
  %i.bv = lshr i40 %0, 8
  %i.bw = trunc i40 %i.bv to i8
  %i.bx = and i8 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 183
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !917
  %i.bz = icmp eq i64 %2, 0
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_113ParserContextC2Ev.exit
  %i.ca = getelementptr i8, ptr %1, i64 %2
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !303
  %.not = icmp eq i8 %i.cc, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN12_GLOBAL__N_113ParserContextC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.ce, align 1, !tbaa !920
  store ptr @.str, ptr %5, align 8, !tbaa !303
  store i8 3, ptr %i.cd, align 8, !tbaa !921
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bp, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113ParserContextESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cf = add i64 %2, -1
  call void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.148") align 8 %4, ptr nonnull %1, i64 %i.cf, ptr nonnull @.str.6, i64 10, i1 noundef zeroext true) #20
  %i.cg = call noundef i32 @_ZN6hermes18SourceErrorManager18addNewSourceBufferESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(464) %i.bp, ptr noundef nonnull %4) #20
  store i32 %i.cg, ptr %i.ap, align 8, !tbaa !291
  %i.ch = load ptr, ptr %4, align 8, !tbaa !923   ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i36, label %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.m
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !311
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ch) #20, !inline_history !899
  br label %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit

_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  store i8 0, ptr %i.cl, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 188 ; 4 uses
  store i32 0, ptr %i.cm, align 4, !tbaa !313
  %i.cn = icmp eq i8 %.sroa.3.0.extract.trunc, 3
  %i.co = and i40 %0, 16777216
  %i.cp = icmp ne i40 %i.co, 0                    ; 2 uses
  %or.cond = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %or.cond, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit, label %bb.n

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit: ; preds = %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %.val35 = load i32, ptr %i.ap, align 8, !tbaa !291
  call void @_ZN6hermes6parser21getCommentsInDocBlockERNS_7ContextEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.48") align 8 %9, ptr noundef nonnull align 8 dereferenceable(656) %i.a, i32 noundef %.val35) #20
  %i.cq = load ptr, ptr %9, align 8, !tbaa !314
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !315
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !316
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit
  %.sroa.11.0 = phi i64 [ %i.cw, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit ], [ 0, %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit ]
  %.sroa.8.0 = phi i64 [ %i.cv, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit ], [ 0, %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit ] ; 2 uses
  %.sroa.048.0 = phi ptr [ %i.cq, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit ], [ null, %_ZN12_GLOBAL__N_113ParserContext14setInputBufferEN4llvh9StringRefE.exit ] ; 7 uses
  switch i8 %.sroa.3.0.extract.trunc, label %bb.s [
    i8 4, label %bb.r
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.cm, align 4, !tbaa !313
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 1, ptr %i.cx, align 8, !tbaa !924
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.cm, align 4, !tbaa !313
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 1, ptr %i.cy, align 8, !tbaa !924
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cz = ptrtoint ptr %.sroa.048.0 to i64
  %i.da = sub i64 %.sroa.8.0, %i.cz
  %i.db = sdiv exact i64 %i.da, 24
  %i.dc = call noundef zeroext i1 @_ZN6hermes6parser13hasFlowPragmaEN4llvh8ArrayRefINS0_13StoredCommentEEE(ptr %.sroa.048.0, i64 %i.db) #20
  %i.dd = select i1 %i.dc, i32 1, i32 2
  store i32 %i.dd, ptr %i.cm, align 4, !tbaa !313
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 1, ptr %i.de, align 8, !tbaa !924
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  store i8 1, ptr %i.cl, align 8, !tbaa !312
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  br i1 %i.cp, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.df = ptrtoint ptr %.sroa.048.0 to i64
  %i.dg = sub i64 %.sroa.8.0, %i.df
  %i.dh = sdiv exact i64 %i.dg, 24
  call void @_ZN6hermes6parser11getDocBlockB5cxx11EN4llvh8ArrayRefINS0_13StoredCommentEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr %.sroa.048.0, i64 %i.dh) #20
  %i.di = load ptr, ptr %i.bk, align 8, !tbaa !317 ; 6 uses
  %i.dj = load ptr, ptr %10, align 8, !tbaa !317  ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t
  %13 = icmp eq ptr %i.di, %i.bl
  br i1 %13, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !302 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  switch i64 %i.dn, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dp = load i8, ptr %i.dj, align 1, !tbaa !303
  store i8 %i.dp, ptr %i.di, align 1, !tbaa !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dj, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.dq = load i64, ptr %i.dm, align 8, !tbaa !302 ; 2 uses
  store i64 %i.dq, ptr %i.bm, align 8, !tbaa !302
  %i.dr = load ptr, ptr %i.bk, align 8, !tbaa !317
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !303
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !317
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  store ptr %i.dj, ptr %i.bk, align 8, !tbaa !317
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.du = load <2 x i64>, ptr %i.dt, align 8, !tbaa !303
  store <2 x i64> %i.du, ptr %i.bm, align 8, !tbaa !303
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dv = load i64, ptr %i.bl, align 8, !tbaa !303
  store ptr %i.dj, ptr %i.bk, align 8, !tbaa !317
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dx = load <2 x i64>, ptr %i.dw, align 8, !tbaa !303
  store <2 x i64> %i.dx, ptr %i.bm, align 8, !tbaa !303
  %.not.i = icmp eq ptr %i.di, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.di, ptr %10, align 8, !tbaa !317
  store i64 %i.dv, ptr %i.dk, align 8, !tbaa !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dk, ptr %10, align 8, !tbaa !317
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %i.dy = phi ptr [ %i.di, %bb.x ], [ %i.dk, %bb.y ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dz, align 8, !tbaa !302
  store i8 0, ptr %i.dy, align 1, !tbaa !303
  %i.ea = load ptr, ptr %10, align 8, !tbaa !317  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !303
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ef = load i32, ptr %i.ap, align 8, !tbaa !291
  call void @_ZN6hermes6parser8JSParserC1ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(656) %i.a, i32 noundef %i.ef, i32 noundef 2) #20
  %i.eg = and i40 %0, 4294967296
  %.not11 = icmp eq i40 %i.eg, 0                  ; 2 uses
  br i1 %.not11, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN6hermes6parser8JSParser16setStoreCommentsEb(ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext true) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eh = call { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #20 ; 2 uses
  %i.ei = extractvalue { i64, i8 } %i.eh, 0
  %i.ej = load i8, ptr %i.bi, align 8, !tbaa !318, !range !30, !noundef !31
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = extractvalue { i64, i8 } %i.eh, 1
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val33 = load ptr, ptr %i.bo, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.eo, align 1, !tbaa !920
  store ptr @.str, ptr %3, align 8, !tbaa !303
  store i8 3, ptr %i.en, align 8, !tbaa !921
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %.val33, i32 noundef 0, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 3) #20
  %i.ep = inttoptr i64 %i.ei to ptr
  store ptr %i.ep, ptr %i.bj, align 8, !tbaa !300
  br i1 %.not11, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNK6hermes6parser8JSParser18moveStoredCommentsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.48") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  %i.eq = load ptr, ptr %i.bn, align 8, !tbaa !314 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 840 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !316
  %i.et = load <2 x ptr>, ptr %12, align 16, !tbaa !925
  store <2 x ptr> %i.et, ptr %i.bn, align 8, !tbaa !925
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 16, !tbaa !316
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !316
  %.not.i.i.i.i.i38 = icmp eq ptr %i.eq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i38, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit41, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit39

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit39: ; preds = %bb.af
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = ptrtoint ptr %i.eq to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ey) #19
  %.pr = load ptr, ptr %12, align 16, !tbaa !314  ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit41, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit39
  %i.ez = load ptr, ptr %i.eu, align 16, !tbaa !316
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %.pr to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fc) #19
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit41

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit41: ; preds = %bb.af, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EEaSEOS4_.exit39, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit41, %bb.ae, %bb.ab
  call void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.not.i.i.i42 = icmp eq ptr %.sroa.048.0, null
  br i1 %.not.i.i.i42, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113ParserContextESt14default_deleteIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = ptrtoint ptr %.sroa.048.0 to i64
  %i.fe = sub i64 %.sroa.11.0, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.0, i64 noundef %i.fe) #19
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113ParserContextESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_113ParserContextESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %bb.ah, %bb.ai
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN6hermes6parser21getCommentsInDocBlockERNS_7ContextEj(ptr dead_on_unwind writable sret(%"class.std::vector.48") align 8, ptr noundef nonnull align 8 dereferenceable(656), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZN6hermes6parser13hasFlowPragmaEN4llvh8ArrayRefINS0_13StoredCommentEEE(ptr, i64) local_unnamed_addr #5

declare void @_ZN6hermes6parser11getDocBlockB5cxx11EN4llvh8ArrayRefINS0_13StoredCommentEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #5

declare void @_ZN6hermes6parser8JSParserC1ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(656), i32 noundef, i32 noundef) unnamed_addr #5

declare void @_ZN6hermes6parser8JSParser16setStoreCommentsEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #5

declare { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK6hermes6parser8JSParser18moveStoredCommentsEv(ptr dead_on_unwind writable sret(%"class.std::vector.48") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @hermes_parser_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !314  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !316
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !317  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !303
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #19
end_hunk_0
