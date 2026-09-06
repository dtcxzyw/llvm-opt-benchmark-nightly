Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/printer?download=true
inline.NumInlined: 3013
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_Z17getMemoryCostsStrB5cxx11mbb:bb.a
  %.sink = phi ptr [ %i.aq, %bb.h ], [ %i.r, %bb.d ], [ %i.bj, %bb.l ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.q, %bb.d ], [ %i.bi, %bb.l ]
  %.sink50 = load i64, ptr %.sink50.in, align 8, !tbaa !35
  %i.t = add i64 %.sink50, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.t) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.bi, %bb.l ], [ %i.q, %bb.d ], [ %eh.lpad-body.ph, %.body.sink.split ]
  %i.u = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.x = load i64, ptr %i.v, align 8, !tbaa !35
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %eh.lpad-body

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.z = load ptr, ptr %4, align 8, !tbaa !34, !noalias !751
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36, !noalias !751 ; 3 uses
  %i.ac = load ptr, ptr @_ZN18printer_substrings2pnB5cxx11E, align 8, !tbaa !34, !noalias !751
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2pnB5cxx11E, i64 8), align 8, !tbaa !36, !noalias !751 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !30, !alias.scope !752
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !36, !alias.scope !752
  store i8 0, ptr %i.ae, align 8, !tbaa !35, !alias.scope !752
  %i.ag = add i64 %i.ad, %i.ab
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ag)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !36, !alias.scope !752
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %.invoke.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i10: ; preds = %bb.g
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i11 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i10
  %i.al = load i64, ptr %i.af, align 8, !tbaa !36, !alias.scope !752
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ad
  br i1 %i.an, label %.invoke.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i12

.invoke.i.i13:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i11, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #31
          to label %.cont.i.i14 unwind label %bb.h

.cont.i.i14:                                      ; preds = %.invoke.i.i13
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i11
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ac, i64 noundef %i.ad)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i12, %.invoke.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i10, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !34, !alias.scope !752 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ae
  br i1 %i.ar, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %bb.e
  br i1 %3, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.as = load ptr, ptr %4, align 8, !tbaa !34, !noalias !753
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !36, !noalias !753 ; 3 uses
  %i.av = load ptr, ptr @_ZN18printer_substrings2igB5cxx11E, align 8, !tbaa !34, !noalias !753
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2igB5cxx11E, i64 8), align 8, !tbaa !36, !noalias !753 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !30, !alias.scope !754
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !36, !alias.scope !754
  store i8 0, ptr %i.ax, align 8, !tbaa !35, !alias.scope !754
  %i.az = add i64 %i.aw, %i.au
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.az)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !36, !alias.scope !754
  %i.bb = sub i64 4611686018427387903, %i.ba
  %i.bc = icmp ult i64 %i.bb, %i.au
  br i1 %i.bc, label %.invoke.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i21: ; preds = %bb.k
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.as, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i22 unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i21
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !36, !alias.scope !754
  %i.bf = sub i64 4611686018427387903, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.aw
  br i1 %i.bg, label %.invoke.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i23

.invoke.i.i24:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i22, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #31
          to label %.cont.i.i25 unwind label %bb.l

.cont.i.i25:                                      ; preds = %.invoke.i.i24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i22
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.av, i64 noundef %i.aw)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i23, %.invoke.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i21, %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !34, !alias.scope !754 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %.body, label %.body.sink.split

bb.m:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !30
  %i.bm = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !36 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.m
  store ptr %i.bm, ptr %0, align 8, !tbaa !34
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !35
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bu = phi i64 [ %i.bq, %bb.n ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !36
  store ptr %i.bn, ptr %4, align 8, !tbaa !34
  store i64 0, ptr %i.bv, align 8, !tbaa !36
  store i8 0, ptr %i.bn, align 8, !tbaa !35
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bx = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !35
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z23getMatrixOfQcompStringsB5cxx11St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !68     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = sdiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.p = icmp ugt i64 %i.o, 288230376151711743
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.k          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit32

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.q = shl nuw nsw i64 %i.n, 1
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33
          to label %.noexc24 unwind label %bb.i   ; 4 uses

.noexc24:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.r, ptr %2, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !58
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc24, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc24 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc24 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc24 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.u, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !36
  store i8 0, ptr %i.u, align 8, !tbaa !35
  %i.w = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !755

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc24
  %.lcssa.unr = phi ptr [ poison, %.noexc24 ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc24 ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc24 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.o, 4
  br i1 %i.y, label %.loopexit32, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.z, ptr %.08.i.i.i.i.i, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !36
  store i8 0, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !36
  store i8 0, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ag, align 8, !tbaa !36
  store i8 0, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.aj, align 8, !tbaa !36
  store i8 0, ptr %i.ai, align 8, !tbaa !35
  %i.ak = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit32, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit32:                                      ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.am, align 8, !tbaa !59
  %i.an = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.an, label %bb.e, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.e:                                             ; preds = %.loopexit32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %.loopexit32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33
          to label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i unwind label %bb.j ; 5 uses

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !76
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEmS8_ET_SA_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.g) #32
  br label %.body

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !75
  %i.au = load ptr, ptr %2, align 8, !tbaa !57    ; 3 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i28, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.bc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %.preheader.lr.ph, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #32
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br i1 %.not.i.i.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01834 = phi i64 [ %i.bm, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %i.at, %bb.f ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bk, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = add nuw i64 %.01834, 1                  ; 2 uses
  %exitcond36.not = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond36.not, label %.loopexit, label %.preheader, !llvm.loop !756

bb.l:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01733 = phi i64 [ 0, %.preheader ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.bn = load ptr, ptr %1, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.01834
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.01733 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.bq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  invoke void @_Z13printer_toStrIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7complexIT_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, double %.sroa.0.0.copyload, double %.sroa.2.0.copyload)
          to label %_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit unwind label %bb.s

_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit: ; preds = %bb.l
  %i.br = load ptr, ptr %0, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.01834
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %.01733 ; 9 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = load ptr, ptr %3, align 8, !tbaa !34    ; 6 uses
  %i.bz = icmp eq ptr %i.by, %i.bi                ; 2 uses
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  br i1 %i.bz, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  br i1 %i.bz, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ca = load i64, ptr %i.bj, align 8, !tbaa !36 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %.not21.i = icmp eq ptr %3, %i.bu
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.n, !prof !62

bb.n:                                             ; preds = %bb.m
  switch i64 %i.ca, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !35
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cd = load i64, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !36
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !34
  %i.ci = load i64, ptr %i.bj, align 8, !tbaa !36
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !36
  %i.cj = load i64, ptr %i.bi, align 8, !tbaa !35
  store i64 %i.cj, ptr %i.bw, align 8, !tbaa !35
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ck = load i64, ptr %i.bw, align 8, !tbaa !35
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !34
  %i.cl = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !36
  %i.cn = load i64, ptr %i.bi, align 8, !tbaa !35
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bv, ptr %3, align 8, !tbaa !34
  store i64 %i.ck, ptr %i.bi, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bi, ptr %3, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !34
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.h, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  store i8 %i.j, ptr %i.i, align 1, !tbaa !35
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %.014, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !759

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.h = icmp eq i64 %i.f, 24
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %.0810.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.011.epil.init
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %spec.select.epil = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %.0810.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i64 %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %.0810 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.011
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %.0810)
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.011
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %spec.select.1 = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %spec.select) ; 3 uses
  %i.y = add nuw i64 %.011, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define void @_Z20getMaxWidthOfColumnsSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EES9_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.15") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.20", align 8    ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !80     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 5                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33 ; 7 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !84
  %i.q = and i64 %i.m, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.q, i1 false), !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60
  %.087 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit60 ] ; 9 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !75   ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !74     ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i15, label %.noexc17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = sdiv exact i64 %i.aa, 24
  %i.ab = icmp ugt i64 %4, 384307168202282325
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge unwind label %.loopexit73

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !80
  %.pre93 = load ptr, ptr %i.b, align 8, !tbaa !80
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge, %bb.c
  %i.ad = phi ptr [ %i.w, %bb.c ], [ %.pre93, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge ]
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge ]
  %.pr.i55 = phi ptr [ null, %bb.c ], [ %i.ac, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc17_crit_edge ] ; 14 uses
  store ptr %.pr.i55, ptr %3, align 8, !tbaa !74
  store ptr %.pr.i55, ptr %i.t, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %.pr.i55, i64 %i.aa
  store ptr %i.af, ptr %i.u, align 8, !tbaa !76
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.ae, ptr %i.ad, ptr noundef %.pr.i55)
          to label %bb.g unwind label %bb.e       ; 4 uses

bb.e:                                             ; preds = %.noexc17
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i55, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i55, i64 noundef %i.aa) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.g:                                             ; preds = %.noexc17
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.ag, %.pr.i55           ; 2 uses
  br i1 %.not.i, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %.pr.i55 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = sdiv exact i64 %i.ak, 24                ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.am = icmp eq i64 %i.ak, 24
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.011.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %.0810.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.pr.i55, i64 %.011.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.087
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %.0810.i)
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.pr.i55, i64 %.011.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %.087
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %spec.select.i.1 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %spec.select.i) ; 3 uses
  %i.ay = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ay, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa ]
  %.0810.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.pr.i55, i64 %.011.i.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.087
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !36
  %spec.select.i.epil = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %.0810.i.epil.init)
  br label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa, %bb.g
  %.08.lcssa.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !75  ; 3 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !74    ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i.i.i18, label %.noexc24, label %bb.h

bb.h:                                             ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit
  %5 = sdiv exact i64 %i.bi, 24
  %i.bj = icmp ugt i64 %5, 384307168202282325
  br i1 %i.bj, label %.noexc.i.i22, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19, !prof !62

.noexc.i.i22:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc23 unwind label %.loopexit.split-lp75

.noexc23:                                         ; preds = %.noexc.i.i22
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19: ; preds = %bb.h
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge unwind label %.loopexit74

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19
  %.pre94 = load ptr, ptr %2, align 8, !tbaa !80
  %.pre95 = load ptr, ptr %i.v, align 8, !tbaa !80
  br label %.noexc24

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit
  %i.bl = phi ptr [ %i.be, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit ], [ %.pre95, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge ]
  %i.bm = phi ptr [ %i.bf, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit ], [ %.pre94, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge ]
  %i.bn = phi ptr [ null, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit ], [ %i.bk, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i19..noexc24_crit_edge ] ; 11 uses
  %i.bo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.bm, ptr %i.bl, ptr noundef %i.bn)
          to label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27 unwind label %bb.i ; 3 uses

bb.i:                                             ; preds = %.noexc24
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i20, label %.body25, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bi) #32
  br label %.body25

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27: ; preds = %.noexc24
  %.not.i28 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i28, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.thread, label %.lr.ph.preheader.i29

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.thread: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.087
  store i64 %.08.lcssa.i, ptr %i.bq, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

.lr.ph.preheader.i29:                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEC2ERKS9_.exit27
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = sdiv exact i64 %i.bt, 24                ; 3 uses
  %xtraiter174 = and i64 %i.bu, 1
  %i.bv = icmp eq i64 %i.bt, 24
  br i1 %i.bv, label %.lr.ph.i30.epil.preheader, label %.lr.ph.preheader.i29.new

.lr.ph.preheader.i29.new:                         ; preds = %.lr.ph.preheader.i29
  %unroll_iter178 = and i64 %i.bu, -2
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30, %.lr.ph.preheader.i29.new
  %.011.i31 = phi i64 [ 0, %.lr.ph.preheader.i29.new ], [ %i.ch, %.lr.ph.i30 ] ; 3 uses
  %.0810.i32 = phi i64 [ 0, %.lr.ph.preheader.i29.new ], [ %spec.select.i33.1, %.lr.ph.i30 ]
  %niter179 = phi i64 [ 0, %.lr.ph.preheader.i29.new ], [ %niter179.next.1, %.lr.ph.i30 ]
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.011.i31
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.087
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !36
  %spec.select.i33 = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %.0810.i32)
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.011.i31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %.087
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !36
  %spec.select.i33.1 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %spec.select.i33) ; 3 uses
  %i.ch = add nuw i64 %.011.i31, 2                ; 2 uses
  %niter179.next.1 = add i64 %niter179, 2         ; 2 uses
  %niter179.ncmp.1 = icmp eq i64 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa, label %.lr.ph.i30, !llvm.loop !3

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa: ; preds = %.lr.ph.i30
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36, label %.lr.ph.i30.epil.preheader

.lr.ph.i30.epil.preheader:                        ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa, %.lr.ph.preheader.i29
  %.011.i31.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %i.ch, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa ]
  %.0810.i32.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %spec.select.i33.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa ]
  %lcmp.mod177 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.011.i31.epil.init
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %.087
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36
  %spec.select.i33.epil = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %.0810.i32.epil.init)
  br label %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36

_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36: ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa, %.lr.ph.i30.epil.preheader
  %spec.select.i33.lcssa = phi i64 [ %spec.select.i33.1, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.unr-lcssa ], [ %spec.select.i33.epil, %.lr.ph.i30.epil.preheader ]
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.08.lcssa.i, i64 %spec.select.i33.lcssa)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.087
  store i64 %.sroa.speculated, ptr %i.cn, align 8, !tbaa !32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.bn, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36 ] ; 5 uses
  %i.co = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.co, %.lr.ph.i.i.i ] ; 3 uses
  %i.cr = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !35
  %i.cv = add i64 %i.cu, 1
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.cq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cx = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.co, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.dd, %i.bo
  br i1 %.not.i.i.i37, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, %_Z19getMaxWidthOfColumnSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEm.exit36.thread
  %.not.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bi) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.l
  br i1 %.not.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i56, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52
  %.05.i.i.i41 = phi ptr [ %i.dt, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52 ], [ %.pr.i55, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit ] ; 5 uses
  %i.de = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !57 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i42 = icmp eq ptr %i.de, %i.dg
  br i1 %.not4.i.i.i.i.i.i.i42, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i.i43:                           ; preds = %.lr.ph.i.i.i40, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46
  %.05.i.i.i.i.i.i.i44 = phi ptr [ %i.dm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46 ], [ %i.de, %.lr.ph.i.i.i40 ] ; 3 uses
  %i.dh = load ptr, ptr %.05.i.i.i.i.i.i.i44, align 8, !tbaa !34 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i44, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i45: ; preds = %.lr.ph.i.i.i.i.i.i.i43
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !35
  %i.dl = add i64 %i.dk, 1
  tail call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i45
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i44, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %i.dm, %i.dg
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i43, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i46
  %.pr.i.i.i.i.i49 = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48, %.lr.ph.i.i.i40
  %i.dn = phi ptr [ %.pr.i.i.i.i.i49, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i48 ], [ %i.de, %.lr.ph.i.i.i40 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i51 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i1.i.i.i.i.i51, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i52, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i50
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 16
end_hunk_1
begin_hunk_2_@_Z33printContiguousRowsInTwoQuadrantsSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EES_ImSaImEES9_SB_S7_S5_S5_m:bb.a

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hs = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.j
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.au
  %i.hu = load i64, ptr %i.j, align 8, !tbaa !35
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.at
  %.pn = phi { ptr, i32 } [ %i.hr, %bb.at ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %lpad.phi, %bb.au ] ; 2 uses
  %i.hw = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.g
  br i1 %i.hx, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !35
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #32
  br label %common.resume

.loopexit136:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i47, %bb.ar, %.noexc132, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc134
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp137:                            ; preds = %.noexc.i.i50, %bb.ap
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit141:                                     ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit126

.loopexit.split-lp142:                            ; preds = %.noexc.i.i55
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit126

.loopexit146:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i59
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %.body65

.loopexit.split-lp147:                            ; preds = %.noexc.i.i62
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %.body65

.loopexit151:                                     ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i69
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit124

.loopexit.split-lp152:                            ; preds = %.noexc.i.i70
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit124

bb.av:                                            ; preds = %bb.af
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorImSaImEED2Ev.exit124, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ed) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit124

_ZNSt6vectorImSaImEED2Ev.exit124:                 ; preds = %.loopexit151, %.loopexit.split-lp152, %bb.aw, %bb.av
  %.pn27 = phi { ptr, i32 } [ %i.ia, %bb.aw ], [ %i.ia, %bb.av ], [ %lpad.loopexit153, %.loopexit151 ], [ %lpad.loopexit.split-lp154, %.loopexit.split-lp152 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  br label %.body65

.body65:                                          ; preds = %.loopexit146, %.loopexit.split-lp147, %bb.z, %bb.y, %_ZNSt6vectorImSaImEED2Ev.exit124
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt6vectorImSaImEED2Ev.exit124 ], [ %i.dt, %bb.y ], [ %i.dt, %bb.z ], [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ] ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorImSaImEED2Ev.exit126, label %bb.ax

bb.ax:                                            ; preds = %.body65
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.da) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit126

_ZNSt6vectorImSaImEED2Ev.exit126:                 ; preds = %.loopexit141, %.loopexit.split-lp142, %bb.ax, %.body65
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.ax ], [ %.pn27.pn, %.body65 ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  br label %.body

bb.ay:                                            ; preds = %.noexc.i96
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.critedge37

bb.az:                                            ; preds = %bb.ao
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %15, align 8, !tbaa !34   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.aa
  br i1 %i.ie, label %.critedge37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.az
  %i.if = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #32
  br label %.critedge37

.critedge37:                                      ; preds = %bb.az, %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  %.pn31 = phi { ptr, i32 } [ %i.ib, %bb.ay ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ic, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body

.body:                                            ; preds = %.loopexit136, %.loopexit.split-lp137, %bb.q, %bb.p, %.critedge37, %_ZNSt6vectorImSaImEED2Ev.exit126
  %.pn33 = phi { ptr, i32 } [ %.pn27.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit126 ], [ %.pn31, %.critedge37 ], [ %i.cv, %bb.p ], [ %i.cv, %bb.q ], [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %8, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %9, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %10) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::vector.20", align 8   ; 13 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 5 uses
  %13 = alloca %"class.std::vector.20", align 8   ; 13 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.20", align 8   ; 14 uses
  %16 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %17 = alloca %"class.std::vector.20", align 8   ; 13 uses
  %18 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %19 = alloca %"class.std::vector.15", align 8   ; 14 uses
  %20 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %21 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %22 = alloca %"class.std::vector.15", align 8   ; 14 uses
  %23 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %24 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %25 = alloca %"class.std::vector", align 8      ; 6 uses
  %26 = alloca %"class.std::vector.15", align 8   ; 8 uses
  %27 = alloca %"class.std::vector", align 8      ; 6 uses
  %28 = alloca %"class.std::vector.15", align 8   ; 8 uses
  %29 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %30 = alloca %"class.std::vector.15", align 8   ; 8 uses
  %31 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %32 = alloca %"class.std::vector.15", align 8   ; 8 uses
  %33 = alloca %"class.std::vector", align 8      ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %40 = alloca %"class.std::vector.15", align 8   ; 8 uses
  %41 = alloca %"class.std::vector.20", align 8   ; 6 uses
  %42 = alloca %"class.std::vector.15", align 8   ; 8 uses
  %43 = alloca %"class.std::vector", align 8      ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = tail call noundef zeroext i1 @_Z15comm_isRootNodev()
  br i1 %i.g, label %bb.b, label %bb.he

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %46 = sdiv exact i64 %i.m, 24
  %i.n = icmp ugt i64 %46, 384307168202282325
  br i1 %i.n, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !68
  %.pre710 = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.p = phi ptr [ %i.i, %bb.b ], [ %.pre710, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.q = phi ptr [ %i.j, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %.pr.i = phi ptr [ null, %bb.b ], [ %i.o, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  store ptr %.pr.i, ptr %12, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !107
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.q, ptr %i.p, ptr noundef %.pr.i)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.m) #32
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %bb.f, %bb.hu
  %common.resume.op = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hu ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !106
  invoke void @_Z23getMatrixOfQcompStringsB5cxx11St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %11, ptr nofree noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.g unwind label %bb.cn

bb.g:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ac, %i.t
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %bb.g
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.m) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106 ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !78    ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i69 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i69, label %.noexc74, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %47 = sdiv exact i64 %i.ai, 24
  %i.aj = icmp ugt i64 %47, 384307168202282325
  br i1 %i.aj, label %.noexc.i.i73, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70, !prof !62

.noexc.i.i73:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.co

.noexc:                                           ; preds = %.noexc.i.i73
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70: ; preds = %bb.j
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70..noexc74_crit_edge unwind label %bb.co

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70..noexc74_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70
  %.pre711 = load ptr, ptr %1, align 8, !tbaa !68
  %.pre712 = load ptr, ptr %i.ad, align 8, !tbaa !68
  br label %.noexc74

.noexc74:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70..noexc74_crit_edge, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.ae, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre712, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70..noexc74_crit_edge ]
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre711, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70..noexc74_crit_edge ]
  %.pr.i83 = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.ak, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70..noexc74_crit_edge ] ; 10 uses
  store ptr %.pr.i83, ptr %14, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i83, ptr %i.an, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr.i83, i64 %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !107
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.am, ptr %i.al, ptr noundef %.pr.i83)
          to label %bb.m unwind label %bb.k       ; 3 uses

bb.k:                                             ; preds = %.noexc74
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.pr.i83, null
  br i1 %.not.i.i.i71, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i83, i64 noundef %i.ai) #32
  br label %.body

bb.m:                                             ; preds = %.noexc74
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !106
  invoke void @_Z23getMatrixOfQcompStringsB5cxx11St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.n unwind label %bb.cp

bb.n:                                             ; preds = %bb.m
  %.not4.i.i.i76 = icmp eq ptr %.pr.i83, %i.aq
  br i1 %.not4.i.i.i76, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i84, label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %bb.n, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i80
  %.05.i.i.i78 = phi ptr [ %i.ay, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i80 ], [ %.pr.i83, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i78, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i79 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i79, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i80, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i77
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i78, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i80

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i80: ; preds = %bb.o, %.lr.ph.i.i.i77
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i78, i64 24 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.ay, %i.aq
  br i1 %.not.i.i.i81, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i84, label %.lr.ph.i.i.i77, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i84: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i80, %bb.n
  %.not.i.i1.i85 = icmp eq ptr %.pr.i83, null
  br i1 %.not.i.i1.i85, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i84
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i83, i64 noundef %i.ai) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i84, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !106 ; 3 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i88 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i88, label %.noexc94, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87
  %48 = sdiv exact i64 %i.be, 24
  %i.bf = icmp ugt i64 %48, 384307168202282325
  br i1 %i.bf, label %.noexc.i.i92, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89, !prof !62

.noexc.i.i92:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc93 unwind label %bb.cq

.noexc93:                                         ; preds = %.noexc.i.i92
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89: ; preds = %bb.q
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89..noexc94_crit_edge unwind label %bb.cq

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89..noexc94_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89
  %.pre713 = load ptr, ptr %2, align 8, !tbaa !68
  %.pre714 = load ptr, ptr %i.az, align 8, !tbaa !68
  br label %.noexc94

.noexc94:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89..noexc94_crit_edge, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87
  %i.bh = phi ptr [ %i.ba, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87 ], [ %.pre714, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89..noexc94_crit_edge ]
  %i.bi = phi ptr [ %i.bb, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87 ], [ %.pre713, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89..noexc94_crit_edge ]
  %.pr.i105 = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit87 ], [ %i.bg, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89..noexc94_crit_edge ] ; 10 uses
  store ptr %.pr.i105, ptr %16, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %.pr.i105, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr.i105, i64 %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !107
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bi, ptr %i.bh, ptr noundef %.pr.i105)
          to label %bb.t unwind label %bb.r       ; 3 uses

bb.r:                                             ; preds = %.noexc94
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %.pr.i105, null
  br i1 %.not.i.i.i90, label %.body95, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i105, i64 noundef %i.be) #32
  br label %.body95

bb.t:                                             ; preds = %.noexc94
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !106
  invoke void @_Z23getMatrixOfQcompStringsB5cxx11St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.u unwind label %bb.cr

bb.u:                                             ; preds = %bb.t
  %.not4.i.i.i98 = icmp eq ptr %.pr.i105, %i.bm
  br i1 %.not4.i.i.i98, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i106, label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %bb.u, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i102
  %.05.i.i.i100 = phi ptr [ %i.bu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i102 ], [ %.pr.i105, %bb.u ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i100, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i101 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i101, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i102, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i99
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i102

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i102: ; preds = %bb.v, %.lr.ph.i.i.i99
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 24 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.bu, %i.bm
  br i1 %.not.i.i.i103, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i106, label %.lr.ph.i.i.i99, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i106: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i102, %bb.u
  %.not.i.i1.i107 = icmp eq ptr %.pr.i105, null
  br i1 %.not.i.i1.i107, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i106
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i105, i64 noundef %i.be) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i106, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 3 uses
  %i.bx = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i110 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i110, label %.noexc116, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109
  %49 = sdiv exact i64 %i.ca, 24
  %i.cb = icmp ugt i64 %49, 384307168202282325
  br i1 %i.cb, label %.noexc.i.i114, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111, !prof !62

.noexc.i.i114:                                    ; preds = %bb.x
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc115 unwind label %bb.cs

.noexc115:                                        ; preds = %.noexc.i.i114
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111: ; preds = %bb.x
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111..noexc116_crit_edge unwind label %bb.cs

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111..noexc116_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111
  %.pre715 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre716 = load ptr, ptr %i.bv, align 8, !tbaa !68
  br label %.noexc116

.noexc116:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111..noexc116_crit_edge, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109
  %i.cd = phi ptr [ %i.bw, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109 ], [ %.pre716, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111..noexc116_crit_edge ]
  %i.ce = phi ptr [ %i.bx, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109 ], [ %.pre715, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111..noexc116_crit_edge ]
  %.pr.i127 = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit109 ], [ %i.cc, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111..noexc116_crit_edge ] ; 10 uses
  store ptr %.pr.i127, ptr %18, align 8, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr %.pr.i127, ptr %i.cf, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr.i127, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !107
  %i.ci = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ce, ptr %i.cd, ptr noundef %.pr.i127)
          to label %bb.aa unwind label %bb.y      ; 3 uses

bb.y:                                             ; preds = %.noexc116
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %.pr.i127, null
  br i1 %.not.i.i.i112, label %.body117, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i127, i64 noundef %i.ca) #32
  br label %.body117

bb.aa:                                            ; preds = %.noexc116
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !106
  invoke void @_Z23getMatrixOfQcompStringsB5cxx11St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.ab unwind label %bb.ct

bb.ab:                                            ; preds = %bb.aa
  %.not4.i.i.i120 = icmp eq ptr %.pr.i127, %i.ci
  br i1 %.not4.i.i.i120, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i128, label %.lr.ph.i.i.i121

.lr.ph.i.i.i121:                                  ; preds = %bb.ab, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i124
  %.05.i.i.i122 = phi ptr [ %i.cq, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i124 ], [ %.pr.i127, %bb.ab ] ; 3 uses
  %i.ck = load ptr, ptr %.05.i.i.i122, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i123 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i123, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i124, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i121
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i122, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !108
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i124

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i124: ; preds = %bb.ac, %.lr.ph.i.i.i121
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i122, i64 24 ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.cq, %i.ci
  br i1 %.not.i.i.i125, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i128, label %.lr.ph.i.i.i121, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i128: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i124, %bb.ab
  %.not.i.i1.i129 = icmp eq ptr %.pr.i127, null
  br i1 %.not.i.i1.i129, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i128
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i127, i64 noundef %i.ca) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i128, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !75 ; 3 uses
  %i.ct = load ptr, ptr %11, align 8, !tbaa !74   ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %.not.i.i.i.i132 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i.i.i132, label %.noexc136, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131
  %50 = sdiv exact i64 %i.cw, 24
  %i.cx = icmp ugt i64 %50, 384307168202282325
  br i1 %i.cx, label %.noexc.i.i134, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i134:                                    ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc135 unwind label %bb.cu

.noexc135:                                        ; preds = %.noexc.i.i134
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ae
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc136_crit_edge unwind label %bb.cu

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc136_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre717 = load ptr, ptr %11, align 8, !tbaa !80
  %.pre718 = load ptr, ptr %i.cr, align 8, !tbaa !80
  br label %.noexc136

.noexc136:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc136_crit_edge, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131
  %i.cz = phi ptr [ %i.cs, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131 ], [ %.pre718, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc136_crit_edge ]
  %i.da = phi ptr [ %i.ct, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131 ], [ %.pre717, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc136_crit_edge ]
  %.pr.i173 = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit131 ], [ %i.cy, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i..noexc136_crit_edge ] ; 10 uses
  store ptr %.pr.i173, ptr %20, align 8, !tbaa !74
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %.pr.i173, ptr %i.db, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %.pr.i173, i64 %i.cw
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !76
  %i.de = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.da, ptr %i.cz, ptr noundef %.pr.i173)
          to label %bb.ah unwind label %bb.af     ; 3 uses

bb.af:                                            ; preds = %.noexc136
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %.pr.i173, null
  br i1 %.not.i.i.i133, label %.body137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i173, i64 noundef %i.cw) #32
  br label %.body137

bb.ah:                                            ; preds = %.noexc136
  store ptr %i.de, ptr %i.db, align 8, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !75 ; 3 uses
  %i.di = load ptr, ptr %15, align 8, !tbaa !74   ; 3 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %.not.i.i.i.i139 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i.i.i139, label %.noexc145, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %51 = sdiv exact i64 %i.dl, 24
  %i.dm = icmp ugt i64 %51, 384307168202282325
  br i1 %i.dm, label %.noexc.i.i143, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140, !prof !62

.noexc.i.i143:                                    ; preds = %bb.ai
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc144 unwind label %bb.cv

.noexc144:                                        ; preds = %.noexc.i.i143
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140: ; preds = %bb.ai
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140..noexc145_crit_edge unwind label %bb.cv

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140..noexc145_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140
  %.pre719 = load ptr, ptr %15, align 8, !tbaa !80
  %.pre720 = load ptr, ptr %i.dg, align 8, !tbaa !80
  br label %.noexc145

.noexc145:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140..noexc145_crit_edge, %bb.ah
  %i.do = phi ptr [ %i.dh, %bb.ah ], [ %.pre720, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140..noexc145_crit_edge ]
  %i.dp = phi ptr [ %i.di, %bb.ah ], [ %.pre719, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140..noexc145_crit_edge ]
  %.pr.i154 = phi ptr [ null, %bb.ah ], [ %i.dn, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140..noexc145_crit_edge ] ; 10 uses
  store ptr %.pr.i154, ptr %21, align 8, !tbaa !74
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr %.pr.i154, ptr %i.dq, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %.pr.i154, i64 %i.dl
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !76
  %i.dt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.dp, ptr %i.do, ptr noundef %.pr.i154)
          to label %bb.al unwind label %bb.aj     ; 3 uses

bb.aj:                                            ; preds = %.noexc145
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.pr.i154, null
  br i1 %.not.i.i.i141, label %.body146, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i154, i64 noundef %i.dl) #32
  br label %.body146

bb.al:                                            ; preds = %.noexc145
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !75
  invoke void @_Z20getMaxWidthOfColumnsSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %19, ptr nofree noundef nonnull align 8 dereferenceable(24) %20, ptr nofree noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.am unwind label %bb.cw

bb.am:                                            ; preds = %bb.al
  %.not4.i.i.i149 = icmp eq ptr %.pr.i154, %i.dt
  br i1 %.not4.i.i.i149, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %bb.am, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i151 = phi ptr [ %i.ek, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %.pr.i154, %bb.am ] ; 5 uses
  %i.dv = load ptr, ptr %.05.i.i.i151, align 8, !tbaa !57 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i150, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ed, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.dv, %.lr.ph.i.i.i150 ] ; 3 uses
  %i.dy = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !35
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i152 = icmp eq ptr %i.ed, %i.dx
  br i1 %.not.i.i.i.i.i.i.i152, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i151, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i150
  %i.ee = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.dv, %.lr.ph.i.i.i150 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !58
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.an, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i151, i64 24 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.ek, %i.dt
  br i1 %.not.i.i.i153, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i150, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, %bb.am
  %.not.i.i1.i155 = icmp eq ptr %.pr.i154, null
  br i1 %.not.i.i1.i155, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i154, i64 noundef %i.dl) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.ao
  %.not4.i.i.i157 = icmp eq ptr %.pr.i173, %i.de
  br i1 %.not4.i.i.i157, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i174, label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i170
  %.05.i.i.i159 = phi ptr [ %i.fa, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i170 ], [ %.pr.i173, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit ] ; 5 uses
  %i.el = load ptr, ptr %.05.i.i.i159, align 8, !tbaa !57 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i160 = icmp eq ptr %i.el, %i.en
  br i1 %.not4.i.i.i.i.i.i.i160, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i168, label %.lr.ph.i.i.i.i.i.i.i161

.lr.ph.i.i.i.i.i.i.i161:                          ; preds = %.lr.ph.i.i.i158, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i164
  %.05.i.i.i.i.i.i.i162 = phi ptr [ %i.et, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i164 ], [ %i.el, %.lr.ph.i.i.i158 ] ; 3 uses
  %i.eo = load ptr, ptr %.05.i.i.i.i.i.i.i162, align 8, !tbaa !34 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i162, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i.i.i161
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !35
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i164

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i164: ; preds = %.lr.ph.i.i.i.i.i.i.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i163
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i162, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i165 = icmp eq ptr %i.et, %i.en
  br i1 %.not.i.i.i.i.i.i.i165, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i166, label %.lr.ph.i.i.i.i.i.i.i161, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i166: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i164
  %.pr.i.i.i.i.i167 = load ptr, ptr %.05.i.i.i159, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i168

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i168: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i166, %.lr.ph.i.i.i158
  %i.eu = phi ptr [ %.pr.i.i.i.i.i167, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i166 ], [ %i.el, %.lr.ph.i.i.i158 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i169 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i1.i.i.i.i.i169, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i170, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i168
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !58
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i170

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i170: ; preds = %bb.ap, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i168
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 24 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.fa, %i.de
  br i1 %.not.i.i.i171, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i174, label %.lr.ph.i.i.i158, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i174: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i170, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %.not.i.i1.i175 = icmp eq ptr %.pr.i173, null
  br i1 %.not.i.i1.i175, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i174
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i173, i64 noundef %i.cw) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i174, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !75 ; 3 uses
  %i.fd = load ptr, ptr %13, align 8, !tbaa !74   ; 3 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %.not.i.i.i.i179 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i.i.i.i179, label %.noexc185, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178
  %52 = sdiv exact i64 %i.fg, 24
  %i.fh = icmp ugt i64 %52, 384307168202282325
  br i1 %i.fh, label %.noexc.i.i183, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180, !prof !62

.noexc.i.i183:                                    ; preds = %bb.ar
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc184 unwind label %bb.cx

.noexc184:                                        ; preds = %.noexc.i.i183
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180: ; preds = %bb.ar
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180..noexc185_crit_edge unwind label %bb.cx

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180..noexc185_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180
  %.pre721 = load ptr, ptr %13, align 8, !tbaa !80
  %.pre722 = load ptr, ptr %i.fb, align 8, !tbaa !80
  br label %.noexc185

.noexc185:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180..noexc185_crit_edge, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178
  %i.fj = phi ptr [ %i.fc, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178 ], [ %.pre722, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180..noexc185_crit_edge ]
  %i.fk = phi ptr [ %i.fd, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178 ], [ %.pre721, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180..noexc185_crit_edge ]
  %.pr.i237 = phi ptr [ null, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit178 ], [ %i.fi, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180..noexc185_crit_edge ] ; 10 uses
  store ptr %.pr.i237, ptr %23, align 8, !tbaa !74
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store ptr %.pr.i237, ptr %i.fl, align 8, !tbaa !75
  %i.fm = getelementptr inbounds nuw i8, ptr %.pr.i237, i64 %i.fg
  %i.fn = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !76
  %i.fo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.fk, ptr %i.fj, ptr noundef %.pr.i237)
          to label %bb.au unwind label %bb.as     ; 3 uses

bb.as:                                            ; preds = %.noexc185
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %.pr.i237, null
  br i1 %.not.i.i.i181, label %.body186, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i237, i64 noundef %i.fg) #32
  br label %.body186

bb.au:                                            ; preds = %.noexc185
  store ptr %i.fo, ptr %i.fl, align 8, !tbaa !75
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !75 ; 3 uses
  %i.fs = load ptr, ptr %17, align 8, !tbaa !74   ; 3 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %.not.i.i.i.i189 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i.i.i.i189, label %.noexc195, label %bb.av

bb.av:                                            ; preds = %bb.au
  %53 = sdiv exact i64 %i.fv, 24
  %i.fw = icmp ugt i64 %53, 384307168202282325
  br i1 %i.fw, label %.noexc.i.i193, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190, !prof !62

.noexc.i.i193:                                    ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc194 unwind label %bb.cy

.noexc194:                                        ; preds = %.noexc.i.i193
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190: ; preds = %bb.av
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge unwind label %bb.cy

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190
  %.pre723 = load ptr, ptr %17, align 8, !tbaa !80
  %.pre724 = load ptr, ptr %i.fq, align 8, !tbaa !80
  br label %.noexc195

.noexc195:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge, %bb.au
  %i.fy = phi ptr [ %i.fr, %bb.au ], [ %.pre724, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge ]
  %i.fz = phi ptr [ %i.fs, %bb.au ], [ %.pre723, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge ]
  %.pr.i215 = phi ptr [ null, %bb.au ], [ %i.fx, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190..noexc195_crit_edge ] ; 10 uses
  store ptr %.pr.i215, ptr %24, align 8, !tbaa !74
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %.pr.i215, ptr %i.ga, align 8, !tbaa !75
  %i.gb = getelementptr inbounds nuw i8, ptr %.pr.i215, i64 %i.fv
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !76
  %i.gd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.fz, ptr %i.fy, ptr noundef %.pr.i215)
          to label %bb.ay unwind label %bb.aw     ; 3 uses

bb.aw:                                            ; preds = %.noexc195
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i.i191, label %.body196, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.fv) #32
  br label %.body196

bb.ay:                                            ; preds = %.noexc195
  store ptr %i.gd, ptr %i.ga, align 8, !tbaa !75
  invoke void @_Z20getMaxWidthOfColumnsSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EES9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %22, ptr nofree noundef nonnull align 8 dereferenceable(24) %23, ptr nofree noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.az unwind label %bb.cz

bb.az:                                            ; preds = %bb.ay
  %.not4.i.i.i199 = icmp eq ptr %.pr.i215, %i.gd
  br i1 %.not4.i.i.i199, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i200

.lr.ph.i.i.i200:                                  ; preds = %bb.az, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212
  %.05.i.i.i201 = phi ptr [ %i.gu, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212 ], [ %.pr.i215, %bb.az ] ; 5 uses
  %i.gf = load ptr, ptr %.05.i.i.i201, align 8, !tbaa !57 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i201, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i202 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not4.i.i.i.i.i.i.i202, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210, label %.lr.ph.i.i.i.i.i.i.i203

.lr.ph.i.i.i.i.i.i.i203:                          ; preds = %.lr.ph.i.i.i200, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206
  %.05.i.i.i.i.i.i.i204 = phi ptr [ %i.gn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206 ], [ %i.gf, %.lr.ph.i.i.i200 ] ; 3 uses
  %i.gi = load ptr, ptr %.05.i.i.i.i.i.i.i204, align 8, !tbaa !34 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i204, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i205: ; preds = %.lr.ph.i.i.i.i.i.i.i203
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !35
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206: ; preds = %.lr.ph.i.i.i.i.i.i.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i205
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i204, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i207 = icmp eq ptr %i.gn, %i.gh
  br i1 %.not.i.i.i.i.i.i.i207, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208, label %.lr.ph.i.i.i.i.i.i.i203, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i206
  %.pr.i.i.i.i.i209 = load ptr, ptr %.05.i.i.i201, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208, %.lr.ph.i.i.i200
  %i.go = phi ptr [ %.pr.i.i.i.i.i209, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i208 ], [ %i.gf, %.lr.ph.i.i.i200 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i211 = icmp eq ptr %i.go, null
  br i1 %.not.i.i1.i.i.i.i.i211, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i201, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !58
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212: ; preds = %bb.ba, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i210
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i201, i64 24 ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.gu, %i.gd
  br i1 %.not.i.i.i213, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i200, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i212, %bb.az
  %.not.i.i1.i217 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i1.i217, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.fv) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i216, %bb.bb
  %.not4.i.i.i221 = icmp eq ptr %.pr.i237, %i.fo
  br i1 %.not4.i.i.i221, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238, label %.lr.ph.i.i.i222

.lr.ph.i.i.i222:                                  ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234
  %.05.i.i.i223 = phi ptr [ %i.hk, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234 ], [ %.pr.i237, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220 ] ; 5 uses
  %i.gv = load ptr, ptr %.05.i.i.i223, align 8, !tbaa !57 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i.i.i.i224 = icmp eq ptr %i.gv, %i.gx
  br i1 %.not4.i.i.i.i.i.i.i224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232, label %.lr.ph.i.i.i.i.i.i.i225

.lr.ph.i.i.i.i.i.i.i225:                          ; preds = %.lr.ph.i.i.i222, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228
  %.05.i.i.i.i.i.i.i226 = phi ptr [ %i.hd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228 ], [ %i.gv, %.lr.ph.i.i.i222 ] ; 3 uses
  %i.gy = load ptr, ptr %.05.i.i.i.i.i.i.i226, align 8, !tbaa !34 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i226, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i227: ; preds = %.lr.ph.i.i.i.i.i.i.i225
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !35
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228: ; preds = %.lr.ph.i.i.i.i.i.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i227
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i226, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i229 = icmp eq ptr %i.hd, %i.gx
  br i1 %.not.i.i.i.i.i.i.i229, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230, label %.lr.ph.i.i.i.i.i.i.i225, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i228
  %.pr.i.i.i.i.i231 = load ptr, ptr %.05.i.i.i223, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230, %.lr.ph.i.i.i222
  %i.he = phi ptr [ %.pr.i.i.i.i.i231, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i230 ], [ %i.gv, %.lr.ph.i.i.i222 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i233 = icmp eq ptr %i.he, null
  br i1 %.not.i.i1.i.i.i.i.i233, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !58
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234: ; preds = %bb.bc, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i232
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 24 ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %i.hk, %i.fo
  br i1 %.not.i.i.i235, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238, label %.lr.ph.i.i.i222, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i234, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit220
  %.not.i.i1.i239 = icmp eq ptr %.pr.i237, null
  br i1 %.not.i.i1.i239, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i237, i64 noundef %i.fg) #32
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i238, %bb.bd
  %i.hl = load ptr, ptr %4, align 8, !tbaa !79    ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !79
  %i.ho = icmp eq ptr %i.hl, %i.hn                ; 2 uses
  br i1 %i.ho, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit242
  %i.hp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !85 ; 2 uses
  %i.hr = load ptr, ptr %19, align 8, !tbaa !83   ; 5 uses
  %.not.i = icmp eq ptr %i.hq, %i.hr
  br i1 %.not.i, label %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 3 uses
  %i.hv = ashr exact i64 %i.hu, 3                 ; 2 uses
  %i.hw = icmp eq i64 %i.hu, 8
  br i1 %i.hw, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.hv, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bg, %.lr.ph.preheader.i.new
  %.012.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ik, %bb.bg ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.bg ]
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %.012.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !36 ; 2 uses
end_hunk_2
begin_hunk_3_@_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_:bb.a

bb.cj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i296
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i295, i64 noundef %i.kh) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit300

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit300: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i296, %bb.cj
  %i.nl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !38
  %i.nm = getelementptr i8, ptr %i.nl, i64 -24
  %i.nn = load i64, ptr %i.nm, align 8
  %i.no = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 240
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !98 ; 6 uses
  %.not.i.i.i688 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i688, label %bb.ck, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ck:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit300
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc689 unwind label %bb.da

.noexc689:                                        ; preds = %bb.ck
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit300
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 56
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !104
  %.not.i1.i.i = icmp eq i8 %i.ns, 0
  br i1 %.not.i1.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 67
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.cm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.nq)
          to label %.noexc690 unwind label %bb.da

.noexc690:                                        ; preds = %bb.cm
  %i.nv = load ptr, ptr %i.nq, align 8, !tbaa !38
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = invoke noundef signext i8 %i.nx(ptr noundef nonnull align 8 dereferenceable(570) %i.nq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.da, !inline_history !7

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc690, %bb.cl
  %.0.i.i.i = phi i8 [ %i.nu, %bb.cl ], [ %i.ny, %.noexc690 ]
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc692 unwind label %bb.da

.noexc692:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nz)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.da ; 0 uses

bb.cn:                                            ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #29
  br label %bb.hu

bb.co:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i70, %.noexc.i.i73
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %bb.m
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #29
  br label %.body

bb.cq:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i89, %.noexc.i.i92
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.cr:                                            ; preds = %bb.t
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #29
  br label %.body95

bb.cs:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i111, %.noexc.i.i114
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.ct:                                            ; preds = %bb.aa
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #29
  br label %.body117

bb.cu:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i134
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.cv:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i140, %.noexc.i.i143
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.cw:                                            ; preds = %bb.al
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #29
  br label %.body146

.body146:                                         ; preds = %bb.cv, %bb.ak, %bb.aj, %bb.cw
  %.pn = phi { ptr, i32 } [ %i.ok, %bb.cw ], [ %i.oj, %bb.cv ], [ %i.du, %bb.ak ], [ %i.du, %bb.aj ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #29
  br label %.body137

bb.cx:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i180, %.noexc.i.i183
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %.body186

bb.cy:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i190, %.noexc.i.i193
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body196

bb.cz:                                            ; preds = %bb.ay
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #29
  br label %.body196

.body196:                                         ; preds = %bb.cy, %bb.ax, %bb.aw, %bb.cz
  %.pn36 = phi { ptr, i32 } [ %i.on, %bb.cz ], [ %i.om, %bb.cy ], [ %i.ge, %bb.ax ], [ %i.ge, %bb.aw ]
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #29
  br label %.body186

bb.da:                                            ; preds = %.noexc.i.i460.invoke, %.noexc692, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc690, %bb.cm, %bb.ck, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457, %.noexc.i428, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.bm
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body256

bb.db:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i259
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit305

bb.dc:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i263, %.noexc.i.i266
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body269

bb.dd:                                            ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i273, %.noexc.i.i274
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit303

bb.de:                                            ; preds = %bb.ce
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i302 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i302, label %_ZNSt6vectorImSaImEED2Ev.exit303, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ot = ptrtoint ptr %i.mq to i64
  %i.ou = ptrtoint ptr %i.ms to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.ov) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit303

_ZNSt6vectorImSaImEED2Ev.exit303:                 ; preds = %bb.df, %bb.de, %bb.dd
  %.pn38 = phi { ptr, i32 } [ %i.or, %bb.dd ], [ %i.os, %bb.de ], [ %i.os, %bb.df ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #29
  br label %.body269

.body269:                                         ; preds = %bb.dc, %bb.by, %bb.bx, %_ZNSt6vectorImSaImEED2Ev.exit303
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %_ZNSt6vectorImSaImEED2Ev.exit303 ], [ %i.oq, %bb.dc ], [ %i.ly, %bb.by ], [ %i.ly, %bb.bx ] ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i304, label %_ZNSt6vectorImSaImEED2Ev.exit305, label %bb.dg

bb.dg:                                            ; preds = %.body269
  %i.ow = ptrtoint ptr %i.li to i64
  %i.ox = ptrtoint ptr %i.lk to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.oy) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit305

_ZNSt6vectorImSaImEED2Ev.exit305:                 ; preds = %bb.dg, %.body269, %bb.db
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.op, %bb.db ], [ %.pn38.pn, %.body269 ], [ %.pn38.pn, %bb.dg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #29
  br label %.body256

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc692, %_Z32expandMaxWidthsAccordingToLabelsRSt6vectorImSaImEERS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE.exit249
  %i.oz = load ptr, ptr %i.cr, align 8, !tbaa !75 ; 3 uses
  %i.pa = load ptr, ptr %11, align 8, !tbaa !74   ; 3 uses
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %.not.i.i.i.i306 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not.i.i.i.i306, label %.noexc312, label %bb.dh

bb.dh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %54 = sdiv exact i64 %i.pd, 24
  %i.pe = icmp ugt i64 %54, 384307168202282325
  br i1 %i.pe, label %.noexc.i.i460.invoke, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307, !prof !62

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307: ; preds = %bb.dh
  %i.pf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pd) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge unwind label %bb.da

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307
  %.pre729 = load ptr, ptr %11, align 8, !tbaa !80
  %.pre730 = load ptr, ptr %i.cr, align 8, !tbaa !80
  br label %.noexc312

.noexc312:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge, %_ZNSolsEPFRSoS_E.exit
  %i.pg = phi ptr [ %i.oz, %_ZNSolsEPFRSoS_E.exit ], [ %.pre730, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge ]
  %i.ph = phi ptr [ %i.pa, %_ZNSolsEPFRSoS_E.exit ], [ %.pre729, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge ]
  %.pr.i411 = phi ptr [ null, %_ZNSolsEPFRSoS_E.exit ], [ %i.pf, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i307..noexc312_crit_edge ] ; 10 uses
  store ptr %.pr.i411, ptr %29, align 8, !tbaa !74
  %i.pi = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %.pr.i411, ptr %i.pi, align 8, !tbaa !75
  %i.pj = getelementptr inbounds nuw i8, ptr %.pr.i411, i64 %i.pd
  %i.pk = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !76
  %i.pl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.ph, ptr %i.pg, ptr noundef %.pr.i411)
          to label %bb.dk unwind label %bb.di     ; 3 uses

bb.di:                                            ; preds = %.noexc312
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %.pr.i411, null
  br i1 %.not.i.i.i308, label %.body256, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i411, i64 noundef %i.pd) #32
  br label %.body256

bb.dk:                                            ; preds = %.noexc312
  store ptr %i.pl, ptr %i.pi, align 8, !tbaa !75
  %i.pn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !85 ; 2 uses
  %i.pp = load ptr, ptr %19, align 8, !tbaa !83   ; 7 uses
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr                    ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %.not.i.i.i.i316 = icmp eq ptr %i.po, %i.pp     ; 2 uses
  br i1 %.not.i.i.i.i316, label %.thread706, label %bb.dl

.thread706:                                       ; preds = %bb.dk
  %i.pt = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.pu = getelementptr inbounds i8, ptr null, i64 %i.ps ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store ptr %i.pu, ptr %i.pv, align 8, !tbaa !84
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.pw = icmp ugt i64 %i.ps, 9223372036854775800
  br i1 %i.pw, label %.noexc.i.i318, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317, !prof !62

.noexc.i.i318:                                    ; preds = %bb.dl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc319 unwind label %bb.er

.noexc319:                                        ; preds = %.noexc.i.i318
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317: ; preds = %bb.dl
  %i.px = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #33
          to label %.noexc320 unwind label %bb.er ; 8 uses

.noexc320:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i317
  store ptr %i.px, ptr %30, align 8, !tbaa !83
  %i.py = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store ptr %i.px, ptr %i.py, align 8, !tbaa !85
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.ps ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !84
  %i.qb = icmp samesign ugt i64 %i.ps, 8
  br i1 %i.qb, label %bb.dm, label %bb.dn, !prof !768

bb.dm:                                            ; preds = %.noexc320
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.px, ptr align 8 %i.pp, i64 %i.ps, i1 false)
  br label %bb.dp

bb.dn:                                            ; preds = %.noexc320
  %i.qc = icmp eq i64 %i.ps, 8
  br i1 %i.qc, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.qd = load i64, ptr %i.pp, align 8, !tbaa !32
  store i64 %i.qd, ptr %i.px, align 8, !tbaa !32
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %.thread706
  %i.qe = phi ptr [ %i.qa, %bb.dm ], [ %i.qa, %bb.dn ], [ %i.qa, %bb.do ], [ %i.pv, %.thread706 ]
  %i.qf = phi ptr [ %i.pz, %bb.dm ], [ %i.pz, %bb.dn ], [ %i.pz, %bb.do ], [ %i.pu, %.thread706 ] ; 2 uses
  %i.qg = phi ptr [ %i.py, %bb.dm ], [ %i.py, %bb.dn ], [ %i.py, %bb.do ], [ %i.pt, %.thread706 ]
  %i.qh = phi ptr [ %i.px, %bb.dm ], [ %i.px, %bb.dn ], [ %i.px, %bb.do ], [ null, %.thread706 ] ; 6 uses
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !85
  %i.qi = load ptr, ptr %i.fb, align 8, !tbaa !75 ; 3 uses
  %i.qj = load ptr, ptr %13, align 8, !tbaa !74   ; 3 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %.not.i.i.i.i322 = icmp eq ptr %i.qi, %i.qj
  br i1 %.not.i.i.i.i322, label %.noexc328, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %55 = sdiv exact i64 %i.qm, 24
  %i.qn = icmp ugt i64 %55, 384307168202282325
  br i1 %i.qn, label %.noexc.i.i326, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323, !prof !62

.noexc.i.i326:                                    ; preds = %bb.dq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc327 unwind label %bb.es

.noexc327:                                        ; preds = %.noexc.i.i326
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323: ; preds = %bb.dq
  %i.qo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge unwind label %bb.es

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323
  %.pre731 = load ptr, ptr %13, align 8, !tbaa !80
  %.pre732 = load ptr, ptr %i.fb, align 8, !tbaa !80
  br label %.noexc328

.noexc328:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge, %bb.dp
  %i.qp = phi ptr [ %i.qi, %bb.dp ], [ %.pre732, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge ]
  %i.qq = phi ptr [ %i.qj, %bb.dp ], [ %.pre731, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge ]
  %.pr.i387 = phi ptr [ null, %bb.dp ], [ %i.qo, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i323..noexc328_crit_edge ] ; 10 uses
  store ptr %.pr.i387, ptr %31, align 8, !tbaa !74
  %i.qr = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %.pr.i387, ptr %i.qr, align 8, !tbaa !75
  %i.qs = getelementptr inbounds nuw i8, ptr %.pr.i387, i64 %i.qm
  %i.qt = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.qs, ptr %i.qt, align 8, !tbaa !76
  %i.qu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.qq, ptr %i.qp, ptr noundef %.pr.i387)
          to label %bb.dt unwind label %bb.dr     ; 3 uses

bb.dr:                                            ; preds = %.noexc328
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i324 = icmp eq ptr %.pr.i387, null
  br i1 %.not.i.i.i324, label %.body329, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i387, i64 noundef %i.qm) #32
  br label %.body329

bb.dt:                                            ; preds = %.noexc328
  store ptr %i.qu, ptr %i.qr, align 8, !tbaa !75
  %i.qw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !85 ; 2 uses
  %i.qy = load ptr, ptr %22, align 8, !tbaa !83   ; 6 uses
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %.not.i.i.i.i332 = icmp eq ptr %i.qx, %i.qy     ; 2 uses
  br i1 %.not.i.i.i.i332, label %.thread707, label %bb.du

.thread707:                                       ; preds = %bb.dt
  %i.rc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.rd = getelementptr inbounds i8, ptr null, i64 %i.rb ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  store ptr %i.rd, ptr %i.re, align 8, !tbaa !84
  br label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.rf = icmp ugt i64 %i.rb, 9223372036854775800
  br i1 %i.rf, label %.noexc.i.i334, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333, !prof !62

.noexc.i.i334:                                    ; preds = %bb.du
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc335 unwind label %bb.et

.noexc335:                                        ; preds = %.noexc.i.i334
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333: ; preds = %bb.du
  %i.rg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #33
          to label %.noexc336 unwind label %bb.et ; 8 uses

.noexc336:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i333
  store ptr %i.rg, ptr %32, align 8, !tbaa !83
  %i.rh = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %i.rg, ptr %i.rh, align 8, !tbaa !85
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.rb ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !84
  %i.rk = icmp samesign ugt i64 %i.rb, 8
  br i1 %i.rk, label %bb.dv, label %bb.dw, !prof !768

bb.dv:                                            ; preds = %.noexc336
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rg, ptr align 8 %i.qy, i64 %i.rb, i1 false)
  br label %bb.dy

bb.dw:                                            ; preds = %.noexc336
  %i.rl = icmp eq i64 %i.rb, 8
  br i1 %i.rl, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.rm = load i64, ptr %i.qy, align 8, !tbaa !32
  store i64 %i.rm, ptr %i.rg, align 8, !tbaa !32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %.thread707
  %i.rn = phi ptr [ %i.ri, %bb.dv ], [ %i.ri, %bb.dw ], [ %i.ri, %bb.dx ], [ %i.rd, %.thread707 ] ; 3 uses
  %i.ro = phi ptr [ %i.rh, %bb.dv ], [ %i.rh, %bb.dw ], [ %i.rh, %bb.dx ], [ %i.rc, %.thread707 ]
  %i.rp = phi ptr [ %i.rg, %bb.dv ], [ %i.rg, %bb.dw ], [ %i.rg, %bb.dx ], [ null, %.thread707 ] ; 6 uses
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !85
  %i.rq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !59 ; 3 uses
  %i.rs = load ptr, ptr %6, align 8, !tbaa !57    ; 3 uses
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = sub i64 %i.rt, %i.ru                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i338 = icmp eq ptr %i.rr, %i.rs
  br i1 %.not.i.i.i.i338, label %.noexc344, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rw = icmp ugt i64 %i.rv, 9223372036854775776
  br i1 %i.rw, label %.noexc.i.i342, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339, !prof !62

.noexc.i.i342:                                    ; preds = %bb.dz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc343 unwind label %bb.eu

.noexc343:                                        ; preds = %.noexc.i.i342
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339: ; preds = %bb.dz
  %i.rx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge unwind label %bb.eu

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339
  %.pre733 = load ptr, ptr %6, align 8, !tbaa !79
  %.pre734 = load ptr, ptr %i.rq, align 8, !tbaa !79
  br label %.noexc344

.noexc344:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge, %bb.dy
  %i.ry = phi ptr [ %i.rr, %bb.dy ], [ %.pre734, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge ]
  %i.rz = phi ptr [ %i.rs, %bb.dy ], [ %.pre733, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge ]
  %.pr.i363 = phi ptr [ null, %bb.dy ], [ %i.rx, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i339..noexc344_crit_edge ] ; 10 uses
  store ptr %.pr.i363, ptr %33, align 8, !tbaa !57
  %i.sa = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %.pr.i363, ptr %i.sa, align 8, !tbaa !59
  %i.sb = getelementptr inbounds nuw i8, ptr %.pr.i363, i64 %i.rv
  %i.sc = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !58
  %i.sd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.rz, ptr %i.ry, ptr noundef %.pr.i363)
          to label %bb.ec unwind label %bb.ea     ; 3 uses

bb.ea:                                            ; preds = %.noexc344
  %i.se = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i340 = icmp eq ptr %.pr.i363, null
  br i1 %.not.i.i.i340, label %.body345, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i363, i64 noundef %i.rv) #32
  br label %.body345

bb.ec:                                            ; preds = %.noexc344
  store ptr %i.sd, ptr %i.sa, align 8, !tbaa !59
  %i.sf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  store ptr %i.sf, ptr %34, align 8, !tbaa !30
  %i.sg = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 %i.si, ptr %i.f, align 8, !tbaa !32
  %i.sj = icmp ugt i64 %i.si, 15
  br i1 %i.sj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ec
  %i.sk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc348 unwind label %bb.ev ; 2 uses

.noexc348:                                        ; preds = %.noexc.i
  store ptr %i.sk, ptr %34, align 8, !tbaa !34
  %i.sl = load i64, ptr %i.f, align 8, !tbaa !32
  store i64 %i.sl, ptr %i.sf, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc348, %bb.ec
  %i.sm = phi ptr [ %i.sk, %.noexc348 ], [ %i.sf, %bb.ec ] ; 2 uses
  switch i64 %i.si, label %bb.ee [
    i64 1, label %bb.ed
    i64 0, label %bb.ef
  ]

bb.ed:                                            ; preds = %._crit_edge.i.i
  %i.sn = load i8, ptr %i.sg, align 1, !tbaa !35
  store i8 %i.sn, ptr %i.sm, align 1, !tbaa !35
  br label %bb.ef

bb.ee:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sm, ptr align 1 %i.sg, i64 %i.si, i1 false)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %._crit_edge.i.i
  %i.so = load i64, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.so, ptr %i.sp, align 8, !tbaa !36
  %i.sq = load ptr, ptr %34, align 8, !tbaa !34
end_hunk_3
begin_hunk_4_@_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_:bb.a
  br label %bb.fd

bb.fc:                                            ; preds = %._crit_edge.i.i427
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wk, ptr align 1 %i.wf, i64 %i.wg, i1 false)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %._crit_edge.i.i427
  %i.wm = load i64, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.wm, ptr %i.wn, align 8, !tbaa !36
  %i.wo = load ptr, ptr %36, align 8, !tbaa !34
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wm
  store i8 0, ptr %i.wp, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.wq = load ptr, ptr %i.h, align 8, !tbaa !106 ; 2 uses
  %i.wr = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.ws = ptrtoint ptr %i.wq to i64
  %i.wt = ptrtoint ptr %i.wr to i64
  %i.wu = sub i64 %i.ws, %i.wt
  %i.wv = sdiv exact i64 %i.wu, 24
  %i.ww = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  store ptr %i.ww, ptr %37, align 8, !tbaa !30
  %i.wx = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.wy = load i64, ptr %i.su, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.wy, ptr %i.c, align 8, !tbaa !32
  %i.wz = icmp ugt i64 %i.wy, 15
  br i1 %i.wz, label %.noexc.i432, label %._crit_edge.i.i431

.noexc.i432:                                      ; preds = %bb.fd
  %i.xa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc433 unwind label %bb.hf ; 2 uses

.noexc433:                                        ; preds = %.noexc.i432
  store ptr %i.xa, ptr %37, align 8, !tbaa !34
  %i.xb = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.xb, ptr %i.ww, align 8, !tbaa !35
  br label %._crit_edge.i.i431

._crit_edge.i.i431:                               ; preds = %.noexc433, %bb.fd
  %i.xc = phi ptr [ %i.xa, %.noexc433 ], [ %i.ww, %bb.fd ] ; 2 uses
  switch i64 %i.wy, label %bb.ff [
    i64 1, label %bb.fe
    i64 0, label %bb.fg
  ]

bb.fe:                                            ; preds = %._crit_edge.i.i431
  %i.xd = load i8, ptr %i.wx, align 1, !tbaa !35
  store i8 %i.xd, ptr %i.xc, align 1, !tbaa !35
  br label %bb.fg

bb.ff:                                            ; preds = %._crit_edge.i.i431
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xc, ptr align 1 %i.wx, i64 %i.wy, i1 false)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %._crit_edge.i.i431
  %i.xe = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.xe, ptr %i.xf, align 8, !tbaa !36
  %i.xg = load ptr, ptr %37, align 8, !tbaa !34
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xe
  store i8 0, ptr %i.xh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.xi = load ptr, ptr %36, align 8, !tbaa !34
  %i.xj = load i64, ptr %i.wn, align 8, !tbaa !36
  %i.xk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.xi, i64 noundef %i.xj)
          to label %.noexc438 unwind label %.loopexit.split-lp ; 0 uses

.noexc438:                                        ; preds = %bb.fg
  %.not.i435 = icmp eq ptr %i.wq, %i.wr
  br i1 %.not.i435, label %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %.noexc438, %.noexc439
  %.03.i = phi i64 [ %i.xo, %.noexc439 ], [ 0, %.noexc438 ]
  %i.xl = load ptr, ptr %37, align 8, !tbaa !34
  %i.xm = load i64, ptr %i.xf, align 8, !tbaa !36
  %i.xn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.xl, i64 noundef %i.xm)
          to label %.noexc439 unwind label %.loopexit ; 0 uses

.noexc439:                                        ; preds = %.lr.ph.i436
  %i.xo = add nuw i64 %.03.i, 1                   ; 2 uses
  %exitcond.not.i437 = icmp eq i64 %i.xo, %i.wv
  br i1 %exitcond.not.i437, label %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit, label %.lr.ph.i436, !llvm.loop !5

_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit: ; preds = %.noexc439, %.noexc438
  %i.xp = load ptr, ptr %37, align 8, !tbaa !34   ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.ww
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit
  %i.xr = load i64, ptr %i.ww, align 8, !tbaa !35
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_Z17printPerRowIndentNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  %i.xt = load ptr, ptr %36, align 8, !tbaa !34   ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.we
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  %i.xv = load i64, ptr %i.we, align 8, !tbaa !35
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  %i.xx = load i64, ptr %i.pp, align 8, !tbaa !32
  %i.xy = lshr i64 %i.xx, 1
  %i.xz = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 5 uses
  store ptr %i.xz, ptr %38, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef %i.xy, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.hh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.ya = load ptr, ptr %38, align 8, !tbaa !34
  %i.yb = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !36
  %i.yd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ya, i64 noundef %i.yc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448 unwind label %bb.hi

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ye = load ptr, ptr %10, align 8, !tbaa !34
  %i.yf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !36
  %i.yh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yd, ptr noundef %i.ye, i64 noundef %i.yg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450 unwind label %bb.hi ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit448
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !38
  %i.yj = getelementptr i8, ptr %i.yi, i64 -24
  %i.yk = load i64, ptr %i.yj, align 8
  %i.yl = getelementptr inbounds i8, ptr %i.yh, i64 %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 240
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !98 ; 6 uses
  %.not.i.i.i694 = icmp eq ptr %i.yn, null
  br i1 %.not.i.i.i694, label %bb.fh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695

bb.fh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc699 unwind label %bb.hi

.noexc699:                                        ; preds = %bb.fh
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit450
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 56
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !104
  %.not.i1.i.i696 = icmp eq i8 %i.yp, 0
  br i1 %.not.i1.i.i696, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 67
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697

bb.fj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i695
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yn)
          to label %.noexc700 unwind label %bb.hi

.noexc700:                                        ; preds = %bb.fj
  %i.ys = load ptr, ptr %i.yn, align 8, !tbaa !38
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 48
  %i.yu = load ptr, ptr %i.yt, align 8
  %i.yv = invoke noundef signext i8 %i.yu(ptr noundef nonnull align 8 dereferenceable(570) %i.yn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697 unwind label %bb.hi, !inline_history !7

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697: ; preds = %.noexc700, %bb.fi
  %.0.i.i.i698 = phi i8 [ %i.yr, %bb.fi ], [ %i.yv, %.noexc700 ]
  %i.yw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yh, i8 noundef signext %.0.i.i.i698)
          to label %.noexc702 unwind label %bb.hi

.noexc702:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i697
  %i.yx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yw)
          to label %_ZNSolsEPFRSoS_E.exit452 unwind label %bb.hi ; 0 uses

_ZNSolsEPFRSoS_E.exit452:                         ; preds = %.noexc702
  %i.yy = load ptr, ptr %38, align 8, !tbaa !34   ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.xz
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSolsEPFRSoS_E.exit452
  %i.za = load i64, ptr %i.xz, align 8, !tbaa !35
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSolsEPFRSoS_E.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  %i.zc = load ptr, ptr %i.dg, align 8, !tbaa !75 ; 3 uses
  %i.zd = load ptr, ptr %15, align 8, !tbaa !74   ; 3 uses
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %.not.i.i.i.i456 = icmp eq ptr %i.zc, %i.zd
  br i1 %.not.i.i.i.i456, label %.noexc462, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %56 = sdiv exact i64 %i.zg, 24
  %i.zh = icmp ugt i64 %56, 384307168202282325
  br i1 %i.zh, label %.noexc.i.i460.invoke, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457, !prof !62

.noexc.i.i460.invoke:                             ; preds = %bb.bn, %bb.fk, %bb.dh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc.i.i460.cont unwind label %bb.da

.noexc.i.i460.cont:                               ; preds = %.noexc.i.i460.invoke
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457: ; preds = %bb.fk
  %i.zi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zg) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge unwind label %bb.da

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457
  %.pre735 = load ptr, ptr %15, align 8, !tbaa !80
  %.pre736 = load ptr, ptr %i.dg, align 8, !tbaa !80
  br label %.noexc462

.noexc462:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.zj = phi ptr [ %i.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %.pre736, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge ]
  %i.zk = phi ptr [ %i.zd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %.pre735, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge ]
  %.pr.i567 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %i.zi, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i457..noexc462_crit_edge ] ; 10 uses
  store ptr %.pr.i567, ptr %39, align 8, !tbaa !74
  %i.zl = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store ptr %.pr.i567, ptr %i.zl, align 8, !tbaa !75
  %i.zm = getelementptr inbounds nuw i8, ptr %.pr.i567, i64 %i.zg
  %i.zn = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.zm, ptr %i.zn, align 8, !tbaa !76
  %i.zo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.zk, ptr %i.zj, ptr noundef %.pr.i567)
          to label %bb.fn unwind label %bb.fl     ; 3 uses

bb.fl:                                            ; preds = %.noexc462
  %i.zp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i458 = icmp eq ptr %.pr.i567, null
  br i1 %.not.i.i.i458, label %.body256, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i567, i64 noundef %i.zg) #32
  br label %.body256

bb.fn:                                            ; preds = %.noexc462
  store ptr %i.zo, ptr %i.zl, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i316, label %.thread708, label %bb.fo

.thread708:                                       ; preds = %bb.fn
  %i.zq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.zr = getelementptr inbounds i8, ptr null, i64 %i.ps ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  store ptr %i.zr, ptr %i.zs, align 8, !tbaa !84
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fn
  %i.zt = icmp ugt i64 %i.ps, 9223372036854775800
  br i1 %i.zt, label %.noexc.i.i468, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467, !prof !62

.noexc.i.i468:                                    ; preds = %bb.fo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc469 unwind label %bb.hj

.noexc469:                                        ; preds = %.noexc.i.i468
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467: ; preds = %bb.fo
  %i.zu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #33
          to label %.noexc470 unwind label %bb.hj ; 8 uses

.noexc470:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i467
  store ptr %i.zu, ptr %40, align 8, !tbaa !83
  %i.zv = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  store ptr %i.zu, ptr %i.zv, align 8, !tbaa !85
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.ps ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  store ptr %i.zw, ptr %i.zx, align 8, !tbaa !84
  %i.zy = icmp samesign ugt i64 %i.ps, 8
  br i1 %i.zy, label %bb.fp, label %bb.fq, !prof !768

bb.fp:                                            ; preds = %.noexc470
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zu, ptr nonnull align 8 %i.pp, i64 %i.ps, i1 false)
  br label %bb.fs

bb.fq:                                            ; preds = %.noexc470
  %i.zz = icmp eq i64 %i.ps, 8
  br i1 %i.zz, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.aaa = load i64, ptr %i.pp, align 8, !tbaa !32
  store i64 %i.aaa, ptr %i.zu, align 8, !tbaa !32
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %.thread708
  %i.aab = phi ptr [ %i.zx, %bb.fp ], [ %i.zx, %bb.fq ], [ %i.zx, %bb.fr ], [ %i.zs, %.thread708 ]
  %i.aac = phi ptr [ %i.zw, %bb.fp ], [ %i.zw, %bb.fq ], [ %i.zw, %bb.fr ], [ %i.zr, %.thread708 ] ; 2 uses
  %i.aad = phi ptr [ %i.zv, %bb.fp ], [ %i.zv, %bb.fq ], [ %i.zv, %bb.fr ], [ %i.zq, %.thread708 ]
  %i.aae = phi ptr [ %i.zu, %bb.fp ], [ %i.zu, %bb.fq ], [ %i.zu, %bb.fr ], [ null, %.thread708 ] ; 6 uses
  store ptr %i.aac, ptr %i.aad, align 8, !tbaa !85
  %i.aaf = load ptr, ptr %i.fq, align 8, !tbaa !75 ; 3 uses
  %i.aag = load ptr, ptr %17, align 8, !tbaa !74  ; 3 uses
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = sub i64 %i.aah, %i.aai                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %.not.i.i.i.i472 = icmp eq ptr %i.aaf, %i.aag
  br i1 %.not.i.i.i.i472, label %.noexc478, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %57 = sdiv exact i64 %i.aaj, 24
  %i.aak = icmp ugt i64 %57, 384307168202282325
  br i1 %i.aak, label %.noexc.i.i476, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473, !prof !62

.noexc.i.i476:                                    ; preds = %bb.ft
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc477 unwind label %bb.hk

.noexc477:                                        ; preds = %.noexc.i.i476
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473: ; preds = %bb.ft
  %i.aal = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaj) #33
          to label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge unwind label %bb.hk

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473
  %.pre737 = load ptr, ptr %17, align 8, !tbaa !80
  %.pre738 = load ptr, ptr %i.fq, align 8, !tbaa !80
  br label %.noexc478

.noexc478:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge, %bb.fs
  %i.aam = phi ptr [ %i.aaf, %bb.fs ], [ %.pre738, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge ]
  %i.aan = phi ptr [ %i.aag, %bb.fs ], [ %.pre737, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge ]
  %.pr.i543 = phi ptr [ null, %bb.fs ], [ %i.aal, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i473..noexc478_crit_edge ] ; 10 uses
  store ptr %.pr.i543, ptr %41, align 8, !tbaa !74
  %i.aao = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store ptr %.pr.i543, ptr %i.aao, align 8, !tbaa !75
  %i.aap = getelementptr inbounds nuw i8, ptr %.pr.i543, i64 %i.aaj
  %i.aaq = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.aap, ptr %i.aaq, align 8, !tbaa !76
  %i.aar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.aan, ptr %i.aam, ptr noundef %.pr.i543)
          to label %bb.fw unwind label %bb.fu     ; 3 uses

bb.fu:                                            ; preds = %.noexc478
  %i.aas = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i474 = icmp eq ptr %.pr.i543, null
  br i1 %.not.i.i.i474, label %.body479, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i543, i64 noundef %i.aaj) #32
  br label %.body479

bb.fw:                                            ; preds = %.noexc478
  store ptr %i.aar, ptr %i.aao, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i332, label %.thread709, label %bb.fx

.thread709:                                       ; preds = %bb.fw
  %i.aat = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aau = getelementptr inbounds i8, ptr null, i64 %i.rb ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %42, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  store ptr %i.aau, ptr %i.aav, align 8, !tbaa !84
  br label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.aaw = icmp ugt i64 %i.rb, 9223372036854775800
  br i1 %i.aaw, label %.noexc.i.i484, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483, !prof !62

.noexc.i.i484:                                    ; preds = %bb.fx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc485 unwind label %bb.hl

.noexc485:                                        ; preds = %.noexc.i.i484
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483: ; preds = %bb.fx
  %i.aax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #33
          to label %.noexc486 unwind label %bb.hl ; 8 uses

.noexc486:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i483
  store ptr %i.aax, ptr %42, align 8, !tbaa !83
  %i.aay = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  store ptr %i.aax, ptr %i.aay, align 8, !tbaa !85
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.rb ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %i.aaz, ptr %i.aba, align 8, !tbaa !84
  %i.abb = icmp samesign ugt i64 %i.rb, 8
  br i1 %i.abb, label %bb.fy, label %bb.fz, !prof !768

bb.fy:                                            ; preds = %.noexc486
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aax, ptr align 8 %i.qy, i64 %i.rb, i1 false)
  br label %bb.gb

bb.fz:                                            ; preds = %.noexc486
  %i.abc = icmp eq i64 %i.rb, 8
  br i1 %i.abc, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.abd = load i64, ptr %i.qy, align 8, !tbaa !32
  store i64 %i.abd, ptr %i.aax, align 8, !tbaa !32
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy, %.thread709
  %i.abe = phi ptr [ %i.aaz, %bb.fy ], [ %i.aaz, %bb.fz ], [ %i.aaz, %bb.ga ], [ %i.aau, %.thread709 ] ; 3 uses
  %i.abf = phi ptr [ %i.aay, %bb.fy ], [ %i.aay, %bb.fz ], [ %i.aay, %bb.ga ], [ %i.aat, %.thread709 ]
  %i.abg = phi ptr [ %i.aax, %bb.fy ], [ %i.aax, %bb.fz ], [ %i.aax, %bb.ga ], [ null, %.thread709 ] ; 6 uses
  store ptr %i.abe, ptr %i.abf, align 8, !tbaa !85
  %i.abh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !59 ; 3 uses
  %i.abj = load ptr, ptr %7, align 8, !tbaa !57   ; 3 uses
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = ptrtoint ptr %i.abj to i64
  %i.abm = sub i64 %i.abk, %i.abl                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %.not.i.i.i.i488 = icmp eq ptr %i.abi, %i.abj
  br i1 %.not.i.i.i.i488, label %.noexc494, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.abn = icmp ugt i64 %i.abm, 9223372036854775776
  br i1 %i.abn, label %.noexc.i.i492, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489, !prof !62

.noexc.i.i492:                                    ; preds = %bb.gc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc493 unwind label %bb.hm

.noexc493:                                        ; preds = %.noexc.i.i492
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489: ; preds = %bb.gc
  %i.abo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abm) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge unwind label %bb.hm

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489
  %.pre739 = load ptr, ptr %7, align 8, !tbaa !79
  %.pre740 = load ptr, ptr %i.abh, align 8, !tbaa !79
  br label %.noexc494

.noexc494:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge, %bb.gb
  %i.abp = phi ptr [ %i.abi, %bb.gb ], [ %.pre740, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge ]
  %i.abq = phi ptr [ %i.abj, %bb.gb ], [ %.pre739, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge ]
  %.pr.i519 = phi ptr [ null, %bb.gb ], [ %i.abo, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i489..noexc494_crit_edge ] ; 10 uses
  store ptr %.pr.i519, ptr %43, align 8, !tbaa !57
  %i.abr = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store ptr %.pr.i519, ptr %i.abr, align 8, !tbaa !59
  %i.abs = getelementptr inbounds nuw i8, ptr %.pr.i519, i64 %i.abm
  %i.abt = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !58
  %i.abu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.abq, ptr %i.abp, ptr noundef %.pr.i519)
          to label %bb.gf unwind label %bb.gd     ; 3 uses

bb.gd:                                            ; preds = %.noexc494
  %i.abv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %.pr.i519, null
  br i1 %.not.i.i.i490, label %.body495, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i519, i64 noundef %i.abm) #32
  br label %.body495

bb.gf:                                            ; preds = %.noexc494
  store ptr %i.abu, ptr %i.abr, align 8, !tbaa !59
  %i.abw = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  store ptr %i.abw, ptr %44, align 8, !tbaa !30
  %i.abx = load ptr, ptr %8, align 8, !tbaa !34   ; 2 uses
  %i.aby = load i64, ptr %i.sh, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.aby, ptr %i.b, align 8, !tbaa !32
  %i.abz = icmp ugt i64 %i.aby, 15
  br i1 %i.abz, label %.noexc.i499, label %._crit_edge.i.i498

.noexc.i499:                                      ; preds = %bb.gf
  %i.aca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc500 unwind label %bb.hn ; 2 uses

.noexc500:                                        ; preds = %.noexc.i499
  store ptr %i.aca, ptr %44, align 8, !tbaa !34
  %i.acb = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.acb, ptr %i.abw, align 8, !tbaa !35
  br label %._crit_edge.i.i498

._crit_edge.i.i498:                               ; preds = %.noexc500, %bb.gf
  %i.acc = phi ptr [ %i.aca, %.noexc500 ], [ %i.abw, %bb.gf ] ; 2 uses
  switch i64 %i.aby, label %bb.gh [
    i64 1, label %bb.gg
    i64 0, label %bb.gi
  ]

bb.gg:                                            ; preds = %._crit_edge.i.i498
  %i.acd = load i8, ptr %i.abx, align 1, !tbaa !35
  store i8 %i.acd, ptr %i.acc, align 1, !tbaa !35
  br label %bb.gi

bb.gh:                                            ; preds = %._crit_edge.i.i498
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acc, ptr align 1 %i.abx, i64 %i.aby, i1 false)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %._crit_edge.i.i498
  %i.ace = load i64, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.ace, ptr %i.acf, align 8, !tbaa !36
  %i.acg = load ptr, ptr %44, align 8, !tbaa !34
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.ace
  store i8 0, ptr %i.ach, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.aci = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  store ptr %i.aci, ptr %45, align 8, !tbaa !30
  %i.acj = load ptr, ptr %9, align 8, !tbaa !34   ; 2 uses
  %i.ack = load i64, ptr %i.su, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
end_hunk_4
begin_hunk_5_@_Z11print_elems9CompMatr1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z22printDenseSquareMatrixI9CompMatr1EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.CompMatr1) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !800  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !801
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !801
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !801
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !801
  %i.f = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !801 ; 3 uses
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  %i.h = sub nsw i64 %i.f, %i.g                   ; 3 uses
  %i.i = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !801 ; 3 uses
  %i.j = sdiv i64 %i.i, 2                         ; 5 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = sub nsw i64 %i.e, %i.g                   ; 2 uses
  %i.m = sub nsw i64 %i.e, %i.j                   ; 2 uses
  %.not.i = icmp sgt i64 %i.e, %i.i               ; 2 uses
  %.not30.i = icmp sgt i64 %i.e, %i.f             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !801
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.e, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !801
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !801
  store i64 %i.g, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !801
  store i64 %i.h, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !801
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.9.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0304.0 = phi i64 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.g, %bb.f ], [ %i.e, %bb.e ], [ %i.g, %bb.c ], [ %i.e, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !801
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 %.sroa.0304.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bb

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  store i64 %.sroa.0304.0, ptr %7, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx306, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx308, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx310, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx312, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx314, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx316, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx318, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx320, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx322, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx324, i8 0, i64 16, i1 false)
  invoke void @_Z23populateMatrixQuadrantsI9CompMatr1Ev18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%struct.CompMatr1) align 8 %0)
          to label %._crit_edge.i.i unwind label %bb.bb

._crit_edge.i.i:                                  ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !36
  store i8 0, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !78     ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.noexc30, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %23 = sdiv exact i64 %i.u, 24
  %i.v = icmp ugt i64 %23, 384307168202282325
  br i1 %i.v, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc29 unwind label %bb.bc

.noexc29:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge unwind label %bb.bc

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre331 = load ptr, ptr %i.p, align 8, !tbaa !68
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge, %._crit_edge.i.i
  %i.x = phi ptr [ %i.q, %._crit_edge.i.i ], [ %.pre331, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %i.y = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %.pr.i194 = phi ptr [ null, %._crit_edge.i.i ], [ %i.w, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 10 uses
  store ptr %.pr.i194, ptr %12, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i194, ptr %i.z, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr.i194, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.y, ptr %i.x, ptr noundef %.pr.i194)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %.noexc30
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %.body

bb.k:                                             ; preds = %.noexc30
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106 ; 3 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i31, label %.noexc37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %24 = sdiv exact i64 %i.aj, 24
  %i.ak = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ak, label %.noexc.i.i35, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32, !prof !62

.noexc.i.i35:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc36 unwind label %bb.bd

.noexc36:                                         ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32: ; preds = %bb.l
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge unwind label %bb.bd

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32
  %.pre332 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre333 = load ptr, ptr %i.ae, align 8, !tbaa !68
  br label %.noexc37

.noexc37:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge, %bb.k
  %i.am = phi ptr [ %i.af, %bb.k ], [ %.pre333, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %.pre332, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %.pr.i182 = phi ptr [ null, %bb.k ], [ %i.al, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ] ; 10 uses
  store ptr %.pr.i182, ptr %13, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i182, ptr %i.ao, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr.i182, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.an, ptr %i.am, ptr noundef %.pr.i182)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc37
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i.i33, label %.body38, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.aj) #32
  br label %.body38

bb.o:                                             ; preds = %.noexc37
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 3 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i41 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i41, label %.noexc47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %25 = sdiv exact i64 %i.ay, 24
  %i.az = icmp ugt i64 %25, 384307168202282325
  br i1 %i.az, label %.noexc.i.i45, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42, !prof !62

.noexc.i.i45:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc46 unwind label %bb.be

.noexc46:                                         ; preds = %.noexc.i.i45
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42: ; preds = %bb.p
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge unwind label %bb.be

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42
  %.pre334 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre335 = load ptr, ptr %i.at, align 8, !tbaa !68
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge, %bb.o
  %i.bb = phi ptr [ %i.au, %bb.o ], [ %.pre335, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %i.bc = phi ptr [ %i.av, %bb.o ], [ %.pre334, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %.pr.i170 = phi ptr [ null, %bb.o ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ] ; 10 uses
  store ptr %.pr.i170, ptr %14, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i170, ptr %i.bd, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %.pr.i170, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !107
  %i.bg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bc, ptr %i.bb, ptr noundef %.pr.i170)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc47
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i.i43, label %.body48, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ay) #32
  br label %.body48

bb.s:                                             ; preds = %.noexc47
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106 ; 3 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i51, label %.noexc57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %26 = sdiv exact i64 %i.bn, 24
  %i.bo = icmp ugt i64 %26, 384307168202282325
  br i1 %i.bo, label %.noexc.i.i55, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52, !prof !62

.noexc.i.i55:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc56 unwind label %bb.bf

.noexc56:                                         ; preds = %.noexc.i.i55
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52: ; preds = %bb.t
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge unwind label %bb.bf

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52
  %.pre336 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre337 = load ptr, ptr %i.bi, align 8, !tbaa !68
  br label %.noexc57

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge, %bb.s
  %i.bq = phi ptr [ %i.bj, %bb.s ], [ %.pre337, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %i.br = phi ptr [ %i.bk, %bb.s ], [ %.pre336, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %.pr.i160 = phi ptr [ null, %bb.s ], [ %i.bp, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ] ; 10 uses
  store ptr %.pr.i160, ptr %15, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i160, ptr %i.bs, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr.i160, i64 %i.bn
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !107
  %i.bv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.br, ptr %i.bq, ptr noundef %.pr.i160)
          to label %.noexc65 unwind label %bb.u   ; 3 uses

bb.u:                                             ; preds = %.noexc57
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i.i53, label %.body58, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bn) #32
  br label %.body58

.noexc65:                                         ; preds = %.noexc57
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.bx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc74 unwind label %bb.w   ; 3 uses

bb.w:                                             ; preds = %.noexc65
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.noexc74:                                         ; preds = %.noexc65
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ca = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc84 unwind label %bb.x   ; 3 uses

bb.x:                                             ; preds = %.noexc74
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.noexc84:                                         ; preds = %.noexc74
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cj, ptr %20, align 8, !tbaa !30
  %i.ck = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !32
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.co, ptr %20, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cq = phi ptr [ %i.co, %.noexc100 ], [ %i.cj, %bb.aa ] ; 2 uses
  switch i64 %i.cm, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cr = load i8, ptr %i.ck, align 1, !tbaa !35
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !36
  %i.cu = load ptr, ptr %20, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.cw, ptr %21, align 8, !tbaa !30
  %i.cx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.cy = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !32
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.da, ptr %21, align 8, !tbaa !34
  %i.db = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dc = phi ptr [ %i.da, %.noexc103 ], [ %i.cw, %bb.ad ] ; 2 uses
  switch i64 %i.cy, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.de = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !36
  %i.dg = load ptr, ptr %21, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.di, ptr %22, align 8, !tbaa !30
  %i.dj = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !32
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dm, ptr %22, align 8, !tbaa !34
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dn, ptr %i.di, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.do = phi ptr [ %i.dm, %.noexc107 ], [ %i.di, %bb.ag ] ; 2 uses
  switch i64 %i.dk, label %bb.ai [
end_hunk_5
begin_hunk_6_@_Z11print_elems9CompMatr2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z22printDenseSquareMatrixI9CompMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.CompMatr2) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !806  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !807
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !807
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !807
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !807
  %i.f = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !807 ; 3 uses
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  %i.h = sub nsw i64 %i.f, %i.g                   ; 3 uses
  %i.i = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !807 ; 3 uses
  %i.j = sdiv i64 %i.i, 2                         ; 5 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = sub nsw i64 %i.e, %i.g                   ; 2 uses
  %i.m = sub nsw i64 %i.e, %i.j                   ; 2 uses
  %.not.i = icmp sgt i64 %i.e, %i.i               ; 2 uses
  %.not30.i = icmp sgt i64 %i.e, %i.f             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !807
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.e, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !807
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !807
  store i64 %i.g, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !807
  store i64 %i.h, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !807
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.9.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0304.0 = phi i64 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.g, %bb.f ], [ %i.e, %bb.e ], [ %i.g, %bb.c ], [ %i.e, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !807
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 %.sroa.0304.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bb

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  store i64 %.sroa.0304.0, ptr %7, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx306, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx308, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx310, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx312, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx314, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx316, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx318, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx320, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx322, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx324, i8 0, i64 16, i1 false)
  invoke void @_Z23populateMatrixQuadrantsI9CompMatr2Ev18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%struct.CompMatr2) align 8 %0)
          to label %._crit_edge.i.i unwind label %bb.bb

._crit_edge.i.i:                                  ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !36
  store i8 0, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !78     ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.noexc30, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %23 = sdiv exact i64 %i.u, 24
  %i.v = icmp ugt i64 %23, 384307168202282325
  br i1 %i.v, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc29 unwind label %bb.bc

.noexc29:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge unwind label %bb.bc

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre331 = load ptr, ptr %i.p, align 8, !tbaa !68
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge, %._crit_edge.i.i
  %i.x = phi ptr [ %i.q, %._crit_edge.i.i ], [ %.pre331, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %i.y = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %.pr.i194 = phi ptr [ null, %._crit_edge.i.i ], [ %i.w, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 10 uses
  store ptr %.pr.i194, ptr %12, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i194, ptr %i.z, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr.i194, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.y, ptr %i.x, ptr noundef %.pr.i194)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %.noexc30
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %.body

bb.k:                                             ; preds = %.noexc30
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106 ; 3 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i31, label %.noexc37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %24 = sdiv exact i64 %i.aj, 24
  %i.ak = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ak, label %.noexc.i.i35, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32, !prof !62

.noexc.i.i35:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc36 unwind label %bb.bd

.noexc36:                                         ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32: ; preds = %bb.l
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge unwind label %bb.bd

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32
  %.pre332 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre333 = load ptr, ptr %i.ae, align 8, !tbaa !68
  br label %.noexc37

.noexc37:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge, %bb.k
  %i.am = phi ptr [ %i.af, %bb.k ], [ %.pre333, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %.pre332, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %.pr.i182 = phi ptr [ null, %bb.k ], [ %i.al, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ] ; 10 uses
  store ptr %.pr.i182, ptr %13, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i182, ptr %i.ao, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr.i182, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.an, ptr %i.am, ptr noundef %.pr.i182)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc37
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i.i33, label %.body38, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.aj) #32
  br label %.body38

bb.o:                                             ; preds = %.noexc37
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 3 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i41 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i41, label %.noexc47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %25 = sdiv exact i64 %i.ay, 24
  %i.az = icmp ugt i64 %25, 384307168202282325
  br i1 %i.az, label %.noexc.i.i45, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42, !prof !62

.noexc.i.i45:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc46 unwind label %bb.be

.noexc46:                                         ; preds = %.noexc.i.i45
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42: ; preds = %bb.p
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge unwind label %bb.be

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42
  %.pre334 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre335 = load ptr, ptr %i.at, align 8, !tbaa !68
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge, %bb.o
  %i.bb = phi ptr [ %i.au, %bb.o ], [ %.pre335, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %i.bc = phi ptr [ %i.av, %bb.o ], [ %.pre334, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %.pr.i170 = phi ptr [ null, %bb.o ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ] ; 10 uses
  store ptr %.pr.i170, ptr %14, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i170, ptr %i.bd, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %.pr.i170, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !107
  %i.bg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bc, ptr %i.bb, ptr noundef %.pr.i170)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc47
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i.i43, label %.body48, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ay) #32
  br label %.body48

bb.s:                                             ; preds = %.noexc47
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106 ; 3 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i51, label %.noexc57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %26 = sdiv exact i64 %i.bn, 24
  %i.bo = icmp ugt i64 %26, 384307168202282325
  br i1 %i.bo, label %.noexc.i.i55, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52, !prof !62

.noexc.i.i55:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc56 unwind label %bb.bf

.noexc56:                                         ; preds = %.noexc.i.i55
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52: ; preds = %bb.t
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge unwind label %bb.bf

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52
  %.pre336 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre337 = load ptr, ptr %i.bi, align 8, !tbaa !68
  br label %.noexc57

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge, %bb.s
  %i.bq = phi ptr [ %i.bj, %bb.s ], [ %.pre337, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %i.br = phi ptr [ %i.bk, %bb.s ], [ %.pre336, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %.pr.i160 = phi ptr [ null, %bb.s ], [ %i.bp, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ] ; 10 uses
  store ptr %.pr.i160, ptr %15, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i160, ptr %i.bs, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr.i160, i64 %i.bn
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !107
  %i.bv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.br, ptr %i.bq, ptr noundef %.pr.i160)
          to label %.noexc65 unwind label %bb.u   ; 3 uses

bb.u:                                             ; preds = %.noexc57
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i.i53, label %.body58, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bn) #32
  br label %.body58

.noexc65:                                         ; preds = %.noexc57
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.bx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc74 unwind label %bb.w   ; 3 uses

bb.w:                                             ; preds = %.noexc65
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.noexc74:                                         ; preds = %.noexc65
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ca = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc84 unwind label %bb.x   ; 3 uses

bb.x:                                             ; preds = %.noexc74
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.noexc84:                                         ; preds = %.noexc74
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cj, ptr %20, align 8, !tbaa !30
  %i.ck = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !32
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.co, ptr %20, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cq = phi ptr [ %i.co, %.noexc100 ], [ %i.cj, %bb.aa ] ; 2 uses
  switch i64 %i.cm, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cr = load i8, ptr %i.ck, align 1, !tbaa !35
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !36
  %i.cu = load ptr, ptr %20, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.cw, ptr %21, align 8, !tbaa !30
  %i.cx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.cy = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !32
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.da, ptr %21, align 8, !tbaa !34
  %i.db = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dc = phi ptr [ %i.da, %.noexc103 ], [ %i.cw, %bb.ad ] ; 2 uses
  switch i64 %i.cy, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.de = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !36
  %i.dg = load ptr, ptr %21, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.di, ptr %22, align 8, !tbaa !30
  %i.dj = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !32
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dm, ptr %22, align 8, !tbaa !34
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dn, ptr %i.di, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.do = phi ptr [ %i.dm, %.noexc107 ], [ %i.di, %bb.ag ] ; 2 uses
  switch i64 %i.dk, label %bb.ai [
end_hunk_6
begin_hunk_7_@_Z11print_elems8CompMatrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z22printDenseSquareMatrixI8CompMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.CompMatr) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !812  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !813
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !813
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !813
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !813
  %i.f = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !813 ; 3 uses
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  %i.h = sub nsw i64 %i.f, %i.g                   ; 3 uses
  %i.i = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !813 ; 3 uses
  %i.j = sdiv i64 %i.i, 2                         ; 5 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = sub nsw i64 %i.e, %i.g                   ; 2 uses
  %i.m = sub nsw i64 %i.e, %i.j                   ; 2 uses
  %.not.i = icmp sgt i64 %i.e, %i.i               ; 2 uses
  %.not30.i = icmp sgt i64 %i.e, %i.f             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !813
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.e, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !813
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !813
  store i64 %i.g, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !813
  store i64 %i.h, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !813
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.9.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0304.0 = phi i64 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.g, %bb.f ], [ %i.e, %bb.e ], [ %i.g, %bb.c ], [ %i.e, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !813
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 %.sroa.0304.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bb

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  store i64 %.sroa.0304.0, ptr %7, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx306, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx308, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx310, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx312, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx314, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx316, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx318, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx320, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx322, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx324, i8 0, i64 16, i1 false)
  invoke void @_Z23populateMatrixQuadrantsI8CompMatrEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%struct.CompMatr) align 8 %0)
          to label %._crit_edge.i.i unwind label %bb.bb

._crit_edge.i.i:                                  ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !36
  store i8 0, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !78     ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.noexc30, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %23 = sdiv exact i64 %i.u, 24
  %i.v = icmp ugt i64 %23, 384307168202282325
  br i1 %i.v, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc29 unwind label %bb.bc

.noexc29:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge unwind label %bb.bc

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre331 = load ptr, ptr %i.p, align 8, !tbaa !68
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge, %._crit_edge.i.i
  %i.x = phi ptr [ %i.q, %._crit_edge.i.i ], [ %.pre331, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %i.y = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %.pr.i194 = phi ptr [ null, %._crit_edge.i.i ], [ %i.w, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 10 uses
  store ptr %.pr.i194, ptr %12, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i194, ptr %i.z, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr.i194, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.y, ptr %i.x, ptr noundef %.pr.i194)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %.noexc30
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %.body

bb.k:                                             ; preds = %.noexc30
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106 ; 3 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i31, label %.noexc37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %24 = sdiv exact i64 %i.aj, 24
  %i.ak = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ak, label %.noexc.i.i35, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32, !prof !62

.noexc.i.i35:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc36 unwind label %bb.bd

.noexc36:                                         ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32: ; preds = %bb.l
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge unwind label %bb.bd

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32
  %.pre332 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre333 = load ptr, ptr %i.ae, align 8, !tbaa !68
  br label %.noexc37

.noexc37:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge, %bb.k
  %i.am = phi ptr [ %i.af, %bb.k ], [ %.pre333, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %.pre332, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %.pr.i182 = phi ptr [ null, %bb.k ], [ %i.al, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ] ; 10 uses
  store ptr %.pr.i182, ptr %13, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i182, ptr %i.ao, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr.i182, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.an, ptr %i.am, ptr noundef %.pr.i182)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc37
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i.i33, label %.body38, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.aj) #32
  br label %.body38

bb.o:                                             ; preds = %.noexc37
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 3 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i41 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i41, label %.noexc47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %25 = sdiv exact i64 %i.ay, 24
  %i.az = icmp ugt i64 %25, 384307168202282325
  br i1 %i.az, label %.noexc.i.i45, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42, !prof !62

.noexc.i.i45:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc46 unwind label %bb.be

.noexc46:                                         ; preds = %.noexc.i.i45
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42: ; preds = %bb.p
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge unwind label %bb.be

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42
  %.pre334 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre335 = load ptr, ptr %i.at, align 8, !tbaa !68
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge, %bb.o
  %i.bb = phi ptr [ %i.au, %bb.o ], [ %.pre335, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %i.bc = phi ptr [ %i.av, %bb.o ], [ %.pre334, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %.pr.i170 = phi ptr [ null, %bb.o ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ] ; 10 uses
  store ptr %.pr.i170, ptr %14, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i170, ptr %i.bd, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %.pr.i170, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !107
  %i.bg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bc, ptr %i.bb, ptr noundef %.pr.i170)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc47
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i.i43, label %.body48, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ay) #32
  br label %.body48

bb.s:                                             ; preds = %.noexc47
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106 ; 3 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i51, label %.noexc57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %26 = sdiv exact i64 %i.bn, 24
  %i.bo = icmp ugt i64 %26, 384307168202282325
  br i1 %i.bo, label %.noexc.i.i55, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52, !prof !62

.noexc.i.i55:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc56 unwind label %bb.bf

.noexc56:                                         ; preds = %.noexc.i.i55
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52: ; preds = %bb.t
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge unwind label %bb.bf

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52
  %.pre336 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre337 = load ptr, ptr %i.bi, align 8, !tbaa !68
  br label %.noexc57

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge, %bb.s
  %i.bq = phi ptr [ %i.bj, %bb.s ], [ %.pre337, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %i.br = phi ptr [ %i.bk, %bb.s ], [ %.pre336, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %.pr.i160 = phi ptr [ null, %bb.s ], [ %i.bp, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ] ; 10 uses
  store ptr %.pr.i160, ptr %15, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i160, ptr %i.bs, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr.i160, i64 %i.bn
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !107
  %i.bv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.br, ptr %i.bq, ptr noundef %.pr.i160)
          to label %.noexc65 unwind label %bb.u   ; 3 uses

bb.u:                                             ; preds = %.noexc57
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i.i53, label %.body58, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bn) #32
  br label %.body58

.noexc65:                                         ; preds = %.noexc57
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.bx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc74 unwind label %bb.w   ; 3 uses

bb.w:                                             ; preds = %.noexc65
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.noexc74:                                         ; preds = %.noexc65
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ca = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc84 unwind label %bb.x   ; 3 uses

bb.x:                                             ; preds = %.noexc74
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.noexc84:                                         ; preds = %.noexc74
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cj, ptr %20, align 8, !tbaa !30
  %i.ck = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !32
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.co, ptr %20, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cq = phi ptr [ %i.co, %.noexc100 ], [ %i.cj, %bb.aa ] ; 2 uses
  switch i64 %i.cm, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cr = load i8, ptr %i.ck, align 1, !tbaa !35
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !36
  %i.cu = load ptr, ptr %20, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.cw, ptr %21, align 8, !tbaa !30
  %i.cx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.cy = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !32
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.da, ptr %21, align 8, !tbaa !34
  %i.db = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dc = phi ptr [ %i.da, %.noexc103 ], [ %i.cw, %bb.ad ] ; 2 uses
  switch i64 %i.cy, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.de = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !36
  %i.dg = load ptr, ptr %21, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.di, ptr %22, align 8, !tbaa !30
  %i.dj = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !32
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dm, ptr %22, align 8, !tbaa !34
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dn, ptr %i.di, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.do = phi ptr [ %i.dm, %.noexc107 ], [ %i.di, %bb.ag ] ; 2 uses
  switch i64 %i.dk, label %bb.ai [
end_hunk_7
begin_hunk_8_@_Z11print_elems7SuperOpNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z22printDenseSquareMatrixI7SuperOpEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.SuperOp) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !816
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !816
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !816
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !816
  %i.f = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !816 ; 3 uses
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  %i.h = sub nsw i64 %i.f, %i.g                   ; 3 uses
  %i.i = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !816 ; 3 uses
  %i.j = sdiv i64 %i.i, 2                         ; 5 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = sub nsw i64 %i.e, %i.g                   ; 2 uses
  %i.m = sub nsw i64 %i.e, %i.j                   ; 2 uses
  %.not.i = icmp sgt i64 %i.e, %i.i               ; 2 uses
  %.not30.i = icmp sgt i64 %i.e, %i.f             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !816
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.e, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !816
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !816
  store i64 %i.g, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !816
  store i64 %i.h, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !816
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.9.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0304.0 = phi i64 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.g, %bb.f ], [ %i.e, %bb.e ], [ %i.g, %bb.c ], [ %i.e, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !816
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 %.sroa.0304.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bb

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  store i64 %.sroa.0304.0, ptr %7, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx306, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx308, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx310, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx312, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx314, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx316, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx318, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.l, ptr %.sroa.23.0..sroa_idx320, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.m, ptr %.sroa.24.0..sroa_idx322, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx324, i8 0, i64 16, i1 false)
  invoke void @_Z23populateMatrixQuadrantsI7SuperOpEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
          to label %._crit_edge.i.i unwind label %bb.bb

._crit_edge.i.i:                                  ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !36
  store i8 0, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !78     ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.noexc30, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %23 = sdiv exact i64 %i.u, 24
  %i.v = icmp ugt i64 %23, 384307168202282325
  br i1 %i.v, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc29 unwind label %bb.bc

.noexc29:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge unwind label %bb.bc

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre331 = load ptr, ptr %i.p, align 8, !tbaa !68
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge, %._crit_edge.i.i
  %i.x = phi ptr [ %i.q, %._crit_edge.i.i ], [ %.pre331, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %i.y = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ]
  %.pr.i194 = phi ptr [ null, %._crit_edge.i.i ], [ %i.w, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 10 uses
  store ptr %.pr.i194, ptr %12, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i194, ptr %i.z, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr.i194, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.y, ptr %i.x, ptr noundef %.pr.i194)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.i:                                             ; preds = %.noexc30
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %.body

bb.k:                                             ; preds = %.noexc30
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106 ; 3 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i31, label %.noexc37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %24 = sdiv exact i64 %i.aj, 24
  %i.ak = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ak, label %.noexc.i.i35, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32, !prof !62

.noexc.i.i35:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc36 unwind label %bb.bd

.noexc36:                                         ; preds = %.noexc.i.i35
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32: ; preds = %bb.l
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge unwind label %bb.bd

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32
  %.pre332 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre333 = load ptr, ptr %i.ae, align 8, !tbaa !68
  br label %.noexc37

.noexc37:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge, %bb.k
  %i.am = phi ptr [ %i.af, %bb.k ], [ %.pre333, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %.pre332, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ]
  %.pr.i182 = phi ptr [ null, %bb.k ], [ %i.al, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i32..noexc37_crit_edge ] ; 10 uses
  store ptr %.pr.i182, ptr %13, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i182, ptr %i.ao, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr.i182, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !107
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.an, ptr %i.am, ptr noundef %.pr.i182)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc37
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i.i33, label %.body38, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.aj) #32
  br label %.body38

bb.o:                                             ; preds = %.noexc37
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 3 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i41 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i41, label %.noexc47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %25 = sdiv exact i64 %i.ay, 24
  %i.az = icmp ugt i64 %25, 384307168202282325
  br i1 %i.az, label %.noexc.i.i45, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42, !prof !62

.noexc.i.i45:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc46 unwind label %bb.be

.noexc46:                                         ; preds = %.noexc.i.i45
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42: ; preds = %bb.p
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge unwind label %bb.be

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42
  %.pre334 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre335 = load ptr, ptr %i.at, align 8, !tbaa !68
  br label %.noexc47

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge, %bb.o
  %i.bb = phi ptr [ %i.au, %bb.o ], [ %.pre335, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %i.bc = phi ptr [ %i.av, %bb.o ], [ %.pre334, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ]
  %.pr.i170 = phi ptr [ null, %bb.o ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i42..noexc47_crit_edge ] ; 10 uses
  store ptr %.pr.i170, ptr %14, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i170, ptr %i.bd, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %.pr.i170, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !107
  %i.bg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bc, ptr %i.bb, ptr noundef %.pr.i170)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc47
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i.i43, label %.body48, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ay) #32
  br label %.body48

bb.s:                                             ; preds = %.noexc47
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106 ; 3 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i51 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i51, label %.noexc57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %26 = sdiv exact i64 %i.bn, 24
  %i.bo = icmp ugt i64 %26, 384307168202282325
  br i1 %i.bo, label %.noexc.i.i55, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52, !prof !62

.noexc.i.i55:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc56 unwind label %bb.bf

.noexc56:                                         ; preds = %.noexc.i.i55
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52: ; preds = %bb.t
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge unwind label %bb.bf

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52
  %.pre336 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre337 = load ptr, ptr %i.bi, align 8, !tbaa !68
  br label %.noexc57

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge, %bb.s
  %i.bq = phi ptr [ %i.bj, %bb.s ], [ %.pre337, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %i.br = phi ptr [ %i.bk, %bb.s ], [ %.pre336, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ]
  %.pr.i160 = phi ptr [ null, %bb.s ], [ %i.bp, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i52..noexc57_crit_edge ] ; 10 uses
  store ptr %.pr.i160, ptr %15, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i160, ptr %i.bs, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr.i160, i64 %i.bn
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !107
  %i.bv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.br, ptr %i.bq, ptr noundef %.pr.i160)
          to label %.noexc65 unwind label %bb.u   ; 3 uses

bb.u:                                             ; preds = %.noexc57
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i.i53, label %.body58, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bn) #32
  br label %.body58

.noexc65:                                         ; preds = %.noexc57
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.bx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc74 unwind label %bb.w   ; 3 uses

bb.w:                                             ; preds = %.noexc65
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.noexc74:                                         ; preds = %.noexc65
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ca = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc84 unwind label %bb.x   ; 3 uses

bb.x:                                             ; preds = %.noexc74
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.noexc84:                                         ; preds = %.noexc74
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cj, ptr %20, align 8, !tbaa !30
  %i.ck = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !32
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.co, ptr %20, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cq = phi ptr [ %i.co, %.noexc100 ], [ %i.cj, %bb.aa ] ; 2 uses
  switch i64 %i.cm, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cr = load i8, ptr %i.ck, align 1, !tbaa !35
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !36
  %i.cu = load ptr, ptr %20, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.cw, ptr %21, align 8, !tbaa !30
  %i.cx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.cy = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !32
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.da, ptr %21, align 8, !tbaa !34
  %i.db = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dc = phi ptr [ %i.da, %.noexc103 ], [ %i.cw, %bb.ad ] ; 2 uses
  switch i64 %i.cy, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.de = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !36
  %i.dg = load ptr, ptr %21, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.di, ptr %22, align 8, !tbaa !30
  %i.dj = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !32
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dm, ptr %22, align 8, !tbaa !34
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dn, ptr %i.di, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.do = phi ptr [ %i.dm, %.noexc107 ], [ %i.di, %bb.ag ] ; 2 uses
  switch i64 %i.dk, label %bb.ai [
end_hunk_8
begin_hunk_9_@_Z11print_elems9DiagMatr1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z11printVectorI9DiagMatr1EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.DiagMatr1) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %0, align 8, !tbaa !143
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !828
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !828
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !828
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !828
  %i.h = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !828 ; 3 uses
  %i.i = sdiv i64 %i.h, 2                         ; 5 uses
  %i.j = sub nsw i64 %i.h, %i.i                   ; 3 uses
  %i.k = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !828 ; 3 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = sub nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = sub nsw i64 1, %i.i
  %i.o = sub nsw i64 %i.g, %i.l                   ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.k               ; 2 uses
  %.not30.i = icmp slt i64 %i.h, 1                ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.j, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !828
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !828
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.j, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !828
  store i64 %i.i, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !828
  store i64 %i.j, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !828
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0344.0 = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.a ]
  %.sroa.9.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.13.0 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.i, %bb.f ], [ 1, %bb.e ], [ %i.i, %bb.c ], [ 1, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !828
  store i64 %.sroa.0344.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.n, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.o, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bf

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  invoke void @_Z29populateSingleColumnQcompmatrI9DiagMatr1EvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull byval(%struct.DiagMatr1) align 8 %0)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.g
  invoke void @_Z29populateSingleColumnQcompmatrI9DiagMatr1EvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, ptr noundef nonnull byval(%struct.DiagMatr1) align 8 %0)
          to label %bb.h unwind label %bb.bf

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.p, ptr %10, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 2, i8 noundef signext 32)
          to label %.critedge51 unwind label %bb.bg

.critedge51:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.q, ptr %11, align 8, !tbaa !30
  %i.r = load ptr, ptr @_ZL10DDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10DDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.s, ptr %i.d, align 8, !tbaa !32
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i59, label %._crit_edge.i.i58

.noexc.i59:                                       ; preds = %.critedge51
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc60 unwind label %bb.bh  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i59
  store ptr %i.u, ptr %11, align 8, !tbaa !34
  %i.v = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.v, ptr %i.q, align 8, !tbaa !35
  br label %._crit_edge.i.i58

._crit_edge.i.i58:                                ; preds = %.noexc60, %.critedge51
  %i.w = phi ptr [ %i.u, %.noexc60 ], [ %i.q, %.critedge51 ] ; 2 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i58
  %i.x = load i8, ptr %i.r, align 1, !tbaa !35
  store i8 %i.x, ptr %i.w, align 1, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i58
  %i.y = load i64, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !36
  %i.aa = load ptr, ptr %11, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106 ; 3 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %.noexc62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %23 = sdiv exact i64 %i.ah, 24
  %i.ai = icmp ugt i64 %23, 384307168202282325
  br i1 %i.ai, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc61 unwind label %bb.bi

.noexc61:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge unwind label %bb.bi

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre387 = load ptr, ptr %i.ac, align 8, !tbaa !68
  br label %.noexc62

.noexc62:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge, %bb.k
  %i.ak = phi ptr [ %i.ad, %bb.k ], [ %.pre387, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ]
  %i.al = phi ptr [ %i.ae, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ]
  %.pr.i227 = phi ptr [ null, %bb.k ], [ %i.aj, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ] ; 10 uses
  store ptr %.pr.i227, ptr %12, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i227, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %.pr.i227, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.al, ptr %i.ak, ptr noundef %.pr.i227)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc62
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i227, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i227, i64 noundef %i.ah) #32
  br label %.body

bb.o:                                             ; preds = %.noexc62
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !106 ; 3 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i63 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i63, label %.noexc69, label %bb.p

bb.p:                                             ; preds = %bb.o
  %24 = sdiv exact i64 %i.aw, 24
  %i.ax = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ax, label %.noexc.i.i67, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64, !prof !62

.noexc.i.i67:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc68 unwind label %bb.bj

.noexc68:                                         ; preds = %.noexc.i.i67
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64: ; preds = %bb.p
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge unwind label %bb.bj

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64
  %.pre388 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre389 = load ptr, ptr %i.ar, align 8, !tbaa !68
  br label %.noexc69

.noexc69:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge, %bb.o
  %i.az = phi ptr [ %i.as, %bb.o ], [ %.pre389, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ]
  %i.ba = phi ptr [ %i.at, %bb.o ], [ %.pre388, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ]
  %.pr.i215 = phi ptr [ null, %bb.o ], [ %i.ay, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ] ; 10 uses
  store ptr %.pr.i215, ptr %13, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i215, ptr %i.bb, align 8, !tbaa !106
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr.i215, i64 %i.aw
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !107
  %i.be = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ba, ptr %i.az, ptr noundef %.pr.i215)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc69
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i.i65, label %.body70, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.aw) #32
  br label %.body70

bb.s:                                             ; preds = %.noexc69
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106 ; 3 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i73 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i73, label %.noexc79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %25 = sdiv exact i64 %i.bl, 24
  %i.bm = icmp ugt i64 %25, 384307168202282325
  br i1 %i.bm, label %.noexc.i.i77, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74, !prof !62

.noexc.i.i77:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc78 unwind label %bb.bk

.noexc78:                                         ; preds = %.noexc.i.i77
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74: ; preds = %bb.t
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge unwind label %bb.bk

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74
  %.pre390 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre391 = load ptr, ptr %i.bg, align 8, !tbaa !68
  br label %.noexc79

.noexc79:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge, %bb.s
  %i.bo = phi ptr [ %i.bh, %bb.s ], [ %.pre391, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ]
  %i.bp = phi ptr [ %i.bi, %bb.s ], [ %.pre390, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ]
  %.pr.i203 = phi ptr [ null, %bb.s ], [ %i.bn, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ] ; 10 uses
  store ptr %.pr.i203, ptr %14, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i203, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %.pr.i203, i64 %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !107
  %i.bt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bp, ptr %i.bo, ptr noundef %.pr.i203)
          to label %bb.w unwind label %bb.u       ; 3 uses

bb.u:                                             ; preds = %.noexc79
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i.i75, label %.body80, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.bl) #32
  br label %.body80

bb.w:                                             ; preds = %.noexc79
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 3 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i83, label %.noexc89, label %bb.x

bb.x:                                             ; preds = %bb.w
  %26 = sdiv exact i64 %i.ca, 24
  %i.cb = icmp ugt i64 %26, 384307168202282325
  br i1 %i.cb, label %.noexc.i.i87, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84, !prof !62

.noexc.i.i87:                                     ; preds = %bb.x
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc88 unwind label %bb.bl

.noexc88:                                         ; preds = %.noexc.i.i87
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84: ; preds = %bb.x
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge unwind label %bb.bl

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84
  %.pre392 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre393 = load ptr, ptr %i.bv, align 8, !tbaa !68
  br label %.noexc89

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge, %bb.w
  %i.cd = phi ptr [ %i.bw, %bb.w ], [ %.pre393, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ]
  %i.ce = phi ptr [ %i.bx, %bb.w ], [ %.pre392, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ]
  %.pr.i193 = phi ptr [ null, %bb.w ], [ %i.cc, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ] ; 10 uses
  store ptr %.pr.i193, ptr %15, align 8, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i193, ptr %i.cf, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr.i193, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !107
  %i.ci = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ce, ptr %i.cd, ptr noundef %.pr.i193)
          to label %.noexc97 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc89
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %.pr.i193, null
  br i1 %.not.i.i.i85, label %.body90, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i193, i64 noundef %i.ca) #32
  br label %.body90

.noexc97:                                         ; preds = %.noexc89
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc106 unwind label %bb.aa ; 3 uses

bb.aa:                                            ; preds = %.noexc97
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.noexc106:                                        ; preds = %.noexc97
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.cn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc116 unwind label %bb.ab ; 3 uses

bb.ab:                                            ; preds = %.noexc106
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.noexc116:                                        ; preds = %.noexc106
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc126 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %.noexc116
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.noexc126:                                        ; preds = %.noexc116
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ct = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ae unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc126
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %.noexc126
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cw, ptr %20, align 8, !tbaa !30
  %i.cx = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !32
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.ae
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.db, ptr %20, align 8, !tbaa !34
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc132, %bb.ae
  %i.dd = phi ptr [ %i.db, %.noexc132 ], [ %i.cw, %bb.ae ] ; 2 uses
  switch i64 %i.cz, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i130
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !35
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i130
  %i.df = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !36
  %i.dh = load ptr, ptr %20, align 8, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dj, ptr %21, align 8, !tbaa !30
  %i.dk = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dm, ptr %i.b, align 8, !tbaa !32
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ah
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc136 unwind label %bb.bn ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.do, ptr %21, align 8, !tbaa !34
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !35
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ah
  %i.dq = phi ptr [ %i.do, %.noexc136 ], [ %i.dj, %bb.ah ] ; 2 uses
  switch i64 %i.dm, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i134
  %i.dr = load i8, ptr %i.dk, align 1, !tbaa !35
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i134
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !36
  %i.du = load ptr, ptr %21, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dw, ptr %22, align 8, !tbaa !30
  %i.dx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dy = load i64, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !32
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ak
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bo ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ea, ptr %22, align 8, !tbaa !34
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !35
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %bb.ak
  %i.ec = phi ptr [ %i.ea, %.noexc140 ], [ %i.dw, %bb.ak ] ; 2 uses
end_hunk_9
begin_hunk_10_@_Z11print_elems9DiagMatr2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z11printVectorI9DiagMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.DiagMatr2) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %0, align 8, !tbaa !145
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !832
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !832
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !832
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !832
  %i.h = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !832 ; 3 uses
  %i.i = sdiv i64 %i.h, 2                         ; 5 uses
  %i.j = sub nsw i64 %i.h, %i.i                   ; 3 uses
  %i.k = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !832 ; 3 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = sub nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = sub nsw i64 1, %i.i
  %i.o = sub nsw i64 %i.g, %i.l                   ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.k               ; 2 uses
  %.not30.i = icmp slt i64 %i.h, 1                ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.j, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !832
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !832
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.j, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !832
  store i64 %i.i, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !832
  store i64 %i.j, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !832
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0344.0 = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.a ]
  %.sroa.9.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.13.0 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.i, %bb.f ], [ 1, %bb.e ], [ %i.i, %bb.c ], [ 1, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !832
  store i64 %.sroa.0344.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.n, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.o, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bf

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  invoke void @_Z29populateSingleColumnQcompmatrI9DiagMatr2EvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull byval(%struct.DiagMatr2) align 8 %0)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.g
  invoke void @_Z29populateSingleColumnQcompmatrI9DiagMatr2EvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, ptr noundef nonnull byval(%struct.DiagMatr2) align 8 %0)
          to label %bb.h unwind label %bb.bf

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.p, ptr %10, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 2, i8 noundef signext 32)
          to label %.critedge51 unwind label %bb.bg

.critedge51:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.q, ptr %11, align 8, !tbaa !30
  %i.r = load ptr, ptr @_ZL10DDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10DDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.s, ptr %i.d, align 8, !tbaa !32
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i59, label %._crit_edge.i.i58

.noexc.i59:                                       ; preds = %.critedge51
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc60 unwind label %bb.bh  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i59
  store ptr %i.u, ptr %11, align 8, !tbaa !34
  %i.v = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.v, ptr %i.q, align 8, !tbaa !35
  br label %._crit_edge.i.i58

._crit_edge.i.i58:                                ; preds = %.noexc60, %.critedge51
  %i.w = phi ptr [ %i.u, %.noexc60 ], [ %i.q, %.critedge51 ] ; 2 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i58
  %i.x = load i8, ptr %i.r, align 1, !tbaa !35
  store i8 %i.x, ptr %i.w, align 1, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i58
  %i.y = load i64, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !36
  %i.aa = load ptr, ptr %11, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106 ; 3 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %.noexc62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %23 = sdiv exact i64 %i.ah, 24
  %i.ai = icmp ugt i64 %23, 384307168202282325
  br i1 %i.ai, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc61 unwind label %bb.bi

.noexc61:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge unwind label %bb.bi

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre387 = load ptr, ptr %i.ac, align 8, !tbaa !68
  br label %.noexc62

.noexc62:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge, %bb.k
  %i.ak = phi ptr [ %i.ad, %bb.k ], [ %.pre387, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ]
  %i.al = phi ptr [ %i.ae, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ]
  %.pr.i227 = phi ptr [ null, %bb.k ], [ %i.aj, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ] ; 10 uses
  store ptr %.pr.i227, ptr %12, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i227, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %.pr.i227, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.al, ptr %i.ak, ptr noundef %.pr.i227)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc62
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i227, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i227, i64 noundef %i.ah) #32
  br label %.body

bb.o:                                             ; preds = %.noexc62
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !106 ; 3 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i63 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i63, label %.noexc69, label %bb.p

bb.p:                                             ; preds = %bb.o
  %24 = sdiv exact i64 %i.aw, 24
  %i.ax = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ax, label %.noexc.i.i67, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64, !prof !62

.noexc.i.i67:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc68 unwind label %bb.bj

.noexc68:                                         ; preds = %.noexc.i.i67
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64: ; preds = %bb.p
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge unwind label %bb.bj

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64
  %.pre388 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre389 = load ptr, ptr %i.ar, align 8, !tbaa !68
  br label %.noexc69

.noexc69:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge, %bb.o
  %i.az = phi ptr [ %i.as, %bb.o ], [ %.pre389, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ]
  %i.ba = phi ptr [ %i.at, %bb.o ], [ %.pre388, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ]
  %.pr.i215 = phi ptr [ null, %bb.o ], [ %i.ay, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ] ; 10 uses
  store ptr %.pr.i215, ptr %13, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i215, ptr %i.bb, align 8, !tbaa !106
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr.i215, i64 %i.aw
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !107
  %i.be = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ba, ptr %i.az, ptr noundef %.pr.i215)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc69
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i.i65, label %.body70, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.aw) #32
  br label %.body70

bb.s:                                             ; preds = %.noexc69
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106 ; 3 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i73 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i73, label %.noexc79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %25 = sdiv exact i64 %i.bl, 24
  %i.bm = icmp ugt i64 %25, 384307168202282325
  br i1 %i.bm, label %.noexc.i.i77, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74, !prof !62

.noexc.i.i77:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc78 unwind label %bb.bk

.noexc78:                                         ; preds = %.noexc.i.i77
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74: ; preds = %bb.t
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge unwind label %bb.bk

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74
  %.pre390 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre391 = load ptr, ptr %i.bg, align 8, !tbaa !68
  br label %.noexc79

.noexc79:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge, %bb.s
  %i.bo = phi ptr [ %i.bh, %bb.s ], [ %.pre391, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ]
  %i.bp = phi ptr [ %i.bi, %bb.s ], [ %.pre390, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ]
  %.pr.i203 = phi ptr [ null, %bb.s ], [ %i.bn, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ] ; 10 uses
  store ptr %.pr.i203, ptr %14, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i203, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %.pr.i203, i64 %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !107
  %i.bt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bp, ptr %i.bo, ptr noundef %.pr.i203)
          to label %bb.w unwind label %bb.u       ; 3 uses

bb.u:                                             ; preds = %.noexc79
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i.i75, label %.body80, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.bl) #32
  br label %.body80

bb.w:                                             ; preds = %.noexc79
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 3 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i83, label %.noexc89, label %bb.x

bb.x:                                             ; preds = %bb.w
  %26 = sdiv exact i64 %i.ca, 24
  %i.cb = icmp ugt i64 %26, 384307168202282325
  br i1 %i.cb, label %.noexc.i.i87, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84, !prof !62

.noexc.i.i87:                                     ; preds = %bb.x
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc88 unwind label %bb.bl

.noexc88:                                         ; preds = %.noexc.i.i87
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84: ; preds = %bb.x
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge unwind label %bb.bl

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84
  %.pre392 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre393 = load ptr, ptr %i.bv, align 8, !tbaa !68
  br label %.noexc89

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge, %bb.w
  %i.cd = phi ptr [ %i.bw, %bb.w ], [ %.pre393, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ]
  %i.ce = phi ptr [ %i.bx, %bb.w ], [ %.pre392, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ]
  %.pr.i193 = phi ptr [ null, %bb.w ], [ %i.cc, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ] ; 10 uses
  store ptr %.pr.i193, ptr %15, align 8, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i193, ptr %i.cf, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr.i193, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !107
  %i.ci = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ce, ptr %i.cd, ptr noundef %.pr.i193)
          to label %.noexc97 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc89
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %.pr.i193, null
  br i1 %.not.i.i.i85, label %.body90, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i193, i64 noundef %i.ca) #32
  br label %.body90

.noexc97:                                         ; preds = %.noexc89
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc106 unwind label %bb.aa ; 3 uses

bb.aa:                                            ; preds = %.noexc97
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.noexc106:                                        ; preds = %.noexc97
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.cn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc116 unwind label %bb.ab ; 3 uses

bb.ab:                                            ; preds = %.noexc106
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.noexc116:                                        ; preds = %.noexc106
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc126 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %.noexc116
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.noexc126:                                        ; preds = %.noexc116
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ct = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ae unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc126
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %.noexc126
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cw, ptr %20, align 8, !tbaa !30
  %i.cx = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !32
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.ae
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.db, ptr %20, align 8, !tbaa !34
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc132, %bb.ae
  %i.dd = phi ptr [ %i.db, %.noexc132 ], [ %i.cw, %bb.ae ] ; 2 uses
  switch i64 %i.cz, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i130
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !35
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i130
  %i.df = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !36
  %i.dh = load ptr, ptr %20, align 8, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dj, ptr %21, align 8, !tbaa !30
  %i.dk = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dm, ptr %i.b, align 8, !tbaa !32
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ah
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc136 unwind label %bb.bn ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.do, ptr %21, align 8, !tbaa !34
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !35
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ah
  %i.dq = phi ptr [ %i.do, %.noexc136 ], [ %i.dj, %bb.ah ] ; 2 uses
  switch i64 %i.dm, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i134
  %i.dr = load i8, ptr %i.dk, align 1, !tbaa !35
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i134
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !36
  %i.du = load ptr, ptr %21, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dw, ptr %22, align 8, !tbaa !30
  %i.dx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dy = load i64, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !32
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ak
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bo ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ea, ptr %22, align 8, !tbaa !34
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !35
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %bb.ak
  %i.ec = phi ptr [ %i.ea, %.noexc140 ], [ %i.dw, %bb.ak ] ; 2 uses
end_hunk_10
begin_hunk_11_@_Z11print_elems8DiagMatrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z11printVectorI8DiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.DiagMatr) align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 12 uses
  %.sroa.14 = alloca i64, align 8                 ; 9 uses
  %.sroa.18 = alloca i64, align 8                 ; 7 uses
  %.sroa.20 = alloca i64, align 8                 ; 7 uses
  %.sroa.22 = alloca i64, align 8                 ; 6 uses
  %6 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %7 = alloca %"class.std::vector", align 8       ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 4 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %0, align 8, !tbaa !147
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  store i64 0, ptr %.sroa.14, align 8, !alias.scope !836
  store i64 0, ptr %.sroa.18, align 8, !alias.scope !836
  store i64 0, ptr %.sroa.20, align 8, !alias.scope !836
  store i64 0, ptr %.sroa.22, align 8, !alias.scope !836
  %i.h = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !836 ; 3 uses
  %i.i = sdiv i64 %i.h, 2                         ; 5 uses
  %i.j = sub nsw i64 %i.h, %i.i                   ; 3 uses
  %i.k = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !836 ; 3 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = sub nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = sub nsw i64 1, %i.i
  %i.o = sub nsw i64 %i.g, %i.l                   ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.k               ; 2 uses
  %.not30.i = icmp slt i64 %i.h, 1                ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.j, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !836
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !836
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.j, ptr %.sroa.14, align 8, !tbaa !115, !alias.scope !836
  store i64 %i.i, ptr %.sroa.18, align 8, !tbaa !118, !alias.scope !836
  store i64 %i.j, ptr %.sroa.20, align 8, !tbaa !119, !alias.scope !836
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0344.0 = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.a ]
  %.sroa.9.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.13.0 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.22, %bb.f ], [ %.sroa.20, %bb.e ], [ %.sroa.18, %bb.c ], [ %.sroa.14, %bb.a ]
  %.sink.i = phi i64 [ %i.i, %bb.f ], [ 1, %bb.e ], [ %i.i, %bb.c ], [ 1, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !836
  store i64 %.sroa.0344.0, ptr %6, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !tbaa !25
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i64, ptr %.sroa.18, align 8, !tbaa !25
  store i64 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.n, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.o, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.bf

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  invoke void @_Z29populateSingleColumnQcompmatrI8DiagMatrEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %bb.g
  invoke void @_Z29populateSingleColumnQcompmatrI8DiagMatrEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0)
          to label %bb.h unwind label %bb.bf

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.p, ptr %10, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 2, i8 noundef signext 32)
          to label %.critedge51 unwind label %bb.bg

.critedge51:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.q, ptr %11, align 8, !tbaa !30
  %i.r = load ptr, ptr @_ZL10DDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10DDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.s, ptr %i.d, align 8, !tbaa !32
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i59, label %._crit_edge.i.i58

.noexc.i59:                                       ; preds = %.critedge51
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc60 unwind label %bb.bh  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i59
  store ptr %i.u, ptr %11, align 8, !tbaa !34
  %i.v = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.v, ptr %i.q, align 8, !tbaa !35
  br label %._crit_edge.i.i58

._crit_edge.i.i58:                                ; preds = %.noexc60, %.critedge51
  %i.w = phi ptr [ %i.u, %.noexc60 ], [ %i.q, %.critedge51 ] ; 2 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i58
  %i.x = load i8, ptr %i.r, align 1, !tbaa !35
  store i8 %i.x, ptr %i.w, align 1, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i58
  %i.y = load i64, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !36
  %i.aa = load ptr, ptr %11, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106 ; 3 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %.noexc62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %23 = sdiv exact i64 %i.ah, 24
  %i.ai = icmp ugt i64 %23, 384307168202282325
  br i1 %i.ai, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc61 unwind label %bb.bi

.noexc61:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge unwind label %bb.bi

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre387 = load ptr, ptr %i.ac, align 8, !tbaa !68
  br label %.noexc62

.noexc62:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge, %bb.k
  %i.ak = phi ptr [ %i.ad, %bb.k ], [ %.pre387, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ]
  %i.al = phi ptr [ %i.ae, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ]
  %.pr.i227 = phi ptr [ null, %bb.k ], [ %i.aj, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc62_crit_edge ] ; 10 uses
  store ptr %.pr.i227, ptr %12, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i227, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %.pr.i227, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.al, ptr %i.ak, ptr noundef %.pr.i227)
          to label %bb.o unwind label %bb.m       ; 3 uses

bb.m:                                             ; preds = %.noexc62
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i227, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i227, i64 noundef %i.ah) #32
  br label %.body

bb.o:                                             ; preds = %.noexc62
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !106 ; 3 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i63 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i63, label %.noexc69, label %bb.p

bb.p:                                             ; preds = %bb.o
  %24 = sdiv exact i64 %i.aw, 24
  %i.ax = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ax, label %.noexc.i.i67, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64, !prof !62

.noexc.i.i67:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc68 unwind label %bb.bj

.noexc68:                                         ; preds = %.noexc.i.i67
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64: ; preds = %bb.p
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge unwind label %bb.bj

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64
  %.pre388 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre389 = load ptr, ptr %i.ar, align 8, !tbaa !68
  br label %.noexc69

.noexc69:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge, %bb.o
  %i.az = phi ptr [ %i.as, %bb.o ], [ %.pre389, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ]
  %i.ba = phi ptr [ %i.at, %bb.o ], [ %.pre388, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ]
  %.pr.i215 = phi ptr [ null, %bb.o ], [ %i.ay, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i64..noexc69_crit_edge ] ; 10 uses
  store ptr %.pr.i215, ptr %13, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i215, ptr %i.bb, align 8, !tbaa !106
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr.i215, i64 %i.aw
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !107
  %i.be = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ba, ptr %i.az, ptr noundef %.pr.i215)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc69
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i.i65, label %.body70, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.aw) #32
  br label %.body70

bb.s:                                             ; preds = %.noexc69
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106 ; 3 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i73 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i73, label %.noexc79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %25 = sdiv exact i64 %i.bl, 24
  %i.bm = icmp ugt i64 %25, 384307168202282325
  br i1 %i.bm, label %.noexc.i.i77, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74, !prof !62

.noexc.i.i77:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc78 unwind label %bb.bk

.noexc78:                                         ; preds = %.noexc.i.i77
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74: ; preds = %bb.t
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge unwind label %bb.bk

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74
  %.pre390 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre391 = load ptr, ptr %i.bg, align 8, !tbaa !68
  br label %.noexc79

.noexc79:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge, %bb.s
  %i.bo = phi ptr [ %i.bh, %bb.s ], [ %.pre391, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ]
  %i.bp = phi ptr [ %i.bi, %bb.s ], [ %.pre390, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ]
  %.pr.i203 = phi ptr [ null, %bb.s ], [ %i.bn, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i74..noexc79_crit_edge ] ; 10 uses
  store ptr %.pr.i203, ptr %14, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i203, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %.pr.i203, i64 %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !107
  %i.bt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bp, ptr %i.bo, ptr noundef %.pr.i203)
          to label %bb.w unwind label %bb.u       ; 3 uses

bb.u:                                             ; preds = %.noexc79
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i.i75, label %.body80, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.bl) #32
  br label %.body80

bb.w:                                             ; preds = %.noexc79
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 3 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i83, label %.noexc89, label %bb.x

bb.x:                                             ; preds = %bb.w
  %26 = sdiv exact i64 %i.ca, 24
  %i.cb = icmp ugt i64 %26, 384307168202282325
  br i1 %i.cb, label %.noexc.i.i87, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84, !prof !62

.noexc.i.i87:                                     ; preds = %bb.x
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc88 unwind label %bb.bl

.noexc88:                                         ; preds = %.noexc.i.i87
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84: ; preds = %bb.x
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge unwind label %bb.bl

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84
  %.pre392 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre393 = load ptr, ptr %i.bv, align 8, !tbaa !68
  br label %.noexc89

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge, %bb.w
  %i.cd = phi ptr [ %i.bw, %bb.w ], [ %.pre393, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ]
  %i.ce = phi ptr [ %i.bx, %bb.w ], [ %.pre392, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ]
  %.pr.i193 = phi ptr [ null, %bb.w ], [ %i.cc, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i84..noexc89_crit_edge ] ; 10 uses
  store ptr %.pr.i193, ptr %15, align 8, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i193, ptr %i.cf, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr.i193, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !107
  %i.ci = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ce, ptr %i.cd, ptr noundef %.pr.i193)
          to label %.noexc97 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc89
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %.pr.i193, null
  br i1 %.not.i.i.i85, label %.body90, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i193, i64 noundef %i.ca) #32
  br label %.body90

.noexc97:                                         ; preds = %.noexc89
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc106 unwind label %bb.aa ; 3 uses

bb.aa:                                            ; preds = %.noexc97
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.noexc106:                                        ; preds = %.noexc97
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.cn = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc116 unwind label %bb.ab ; 3 uses

bb.ab:                                            ; preds = %.noexc106
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.noexc116:                                        ; preds = %.noexc106
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc126 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %.noexc116
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.noexc126:                                        ; preds = %.noexc116
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ct = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ae unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc126
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %.noexc126
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cw, ptr %20, align 8, !tbaa !30
  %i.cx = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !32
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.ae
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.db, ptr %20, align 8, !tbaa !34
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !35
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc132, %bb.ae
  %i.dd = phi ptr [ %i.db, %.noexc132 ], [ %i.cw, %bb.ae ] ; 2 uses
  switch i64 %i.cz, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i130
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !35
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !35
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i130
  %i.df = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !36
  %i.dh = load ptr, ptr %20, align 8, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dj, ptr %21, align 8, !tbaa !30
  %i.dk = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dm, ptr %i.b, align 8, !tbaa !32
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ah
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc136 unwind label %bb.bn ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.do, ptr %21, align 8, !tbaa !34
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !35
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ah
  %i.dq = phi ptr [ %i.do, %.noexc136 ], [ %i.dj, %bb.ah ] ; 2 uses
  switch i64 %i.dm, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i134
  %i.dr = load i8, ptr %i.dk, align 1, !tbaa !35
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i134
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !36
  %i.du = load ptr, ptr %21, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dw, ptr %22, align 8, !tbaa !30
  %i.dx = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dy = load i64, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !32
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ak
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bo ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ea, ptr %22, align 8, !tbaa !34
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !35
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %bb.ak
  %i.ec = phi ptr [ %i.ea, %.noexc140 ], [ %i.dw, %bb.ak ] ; 2 uses
end_hunk_11
begin_hunk_12_@_Z11printVectorI17FullStateDiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %0, align 8, !tbaa !149
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  store i64 0, ptr %.sroa.15, align 8, !alias.scope !841
  store i64 0, ptr %.sroa.19, align 8, !alias.scope !841
  store i64 0, ptr %.sroa.21, align 8, !alias.scope !841
  store i64 0, ptr %.sroa.23, align 8, !alias.scope !841
  %i.h = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !841 ; 3 uses
  %i.i = sdiv i64 %i.h, 2                         ; 5 uses
  %i.j = sub nsw i64 %i.h, %i.i                   ; 3 uses
  %i.k = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !841 ; 3 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = sub nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = sub nsw i64 1, %i.i                      ; 2 uses
  %i.o = sub nsw i64 %i.g, %i.l                   ; 3 uses
  %.not.i = icmp sgt i64 %i.g, %i.k               ; 2 uses
  %.not30.i = icmp slt i64 %i.h, 1                ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.j, ptr %.sroa.15, align 8, !tbaa !115, !alias.scope !841
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.15, align 8, !tbaa !115, !alias.scope !841
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.j, ptr %.sroa.15, align 8, !tbaa !115, !alias.scope !841
  store i64 %i.i, ptr %.sroa.19, align 8, !tbaa !118, !alias.scope !841
  store i64 %i.j, ptr %.sroa.21, align 8, !tbaa !119, !alias.scope !841
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0346.0 = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.14.0 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.23, %bb.f ], [ %.sroa.21, %bb.e ], [ %.sroa.19, %bb.c ], [ %.sroa.15, %bb.a ]
  %.sink.i = phi i64 [ %i.i, %bb.f ], [ 1, %bb.e ], [ %i.i, %bb.c ], [ 1, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !841
  store i64 %.sroa.0346.0, ptr %6, align 8, !tbaa !25
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload = load i64, ptr %.sroa.15, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !25
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload = load i64, ptr %.sroa.19, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload = load i64, ptr %.sroa.21, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload = load i64, ptr %.sroa.23, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.n, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.o, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  invoke void @_Z29populateSingleColumnQcompmatrI17FullStateDiagMatrEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  invoke void @_Z29populateSingleColumnQcompmatrI17FullStateDiagMatrEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.q = load i32, ptr %i.p, align 8, !tbaa !842
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %.sroa.0346.0, ptr %9, align 8, !tbaa !25
  %.sroa.10.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx351, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx355, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx359, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx363, align 8, !tbaa !25
  %.sroa.19.0..sroa_idx367 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx367, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx371, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx375, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 %i.n, ptr %.sroa.24.0..sroa_idx379, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 %i.o, ptr %.sroa.25.0..sroa_idx383, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.0..sroa_idx386, i8 0, i64 16, i1 false)
  invoke void @_Z34populateDistributedVectorRowLabelsI17FullStateDiagMatrEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_T_18MatrixQuadrantInds(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %9)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.noexc, %bb.g, %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.l:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.t, ptr %11, align 8, !tbaa !30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 2, i8 noundef signext 32)
          to label %.critedge53 unwind label %bb.bt

.critedge53:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.u, ptr %12, align 8, !tbaa !30
  %i.v = load ptr, ptr @_ZL10DDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10DDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.w, ptr %i.d, align 8, !tbaa !32
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i61, label %._crit_edge.i.i60

.noexc.i61:                                       ; preds = %.critedge53
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc62 unwind label %bb.bu  ; 2 uses

.noexc62:                                         ; preds = %.noexc.i61
  store ptr %i.y, ptr %12, align 8, !tbaa !34
  %i.z = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.z, ptr %i.u, align 8, !tbaa !35
  br label %._crit_edge.i.i60

._crit_edge.i.i60:                                ; preds = %.noexc62, %.critedge53
  %i.aa = phi ptr [ %i.y, %.noexc62 ], [ %i.u, %.critedge53 ] ; 2 uses
  switch i64 %i.w, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i60
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !35
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !35
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.w, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i60
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !36
  %i.ae = load ptr, ptr %12, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !106 ; 3 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i, label %.noexc64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %24 = sdiv exact i64 %i.al, 24
  %i.am = icmp ugt i64 %24, 384307168202282325
  br i1 %i.am, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc63 unwind label %bb.bv

.noexc63:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc64_crit_edge unwind label %bb.bv

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc64_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre416 = load ptr, ptr %i.ag, align 8, !tbaa !68
  br label %.noexc64

.noexc64:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc64_crit_edge, %bb.o
  %i.ao = phi ptr [ %i.ah, %bb.o ], [ %.pre416, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc64_crit_edge ]
  %i.ap = phi ptr [ %i.ai, %bb.o ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc64_crit_edge ]
  %.pr.i229 = phi ptr [ null, %bb.o ], [ %i.an, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc64_crit_edge ] ; 10 uses
  store ptr %.pr.i229, ptr %13, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i229, ptr %i.aq, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr.i229, i64 %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !107
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ap, ptr %i.ao, ptr noundef %.pr.i229)
          to label %bb.s unwind label %bb.q       ; 3 uses

bb.q:                                             ; preds = %.noexc64
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i229, null
  br i1 %.not.i.i.i, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i229, i64 noundef %i.al) #32
  br label %.body

bb.s:                                             ; preds = %.noexc64
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106 ; 3 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i65 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i.i65, label %.noexc71, label %bb.t

bb.t:                                             ; preds = %bb.s
  %25 = sdiv exact i64 %i.ba, 24
  %i.bb = icmp ugt i64 %25, 384307168202282325
  br i1 %i.bb, label %.noexc.i.i69, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66, !prof !62

.noexc.i.i69:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc70 unwind label %bb.bw

.noexc70:                                         ; preds = %.noexc.i.i69
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66: ; preds = %bb.t
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66..noexc71_crit_edge unwind label %bb.bw

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66..noexc71_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66
  %.pre417 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre418 = load ptr, ptr %i.av, align 8, !tbaa !68
  br label %.noexc71

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66..noexc71_crit_edge, %bb.s
  %i.bd = phi ptr [ %i.aw, %bb.s ], [ %.pre418, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66..noexc71_crit_edge ]
  %i.be = phi ptr [ %i.ax, %bb.s ], [ %.pre417, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66..noexc71_crit_edge ]
  %.pr.i217 = phi ptr [ null, %bb.s ], [ %i.bc, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i66..noexc71_crit_edge ] ; 10 uses
  store ptr %.pr.i217, ptr %14, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i217, ptr %i.bf, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr.i217, i64 %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !107
  %i.bi = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.be, ptr %i.bd, ptr noundef %.pr.i217)
          to label %bb.w unwind label %bb.u       ; 3 uses

bb.u:                                             ; preds = %.noexc71
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %.pr.i217, null
  br i1 %.not.i.i.i67, label %.body72, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i217, i64 noundef %i.ba) #32
  br label %.body72

bb.w:                                             ; preds = %.noexc71
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !106 ; 3 uses
  %i.bm = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i75 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i75, label %.noexc81, label %bb.x

bb.x:                                             ; preds = %bb.w
  %26 = sdiv exact i64 %i.bp, 24
  %i.bq = icmp ugt i64 %26, 384307168202282325
  br i1 %i.bq, label %.noexc.i.i79, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76, !prof !62

.noexc.i.i79:                                     ; preds = %bb.x
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc80 unwind label %bb.bx

.noexc80:                                         ; preds = %.noexc.i.i79
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76: ; preds = %bb.x
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76..noexc81_crit_edge unwind label %bb.bx

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76..noexc81_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76
  %.pre419 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre420 = load ptr, ptr %i.bk, align 8, !tbaa !68
  br label %.noexc81

.noexc81:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76..noexc81_crit_edge, %bb.w
  %i.bs = phi ptr [ %i.bl, %bb.w ], [ %.pre420, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76..noexc81_crit_edge ]
  %i.bt = phi ptr [ %i.bm, %bb.w ], [ %.pre419, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76..noexc81_crit_edge ]
  %.pr.i205 = phi ptr [ null, %bb.w ], [ %i.br, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i76..noexc81_crit_edge ] ; 10 uses
  store ptr %.pr.i205, ptr %15, align 8, !tbaa !78
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i205, ptr %i.bu, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %.pr.i205, i64 %i.bp
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !107
  %i.bx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bt, ptr %i.bs, ptr noundef %.pr.i205)
          to label %bb.aa unwind label %bb.y      ; 3 uses

bb.y:                                             ; preds = %.noexc81
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.pr.i205, null
  br i1 %.not.i.i.i77, label %.body82, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i205, i64 noundef %i.bp) #32
  br label %.body82

bb.aa:                                            ; preds = %.noexc81
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !106 ; 3 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i85 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i.i.i85, label %.noexc91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %27 = sdiv exact i64 %i.ce, 24
  %i.cf = icmp ugt i64 %27, 384307168202282325
  br i1 %i.cf, label %.noexc.i.i89, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86, !prof !62

.noexc.i.i89:                                     ; preds = %bb.ab
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc90 unwind label %bb.by

.noexc90:                                         ; preds = %.noexc.i.i89
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86: ; preds = %bb.ab
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86..noexc91_crit_edge unwind label %bb.by

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86..noexc91_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86
  %.pre421 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre422 = load ptr, ptr %i.bz, align 8, !tbaa !68
  br label %.noexc91

.noexc91:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86..noexc91_crit_edge, %bb.aa
  %i.ch = phi ptr [ %i.ca, %bb.aa ], [ %.pre422, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86..noexc91_crit_edge ]
  %i.ci = phi ptr [ %i.cb, %bb.aa ], [ %.pre421, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86..noexc91_crit_edge ]
  %.pr.i195 = phi ptr [ null, %bb.aa ], [ %i.cg, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i86..noexc91_crit_edge ] ; 10 uses
  store ptr %.pr.i195, ptr %16, align 8, !tbaa !78
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %.pr.i195, ptr %i.cj, align 8, !tbaa !106
  %i.ck = getelementptr inbounds nuw i8, ptr %.pr.i195, i64 %i.ce
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !107
  %i.cm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ci, ptr %i.ch, ptr noundef %.pr.i195)
          to label %.noexc99 unwind label %bb.ac  ; 3 uses

bb.ac:                                            ; preds = %.noexc91
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %.pr.i195, null
  br i1 %.not.i.i.i87, label %.body92, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i195, i64 noundef %i.ce) #32
  br label %.body92

.noexc99:                                         ; preds = %.noexc91
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.co = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc108 unwind label %bb.ae ; 3 uses

bb.ae:                                            ; preds = %.noexc99
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body100

.noexc108:                                        ; preds = %.noexc99
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cr = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ag unwind label %bb.af     ; 3 uses

bb.af:                                            ; preds = %.noexc108
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.ag:                                            ; preds = %.noexc108
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !59
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !59 ; 3 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !57    ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i112 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i.i.i.i112, label %.noexc118, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = icmp ugt i64 %i.cz, 9223372036854775776
  br i1 %i.da, label %.noexc.i.i116, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113, !prof !62

.noexc.i.i116:                                    ; preds = %bb.ah
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc117 unwind label %bb.bz

.noexc117:                                        ; preds = %.noexc.i.i116
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113: ; preds = %bb.ah
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113..noexc118_crit_edge unwind label %bb.bz

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113..noexc118_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113
  %.pre423 = load ptr, ptr %7, align 8, !tbaa !79
  %.pre424 = load ptr, ptr %i.cu, align 8, !tbaa !79
  br label %.noexc118

.noexc118:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113..noexc118_crit_edge, %bb.ag
  %i.dc = phi ptr [ %i.cv, %bb.ag ], [ %.pre424, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113..noexc118_crit_edge ]
  %i.dd = phi ptr [ %i.cw, %bb.ag ], [ %.pre423, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113..noexc118_crit_edge ]
  %.pr.i159 = phi ptr [ null, %bb.ag ], [ %i.db, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i113..noexc118_crit_edge ] ; 10 uses
  store ptr %.pr.i159, ptr %19, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr %.pr.i159, ptr %i.de, align 8, !tbaa !59
  %i.df = getelementptr inbounds nuw i8, ptr %.pr.i159, i64 %i.cz
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !58
  %i.dh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.dd, ptr %i.dc, ptr noundef %.pr.i159)
          to label %bb.ak unwind label %bb.ai     ; 3 uses

bb.ai:                                            ; preds = %.noexc118
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.pr.i159, null
  br i1 %.not.i.i.i114, label %.body119, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i159, i64 noundef %i.cz) #32
  br label %.body119

bb.ak:                                            ; preds = %.noexc118
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !59
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !59 ; 3 uses
  %i.dl = load ptr, ptr %8, align 8, !tbaa !57    ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %.not.i.i.i.i122 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i.i122, label %.noexc128, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dp = icmp ugt i64 %i.do, 9223372036854775776
  br i1 %i.dp, label %.noexc.i.i126, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123, !prof !62

.noexc.i.i126:                                    ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc127 unwind label %bb.ca

.noexc127:                                        ; preds = %.noexc.i.i126
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123: ; preds = %bb.al
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123..noexc128_crit_edge unwind label %bb.ca

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123..noexc128_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123
  %.pre425 = load ptr, ptr %8, align 8, !tbaa !79
  %.pre426 = load ptr, ptr %i.dj, align 8, !tbaa !79
  br label %.noexc128

.noexc128:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123..noexc128_crit_edge, %bb.ak
  %i.dr = phi ptr [ %i.dk, %bb.ak ], [ %.pre426, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123..noexc128_crit_edge ]
  %i.ds = phi ptr [ %i.dl, %bb.ak ], [ %.pre425, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123..noexc128_crit_edge ]
  %.pr.i = phi ptr [ null, %bb.ak ], [ %i.dq, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i123..noexc128_crit_edge ] ; 10 uses
  store ptr %.pr.i, ptr %20, align 8, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %.pr.i, ptr %i.dt, align 8, !tbaa !59
  %i.du = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !58
  %i.dw = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ds, ptr %i.dr, ptr noundef %.pr.i)
          to label %bb.ao unwind label %bb.am     ; 3 uses

bb.am:                                            ; preds = %.noexc128
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i124, label %.body129, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.do) #32
  br label %.body129

bb.ao:                                            ; preds = %.noexc128
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !59
  %i.dy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dy, ptr %21, align 8, !tbaa !30
  %i.dz = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.eb, ptr %i.c, align 8, !tbaa !32
  %i.ec = icmp ugt i64 %i.eb, 15
  br i1 %i.ec, label %.noexc.i133, label %._crit_edge.i.i132

.noexc.i133:                                      ; preds = %bb.ao
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc134 unwind label %bb.cb ; 2 uses

.noexc134:                                        ; preds = %.noexc.i133
  store ptr %i.ed, ptr %21, align 8, !tbaa !34
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.ee, ptr %i.dy, align 8, !tbaa !35
  br label %._crit_edge.i.i132

._crit_edge.i.i132:                               ; preds = %.noexc134, %bb.ao
  %i.ef = phi ptr [ %i.ed, %.noexc134 ], [ %i.dy, %bb.ao ] ; 2 uses
  switch i64 %i.eb, label %bb.aq [
end_hunk_12
begin_hunk_13_@_Z22printDenseSquareMatrixI5QuregEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %8 = alloca %"class.std::vector", align 8       ; 12 uses
  %9 = alloca %struct.MatrixQuadrantInds, align 8 ; 12 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %14 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.25", align 8   ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 6 uses
  %17 = alloca %"class.std::vector", align 8      ; 6 uses
  %18 = alloca %"class.std::vector", align 8      ; 4 uses
  %19 = alloca %"class.std::vector", align 8      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  store i64 0, ptr %.sroa.15, align 8, !alias.scope !847
  store i64 0, ptr %.sroa.19, align 8, !alias.scope !847
  store i64 0, ptr %.sroa.21, align 8, !alias.scope !847
  store i64 0, ptr %.sroa.23, align 8, !alias.scope !847
  %i.h = load i64, ptr @global_maxNumPrintedCols, align 8, !tbaa !25, !noalias !847 ; 3 uses
  %i.i = sdiv i64 %i.h, 2                         ; 5 uses
  %i.j = sub nsw i64 %i.h, %i.i                   ; 3 uses
  %i.k = load i64, ptr @global_maxNumPrintedRows, align 8, !tbaa !25, !noalias !847 ; 3 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = sub nsw i64 %i.k, %i.l                   ; 3 uses
  %i.n = sub nsw i64 %i.g, %i.i                   ; 4 uses
  %i.o = sub nsw i64 %i.g, %i.l                   ; 5 uses
  %.not.i = icmp sgt i64 %i.g, %i.k               ; 2 uses
  %.not30.i = icmp sgt i64 %i.g, %i.h             ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not30.i
  br i1 %or.cond.i, label %bb.b, label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.j, ptr %.sroa.15, align 8, !tbaa !115, !alias.scope !847
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr %.sroa.15, align 8, !tbaa !115, !alias.scope !847
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.j, ptr %.sroa.15, align 8, !tbaa !115, !alias.scope !847
  store i64 %i.i, ptr %.sroa.19, align 8, !tbaa !118, !alias.scope !847
  store i64 %i.j, ptr %.sroa.21, align 8, !tbaa !119, !alias.scope !847
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0313.0 = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sroa.14.0 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.23, %bb.f ], [ %.sroa.21, %bb.e ], [ %.sroa.19, %bb.c ], [ %.sroa.15, %bb.a ]
  %.sink.i = phi i64 [ %i.i, %bb.f ], [ %i.g, %bb.e ], [ %i.i, %bb.c ], [ %i.g, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !847
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 %.sroa.0313.0, ptr %6, align 8, !tbaa !25
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload = load i64, ptr %.sroa.15, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !25
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload = load i64, ptr %.sroa.19, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload = load i64, ptr %.sroa.21, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload = load i64, ptr %.sroa.23, align 8, !tbaa !25 ; 2 uses
  store i64 %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.n, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.o, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %.not.i31 = icmp eq i32 %.sroa.3.0.copyload, 0
  br i1 %.not.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  invoke void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc32 unwind label %bb.l

.noexc32:                                         ; preds = %.noexc
  invoke void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, i64 noundef 0, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc33 unwind label %bb.l

.noexc33:                                         ; preds = %.noexc32
  invoke void @_Z27populateManyColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExx5Qureg(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 noundef %i.o, i64 noundef %i.n, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.j unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  invoke void @_Z29populateSingleColumnQcompmatrI5QuregEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %bb.i
  invoke void @_Z29populateSingleColumnQcompmatrI5QuregEvRSt6vectorIS1_ISt7complexIdESaIS3_EESaIS5_EExT_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.noexc33, %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !150
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.sroa.0313.0, ptr %9, align 8, !tbaa !25
  %.sroa.10.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx318, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx322, align 8, !tbaa !25
  %.sroa.14.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx326, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx330 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx330, align 8, !tbaa !25
  %.sroa.19.0..sroa_idx334 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx334, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx338, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx342, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx346 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 %i.n, ptr %.sroa.24.0..sroa_idx346, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx350 = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 %i.o, ptr %.sroa.25.0..sroa_idx350, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.0..sroa_idx353, i8 0, i64 16, i1 false)
  invoke void @_Z33populateDensityMatrixColumnLabelsRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EES8_5Qureg18MatrixQuadrantInds(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %9)
          to label %._crit_edge.i.i unwind label %bb.m

bb.l:                                             ; preds = %.noexc35, %bb.i, %.noexc33, %.noexc32, %.noexc, %bb.h, %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.m:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.t, ptr %11, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !36
  store i8 0, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106  ; 3 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !78     ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %.noexc39, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i
  %23 = sdiv exact i64 %i.aa, 24
  %i.ab = icmp ugt i64 %23, 384307168202282325
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc38 unwind label %bb.br

.noexc38:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.n
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc39_crit_edge unwind label %bb.br

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc39_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre384 = load ptr, ptr %i.v, align 8, !tbaa !68
  br label %.noexc39

.noexc39:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc39_crit_edge, %._crit_edge.i.i
  %i.ad = phi ptr [ %i.w, %._crit_edge.i.i ], [ %.pre384, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc39_crit_edge ]
  %i.ae = phi ptr [ %i.x, %._crit_edge.i.i ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc39_crit_edge ]
  %.pr.i203 = phi ptr [ null, %._crit_edge.i.i ], [ %i.ac, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc39_crit_edge ] ; 10 uses
  store ptr %.pr.i203, ptr %12, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i203, ptr %i.af, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %.pr.i203, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !107
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ae, ptr %i.ad, ptr noundef %.pr.i203)
          to label %bb.q unwind label %bb.o       ; 3 uses

bb.o:                                             ; preds = %.noexc39
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i.i, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.aa) #32
  br label %.body

bb.q:                                             ; preds = %.noexc39
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !106 ; 3 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i40 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i40, label %.noexc46, label %bb.r

bb.r:                                             ; preds = %bb.q
  %24 = sdiv exact i64 %i.ap, 24
  %i.aq = icmp ugt i64 %24, 384307168202282325
  br i1 %i.aq, label %.noexc.i.i44, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41, !prof !62

.noexc.i.i44:                                     ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc45 unwind label %bb.bs

.noexc45:                                         ; preds = %.noexc.i.i44
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41: ; preds = %bb.r
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41..noexc46_crit_edge unwind label %bb.bs

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41..noexc46_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41
  %.pre385 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre386 = load ptr, ptr %i.ak, align 8, !tbaa !68
  br label %.noexc46

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41..noexc46_crit_edge, %bb.q
  %i.as = phi ptr [ %i.al, %bb.q ], [ %.pre386, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41..noexc46_crit_edge ]
  %i.at = phi ptr [ %i.am, %bb.q ], [ %.pre385, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41..noexc46_crit_edge ]
  %.pr.i191 = phi ptr [ null, %bb.q ], [ %i.ar, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i41..noexc46_crit_edge ] ; 10 uses
  store ptr %.pr.i191, ptr %13, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i191, ptr %i.au, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %.pr.i191, i64 %i.ap
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !107
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.at, ptr %i.as, ptr noundef %.pr.i191)
          to label %bb.u unwind label %bb.s       ; 3 uses

bb.s:                                             ; preds = %.noexc46
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.pr.i191, null
  br i1 %.not.i.i.i42, label %.body47, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i191, i64 noundef %i.ap) #32
  br label %.body47

bb.u:                                             ; preds = %.noexc46
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !106 ; 3 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i50 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i50, label %.noexc56, label %bb.v

bb.v:                                             ; preds = %bb.u
  %25 = sdiv exact i64 %i.be, 24
  %i.bf = icmp ugt i64 %25, 384307168202282325
  br i1 %i.bf, label %.noexc.i.i54, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51, !prof !62

.noexc.i.i54:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc55 unwind label %bb.bt

.noexc55:                                         ; preds = %.noexc.i.i54
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51: ; preds = %bb.v
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51..noexc56_crit_edge unwind label %bb.bt

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51..noexc56_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51
  %.pre387 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre388 = load ptr, ptr %i.az, align 8, !tbaa !68
  br label %.noexc56

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51..noexc56_crit_edge, %bb.u
  %i.bh = phi ptr [ %i.ba, %bb.u ], [ %.pre388, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51..noexc56_crit_edge ]
  %i.bi = phi ptr [ %i.bb, %bb.u ], [ %.pre387, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51..noexc56_crit_edge ]
  %.pr.i179 = phi ptr [ null, %bb.u ], [ %i.bg, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i51..noexc56_crit_edge ] ; 10 uses
  store ptr %.pr.i179, ptr %14, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i179, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr.i179, i64 %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !107
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bi, ptr %i.bh, ptr noundef %.pr.i179)
          to label %bb.y unwind label %bb.w       ; 3 uses

bb.w:                                             ; preds = %.noexc56
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.pr.i179, null
  br i1 %.not.i.i.i52, label %.body57, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i179, i64 noundef %i.be) #32
  br label %.body57

bb.y:                                             ; preds = %.noexc56
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !106 ; 3 uses
  %i.bq = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i60 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.i60, label %.noexc66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %26 = sdiv exact i64 %i.bt, 24
  %i.bu = icmp ugt i64 %26, 384307168202282325
  br i1 %i.bu, label %.noexc.i.i64, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61, !prof !62

.noexc.i.i64:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc65 unwind label %bb.bu

.noexc65:                                         ; preds = %.noexc.i.i64
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61: ; preds = %bb.z
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61..noexc66_crit_edge unwind label %bb.bu

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61..noexc66_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61
  %.pre389 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre390 = load ptr, ptr %i.bo, align 8, !tbaa !68
  br label %.noexc66

.noexc66:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61..noexc66_crit_edge, %bb.y
  %i.bw = phi ptr [ %i.bp, %bb.y ], [ %.pre390, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61..noexc66_crit_edge ]
  %i.bx = phi ptr [ %i.bq, %bb.y ], [ %.pre389, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61..noexc66_crit_edge ]
  %.pr.i169 = phi ptr [ null, %bb.y ], [ %i.bv, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i61..noexc66_crit_edge ] ; 10 uses
  store ptr %.pr.i169, ptr %15, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i169, ptr %i.by, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr.i169, i64 %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !107
  %i.cb = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bx, ptr %i.bw, ptr noundef %.pr.i169)
          to label %bb.ac unwind label %bb.aa     ; 3 uses

bb.aa:                                            ; preds = %.noexc66
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.pr.i169, null
  br i1 %.not.i.i.i62, label %.body67, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i169, i64 noundef %i.bt) #32
  br label %.body67

bb.ac:                                            ; preds = %.noexc66
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !106
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !59 ; 3 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !57    ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i.i.i70, label %.noexc74, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = icmp ugt i64 %i.ci, 9223372036854775776
  br i1 %i.cj, label %.noexc.i.i72, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i72:                                     ; preds = %bb.ad
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc73 unwind label %bb.bv

.noexc73:                                         ; preds = %.noexc.i.i72
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ad
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc74_crit_edge unwind label %bb.bv

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc74_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre391 = load ptr, ptr %7, align 8, !tbaa !79
  %.pre392 = load ptr, ptr %i.cd, align 8, !tbaa !79
  br label %.noexc74

.noexc74:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc74_crit_edge, %bb.ac
  %i.cl = phi ptr [ %i.ce, %bb.ac ], [ %.pre392, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc74_crit_edge ]
  %i.cm = phi ptr [ %i.cf, %bb.ac ], [ %.pre391, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc74_crit_edge ]
  %.pr.i159 = phi ptr [ null, %bb.ac ], [ %i.ck, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc74_crit_edge ] ; 10 uses
  store ptr %.pr.i159, ptr %16, align 8, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %.pr.i159, ptr %i.cn, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %.pr.i159, i64 %i.ci
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !58
  %i.cq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.cm, ptr %i.cl, ptr noundef %.pr.i159)
          to label %bb.ag unwind label %bb.ae     ; 3 uses

bb.ae:                                            ; preds = %.noexc74
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.pr.i159, null
  br i1 %.not.i.i.i71, label %.body75, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i159, i64 noundef %i.ci) #32
  br label %.body75

bb.ag:                                            ; preds = %.noexc74
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !59
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !59 ; 3 uses
  %i.cu = load ptr, ptr %8, align 8, !tbaa !57    ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i77 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i.i77, label %.noexc83, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = icmp ugt i64 %i.cx, 9223372036854775776
  br i1 %i.cy, label %.noexc.i.i81, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78, !prof !62

.noexc.i.i81:                                     ; preds = %bb.ah
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc82 unwind label %bb.bw

.noexc82:                                         ; preds = %.noexc.i.i81
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78: ; preds = %bb.ah
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78..noexc83_crit_edge unwind label %bb.bw

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78..noexc83_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78
  %.pre393 = load ptr, ptr %8, align 8, !tbaa !79
  %.pre394 = load ptr, ptr %i.cs, align 8, !tbaa !79
  br label %.noexc83

.noexc83:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78..noexc83_crit_edge, %bb.ag
  %i.da = phi ptr [ %i.ct, %bb.ag ], [ %.pre394, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78..noexc83_crit_edge ]
  %i.db = phi ptr [ %i.cu, %bb.ag ], [ %.pre393, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78..noexc83_crit_edge ]
  %.pr.i146 = phi ptr [ null, %bb.ag ], [ %i.cz, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i78..noexc83_crit_edge ] ; 10 uses
  store ptr %.pr.i146, ptr %17, align 8, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %.pr.i146, ptr %i.dc, align 8, !tbaa !59
  %i.dd = getelementptr inbounds nuw i8, ptr %.pr.i146, i64 %i.cx
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !58
  %i.df = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.db, ptr %i.da, ptr noundef %.pr.i146)
          to label %.noexc93 unwind label %bb.ai  ; 3 uses

bb.ai:                                            ; preds = %.noexc83
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.pr.i146, null
  br i1 %.not.i.i.i79, label %.body84, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i146, i64 noundef %i.cx) #32
  br label %.body84

.noexc93:                                         ; preds = %.noexc83
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.dh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc103 unwind label %bb.ak ; 3 uses

bb.ak:                                            ; preds = %.noexc93
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.noexc103:                                        ; preds = %.noexc93
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.dk = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.am unwind label %bb.al     ; 3 uses

bb.al:                                            ; preds = %.noexc103
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.am:                                            ; preds = %.noexc103
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !59
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.dn, ptr %20, align 8, !tbaa !30
  %i.do = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.dq, ptr %i.c, align 8, !tbaa !32
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i108, label %._crit_edge.i.i107

.noexc.i108:                                      ; preds = %bb.am
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc109 unwind label %bb.bx ; 2 uses

.noexc109:                                        ; preds = %.noexc.i108
  store ptr %i.ds, ptr %20, align 8, !tbaa !34
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dt, ptr %i.dn, align 8, !tbaa !35
  br label %._crit_edge.i.i107

._crit_edge.i.i107:                               ; preds = %.noexc109, %bb.am
  %i.du = phi ptr [ %i.ds, %.noexc109 ], [ %i.dn, %bb.am ] ; 2 uses
  switch i64 %i.dq, label %bb.ao [
end_hunk_13
begin_hunk_14_@_Z11printVectorI5QuregEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = load <2 x ptr>, ptr %10, align 16, !tbaa !79
  store <2 x ptr> %i.bb, ptr %8, align 16, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !58
  store ptr %i.bd, ptr %i.ay, align 16, !tbaa !58
  %.not4.i.i.i.i.i63 = icmp eq ptr %i.av, %i.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i63, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i69, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i67
  %.05.i.i.i.i.i65 = phi ptr [ %i.bj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i67 ], [ %i.av, %bb.n ] ; 3 uses
  %i.be = load ptr, ptr %.05.i.i.i.i.i65, align 8, !tbaa !34 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i65, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i66: ; preds = %.lr.ph.i.i.i.i.i64
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !35
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i67

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i66
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i65, i64 32 ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.bj, %i.ax
  br i1 %.not.i.i.i.i.i68, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i69, label %.lr.ph.i.i.i.i.i64, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i69: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i67, %bb.n
  %.not.i.i1.i.i.i70 = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i.i70, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i69
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.av to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i69, %bb.o
  %i.bn = load ptr, ptr %10, align 16, !tbaa !57  ; 3 uses
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i73 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not4.i.i.i73, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77
  %.05.i.i.i75 = phi ptr [ %i.bu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77 ], [ %i.bn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72 ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i.i75, align 8, !tbaa !34 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76: ; preds = %.lr.ph.i.i.i74
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !35
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77: ; preds = %.lr.ph.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 32 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.bu, %i.bo
  br i1 %.not.i.i.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79, label %.lr.ph.i.i.i74, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i77
  %.pr.i80 = load ptr, ptr %10, align 16, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72
  %i.bv = phi ptr [ %.pr.i80, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i79 ], [ %i.bn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit72 ] ; 3 uses
  %.not.i.i1.i82 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i82, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81
  %i.bw = load ptr, ptr %i.bc, align 16, !tbaa !58
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i81, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !150
  %.not = icmp eq i32 %i.cb, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84
  store i64 %.sroa.0385.0, ptr %11, align 8, !tbaa !25
  %.sroa.11.0..sroa_idx390 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx390, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx394 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx394, align 8, !tbaa !25
  %.sroa.16.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx398, align 8, !tbaa !25
  %.sroa.17.0..sroa_idx402 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx402, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx406 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx406, align 8, !tbaa !25
  %.sroa.23.0..sroa_idx410 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %.sroa.23.0..sroa.23.0..sroa.23.0..sroa.23.0.copyload, ptr %.sroa.23.0..sroa_idx410, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx414 = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i64 %.sroa.25.0..sroa.25.0..sroa.25.0..sroa.25.0.copyload, ptr %.sroa.25.0..sroa_idx414, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 %i.o, ptr %.sroa.26.0..sroa_idx418, align 8, !tbaa !25
  %.sroa.27.0..sroa_idx422 = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 %i.p, ptr %.sroa.27.0..sroa_idx422, align 8, !tbaa !25
  %.sroa.29.0..sroa_idx426 = getelementptr inbounds nuw i8, ptr %11, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx426, i8 0, i64 16, i1 false)
  invoke void @_Z34populateDistributedVectorRowLabelsI5QuregEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_T_18MatrixQuadrantInds(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %11)
          to label %._crit_edge.i.i unwind label %bb.u

bb.r:                                             ; preds = %.noexc61, %bb.i, %.noexc59, %.noexc58, %.noexc, %bb.h, %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.s:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cn

bb.t:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.cn

bb.u:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit84, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.cg, ptr %13, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.ch, align 8, !tbaa !36
  store i8 0, ptr %i.cg, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ci, ptr %14, align 8, !tbaa !30
  %i.cj = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.ck, ptr %i.d, align 8, !tbaa !32
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i88, label %._crit_edge.i.i87

.noexc.i88:                                       ; preds = %._crit_edge.i.i
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc89 unwind label %bb.cc  ; 2 uses

.noexc89:                                         ; preds = %.noexc.i88
  store ptr %i.cm, ptr %14, align 8, !tbaa !34
  %i.cn = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.cn, ptr %i.ci, align 8, !tbaa !35
  br label %._crit_edge.i.i87

._crit_edge.i.i87:                                ; preds = %.noexc89, %._crit_edge.i.i
  %i.co = phi ptr [ %i.cm, %.noexc89 ], [ %i.ci, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.ck, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i87
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !35
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !35
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cj, i64 %i.ck, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i87
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !36
  %i.cs = load ptr, ptr %14, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !106 ; 3 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i.i.i.i, label %.noexc92, label %bb.y

bb.y:                                             ; preds = %bb.x
  %26 = sdiv exact i64 %i.cz, 24
  %i.da = icmp ugt i64 %26, 384307168202282325
  br i1 %i.da, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc91 unwind label %bb.cd

.noexc91:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.y
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge unwind label %bb.cd

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre464 = load ptr, ptr %i.cu, align 8, !tbaa !68
  br label %.noexc92

.noexc92:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge, %bb.x
  %i.dc = phi ptr [ %i.cv, %bb.x ], [ %.pre464, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge ]
  %i.dd = phi ptr [ %i.cw, %bb.x ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge ]
  %.pr.i268 = phi ptr [ null, %bb.x ], [ %i.db, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge ] ; 10 uses
  store ptr %.pr.i268, ptr %15, align 8, !tbaa !78
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i268, ptr %i.de, align 8, !tbaa !106
  %i.df = getelementptr inbounds nuw i8, ptr %.pr.i268, i64 %i.cz
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !107
  %i.dh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.dd, ptr %i.dc, ptr noundef %.pr.i268)
          to label %bb.ab unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc92
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %.pr.i268, null
  br i1 %.not.i.i.i90, label %.body, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i268, i64 noundef %i.cz) #32
  br label %.body

bb.ab:                                            ; preds = %.noexc92
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !106
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !106 ; 3 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i93 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i.i93, label %.noexc99, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %27 = sdiv exact i64 %i.do, 24
  %i.dp = icmp ugt i64 %27, 384307168202282325
  br i1 %i.dp, label %.noexc.i.i97, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94, !prof !62

.noexc.i.i97:                                     ; preds = %bb.ac
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc98 unwind label %bb.ce

.noexc98:                                         ; preds = %.noexc.i.i97
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94: ; preds = %bb.ac
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94..noexc99_crit_edge unwind label %bb.ce

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94..noexc99_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94
  %.pre465 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre466 = load ptr, ptr %i.dj, align 8, !tbaa !68
  br label %.noexc99

.noexc99:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94..noexc99_crit_edge, %bb.ab
  %i.dr = phi ptr [ %i.dk, %bb.ab ], [ %.pre466, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94..noexc99_crit_edge ]
  %i.ds = phi ptr [ %i.dl, %bb.ab ], [ %.pre465, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94..noexc99_crit_edge ]
  %.pr.i256 = phi ptr [ null, %bb.ab ], [ %i.dq, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i94..noexc99_crit_edge ] ; 10 uses
  store ptr %.pr.i256, ptr %16, align 8, !tbaa !78
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %.pr.i256, ptr %i.dt, align 8, !tbaa !106
  %i.du = getelementptr inbounds nuw i8, ptr %.pr.i256, i64 %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !107
  %i.dw = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ds, ptr %i.dr, ptr noundef %.pr.i256)
          to label %bb.af unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc99
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %.pr.i256, null
  br i1 %.not.i.i.i95, label %.body100, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i256, i64 noundef %i.do) #32
  br label %.body100

bb.af:                                            ; preds = %.noexc99
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !106
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !106 ; 3 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i103 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i.i.i103, label %.noexc109, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %28 = sdiv exact i64 %i.ed, 24
  %i.ee = icmp ugt i64 %28, 384307168202282325
  br i1 %i.ee, label %.noexc.i.i107, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104, !prof !62

.noexc.i.i107:                                    ; preds = %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc108 unwind label %bb.cf

.noexc108:                                        ; preds = %.noexc.i.i107
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104: ; preds = %bb.ag
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104..noexc109_crit_edge unwind label %bb.cf

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104..noexc109_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104
  %.pre467 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre468 = load ptr, ptr %i.dy, align 8, !tbaa !68
  br label %.noexc109

.noexc109:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104..noexc109_crit_edge, %bb.af
  %i.eg = phi ptr [ %i.dz, %bb.af ], [ %.pre468, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104..noexc109_crit_edge ]
  %i.eh = phi ptr [ %i.ea, %bb.af ], [ %.pre467, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104..noexc109_crit_edge ]
  %.pr.i244 = phi ptr [ null, %bb.af ], [ %i.ef, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i104..noexc109_crit_edge ] ; 10 uses
  store ptr %.pr.i244, ptr %17, align 8, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %.pr.i244, ptr %i.ei, align 8, !tbaa !106
  %i.ej = getelementptr inbounds nuw i8, ptr %.pr.i244, i64 %i.ed
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !107
  %i.el = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.eh, ptr %i.eg, ptr noundef %.pr.i244)
          to label %bb.aj unwind label %bb.ah     ; 3 uses

bb.ah:                                            ; preds = %.noexc109
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %.pr.i244, null
  br i1 %.not.i.i.i105, label %.body110, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i244, i64 noundef %i.ed) #32
  br label %.body110

bb.aj:                                            ; preds = %.noexc109
  store ptr %i.el, ptr %i.ei, align 8, !tbaa !106
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !106 ; 3 uses
  %i.ep = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i113 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i.i.i113, label %.noexc119, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %29 = sdiv exact i64 %i.es, 24
  %i.et = icmp ugt i64 %29, 384307168202282325
  br i1 %i.et, label %.noexc.i.i117, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114, !prof !62

.noexc.i.i117:                                    ; preds = %bb.ak
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc118 unwind label %bb.cg

.noexc118:                                        ; preds = %.noexc.i.i117
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114: ; preds = %bb.ak
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114..noexc119_crit_edge unwind label %bb.cg

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114..noexc119_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114
  %.pre469 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre470 = load ptr, ptr %i.en, align 8, !tbaa !68
  br label %.noexc119

.noexc119:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114..noexc119_crit_edge, %bb.aj
  %i.ev = phi ptr [ %i.eo, %bb.aj ], [ %.pre470, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114..noexc119_crit_edge ]
  %i.ew = phi ptr [ %i.ep, %bb.aj ], [ %.pre469, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114..noexc119_crit_edge ]
  %.pr.i234 = phi ptr [ null, %bb.aj ], [ %i.eu, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i114..noexc119_crit_edge ] ; 10 uses
  store ptr %.pr.i234, ptr %18, align 8, !tbaa !78
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr %.pr.i234, ptr %i.ex, align 8, !tbaa !106
  %i.ey = getelementptr inbounds nuw i8, ptr %.pr.i234, i64 %i.es
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !107
  %i.fa = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ew, ptr %i.ev, ptr noundef %.pr.i234)
          to label %.noexc127 unwind label %bb.al ; 3 uses

bb.al:                                            ; preds = %.noexc119
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %.pr.i234, null
  br i1 %.not.i.i.i115, label %.body120, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i234, i64 noundef %i.es) #32
  br label %.body120

.noexc127:                                        ; preds = %.noexc119
  store ptr %i.fa, ptr %i.ex, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.fc = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc136 unwind label %bb.an ; 3 uses

bb.an:                                            ; preds = %.noexc127
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body128

.noexc136:                                        ; preds = %.noexc127
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.ff = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ap unwind label %bb.ao     ; 3 uses

bb.ao:                                            ; preds = %.noexc136
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.ap:                                            ; preds = %.noexc136
  %i.fh = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !59
  %i.fi = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.fj = load ptr, ptr %7, align 16, !tbaa !57   ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %.not.i.i.i.i140 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i140, label %.noexc146, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = icmp ugt i64 %i.fm, 9223372036854775776
  br i1 %i.fn, label %.noexc.i.i144, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141, !prof !62

.noexc.i.i144:                                    ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc145 unwind label %bb.ch

.noexc145:                                        ; preds = %.noexc.i.i144
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141: ; preds = %bb.aq
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141..noexc146_crit_edge unwind label %bb.ch

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141..noexc146_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141
  %.pre471 = load ptr, ptr %7, align 16, !tbaa !79
  %.pre472 = load ptr, ptr %i.r, align 8, !tbaa !79
  br label %.noexc146

.noexc146:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141..noexc146_crit_edge, %bb.ap
  %i.fp = phi ptr [ %i.fi, %bb.ap ], [ %.pre472, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141..noexc146_crit_edge ]
  %i.fq = phi ptr [ %i.fj, %bb.ap ], [ %.pre471, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141..noexc146_crit_edge ]
  %.pr.i198 = phi ptr [ null, %bb.ap ], [ %i.fo, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i141..noexc146_crit_edge ] ; 10 uses
  store ptr %.pr.i198, ptr %21, align 8, !tbaa !57
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr %.pr.i198, ptr %i.fr, align 8, !tbaa !59
  %i.fs = getelementptr inbounds nuw i8, ptr %.pr.i198, i64 %i.fm
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !58
  %i.fu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.fq, ptr %i.fp, ptr noundef %.pr.i198)
          to label %bb.at unwind label %bb.ar     ; 3 uses

bb.ar:                                            ; preds = %.noexc146
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %.pr.i198, null
  br i1 %.not.i.i.i142, label %.body147, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i198, i64 noundef %i.fm) #32
  br label %.body147

bb.at:                                            ; preds = %.noexc146
  store ptr %i.fu, ptr %i.fr, align 8, !tbaa !59
  %i.fw = load ptr, ptr %i.aw, align 8, !tbaa !59 ; 3 uses
  %i.fx = load ptr, ptr %8, align 16, !tbaa !57   ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %.not.i.i.i.i150 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i.i.i.i150, label %.noexc156, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp ugt i64 %i.ga, 9223372036854775776
  br i1 %i.gb, label %.noexc.i.i154, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151, !prof !62

.noexc.i.i154:                                    ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc155 unwind label %bb.ci

.noexc155:                                        ; preds = %.noexc.i.i154
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151: ; preds = %bb.au
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #33
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151..noexc156_crit_edge unwind label %bb.ci

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151..noexc156_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151
  %.pre473 = load ptr, ptr %8, align 16, !tbaa !79
  %.pre474 = load ptr, ptr %i.aw, align 8, !tbaa !79
  br label %.noexc156

.noexc156:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151..noexc156_crit_edge, %bb.at
  %i.gd = phi ptr [ %i.fw, %bb.at ], [ %.pre474, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151..noexc156_crit_edge ]
  %i.ge = phi ptr [ %i.fx, %bb.at ], [ %.pre473, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151..noexc156_crit_edge ]
  %.pr.i185 = phi ptr [ null, %bb.at ], [ %i.gc, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i151..noexc156_crit_edge ] ; 10 uses
  store ptr %.pr.i185, ptr %22, align 8, !tbaa !57
  %i.gf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %.pr.i185, ptr %i.gf, align 8, !tbaa !59
  %i.gg = getelementptr inbounds nuw i8, ptr %.pr.i185, i64 %i.ga
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !58
  %i.gi = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ge, ptr %i.gd, ptr noundef %.pr.i185)
          to label %bb.ax unwind label %bb.av     ; 3 uses

bb.av:                                            ; preds = %.noexc156
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %.pr.i185, null
  br i1 %.not.i.i.i152, label %.body157, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i185, i64 noundef %i.ga) #32
  br label %.body157

bb.ax:                                            ; preds = %.noexc156
  store ptr %i.gi, ptr %i.gf, align 8, !tbaa !59
  %i.gk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.gk, ptr %23, align 8, !tbaa !30
  %i.gl = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.gn, ptr %i.c, align 8, !tbaa !32
  %i.go = icmp ugt i64 %i.gn, 15
  br i1 %i.go, label %.noexc.i161, label %._crit_edge.i.i160

.noexc.i161:                                      ; preds = %bb.ax
  %i.gp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc162 unwind label %bb.cj ; 2 uses

.noexc162:                                        ; preds = %.noexc.i161
  store ptr %i.gp, ptr %23, align 8, !tbaa !34
  %i.gq = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.gq, ptr %i.gk, align 8, !tbaa !35
  br label %._crit_edge.i.i160

._crit_edge.i.i160:                               ; preds = %.noexc162, %bb.ax
  %i.gr = phi ptr [ %i.gp, %.noexc162 ], [ %i.gk, %bb.ax ] ; 2 uses
  switch i64 %i.gn, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %bb.ba
end_hunk_14
begin_hunk_15_@_Z11print_elems11PauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.d:                                             ; preds = %bb.b
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.16, align 8, !tbaa !115, !alias.scope !872
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

bb.f:                                             ; preds = %bb.d
  store i64 %i.h, ptr %.sroa.16, align 8, !tbaa !115, !alias.scope !872
  store i64 %i.g, ptr %.sroa.20, align 8, !tbaa !118, !alias.scope !872
  store i64 %i.h, ptr %.sroa.22, align 8, !tbaa !119, !alias.scope !872
  br label %_Z30getTruncatedMatrixQuadrantIndsxx.exit

_Z30getTruncatedMatrixQuadrantIndsxx.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0363.0 = phi i64 [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  %.sroa.12.0 = phi i64 [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.sroa.15.0 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sink36.i.sroa.phi = phi ptr [ %.sroa.24, %bb.f ], [ %.sroa.22, %bb.e ], [ %.sroa.20, %bb.c ], [ %.sroa.16, %bb.a ]
  %.sink.i = phi i64 [ %i.g, %bb.f ], [ 1, %bb.e ], [ %i.g, %bb.c ], [ 1, %bb.a ]
  store i64 %.sink.i, ptr %.sink36.i.sroa.phi, align 8, !tbaa !25, !alias.scope !872
  store i64 %.sroa.0363.0, ptr %6, align 8, !tbaa !25
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !25
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !25
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.16.0..sroa.16.0..sroa.16.0..sroa.16.0.copyload = load i64, ptr %.sroa.16, align 8, !tbaa !25
  store i64 %.sroa.16.0..sroa.16.0..sroa.16.0..sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !25
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload = load i64, ptr %.sroa.20, align 8, !tbaa !25
  store i64 %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !25
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload = load i64, ptr %.sroa.22, align 8, !tbaa !25
  store i64 %.sroa.22.0..sroa.22.0..sroa.22.0..sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload = load i64, ptr %.sroa.24, align 8, !tbaa !25
  store i64 %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.l, ptr %.sroa.25.0..sroa_idx379, align 8, !tbaa !25
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.m, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !25
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @_Z23allocateMatrixQuadrants18MatrixQuadrantIndsRSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES7_S7_S7_(ptr noundef nonnull byval(%struct.MatrixQuadrantInds) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %.sroa.2416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2416.0.copyload = load ptr, ptr %.sroa.2416.0..sroa_idx, align 8, !tbaa !109 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106  ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 24                  ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.s, 24
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.t, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ae, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.v = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %.09.i.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.09.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !110
  %i.z = or disjoint i64 %.09.i.i, 1              ; 2 uses
  %i.aa = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %i.z
  %i.ab = load ptr, ptr %2, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.z
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !110
  %i.ae = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !9

_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ae, %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod559 = trunc i64 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod559)
  %i.af = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %.09.i.i.epil.init
  %i.ag = load ptr, ptr %2, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.09.i.i.epil.init
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !110
  br label %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i

_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i: ; preds = %.epil.preheader, %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i.loopexit.unr-lcssa, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i2.i, label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = sdiv exact i64 %i.ao, 24                ; 3 uses
  %i.aq = getelementptr [16 x i8], ptr %.sroa.2416.0.copyload, i64 %i.m ; 3 uses
  %xtraiter561 = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.ao, 24
  br i1 %i.ar, label %.epil.preheader560, label %.lr.ph.i3.i.new

.lr.ph.i3.i.new:                                  ; preds = %.lr.ph.i3.i
  %unroll_iter564 = and i64 %i.ap, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i3.i.new
  %.09.i4.i = phi i64 [ 0, %.lr.ph.i3.i.new ], [ %i.bb, %bb.i ] ; 4 uses
  %niter565 = phi i64 [ 0, %.lr.ph.i3.i.new ], [ %niter565.next.1, %bb.i ]
  %i.as = getelementptr [16 x i8], ptr %i.aq, i64 %.09.i4.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.09.i4.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !110
  %i.aw = or disjoint i64 %.09.i4.i, 1            ; 2 uses
  %i.ax = getelementptr [16 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load ptr, ptr %4, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !110
  %i.bb = add nuw i64 %.09.i4.i, 2                ; 2 uses
  %niter565.next.1 = add i64 %niter565, 2         ; 2 uses
  %niter565.ncmp.1 = icmp eq i64 %niter565.next.1, %unroll_iter564
  br i1 %niter565.ncmp.1, label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !9

_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit, label %.epil.preheader560

.epil.preheader560:                               ; preds = %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa, %.lr.ph.i3.i
  %.09.i4.i.epil.init = phi i64 [ 0, %.lr.ph.i3.i ], [ %i.bb, %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod563 = trunc i64 %i.ap to i1
  call void @llvm.assume(i1 %lcmp.mod563)
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %.09.i4.i.epil.init
  %i.bd = load ptr, ptr %4, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.09.i4.i.epil.init
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !110
  br label %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit

_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit: ; preds = %.epil.preheader560, %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit.loopexit.unr-lcssa, %_Z29populateSingleColumnQcompmatrRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEx11PauliStrSum.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !873 ; 2 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.bj = load ptr, ptr %2, align 8, !tbaa !78
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %i.bo = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauliP8PauliStrx(ptr noundef %i.bh, i64 noundef %i.bn)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit
  %i.bp = add nsw i32 %i.bo, 1
  %i.bq = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.m
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24
  %i.by = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauliP8PauliStrx(ptr noundef %i.bt, i64 noundef %i.bx)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bz = add nsw i32 %i.by, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.ca = phi i32 [ %i.bz, %bb.l ], [ 0, %bb.j ]
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.ca) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !106 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24                ; 7 uses
  %i.ch = icmp ugt i64 %i.cg, 288230376151711743
  br i1 %i.ch, label %bb.n, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit418

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.ci = shl nuw nsw i64 %i.cg, 5
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #33
          to label %.noexc50 unwind label %bb.s   ; 4 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.cj, ptr %7, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !58
  %xtraiter566 = and i64 %i.cg, 3                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc50, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %i.cj, %.noexc50 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc50 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc50 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.cm, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !36
  store i8 0, ptr %i.cm, align 8, !tbaa !35
  %i.co = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter566
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !864

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc50
  %.lcssa558.unr = phi ptr [ poison, %.noexc50 ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.cj, %.noexc50 ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc50 ], [ %i.co, %.lr.ph.i.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %i.cg, 4
  br i1 %i.cq, label %.loopexit418, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.cr, ptr %.08.i.i.i.i.i, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !36
  store i8 0, ptr %i.cr, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.cv, align 8, !tbaa !36
  store i8 0, ptr %i.cu, align 8, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.cy, align 8, !tbaa !36
  store i8 0, ptr %i.cx, align 8, !tbaa !35
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.db, align 8, !tbaa !36
  store i8 0, ptr %i.da, align 8, !tbaa !35
  %i.dc = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit418, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit418:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa558.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.de, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 24                ; 7 uses
  %i.dl = icmp ugt i64 %i.dk, 288230376151711743
  br i1 %i.dl, label %bb.o, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51

bb.o:                                             ; preds = %.loopexit418
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc60 unwind label %bb.t

.noexc60:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51: ; preds = %.loopexit418
  %.not.i.i.i.i52 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i52, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51
  %i.dm = shl nuw nsw i64 %i.dk, 5
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #33
          to label %.noexc61 unwind label %bb.t   ; 4 uses

.noexc61:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53
  store ptr %i.dn, ptr %8, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !58
  %xtraiter568 = and i64 %i.dk, 3                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i54.prol:                          ; preds = %.noexc61, %.lr.ph.i.i.i.i.i54.prol
  %.08.i.i.i.i.i55.prol = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ], [ %i.dn, %.noexc61 ] ; 4 uses
  %.057.i.i.i.i.i56.prol = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i54.prol ], [ %i.dk, %.noexc61 ]
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i.i.i.i.i54.prol ], [ 0, %.noexc61 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 16 ; 2 uses
  store ptr %i.dq, ptr %.08.i.i.i.i.i55.prol, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 8
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  store i8 0, ptr %i.dq, align 8, !tbaa !35
  %i.ds = add i64 %.057.i.i.i.i.i56.prol, -1      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 32 ; 3 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i54.prol, !llvm.loop !865

.lr.ph.i.i.i.i.i54.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i54.prol, %.noexc61
  %.lcssa.unr = phi ptr [ poison, %.noexc61 ], [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ]
  %.08.i.i.i.i.i55.unr = phi ptr [ %i.dn, %.noexc61 ], [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ]
  %.057.i.i.i.i.i56.unr = phi i64 [ %i.dk, %.noexc61 ], [ %i.ds, %.lr.ph.i.i.i.i.i54.prol ]
  %i.du = icmp ult i64 %i.dk, 4
  br i1 %i.du, label %.loopexit, label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i54
  %.08.i.i.i.i.i55 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i54 ], [ %.08.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i54.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i56 = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i54 ], [ %.057.i.i.i.i.i56.unr, %.lr.ph.i.i.i.i.i54.prol.loopexit ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 16 ; 2 uses
  store ptr %i.dv, ptr %.08.i.i.i.i.i55, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 8
  store i64 0, ptr %i.dw, align 8, !tbaa !36
  store i8 0, ptr %i.dv, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 48 ; 2 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 40
  store i64 0, ptr %i.dz, align 8, !tbaa !36
  store i8 0, ptr %i.dy, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 80 ; 2 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 72
  store i64 0, ptr %i.ec, align 8, !tbaa !36
  store i8 0, ptr %i.eb, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 112 ; 2 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 104
  store i64 0, ptr %i.ef, align 8, !tbaa !36
  store i8 0, ptr %i.ee, align 8, !tbaa !35
  %i.eg = add i64 %.057.i.i.i.i.i56, -4           ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 128 ; 2 uses
  %.not.i.i.i.i.i57.3 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i.i57.3, label %.loopexit, label %.lr.ph.i.i.i.i.i54, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i54, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59
  %.0.lcssa.i.i.i.i.i58 = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i54.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i.i.i54 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i58, ptr %i.ei, align 8, !tbaa !59
  %i.ej = icmp sgt i64 %.sroa.0363.0, 0
  br i1 %i.ej, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.loopexit
  %i.ek = icmp eq i32 %.sroa.speculated, 0
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.en = load ptr, ptr %i.bg, align 8, !tbaa !873
  br label %bb.u

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  %i.eo = icmp sgt i64 %.sroa.12.0, 0
  br i1 %i.eo, label %.lr.ph422, label %._crit_edge

.lr.ph422:                                        ; preds = %.preheader
  %i.ep = icmp eq i32 %.sroa.speculated, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.es = load ptr, ptr %i.bg, align 8, !tbaa !873
  %invariant.gep = getelementptr [16 x i8], ptr %i.es, i64 %i.m
  br label %bb.aj

bb.p:                                             ; preds = %_Z30getTruncatedMatrixQuadrantIndsxx.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.q:                                             ; preds = %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.r:                                             ; preds = %bb.k
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.s:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.n
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.t:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53, %bb.o
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.u:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.031420 = phi i64 [ 0, %.lr.ph ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.031420 ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.ey, align 8, !tbaa !25 ; 3 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ez = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr(i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload)
          to label %.noexc63 unwind label %bb.af

.noexc63:                                         ; preds = %bb.v
  %i.fa = add nsw i32 %i.ez, 1
  br label %bb.w

bb.w:                                             ; preds = %.noexc63, %bb.u
  %.0.i = phi i32 [ %i.fa, %.noexc63 ], [ %.sroa.speculated, %bb.u ] ; 2 uses
  %i.fb = load i32, ptr @global_pauliStrFormatFlag, align 4, !tbaa !26, !noalias !874
  switch i32 %i.fb, label %.noexc.i.i [
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  invoke void @_Z28getPauliStrAsAllQubitsStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, i32 noundef %.0.i)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit unwind label %bb.af

bb.y:                                             ; preds = %bb.w
  invoke void @_Z24getPauliStrAsIndexStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, i32 noundef %.0.i)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit unwind label %bb.af

.noexc.i.i:                                       ; preds = %bb.w
  store ptr %i.el, ptr %9, align 8, !tbaa !30, !alias.scope !874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29, !noalias !874
  store i64 60, ptr %i.d, align 8, !tbaa !32, !noalias !874
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc66 unwind label %bb.af  ; 3 uses

.noexc66:                                         ; preds = %.noexc.i.i
  store ptr %i.fc, ptr %9, align 8, !tbaa !34, !alias.scope !874
  %i.fd = load i64, ptr %i.d, align 8, !tbaa !32, !noalias !874 ; 3 uses
  store i64 %i.fd, ptr %i.el, align 8, !tbaa !35, !alias.scope !874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.fc, ptr noundef nonnull align 1 dereferenceable(60) @.str.79, i64 60, i1 false)
  store i64 %i.fd, ptr %i.em, align 8, !tbaa !36, !alias.scope !874
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  store i8 0, ptr %i.fe, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29, !noalias !874
  br label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit

_Z19getPauliStrAsStringB5cxx118PauliStri.exit:    ; preds = %.noexc66, %bb.x, %bb.y
  %i.ff = load ptr, ptr %7, align 8, !tbaa !57
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.031420 ; 9 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !34 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 4 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  %i.fk = load ptr, ptr %9, align 8, !tbaa !34    ; 6 uses
  %i.fl = icmp eq ptr %i.fk, %i.el                ; 2 uses
  br i1 %i.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit
  br i1 %i.fl, label %bb.z, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit
  br i1 %i.fl, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fm = load i64, ptr %i.em, align 8, !tbaa !36 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 16
  call void @llvm.assume(i1 %i.fn)
  %.not21.i = icmp eq ptr %9, %i.fg
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.aa, !prof !62

bb.aa:                                            ; preds = %bb.z
  switch i64 %i.fm, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !35
  store i8 %i.fo, ptr %i.fh, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fp = load i64, ptr %i.em, align 8, !tbaa !36 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !36
  %i.fr = load ptr, ptr %i.fg, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !34
  %i.fu = load i64, ptr %i.em, align 8, !tbaa !36
  store i64 %i.fu, ptr %i.ft, align 8, !tbaa !36
  %i.fv = load i64, ptr %i.el, align 8, !tbaa !35
  store i64 %i.fv, ptr %i.fi, align 8, !tbaa !35
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fw = load i64, ptr %i.fi, align 8, !tbaa !35
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !34
  %i.fx = load i64, ptr %i.em, align 8, !tbaa !36
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !36
  %i.fz = load i64, ptr %i.el, align 8, !tbaa !35
  store i64 %i.fz, ptr %i.fi, align 8, !tbaa !35
  %.not.i67 = icmp eq ptr %i.fh, null
  br i1 %.not.i67, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fh, ptr %9, align 8, !tbaa !34
  store i64 %i.fw, ptr %i.el, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.el, ptr %9, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ad, %bb.ae
  %i.ga = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fh, %bb.ad ], [ %i.el, %bb.ae ], [ %i.fk, %bb.z ]
  store i64 0, ptr %i.em, align 8, !tbaa !36
  store i8 0, ptr %i.ga, align 1, !tbaa !35
  %i.gb = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.el
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gd = load i64, ptr %i.el, align 8, !tbaa !35
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.gf = add nuw nsw i64 %.031420, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %.sroa.0363.0
  br i1 %exitcond.not, label %.preheader, label %bb.u, !llvm.loop !868

bb.af:                                            ; preds = %.noexc.i.i, %bb.y, %bb.x, %bb.v
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.db

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.gh = load ptr, ptr %i.n, align 8, !tbaa !106 ; 3 uses
  %i.gi = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i68 = icmp eq ptr %i.gh, %i.gi
  br i1 %.not.i.i.i.i68, label %.noexc71, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %23 = sdiv exact i64 %i.gl, 24
  %i.gm = icmp ugt i64 %23, 384307168202282325
  br i1 %i.gm, label %.noexc.i.i69, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i69:                                     ; preds = %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc70 unwind label %bb.cs

.noexc70:                                         ; preds = %.noexc.i.i69
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ag
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge unwind label %bb.cs

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre425 = load ptr, ptr %i.n, align 8, !tbaa !68
  br label %.noexc71

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge, %._crit_edge
  %i.go = phi ptr [ %i.gh, %._crit_edge ], [ %.pre425, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ]
  %i.gp = phi ptr [ %i.gi, %._crit_edge ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ]
  %.pr.i254 = phi ptr [ null, %._crit_edge ], [ %i.gn, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ] ; 10 uses
  store ptr %.pr.i254, ptr %12, align 8, !tbaa !78
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i254, ptr %i.gq, align 8, !tbaa !106
  %i.gr = getelementptr inbounds nuw i8, ptr %.pr.i254, i64 %i.gl
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !107
  %i.gt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.gp, ptr %i.go, ptr noundef %.pr.i254)
          to label %bb.av unwind label %bb.ah     ; 3 uses

bb.ah:                                            ; preds = %.noexc71
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i254, null
  br i1 %.not.i.i.i, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i254, i64 noundef %i.gl) #32
  br label %.body

bb.aj:                                            ; preds = %.lr.ph422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.030421 = phi i64 [ 0, %.lr.ph422 ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.030421 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %gep, align 8, !tbaa !25 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  br i1 %i.ep, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gv = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %.noexc74 unwind label %bb.au

.noexc74:                                         ; preds = %bb.ak
  %i.gw = add nsw i32 %i.gv, 1
  br label %bb.al

bb.al:                                            ; preds = %.noexc74, %bb.aj
  %.0.i72 = phi i32 [ %i.gw, %.noexc74 ], [ %.sroa.speculated, %bb.aj ] ; 2 uses
  %i.gx = load i32, ptr @global_pauliStrFormatFlag, align 4, !tbaa !26, !noalias !875
  switch i32 %i.gx, label %.noexc.i.i73 [
    i32 0, label %bb.am
    i32 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  invoke void @_Z28getPauliStrAsAllQubitsStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.0.i72)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78 unwind label %bb.au

bb.an:                                            ; preds = %bb.al
  invoke void @_Z24getPauliStrAsIndexStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.0.i72)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78 unwind label %bb.au

.noexc.i.i73:                                     ; preds = %bb.al
  store ptr %i.eq, ptr %10, align 8, !tbaa !30, !alias.scope !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !875
  store i64 60, ptr %i.c, align 8, !tbaa !32, !noalias !875
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc77 unwind label %bb.au  ; 3 uses

.noexc77:                                         ; preds = %.noexc.i.i73
  store ptr %i.gy, ptr %10, align 8, !tbaa !34, !alias.scope !875
  %i.gz = load i64, ptr %i.c, align 8, !tbaa !32, !noalias !875 ; 3 uses
  store i64 %i.gz, ptr %i.eq, align 8, !tbaa !35, !alias.scope !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.gy, ptr noundef nonnull align 1 dereferenceable(60) @.str.79, i64 60, i1 false)
  store i64 %i.gz, ptr %i.er, align 8, !tbaa !36, !alias.scope !875
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  store i8 0, ptr %i.ha, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29, !noalias !875
  br label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78

_Z19getPauliStrAsStringB5cxx118PauliStri.exit78:  ; preds = %.noexc77, %bb.am, %bb.an
  %i.hb = load ptr, ptr %8, align 8, !tbaa !57
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %.030421 ; 9 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !34 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 4 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  %i.hg = load ptr, ptr %10, align 8, !tbaa !34   ; 6 uses
  %i.hh = icmp eq ptr %i.hg, %i.eq                ; 2 uses
  br i1 %i.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78
  br i1 %i.hh, label %bb.ao, label %.thread.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78
  br i1 %i.hh, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85
  %i.hi = load i64, ptr %i.er, align 8, !tbaa !36 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  %.not21.i82 = icmp eq ptr %10, %i.hc
  br i1 %.not21.i82, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87, label %bb.ap, !prof !62

bb.ap:                                            ; preds = %bb.ao
  switch i64 %i.hi, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !35
  store i8 %i.hk, ptr %i.hd, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.hg, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hl = load i64, ptr %i.er, align 8, !tbaa !36 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !36
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !34
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hl
  store i8 0, ptr %i.ho, align 1, !tbaa !35
  %.pre.i84 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

.thread.i86:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.hg, ptr %i.hc, align 8, !tbaa !34
  %i.hq = load i64, ptr %i.er, align 8, !tbaa !36
  store i64 %i.hq, ptr %i.hp, align 8, !tbaa !36
  %i.hr = load i64, ptr %i.eq, align 8, !tbaa !35
  store i64 %i.hr, ptr %i.he, align 8, !tbaa !35
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79
  %i.hs = load i64, ptr %i.he, align 8, !tbaa !35
  store ptr %i.hg, ptr %i.hc, align 8, !tbaa !34
  %i.ht = load i64, ptr %i.er, align 8, !tbaa !36
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !36
  %i.hv = load i64, ptr %i.eq, align 8, !tbaa !35
  store i64 %i.hv, ptr %i.he, align 8, !tbaa !35
  %.not.i81 = icmp eq ptr %i.hd, null
  br i1 %.not.i81, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80
  store ptr %i.hd, ptr %10, align 8, !tbaa !34
  store i64 %i.hs, ptr %i.eq, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80, %.thread.i86
  store ptr %i.eq, ptr %10, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83, %bb.as, %bb.at
  %i.hw = phi ptr [ %.pre.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83 ], [ %i.hd, %bb.as ], [ %i.eq, %bb.at ], [ %i.hg, %bb.ao ]
  store i64 0, ptr %i.er, align 8, !tbaa !36
  store i8 0, ptr %i.hw, align 1, !tbaa !35
  %i.hx = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.eq
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87
  %i.hz = load i64, ptr %i.eq, align 8, !tbaa !35
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ib = add nuw nsw i64 %.030421, 1             ; 2 uses
  %exitcond424.not = icmp eq i64 %i.ib, %.sroa.12.0
  br i1 %exitcond424.not, label %._crit_edge, label %bb.aj, !llvm.loop !871

bb.au:                                            ; preds = %.noexc.i.i73, %bb.an, %bb.am, %bb.ak
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.db

bb.av:                                            ; preds = %.noexc71
  store ptr %i.gt, ptr %i.gq, align 8, !tbaa !106
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !106 ; 3 uses
  %i.if = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i91 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i.i.i.i91, label %.noexc97, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %24 = sdiv exact i64 %i.ii, 24
  %i.ij = icmp ugt i64 %24, 384307168202282325
  br i1 %i.ij, label %.noexc.i.i95, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92, !prof !62

.noexc.i.i95:                                     ; preds = %bb.aw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc96 unwind label %bb.ct

.noexc96:                                         ; preds = %.noexc.i.i95
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92: ; preds = %bb.aw
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge unwind label %bb.ct

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92
  %.pre426 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre427 = load ptr, ptr %i.id, align 8, !tbaa !68
  br label %.noexc97

.noexc97:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge, %bb.av
  %i.il = phi ptr [ %i.ie, %bb.av ], [ %.pre427, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge ]
  %i.im = phi ptr [ %i.if, %bb.av ], [ %.pre426, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge ]
  %.pr.i242 = phi ptr [ null, %bb.av ], [ %i.ik, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge ] ; 10 uses
  store ptr %.pr.i242, ptr %13, align 8, !tbaa !78
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i242, ptr %i.in, align 8, !tbaa !106
  %i.io = getelementptr inbounds nuw i8, ptr %.pr.i242, i64 %i.ii
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !107
  %i.iq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.im, ptr %i.il, ptr noundef %.pr.i242)
          to label %bb.az unwind label %bb.ax     ; 3 uses

bb.ax:                                            ; preds = %.noexc97
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.pr.i242, null
  br i1 %.not.i.i.i93, label %.body98, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i242, i64 noundef %i.ii) #32
  br label %.body98

bb.az:                                            ; preds = %.noexc97
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !106
  %i.is = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 3 uses
  %i.it = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i101 = icmp eq ptr %i.is, %i.it
  br i1 %.not.i.i.i.i101, label %.noexc107, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %25 = sdiv exact i64 %i.iw, 24
  %i.ix = icmp ugt i64 %25, 384307168202282325
  br i1 %i.ix, label %.noexc.i.i105, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102, !prof !62

.noexc.i.i105:                                    ; preds = %bb.ba
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc106 unwind label %bb.cu

.noexc106:                                        ; preds = %.noexc.i.i105
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102: ; preds = %bb.ba
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge unwind label %bb.cu

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102
  %.pre428 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre429 = load ptr, ptr %i.aj, align 8, !tbaa !68
  br label %.noexc107

.noexc107:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge, %bb.az
  %i.iz = phi ptr [ %i.is, %bb.az ], [ %.pre429, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge ]
  %i.ja = phi ptr [ %i.it, %bb.az ], [ %.pre428, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge ]
  %.pr.i230 = phi ptr [ null, %bb.az ], [ %i.iy, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge ] ; 10 uses
  store ptr %.pr.i230, ptr %14, align 8, !tbaa !78
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i230, ptr %i.jb, align 8, !tbaa !106
  %i.jc = getelementptr inbounds nuw i8, ptr %.pr.i230, i64 %i.iw
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !107
  %i.je = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ja, ptr %i.iz, ptr noundef %.pr.i230)
          to label %bb.bd unwind label %bb.bb     ; 3 uses

bb.bb:                                            ; preds = %.noexc107
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i.i103, label %.body108, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i230, i64 noundef %i.iw) #32
  br label %.body108

bb.bd:                                            ; preds = %.noexc107
  store ptr %i.je, ptr %i.jb, align 8, !tbaa !106
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !106 ; 3 uses
  %i.ji = load ptr, ptr %5, align 8, !tbaa !78    ; 3 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i111 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i.i.i111, label %.noexc117, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %26 = sdiv exact i64 %i.jl, 24
  %i.jm = icmp ugt i64 %26, 384307168202282325
  br i1 %i.jm, label %.noexc.i.i115, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112, !prof !62

.noexc.i.i115:                                    ; preds = %bb.be
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc116 unwind label %bb.cv

.noexc116:                                        ; preds = %.noexc.i.i115
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112: ; preds = %bb.be
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112..noexc117_crit_edge unwind label %bb.cv

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112..noexc117_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112
  %.pre430 = load ptr, ptr %5, align 8, !tbaa !68
  %.pre431 = load ptr, ptr %i.jg, align 8, !tbaa !68
  br label %.noexc117

.noexc117:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112..noexc117_crit_edge, %bb.bd
  %i.jo = phi ptr [ %i.jh, %bb.bd ], [ %.pre431, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112..noexc117_crit_edge ]
  %i.jp = phi ptr [ %i.ji, %bb.bd ], [ %.pre430, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112..noexc117_crit_edge ]
  %.pr.i220 = phi ptr [ null, %bb.bd ], [ %i.jn, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i112..noexc117_crit_edge ] ; 10 uses
  store ptr %.pr.i220, ptr %15, align 8, !tbaa !78
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.pr.i220, ptr %i.jq, align 8, !tbaa !106
  %i.jr = getelementptr inbounds nuw i8, ptr %.pr.i220, i64 %i.jl
  %i.js = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !107
  %i.jt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.jp, ptr %i.jo, ptr noundef %.pr.i220)
          to label %.noexc125 unwind label %bb.bf ; 3 uses

bb.bf:                                            ; preds = %.noexc117
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %.pr.i220, null
  br i1 %.not.i.i.i113, label %.body118, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i220, i64 noundef %i.jl) #32
  br label %.body118

.noexc125:                                        ; preds = %.noexc117
  store ptr %i.jt, ptr %i.jq, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.jv = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc134 unwind label %bb.bh ; 3 uses

bb.bh:                                            ; preds = %.noexc125
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body126

.noexc134:                                        ; preds = %.noexc125
  %i.jx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.jv, ptr %i.jx, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.jy = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.bj unwind label %bb.bi     ; 3 uses

bb.bi:                                            ; preds = %.noexc134
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body135

bb.bj:                                            ; preds = %.noexc134
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.jy, ptr %i.ka, align 8, !tbaa !59
  %i.kb = load ptr, ptr %i.de, align 8, !tbaa !59 ; 4 uses
  %i.kc = load ptr, ptr %7, align 8, !tbaa !57    ; 6 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.kf = sub i64 %i.kd, %i.ke                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i138 = icmp eq ptr %i.kb, %i.kc     ; 2 uses
  br i1 %.not.i.i.i.i138, label %.noexc144, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kg = icmp ugt i64 %i.kf, 9223372036854775776
  br i1 %i.kg, label %.noexc.i.i142, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i139, !prof !62

.noexc.i.i142:                                    ; preds = %bb.bk
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc143 unwind label %bb.cw

.noexc143:                                        ; preds = %.noexc.i.i142
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i139: ; preds = %bb.bk
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #33
          to label %.noexc144 unwind label %bb.cw

.noexc144:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i139, %bb.bj
  %.pr.i184 = phi ptr [ null, %bb.bj ], [ %i.kh, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i139 ] ; 10 uses
  store ptr %.pr.i184, ptr %18, align 8, !tbaa !57
  %i.ki = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr %.pr.i184, ptr %i.ki, align 8, !tbaa !59
  %i.kj = getelementptr inbounds nuw i8, ptr %.pr.i184, i64 %i.kf
  %i.kk = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !58
  %i.kl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.kc, ptr %i.kb, ptr noundef %.pr.i184)
          to label %bb.bn unwind label %bb.bl     ; 3 uses

bb.bl:                                            ; preds = %.noexc144
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %.pr.i184, null
  br i1 %.not.i.i.i140, label %.body145, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i184, i64 noundef %i.kf) #32
  br label %.body145

bb.bn:                                            ; preds = %.noexc144
  store ptr %i.kl, ptr %i.ki, align 8, !tbaa !59
  %i.kn = load ptr, ptr %i.ei, align 8, !tbaa !59 ; 4 uses
  %i.ko = load ptr, ptr %8, align 8, !tbaa !57    ; 6 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64               ; 2 uses
  %i.kr = sub i64 %i.kp, %i.kq                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i148 = icmp eq ptr %i.kn, %i.ko     ; 2 uses
  br i1 %.not.i.i.i.i148, label %.noexc154, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ks = icmp ugt i64 %i.kr, 9223372036854775776
  br i1 %i.ks, label %.noexc.i.i152, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i149, !prof !62

.noexc.i.i152:                                    ; preds = %bb.bo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc153 unwind label %bb.cx

.noexc153:                                        ; preds = %.noexc.i.i152
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i149: ; preds = %bb.bo
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #33
          to label %.noexc154 unwind label %bb.cx

.noexc154:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i149, %bb.bn
  %.pr.i = phi ptr [ null, %bb.bn ], [ %i.kt, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i149 ] ; 10 uses
  store ptr %.pr.i, ptr %19, align 8, !tbaa !57
  %i.ku = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr %.pr.i, ptr %i.ku, align 8, !tbaa !59
  %i.kv = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.kr
  %i.kw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !58
  %i.kx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ko, ptr %i.kn, ptr noundef %.pr.i)
          to label %bb.br unwind label %bb.bp     ; 3 uses

bb.bp:                                            ; preds = %.noexc154
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i150, label %.body155, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.kr) #32
  br label %.body155

bb.br:                                            ; preds = %.noexc154
  store ptr %i.kx, ptr %i.ku, align 8, !tbaa !59
  %i.kz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.kz, ptr %20, align 8, !tbaa !30
  %i.la = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.lc, ptr %i.b, align 8, !tbaa !32
  %i.ld = icmp ugt i64 %i.lc, 15
  br i1 %i.ld, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.br
  %i.le = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc158 unwind label %bb.cy ; 2 uses

.noexc158:                                        ; preds = %.noexc.i
  store ptr %i.le, ptr %20, align 8, !tbaa !34
  %i.lf = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.lf, ptr %i.kz, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc158, %bb.br
  %i.lg = phi ptr [ %i.le, %.noexc158 ], [ %i.kz, %bb.br ] ; 2 uses
  switch i64 %i.lc, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %._crit_edge.i.i159
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i
  %i.lh = load i8, ptr %i.la, align 1, !tbaa !35
  store i8 %i.lh, ptr %i.lg, align 1, !tbaa !35
  br label %._crit_edge.i.i159

bb.bt:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lg, ptr align 1 %i.la, i64 %i.lc, i1 false)
  br label %._crit_edge.i.i159

._crit_edge.i.i159:                               ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i
  %i.li = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %20, i64 8
end_hunk_15
