Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/kythe-data?download=true
inline.NumInlined: 854
inline.NumDeleted: 426
begin_hunk_0_@_ZN2v88internal6torque9KytheData13AddBindingUseENS1_14SourcePositionEPNS1_7BindingINS1_10LocalLabelEEE:bb.a
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit

_ZN2v88internal6torque13KythePositionD2Ev.exit:   ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = load ptr, ptr %3, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.h
  br i1 %i.av, label %_ZN2v88internal6torque13KythePositionD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit
  %i.aw = load i64, ptr %i.h, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit12

_ZN2v88internal6torque13KythePositionD2Ev.exit12: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit15

bb.m:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %4, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ac
  br i1 %i.bb, label %_ZN2v88internal6torque13KythePositionD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.m
  %i.bc = load i64, ptr %i.ac, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit15

_ZN2v88internal6torque13KythePositionD2Ev.exit15: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ %i.az, %bb.m ]
  %i.be = load ptr, ptr %3, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  br i1 %i.bf, label %_ZN2v88internal6torque13KythePositionD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit15
  %i.bg = load i64, ptr %i.h, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit18

_ZN2v88internal6torque13KythePositionD2Ev.exit18: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN2v88internal6torque9KytheData17AddTypeDefinitionEPKNS1_10DeclarableE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.v8::internal::torque::KythePosition", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"struct.v8::internal::torque::KythePosition", align 8 ; 8 uses
  %4 = alloca %"struct.std::pair.256", align 8    ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque9KytheDataES4_E4top_E)
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.e = load i64, ptr %i.d, align 8
  %.not.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i = phi ptr [ %i.f, %bb.d ], [ %.sroa.06.0.i.i, %bb.f ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8 ; 4 uses
  %i.g = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.g, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %0, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE4findERSB_.exit, label %bb.e, !llvm.loop !46

bb.g:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %0 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %0, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.v = icmp eq ptr %0, %i.y
  br i1 %i.v, label %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.i ], [ %i.r, %bb.h ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8     ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit, !llvm.loop !4

_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE4findERSB_.exit: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.r, %bb.h ], [ %i.w, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  br label %bb.af

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !51
  %.not.i = icmp eq i32 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = select i1 %.not.i, ptr %i.af, ptr %i.ad ; 3 uses
  %.sroa.048.0.copyload = load i32, ptr %i.ag, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.549.0.copyload = load i32, ptr %.sroa.549.0..sroa_idx, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.ah, ptr %1, align 8, !alias.scope !52
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.ai, align 8, !alias.scope !52
  store i8 0, ptr %i.ah, align 8, !alias.scope !52
  %.not.i14 = icmp eq i32 %.sroa.048.0.copyload, -1
  br i1 %.not.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal6torque13SourceFileMap14PathFromV8RootB5cxx11ENS1_8SourceIdE(i32 %.sroa.048.0.copyload)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !alias.scope !52 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ah
  br i1 %i.am, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.an = load i64, ptr %i.ah, align 8, !alias.scope !52
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN2v88internal6torque13KythePositionD2Ev.exit33
  %common.resume.op = phi { ptr, i32 } [ %.pn12, %_ZN2v88internal6torque13KythePositionD2Ev.exit33 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ak, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i: ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ah, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  store i64 7, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.ap, align 1
  br label %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit

_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.l
  %i.aq = sext i32 %.sroa.4.0.copyload to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !alias.scope !52
  %i.as = sext i32 %.sroa.549.0.copyload to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.as, ptr %i.at, align 8, !alias.scope !52
  %i.au = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(81) %0)
          to label %bb.n unwind label %bb.ab      ; 4 uses

bb.n:                                             ; preds = %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.az, ptr %2, align 8
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #15
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #13 ; 8 uses
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %bb.q, label %._crit_edge.i.i

bb.q:                                             ; preds = %bb.p
  %i.bd = icmp slt i64 %i.bb, 0
  br i1 %i.bd, label %.noexc.i, label %bb.r

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.noexc15 unwind label %bb.ab

.noexc15:                                         ; preds = %.noexc.i
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.be = add nuw i64 %i.bb, 1                    ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !11

.noexc11.i:                                       ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #15
          to label %.noexc16 unwind label %bb.ab

.noexc16:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.r
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #16
          to label %.noexc17 unwind label %bb.ab  ; 2 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.bg, ptr %2, align 8
  store i64 %i.bb, ptr %i.az, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc17, %bb.p
  %i.bh = phi ptr [ %i.bg, %.noexc17 ], [ %i.az, %bb.p ] ; 3 uses
  switch i64 %i.bb, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bi = load i8, ptr %i.ay, align 1
  store i8 %i.bi, ptr %i.bh, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull align 1 %i.ay, i64 %i.bb, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bb, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bl, ptr %3, align 8
  %i.bm = load ptr, ptr %1, align 8               ; 2 uses
  %i.bn = load i64, ptr %i.ai, align 8            ; 8 uses
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %bb.v, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bp = icmp slt i64 %i.bn, 0
  br i1 %i.bp, label %.noexc.i.i, label %bb.w

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.noexc18 unwind label %bb.ac

.noexc18:                                         ; preds = %.noexc.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bq = add nuw i64 %i.bn, 1                    ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !11

.noexc6.i.i:                                      ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #15
          to label %.noexc19 unwind label %bb.ac

.noexc19:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.w
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #16
          to label %.noexc20 unwind label %bb.ac  ; 2 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.bs, ptr %3, align 8
  store i64 %i.bn, ptr %i.bl, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc20, %bb.u
  %i.bt = phi ptr [ %i.bs, %.noexc20 ], [ %i.bl, %bb.u ] ; 3 uses
  switch i64 %i.bn, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = load i8, ptr %i.bm, align 1
  store i8 %i.bu, ptr %i.bt, align 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bn, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn
  store i8 0, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.by = load ptr, ptr %i.au, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 noundef 5, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3)
          to label %bb.aa unwind label %bb.ad     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %3, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bl
  br i1 %i.cd, label %_ZN2v88internal6torque13KythePositionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.ce = load i64, ptr %i.bl, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit

_ZN2v88internal6torque13KythePositionD2Ev.exit:   ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.az
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit
  %i.ci = load i64, ptr %i.az, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %0, ptr %4, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cb, ptr %i.ck, align 8
  %i.cl = invoke { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal6torque10DeclarableESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS6_IS5_mEEEES6_INSA_14_Node_iteratorIS8_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE6insertISA_IS5_mEEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueENSt8__detail14_Node_iteratorISC_Lb0ELb0EEEE4typeENSK_20_Node_const_iteratorISC_Lb0ELb0EEESJ_.exit unwind label %bb.ae ; 0 uses

_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE6insertISA_IS5_mEEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueENSt8__detail14_Node_iteratorISC_Lb0ELb0EEEE4typeENSK_20_Node_const_iteratorISC_Lb0ELb0EEESJ_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.cm = load ptr, ptr %1, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ah
  br i1 %i.cn, label %_ZN2v88internal6torque13KythePositionD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE6insertISA_IS5_mEEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueENSt8__detail14_Node_iteratorISC_Lb0ELb0EEEE4typeENSK_20_Node_const_iteratorISC_Lb0ELb0EEESJ_.exit
  %i.co = load i64, ptr %i.ah, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit24

_ZN2v88internal6torque13KythePositionD2Ev.exit24: ; preds = %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE6insertISA_IS5_mEEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueENSt8__detail14_Node_iteratorISC_Lb0ELb0EEEE4typeENSK_20_Node_const_iteratorISC_Lb0ELb0EEESJ_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.af

bb.ab:                                            ; preds = %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit27

bb.ad:                                            ; preds = %bb.z
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %3, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bl
  br i1 %i.cu, label %_ZN2v88internal6torque13KythePositionD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %bb.ad
  %i.cv = load i64, ptr %i.bl, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit27

_ZN2v88internal6torque13KythePositionD2Ev.exit27: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ %i.cs, %bb.ad ] ; 2 uses
  %i.cx = load ptr, ptr %2, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.az
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit27
  %i.cz = load i64, ptr %i.az, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit27, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.ae
  %.pn12 = phi { ptr, i32 } [ %i.db, %bb.ae ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.cq, %bb.ab ], [ %.pn, %_ZN2v88internal6torque13KythePositionD2Ev.exit27 ]
  %i.dc = load ptr, ptr %1, align 8               ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ah
  br i1 %i.dd, label %_ZN2v88internal6torque13KythePositionD2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.de = load i64, ptr %i.ah, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit33

_ZN2v88internal6torque13KythePositionD2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %common.resume

bb.af:                                            ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit24, %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE4findERSB_.exit
  %.0 = phi i64 [ %i.ac, %_ZNSt13unordered_mapIPKN2v88internal6torque10DeclarableEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE4findERSB_.exit ], [ %i.cb, %_ZN2v88internal6torque13KythePositionD2Ev.exit24 ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque9KytheData10AddTypeUseENS1_14SourcePositionEPKNS1_10DeclarableE(ptr nofree noundef readonly byval(%"struct.v8::internal::torque::SourcePosition") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.v8::internal::torque::KythePosition", align 8 ; 14 uses
  %3 = alloca %"struct.v8::internal::torque::KythePosition", align 8 ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque9KytheDataES4_E4top_E)
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i64 @_ZN2v88internal6torque9KytheData17AddTypeDefinitionEPKNS1_10DeclarableE(ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.d, ptr %2, align 8, !alias.scope !55
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8, !alias.scope !55
  store i8 0, ptr %i.d, align 8, !alias.scope !55
  %i.f = load i32, ptr %0, align 8, !noalias !55  ; 2 uses
  %.not.i = icmp eq i32 %i.f, -1
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal6torque13SourceFileMap14PathFromV8RootB5cxx11ENS1_8SourceIdE(i32 %i.f)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %._ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit_crit_edge unwind label %bb.f

._ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %2, align 8
  %.pre28 = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !alias.scope !55 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.d, align 8, !alias.scope !55
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN2v88internal6torque13KythePositionD2Ev.exit17
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN2v88internal6torque13KythePositionD2Ev.exit17 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  store i64 7, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.m, align 1
  br label %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit

_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit: ; preds = %._ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i
  %i.n = phi i64 [ %.pre28, %._ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit_crit_edge ], [ 7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i ] ; 8 uses
  %i.o = phi ptr [ %.pre, %._ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit_crit_edge ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !noalias !55
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !55
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !noalias !55
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.v, ptr %i.w, align 8, !alias.scope !55
  %i.x = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.y, ptr %3, align 8
  %i.z = icmp ugt i64 %i.n, 15
  br i1 %i.z, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit
  %i.aa = icmp slt i64 %i.n, 0
  br i1 %i.aa, label %.noexc.i.i, label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw i64 %i.n, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !11

.noexc6.i.i:                                      ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #15
          to label %.noexc7 unwind label %bb.m

.noexc7:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #16
          to label %.noexc8 unwind label %bb.m    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ad, ptr %3, align 8
  store i64 %i.n, ptr %i.y, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit
  %i.ae = phi ptr [ %i.ad, %.noexc8 ], [ %i.y, %_ZN2v88internal6torque12_GLOBAL__N_117MakeKythePositionERKNS1_14SourcePositionE.exit ] ; 3 uses
  switch i64 %i.n, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.o, align 1
  store i8 %i.af, ptr %i.ae, align 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.o, i64 %i.n, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.n
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.x, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 5, i64 noundef %i.c, ptr noundef nonnull align 8 %3)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %_ZN2v88internal6torque13KythePositionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ao = load i64, ptr %i.y, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit

_ZN2v88internal6torque13KythePositionD2Ev.exit:   ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.d
  br i1 %i.ar, label %_ZN2v88internal6torque13KythePositionD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit
  %i.as = load i64, ptr %i.d, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #14
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit11

_ZN2v88internal6torque13KythePositionD2Ev.exit11: ; preds = %_ZN2v88internal6torque13KythePositionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque13KythePositionD2Ev.exit14

bb.n:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.y
  br i1 %i.ax, label %_ZN2v88internal6torque13KythePositionD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
end_hunk_0
