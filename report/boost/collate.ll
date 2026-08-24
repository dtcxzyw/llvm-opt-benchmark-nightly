Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/collate?download=true
inline.NumInlined: 311
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5boost6locale10impl_posix8collatorIcE10do_compareEPKcS5_S5_S5_:bb.a
  %i.ap = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ag, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.aq = icmp eq ptr %i.ap, %i.f
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !27
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %.012 = call i32 @llvm.scmp.i32.i32(i32 %i.al, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.012

bb.k:                                             ; preds = %.noexc.i18, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.au = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.k
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !27
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6locale10impl_posix8collatorIcE12do_transformB5cxx11EPKcS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.c = ptrtoint ptr %3 to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !46
  %i.g = icmp eq ptr %2, null
  %i.h = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.e, ptr %i.b, align 8, !tbaa !48
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !49
  %i.k = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.k, ptr %i.f, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %2, align 1, !tbaa !27
  store i8 %i.m, ptr %i.l, align 1, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %2, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !51
  %i.p = load ptr, ptr %4, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.r = shl nsw i64 %i.e, 1                      ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 3 uses
  %i.t = icmp slt i64 %i.e, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #16
          to label %.noexc20 unwind label %bb.o   ; 12 uses

.noexc20:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.v = getelementptr i8, ptr %i.u, i64 %i.s     ; 5 uses
  store i8 0, ptr %i.u, align 1, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.x = icmp eq ptr %3, %2
  br i1 %i.x, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.g, %.noexc20
  %.0.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.w, %.noexc20 ] ; 4 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !49
  %i.z = ptrtoint ptr %.0.i.i.i.i.i to i64        ; 2 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = call noundef i64 @strxfrm_l(ptr noundef nonnull %i.u, ptr noundef %i.y, i64 noundef %i.ab, ptr noundef %i.ae) #17 ; 7 uses
  %i.ag = icmp ugt i64 %i.af, %i.ab
  br i1 %i.ag, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.ah = sub nuw i64 %i.af, %i.ab                ; 5 uses
  %i.ai = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.aj = sub i64 %i.ai, %i.z                     ; 2 uses
  %i.ak = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = xor i64 %i.ab, 9223372036854775807      ; 2 uses
  %i.am = icmp ule i64 %i.aj, %i.al
  call void @llvm.assume(i1 %i.am)
  %.not28.i.i = icmp ult i64 %i.aj, %i.ah
  br i1 %.not28.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %.0.i.i.i.i.i, align 1, !tbaa !27
  %i.an = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 0, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.k:                                             ; preds = %bb.h
  %i.aq = icmp ult i64 %i.al, %i.ah
  br i1 %i.aq, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ah)
  %i.ar = add nuw i64 %.sroa.speculated.i.i.i, %i.ab
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 9223372036854775807) ; 2 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #16
          to label %.noexc23 unwind label %bb.p   ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ab ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !27
  %i.av = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.av, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.m, %.noexc23
  %.not35.i.i = icmp eq ptr %.0.i.i.i.i.i, %i.u
  br i1 %.not35.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, label %bb.n

bb.n:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.u, i64 %i.ab, i1 false)
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i: ; preds = %bb.n, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.s) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, %bb.j, %bb.i
  %.sroa.21.2 = phi ptr [ %i.v, %bb.i ], [ %i.v, %bb.j ], [ %i.ay, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ]
  %.sroa.036.2 = phi ptr [ %i.u, %bb.i ], [ %i.u, %bb.j ], [ %i.at, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i ] ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !49
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bc = call noundef i64 @strxfrm_l(ptr noundef nonnull %.sroa.036.2, ptr noundef %i.az, i64 noundef %i.af, ptr noundef %i.bb) #17 ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit31

bb.q:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %.sroa.21.0 = phi ptr [ %.sroa.21.2, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %i.v, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.036.0 = phi ptr [ %.sroa.036.2, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %i.u, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.af, ptr %i.a, align 8, !tbaa !48
  %i.bg = icmp ugt i64 %i.af, 15
  br i1 %i.bg, label %.noexc.i26, label %._crit_edge.i.i25

.noexc.i26:                                       ; preds = %bb.q
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.t   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i26
  store ptr %i.bh, ptr %0, align 8, !tbaa !49
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !27
  br label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %.noexc28, %bb.q
  %i.bj = phi ptr [ %i.bh, %.noexc28 ], [ %i.bf, %bb.q ] ; 2 uses
  switch i64 %i.af, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt6vectorIcSaIcEED2Ev.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i25
  %i.bk = load i8, ptr %.sroa.036.0, align 1, !tbaa !27
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.s:                                             ; preds = %._crit_edge.i.i25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %.sroa.036.0, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.s, %bb.r, %._crit_edge.i.i25
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !51
  %i.bn = load ptr, ptr %0, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bp = ptrtoint ptr %.sroa.21.0 to i64
  %i.bq = ptrtoint ptr %.sroa.036.0 to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.036.0, i64 noundef %i.br) #18
  %i.bs = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.f
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !27
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.t:                                             ; preds = %.noexc.i26
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %.sroa.21.0 to i64
  %.pre49 = ptrtoint ptr %.sroa.036.0 to i64
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit31

_ZNSt6vectorIcSaIcEED2Ev.exit31:                  ; preds = %bb.t, %bb.p
  %.pre-phi50 = phi i64 [ %.pre49, %bb.t ], [ %i.aa, %bb.p ]
  %.pre-phi = phi i64 [ %.pre, %bb.t ], [ %i.ai, %bb.p ]
  %.sroa.036.1 = phi ptr [ %.sroa.036.0, %bb.t ], [ %i.u, %bb.p ]
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.be, %bb.p ]
  %i.bx = sub i64 %.pre-phi, %.pre-phi50
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.036.1, i64 noundef %i.bx) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit31, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit31 ], [ %i.bd, %bb.o ]
  %i.by = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.f
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.u
  %i.ca = load i64, ptr %i.f, align 8, !tbaa !27
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale10impl_posix8collatorIcE7do_hashEPKcS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2)
  %i.d = load ptr, ptr %3, align 8, !tbaa !49     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51   ; 6 uses
  %.not5.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not5.i.i, label %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.07.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.x, %.lr.ph.i.i ]
  %.046.i.i = phi ptr [ %i.d, %.lr.ph.i.i.preheader.new ], [ %i.p, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 1
  %i.i = load i8, ptr %.046.i.i, align 1, !tbaa !27
  %i.j = shl i32 %.07.i.i, 4
  %i.k = zext i8 %i.i to i32
  %i.l = add i32 %i.j, %i.k                       ; 2 uses
  %i.m = lshr i32 %i.l, 24
  %i.n = and i32 %i.m, 240
  %i.o = xor i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.h, align 1, !tbaa !27
  %i.r = shl i32 %i.o, 4
  %i.s = zext i8 %i.q to i32
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i32 %i.t, 24
  %i.v = and i32 %i.u, 240
  %i.w = and i32 %i.t, 268435455
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !53

_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.07.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.x, %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa ]
  %.046.i.i.epil.init = phi ptr [ %i.d, %.lr.ph.i.i.preheader ], [ %i.p, %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod12)
  %i.y = load i8, ptr %.046.i.i.epil.init, align 1, !tbaa !27
  %i.z = shl i32 %.07.i.i.epil.init, 4
  %i.aa = zext i8 %i.y to i32
  %i.ab = add i32 %i.z, %i.aa                     ; 2 uses
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = and i32 %i.ac, 240
  %i.ae = and i32 %i.ab, 268435455
  %i.af = xor i32 %i.ad, %i.ae
  br label %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit

_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit: ; preds = %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa = phi i32 [ %i.x, %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.i.i.epil.preheader ]
  %i.ag = zext nneg i32 %.lcssa to i64
  br label %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit

_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit: ; preds = %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.d, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit
  %i.aj = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.aj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost6locale11gnu_gettext26pj_winberger_hash_functionEPKcS3_.exit
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.al) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5boost6locale10impl_posix8collatorIwED0Ev:bb.a
  invoke void @_ZNSt6locale5facet19_S_destroy_c_localeERP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZN5boost6locale10impl_posix8collatorIwED2Ev.exit unwind label %bb.h, !inline_history !56

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIP15__locale_structLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #20, !inline_history !56
  unreachable

_ZN5boost6locale10impl_posix8collatorIwED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIP15__locale_structLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  tail call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(40) %0) #17, !inline_history !56
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale10impl_posix8collatorIwE10do_compareEPKwS5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string.2", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string.2", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !57
  %i.h = icmp eq ptr %1, null
  %i.i = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.f, ptr %i.b, align 8, !tbaa !48
  %i.j = icmp ugt i64 %i.f, 3
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !60
  %i.l = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi i64 [ %i.l, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 4 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.o, ptr %i.n, align 4, !tbaa !62
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = call ptr @wmemcpy(ptr noundef %i.n, ptr noundef %1, i64 noundef %i.f) #17 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.b, align 8, !tbaa !48
  %.pre7.i.i = load ptr, ptr %5, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = phi ptr [ %i.n, %._crit_edge.i.i ], [ %i.n, %bb.c ], [ %.pre7.i.i, %bb.d ]
  %i.r = phi i64 [ %i.m, %._crit_edge.i.i ], [ %i.m, %bb.c ], [ %.pre6.i.i, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  store i32 0, ptr %i.t, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.u = ptrtoint ptr %4 to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !57
  %i.z = icmp eq ptr %3, null
  %i.aa = icmp ne ptr %4, null
  %or.cond.i16 = and i1 %i.z, %i.aa
  br i1 %or.cond.i16, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc21 unwind label %bb.k

.noexc21:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.x, ptr %i.a, align 8, !tbaa !48
  %i.ab = icmp ugt i64 %i.x, 3
  br i1 %i.ab, label %.noexc.i20, label %._crit_edge.i.i17

.noexc.i20:                                       ; preds = %bb.g
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.k   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i20
  store ptr %i.ac, ptr %6, align 8, !tbaa !60
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !27
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc22, %bb.g
  %i.ae = phi i64 [ %i.ad, %.noexc22 ], [ %i.x, %bb.g ] ; 2 uses
  %i.af = phi ptr [ %i.ac, %.noexc22 ], [ %i.y, %bb.g ] ; 4 uses
  switch i64 %i.x, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i17
  %i.ag = load i32, ptr %3, align 4, !tbaa !62
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !62
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i17
  %i.ah = call ptr @wmemcpy(ptr noundef %i.af, ptr noundef %3, i64 noundef %i.x) #17 ; 0 uses
  %.pre6.i.i18 = load i64, ptr %i.a, align 8, !tbaa !48
  %.pre7.i.i19 = load ptr, ptr %6, align 8, !tbaa !60
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i17
  %i.ai = phi ptr [ %i.af, %._crit_edge.i.i17 ], [ %i.af, %bb.h ], [ %.pre7.i.i19, %bb.i ] ; 2 uses
  %i.aj = phi i64 [ %i.ae, %._crit_edge.i.i17 ], [ %i.ae, %bb.h ], [ %.pre6.i.i18, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  store i32 0, ptr %i.al, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.am = load ptr, ptr %5, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.aq = call i32 @wcscoll_l(ptr noundef %i.am, ptr noundef %i.ai, ptr noundef %i.ap) #17
  %i.ar = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.y
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.at = load i64, ptr %i.y, align 8, !tbaa !27
  %i.au = shl i64 %i.at, 2
  %i.av = add i64 %i.au, 4
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #18
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.aw = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !27
  %i.az = shl i64 %i.ay, 2
  %i.ba = add i64 %i.az, 4
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #18
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i24
  %.012 = call i32 @llvm.scmp.i32.i32(i32 %i.aq, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.012

bb.k:                                             ; preds = %.noexc.i20, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bc = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.g
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i27: ; preds = %bb.k
  %i.be = load i64, ptr %i.g, align 8, !tbaa !27
  %i.bf = shl i64 %i.be, 2
  %i.bg = add i64 %i.bf, 4
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #18
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit29: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6locale10impl_posix8collatorIwE12do_transformB5cxx11EPKwS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.2", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.c = ptrtoint ptr %3 to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !57
  %i.h = icmp eq ptr %2, null
  %i.i = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.f, ptr %i.b, align 8, !tbaa !48
  %i.j = icmp ugt i64 %i.f, 3
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !60
  %i.l = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi i64 [ %i.l, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 4 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i32, ptr %2, align 4, !tbaa !62
  store i32 %i.o, ptr %i.n, align 4, !tbaa !62
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = call ptr @wmemcpy(ptr noundef %i.n, ptr noundef %2, i64 noundef %i.f) #17 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.b, align 8, !tbaa !48
  %.pre7.i.i = load ptr, ptr %4, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = phi ptr [ %i.n, %._crit_edge.i.i ], [ %i.n, %bb.c ], [ %.pre7.i.i, %bb.d ]
  %i.r = phi i64 [ %i.m, %._crit_edge.i.i ], [ %i.m, %bb.c ], [ %.pre6.i.i, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  store i32 0, ptr %i.t, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.u = ashr exact i64 %i.e, 1
  %i.v = add nsw i64 %i.u, 1                      ; 4 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc19 unwind label %bb.n

.noexc19:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #16
          to label %.noexc20 unwind label %bb.n   ; 5 uses

.noexc20:                                         ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !62
  %i.aa = getelementptr i8, ptr %i.y, i64 4       ; 3 uses
  %i.ab = icmp eq ptr %3, %2
  br i1 %i.ab, label %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc20
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 1   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit

_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc20, %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.24.2 = phi ptr [ %i.z, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc20 ], [ null, %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.038.2 = phi ptr [ %i.y, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc20 ], [ null, %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aa, %.noexc20 ], [ null, %_ZNSt6vectorIwSaIwEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %i.ad = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.038.2 to i64        ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = call noundef i64 @wcsxfrm_l(ptr noundef %.sroa.038.2, ptr noundef %5, i64 noundef %i.ag, ptr noundef %i.aj) #17 ; 9 uses
  %i.al = icmp ugt i64 %i.ak, %i.ag
  br i1 %i.al, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit
  %i.am = sub nuw i64 %i.ak, %i.ag                ; 5 uses
  %i.an = ptrtoint ptr %.sroa.24.2 to i64         ; 2 uses
  %i.ao = sub i64 %i.an, %i.ad
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp ult i64 %i.ag, 2305843009213693952
  call void @llvm.assume(i1 %i.aq)
  %i.ar = xor i64 %i.ag, 2305843009213693951      ; 2 uses
  %i.as = icmp ule i64 %i.ap, %i.ar
  call void @llvm.assume(i1 %i.as)
  %.not28.i = icmp ult i64 %i.ap, %i.am
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %.0.i.i.i.i.i, align 4, !tbaa !62
  %i.at = add nsw i64 %i.am, -1                   ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNSt6vectorIwSaIwEE6resizeEm.exit, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.i
  %i.av = getelementptr i8, ptr %.0.i.i.i.i.i, i64 4
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.at, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !62
  br label %_ZNSt6vectorIwSaIwEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = icmp ult i64 %i.ar, %i.am
  br i1 %i.aw, label %bb.k, label %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc35 unwind label %bb.o

.noexc35:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.j
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.am)
  %i.ax = add nuw nsw i64 %.sroa.speculated.i.i, %i.ag
  %i.ay = call i64 @llvm.umin.i64(i64 %i.ax, i64 2305843009213693951) ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #16
          to label %.noexc36 unwind label %bb.o   ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.af ; 2 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !62
  %i.bc = add nsw i64 %i.am, -1                   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPwmwET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc36
  %i.be = getelementptr i8, ptr %i.bb, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !62
  br label %_ZSt27__uninitialized_default_n_aIPwmwET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPwmwET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc36
  %i.bf = icmp sgt i64 %i.af, 0
  br i1 %i.bf, label %bb.l, label %_ZNSt6vectorIwSaIwEE11_S_relocateEPwS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPwmwET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %.sroa.038.2, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIwSaIwEE11_S_relocateEPwS2_S2_RS0_.exit.i

_ZNSt6vectorIwSaIwEE11_S_relocateEPwS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZSt27__uninitialized_default_n_aIPwmwET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.038.2, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit36.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIwSaIwEE11_S_relocateEPwS2_S2_RS0_.exit.i
  %i.bg = sub i64 %i.an, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.2, i64 noundef %i.bg) #18
  br label %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit36.i

_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit36.i: ; preds = %bb.m, %_ZNSt6vectorIwSaIwEE11_S_relocateEPwS2_S2_RS0_.exit.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  br label %_ZNSt6vectorIwSaIwEE6resizeEm.exit

_ZNSt6vectorIwSaIwEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit36.i, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.i
  %.sroa.24.3 = phi ptr [ %.sroa.24.2, %bb.i ], [ %.sroa.24.2, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bh, %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit36.i ]
  %.sroa.038.3 = phi ptr [ %.sroa.038.2, %bb.i ], [ %.sroa.038.2, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ba, %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit36.i ] ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !60
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bl = call noundef i64 @wcsxfrm_l(ptr noundef %.sroa.038.3, ptr noundef %i.bi, i64 noundef %i.ak, ptr noundef %i.bk) #17 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIwSaIwEED2Ev.exit31

bb.o:                                             ; preds = %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %_ZNSt6vectorIwSaIwEE6resizeEm.exit, %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit
  %.sroa.24.0 = phi ptr [ %.sroa.24.3, %_ZNSt6vectorIwSaIwEE6resizeEm.exit ], [ %.sroa.24.2, %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.038.0 = phi ptr [ %.sroa.038.3, %_ZNSt6vectorIwSaIwEE6resizeEm.exit ], [ %.sroa.038.2, %_ZNSt6vectorIwSaIwEEC2EmRKS0_.exit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !57
  %i.bp = icmp eq ptr %.sroa.038.0, null          ; 2 uses
  %i.bq = icmp ne i64 %i.ak, 0
  %or.cond.i22 = and i1 %i.bq, %i.bp
  br i1 %or.cond.i22, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc27 unwind label %bb.v

.noexc27:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !48
  %i.br = icmp ugt i64 %i.ak, 3
  br i1 %i.br, label %.noexc.i26, label %._crit_edge.i.i23

.noexc.i26:                                       ; preds = %bb.r
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.v   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i26
  store ptr %i.bs, ptr %0, align 8, !tbaa !60
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  store i64 %i.bt, ptr %i.bo, align 8, !tbaa !27
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %.noexc28, %bb.r
  %i.bu = phi i64 [ %i.bt, %.noexc28 ], [ %i.ak, %bb.r ] ; 3 uses
  %i.bv = phi ptr [ %i.bs, %.noexc28 ], [ %i.bo, %bb.r ] ; 4 uses
  switch i64 %i.ak, label %bb.s [
    i64 1, label %.thread
    i64 0, label %bb.t
  ]

.thread:                                          ; preds = %._crit_edge.i.i23
  %i.bw = load i32, ptr %.sroa.038.0, align 4, !tbaa !62
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  store i32 0, ptr %i.by, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge.i.i23
  %i.bz = call ptr @wmemcpy(ptr noundef %i.bv, ptr noundef %.sroa.038.0, i64 noundef %i.ak) #17 ; 0 uses
  %.pre6.i.i24 = load i64, ptr %i.a, align 8, !tbaa !48
  %.pre7.i.i25 = load ptr, ptr %0, align 8, !tbaa !60
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i23
  %i.ca = phi ptr [ %i.bv, %._crit_edge.i.i23 ], [ %.pre7.i.i25, %bb.s ]
  %i.cb = phi i64 [ %i.bu, %._crit_edge.i.i23 ], [ %.pre6.i.i24, %bb.s ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  store i32 0, ptr %i.cd, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %i.bp, label %_ZNSt6vectorIwSaIwEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t
  %i.ce = ptrtoint ptr %.sroa.24.0 to i64
  %i.cf = ptrtoint ptr %.sroa.038.0 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0, i64 noundef %i.cg) #18
  br label %_ZNSt6vectorIwSaIwEED2Ev.exit

_ZNSt6vectorIwSaIwEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  %i.ch = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.g
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIwSaIwEED2Ev.exit
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !27
  %i.ck = shl i64 %i.cj, 2
  %i.cl = add i64 %i.ck, 4
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #18
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIwSaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.v:                                             ; preds = %.noexc.i26, %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %.sroa.24.1 = phi ptr [ %.sroa.24.0, %bb.v ], [ %.sroa.24.2, %bb.o ]
  %.sroa.038.1 = phi ptr [ %.sroa.038.0, %bb.v ], [ %.sroa.038.2, %bb.o ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %i.bn, %bb.o ] ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %.sroa.038.1, null
end_hunk_1
