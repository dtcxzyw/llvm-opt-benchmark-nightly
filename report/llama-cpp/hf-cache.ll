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
  br label %bb.ir

bb.n:                                             ; preds = %_ZN8hf_cacheL16is_valid_repo_idERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.as

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ad = load ptr, ptr %15, align 8, !tbaa !382  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.o

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.ad, ptr %16, align 8, !tbaa !382, !alias.scope !383
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !43, !alias.scope !383
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread

bb.o:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread587

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread587: ; preds = %bb.o
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !47
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !47
  store ptr %i.ad, ptr %16, align 8, !tbaa !382, !alias.scope !384
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.al, align 8, !tbaa !43, !alias.scope !384
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  br label %bb.p

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.o
  %i.am = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  store ptr %i.ad, ptr %16, align 8, !tbaa !382, !alias.scope !384
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.af, ptr %i.an, align 8, !tbaa !43, !alias.scope !384
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %.not.i.i.i73 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i73, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit75.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread587, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.ao = phi ptr [ %i.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread587 ], [ %i.an, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr590 = phi ptr [ %i.af, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread587 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr590, i64 8 ; 7 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !385
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !alias.scope !386
  %i.au = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ap, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr590, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !46
  %i.ay = load ptr, ptr %.pr590, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pr590) #25, !inline_history !351
  %i.bb = load ptr, ptr %.pr590, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %.pr590) #25, !inline_history !351
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
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr590) #25
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

bb.y:                                             ; preds = %bb.ij, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit80
  %i.dy = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 9 uses
  %i.dz = load ptr, ptr %i.bi, align 8, !tbaa !43
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
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25, !inline_history !351
  %i.ei = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25, !inline_history !351
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85

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
  br i1 %i.eo, label %bb.af, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85, !prof !48

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit85: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i83, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %35 = load ptr, ptr %i.bi, align 8, !tbaa !43   ; 8 uses
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
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %35) #25, !inline_history !351
  %i.ex = load ptr, ptr %35, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %35) #25, !inline_history !351
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
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25, !inline_history !351
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25, !inline_history !351
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
  br label %bb.ir

bb.as:                                            ; preds = %bb.n
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.at:                                            ; preds = %bb.y
  %i.fv = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #25 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !389 ; 2 uses
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
  br i1 %i.fz, label %bb.ax, label %bb.ij

bb.aw:                                            ; preds = %bb.au
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

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
  br i1 %switch237, label %bb.bg, label %bb.ih

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
  br label %bb.in

bb.bf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
end_hunk_0
begin_hunk_1_@_ZN8hf_cache16get_cached_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25, !inline_history !368
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i

bb.ec:                                            ; preds = %bb.ea
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !396
  %.not.i.i.i.i67.i = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i67.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.op = add nsw i32 %i.og, -1
  store i32 %i.op, ptr %i.od, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i

bb.ee:                                            ; preds = %bb.ec
  %i.oq = atomicrmw volatile add ptr %i.od, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i69.i = phi i32 [ %i.og, %bb.ed ], [ %i.oq, %bb.ee ]
  %i.or = icmp eq i32 %.0.i.i.i.i.i69.i, 1
  br i1 %i.or, label %bb.ef, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i, !prof !48

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i68.i, %bb.eb, %.thread119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !396
  %i.os = load ptr, ptr %i.cg, align 8, !tbaa !43, !noalias !396 ; 8 uses
  %.not.i.i.i71.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i71.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 4 uses
  %i.ou = load atomic i64, ptr %i.ot acquire, align 8 ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 4294967297
  %i.ow = trunc i64 %i.ou to i32                  ; 2 uses
  br i1 %i.ov, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.ot, align 8, !tbaa !45
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  store i32 0, ptr %i.ox, align 4, !tbaa !46
  %i.oy = load ptr, ptr %i.os, align 8, !tbaa !27
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #25, !inline_history !368
  %i.pb = load ptr, ptr %i.os, align 8, !tbaa !27
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #25, !inline_history !368
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i

bb.ei:                                            ; preds = %bb.eg
  %i.pe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !396
  %.not.i.i.i.i72.i = icmp eq i8 %i.pe, 0
  br i1 %.not.i.i.i.i72.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pf = add nsw i32 %i.ow, -1
  store i32 %i.pf, ptr %i.ot, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i

bb.ek:                                            ; preds = %bb.ei
  %i.pg = atomicrmw volatile add ptr %i.ot, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i74.i = phi i32 [ %i.ow, %bb.ej ], [ %i.pg, %bb.ek ]
  %i.ph = icmp eq i32 %.0.i.i.i.i.i74.i, 1
  br i1 %i.ph, label %bb.el, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i, !prof !48

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.os) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i: ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73.i, %bb.eh, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !396
  %i.pi = load ptr, ptr %i.cf, align 8, !tbaa !43, !noalias !396 ; 8 uses
  %.not.i.i.i76.i = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i76.i, label %bb.fo, label %bb.em

bb.em:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 4 uses
  %i.pk = load atomic i64, ptr %i.pj acquire, align 8 ; 2 uses
  %i.pl = icmp eq i64 %i.pk, 4294967297
  %i.pm = trunc i64 %i.pk to i32                  ; 2 uses
  br i1 %i.pl, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.pj, align 8, !tbaa !45
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store i32 0, ptr %i.pn, align 4, !tbaa !46
  %i.po = load ptr, ptr %i.pi, align 8, !tbaa !27
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dereferenceable(16) %i.pi) #25, !inline_history !368
  %i.pr = load ptr, ptr %i.pi, align 8, !tbaa !27
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(16) %i.pi) #25, !inline_history !368
  br label %bb.fo

bb.eo:                                            ; preds = %bb.em
  %i.pu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !396
  %.not.i.i.i.i77.i = icmp eq i8 %i.pu, 0
  br i1 %.not.i.i.i.i77.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pv = add nsw i32 %i.pm, -1
  store i32 %i.pv, ptr %i.pj, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i

bb.eq:                                            ; preds = %bb.eo
  %i.pw = atomicrmw volatile add ptr %i.pj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i79.i = phi i32 [ %i.pm, %bb.ep ], [ %i.pw, %bb.eq ]
  %i.px = icmp eq i32 %.0.i.i.i.i.i79.i, 1
  br i1 %i.px, label %bb.er, label %bb.fo, !prof !48

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pi) #25
  br label %bb.fo

bb.es:                                            ; preds = %bb.dz, %bb.dy, %bb.cy
  %.pn29.i = phi { ptr, i32 } [ %i.oc, %bb.dz ], [ %.pn25.pn.i, %bb.dy ], [ %i.li, %bb.cy ]
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !396
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !396
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !396
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.cu
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %bb.es ], [ %i.lc, %bb.cu ]
  %i.py = load ptr, ptr %5, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.cd
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %bb.et
  %i.qa = load i64, ptr %i.cd, align 8, !tbaa !20, !noalias !396
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !396
  br label %bb.fr

.critedge.i:                                      ; preds = %bb.ct
  %.not.i.i.i84.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i84.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i, label %bb.eu

bb.eu:                                            ; preds = %.critedge.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 4 uses
  %i.qd = load atomic i64, ptr %i.qc acquire, align 8 ; 2 uses
  %i.qe = icmp eq i64 %i.qd, 4294967297
  %i.qf = trunc i64 %i.qd to i32                  ; 2 uses
  br i1 %i.qe, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.qc, align 8, !tbaa !45
  %i.qg = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  store i32 0, ptr %i.qg, align 4, !tbaa !46
  %i.qh = load ptr, ptr %.pre.i, align 8, !tbaa !27
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25, !inline_history !368
  %i.qk = load ptr, ptr %.pre.i, align 8, !tbaa !27
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25, !inline_history !368
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split

bb.ew:                                            ; preds = %bb.eu
  %i.qn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !396
  %.not.i.i.i.i85.i = icmp eq i8 %i.qn, 0
  br i1 %.not.i.i.i.i85.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.qo = add nsw i32 %i.qf, -1
  store i32 %i.qo, ptr %i.qc, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i

bb.ey:                                            ; preds = %bb.ew
  %i.qp = atomicrmw volatile add ptr %i.qc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i.i87.i = phi i32 [ %i.qf, %bb.ex ], [ %i.qp, %bb.ey ]
  %i.qq = icmp eq i32 %.0.i.i.i.i.i87.i, 1
  br i1 %i.qq, label %bb.ez, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split, !prof !48

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.i, %bb.ez
  %.pr = load ptr, ptr %i.cg, align 8, !tbaa !43, !noalias !396
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split, %.critedge.i
  %i.qr = phi ptr [ %.pr, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.ithread-pre-split ], [ %i.lb, %.critedge.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !396
  %.not.i.i.i89.i = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i89.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 4 uses
  %i.qt = load atomic i64, ptr %i.qs acquire, align 8 ; 2 uses
  %i.qu = icmp eq i64 %i.qt, 4294967297
  %i.qv = trunc i64 %i.qt to i32                  ; 2 uses
  br i1 %i.qu, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.qs, align 8, !tbaa !45
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 12
  store i32 0, ptr %i.qw, align 4, !tbaa !46
  %i.qx = load ptr, ptr %i.qr, align 8, !tbaa !27
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8
  call void %i.qz(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #25, !inline_history !368
  %i.ra = load ptr, ptr %i.qr, align 8, !tbaa !27
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #25, !inline_history !368
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i

bb.fc:                                            ; preds = %bb.fa
  %i.rd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !396
  %.not.i.i.i.i90.i = icmp eq i8 %i.rd, 0
  br i1 %.not.i.i.i.i90.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.re = add nsw i32 %i.qv, -1
  store i32 %i.re, ptr %i.qs, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i

bb.fe:                                            ; preds = %bb.fc
  %i.rf = atomicrmw volatile add ptr %i.qs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i.i92.i = phi i32 [ %i.qv, %bb.fd ], [ %i.rf, %bb.fe ]
  %i.rg = icmp eq i32 %.0.i.i.i.i.i92.i, 1
  br i1 %i.rg, label %bb.ff, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i, !prof !48

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #25
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i: ; preds = %bb.ff, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i91.i, %bb.fb, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !396
  %i.rh = load ptr, ptr %i.cf, align 8, !tbaa !43, !noalias !396 ; 8 uses
  %.not.i.i.i94.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i94.i, label %bb.fm, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 4 uses
  %i.rj = load atomic i64, ptr %i.ri acquire, align 8 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 4294967297
  %i.rl = trunc i64 %i.rj to i32                  ; 2 uses
  br i1 %i.rk, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 0, ptr %i.ri, align 8, !tbaa !45
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 0, ptr %i.rm, align 4, !tbaa !46
  %i.rn = load ptr, ptr %i.rh, align 8, !tbaa !27
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #25, !inline_history !368
  %i.rq = load ptr, ptr %i.rh, align 8, !tbaa !27
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #25, !inline_history !368
  br label %bb.fm

bb.fi:                                            ; preds = %bb.fg
  %i.rt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !396
  %.not.i.i.i.i95.i = icmp eq i8 %i.rt, 0
  br i1 %.not.i.i.i.i95.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ru = add nsw i32 %i.rl, -1
  store i32 %i.ru, ptr %i.ri, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i

bb.fk:                                            ; preds = %bb.fi
  %i.rv = atomicrmw volatile add ptr %i.ri, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i: ; preds = %bb.fk, %bb.fj
  %.0.i.i.i.i.i97.i = phi i32 [ %i.rl, %bb.fj ], [ %i.rv, %bb.fk ]
  %i.rw = icmp eq i32 %.0.i.i.i.i.i97.i, 1
  br i1 %i.rw, label %bb.fl, label %bb.fm, !prof !48

bb.fl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #25
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i96.i, %bb.fh, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !396
  store ptr %i.cb, ptr %23, align 8, !tbaa !22, !alias.scope !396
  %i.rx = load ptr, ptr %5, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.cd
  br i1 %i.ry, label %bb.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

bb.fn:                                            ; preds = %bb.fm
  %i.rz = load i64, ptr %i.ce, align 8, !tbaa !19, !noalias !396 ; 3 uses
  %i.sa = icmp ult i64 %i.rz, 16
  call void @llvm.assume(i1 %i.sa)
  %i.sb = add nuw nsw i64 %i.rz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i64 %i.sb, i1 false)
  br label %.thread192.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.fm
  store ptr %i.rx, ptr %23, align 8, !tbaa !21, !alias.scope !396
  %i.sc = load i64, ptr %i.cd, align 8, !tbaa !20, !noalias !396
  store i64 %i.sc, ptr %i.cb, align 8, !tbaa !20, !alias.scope !396
  %.pre160.i = load i64, ptr %i.ce, align 8, !tbaa !19, !noalias !396
  br label %.thread192.i

.thread192.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.fn
  %i.sd = phi i64 [ %i.rz, %bb.fn ], [ %.pre160.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ]
  store i64 %i.sd, ptr %i.cc, align 8, !tbaa !19, !alias.scope !396
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.fo:                                            ; preds = %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78.i, %bb.en, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !396
  %.pre161.i = load ptr, ptr %5, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.se = icmp eq ptr %.pre161.i, %i.cd
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %bb.fo
  %i.sf = load i64, ptr %i.cd, align 8, !tbaa !20, !noalias !396
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %.pre161.i, i64 noundef %i.sg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.thread192.i, %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !396
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %bb.cf
  %i.sh = load ptr, ptr %i.cm, align 8, !tbaa !24, !noalias !396 ; 2 uses
  %.not.i.i.i102.i = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i102.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.sh) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i: ; preds = %bb.fq, %bb.fp
  %i.si = load ptr, ptr %3, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.cn
  br i1 %i.sj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i
  %i.sk = load i64, ptr %i.cn, align 8, !tbaa !20, !noalias !396
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %bb.ch
  %.pn29.pn.pn.i = phi { ptr, i32 } [ %.pn29.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i ], [ %i.jx, %bb.ch ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #25
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.cg
  %.pn29.pn.pn.pn.i = phi { ptr, i32 } [ %.pn29.pn.pn.i, %bb.fr ], [ %i.jw, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !396
  br label %.body139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i103.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef zeroext 2)
          to label %bb.ft unwind label %bb.fz

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i105.i
  invoke void @_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %24, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %25)
          to label %bb.fu unwind label %bb.ga

bb.fu:                                            ; preds = %bb.ft
  %i.sm = load ptr, ptr %i.co, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i141, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i142, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.sm) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i142

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i142: ; preds = %bb.fv, %bb.fu
  %i.sn = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.cp
  br i1 %i.so, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
end_hunk_1
