Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ConfigUtils?download=true
inline.NumInlined: 1159
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils12containsSRGBERKSt10shared_ptrIKNS_10ColorSpaceEE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %i.p, ptr %4, align 8, !tbaa !45
  store i32 1650946675, ptr %i.p, align 8
  store i64 4, ptr %i.q, align 8, !tbaa !46
  store i8 0, ptr %i.r, align 4, !tbaa !35
  %i.ae = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 4) #21
  %.not18.not = icmp ne i64 %i.ae, -1             ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.p
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %._crit_edge.i.i25
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !35
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %._crit_edge.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aj = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.n
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.al = load i64, ptr %i.n, align 8, !tbaa !35
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.an = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.m
  %or.cond = select i1 %.not18.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.loopexit: ; preds = %.noexc.i21
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ao = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ], [ %.not18.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  %i.ar = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.critedge
  %i.au = load i64, ptr %i.as, align 8, !tbaa !35
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ax) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !46
  store i8 0, ptr %i.c, align 8, !tbaa !35
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !45
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.f, ptr %i.b, align 8, !tbaa !47
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !34
  %i.i = load i64, ptr %i.b, align 8, !tbaa !47
  store i64 %i.i, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc.i11, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i11 ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i10
  %i.k = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.k, ptr %i.j, align 1, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i10
  %i.l = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !46
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !45
  %i.q = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.r, ptr %i.a, align 8, !tbaa !47
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.t, ptr %3, align 8, !tbaa !34
  %i.u = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.u, ptr %i.p, align 8, !tbaa !35
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc17 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i15
  %i.w = load i8, ptr %i.q, align 1, !tbaa !35
  store i8 %i.w, ptr %i.v, align 1, !tbaa !35
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !46
  %i.z = load ptr, ptr %3, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !34, !noalias !101 ; 7 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !101 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not6.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !35, !noalias !101 ; 3 uses
  %wide.load36 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !35, !noalias !101 ; 3 uses
  %i.af = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ag = add <16 x i8> %wide.load36, splat (i8 -65)
  %i.ah = icmp ult <16 x i8> %i.af, splat (i8 26)
  %i.ai = icmp ult <16 x i8> %i.ag, splat (i8 26)
  %i.aj = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ak = or disjoint <16 x i8> %wide.load36, splat (i8 32)
  %i.al = select <16 x i1> %i.ah, <16 x i8> %i.aj, <16 x i8> %wide.load
  %i.am = select <16 x i1> %i.ai, <16 x i8> %i.ak, <16 x i8> %wide.load36
  store <16 x i8> %i.al, ptr %next.gep, align 1, !tbaa !35, !noalias !101
  store <16 x i8> %i.am, ptr %i.ae, align 1, !tbaa !35, !noalias !101
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %4 = and i64 %i.ac, 24
  %5 = getelementptr i8, ptr %i.ab, i64 %n.vec
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.ac, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.ab, i64 %index38 ; 2 uses
  %wide.load40 = load <8 x i8>, ptr %next.gep39, align 1, !tbaa !35, !noalias !101 ; 3 uses
  %i.ao = add <8 x i8> %wide.load40, splat (i8 -65)
  %i.ap = icmp ult <8 x i8> %i.ao, splat (i8 26)
  %i.aq = or disjoint <8 x i8> %wide.load40, splat (i8 32)
  %i.ar = select <8 x i1> %i.ap, <8 x i8> %i.aq, <8 x i8> %wide.load40
  store <8 x i8> %i.ar, ptr %next.gep39, align 1, !tbaa !35, !noalias !101
  %index.next41 = add nuw i64 %index38, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next41, %n.vec37
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %6 = getelementptr i8, ptr %i.ab, i64 %n.vec37
  %cmp.n42 = icmp eq i64 %i.ac, %n.vec37
  br i1 %cmp.n42, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.at = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !35, !noalias !101 ; 3 uses
  %i.au = add i8 %i.at, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.au, 26
  %i.av = or disjoint i8 %i.at, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.av, i8 %i.at
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !35, !noalias !101
  %i.aw = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.ad
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !100

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !34, !noalias !101
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.h
  %i.ax = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !45, !alias.scope !101
  %i.az = icmp eq ptr %i.ax, %i.p
  br i1 %i.az, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.ba = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !101 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.ax, ptr %0, align 8, !tbaa !34, !alias.scope !101
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !101
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !35, !alias.scope !101
  %.pre4.i = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.be = phi i64 [ %i.ba, %bb.i ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !46, !alias.scope !101
  store ptr %i.p, ptr %3, align 8, !tbaa !34, !noalias !101
  store i64 0, ptr %i.y, align 8, !tbaa !46, !noalias !101
  store i8 0, ptr %i.p, align 8, !tbaa !35, !noalias !101
  %i.bg = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.e
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !35
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i16
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.e
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !35
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bk

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK16OpenColorIO_v2_510ColorSpace13getNumAliasesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace8getAliasEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils15getRefSpaceNameERKSt10shared_ptrIKNS_6ConfigEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %2 = alloca %"class.std::shared_ptr.4", align 16 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.4", align 16 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, i32 noundef 2) ; 2 uses
  %.not26 = icmp sgt i32 %i.b, 0
  br i1 %.not26, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.f = add nuw nsw i32 %.01228, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !102

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01228 = phi i32 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.01327 = phi ptr [ undef, %.lr.ph ], [ %.215, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = call noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 0, i32 noundef 2, i32 noundef %.01228) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.h)
  %i.j = load ptr, ptr %1, align 8, !tbaa !30
  %i.k = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #21
  br i1 %i.k, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.l = load ptr, ptr %1, align 8, !tbaa !30
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 0) #21
  %i.m = load ptr, ptr %2, align 16, !tbaa !54
  %.not25 = icmp eq ptr %i.m, null
  br i1 %.not25, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.n = load ptr, ptr %1, align 8, !tbaa !30
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef 1) #21
  %i.o = load <2 x ptr>, ptr %3, align 16, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !37   ; 8 uses
  store <2 x ptr> %i.o, ptr %2, align 16, !tbaa !55
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !40
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !1
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !inline_history !1
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exitthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.k, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exitthread-pre-split, !prof !44

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exitthread-pre-split

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exitthread-pre-split: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exitthread-pre-split, %bb.e
  %i.af = phi ptr [ %.pr, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exitthread-pre-split ], [ null, %bb.e ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_511ConfigUtils15getRefSpaceNameERKSt10shared_ptrIKNS_6ConfigEE:bb.a
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.w:                                             ; preds = %bb.u
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i19 = phi i32 [ %i.bc, %bb.v ], [ %i.bm, %bb.w ]
  %i.bn = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.bn, label %bb.x, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, !prof !44

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.c, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20
  %.215 = phi ptr [ %.114, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20 ], [ %.01327, %bb.c ] ; 2 uses
  %.1 = phi i1 [ %i.ax, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20 ], [ true, %bb.c ]
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !37  ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bp, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !40
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #21, !inline_history !0
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !42
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i22 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i22, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.ad:                                            ; preds = %bb.ab
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i24 = phi i32 [ %i.bs, %bb.ac ], [ %i.cc, %bb.ad ]
  %i.cd = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.cd, label %bb.ae, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.1, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b, %bb.a
  %spec.select = phi ptr [ @.str.14, %bb.a ], [ @.str.14, %bb.b ], [ %.215, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret ptr %spec.select
}

declare noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.4") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils16getDataSpaceNameERKSt10shared_ptrIKNS_6ConfigEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, i32 noundef 2) ; 2 uses
  %.not15 = icmp sgt i32 %i.b, 0
  br i1 %.not15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.d = add nuw nsw i32 %.01216, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !103

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01216 = phi i32 [ 0, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = call noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 0, i32 noundef 2, i32 noundef %.01216) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
  %i.h = load ptr, ptr %1, align 8, !tbaa !30
  %i.i = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #21
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !40
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !0
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.x, %bb.h ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b, %bb.a
  %spec.select = phi ptr [ @.str.14, %bb.a ], [ @.str.14, %bb.b ], [ %i.f, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, float noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 8 uses
  %4 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.10", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #22
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.i = add i64 %i.d, -4
  %i.j = sub i64 %i.i, %i.e
  %i.k = and i64 %i.j, -4
  %i.l = add i64 %i.k, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.l, i1 false), !tbaa !61
  %7 = ptrtoint ptr %6 to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %.pre47 = load ptr, ptr %i.a, align 8, !tbaa !58
  %.pre48 = ptrtoint ptr %.pre47 to i64
  %.pre49 = ptrtoint ptr %.pre to i64
  %.pre51 = sub i64 %.pre48, %.pre49
  %i.m = ashr exact i64 %.pre51, 2
  %i.n = sdiv i64 %i.m, 4
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.pre-phi52 = phi i64 [ %i.n, %.noexc26 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.o = phi ptr [ %.pre, %.noexc26 ], [ %i.c, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.13.0 = phi i64 [ %7, %.noexc26 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.030.0 = phi ptr [ %i.h, %.noexc26 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvllNS_15ChannelOrderingE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.o, i64 noundef %.pre-phi52, i64 noundef 1, i32 noundef 0)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.q = load ptr, ptr %1, align 8, !tbaa !59
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = sdiv i64 %i.u, 4
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvllNS_15ChannelOrderingE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %.sroa.030.0, i64 noundef %i.v, i64 noundef 1, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.w = load ptr, ptr %0, align 8, !tbaa !64
  invoke void @_ZNK16OpenColorIO_v2_59Processor24getOptimizedCPUProcessorENS_17OptimizationFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %5, align 8, !tbaa !67
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescERS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.y = ptrtoint ptr %.sroa.030.0 to i64         ; 2 uses
  %i.z = sub i64 %.sroa.13.0, %i.y                ; 2 uses
  %.not40 = icmp eq i64 %.sroa.13.0, %i.y
  br i1 %.not40, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = load ptr, ptr %1, align 8, !tbaa !59
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  br label %bb.o

bb.h:                                             ; preds = %bb.h, %.lr.ph
  %.01441 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01441
  %i.ag = load float, ptr %i.af, align 4, !tbaa !61 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.030.0, i64 %.01441
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !61 ; 3 uses
  %i.aj = fcmp ogt float %i.ag, %i.ai
  %i.ak = fsub float %i.ag, %i.ai
  %i.al = fsub float %i.ai, %i.ag
  %i.am = select i1 %i.aj, float %i.ak, float %i.al
  %i.an = fcmp ole float %i.am, %2                ; 2 uses
  %i.ao = add nuw i64 %.01441, 1                  ; 2 uses
  %exitcond.not = icmp ne i64 %i.ao, %i.aa
  %or.cond.not = select i1 %i.an, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.h, label %.critedge, !llvm.loop !104

.critedge:                                        ; preds = %bb.h, %.preheader
  %.not.lcssa = phi i1 [ true, %.preheader ], [ %i.an, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ar, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !40
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #21, !inline_history !3
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #21, !inline_history !3
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.au, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.n, label %_ZNSt6vectorIfSaIfEED2Ev.exit, !prof !44

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.critedge, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.z) #23
  ret i1 %.not.lcssa

bb.o:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIfSaIfEED2Ev.exit29, label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p
  %.pn.pn.pn38 = phi { ptr, i32 } [ %.pn.pn, %.thread ], [ %i.bg, %bb.p ]
  %i.bh = ptrtoint ptr %.sroa.030.0 to i64
  %i.bi = sub i64 %.sroa.13.0, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.bi) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit29

_ZNSt6vectorIfSaIfEED2Ev.exit29:                  ; preds = %bb.q, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn38, %bb.q ], [ %i.bg, %bb.p ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvllNS_15ChannelOrderingE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, i32 noundef) unnamed_addr #3

declare void @_ZNK16OpenColorIO_v2_59Processor24getOptimizedCPUProcessorENS_17OptimizationFlagsE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.10") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescERS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils28hasNonTrivialMatrixTransformERKSt10shared_ptrIKNS_9ProcessorEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.16", align 8 ; 9 uses
  %2 = alloca %"class.std::shared_ptr.4", align 8 ; 8 uses
  %3 = alloca %"class.std::shared_ptr.22", align 8 ; 8 uses
  %i.a = alloca [16 x double], align 16           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = load ptr, ptr %0, align 8, !tbaa !64
  call void @_ZNK16OpenColorIO_v2_59Processor20createGroupTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21
  %.not3367 = icmp sgt i32 %i.g, 0
  br i1 %.not3367, label %.lr.ph, label %.critedge39

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02768 = phi i32 [ 0, %.lr.ph ], [ %i.dk, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.p = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %.02768)
          to label %bb.c unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72   ; 3 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.x, align 4, !tbaa !43
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !43
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !54
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.ac = phi ptr [ %i.u, %bb.c ], [ %i.u, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #21
  %i.ah = icmp eq i32 %i.ag, 21
  br i1 %i.ah, label %bb.g, label %.critedge37

bb.g:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.ai = call ptr @__dynamic_cast(ptr nonnull %i.ac, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_515MatrixTransformE, i64 0) #21, !noalias !113 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %3, align 8, !tbaa !115, !alias.scope !113
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !37, !noalias !113 ; 3 uses
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !37, !alias.scope !113
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !113
  %.not.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !43, !noalias !113
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !43, !noalias !113
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !113 ; 0 uses
  %.pre74 = load ptr, ptr %3, align 8, !tbaa !115
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.ap = phi ptr [ %i.ai, %bb.g ], [ %i.ai, %bb.i ], [ %.pre74, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.a)
          to label %.preheader.preheader unwind label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  br label %bb.an

.preheader.preheader:                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.av = load double, ptr %i.j, align 8, !tbaa !117
  %i.aw = call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp ogt double %i.aw, 1.000000e-01
  br i1 %i.ax, label %split, label %bb.m

bb.m:                                             ; preds = %.preheader.preheader
  %i.ay = load double, ptr %i.k, align 16, !tbaa !117
  %i.az = call noundef double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp ogt double %i.az, 1.000000e-01
  br i1 %i.ba, label %split, label %.critedge

.critedge:                                        ; preds = %bb.m
  %i.bb = load double, ptr %i.l, align 16, !tbaa !117
  %i.bc = call noundef double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp ogt double %i.bc, 1.000000e-01
  br i1 %i.bd, label %split, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.be = load double, ptr %i.m, align 16, !tbaa !117
  %i.bf = call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ogt double %i.bf, 1.000000e-01
  br i1 %i.bg, label %split, label %.critedge.1

.critedge.1:                                      ; preds = %bb.n
  %i.bh = load double, ptr %i.n, align 16, !tbaa !117
  %i.bi = call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ogt double %i.bi, 1.000000e-01
  br i1 %i.bj, label %split, label %bb.o

bb.o:                                             ; preds = %.critedge.1
  %i.bk = load double, ptr %i.o, align 8, !tbaa !117
  %i.bl = call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ogt double %i.bl, 1.000000e-01
  br i1 %i.bm, label %split, label %.critedge.2

.critedge.2:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !37  ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, label %bb.v

split:                                            ; preds = %bb.o, %.critedge.1, %bb.n, %.critedge, %bb.m, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !37  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %split
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bp, align 8, !tbaa !39
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_511ConfigUtils24containsBlockedTransformERKSt10shared_ptrIKNS_9TransformEE:bb.a

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.w:                                             ; preds = %bb.u
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i42 = phi i32 [ %i.bg, %bb.v ], [ %i.bq, %bb.w ]
  %i.br = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.br, label %bb.x, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.not.not.lcssa, label %bb.bk, label %bb.bj

bb.y:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #21
  %i.bx = icmp eq i32 %i.bw, 8
  br i1 %i.bx, label %bb.z, label %bb.bf

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.by = load ptr, ptr %0, align 8, !tbaa !54, !noalias !140, !nonnull !74, !noundef !74
  %i.bz = tail call ptr @__dynamic_cast(ptr nonnull %i.by, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_513FileTransformE, i64 0) #21, !noalias !140 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  store ptr %i.bz, ptr %3, align 8, !tbaa !143, !alias.scope !140
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !37, !noalias !140 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !37, !alias.scope !140
  %.not.i.i.i.i.i44 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i44, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !140
  %.not.i.i.i.i.i.i45 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i45, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !43, !noalias !140
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !43, !noalias !140
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ch = atomicrmw volatile add ptr %i.cd, i32 1 acq_rel, align 4, !noalias !140 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !143
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.z, %bb.ab, %bb.ac
  %i.ci = phi ptr [ %i.bz, %bb.z ], [ %i.bz, %bb.ab ], [ %.pre, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cj = invoke noundef ptr @_ZNK16OpenColorIO_v2_513FileTransform6getSrcEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %bb.ad unwind label %bb.au     ; 4 uses

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ck, ptr %4, align 8, !tbaa !45
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #22
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !47
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.af
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc46 unwind label %bb.av  ; 2 uses

.noexc46:                                         ; preds = %.noexc.i
  store ptr %i.co, ptr %4, align 8, !tbaa !34
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !47
  store i64 %i.cp, ptr %i.ck, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc46, %bb.af
  %i.cq = phi ptr [ %i.co, %.noexc46 ], [ %i.ck, %bb.af ] ; 2 uses
  switch i64 %i.cm, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !35
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !35
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 1 %i.cj, i64 %i.cm, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !46
  %i.cu = load ptr, ptr %4, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.cw, ptr %5, align 8, !tbaa !45
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !46
  store i8 0, ptr %i.cw, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.cy, ptr %6, align 8, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.cz, align 8, !tbaa !46
  store i8 0, ptr %i.cy, align 8, !tbaa !35
  invoke void @_ZN8pystring2os4path8splitextERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKS7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.da, ptr %8, align 8, !tbaa !45
  %i.db = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.dc, ptr %i.a, align 8, !tbaa !47
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.noexc.i48, label %._crit_edge.i.i47

.noexc.i48:                                       ; preds = %bb.aj
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc49 unwind label %bb.ax  ; 2 uses

.noexc49:                                         ; preds = %.noexc.i48
  store ptr %i.de, ptr %8, align 8, !tbaa !34
  %i.df = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.df, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %.noexc49, %bb.aj
  %i.dg = phi ptr [ %i.de, %.noexc49 ], [ %i.da, %bb.aj ] ; 2 uses
  switch i64 %i.dc, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i47
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !35
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.db, i64 %i.dc, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i47
  %i.di = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !46
  %i.dk = load ptr, ptr %8, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.dm = load ptr, ptr %8, align 8, !tbaa !34, !noalias !144 ; 7 uses
  %i.dn = load i64, ptr %i.dj, align 8, !tbaa !46, !noalias !144 ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  %.not6.i.i = icmp samesign eq i64 %i.dn, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.am
  %min.iters.check = icmp ult i64 %i.dn, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check129 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.dn, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dm, i64 %index ; 3 uses
  %i.dp = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !35, !noalias !144 ; 3 uses
  %wide.load130 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !35, !noalias !144 ; 3 uses
  %i.dq = add <16 x i8> %wide.load, splat (i8 -65)
  %i.dr = add <16 x i8> %wide.load130, splat (i8 -65)
  %i.ds = icmp ult <16 x i8> %i.dq, splat (i8 26)
  %i.dt = icmp ult <16 x i8> %i.dr, splat (i8 26)
  %i.du = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.dv = or disjoint <16 x i8> %wide.load130, splat (i8 32)
  %i.dw = select <16 x i1> %i.ds, <16 x i8> %i.du, <16 x i8> %wide.load
  %i.dx = select <16 x i1> %i.dt, <16 x i8> %i.dv, <16 x i8> %wide.load130
  store <16 x i8> %i.dw, ptr %next.gep, align 1, !tbaa !35, !noalias !144
  store <16 x i8> %i.dx, ptr %i.dp, align 1, !tbaa !35, !noalias !144
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %9 = and i64 %i.dn, 24
  %10 = getelementptr i8, ptr %i.dm, i64 %n.vec
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %9, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.dn, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.dm, i64 %index132 ; 2 uses
  %wide.load134 = load <8 x i8>, ptr %next.gep133, align 1, !tbaa !35, !noalias !144 ; 3 uses
  %i.dz = add <8 x i8> %wide.load134, splat (i8 -65)
  %i.ea = icmp ult <8 x i8> %i.dz, splat (i8 26)
  %i.eb = or disjoint <8 x i8> %wide.load134, splat (i8 32)
  %i.ec = select <8 x i1> %i.ea, <8 x i8> %i.eb, <8 x i8> %wide.load134
  store <8 x i8> %i.ec, ptr %next.gep133, align 1, !tbaa !35, !noalias !144
  %index.next135 = add nuw i64 %index132, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next135, %n.vec131
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %11 = getelementptr i8, ptr %i.dm, i64 %n.vec131
  %cmp.n136 = icmp eq i64 %i.dn, %n.vec131
  br i1 %cmp.n136, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.dm, %iter.check ], [ %10, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ee = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !35, !noalias !144 ; 3 uses
  %i.ef = add i8 %i.ee, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ef, 26
  %i.eg = or disjoint i8 %i.ee, 32
  %.0.i.i.i.i50 = select i1 %or.cond.i.i.i.i, i8 %i.eg, i8 %i.ee
  store i8 %.0.i.i.i.i50, ptr %.sroa.0.08.i.i, align 1, !tbaa !35, !noalias !144
  %i.eh = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.eh, %i.do
  br i1 %.not.i.i51, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !131

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !34, !noalias !144
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.am
  %i.ei = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.dm, %bb.am ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.ej, ptr %7, align 8, !tbaa !45, !alias.scope !144
  %i.ek = icmp eq ptr %i.ei, %i.da
  br i1 %i.ek, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.an:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.el = load i64, ptr %i.dj, align 8, !tbaa !46, !noalias !144 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.en, i1 false)
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.ei, ptr %7, align 8, !tbaa !34, !alias.scope !144
  %i.eo = load i64, ptr %i.da, align 8, !tbaa !35, !noalias !144
  store i64 %i.eo, ptr %i.ej, align 8, !tbaa !35, !alias.scope !144
  %.pre4.i = load i64, ptr %i.dj, align 8, !tbaa !46, !noalias !144
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an
  %i.ep = phi ptr [ %i.ej, %bb.an ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.eq = phi i64 [ %i.el, %bb.an ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !46, !alias.scope !144
  store ptr %i.da, ptr %8, align 8, !tbaa !34, !noalias !144
  store i64 0, ptr %i.dj, align 8, !tbaa !46, !noalias !144
  store i8 0, ptr %i.da, align 8, !tbaa !35, !noalias !144
  %i.es = load ptr, ptr %6, align 8, !tbaa !34    ; 6 uses
  %i.et = icmp eq ptr %i.es, %i.cy
  %i.eu = icmp eq ptr %i.ep, %i.ej                ; 2 uses
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ao
  br i1 %i.eu, label %bb.ap, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ao
  br i1 %i.eu, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ev = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.ev)
  switch i64 %i.eq, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load i8, ptr %i.ep, align 1, !tbaa !35
  store i8 %i.ew, ptr %i.es, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ex = load i64, ptr %i.er, align 8, !tbaa !46 ; 2 uses
  store i64 %i.ex, ptr %i.cz, align 8, !tbaa !46
  %i.ey = load ptr, ptr %6, align 8, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !35
  %.pre.i52 = load ptr, ptr %7, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ep, ptr %6, align 8, !tbaa !34
  store i64 %i.eq, ptr %i.cz, align 8, !tbaa !46
  %i.fa = load i64, ptr %i.ej, align 8, !tbaa !35
  store i64 %i.fa, ptr %i.cy, align 8, !tbaa !35
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fb = load i64, ptr %i.cy, align 8, !tbaa !35
  store ptr %i.ep, ptr %6, align 8, !tbaa !34
  store i64 %i.eq, ptr %i.cz, align 8, !tbaa !46
  %i.fc = load i64, ptr %i.ej, align 8, !tbaa !35
  store i64 %i.fc, ptr %i.cy, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.es, null
  br i1 %.not.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.es, ptr %7, align 8, !tbaa !34
  store i64 %i.fb, ptr %i.ej, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ej, ptr %7, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.as, %bb.at
  %i.fd = phi ptr [ %i.es, %bb.as ], [ %i.ej, %bb.at ], [ %.pre.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.er, align 8, !tbaa !46
  store i8 0, ptr %i.fd, align 1, !tbaa !35
  %i.fe = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ej
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fg = load i64, ptr %i.ej, align 8, !tbaa !35
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.fi = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.da
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fk = load i64, ptr %i.da, align 8, !tbaa !35
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.fm = load i64, ptr %i.cz, align 8, !tbaa !46 ; 2 uses
  %.pre94 = load ptr, ptr %6, align 8, !tbaa !34  ; 6 uses
  switch i64 %i.fm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread [
    i64 6, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.fn = load i32, ptr %.pre94, align 1
  %i.fo = xor i32 %i.fn, 1768977198
  %i.fp = getelementptr i8, ptr %.pre94, i64 4
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = zext i16 %i.fq to i32
  %i.fs = xor i32 %i.fr, 25649
  %i.ft = or i32 %i.fo, %i.fs
  %i.fu = icmp ne i32 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  %.not86 = icmp eq i32 %i.fv, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.fw = load i32, ptr %.pre94, align 1
  %i.fx = xor i32 %i.fw, 1768977198
  %i.fy = getelementptr i8, ptr %.pre94, i64 3
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = xor i32 %i.fz, 2020896105
  %i.gb = or i32 %i.fx, %i.ga
  %i.gc = icmp ne i32 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %.not87 = icmp eq i32 %i.gd, 0
  br i1 %.not87, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread

bb.au:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.av:                                            ; preds = %.noexc.i, %bb.ae
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.aw:                                            ; preds = %bb.ai
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ax:                                            ; preds = %.noexc.i48
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.be

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84
  %i.gi = phi i1 [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread84 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
end_hunk_2
