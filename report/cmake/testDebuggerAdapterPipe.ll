Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testDebuggerAdapterPipe?download=true
inline.NumInlined: 2610
inline.NumDeleted: 1224
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3dap26ExceptionBreakpointsFilterC2ERKS0_:bb.a
  %i.cg = icmp eq ptr %i.cf, %i.au
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ch = load i64, ptr %i.au, align 8, !tbaa !63
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ce, %bb.o ] ; 2 uses
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !78 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ac
  br i1 %i.ck, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = load i64, ptr %i.ac, align 8, !tbaa !63
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #26
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cn = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.e
  br i1 %i.co, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !63
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #26
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit22

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit22: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3dap18InitializeResponseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(234) %0, ptr noundef nonnull align 8 dereferenceable(234) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  tail call void @_ZNSt6vectorIN3dap16ColumnDescriptorESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !273, !range !130, !noundef !131
  store i8 %i.e, ptr %i.c, align 8, !tbaa !273
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt6vectorIN3dap14BreakpointModeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %i.g)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !277, !range !130, !noundef !131
  store i8 %i.j, ptr %i.h, align 8, !tbaa !277
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !237  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %.noexc48, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.r, 9223372036854775776
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25
          to label %.noexc48 unwind label %bb.m

.noexc48:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ null, %bb.b ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !237
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !238
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !239
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.aa = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.z, ptr noundef %i.u)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc48
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !237 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !239
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #26
  br label %.body

bb.f:                                             ; preds = %.noexc48
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !238
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !274, !range !130, !noundef !131
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !274
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.ak, ptr noundef nonnull align 8 dereferenceable(25) %i.al)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !138, !range !130, !noundef !131
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !139
  store i8 %i.ar, ptr %i.ap, align 8, !tbaa !139
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.au = load i8, ptr %i.at, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.au, ptr %i.as, align 1, !tbaa !129
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !139
  store i8 %i.ax, ptr %i.av, align 2, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !129
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !238 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !237 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i50 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i.i.i.i50, label %.noexc56, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775776
  br i1 %i.bj, label %.noexc.i.i.i54, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51, !prof !123

.noexc.i.i.i54:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc55 unwind label %bb.o

.noexc55:                                         ; preds = %.noexc.i.i.i54
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51: ; preds = %bb.h
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #25
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51, %bb.g
  %i.bl = phi ptr [ null, %bb.g ], [ %i.bk, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51 ] ; 4 uses
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !237
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !238
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !239
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !91
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.br = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bp, ptr %i.bq, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.noexc56
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !237 ; 3 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i52, label %.body57, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !239
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #26
  br label %.body57

bb.k:                                             ; preds = %.noexc56
  %i.by = add nuw i64 %i.a, 90
  %rt.bound0 = icmp ugt i64 %i.by, %i.b
  %i.bz = add nuw i64 %i.b, 74
  %rt.bound1 = icmp ugt i64 %i.bz, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !223

bb.l:                                             ; preds = %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51, %.noexc.i.i.i54
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %bb.i, %bb.j, %bb.o
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.cd, %bb.o ], [ %i.bs, %bb.j ], [ %i.bs, %bb.i ]
  tail call void @_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %i.ak) #24
  br label %bb.p

bb.p:                                             ; preds = %.body57, %bb.n
  %.pn = phi { ptr, i32 } [ %eh.lpad-body58, %.body57 ], [ %i.cc, %bb.n ]
  tail call void @_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.k) #24
  br label %.body

.body:                                            ; preds = %bb.m, %bb.e, %bb.d, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cb, %bb.m ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ]
  tail call void @_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.f) #24
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ca, %bb.l ]
  tail call void @_ZNSt6vectorIN3dap16ColumnDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %0) #24
  resume { ptr, i32 } %.pn.pn.pn

.rtvec:                                           ; preds = %bb.k
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !238
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !274, !range !130, !noundef !131
  store i8 %i.cg, ptr %i.ce, align 8, !tbaa !274
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cj = load <16 x i8>, ptr %i.ci, align 8, !tbaa !139
  store <16 x i8> %i.cj, ptr %i.ch, align 8, !tbaa !139
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cm = load <16 x i8>, ptr %i.cl, align 8, !tbaa !139
  store <16 x i8> %i.cm, ptr %i.ck, align 8, !tbaa !139
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cp = load <16 x i8>, ptr %i.co, align 8, !tbaa !139
  store <16 x i8> %i.cp, ptr %i.cn, align 8, !tbaa !139
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cs = load <16 x i8>, ptr %i.cr, align 8, !tbaa !139
  store <16 x i8> %i.cs, ptr %i.cq, align 8, !tbaa !139
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !139
  store i8 %i.cv, ptr %i.ct, align 8, !tbaa !139
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !129
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.k
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !238
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.db = load i8, ptr %i.da, align 8, !tbaa !274, !range !130, !noundef !131
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !274
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !139
  store i8 %i.de, ptr %i.dc, align 8, !tbaa !139
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !129
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !139
  store i8 %i.dk, ptr %i.di, align 2, !tbaa !139
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 171
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !129
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !139
  store i8 %i.dq, ptr %i.do, align 4, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 173
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 173
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !129
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 174
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 174
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !139
  store i8 %i.dw, ptr %i.du, align 2, !tbaa !139
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 175
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !129
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !139
  store i8 %i.ec, ptr %i.ea, align 8, !tbaa !139
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !129
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !139
  store i8 %i.ei, ptr %i.eg, align 2, !tbaa !139
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !129
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !139
  store i8 %i.eo, ptr %i.em, align 4, !tbaa !139
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 181
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !129
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 182
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !139
  store i8 %i.eu, ptr %i.es, align 2, !tbaa !139
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 183
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !129
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !139
  store i8 %i.fa, ptr %i.ey, align 8, !tbaa !139
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !129
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !139
  store i8 %i.fg, ptr %i.fe, align 2, !tbaa !139
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 187
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !129
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.fm = load i8, ptr %i.fl, align 4, !tbaa !139
  store i8 %i.fm, ptr %i.fk, align 4, !tbaa !139
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !129
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !139
  store i8 %i.fs, ptr %i.fq, align 2, !tbaa !139
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 191
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !129
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !139
  store i8 %i.fy, ptr %i.fw, align 8, !tbaa !139
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !129
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !139
  store i8 %i.ge, ptr %i.gc, align 2, !tbaa !139
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 195
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !129, !range !130, !noundef !131
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !129
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !139
  store i8 %i.gk, ptr %i.gi, align 4, !tbaa !139
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 197
end_hunk_0
begin_hunk_1_@_ZN3dap23CMakeInitializeResponseaSEOS0_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(234) ptr @_ZN3dap18InitializeResponseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(234) %0, ptr noundef nonnull align 8 dereferenceable(234) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %2 = alloca %"class.std::vector.49", align 16   ; 5 uses
  %3 = alloca %"class.std::vector", align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !275
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load <2 x ptr>, ptr %0, align 8, !tbaa !275
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !275
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !248
  store ptr %i.i, ptr %i.c, align 8, !tbaa !248
  store <2 x ptr> %i.h, ptr %3, align 16, !tbaa !275
  store ptr %i.d, ptr %i.g, align 16, !tbaa !248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %1, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN3dap16ColumnDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !273, !range !130, !noundef !131
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.k, ptr %i.l, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !240  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !241
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !242
  %i.t = load <2 x ptr>, ptr %i.n, align 8, !tbaa !278
  store <2 x ptr> %i.t, ptr %i.m, align 8, !tbaa !278
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !242
  store ptr %i.v, ptr %i.r, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.n, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN3dap14BreakpointModeEEEvT_S5_(ptr noundef %i.o, ptr noundef %i.q)
          to label %_ZSt8_DestroyIPN3dap14BreakpointModeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i unwind label %bb.c

_ZSt8_DestroyIPN3dap14BreakpointModeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3dap14BreakpointModeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.y) #26
  br label %_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEEaSEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPN3dap14BreakpointModeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !277, !range !130, !noundef !131
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.ac, ptr %i.ad, align 8, !tbaa !277
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !237 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !238 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.al = load <2 x ptr>, ptr %i.af, align 8, !tbaa !91
  store <2 x ptr> %i.al, ptr %i.ae, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !239
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !239
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.af, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEEaSEOS5_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ag, %_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEEaSEOS5_.exit ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !63
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.at, %i.ai
  br i1 %.not.i.i.i.i.i.i41, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEEaSEOS5_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.au = ptrtoint ptr %i.ak to i64
  %i.av = ptrtoint ptr %i.ag to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aw) #26
  br label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit

_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !274, !range !130, !noundef !131
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.ay, ptr %i.az, align 8, !tbaa !274
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !245
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !276
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !276
  store <2 x ptr> %i.be, ptr %i.ba, align 8, !tbaa !276
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !245
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !245
  store <2 x ptr> %i.bh, ptr %2, align 16, !tbaa !276
  store ptr %i.bd, ptr %i.bg, align 16, !tbaa !245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bb, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !138, !range !130, !noundef !131
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !138
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !139
  store i8 %i.bo, ptr %i.bm, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !129, !range !130, !noundef !131
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !129
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !139
  store i8 %i.bu, ptr %i.bs, align 2, !tbaa !139
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !129, !range !130, !noundef !131
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !129
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !237 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !238 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !239
  %i.cf = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !91
  store <2 x ptr> %i.cf, ptr %i.by, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !239
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !239
  %.not4.i.i.i.i.i.i42 = icmp eq ptr %i.ca, %i.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bz, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i42, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i46
  %.05.i.i.i.i.i.i44 = phi ptr [ %i.cn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i46 ], [ %i.ca, %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit ] ; 3 uses
  %i.ci = load ptr, ptr %.05.i.i.i.i.i.i44, align 8, !tbaa !78 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i44, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i45: ; preds = %.lr.ph.i.i.i.i.i.i43
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !63
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i46

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i45
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i44, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i47 = icmp eq ptr %i.cn, %i.cc
  br i1 %.not.i.i.i.i.i.i47, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i48: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i46, %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit
  %.not.i.i1.i.i.i.i49 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i1.i.i.i.i49, label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i48
  %i.co = ptrtoint ptr %i.ce to i64
  %i.cp = ptrtoint ptr %i.ca to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cq) #26
  br label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51

_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i48, %bb.e
  %i.cr = add nuw i64 %i.b, 74
  %rt.bound0 = icmp ugt i64 %i.cr, %i.a
  %i.cs = add nuw i64 %i.a, 74
  %rt.bound1 = icmp ugt i64 %i.cs, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51.rtscalar, label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51.rtvec, !prof !223

_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51.rtvec: ; preds = %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !274, !range !130, !noundef !131
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %i.cu, ptr %i.cv, align 8, !tbaa !274
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cy = load <16 x i8>, ptr %i.cx, align 8, !tbaa !139
  store <16 x i8> %i.cy, ptr %i.cw, align 8, !tbaa !139
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.db = load <16 x i8>, ptr %i.da, align 8, !tbaa !139
  store <16 x i8> %i.db, ptr %i.cz, align 8, !tbaa !139
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.de = load <16 x i8>, ptr %i.dd, align 8, !tbaa !139
  store <16 x i8> %i.de, ptr %i.dc, align 8, !tbaa !139
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dh = load <16 x i8>, ptr %i.dg, align 8, !tbaa !139
  store <16 x i8> %i.dh, ptr %i.df, align 8, !tbaa !139
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !139
  store i8 %i.dk, ptr %i.di, align 8, !tbaa !139
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !129, !range !130, !noundef !131
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !129
  br label %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51.rtcont

_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51.rtscalar: ; preds = %_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEaSEOSA_.exit51
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !274, !range !130, !noundef !131
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !274
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !139
  store i8 %i.dt, ptr %i.dr, align 8, !tbaa !139
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !129, !range !130, !noundef !131
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !129
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !139
  store i8 %i.dz, ptr %i.dx, align 2, !tbaa !139
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 171
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !129, !range !130, !noundef !131
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !129
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !139
  store i8 %i.ef, ptr %i.ed, align 4, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 173
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !129, !range !130, !noundef !131
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !129
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 174
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 174
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !139
  store i8 %i.el, ptr %i.ej, align 2, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 175
  %i.en = load i8, ptr %i.em, align 1, !tbaa !129, !range !130, !noundef !131
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !129
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !139
  store i8 %i.er, ptr %i.ep, align 8, !tbaa !139
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.et = load i8, ptr %i.es, align 1, !tbaa !129, !range !130, !noundef !131
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !129
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !139
  store i8 %i.ex, ptr %i.ev, align 2, !tbaa !139
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !129, !range !130, !noundef !131
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !129
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !139
  store i8 %i.fd, ptr %i.fb, align 4, !tbaa !139
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 181
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !129, !range !130, !noundef !131
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !129
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 182
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !139
  store i8 %i.fj, ptr %i.fh, align 2, !tbaa !139
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 183
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !129, !range !130, !noundef !131
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 183
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !129
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !139
  store i8 %i.fp, ptr %i.fn, align 8, !tbaa !139
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !129, !range !130, !noundef !131
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !129
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !139
  store i8 %i.fv, ptr %i.ft, align 2, !tbaa !139
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !129, !range !130, !noundef !131
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 187
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !129
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.gb = load i8, ptr %i.ga, align 4, !tbaa !139
  store i8 %i.gb, ptr %i.fz, align 4, !tbaa !139
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !129, !range !130, !noundef !131
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 189
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !129
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.gh = load i8, ptr %i.gg, align 2, !tbaa !139
  store i8 %i.gh, ptr %i.gf, align 2, !tbaa !139
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 191
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !129, !range !130, !noundef !131
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 191
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !129
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !139
  store i8 %i.gn, ptr %i.gl, align 8, !tbaa !139
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !129, !range !130, !noundef !131
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !129
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !139
  store i8 %i.gt, ptr %i.gr, align 2, !tbaa !139
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 195
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !129, !range !130, !noundef !131
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !129
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !139
  store i8 %i.gz, ptr %i.gx, align 4, !tbaa !139
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 197
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !129, !range !130, !noundef !131
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !129
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 198
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 198
  %i.hf = load i8, ptr %i.he, align 2, !tbaa !139
  store i8 %i.hf, ptr %i.hd, align 2, !tbaa !139
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 199
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !129, !range !130, !noundef !131
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 199
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !129
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !139
  store i8 %i.hl, ptr %i.hj, align 8, !tbaa !139
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 201
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !129, !range !130, !noundef !131
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !129
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.hr = load i8, ptr %i.hq, align 2, !tbaa !139
  store i8 %i.hr, ptr %i.hp, align 2, !tbaa !139
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 203
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !129, !range !130, !noundef !131
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !129
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.hx = load i8, ptr %i.hw, align 4, !tbaa !139
  store i8 %i.hx, ptr %i.hv, align 4, !tbaa !139
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 205
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !129, !range !130, !noundef !131
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 205
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !129
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 206
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 206
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !139
  store i8 %i.id, ptr %i.ib, align 2, !tbaa !139
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 207
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !129, !range !130, !noundef !131
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 207
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !129
end_hunk_1
