Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tr_svt_benchmark?download=true
inline.NumInlined: 777
inline.NumDeleted: 393
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:.noexc.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.am, label %bb.f, label %bb.k

.critedge:                                        ; preds = %bb.c
  %i.ar = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %.critedge
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  invoke void @_ZNK2cv17CommandLineParser12printMessageEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fr unwind label %bb.j

bb.g:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.h:                                             ; preds = %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.e
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.h
  %i.az = load i64, ptr %i.e, align 8, !tbaa !32
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.g
  %.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %i.aw, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ft

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.n
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %.body
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !32
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ab
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.i
  %i.bi = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.fs

bb.j:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN2cv8datasets6TR_svt6createEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.30") align 8 %7)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %7, align 8, !tbaa !92    ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %7, align 8, !tbaa !92
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv8datasets7Dataset7getTestEi(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, i32 noundef 0)
          to label %bb.n unwind label %.thread448 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !95 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !95
  %.not4551050 = icmp eq ptr %i.br, %i.bt
  br i1 %.not4551050, label %._crit_edge1061, label %.lr.ph1060

.lr.ph1060:                                       ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 432
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 224
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.cz = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %34, i64 432
  %i.dj = getelementptr inbounds nuw i8, ptr %34, i64 224
  %i.dk = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %38, i64 20
  %i.dr = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.x

._crit_edge1061.loopexit:                         ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.eh = uitofp i32 %.1158.lcssa1373 to double
  %i.ei = uitofp i32 %.1153.lcssa1375 to double
  %i.ej = uitofp i32 %i.gd to double
  %i.ek = ptrtoint ptr %.sroa.11.2 to i64
  %i.el = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ej, i64 1
  br label %._crit_edge1061

._crit_edge1061:                                  ; preds = %._crit_edge1061.loopexit, %bb.n
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.n ], [ %i.ek, %._crit_edge1061.loopexit ]
  %.sroa.0433.0.lcssa = phi ptr [ null, %bb.n ], [ %.sroa.0433.2, %._crit_edge1061.loopexit ] ; 3 uses
  %.0157.lcssa = phi double [ 0.000000e+00, %bb.n ], [ %i.eh, %._crit_edge1061.loopexit ]
  %i.en = phi <2 x double> [ zeroinitializer, %bb.n ], [ %i.em, %._crit_edge1061.loopexit ]
  %i.eo = insertelement <2 x double> poison, double %.0157.lcssa, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fdiv <2 x double> %i.ep, %i.en          ; 2 uses
  %45 = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %46 = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %47 = fmul <2 x double> %45, %46
  %48 = fadd <2 x double> %45, %46
  %49 = extractelement <2 x double> %47, i64 0
  %i.er = fmul double %49, 2.000000e+00
  %50 = extractelement <2 x double> %48, i64 1
  %i.es = fdiv double %i.er, %50
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.es) ; 0 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0433.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge1061
  %i.eu = ptrtoint ptr %.sroa.0433.0.lcssa to i64
  %i.ev = sub i64 %.sroa.11.0.lcssa, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0433.0.lcssa, i64 noundef %i.ev) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge1061, %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !47 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv8datasets6TR_svtELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ey, align 8, !tbaa !79
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !81
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !82
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25, !inline_history !97
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !82
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25, !inline_history !97
  br label %_ZNSt12__shared_ptrIN2cv8datasets6TR_svtELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i273 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i273, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.fb, %bb.s ], [ %i.fl, %bb.t ]
  %i.fm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fm, label %bb.u, label %_ZNSt12__shared_ptrIN2cv8datasets6TR_svtELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25
  br label %_ZNSt12__shared_ptrIN2cv8datasets6TR_svtELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv8datasets6TR_svtELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.fr

bb.v:                                             ; preds = %bb.k
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.w:                                             ; preds = %bb.l
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit404

.thread448:                                       ; preds = %bb.m
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit404

bb.x:                                             ; preds = %.lr.ph1060, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %.01511058 = phi i32 [ 0, %.lr.ph1060 ], [ %i.gd, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ]
  %.01521057 = phi i32 [ 0, %.lr.ph1060 ], [ %.1153.lcssa1375, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  %.01571056 = phi i32 [ 0, %.lr.ph1060 ], [ %.1158.lcssa1373, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  %.01661055 = phi i32 [ 0, %.lr.ph1060 ], [ %i.fr, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ]
  %.sroa.0433.01054 = phi ptr [ null, %.lr.ph1060 ], [ %.sroa.0433.2, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 8 uses
  %.sroa.8.01053 = phi ptr [ null, %.lr.ph1060 ], [ %.sroa.8.1, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.11.01052 = phi ptr [ null, %.lr.ph1060 ], [ %.sroa.11.2, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 15 uses
  %.sroa.0430.01051 = phi ptr [ %i.br, %.lr.ph1060 ], [ %i.ace, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  %i.fq = load ptr, ptr %.sroa.0430.01051, align 8, !tbaa !98 ; 7 uses
  %i.fr = add i32 %.01661055, 1                   ; 2 uses
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !28
  %i.ft = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.fr, ptr noundef %i.fs) ; 0 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 56 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 64 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !101
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !104
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = sdiv exact i64 %i.ga, 48
  %i.gc = trunc i64 %i.gb to i32                  ; 3 uses
  %i.gd = add i32 %.01511058, %i.gc               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ge = load ptr, ptr %4, align 8, !tbaa !28, !noalias !105
  %i.gf = load i64, ptr %i.r, align 8, !tbaa !9, !noalias !105 ; 3 uses
  %i.gg = load ptr, ptr %i.fq, align 8, !tbaa !28, !noalias !105
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !9, !noalias !105 ; 3 uses
  store ptr %i.bu, ptr %10, align 8, !tbaa !88, !alias.scope !108
  store i64 0, ptr %i.bv, align 8, !tbaa !9, !alias.scope !108
  store i8 0, ptr %i.bu, align 8, !tbaa !32, !alias.scope !108
  %i.gj = add i64 %i.gi, %i.gf
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.gj)
          to label %bb.y unwind label %.loopexit465

bb.y:                                             ; preds = %bb.x
  %i.gk = load i64, ptr %i.bv, align 8, !tbaa !9, !alias.scope !108
  %i.gl = sub i64 4611686018427387903, %i.gk
  %i.gm = icmp ult i64 %i.gl, %i.gf
  br i1 %i.gm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ge, i64 noundef %i.gf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit465 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.go = load i64, ptr %i.bv, align 8, !tbaa !9, !alias.scope !108
  %i.gp = sub i64 4611686018427387903, %i.go
  %i.gq = icmp ult i64 %i.gp, %i.gi
  br i1 %i.gq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp466

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.gg, i64 noundef %i.gi)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit465 ; 0 uses

.loopexit465:                                     ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit467 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp466:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp468 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp466, %.loopexit465
  %lpad.phi469 = phi { ptr, i32 } [ %lpad.loopexit467, %.loopexit465 ], [ %lpad.loopexit.split-lp468, %.loopexit.split-lp466 ] ; 2 uses
  %i.gs = load ptr, ptr %10, align 8, !tbaa !28, !alias.scope !108 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.bu
  br i1 %i.gt, label %.body274, label %.body274.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.gu = load ptr, ptr %10, align 8, !tbaa !28   ; 4 uses
  store ptr %i.bw, ptr %9, align 8, !tbaa !88
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #26
          to label %.noexc278 unwind label %.loopexit.split-lp471

.noexc278:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.gw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gu) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.gw, ptr %i.c, align 8, !tbaa !19
  %i.gx = icmp ugt i64 %i.gw, 15
  br i1 %i.gx, label %.noexc.i277, label %._crit_edge.i.i276

.noexc.i277:                                      ; preds = %bb.ab
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc279 unwind label %.loopexit470 ; 2 uses

.noexc279:                                        ; preds = %.noexc.i277
  store ptr %i.gy, ptr %9, align 8, !tbaa !28
  %i.gz = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.gz, ptr %i.bw, align 8, !tbaa !32
  br label %._crit_edge.i.i276

._crit_edge.i.i276:                               ; preds = %.noexc279, %bb.ab
  %i.ha = phi ptr [ %i.gy, %.noexc279 ], [ %i.bw, %bb.ab ] ; 2 uses
  switch i64 %i.gw, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i276
  %i.hb = load i8, ptr %i.gu, align 1, !tbaa !32
end_hunk_0
