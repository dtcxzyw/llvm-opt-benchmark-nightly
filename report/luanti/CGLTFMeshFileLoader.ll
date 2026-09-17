Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN10tiniergltf13MeshPrimitive10AttributesC2ERKN4Json5ValueE:bb.a
          cleanup
  br label %.body65

bb.j:                                             ; preds = %_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit, %bb.b
  %i.v = invoke noundef zeroext i1 @_ZNK4Json5Value8isMemberEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.158)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  br i1 %i.v, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.w = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.158)
          to label %bb.m unwind label %bb.q       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.x = invoke noundef zeroext i1 @_ZNK4Json5Value8isUInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %bb.m
  br i1 %i.x, label %_ZN10tiniergltfL5checkEb.exit3.i28, label %bb.n

bb.n:                                             ; preds = %.noexc29
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.71)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc30 unwind label %bb.q

.noexc30:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #30
  br label %.body65

_ZN10tiniergltfL5checkEb.exit3.i28:               ; preds = %.noexc29
  %i.aa = invoke noundef i64 @_ZNK4Json5Value8asUInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit34 unwind label %bb.q

_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit34:  ; preds = %_ZN10tiniergltfL5checkEb.exit3.i28
  store i64 %i.aa, ptr %i.b, align 8
  store i8 1, ptr %i.c, align 8
  br label %bb.r

bb.q:                                             ; preds = %_ZN10tiniergltfL5checkEb.exit3.i28, %bb.o, %bb.m, %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body65

bb.r:                                             ; preds = %_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit34, %bb.k
  %i.ac = invoke noundef zeroext i1 @_ZNK4Json5Value8isMemberEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.159)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %bb.r
  br i1 %i.ac, label %bb.t, label %._crit_edge.i.i

bb.t:                                             ; preds = %bb.s
  %i.ad = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.159)
          to label %bb.u unwind label %bb.y       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ae = invoke noundef zeroext i1 @_ZNK4Json5Value8isUInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %.noexc36 unwind label %bb.y

.noexc36:                                         ; preds = %bb.u
  br i1 %i.ae, label %_ZN10tiniergltfL5checkEb.exit3.i35, label %bb.v

bb.v:                                             ; preds = %.noexc36
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.71)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc37 unwind label %bb.y

.noexc37:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #30
  br label %.body65

_ZN10tiniergltfL5checkEb.exit3.i35:               ; preds = %.noexc36
  %i.ah = invoke noundef i64 @_ZNK4Json5Value8asUInt64Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit41 unwind label %bb.y

_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit41:  ; preds = %_ZN10tiniergltfL5checkEb.exit3.i35
  store i64 %i.ah, ptr %i.d, align 8
  store i8 1, ptr %i.e, align 8
  br label %._crit_edge.i.i

bb.y:                                             ; preds = %_ZN10tiniergltfL5checkEb.exit3.i35, %bb.w, %bb.u, %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body65

._crit_edge.i.i:                                  ; preds = %_ZN10tiniergltfL2asImEET_RKN4Json5ValueE.exit41, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !56
  store i64 4923084544520242516, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 8, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.al, align 8, !tbaa !60
  invoke void @_ZN10tiniergltf13MeshPrimitive15enumeratedPropsERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalISt6vectorImSaImEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aj
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !60
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aq, ptr %3, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aq, ptr noundef nonnull align 1 dereferenceable(5) @.str.161, i64 5, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.ar, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.as, align 1, !tbaa !60
  invoke void @_ZN10tiniergltf13MeshPrimitive15enumeratedPropsERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalISt6vectorImSaImEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aq
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.aa
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ax, ptr %4, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ax, ptr noundef nonnull align 1 dereferenceable(6) @.str.162, i64 6, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.ay, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.az, align 2, !tbaa !60
  invoke void @_ZN10tiniergltf13MeshPrimitive15enumeratedPropsERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalISt6vectorImSaImEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ba = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.ab
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !60
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.be, ptr noundef nonnull align 1 dereferenceable(7) @.str.163, i64 7, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.bf, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.bg, align 1, !tbaa !60
  invoke void @_ZN10tiniergltf13MeshPrimitive15enumeratedPropsERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalISt6vectorImSaImEEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bh = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.be
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ac
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !60
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bl = load i8, ptr %i.k, align 8, !tbaa !211, !range !80, !noundef !81 ; 2 uses
  %6 = trunc nuw i8 %i.bl to i1                   ; 2 uses
  %i.bm = load i8, ptr %i.m, align 8, !tbaa !211, !range !80, !noundef !81
  %7 = trunc nuw i8 %i.bm to i1                   ; 2 uses
  %8 = xor i1 %6, %7
  br i1 %8, label %bb.ad, label %_ZN10tiniergltfL5checkEb.exit

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.bn = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull @.str.71)
          to label %.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bn) #30
  br label %.body65

_ZN10tiniergltfL5checkEb.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  br i1 %6, label %bb.af, label %_ZN10tiniergltfL5checkEb.exit70

bb.af:                                            ; preds = %_ZN10tiniergltfL5checkEb.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !292
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !292
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !206
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp eq i64 %i.bu, %i.ca
  br i1 %i.cb, label %_ZN10tiniergltfL5checkEb.exit70, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull @.str.71)
          to label %.invoke unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cc) #30
  br label %.body65

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.aj
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ai
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !60
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body65

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aq
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.aj
  %i.cm = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body65

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ax
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ak
  %i.cr = load i64, ptr %i.ax, align 8, !tbaa !60
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body65

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.be
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.al
  %i.cw = load i64, ptr %i.be, align 8, !tbaa !60
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body65

_ZN10tiniergltfL5checkEb.exit70:                  ; preds = %bb.af, %_ZN10tiniergltfL5checkEb.exit
  %i.cy = load i8, ptr %i.a, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN10tiniergltfL5checkEb.exit86, label %bb.am

bb.am:                                            ; preds = %_ZN10tiniergltfL5checkEb.exit70
  %i.da = load i8, ptr %i.c, align 8, !tbaa !264, !range !80, !noundef !81
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZN10tiniergltfL5checkEb.exit86, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = load i8, ptr %i.e, align 8, !tbaa !264, !range !80, !noundef !81
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN10tiniergltfL5checkEb.exit86, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.de = load i8, ptr %i.g, align 8, !tbaa !211, !range !80, !noundef !81
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN10tiniergltfL5checkEb.exit86, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = load i8, ptr %i.i, align 8, !tbaa !211, !range !80, !noundef !81
  %i.dh = or i8 %i.dg, %i.bl
  %brmerge = icmp ne i8 %i.dh, 0
  %brmerge99 = or i1 %brmerge, %7
  br i1 %brmerge99, label %_ZN10tiniergltfL5checkEb.exit86, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull @.str.71)
          to label %.invoke unwind label %bb.ar

.invoke:                                          ; preds = %bb.aq, %bb.ag, %bb.ad
  %i.dj = phi ptr [ %i.cc, %bb.ag ], [ %i.bn, %bb.ad ], [ %i.di, %bb.aq ]
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.di) #30
  br label %.body65

_ZN10tiniergltfL5checkEb.exit86:                  ; preds = %bb.ap, %_ZN10tiniergltfL5checkEb.exit70, %bb.am, %bb.an, %bb.ao
  ret void

.body65:                                          ; preds = %bb.y, %bb.x, %bb.q, %bb.p, %bb.i, %bb.g, %bb.ae, %bb.h, %bb.ar, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn24 = phi { ptr, i32 } [ %i.dk, %bb.ar ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.z, %bb.p ], [ %i.r, %bb.g ], [ %i.bo, %bb.ae ], [ %i.cd, %bb.ah ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.ab, %bb.q ], [ %i.ai, %bb.y ], [ %i.ag, %bb.x ]
  call void @_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #30
  call void @_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #30
  call void @_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.h) #30
  call void @_ZNSt14_Optional_baseISt6vectorImSaImEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.f) #30
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapImN10tiniergltf13MeshPrimitive4ModeESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !809  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !175 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #31
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !807
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !806
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !807    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !806
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN10tiniergltf13MeshPrimitive4ModeEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10tiniergltf5asVecINS_13MeshPrimitive12MorphTargetsEEESt6vectorIT_SaIS4_EERKN4Json5ValueE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.296") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.tiniergltf::MeshPrimitive::MorphTargets", align 8 ; 13 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4Json5Value7isArrayEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.a, label %_ZN10tiniergltfL5checkEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.71)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %.pn.pn.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #30
  br label %common.resume

_ZN10tiniergltfL5checkEb.exit:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = invoke noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN10tiniergltfL5checkEb.exit
  %i.e = zext i32 %i.d to i64
  invoke void @_ZNSt6vectorIN10tiniergltf13MeshPrimitive12MorphTargetsESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %_ZN10tiniergltf13MeshPrimitive12MorphTargetsD2Ev.exit
  %.0 = phi i32 [ %i.ax, %_ZN10tiniergltf13MeshPrimitive12MorphTargetsD2Ev.exit ], [ 0, %.preheader ] ; 3 uses
  %i.n = invoke noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ult i32 %.0, %i.n
  br i1 %i.o, label %bb.j, label %bb.w

bb.h:                                             ; preds = %bb.e, %_ZN10tiniergltfL5checkEb.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.0)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN10tiniergltf13MeshPrimitive12MorphTargetsC2ERKN4Json5ValueE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_ZN10tiniergltfL2asINS_13MeshPrimitive12MorphTargetsEEET_RKN4Json5ValueE.exit unwind label %bb.t

_ZN10tiniergltfL2asINS_13MeshPrimitive12MorphTargetsEEET_RKN4Json5ValueE.exit: ; preds = %bb.k
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !586  ; 10 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !587
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN10tiniergltfL2asINS_13MeshPrimitive12MorphTargetsEEET_RKN4Json5ValueE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.s, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 48, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !211
  %i.v = load i8, ptr %i.h, align 8, !tbaa !211, !range !80, !noundef !81
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.m, label %_ZNSt8optionalISt6vectorImSaImEEEC2EOS3_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.y = load <2 x ptr>, ptr %i.i, align 8, !tbaa !415
  store <2 x ptr> %i.y, ptr %i.x, align 8, !tbaa !415
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !207
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !211
  br label %_ZNSt8optionalISt6vectorImSaImEEEC2EOS3_.exit.i.i.i

_ZNSt8optionalISt6vectorImSaImEEEC2EOS3_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !211
  %i.ac = load i8, ptr %i.k, align 8, !tbaa !211, !range !80, !noundef !81
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %_ZN10tiniergltf13MeshPrimitive12MorphTargetsC2EOS1_.exit.i.i

bb.n:                                             ; preds = %_ZNSt8optionalISt6vectorImSaImEEEC2EOS3_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.af = load <2 x ptr>, ptr %i.l, align 8, !tbaa !415
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !415
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !207
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ab, align 8, !tbaa !211
  br label %_ZN10tiniergltf13MeshPrimitive12MorphTargetsC2EOS1_.exit.i.i

_ZN10tiniergltf13MeshPrimitive12MorphTargetsC2EOS1_.exit.i.i: ; preds = %bb.n, %_ZNSt8optionalISt6vectorImSaImEEEC2EOS3_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !586
  br label %_ZNSt6vectorIN10tiniergltf13MeshPrimitive12MorphTargetsESaIS2_EE9push_backEOS2_.exit

bb.o:                                             ; preds = %_ZN10tiniergltfL2asINS_13MeshPrimitive12MorphTargetsEEET_RKN4Json5ValueE.exit
  invoke void @_ZNSt6vectorIN10tiniergltf13MeshPrimitive12MorphTargetsESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %_ZNSt6vectorIN10tiniergltf13MeshPrimitive12MorphTargetsESaIS2_EE9push_backEOS2_.exit unwind label %bb.u

_ZNSt6vectorIN10tiniergltf13MeshPrimitive12MorphTargetsESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN10tiniergltf13MeshPrimitive12MorphTargetsC2EOS1_.exit.i.i, %bb.o
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !211, !range !80, !noundef !81
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.k, align 8, !tbaa !211
end_hunk_0
