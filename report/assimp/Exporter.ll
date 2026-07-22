inline.NumInlined: 2188
inline.NumDeleted: 850
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp8Exporter6ExportEPK7aiScenePKcS5_jPKNS_16ExportPropertiesE:bb.a
.noexc121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.hk, ptr %13, align 8, !alias.scope !107
  %i.hl = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 5 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.bx:                                            ; preds = %.noexc121
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hp = load i64, ptr %i.ho, align 8            ; 3 uses
  %i.hq = icmp ult i64 %i.hp, 16
  call void @llvm.assume(i1 %i.hq)
  %i.hr = add nuw nsw i64 %i.hp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.hm, i64 %i.hr, i1 false)
  br label %bb.by

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc121
  store ptr %i.hl, ptr %13, align 8, !alias.scope !107
  %i.hs = load i64, ptr %i.hm, align 8
  store i64 %i.hs, ptr %i.hk, align 8, !alias.scope !107
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.by

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bx
  %i.ht = phi ptr [ %i.hk, %bb.bx ], [ %i.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.hu = phi i64 [ %i.hp, %bb.bx ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 %i.hu, ptr %i.hw, align 8, !alias.scope !107
  store ptr %i.hm, ptr %i.hj, align 8
  store i64 0, ptr %i.hv, align 8
  store i8 0, ptr %i.hm, align 8
  %i.hx = load ptr, ptr %0, align 8               ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72 ; 5 uses
  %i.hz = load ptr, ptr %i.hy, align 8            ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 88 ; 4 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  %i.ic = icmp eq ptr %i.ht, %i.hk                ; 2 uses
  br i1 %i.ib, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.by
  br i1 %i.ic, label %bb.bz, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.by
  br i1 %i.ic, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.id = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.id)
  %.not21.i = icmp eq ptr %13, %i.hy
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ca, !prof !95

bb.ca:                                            ; preds = %bb.bz
  switch i64 %i.hu, label %bb.cc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ie = load i8, ptr %i.ht, align 1
  store i8 %i.ie, ptr %i.hz, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr align 1 %i.ht, i64 %i.hu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.if = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  store i64 %i.if, ptr %i.ig, align 8
  %i.ih = load ptr, ptr %i.hy, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if
  store i8 0, ptr %i.ii, align 1
  %.pre.i123 = load ptr, ptr %13, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  store ptr %i.ht, ptr %i.hy, align 8
  store i64 %i.hu, ptr %i.ij, align 8
  %i.ik = load i64, ptr %i.hk, align 8
  store i64 %i.ik, ptr %i.ia, align 8
  br label %bb.ce

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.il = load i64, ptr %i.ia, align 8
  store ptr %i.ht, ptr %i.hy, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  store i64 %i.hu, ptr %i.im, align 8
  %i.in = load i64, ptr %i.hk, align 8
  store i64 %i.in, ptr %i.ia, align 8
  %.not.i122 = icmp eq ptr %i.hz, null
  br i1 %.not.i122, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hz, ptr %13, align 8
  store i64 %i.il, ptr %i.hk, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hk, ptr %13, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cd, %bb.ce
  %i.io = phi ptr [ %i.hz, %bb.cd ], [ %i.hk, %bb.ce ], [ %i.ht, %bb.bz ], [ %.pre.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hw, align 8
  store i8 0, ptr %i.io, align 1
  %i.ip = load ptr, ptr %13, align 8              ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.hk
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ir = load i64, ptr %i.hk, align 8
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %i.it = load ptr, ptr %14, align 8              ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ha
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iv = load i64, ptr %i.ha, align 8
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ck

bb.cf:                                            ; preds = %.thread139
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.bw
  %i.iy = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.iz = load ptr, ptr %14, align 8              ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.ha
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.cg
  %i.jb = load i64, ptr %i.ha, align 8
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.cf
  %.pn118 = phi { ptr, i32 } [ %i.ix, %bb.cf ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.iy, %bb.cg ]
  %.8 = extractvalue { ptr, i32 } %.pn118, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bq, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.e
  %.9 = phi ptr [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %i.ae, %bb.e ], [ %.6, %bb.bv ], [ %.5, %bb.bq ]
  %i.jd = call ptr @__cxa_begin_catch(ptr %.9) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.je = invoke noundef i32 @_ZNK18ExceptionSwallowerI8aiReturnEclEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @__cxa_end_catch()
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev.exit, %bb.bs, %bb.ci
  %.3 = phi i32 [ %i.je, %bb.ci ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ -1, %bb.bs ], [ 0, %_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev.exit ]
  ret i32 %.3

bb.cl:                                            ; preds = %bb.cj
  resume { ptr, i32 } %i.jf

bb.cm:                                            ; preds = %bb.cj, %bb.bt
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp12BlobIOSystem12GetBlobChainEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.g, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.58) #32
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.i, ptr %i.d, align 8
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %1, align 8
  %i.l = load i64, ptr %i.d, align 8
  store i64 %i.l, ptr %i.g, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.d, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 9
  br i1 %i.u, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7811887601613038116
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = xor i64 %i.aa, 101
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0                    ; 2 uses
  %i.ae = zext i1 %i.ad to i32                    ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f, %bb.e
  %i.af = phi i1 [ true, %bb.e ], [ %i.ad, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not96102 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not96102, label %.thread93, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ak = load i64, ptr %i.p, align 8             ; 8 uses
  %i.al = load ptr, ptr %1, align 8
  %i.am = icmp eq i64 %i.ak, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread88
  %.sroa.084.0103 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread88 ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.084.0103, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.ao, %i.ak
  br i1 %i.ap, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread88

bb.h:                                             ; preds = %bb.g
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.h
  %i.aq = load ptr, ptr %.sroa.084.0103, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.aq, ptr %i.al, i64 %i.ak)
  %i.ar = icmp eq i32 %bcmp.i, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.084.0103, i64 32
  %5 = load ptr, ptr %4, align 8                  ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  br i1 %i.af, label %bb.i, label %.thread144

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.thread: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.084.0103, i64 32
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  br i1 %i.af, label %._crit_edge.i.i55.thread, label %.thread144

._crit_edge.i.i55.thread:                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.thread
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %7, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.ak, ptr %i.c, align 8
  br label %bb.l

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.av, ptr %2, align 8
  %8 = load ptr, ptr %.sroa.084.0103, align 8     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.ak, ptr %i.c, align 8
  %i.aw = icmp ugt i64 %i.ak, 15
  br i1 %i.aw, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.i
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc57 unwind label %bb.n   ; 2 uses

.noexc57:                                         ; preds = %.noexc.i56
  store ptr %i.ax, ptr %2, align 8
  %i.ay = load i64, ptr %i.c, align 8
  store i64 %i.ay, ptr %i.av, align 8
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc57, %bb.i
  %i.az = phi ptr [ %i.ax, %.noexc57 ], [ %i.av, %bb.i ] ; 2 uses
  switch i64 %i.ak, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i55
  %i.ba = load i8, ptr %8, align 1
  store i8 %i.ba, ptr %i.az, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %8, i64 %i.ak, i1 false)
  br label %bb.l

.thread144:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.thread
  %9 = phi ptr [ %i.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.thread ], [ %6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %10 = phi ptr [ %i.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.thread ], [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %11, ptr %2, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bb, align 8
  store i8 0, ptr %11, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i55, %._crit_edge.i.i55.thread
  %12 = phi ptr [ %i.au, %._crit_edge.i.i55.thread ], [ %6, %._crit_edge.i.i55 ], [ %6, %bb.j ], [ %6, %bb.k ]
  %13 = phi ptr [ %i.at, %._crit_edge.i.i55.thread ], [ %5, %._crit_edge.i.i55 ], [ %5, %bb.j ], [ %5, %bb.k ] ; 2 uses
  %i.bc = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.pre = load i64, ptr %i.bd, align 8            ; 2 uses
  %.pre112.pre = load ptr, ptr %2, align 8        ; 2 uses
  %i.bg = icmp ugt i64 %.pre, 1023
  br i1 %i.bg, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.m

bb.m:                                             ; preds = %.thread144, %bb.l
  %i.bh = phi i64 [ 0, %.thread144 ], [ %.pre, %bb.l ] ; 3 uses
  %.pre112146 = phi ptr [ %11, %.thread144 ], [ %.pre112.pre, %bb.l ]
  %14 = phi ptr [ %10, %.thread144 ], [ %13, %bb.l ] ; 2 uses
  %i.bi = phi ptr [ %9, %.thread144 ], [ %12, %bb.l ]
  %i.bj = trunc nuw nsw i64 %i.bh to i32
  store i32 %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 1 %.pre112146, i64 %i.bh, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  store i8 0, ptr %i.bl, align 1
  %.pre111 = load ptr, ptr %2, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.l, %bb.m
  %15 = phi ptr [ %13, %bb.l ], [ %14, %bb.m ]    ; 7 uses
  %i.bm = phi ptr [ %.pre112.pre, %bb.l ], [ %.pre111, %bb.m ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bp = load i64, ptr %i.bn, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i56
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ae

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread88: ; preds = %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.084.0103, i64 40 ; 2 uses
  %.not96 = icmp eq ptr %i.bs, %i.aj
  br i1 %.not96, label %.thread93, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %15, null
  br i1 %.not, label %.thread93, label %bb.q

.thread93:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread88, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.thread93
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull @.str.54)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE5clearEv.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread93
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.bw = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not97104 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not97104, label %._crit_edge, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %i.af, label %.lr.ph107.split.us, label %.lr.ph107.split

.lr.ph107.split.us:                               ; preds = %.lr.ph107, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us
  %.039106.us = phi ptr [ %.140.us, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us ], [ %15, %.lr.ph107 ] ; 2 uses
  %.sroa.079.0105.us = phi ptr [ %i.cl, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us ], [ %i.bv, %.lr.ph107 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.079.0105.us, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8            ; 6 uses
  %i.cb = icmp eq ptr %i.ca, %15
  br i1 %i.cb, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph107.split.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.039106.us, i64 1048
  store ptr %i.ca, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.079.0105.us, i64 8
  %i.ce = load i64, ptr %i.cd, align 8            ; 4 uses
  %i.cf = icmp ugt i64 %i.ce, 1023
  br i1 %i.cf, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ch = trunc nuw nsw i64 %i.ce to i32
  store i32 %i.ch, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.079.0105.us, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr align 1 %i.cj, i64 %i.ce, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ce
  store i8 0, ptr %i.ck, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us: ; preds = %bb.s, %bb.r, %.lr.ph107.split.us
  %.140.us = phi ptr [ %.039106.us, %.lr.ph107.split.us ], [ %i.ca, %bb.s ], [ %i.ca, %bb.r ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.079.0105.us, i64 40 ; 2 uses
  %.not97.us = icmp eq ptr %i.cl, %i.bw
  br i1 %.not97.us, label %._crit_edge, label %.lr.ph107.split.us

._crit_edge:                                      ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62.us, %bb.q
  %i.cm = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.cn = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i.i ], [ %i.cm, %._crit_edge ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cr = load i64, ptr %i.cp, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #28
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cn
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobEEvPT_.exit.i.i.i.i
  store ptr %i.cm, ptr %i.ai, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE5clearEv.exit

.lr.ph107.split:                                  ; preds = %.lr.ph107, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62
  %.039106 = phi ptr [ %.140, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62 ], [ %15, %.lr.ph107 ] ; 2 uses
  %.sroa.079.0105 = phi ptr [ %i.ej, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62 ], [ %i.bv, %.lr.ph107 ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.079.0105, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8            ; 5 uses
  %i.cw = icmp eq ptr %i.cv, %15
  br i1 %i.cw, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62, label %bb.t

bb.t:                                             ; preds = %.lr.ph107.split
  %i.cx = getelementptr inbounds nuw i8, ptr %.039106, i64 1048
  store ptr %i.cv, ptr %i.cx, align 8
  %i.cy = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.079.0105, i8 noundef signext 46, i64 noundef 0) #30 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.da = icmp eq i64 %i.cy, -1
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.079.0105, i64 8 ; 2 uses
  br i1 %i.da, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr %i.bx, ptr %3, align 8
  %i.dc = load ptr, ptr %.sroa.079.0105, align 8  ; 2 uses
  %i.dd = load i64, ptr %i.db, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.dd, ptr %i.b, align 8
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i64, label %._crit_edge.i.i63

.noexc.i64:                                       ; preds = %bb.u
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc65 unwind label %.loopexit ; 2 uses

.noexc65:                                         ; preds = %.noexc.i64
  store ptr %i.df, ptr %3, align 8
  %i.dg = load i64, ptr %i.b, align 8
  store i64 %i.dg, ptr %i.bx, align 8
  br label %._crit_edge.i.i63

._crit_edge.i.i63:                                ; preds = %.noexc65, %bb.u
  %i.dh = phi ptr [ %i.df, %.noexc65 ], [ %i.bx, %bb.u ] ; 2 uses
  switch i64 %i.dd, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit66
  ]

bb.v:                                             ; preds = %._crit_edge.i.i63
  %i.di = load i8, ptr %i.dc, align 1
  store i8 %i.di, ptr %i.dh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit66

bb.w:                                             ; preds = %._crit_edge.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dc, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit66: ; preds = %._crit_edge.i.i63, %bb.v, %bb.w
  %i.dj = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dj, ptr %i.by, align 8
  %i.dk = load ptr, ptr %3, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 0, ptr %i.dl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ab

bb.x:                                             ; preds = %bb.t
  %i.dm = add nuw i64 %i.cy, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.dn = load i64, ptr %i.db, align 8, !noalias !111 ; 3 uses
  %.not98 = icmp ult i64 %i.cy, %i.dn
  br i1 %.not98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i64 noundef %i.dm, i64 noundef %i.dn) #32
          to label %.noexc67 unwind label %.loopexit.split-lp

.noexc67:                                         ; preds = %bb.y
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.x
  store ptr %i.bx, ptr %3, align 8, !alias.scope !111
  %i.do = load ptr, ptr %.sroa.079.0105, align 8, !noalias !111
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm ; 2 uses
  %i.dq = sub nuw i64 %i.dn, %i.dm                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !111
  store i64 %i.dq, ptr %i.a, align 8, !noalias !111
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc68 unwind label %.loopexit ; 2 uses

.noexc68:                                         ; preds = %.noexc10.i.i
  store ptr %i.ds, ptr %3, align 8, !alias.scope !111
  %i.dt = load i64, ptr %i.a, align 8, !noalias !111
  store i64 %i.dt, ptr %i.bx, align 8, !alias.scope !111
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.du = phi ptr [ %i.ds, %.noexc68 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.dq, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %i.dv = load i8, ptr %i.dp, align 1
  store i8 %i.dv, ptr %i.du, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull align 1 %i.dp, i64 %i.dq, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.z, %bb.aa
  %i.dw = load i64, ptr %i.a, align 8, !noalias !111 ; 2 uses
  store i64 %i.dw, ptr %i.by, align 8, !alias.scope !111
  %i.dx = load ptr, ptr %3, align 8, !alias.scope !111
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 0, ptr %i.dy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !111
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit66
  %i.dz = load i64, ptr %i.by, align 8            ; 4 uses
  %i.ea = icmp ugt i64 %i.dz, 1023
  br i1 %i.ea, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit69, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = trunc nuw nsw i64 %i.dz to i32
  store i32 %i.eb, ptr %i.cz, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 20 ; 2 uses
  %i.ed = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 1 %i.ed, i64 %i.dz, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dz
  store i8 0, ptr %i.ee, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit69

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit69: ; preds = %bb.ab, %bb.ac
  %i.ef = load ptr, ptr %3, align 8               ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bx
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit69
  %i.eh = load i64, ptr %i.bx, align 8
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62

.loopexit:                                        ; preds = %.noexc.i64, %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ae

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %.lr.ph107.split
  %.140 = phi ptr [ %.039106, %.lr.ph107.split ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.079.0105, i64 40 ; 2 uses
  %.not97 = icmp eq ptr %i.ej, %i.bw
  br i1 %.not97, label %._crit_edge, label %.lr.ph107.split

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i.i, %._crit_edge, %bb.o
  %.0 = phi ptr [ null, %bb.o ], [ %15, %._crit_edge ], [ %15, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobES9_EvT_SB_RSaIT0_E.exit.i.i ]
  %i.ek = load ptr, ptr %1, align 8               ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.g
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE5clearEv.exit
  %i.em = load i64, ptr %i.g, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP16aiExportDataBlobESaIS9_EE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret ptr %.0

bb.ae:                                            ; preds = %bb.n, %bb.p, %bb.ad
  %.pn50.pn = phi { ptr, i32 } [ %i.br, %bb.n ], [ %lpad.phi, %bb.ad ], [ %i.bu, %bb.p ]
  %i.eo = load ptr, ptr %1, align 8               ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.g
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ae
  %i.eq = load i64, ptr %i.g, align 8
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn50.pn
}

declare noundef zeroext i1 @_ZN6Assimp24MakeVerboseFormatProcess15IsVerboseFormatEPK7aiScene(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #7

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #7

declare void @_ZN6Assimp24MakeVerboseFormatProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #7

declare noundef zeroext i1 @_ZNK6Assimp23FlipWindingOrderProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #7

declare void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #7

declare void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare noundef zeroext i1 @_ZNK6Assimp14FlipUVsProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #7

declare void @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare noundef zeroext i1 @_ZNK6Assimp21MakeLeftHandedProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #7

declare void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

declare void @_ZN6Assimp19JoinVerticesProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp16ExportPropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit: ; preds = %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit: ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.r)
          to label %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit: ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.v)
          to label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev.exit: ; preds = %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit

_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit:     ; preds = %bb.a
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.a) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1168) #28
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #14

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK18ExceptionSwallowerI8aiReturnEclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @__cxa_rethrow() #32
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = extractvalue { ptr, i32 } %i.a, 1
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #30
  %i.e = icmp eq i32 %i.c, %i.d
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.b) #30 ; 0 uses
  tail call void @__cxa_end_catch()
  %. = select i1 %i.e, i32 -3, i32 -1
  ret i32 %.

bb.c:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6Assimp8Exporter14GetErrorStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

end_hunk_0
