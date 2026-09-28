Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/protocol_response?download=true
inline.NumInlined: 10593
inline.NumDeleted: 4289
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZSt8_DestroyIPN3dap16ColumnDescriptorEEvT_S3_:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i
  %i.s = load ptr, ptr %.05.i, align 8, !tbaa !52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN3dap16ColumnDescriptorEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !53
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #21
  br label %_ZSt8_DestroyIN3dap16ColumnDescriptorEEvPT_.exit.i

_ZSt8_DestroyIN3dap16ColumnDescriptorEEvPT_.exit.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit3.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i, i64 160 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3dap16ColumnDescriptorEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !13

_ZNSt12_Destroy_auxILb0EE9__destroyIPN3dap16ColumnDescriptorEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN3dap16ColumnDescriptorEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3dap18InitializeResponseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(234) %0, ptr noundef nonnull align 8 dereferenceable(234) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  tail call void @_ZNSt6vectorIN3dap16ColumnDescriptorESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !237, !range !89, !noundef !90
  store i8 %i.e, ptr %i.c, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt6vectorIN3dap14BreakpointModeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(25) %i.g)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !242, !range !89, !noundef !90
  store i8 %i.j, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %.noexc48, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.r, 9223372036854775776
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !82

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24
          to label %.noexc48 unwind label %bb.m

.noexc48:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.u = phi ptr [ null, %bb.b ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !115
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.aa = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.y, ptr %i.z, ptr noundef %i.u)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc48
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #21
  br label %.body

bb.f:                                             ; preds = %.noexc48
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !114
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !125, !range !89, !noundef !90
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !125
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.ak, ptr noundef nonnull align 8 dereferenceable(25) %i.al)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !247, !range !89, !noundef !90
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !106
  store i8 %i.ar, ptr %i.ap, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.au = load i8, ptr %i.at, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.au, ptr %i.as, align 1, !tbaa !109
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !106
  store i8 %i.ax, ptr %i.av, align 2, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !114 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i50 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i.i.i.i50, label %.noexc56, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775776
  br i1 %i.bj, label %.noexc.i.i.i54, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51, !prof !82

.noexc.i.i.i54:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc55 unwind label %bb.o

.noexc55:                                         ; preds = %.noexc.i.i.i54
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51: ; preds = %bb.h
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #24
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51, %bb.g
  %i.bl = phi ptr [ null, %bb.g ], [ %i.bk, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i51 ] ; 4 uses
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !113
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !115
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !120
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !120
  %i.br = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bp, ptr %i.bq, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.noexc56
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i52, label %.body57, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !115
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #21
  br label %.body57

bb.k:                                             ; preds = %.noexc56
  %i.by = add nuw i64 %i.a, 90
  %rt.bound0 = icmp ugt i64 %i.by, %i.b
  %i.bz = add nuw i64 %i.b, 74
  %rt.bound1 = icmp ugt i64 %i.bz, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !42

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
  tail call void @_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %i.ak) #20
  br label %bb.p

bb.p:                                             ; preds = %.body57, %bb.n
  %.pn = phi { ptr, i32 } [ %eh.lpad-body58, %.body57 ], [ %i.cc, %bb.n ]
  tail call void @_ZN3dap8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.k) #20
  br label %.body

.body:                                            ; preds = %bb.m, %bb.e, %bb.d, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cb, %bb.m ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ]
  tail call void @_ZN3dap8optionalISt6vectorINS_14BreakpointModeESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.f) #20
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ca, %bb.l ]
  tail call void @_ZNSt6vectorIN3dap16ColumnDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %0) #20
  resume { ptr, i32 } %.pn.pn.pn

.rtvec:                                           ; preds = %bb.k
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !114
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !125, !range !89, !noundef !90
  store i8 %i.cg, ptr %i.ce, align 8, !tbaa !125
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cj = load <16 x i8>, ptr %i.ci, align 8, !tbaa !106
  store <16 x i8> %i.cj, ptr %i.ch, align 8, !tbaa !106
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cm = load <16 x i8>, ptr %i.cl, align 8, !tbaa !106
  store <16 x i8> %i.cm, ptr %i.ck, align 8, !tbaa !106
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cp = load <16 x i8>, ptr %i.co, align 8, !tbaa !106
  store <16 x i8> %i.cp, ptr %i.cn, align 8, !tbaa !106
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cs = load <16 x i8>, ptr %i.cr, align 8, !tbaa !106
  store <16 x i8> %i.cs, ptr %i.cq, align 8, !tbaa !106
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !106
  store i8 %i.cv, ptr %i.ct, align 8, !tbaa !106
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !109
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.k
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !114
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.db = load i8, ptr %i.da, align 8, !tbaa !125, !range !89, !noundef !90
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !125
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !106
  store i8 %i.de, ptr %i.dc, align 8, !tbaa !106
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !109
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !106
  store i8 %i.dk, ptr %i.di, align 2, !tbaa !106
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 171
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !109
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !106
  store i8 %i.dq, ptr %i.do, align 4, !tbaa !106
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 173
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 173
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !109
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 174
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 174
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !106
  store i8 %i.dw, ptr %i.du, align 2, !tbaa !106
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 175
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 175
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !109
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !106
  store i8 %i.ec, ptr %i.ea, align 8, !tbaa !106
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !109
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !106
  store i8 %i.ei, ptr %i.eg, align 2, !tbaa !106
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !109
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !106
  store i8 %i.eo, ptr %i.em, align 4, !tbaa !106
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 181
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !109
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 182
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !106
  store i8 %i.eu, ptr %i.es, align 2, !tbaa !106
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 183
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !109
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !106
  store i8 %i.fa, ptr %i.ey, align 8, !tbaa !106
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !109
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !106
  store i8 %i.fg, ptr %i.fe, align 2, !tbaa !106
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 187
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !109
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.fm = load i8, ptr %i.fl, align 4, !tbaa !106
  store i8 %i.fm, ptr %i.fk, align 4, !tbaa !106
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !109
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !106
  store i8 %i.fs, ptr %i.fq, align 2, !tbaa !106
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 191
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !109
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !106
  store i8 %i.fy, ptr %i.fw, align 8, !tbaa !106
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !109
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !106
  store i8 %i.ge, ptr %i.gc, align 2, !tbaa !106
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 195
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !109, !range !89, !noundef !90
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !109
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !106
  store i8 %i.gk, ptr %i.gi, align 4, !tbaa !106
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 197
end_hunk_0
