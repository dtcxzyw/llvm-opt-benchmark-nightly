Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCxxModuleUsageEffects?download=true
inline.NumInlined: 817
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN23cmCxxModuleUsageEffectsC2EPK17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.nu = icmp eq ptr %i.nt, %i.lf
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.nv = load i64, ptr %i.lf, align 8, !tbaa !19
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %.critedge69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %bb.az
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.az ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %.pn49.pn.pn, %.critedge69 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gf) #23
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %14) #23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn, %bb.ca ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.body82

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZN12cmCryptoHashC1ENS_4AlgoE(ptr noundef nonnull align 8 dereferenceable(16) %25, i32 noundef 9)
          to label %bb.cd unwind label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.nx = load ptr, ptr %12, align 8, !tbaa !26
  %i.ny = load i64, ptr %i.af, align 8, !tbaa !18
  invoke void @_ZN12cmCryptoHash10HashStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 %i.ny, ptr %i.nx)
          to label %bb.ce unwind label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %i.nz = load ptr, ptr %0, align 8, !tbaa !26    ; 6 uses
  %i.oa = icmp eq ptr %i.nz, %i.e
  %i.ob = load ptr, ptr %26, align 8, !tbaa !26   ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.od = icmp eq ptr %i.ob, %i.oc                ; 2 uses
  br i1 %i.oa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ce
  br i1 %i.od, label %bb.cf, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ce
  br i1 %i.od, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.oe = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !18 ; 3 uses
  %i.og = icmp ult i64 %i.of, 16
  call void @llvm.assume(i1 %i.og)
  switch i64 %i.of, label %bb.ch [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.oh = load i8, ptr %i.ob, align 1, !tbaa !19
  store i8 %i.oh, ptr %i.nz, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nz, ptr align 1 %i.ob, i64 %i.of, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.oi = load i64, ptr %i.oe, align 8, !tbaa !18 ; 2 uses
  store i64 %i.oi, ptr %i.f, align 8, !tbaa !18
  %i.oj = load ptr, ptr %0, align 8, !tbaa !26
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oi
  store i8 0, ptr %i.ok, align 1, !tbaa !19
  %.pre.i210 = load ptr, ptr %26, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ob, ptr %0, align 8, !tbaa !26
  %i.ol = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.om = load <2 x i64>, ptr %i.ol, align 8, !tbaa !19
  store <2 x i64> %i.om, ptr %i.f, align 8, !tbaa !19
  br label %bb.cj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.on = load i64, ptr %i.e, align 8, !tbaa !19
  store ptr %i.ob, ptr %0, align 8, !tbaa !26
  %i.oo = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.op = load <2 x i64>, ptr %i.oo, align 8, !tbaa !19
  store <2 x i64> %i.op, ptr %i.f, align 8, !tbaa !19
  %.not.i208 = icmp eq ptr %i.nz, null
  br i1 %.not.i208, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.nz, ptr %26, align 8, !tbaa !26
  store i64 %i.on, ptr %i.oc, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.oc, ptr %26, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ci, %bb.cj
  %i.oq = phi ptr [ %.pre.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.nz, %bb.ci ], [ %i.oc, %bb.cj ]
  %i.or = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.or, align 8, !tbaa !18
  store i8 0, ptr %i.oq, align 1, !tbaa !19
  %i.os = load ptr, ptr %26, align 8, !tbaa !26   ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !19
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @_ZN12cmCryptoHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.ox = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ae
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %i.oz = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.ck:                                            ; preds = %bb.cc
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cd
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @_ZN12cmCryptoHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #23
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn64 = phi { ptr, i32 } [ %i.pc, %bb.cl ], [ %i.pb, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %.body82

.body82:                                          ; preds = %bb.aj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm, %bb.cb, %.body88
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %bb.cm ], [ %.pn62, %.body88 ], [ %lpad.loopexit.split-lp359, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn56.pn.pn.pn.pn, %bb.cb ], [ %i.fh, %bb.aj ]
  %i.pd = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.ae
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %.body82
  %i.pf = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %.body82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.fg, %bb.ai ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i ]
  call void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #23
  %i.ph = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.e
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %.body
  %i.pj = load i64, ptr %i.e, align 8, !tbaa !19
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  resume { ptr, i32 } %.pn64.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZNK8cmTarget10IsImportedEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare { ptr, ptr } @_ZNK8cmTarget43GetImportedCxxModulesCompileFeaturesEntriesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare { ptr, ptr } @_ZNK8cmTarget42GetImportedCxxModulesCompileOptionsEntriesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118AppendUsageEntriesISt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EEEEvRS8_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.305", align 8   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp ugt i64 %i.h, 288230376151711743
  br i1 %i.i, label %.invoke, label %bb.b

.invoke:                                          ; preds = %bb.m, %bb.a
  %i.j = phi ptr [ @.str.30, %bb.a ], [ @.str.26, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.j) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not91 = icmp eq ptr %i.c, %i.d
  br i1 %.not91, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = shl nuw nsw i64 %i.h, 5
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc15:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !29     ; 5 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc15, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.n, %.noexc15 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.o, %.noexc15 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.q, ptr %.012.i.i.i.i, align 8, !tbaa !15, !alias.scope !245
  %i.r = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !246 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18, !alias.scope !246 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false), !alias.scope !247
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.r, ptr %.012.i.i.i.i, align 8, !tbaa !26, !alias.scope !245
  %i.y = load i64, ptr %i.s, align 8, !tbaa !19, !alias.scope !246
  store i64 %i.y, ptr %i.q, align 8, !tbaa !19, !alias.scope !245
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !18, !alias.scope !246
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !18, !alias.scope !245
  store ptr %i.s, ptr %.0911.i.i.i.i, align 8, !tbaa !26, !alias.scope !246
  store i64 0, ptr %i.aa, align 8, !tbaa !18, !alias.scope !246
  store i8 0, ptr %i.s, align 8, !tbaa !19, !alias.scope !246
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc15
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.o to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ah) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.n, ptr %2, align 8, !tbaa !29
  store ptr %i.n, ptr %i.l, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.h
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !32
  %.pre = load ptr, ptr %1, align 8, !tbaa !35
  %.pre60 = load ptr, ptr %i.b, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.b
  %3 = phi ptr [ %.pre60, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.c, %bb.b ] ; 2 uses
  %4 = phi ptr [ %.pre, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not48 = icmp eq ptr %4, %3
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  br i1 %.not48, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.a

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre61 = load ptr, ptr %2, align 8, !tbaa !33  ; 6 uses
  %.pre62 = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %.pre61, %.pre62
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.al = ptrtoint ptr %.pre62 to i64
  %i.am = ptrtoint ptr %.pre61 to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = ashr exact i64 %i.an, 5
  %i.ap = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = xor i64 %i.aq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %.pre61, ptr %.pre62, i64 noundef %i.ar)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.e
  %i.as = icmp sgt i64 %i.an, 512
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc18
  %i.at = getelementptr inbounds nuw i8, ptr %.pre61, i64 512 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %.pre61, ptr nonnull %i.at)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.f
  %.not4.i.i.i.i = icmp eq ptr %i.at, %.pre62
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.noexc19, %.noexc20
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.au, %.noexc20 ], [ %i.at, %.noexc19 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %.lr.ph.i.i.i.i16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.au, %.pre62
  br i1 %.not.i.i.i.i17, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i.i.i16, !llvm.loop !1

bb.g:                                             ; preds = %.noexc18
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %.pre61, ptr %.pre62)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.a:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.039.049 = phi ptr [ %i.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %4, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit ] ; 4 uses
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 8 uses
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !15
  %i.ay = load ptr, ptr %.sroa.039.049, align 8, !tbaa !26 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.039.049, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !25
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %.noexc.i.i
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !26
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc22, %bb.h
  %i.be = phi ptr [ %i.bc, %.noexc22 ], [ %i.ax, %bb.h ] ; 2 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !19
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !18
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bk = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bl, ptr %i.aj, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %.lr.ph.a
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.039.049)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.049, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.bm, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph.a

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %.noexc20, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, %.noexc19, %._crit_edge, %bb.g
  %i.bn = phi ptr [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit ], [ %i.ak, %bb.g ], [ %i.ak, %.noexc19 ], [ %i.ak, %._crit_edge ], [ %i.ak, %.noexc20 ] ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %.not4250 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4250, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.m

._crit_edge53:                                    ; preds = %bb.o, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !18 ; 4 uses
  %i.bu = add i64 %i.bt, 1                        ; 3 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %._crit_edge53
  %i.by = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.by)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge53
  %i.bz = load i64, ptr %i.bw, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ca = phi i64 [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cb = icmp ugt i64 %i.bu, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bt, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.l
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !26
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph52, %bb.o
  %.sroa.035.051 = phi ptr [ %i.bo, %.lr.ph52 ], [ %i.cv, %bb.o ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.035.051, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.cf = sub i64 4611686018427387903, %i.ce
  %i.cg = icmp ult i64 %i.cf, %i.cd
  br i1 %i.cg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.ch = load ptr, ptr %.sroa.035.051, align 8, !tbaa !26
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ch, i64 noundef %i.cd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cj = load i64, ptr %i.bq, align 8, !tbaa !18 ; 4 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.br
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cn = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.co = load i64, ptr %i.br, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30
  %i.cp = phi i64 [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30 ]
  %i.cq = icmp ugt i64 %i.ck, %i.cp
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.n
  %.pre.i29 = load ptr, ptr %0, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %.noexc31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28
  %i.cr = phi ptr [ %.pre.i29, %.noexc31 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  store i8 10, ptr %i.cs, align 1, !tbaa !19
  store i64 %i.ck, ptr %i.bq, align 8, !tbaa !18
  %i.ct = load ptr, ptr %0, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck
  store i8 0, ptr %i.cu, align 1, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.035.051, i64 32 ; 2 uses
  %.not42 = icmp eq ptr %i.cv, %i.bp
  br i1 %.not42, label %._crit_edge53, label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i16, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.noexc.i.i, %bb.k, %.invoke, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.e, %bb.f, %bb.g, %bb.l
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp102

bb.p:                                             ; preds = %.noexc24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cw = phi ptr [ %.pre.i, %.noexc24 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.bt
  store i8 0, ptr %i.cx, align 1, !tbaa !19
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !18
  %i.cy = load ptr, ptr %0, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bu
  store i8 0, ptr %i.cz, align 1, !tbaa !19
  %i.da = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.db = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.da, %bb.p ] ; 3 uses
  %i.dc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !19
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %i.db
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i34 = load ptr, ptr %2, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.di = phi ptr [ %.pr.i34, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.da, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare void @_ZNK17cmGeneratorTarget17GetCompileOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZSt8_DestroyI2BTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !252
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !248
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !248
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
end_hunk_0
