Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/trjcat?download=true
inline.NumInlined: 430
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z10gmx_trjcatiPPc:bb.a
  br i1 %i.hq, label %.lr.ph623, label %._crit_edge624

.lr.ph623:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 8 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  br label %bb.cm

._crit_edge624:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ht = load ptr, ptr %30, align 8, !tbaa !21   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.gk
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge624
  %i.hv = load i64, ptr %i.gk, align 8, !tbaa !22
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %.pre680 = load ptr, ptr %29, align 8, !tbaa !23
  br label %bb.cw

bb.cj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %.lr.ph213.i, %.noexc339
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body332

.loopexit.split-lp.loopexit:                      ; preds = %bb.el
  %lpad.loopexit515 = landingpad { ptr, i32 }
          cleanup
  br label %.body332

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.noexc.i.i.i.i.i, %bb.eh, %bb.ej, %bb.ek
  %lpad.loopexit518 = landingpad { ptr, i32 }
          cleanup
  br label %.body332

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.dm
  %lpad.loopexit522 = landingpad { ptr, i32 }
          cleanup
  br label %.body332

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cx
  %lpad.loopexit525 = landingpad { ptr, i32 }
          cleanup
  br label %.body332

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cw, %.noexc321, %.noexc322, %._crit_edge.thread.i, %._crit_edge.i, %bb.dd, %bb.di, %bb.dq, %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body332

bb.ck:                                            ; preds = %.noexc.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.cl:                                            ; preds = %bb.cg
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cm:                                            ; preds = %.lr.ph623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %indvars.iv673 = phi i64 [ 0, %.lr.ph623 ], [ %indvars.iv.next674, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.ia = load ptr, ptr %30, align 8, !tbaa !21
  %i.ib = trunc nuw nsw i64 %indvars.iv673 to i32
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull @.str.61, i32 noundef %i.ib, ptr noundef %i.ia)
          to label %bb.cn unwind label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  %i.ic = load ptr, ptr %29, align 8, !tbaa !23
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %indvars.iv673 ; 9 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !21 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 4 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  %i.ih = load ptr, ptr %31, align 8, !tbaa !21   ; 6 uses
  %i.ii = icmp eq ptr %i.ih, %i.hr                ; 2 uses
  br i1 %i.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cn
  br i1 %i.ii, label %bb.co, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cn
  br i1 %i.ii, label %bb.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ij = load i64, ptr %i.hs, align 8, !tbaa !27 ; 3 uses
  %i.ik = icmp ult i64 %i.ij, 16
  call void @llvm.assume(i1 %i.ik)
  %.not21.i = icmp eq ptr %31, %i.id
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.cp, !prof !88

bb.cp:                                            ; preds = %bb.co
  switch i64 %i.ij, label %bb.cr [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.il = load i8, ptr %i.ih, align 1, !tbaa !22
  store i8 %i.il, ptr %i.ie, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ie, ptr align 1 %i.ih, i64 %i.ij, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.im = load i64, ptr %i.hs, align 8, !tbaa !27 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %i.im, ptr %i.in, align 8, !tbaa !27
  %i.io = load ptr, ptr %i.id, align 8, !tbaa !21
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i8 0, ptr %i.ip, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %31, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ih, ptr %i.id, align 8, !tbaa !21
  %i.ir = load i64, ptr %i.hs, align 8, !tbaa !27
  store i64 %i.ir, ptr %i.iq, align 8, !tbaa !27
  %i.is = load i64, ptr %i.hr, align 8, !tbaa !22
  store i64 %i.is, ptr %i.if, align 8, !tbaa !22
  br label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.it = load i64, ptr %i.if, align 8, !tbaa !22
  store ptr %i.ih, ptr %i.id, align 8, !tbaa !21
  %i.iu = load i64, ptr %i.hs, align 8, !tbaa !27
  %i.iv = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %i.iu, ptr %i.iv, align 8, !tbaa !27
  %i.iw = load i64, ptr %i.hr, align 8, !tbaa !22
  store i64 %i.iw, ptr %i.if, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.ie, null
  br i1 %.not.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ie, ptr %31, align 8, !tbaa !21
  store i64 %i.it, ptr %i.hr, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hr, ptr %31, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cs, %bb.ct
  %i.ix = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ie, %bb.cs ], [ %i.hr, %bb.ct ], [ %i.ih, %bb.co ]
  store i64 0, ptr %i.hs, align 8, !tbaa !27
  store i8 0, ptr %i.ix, align 1, !tbaa !22
  %i.iy = load ptr, ptr %31, align 8, !tbaa !21   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.hr
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ja = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %i.jc = load i32, ptr %i.r, align 4, !tbaa !61
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next674, %i.jd
  br i1 %i.je, label %bb.cm, label %._crit_edge624, !llvm.loop !37

bb.cu:                                            ; preds = %bb.cm
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cl
  %.pn270 = phi { ptr, i32 } [ %i.jf, %bb.cu ], [ %i.hz, %bb.cl ] ; 2 uses
  %i.jg = load ptr, ptr %30, align 8, !tbaa !21   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.gk
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.cv
  %i.ji = load i64, ptr %i.gk, align 8, !tbaa !22
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %bb.ck
  %.pn270.pn = phi { ptr, i32 } [ %i.hy, %bb.ck ], [ %.pn270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %.pn270, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %.body332

bb.cw:                                            ; preds = %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jk = phi ptr [ %i.gd, %bb.cb ], [ %.pre680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.jl = load i32, ptr %i.q, align 4, !tbaa !61  ; 4 uses
  %i.jm = load ptr, ptr %i.o, align 8, !tbaa !65  ; 3 uses
  %i.jn = load float, ptr %i.p, align 4, !tbaa !86
  %i.jo = load i32, ptr %i.l, align 4, !tbaa !61
  %i.jp = load ptr, ptr %i.m, align 8, !tbaa !63  ; 2 uses
  %i.jq = load float, ptr @_ZZ10gmx_trjcatiPPcE2dt, align 4, !tbaa !86 ; 2 uses
  %i.jr = load ptr, ptr %i.s, align 8, !tbaa !77  ; 2 uses
  %51 = ptrtoint ptr %i.ed to i64
  %52 = sub i64 %51, %.pre-phi
  %i.js = ashr exact i64 %52, 5                   ; 14 uses
  %i.jt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.53, i32 noundef 342, i64 noundef %i.js, i64 noundef 8)
          to label %.noexc321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc321:                                        ; preds = %bb.cw
  %i.ju = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.53, i32 noundef 343, i64 noundef %i.js, i64 noundef 176)
          to label %.noexc322 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc322:                                        ; preds = %.noexc321
  %i.jv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.53, i32 noundef 344, i64 noundef %i.js, i64 noundef 1)
          to label %.noexc323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc323:                                        ; preds = %.noexc322
  %i.jw = icmp sgt i64 %i.js, 0                   ; 2 uses
  br i1 %i.jw, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.noexc323
  %i.jx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.53, i32 noundef 377, i64 noundef %i.js, i64 noundef 8)
          to label %._crit_edge200.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %.noexc323
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.cx

._crit_edge.i:                                    ; preds = %bb.dl
  %i.ka = fpext float %.183.i to double
  %i.kb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.53, i32 noundef 377, i64 noundef %i.js, i64 noundef 8)
          to label %.noexc325 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc325:                                        ; preds = %._crit_edge.i
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.dm

bb.cx:                                            ; preds = %bb.dl, %.lr.ph.i
  %.081195.i = phi i64 [ 0, %.lr.ph.i ], [ %i.lh, %bb.dl ] ; 4 uses
  %.082194.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.183.i, %bb.dl ]
  %.084193.i = phi float [ -1.000000e+00, %.lr.ph.i ], [ %.185.i, %bb.dl ] ; 4 uses
  %.087192.i = phi i32 [ -1, %.lr.ph.i ], [ %.188.i, %bb.dl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %.081195.i ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !21
  store ptr %i.kf, ptr %i.f, align 8, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext 2)
          to label %.noexc326 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc326:                                        ; preds = %bb.cx
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.081195.i
  %i.kh = getelementptr inbounds nuw [176 x i8], ptr %i.ju, i64 %.081195.i ; 6 uses
  %i.ki = invoke noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef %i.jr, ptr noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %i.kh, i32 noundef 2)
          to label %bb.cy unwind label %bb.db     ; 0 uses

bb.cy:                                            ; preds = %.noexc326
  %i.kj = load ptr, ptr %i.jy, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i320 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i.i320, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull %i.kj) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.cz, %bb.cy
  %i.kk = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.jz
  br i1 %i.kl, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.km = load i64, ptr %i.jz, align 8, !tbaa !22
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ko = icmp eq i32 %.087192.i, -1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !92 ; 2 uses
  br i1 %i.ko, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 28
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !93 ; 2 uses
  br label %bb.dg

bb.db:                                            ; preds = %.noexc326
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.body332

bb.dc:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %.not97.i = icmp eq i32 %.087192.i, %i.kq
  br i1 %.not97.i, label %._crit_edge681, label %bb.dd

._crit_edge681:                                   ; preds = %bb.dc
  %.phi.trans.insert682 = getelementptr inbounds nuw i8, ptr %i.kh, i64 28
  %.pre683 = load float, ptr %.phi.trans.insert682, align 4, !tbaa !93
  br label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc327 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc327:                                        ; preds = %bb.dd
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kv = load ptr, ptr %i.ke, align 8, !tbaa !21
  %i.kw = load i32, ptr %i.ku, align 8, !tbaa !92
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 357, ptr noundef nonnull @.str.90, ptr noundef %i.kv, i32 noundef %i.kw, i32 noundef %.087192.i) #21
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %.noexc327
  unreachable

bb.df:                                            ; preds = %.noexc327
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body332

bb.dg:                                            ; preds = %._crit_edge681, %bb.da
  %i.ky = phi float [ %i.ks, %bb.da ], [ %.pre683, %._crit_edge681 ] ; 2 uses
  %.188.i = phi i32 [ %i.kq, %bb.da ], [ %.087192.i, %._crit_edge681 ]
  %.183.i = phi float [ %i.ks, %bb.da ], [ %.082194.i, %._crit_edge681 ] ; 2 uses
  %i.kz = fcmp oeq float %.084193.i, -1.000000e+00
  br i1 %i.kz, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.la = fcmp une float %.084193.i, %i.ky
  br i1 %i.la, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc328 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc328:                                        ; preds = %bb.di
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kh, i64 28
  %i.lc = load ptr, ptr %i.ke, align 8, !tbaa !21
  %i.ld = load float, ptr %i.lb, align 4, !tbaa !93
  %i.le = fpext float %i.ld to double
  %i.lf = fpext float %.084193.i to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 369, ptr noundef nonnull @.str.91, ptr noundef %i.lc, double noundef %i.le, double noundef %i.lf) #21
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %.noexc328
  unreachable

bb.dk:                                            ; preds = %.noexc328
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body332

bb.dl:                                            ; preds = %bb.dh, %bb.dg
  %.185.i = phi float [ %.084193.i, %bb.dh ], [ %i.ky, %bb.dg ] ; 2 uses
  %i.lh = add nuw nsw i64 %.081195.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lh, %i.js
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cx, !llvm.loop !38

._crit_edge200.i:                                 ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit109.i, %._crit_edge.thread.i
  %i.li = phi ptr [ %i.jx, %._crit_edge.thread.i ], [ %i.kb, %_ZNSt10filesystem7__cxx114pathD2Ev.exit109.i ] ; 2 uses
  %.082.lcssa260.i = phi double [ 0.000000e+00, %._crit_edge.thread.i ], [ %i.ka, %_ZNSt10filesystem7__cxx114pathD2Ev.exit109.i ]
  %.084.lcssa259.i = phi float [ -1.000000e+00, %._crit_edge.thread.i ], [ %.185.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit109.i ]
  %i.lj = load float, ptr %i.jm, align 4, !tbaa !86
  %i.lk = fsub float %i.lj, %.084.lcssa259.i
  %i.ll = call noundef float @llvm.round.f32(float %i.lk)
  %i.lm = fcmp une float %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.dq, label %.preheader161.i

.preheader161.i:                                  ; preds = %._crit_edge200.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ju, i64 28 ; 3 uses
  %i.lo = fpext float %i.jn to double
  %i.lp = fmul double %i.lo, 1.000000e-01
  %i.lq = trunc i64 %i.js to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  %i.lu = fcmp oeq float %i.jq, 0.000000e+00
  %i.lv = fpext float %i.jq to double
  %.not95.i = icmp eq ptr %i.jp, null
  %i.lw = sext i32 %i.jl to i64                   ; 2 uses
  br label %.backedge.i

bb.dm:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit109.i, %.noexc325
  %.076197.i = phi i64 [ 0, %.noexc325 ], [ %i.mg, %_ZNSt10filesystem7__cxx114pathD2Ev.exit109.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %.076197.i
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !21
  store ptr %i.ly, ptr %i.g, align 8, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %.noexc329 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
end_hunk_0
begin_hunk_1_@_Z10gmx_trjcatiPPc:bb.a
bb.fc:                                            ; preds = %.noexc363
  unreachable

.loopexit.i:                                      ; preds = %.noexc362
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

.loopexit.split-lp.i:                             ; preds = %.noexc356
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.fv

bb.fe:                                            ; preds = %.noexc363
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.fv

bb.ff:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i352
  %i.sa = load i8, ptr %i.qd, align 8, !tbaa !96, !range !80, !noundef !81
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.sc = load float, ptr %i.qe, align 4, !tbaa !93
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.02738.i
  store float %i.sc, ptr %i.sd, align 4, !tbaa !86
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.02738.i
  store float 0.000000e+00, ptr %i.se, align 4, !tbaa !86
  %i.sf = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.sg = call i64 @fwrite(ptr nonnull @.str.79, i64 45, i64 1, ptr %i.sf) #23 ; 0 uses
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.sh = load i32, ptr %i.qg, align 8, !tbaa !92 ; 2 uses
  br i1 %i.qf, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  %.not30.i = icmp eq i32 %i.qz, %i.sh
  br i1 %.not30.i, label %bb.fp, label %.loopexit46.i

.loopexit46.i:                                    ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc364 unwind label %.loopexit.split-lp541

.noexc364:                                        ; preds = %.loopexit46.i
  %i.si = load i32, ptr %i.qg, align 8, !tbaa !92
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 124, ptr noundef nonnull @.str.98, i32 noundef %i.qz, i32 noundef %i.si) #21
          to label %bb.fk unwind label %bb.fl

bb.fk:                                            ; preds = %.noexc364
  unreachable

bb.fl:                                            ; preds = %.noexc364
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.fv

bb.fm:                                            ; preds = %bb.fi
  %.not.i353 = icmp sgt i32 %i.sh, %.1499
  br i1 %.not.i353, label %bb.fp, label %.loopexit45.i

.loopexit45.i:                                    ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %.noexc365 unwind label %.loopexit.split-lp541

.noexc365:                                        ; preds = %.loopexit45.i
  %i.sk = load i32, ptr %i.qg, align 8, !tbaa !92
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 131, ptr noundef nonnull @.str.99, i32 noundef %i.sk, i32 noundef %.1499) #21
          to label %bb.fn unwind label %bb.fo

bb.fn:                                            ; preds = %.noexc365
  unreachable

bb.fo:                                            ; preds = %.noexc365
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.fv

bb.fp:                                            ; preds = %bb.fm, %bb.fj
  %i.sm = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.sn = invoke noundef zeroext i1 @_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe(ptr noundef %i.pz, ptr noundef %i.sm, ptr noundef nonnull %4)
          to label %.noexc366 unwind label %.loopexit540

.noexc366:                                        ; preds = %bb.fp
  %i.so = load i8, ptr %i.qd, align 8, !range !80
  %i.sp = trunc nuw i8 %i.so to i1
  %or.cond.i = select i1 %i.sn, i1 %i.sp, i1 false
  br i1 %or.cond.i, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.noexc366
  %i.sq = load float, ptr %i.qe, align 4, !tbaa !93
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.02738.i
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !86
  %i.st = fsub float %i.sq, %i.ss
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.noexc366
  %.sink47.i = phi float [ %i.st, %bb.fq ], [ 0.000000e+00, %.noexc366 ]
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.02738.i
  store float %.sink47.i, ptr %i.su, align 4, !tbaa !86
  %i.sv = load ptr, ptr %i.c, align 8, !tbaa !95
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.sv)
          to label %.noexc367 unwind label %.loopexit540

.noexc367:                                        ; preds = %bb.fr
  %i.sw = load i8, ptr %i.qh, align 8, !tbaa !97, !range !80, !noundef !81
  %i.sx = trunc nuw i8 %i.sw to i1
  br i1 %i.sx, label %bb.fs, label %.noexc368

bb.fs:                                            ; preds = %.noexc367
  %i.sy = load ptr, ptr %i.qi, align 8, !tbaa !98
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.53, i32 noundef 148, ptr noundef %i.sy)
          to label %.noexc368 unwind label %.loopexit540

.noexc368:                                        ; preds = %bb.fs, %.noexc367
  %i.sz = load i8, ptr %i.qj, align 8, !tbaa !99, !range !80, !noundef !81
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.ft, label %.noexc369

bb.ft:                                            ; preds = %.noexc368
  %i.tb = load ptr, ptr %i.qk, align 8, !tbaa !100
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.53, i32 noundef 152, ptr noundef %i.tb)
          to label %.noexc369 unwind label %.loopexit540

.noexc369:                                        ; preds = %bb.ft, %.noexc368
  %i.tc = load i8, ptr %i.ql, align 8, !tbaa !101, !range !80, !noundef !81
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.fu, label %.noexc370

bb.fu:                                            ; preds = %.noexc369
  %i.te = load ptr, ptr %i.qm, align 8, !tbaa !102
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.53, i32 noundef 156, ptr noundef %i.te)
          to label %.noexc370 unwind label %.loopexit540

.noexc370:                                        ; preds = %bb.fu, %.noexc369
  %i.tf = add nuw nsw i64 %.02738.i, 1            ; 2 uses
  %exitcond.not.i354 = icmp eq i64 %i.tf, %i.pu
  br i1 %exitcond.not.i354, label %.loopexit545, label %.peel.next.i, !llvm.loop !45

bb.fv:                                            ; preds = %bb.fo, %bb.fl, %bb.fe, %bb.fd
  %.pn.i = phi { ptr, i32 } [ %i.sj, %bb.fl ], [ %i.sl, %bb.fo ], [ %i.rz, %bb.fe ], [ %lpad.phi.i, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.body371

.loopexit545:                                     ; preds = %.noexc370, %.noexc361, %bb.eo
  %i.tg = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i = call i32 @fputc(i32 10, ptr %i.tg)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.th = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.53, i32 noundef 643, i64 noundef %i.pv, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit375 unwind label %.loopexit.split-lp541 ; 34 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit375:       ; preds = %.loopexit545
  %i.ti = ptrtoaddr ptr %i.th to i64
  %i.tj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.53, i32 noundef 644, i64 noundef %i.pv, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp541 ; 11 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit375
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.tk = icmp ugt i64 %i.pt, 9223372036854775776
  br i1 %i.tk, label %.noexc.i.i387, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i382

.noexc.i.i387:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #21
          to label %.noexc388 unwind label %bb.hd

.noexc388:                                        ; preds = %.noexc.i.i387
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i382: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.tl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #22
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i383 unwind label %bb.hd ; 4 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i383: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i382
  store ptr %i.tl, ptr %32, align 8, !tbaa !23, !alias.scope !104
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.pt
  %i.tn = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.tm, ptr %i.tn, align 8, !tbaa !24, !alias.scope !104
  %i.to = invoke noundef ptr @_ZSt16__do_uninit_copyIN3gmx12ArrayRefIterIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS7_ET0_T_SC_SB_(ptr nonnull %i.ec, ptr %i.ed, ptr noundef nonnull %i.tl)
          to label %bb.fw unwind label %.body.i386, !noalias !104 ; 4 uses

.body.i386:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i383
  %lpad.thr_comm.split-lp.i384 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.pt) #20, !noalias !104
  br label %.body390

bb.fw:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i383
  %i.tp = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 7 uses
  store ptr %i.to, ptr %i.tp, align 8, !tbaa !25, !alias.scope !104
  %i.tq = load ptr, ptr %32, align 8, !tbaa !23   ; 10 uses
  %i.tr = ptrtoint ptr %i.tq to i64               ; 3 uses
  %i.ts = load i8, ptr @_ZZ10gmx_trjcatiPPcE8bSetTime, align 1, !tbaa !79, !range !80, !noundef !81
  %i.tt = load i8, ptr @_ZZ10gmx_trjcatiPPcE5bSort, align 1, !tbaa !79, !range !80, !noundef !81
  %i.tu = trunc nuw i8 %i.tt to i1                ; 7 uses
  %i.tv = load ptr, ptr %i.s, align 8, !tbaa !77  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_Z24output_env_get_time_unitB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.tv)
          to label %.noexc409 unwind label %bb.he

.noexc409:                                        ; preds = %bb.fw
  %i.tw = trunc nuw i8 %i.ts to i1
  br i1 %i.tw, label %bb.fx, label %.preheader.i393

.preheader.i393:                                  ; preds = %.noexc409
  %53 = ptrtoint ptr %i.to to i64
  %54 = sub i64 %53, %i.tr                        ; 2 uses
  %i.tx = ashr exact i64 %54, 5                   ; 10 uses
  %i.ty = icmp sgt i64 %i.tx, 0
  br i1 %i.ty, label %iter.check973, label %.loopexit102.i

iter.check973:                                    ; preds = %.preheader.i393
  %min.iters.check958 = icmp ult i64 %i.tx, 4
  %i.tz = sub i64 %i.px, %i.ti
  %diff.check = icmp ugt i64 %i.tz, -128
  %or.cond985 = or i1 %min.iters.check958, %diff.check
  br i1 %or.cond985, label %.lr.ph.i400.preheader, label %vector.main.loop.iter.check959

vector.main.loop.iter.check959:                   ; preds = %iter.check973
  %min.iters.check960 = icmp ult i64 %i.tx, 32
  br i1 %min.iters.check960, label %vec.epilog.ph977, label %vector.ph961

vector.ph961:                                     ; preds = %vector.main.loop.iter.check959
  %n.vec962 = and i64 %i.tx, 9223372036854775776  ; 4 uses
  br label %vector.body963

vector.body963:                                   ; preds = %vector.body963, %vector.ph961
  %index964 = phi i64 [ 0, %vector.ph961 ], [ %index.next969, %vector.body963 ] ; 3 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %index964 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 96
  %wide.load965 = load <8 x float>, ptr %i.ua, align 4, !tbaa !86
  %wide.load966 = load <8 x float>, ptr %i.ub, align 4, !tbaa !86
  %wide.load967 = load <8 x float>, ptr %i.uc, align 4, !tbaa !86
  %wide.load968 = load <8 x float>, ptr %i.ud, align 4, !tbaa !86
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index964 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 96
  store <8 x float> %wide.load965, ptr %i.ue, align 4, !tbaa !86
  store <8 x float> %wide.load966, ptr %i.uf, align 4, !tbaa !86
  store <8 x float> %wide.load967, ptr %i.ug, align 4, !tbaa !86
  store <8 x float> %wide.load968, ptr %i.uh, align 4, !tbaa !86
  %index.next969 = add nuw i64 %index964, 32      ; 2 uses
  %i.ui = icmp eq i64 %index.next969, %n.vec962
  br i1 %i.ui, label %middle.block970, label %vector.body963, !llvm.loop !48

middle.block970:                                  ; preds = %vector.body963
  %cmp.n971 = icmp eq i64 %i.tx, %n.vec962
  br i1 %cmp.n971, label %.loopexit102.i, label %vec.epilog.iter.check975

vec.epilog.iter.check975:                         ; preds = %middle.block970
  %i.uj = and i64 %54, 896
  %min.epilog.iters.check976 = icmp eq i64 %i.uj, 0
  br i1 %min.epilog.iters.check976, label %.lr.ph.i400.preheader, label %vec.epilog.ph977, !prof !105

vec.epilog.ph977:                                 ; preds = %vector.main.loop.iter.check959, %vec.epilog.iter.check975
  %vec.epilog.resume.val972 = phi i64 [ %n.vec962, %vec.epilog.iter.check975 ], [ 0, %vector.main.loop.iter.check959 ]
  %n.vec978 = and i64 %i.tx, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body979

vec.epilog.vector.body979:                        ; preds = %vec.epilog.vector.body979, %vec.epilog.ph977
  %index980 = phi i64 [ %vec.epilog.resume.val972, %vec.epilog.ph977 ], [ %index.next982, %vec.epilog.vector.body979 ] ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %index980
  %wide.load981 = load <4 x float>, ptr %i.uk, align 4, !tbaa !86
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index980
  store <4 x float> %wide.load981, ptr %i.ul, align 4, !tbaa !86
  %index.next982 = add nuw i64 %index980, 4       ; 2 uses
  %i.um = icmp eq i64 %index.next982, %n.vec978
  br i1 %i.um, label %vec.epilog.middle.block983, label %vec.epilog.vector.body979, !llvm.loop !49

vec.epilog.middle.block983:                       ; preds = %vec.epilog.vector.body979
  %cmp.n984 = icmp eq i64 %i.tx, %n.vec978
  br i1 %cmp.n984, label %.loopexit102.i, label %.lr.ph.i400.preheader

.lr.ph.i400.preheader:                            ; preds = %iter.check973, %vec.epilog.iter.check975, %vec.epilog.middle.block983
  %.064107.i.ph = phi i64 [ 0, %iter.check973 ], [ %n.vec962, %vec.epilog.iter.check975 ], [ %n.vec978, %vec.epilog.middle.block983 ] ; 4 uses
  %i.un = sub nsw i64 %i.tx, %.064107.i.ph
  %xtraiter = and i64 %i.un, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i400.prol.loopexit, label %.lr.ph.i400.prol

.lr.ph.i400.prol:                                 ; preds = %.lr.ph.i400.preheader, %.lr.ph.i400.prol
  %.064107.i.prol = phi i64 [ %i.ur, %.lr.ph.i400.prol ], [ %.064107.i.ph, %.lr.ph.i400.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i400.prol ], [ 0, %.lr.ph.i400.preheader ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.064107.i.prol
  %i.up = load float, ptr %i.uo, align 4, !tbaa !86
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.064107.i.prol
  store float %i.up, ptr %i.uq, align 4, !tbaa !86
  %i.ur = add nuw nsw i64 %.064107.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i400.prol.loopexit, label %.lr.ph.i400.prol, !llvm.loop !50

.lr.ph.i400.prol.loopexit:                        ; preds = %.lr.ph.i400.prol, %.lr.ph.i400.preheader
  %.064107.i.unr = phi i64 [ %.064107.i.ph, %.lr.ph.i400.preheader ], [ %i.ur, %.lr.ph.i400.prol ]
  %i.us = sub nsw i64 %.064107.i.ph, %i.tx
  %i.ut = icmp ugt i64 %i.us, -8
  br i1 %i.ut, label %.loopexit102.i, label %.lr.ph.i400

bb.fx:                                            ; preds = %.noexc409
  %i.uu = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.uv = load ptr, ptr %2, align 8, !tbaa !21
  %i.uw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uu, ptr noundef nonnull @.str.103, ptr noundef %i.uv) #24 ; 0 uses
  %i.ux = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.uy = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.uz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ux, ptr noundef nonnull @.str.104, ptr noundef %i.uy, ptr noundef %i.uy) #24 ; 0 uses
  %55 = ptrtoint ptr %i.to to i64
  %56 = sub i64 %55, %i.tr
  %i.va = ashr exact i64 %56, 5                   ; 4 uses
  %i.vb = icmp sgt i64 %i.va, 0
  br i1 %i.vb, label %.lr.ph113.i, label %._crit_edge114.i

._crit_edge114.i:                                 ; preds = %bb.gl, %bb.fx
  %.072.lcssa.i = phi i1 [ %i.tu, %bb.fx ], [ %.274.ph.i, %bb.gl ] ; 2 uses
  %i.vc = load i32, ptr %i.tj, align 4, !tbaa !61
  %.not.i402 = icmp eq i32 %i.vc, 0
  br i1 %.not.i402, label %.loopexit102.i, label %.split.i

.loopexit.i405:                                   ; preds = %bb.gh
  %lpad.loopexit.i406 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

.loopexit.split-lp.i403:                          ; preds = %.lr.ph113.i
  %lpad.loopexit.split-lp.i404 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

.lr.ph113.i:                                      ; preds = %bb.fx, %bb.gl
  %.069111.i = phi i64 [ %i.wm, %bb.gl ], [ 0, %bb.fx ] ; 7 uses
  %.072110.i = phi i1 [ %.274.ph.i, %bb.gl ], [ %i.tu, %bb.fx ]
  %i.vd = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.ve = getelementptr inbounds nuw [32 x i8], ptr %i.tq, i64 %.069111.i
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !21
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.069111.i
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !86
  %i.vi = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tv, float noundef %i.vh)
          to label %bb.fy unwind label %.loopexit.split-lp.i403

bb.fy:                                            ; preds = %.lr.ph113.i
  %i.vj = fpext float %i.vi to double
  %i.vk = load ptr, ptr %2, align 8, !tbaa !21
  %i.vl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vd, ptr noundef nonnull @.str.105, ptr noundef %i.vf, double noundef %i.vj, ptr noundef %i.vk) #24 ; 0 uses
  %i.vm = load ptr, ptr @stdin, align 8, !tbaa !75
  %i.vn = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4095, ptr noundef %i.vm)
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %._crit_edge.i407, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.fy
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.069111.i ; 3 uses
  br label %bb.ge

._crit_edge.i407:                                 ; preds = %bb.fy, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(61) @.str.53, i8 noundef zeroext 2)
          to label %bb.fz unwind label %bb.gb

bb.fz:                                            ; preds = %._crit_edge.i407
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 229, ptr noundef nonnull @.str.106) #21
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %._crit_edge.i407
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.gc:                                            ; preds = %bb.fz
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #19
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.pn.i408 = phi { ptr, i32 } [ %i.vr, %bb.gc ], [ %i.vq, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.hc

bb.ge:                                            ; preds = %bb.gk, %.lr.ph108.i
  %i.vs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25
  %i.vt = getelementptr i8, ptr %i.a, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 -1
  store i8 0, ptr %i.vu, align 1, !tbaa !22
  %i.vv = load i8, ptr %i.a, align 16, !tbaa !22
  %i.vw = and i8 %i.vv, -33
  switch i8 %i.vw, label %bb.gh [
    i8 67, label %bb.gf
    i8 76, label %bb.gg
  ]

bb.gf:                                            ; preds = %bb.ge
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %.069111.i
  store i32 1, ptr %i.vx, align 4, !tbaa !61
  store float f0x7B4097CE, ptr %i.vp, align 4, !tbaa !86
  br label %bb.gl

bb.gg:                                            ; preds = %bb.ge
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %.069111.i
  store i32 2, ptr %i.vy, align 4, !tbaa !61
  store float f0x7B4097CE, ptr %i.vp, align 4, !tbaa !86
  br label %bb.gl

bb.gh:                                            ; preds = %bb.ge
  %i.vz = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19
  %i.wa = invoke noundef float @_Z29output_env_get_time_invfactorPK16gmx_output_env_t(ptr noundef %i.tv)
          to label %bb.gi unwind label %.loopexit.i405

bb.gi:                                            ; preds = %bb.gh
  %i.wb = fpext float %i.wa to double
  %i.wc = fmul double %i.vz, %i.wb
  %i.wd = fptrunc double %i.wc to float
  store float %i.wd, ptr %i.vp, align 4, !tbaa !86
  %i.we = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.wf = icmp eq ptr %i.we, %i.a
  br i1 %i.wf, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %.069111.i
  store i32 0, ptr %i.wg, align 4, !tbaa !61
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.wh = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.wi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wh, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.wj = load ptr, ptr @stdin, align 8, !tbaa !75
  %i.wk = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 4095, ptr noundef %i.wj)
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %._crit_edge.i407, label %bb.ge

bb.gl:                                            ; preds = %bb.gj, %bb.gg, %bb.gf
  %.274.ph.i = phi i1 [ %.072110.i, %bb.gj ], [ false, %bb.gg ], [ false, %bb.gf ] ; 2 uses
  %i.wm = add nuw nsw i64 %.069111.i, 1           ; 2 uses
  %exitcond121.not.i = icmp eq i64 %i.wm, %i.va
  br i1 %exitcond121.not.i, label %._crit_edge114.i, label %.lr.ph113.i, !llvm.loop !51

.split.i:                                         ; preds = %._crit_edge114.i
  store i32 0, ptr %i.tj, align 4, !tbaa !61
  store float 0.000000e+00, ptr %i.th, align 4, !tbaa !86
  br i1 %.072.lcssa.i, label %.loopexit102.i._crit_edge684, label %.loopexit102.i._crit_edge

.lr.ph.i400:                                      ; preds = %.lr.ph.i400.prol.loopexit, %.lr.ph.i400
  %.064107.i = phi i64 [ %i.xs, %.lr.ph.i400 ], [ %.064107.i.unr, %.lr.ph.i400.prol.loopexit ] ; 10 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.064107.i
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !86
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.064107.i
  store float %i.wo, ptr %i.wp, align 4, !tbaa !86
  %i.wq = add nuw nsw i64 %.064107.i, 1           ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.wq
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !86
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.wq
  store float %i.ws, ptr %i.wt, align 4, !tbaa !86
  %i.wu = add nuw nsw i64 %.064107.i, 2           ; 2 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.wu
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !86
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.wu
  store float %i.ww, ptr %i.wx, align 4, !tbaa !86
  %i.wy = add nuw nsw i64 %.064107.i, 3           ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.wy
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !86
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.wy
  store float %i.xa, ptr %i.xb, align 4, !tbaa !86
  %i.xc = add nuw nsw i64 %.064107.i, 4           ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.xc
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !86
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.xc
  store float %i.xe, ptr %i.xf, align 4, !tbaa !86
  %i.xg = add nuw nsw i64 %.064107.i, 5           ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.xg
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !86
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.xg
  store float %i.xi, ptr %i.xj, align 4, !tbaa !86
  %i.xk = add nuw nsw i64 %.064107.i, 6           ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.xk
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !86
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.xk
  store float %i.xm, ptr %i.xn, align 4, !tbaa !86
  %i.xo = add nuw nsw i64 %.064107.i, 7           ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.xo
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !86
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.xo
  store float %i.xq, ptr %i.xr, align 4, !tbaa !86
  %i.xs = add nuw nsw i64 %.064107.i, 8           ; 2 uses
  %exitcond.not.i401.7 = icmp eq i64 %i.xs, %i.tx
  br i1 %exitcond.not.i401.7, label %.loopexit102.i, label %.lr.ph.i400, !llvm.loop !52

.loopexit102.i:                                   ; preds = %.lr.ph.i400.prol.loopexit, %.lr.ph.i400, %middle.block970, %vec.epilog.middle.block983, %._crit_edge114.i, %.preheader.i393
  %.3.i = phi i1 [ %i.tu, %.preheader.i393 ], [ %.072.lcssa.i, %._crit_edge114.i ], [ %i.tu, %middle.block970 ], [ %i.tu, %vec.epilog.middle.block983 ], [ %i.tu, %.lr.ph.i400 ], [ %i.tu, %.lr.ph.i400.prol.loopexit ]
  %.pre687 = ptrtoint ptr %i.to to i64
  %.pre689 = sub i64 %.pre687, %i.tr
  %.pre687.a = ashr exact i64 %.pre689, 5         ; 2 uses
  br i1 %.3.i, label %.loopexit102.i._crit_edge684, label %.loopexit102.i._crit_edge

.loopexit102.i._crit_edge:                        ; preds = %.loopexit102.i, %.split.i
  %.pre135.i.pre-phi = phi i64 [ %i.va, %.split.i ], [ %.pre687.a, %.loopexit102.i ]
  %i.xt = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.xu = call i64 @fwrite(ptr nonnull @.str.108, i64 18, i64 1, ptr %i.xt) #23 ; 0 uses
  br label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i

.loopexit102.i._crit_edge684:                     ; preds = %.loopexit102.i, %.split.i
  %.pre-phi688 = phi i64 [ %i.va, %.split.i ], [ %.pre687.a, %.loopexit102.i ] ; 8 uses
  %i.xv = icmp sgt i64 %.pre-phi688, 0
  br i1 %i.xv, label %.lr.ph32.i.i.preheader, label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i

.lr.ph32.i.i.preheader:                           ; preds = %.loopexit102.i._crit_edge684
  %i.xw = add nsw i64 %.pre-phi688, -2
  br label %.lr.ph32.i.i

_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i: ; preds = %.loopexit102.i._crit_edge684
  %i.xx = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.xy = call i64 @fwrite(ptr nonnull @.str.109, i64 156, i64 1, ptr %i.xx) #23 ; 0 uses
  br label %._crit_edge118.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader, %._crit_edge.thread.i.i
  %.030.i.i = phi i64 [ %i.ya, %._crit_edge.thread.i.i ], [ 0, %.lr.ph32.i.i.preheader ] ; 8 uses
  %i.xz = sub i64 %i.xw, %.030.i.i
  %i.ya = add nuw nsw i64 %.030.i.i, 1            ; 5 uses
  %i.yb = icmp slt i64 %i.ya, %.pre-phi688
  br i1 %i.yb, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph32.i.i
  %i.yc = xor i64 %.030.i.i, -1
  %i.yd = add nsw i64 %.pre-phi688, %i.yc
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.030.i.i ; 2 uses
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !86 ; 3 uses
  %xtraiter1028 = and i64 %i.yd, 7                ; 2 uses
  %lcmp.mod1029.not = icmp eq i64 %xtraiter1028, 0
  br i1 %lcmp.mod1029.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.ye = phi float [ %i.yj, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02329.i.i.prol = phi i64 [ %i.yi, %.lr.ph.i.i.prol ], [ %i.ya, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02428.i.i.prol = phi i64 [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %.030.i.i, %.lr.ph.preheader.i.i ]
  %prol.iter1030 = phi i64 [ %prol.iter1030.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.02329.i.i.prol
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !86 ; 2 uses
  %i.yh = fcmp olt float %i.yg, %i.ye             ; 2 uses
  %spec.select.i.i.prol = select i1 %i.yh, i64 %.02329.i.i.prol, i64 %.02428.i.i.prol ; 3 uses
  %i.yi = add nuw nsw i64 %.02329.i.i.prol, 1     ; 2 uses
  %i.yj = select i1 %i.yh, float %i.yg, float %i.ye ; 2 uses
  %prol.iter1030.next = add i64 %prol.iter1030, 1 ; 2 uses
  %prol.iter1030.cmp.not = icmp eq i64 %prol.iter1030.next, %xtraiter1028
  br i1 %prol.iter1030.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !53

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi float [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.yj, %.lr.ph.i.i.prol ]
  %.02329.i.i.unr = phi i64 [ %i.ya, %.lr.ph.preheader.i.i ], [ %i.yi, %.lr.ph.i.i.prol ]
  %.02428.i.i.unr = phi i64 [ %.030.i.i, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.yk = icmp ult i64 %i.xz, 7
  br i1 %i.yk, label %._crit_edge.i.i398, label %.lr.ph.i.i

._crit_edge.i.i398:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %spec.select.i.i.lcssa = phi i64 [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i399 = icmp eq i64 %spec.select.i.i.lcssa, %.030.i.i
  br i1 %.not.i.i399, label %._crit_edge.thread.i.i, label %bb.gm

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.yl = phi float [ %i.zz, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02329.i.i = phi i64 [ %i.zy, %.lr.ph.i.i ], [ %.02329.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %.02428.i.i = phi i64 [ %spec.select.i.i.7, %.lr.ph.i.i ], [ %.02428.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.02329.i.i
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !86 ; 2 uses
  %i.yo = fcmp olt float %i.yn, %i.yl             ; 2 uses
  %spec.select.i.i = select i1 %i.yo, i64 %.02329.i.i, i64 %.02428.i.i
  %i.yp = add nuw nsw i64 %.02329.i.i, 1          ; 2 uses
  %i.yq = select i1 %i.yo, float %i.yn, float %i.yl ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.yp
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !86 ; 2 uses
  %i.yt = fcmp olt float %i.ys, %i.yq             ; 2 uses
  %spec.select.i.i.1 = select i1 %i.yt, i64 %i.yp, i64 %spec.select.i.i
  %i.yu = add nuw nsw i64 %.02329.i.i, 2          ; 2 uses
  %i.yv = select i1 %i.yt, float %i.ys, float %i.yq ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.yu
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !86 ; 2 uses
  %i.yy = fcmp olt float %i.yx, %i.yv             ; 2 uses
  %spec.select.i.i.2 = select i1 %i.yy, i64 %i.yu, i64 %spec.select.i.i.1
  %i.yz = add nuw nsw i64 %.02329.i.i, 3          ; 2 uses
  %i.za = select i1 %i.yy, float %i.yx, float %i.yv ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.yz
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !86 ; 2 uses
  %i.zd = fcmp olt float %i.zc, %i.za             ; 2 uses
  %spec.select.i.i.3 = select i1 %i.zd, i64 %i.yz, i64 %spec.select.i.i.2
  %i.ze = add nuw nsw i64 %.02329.i.i, 4          ; 2 uses
  %i.zf = select i1 %i.zd, float %i.zc, float %i.za ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ze
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !86 ; 2 uses
  %i.zi = fcmp olt float %i.zh, %i.zf             ; 2 uses
  %spec.select.i.i.4 = select i1 %i.zi, i64 %i.ze, i64 %spec.select.i.i.3
  %i.zj = add nuw nsw i64 %.02329.i.i, 5          ; 2 uses
  %i.zk = select i1 %i.zi, float %i.zh, float %i.zf ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.zj
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !86 ; 2 uses
  %i.zn = fcmp olt float %i.zm, %i.zk             ; 2 uses
  %spec.select.i.i.5 = select i1 %i.zn, i64 %i.zj, i64 %spec.select.i.i.4
  %i.zo = add nuw nsw i64 %.02329.i.i, 6          ; 2 uses
  %i.zp = select i1 %i.zn, float %i.zm, float %i.zk ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.zo
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !86 ; 2 uses
  %i.zs = fcmp olt float %i.zr, %i.zp             ; 2 uses
  %spec.select.i.i.6 = select i1 %i.zs, i64 %i.zo, i64 %spec.select.i.i.5
  %i.zt = add nuw nsw i64 %.02329.i.i, 7          ; 2 uses
  %i.zu = select i1 %i.zs, float %i.zr, float %i.zp ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.zt
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !86 ; 2 uses
  %i.zx = fcmp olt float %i.zw, %i.zu             ; 2 uses
  %spec.select.i.i.7 = select i1 %i.zx, i64 %i.zt, i64 %spec.select.i.i.6 ; 2 uses
  %i.zy = add nuw nsw i64 %.02329.i.i, 8          ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.zy, %.pre-phi688
  %i.zz = select i1 %i.zx, float %i.zw, float %i.zu
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i398, label %.lr.ph.i.i, !llvm.loop !54

bb.gm:                                            ; preds = %._crit_edge.i.i398
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.th, i64 %spec.select.i.i.lcssa ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !86
  store float %i.aab, ptr %.phi.trans.insert.i.i, align 4, !tbaa !86
  store float %.pre.i.i, ptr %i.aaa, align 4, !tbaa !86
  %i.aac = getelementptr inbounds nuw [32 x i8], ptr %i.tq, i64 %.030.i.i
  %i.aad = getelementptr inbounds [32 x i8], ptr %i.tq, i64 %spec.select.i.i.lcssa
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aac, ptr noundef nonnull align 8 dereferenceable(32) %i.aad) #19
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.gm, %._crit_edge.i.i398, %.lr.ph32.i.i
  %exitcond34.not.i.i = icmp eq i64 %i.ya, %.pre-phi688
  br i1 %exitcond34.not.i.i, label %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i, label %.lr.ph32.i.i, !llvm.loop !55

_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i: ; preds = %._crit_edge.thread.i.i, %.loopexit102.i._crit_edge
  %.pre-phi136.i = phi i64 [ %.pre135.i.pre-phi, %.loopexit102.i._crit_edge ], [ %.pre-phi688, %._crit_edge.thread.i.i ] ; 5 uses
  %i.aae = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aaf = call i64 @fwrite(ptr nonnull @.str.109, i64 156, i64 1, ptr %i.aae) #23 ; 0 uses
  %i.aag = icmp sgt i64 %.pre-phi136.i, 0
  br i1 %i.aag, label %.lr.ph117.preheader.i, label %._crit_edge118.i

.lr.ph117.preheader.i:                            ; preds = %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i
  %i.aah = load i32, ptr %i.tj, align 4, !tbaa !61
  switch i32 %i.aah, label %bb.gs [
    i32 0, label %bb.gp
    i32 1, label %bb.go
    i32 2, label %bb.gn
  ]

bb.gn:                                            ; preds = %.lr.ph117.preheader.i
  %i.aai = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aaj = load ptr, ptr %i.tq, align 8, !tbaa !21
  %i.aak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aai, ptr noundef nonnull @.str.113, ptr noundef %i.aaj) #24 ; 0 uses
  br label %bb.gs

bb.go:                                            ; preds = %.lr.ph117.preheader.i
  %i.aal = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aam = load ptr, ptr %i.tq, align 8, !tbaa !21
  %i.aan = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aal, ptr noundef nonnull @.str.112, ptr noundef %i.aam) #24 ; 0 uses
  br label %bb.gs

bb.gp:                                            ; preds = %.lr.ph117.preheader.i
  %i.aao = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.aap = load ptr, ptr %i.tq, align 8, !tbaa !21
  %i.aaq = load float, ptr %i.th, align 4, !tbaa !86
  %i.aar = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tv, float noundef %i.aaq)
          to label %bb.gq unwind label %.loopexit.split-lp125.i

bb.gq:                                            ; preds = %bb.gp
  %i.aas = load ptr, ptr %2, align 8, !tbaa !21
  %i.aat = load float, ptr %i.py, align 4, !tbaa !86
  %i.aau = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.tv, float noundef %i.aat)
          to label %bb.gr unwind label %.loopexit.split-lp125.i

bb.gr:                                            ; preds = %bb.gq
  %i.aav = fpext float %i.aar to double
  %i.aaw = fpext float %i.aau to double
  %i.aax = load ptr, ptr %2, align 8, !tbaa !21
  %i.aay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aao, ptr noundef nonnull @.str.110, ptr noundef %i.aap, double noundef %i.aav, ptr noundef %i.aas, double noundef %i.aaw, ptr noundef %i.aax) #24 ; 0 uses
  %i.aaz = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc78.peel.i = call i32 @fputc(i32 10, ptr %i.aaz) ; 0 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.go, %bb.gn, %.lr.ph117.preheader.i
  %exitcond122.peel.not.i = icmp eq i64 %.pre-phi136.i, 1
  br i1 %exitcond122.peel.not.i, label %._crit_edge118.i, label %.lr.ph117.i

._crit_edge118.i:                                 ; preds = %bb.hb, %bb.gs, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i
  %.pre-phi136149.i = phi i64 [ %.pre-phi688, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.thread.i ], [ %.pre-phi136.i, %_ZL10sort_filesN3gmx8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPf.exit.i ], [ 1, %bb.gs ], [ %.pre-phi136.i, %bb.hb ] ; 3 uses
  %i.aba = load ptr, ptr @stderr, align 8, !tbaa !75
  %fputc.i395 = call i32 @fputc(i32 10, ptr %i.aba) ; 0 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.pre-phi136149.i
  store float f0x7B4097CE, ptr %i.abb, align 4, !tbaa !86
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %.pre-phi136149.i
  store i32 0, ptr %i.abc, align 4, !tbaa !61
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.pre-phi136149.i
  store float f0x7B4097CE, ptr %i.abd, align 4, !tbaa !86
  %i.abe = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_1
