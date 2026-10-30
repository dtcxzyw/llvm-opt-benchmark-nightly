Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/hf-cache?download=true
inline.NumInlined: 1408
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8hf_cache16get_cached_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %1, align 8, !tbaa !21
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ab, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN8hf_cache16get_cached_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef %i.ac)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.il

bb.n:                                             ; preds = %_ZN8hf_cacheL16is_valid_repo_idERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.as

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ad = load ptr, ptr %15, align 8, !tbaa !386  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.o

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.ad, ptr %16, align 8, !tbaa !386, !alias.scope !387
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !43, !alias.scope !387
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread

bb.o:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread572

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread572: ; preds = %bb.o
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !47
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !47
  store ptr %i.ad, ptr %16, align 8, !tbaa !386, !alias.scope !388
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.al, align 8, !tbaa !43, !alias.scope !388
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  br label %bb.p

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.o
  %i.am = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  store ptr %i.ad, ptr %16, align 8, !tbaa !386, !alias.scope !388
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.an, align 8, !tbaa !43, !alias.scope !388
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %.not.i.i.i73 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i73, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread572, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.ao = phi ptr [ %i.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread572 ], [ %i.an, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr575 = phi ptr [ %i.af, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread572 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr575, i64 8 ; 7 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i74 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !47
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !47
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.s

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.an, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.ag, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !389
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !390
  %i.au = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ap, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr575, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !46
  %i.ay = load ptr, ptr %.pr575, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pr575) #25, !inline_history !353
  %i.bb = load ptr, ptr %.pr575, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %.pr575) #25, !inline_history !353
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80

bb.u:                                             ; preds = %bb.s
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i77 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.ap, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.w:                                             ; preds = %bb.u
  %i.bg = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i79 = phi i32 [ %i.aw, %bb.v ], [ %i.bg, %bb.w ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.bh, label %bb.x, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80, !prof !48

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr575) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.x
  %i.bi = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread ], [ %i.ao, %bb.x ], [ %i.ao, %bb.t ], [ %i.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 18
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.bx = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 15 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 11 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %32, i64 40 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %32, i64 80 ; 11 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %32, i64 72 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %32, i64 112 ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 104 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %32, i64 128 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %32, i64 144 ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %32, i64 136 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %32, i64 160 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %32, i64 176 ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %32, i64 168 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ie, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80
  %i.dy = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 9 uses
  %i.dz = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.dz, %i.dy
  br i1 %.not, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i81 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i81, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ea, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !46
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25, !inline_history !353
  %i.ei = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25, !inline_history !353
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85thread-pre-split

bb.ac:                                            ; preds = %bb.aa
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i82 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i82, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83

bb.ae:                                            ; preds = %bb.ac
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i84 = phi i32 [ %i.ed, %bb.ad ], [ %i.en, %bb.ae ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i84, 1
  br i1 %i.eo, label %bb.af, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85thread-pre-split, !prof !48

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85thread-pre-split

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85thread-pre-split: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83, %bb.ab
  %.pr235 = load ptr, ptr %i.bi, align 8, !tbaa !43
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85thread-pre-split, %bb.z
  %35 = phi ptr [ %.pr235, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85thread-pre-split ], [ %i.dz, %bb.z ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %.not.i.i.i86 = icmp eq ptr %35, null
  br i1 %.not.i.i.i86, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85
  %i.ep = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ep, align 8, !tbaa !45
  %i.et = getelementptr inbounds nuw i8, ptr %35, i64 12
  store i32 0, ptr %i.et, align 4, !tbaa !46
  %i.eu = load ptr, ptr %35, align 8, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %35) #25, !inline_history !353
  %i.ex = load ptr, ptr %35, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %35) #25, !inline_history !353
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90

bb.ai:                                            ; preds = %bb.ag
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i87 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i.i87, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = add nsw i32 %i.es, -1
  store i32 %i.fb, ptr %i.ep, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88

bb.ak:                                            ; preds = %bb.ai
  %i.fc = atomicrmw volatile add ptr %i.ep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i89 = phi i32 [ %i.es, %bb.aj ], [ %i.fc, %bb.ak ]
  %i.fd = icmp eq i32 %.0.i.i.i.i.i89, 1
  br i1 %i.fd, label %bb.al, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90, !prof !48

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i88, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.fe = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i91 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i91, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit95, label %bb.am

bb.am:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 4 uses
  %i.fg = load atomic i64, ptr %i.ff acquire, align 8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 4294967297
  %i.fi = trunc i64 %i.fg to i32                  ; 2 uses
  br i1 %i.fh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ff, align 8, !tbaa !45
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !46
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25, !inline_history !353
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25, !inline_history !353
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit95

bb.ao:                                            ; preds = %bb.am
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i92 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i92, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = add nsw i32 %i.fi, -1
  store i32 %i.fr, ptr %i.ff, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93

bb.aq:                                            ; preds = %bb.ao
  %i.fs = atomicrmw volatile add ptr %i.ff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i94 = phi i32 [ %i.fi, %bb.ap ], [ %i.fs, %bb.aq ]
  %i.ft = icmp eq i32 %.0.i.i.i.i.i94, 1
  br i1 %i.ft, label %bb.ar, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit95, !prof !48

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit95

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit95: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit90, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.il

bb.as:                                            ; preds = %bb.n
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ik

bb.at:                                            ; preds = %bb.y
  %i.fv = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #25 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !393 ; 2 uses
  switch i8 %i.fx, label %bb.av [
    i8 0, label %bb.au
    i8 3, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.fy = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(41) %i.fv)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.au
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.fy to i8
  br label %bb.av

bb.av:                                            ; preds = %.noexc, %bb.at
  %.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %.noexc ], [ %i.fx, %bb.at ]
  %i.fz = icmp eq i8 %.0.i.i, 2
  br i1 %i.fz, label %bb.ax, label %bb.ie

bb.aw:                                            ; preds = %bb.au, %bb.ie
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA10_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i8 noundef zeroext 2)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i96, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %i.gb) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.ba, %bb.az
  %i.gc = load ptr, ptr %19, align 8, !tbaa !21   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.bl
  br i1 %i.gd, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ge = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.gg = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.gh = and i64 %i.gg, 255
  %.off236 = add nsw i64 %i.gh, -1
  %switch237 = icmp ult i64 %.off236, 254
  br i1 %switch237, label %bb.bg, label %bb.ic

bb.bc:                                            ; preds = %bb.ax
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ay
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.gj, %bb.bd ], [ %i.gi, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ii

bb.bf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
end_hunk_0
begin_hunk_1_@_ZN8hf_cache16get_cached_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25, !inline_history !372
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i

bb.ea:                                            ; preds = %bb.dy
  %i.on = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !400
  %.not.i.i.i.i67.i = icmp eq i8 %i.on, 0
  br i1 %.not.i.i.i.i67.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.oo = add nsw i32 %i.of, -1
  store i32 %i.oo, ptr %i.oc, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i

bb.ec:                                            ; preds = %bb.ea
  %i.op = atomicrmw volatile add ptr %i.oc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i: ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i.i69.i = phi i32 [ %i.of, %bb.eb ], [ %i.op, %bb.ec ]
  %i.oq = icmp eq i32 %.0.i.i.i.i.i69.i, 1
  br i1 %i.oq, label %bb.ed, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i, !prof !48

bb.ed:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i: ; preds = %bb.ed, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i, %bb.dz, %.thread119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !400
  %i.or = load ptr, ptr %i.cg, align 8, !tbaa !43, !noalias !400 ; 8 uses
  %.not.i.i.i71.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i71.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 4 uses
  %i.ot = load atomic i64, ptr %i.os acquire, align 8 ; 2 uses
  %i.ou = icmp eq i64 %i.ot, 4294967297
  %i.ov = trunc i64 %i.ot to i32                  ; 2 uses
  br i1 %i.ou, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 0, ptr %i.os, align 8, !tbaa !45
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  store i32 0, ptr %i.ow, align 4, !tbaa !46
  %i.ox = load ptr, ptr %i.or, align 8, !tbaa !27
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.or) #25, !inline_history !372
  %i.pa = load ptr, ptr %i.or, align 8, !tbaa !27
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8
  call void %i.pc(ptr noundef nonnull align 8 dereferenceable(16) %i.or) #25, !inline_history !372
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i

bb.eg:                                            ; preds = %bb.ee
  %i.pd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !400
  %.not.i.i.i.i72.i = icmp eq i8 %i.pd, 0
  br i1 %.not.i.i.i.i72.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pe = add nsw i32 %i.ov, -1
  store i32 %i.pe, ptr %i.os, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i

bb.ei:                                            ; preds = %bb.eg
  %i.pf = atomicrmw volatile add ptr %i.os, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i: ; preds = %bb.ei, %bb.eh
  %.0.i.i.i.i.i74.i = phi i32 [ %i.ov, %bb.eh ], [ %i.pf, %bb.ei ]
  %i.pg = icmp eq i32 %.0.i.i.i.i.i74.i, 1
  br i1 %i.pg, label %bb.ej, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i, !prof !48

bb.ej:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.or) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i: ; preds = %bb.ej, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i, %bb.ef, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !400
  %i.ph = load ptr, ptr %i.cf, align 8, !tbaa !43, !noalias !400 ; 8 uses
  %.not.i.i.i76.i = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i76.i, label %bb.fm, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 4 uses
  %i.pj = load atomic i64, ptr %i.pi acquire, align 8 ; 2 uses
  %i.pk = icmp eq i64 %i.pj, 4294967297
  %i.pl = trunc i64 %i.pj to i32                  ; 2 uses
  br i1 %i.pk, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.pi, align 8, !tbaa !45
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 0, ptr %i.pm, align 4, !tbaa !46
  %i.pn = load ptr, ptr %i.ph, align 8, !tbaa !27
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load ptr, ptr %i.po, align 8
  call void %i.pp(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #25, !inline_history !372
  %i.pq = load ptr, ptr %i.ph, align 8, !tbaa !27
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #25, !inline_history !372
  br label %bb.fm

bb.em:                                            ; preds = %bb.ek
  %i.pt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !400
  %.not.i.i.i.i77.i = icmp eq i8 %i.pt, 0
  br i1 %.not.i.i.i.i77.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pu = add nsw i32 %i.pl, -1
  store i32 %i.pu, ptr %i.pi, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i

bb.eo:                                            ; preds = %bb.em
  %i.pv = atomicrmw volatile add ptr %i.pi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i.i79.i = phi i32 [ %i.pl, %bb.en ], [ %i.pv, %bb.eo ]
  %i.pw = icmp eq i32 %.0.i.i.i.i.i79.i, 1
  br i1 %i.pw, label %bb.ep, label %bb.fm, !prof !48

bb.ep:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #25
  br label %bb.fm

bb.eq:                                            ; preds = %bb.dx, %bb.cy
  %.pn29.i = phi { ptr, i32 } [ %i.li, %bb.cy ], [ %.pn25.pn.i, %bb.dx ]
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !400
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !400
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !400
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.cu
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %bb.eq ], [ %i.lc, %bb.cu ]
  %i.px = load ptr, ptr %5, align 8, !tbaa !21, !noalias !400 ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.cd
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %bb.er
  %i.pz = load i64, ptr %i.cd, align 8, !tbaa !20, !noalias !400
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !400
  br label %bb.fp

.critedge.i:                                      ; preds = %bb.ct
  %.not.i.i.i84.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i84.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i, label %bb.es

bb.es:                                            ; preds = %.critedge.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 4 uses
  %i.qc = load atomic i64, ptr %i.qb acquire, align 8 ; 2 uses
  %i.qd = icmp eq i64 %i.qc, 4294967297
  %i.qe = trunc i64 %i.qc to i32                  ; 2 uses
  br i1 %i.qd, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.qb, align 8, !tbaa !45
  %i.qf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  store i32 0, ptr %i.qf, align 4, !tbaa !46
  %i.qg = load ptr, ptr %.pre.i, align 8, !tbaa !27
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25, !inline_history !372
  %i.qj = load ptr, ptr %.pre.i, align 8, !tbaa !27
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25, !inline_history !372
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split

bb.eu:                                            ; preds = %bb.es
  %i.qm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !400
  %.not.i.i.i.i85.i = icmp eq i8 %i.qm, 0
  br i1 %.not.i.i.i.i85.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qn = add nsw i32 %i.qe, -1
  store i32 %i.qn, ptr %i.qb, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i

bb.ew:                                            ; preds = %bb.eu
  %i.qo = atomicrmw volatile add ptr %i.qb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i.i87.i = phi i32 [ %i.qe, %bb.ev ], [ %i.qo, %bb.ew ]
  %i.qp = icmp eq i32 %.0.i.i.i.i.i87.i, 1
  br i1 %i.qp, label %bb.ex, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split, !prof !48

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split: ; preds = %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i, %bb.et
  %.pr = load ptr, ptr %i.cg, align 8, !tbaa !43, !noalias !400
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split, %.critedge.i
  %i.qq = phi ptr [ %.pr, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split ], [ %i.lb, %.critedge.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !400
  %.not.i.i.i89.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i89.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 4 uses
  %i.qs = load atomic i64, ptr %i.qr acquire, align 8 ; 2 uses
  %i.qt = icmp eq i64 %i.qs, 4294967297
  %i.qu = trunc i64 %i.qs to i32                  ; 2 uses
  br i1 %i.qt, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.qr, align 8, !tbaa !45
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 12
  store i32 0, ptr %i.qv, align 4, !tbaa !46
  %i.qw = load ptr, ptr %i.qq, align 8, !tbaa !27
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %i.qq) #25, !inline_history !372
  %i.qz = load ptr, ptr %i.qq, align 8, !tbaa !27
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %i.qq) #25, !inline_history !372
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i

bb.fa:                                            ; preds = %bb.ey
  %i.rc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !400
  %.not.i.i.i.i90.i = icmp eq i8 %i.rc, 0
  br i1 %.not.i.i.i.i90.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rd = add nsw i32 %i.qu, -1
  store i32 %i.rd, ptr %i.qr, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i

bb.fc:                                            ; preds = %bb.fa
  %i.re = atomicrmw volatile add ptr %i.qr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i.i92.i = phi i32 [ %i.qu, %bb.fb ], [ %i.re, %bb.fc ]
  %i.rf = icmp eq i32 %.0.i.i.i.i.i92.i, 1
  br i1 %i.rf, label %bb.fd, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i, !prof !48

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qq) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i: ; preds = %bb.fd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i, %bb.ez, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !400
  %i.rg = load ptr, ptr %i.cf, align 8, !tbaa !43, !noalias !400 ; 8 uses
  %.not.i.i.i94.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i94.i, label %bb.fk, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 4 uses
  %i.ri = load atomic i64, ptr %i.rh acquire, align 8 ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 4294967297
  %i.rk = trunc i64 %i.ri to i32                  ; 2 uses
  br i1 %i.rj, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.rh, align 8, !tbaa !45
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 12
  store i32 0, ptr %i.rl, align 4, !tbaa !46
  %i.rm = load ptr, ptr %i.rg, align 8, !tbaa !27
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(16) %i.rg) #25, !inline_history !372
  %i.rp = load ptr, ptr %i.rg, align 8, !tbaa !27
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(16) %i.rg) #25, !inline_history !372
  br label %bb.fk

bb.fg:                                            ; preds = %bb.fe
  %i.rs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !400
  %.not.i.i.i.i95.i = icmp eq i8 %i.rs, 0
  br i1 %.not.i.i.i.i95.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.rt = add nsw i32 %i.rk, -1
  store i32 %i.rt, ptr %i.rh, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i

bb.fi:                                            ; preds = %bb.fg
  %i.ru = atomicrmw volatile add ptr %i.rh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i: ; preds = %bb.fi, %bb.fh
  %.0.i.i.i.i.i97.i = phi i32 [ %i.rk, %bb.fh ], [ %i.ru, %bb.fi ]
  %i.rv = icmp eq i32 %.0.i.i.i.i.i97.i, 1
  br i1 %i.rv, label %bb.fj, label %bb.fk, !prof !48

bb.fj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rg) #25
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i, %bb.ff, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !400
  store ptr %i.cb, ptr %23, align 8, !tbaa !22, !alias.scope !400
  %i.rw = load ptr, ptr %5, align 8, !tbaa !21, !noalias !400 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.cd
  br i1 %i.rx, label %bb.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

bb.fl:                                            ; preds = %bb.fk
  %i.ry = load i64, ptr %i.ce, align 8, !tbaa !19, !noalias !400 ; 3 uses
  %i.rz = icmp ult i64 %i.ry, 16
  call void @llvm.assume(i1 %i.rz)
  %i.sa = add nuw nsw i64 %i.ry, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i64 %i.sa, i1 false)
  br label %.thread189.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.fk
  store ptr %i.rw, ptr %23, align 8, !tbaa !21, !alias.scope !400
  %i.sb = load i64, ptr %i.cd, align 8, !tbaa !20, !noalias !400
  store i64 %i.sb, ptr %i.cb, align 8, !tbaa !20, !alias.scope !400
  %.pre157.i = load i64, ptr %i.ce, align 8, !tbaa !19, !noalias !400
  br label %.thread189.i

.thread189.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.fl
  %i.sc = phi i64 [ %i.ry, %bb.fl ], [ %.pre157.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ]
  store i64 %i.sc, ptr %i.cc, align 8, !tbaa !19, !alias.scope !400
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.fm:                                            ; preds = %bb.ep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i, %bb.el, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !400
  %.pre158.i = load ptr, ptr %5, align 8, !tbaa !21, !noalias !400 ; 2 uses
  %i.sd = icmp eq ptr %.pre158.i, %i.cd
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %bb.fm
  %i.se = load i64, ptr %i.cd, align 8, !tbaa !20, !noalias !400
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %.pre158.i, i64 noundef %i.sf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.thread189.i, %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !400
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %bb.cf
  %i.sg = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !400 ; 2 uses
  %.not.i.i.i102.i = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i102.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.sg) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i: ; preds = %bb.fo, %bb.fn
  %i.sh = load ptr, ptr %3, align 8, !tbaa !21, !noalias !400 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.cn
  br i1 %i.si, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i
  %i.sj = load i64, ptr %i.cn, align 8, !tbaa !20, !noalias !400
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %bb.ch
  %.pn29.pn.pn.i = phi { ptr, i32 } [ %.pn29.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i ], [ %i.jx, %bb.ch ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #25
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.cg
  %.pn29.pn.pn.pn.i = phi { ptr, i32 } [ %.pn29.pn.pn.i, %bb.fp ], [ %i.jw, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !400
  br label %.body139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef zeroext 2)
          to label %bb.fr unwind label %bb.fx

bb.fr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %24, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %25)
          to label %bb.fs unwind label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %i.sl = load ptr, ptr %i.co, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i141, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i142, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.sl) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i142

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i142: ; preds = %bb.ft, %bb.fs
  %i.sm = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.cp
  br i1 %i.sn, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
end_hunk_1
