Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/file?download=true
inline.NumInlined: 2099
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4pbrt15ResolveFilenameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i19

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i19: ; preds = %.lr.ph.i.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i18
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 32 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cw, %i.cq
  br i1 %.not.i.i.i.i20, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i21, label %.lr.ph.i.i.i.i16, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i21: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i19
  %.pr.i.i22 = load ptr, ptr %i.cn, align 8, !tbaa !9
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i23

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i23: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i21, %bb.o
  %i.cx = phi ptr [ %.pr.i.i22, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i21 ], [ %i.co, %bb.o ] ; 3 uses
  %.not.i.i1.i.i24 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i24, label %_ZN10filesystem4pathD2Ev.exit26, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i23
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !22
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #28
  br label %_ZN10filesystem4pathD2Ev.exit26

_ZN10filesystem4pathD2Ev.exit26:                  ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i23, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.x

bb.q:                                             ; preds = %_ZN10filesystem4pathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10filesystem4pathD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aa

bb.r:                                             ; preds = %_ZN10filesystem4pathD2Ev.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10filesystem4pathD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %8) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.t ], [ %i.df, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.z

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !35
  %i.di = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i27

bb.w:                                             ; preds = %bb.v
  %i.dl = load i64, ptr %i.e, align 8, !tbaa !36  ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.dj, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i27: ; preds = %bb.v
  store ptr %i.di, ptr %0, align 8, !tbaa !14
  %i.do = load i64, ptr %i.dj, align 8, !tbaa !19
  store i64 %i.do, ptr %i.dh, align 8, !tbaa !19
  %.pre = load i64, ptr %i.e, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit28: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i27
  %i.dp = phi i64 [ %i.dl, %bb.w ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i27 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !36
  store ptr %i.dj, ptr %1, align 8, !tbaa !14
  store i64 0, ptr %i.e, align 8, !tbaa !36
  store i8 0, ptr %i.dj, align 8, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit28, %_ZN10filesystem4pathD2Ev.exit26
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !9  ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !13 ; 2 uses
  %.not4.i.i.i.i29 = icmp eq ptr %i.ds, %i.du
  br i1 %.not4.i.i.i.i29, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %bb.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33
  %.05.i.i.i.i31 = phi ptr [ %i.ea, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33 ], [ %i.ds, %bb.x ] ; 3 uses
  %i.dv = load ptr, ptr %.05.i.i.i.i31, align 8, !tbaa !14 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i31, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i30
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ea, %i.du
  br i1 %.not.i.i.i.i34, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i35, label %.lr.ph.i.i.i.i30, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i35: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33
  %.pr.i.i36 = load ptr, ptr %i.dr, align 8, !tbaa !9
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i35, %bb.x
  %i.eb = phi ptr [ %.pr.i.i36, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i35 ], [ %i.ds, %bb.x ] ; 3 uses
  %.not.i.i1.i.i38 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i1.i.i38, label %_ZN10filesystem4pathD2Ev.exit40, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !22
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #28
  br label %_ZN10filesystem4pathD2Ev.exit40

_ZN10filesystem4pathD2Ev.exit40:                  ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i37, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ab

bb.z:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.de, %bb.r ]
  call void @_ZN10filesystem4pathD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %6) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.dd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

bb.ab:                                            ; preds = %_ZN10filesystem4pathD2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10filesystem4pathdvERKS0_(ptr dead_on_unwind noalias writable sret(%"class.filesystem::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32, !range !33, !noundef !34
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.36)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #29
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.h = load i32, ptr %2, align 8, !tbaa !30
  %.not = icmp eq i32 %i.g, %i.h
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.37)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #29
  br label %common.resume

bb.i:                                             ; preds = %bb.e
  store i32 %i.g, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !9    ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ugt i64 %i.r, 9223372036854775776
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !49

.noexc.i.i.i:                                     ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !31
  %.pre16 = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.i
  %3 = phi ptr [ %i.n, %bb.i ], [ %.pre16, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ]
  %4 = phi ptr [ %i.o, %bb.i ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ]
  %i.u = phi ptr [ null, %bb.i ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !22
  %i.y = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %4, ptr %3, ptr noundef %i.u)
          to label %_ZN10filesystem4pathC2ERKS0_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.r) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.h, %bb.r, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.f, %bb.d ], [ %i.j, %bb.h ], [ %i.bl, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZN10filesystem4pathC2ERKS0_.exit:                ; preds = %bb.k
  store ptr %i.y, ptr %i.v, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !32, !range !33, !noundef !34
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !23, !range !33, !noundef !34
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  %.not15 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10filesystem4pathC2ERKS0_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ak = phi ptr [ %i.bf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %i.aj, %_ZN10filesystem4pathC2ERKS0_.exit ]
  %.014 = phi i64 [ %i.bd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ 0, %_ZN10filesystem4pathC2ERKS0_.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %.014 ; 3 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !13  ; 8 uses
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !35
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !37
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.at, ptr %i.am, align 8, !tbaa !14
  %i.au = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.n
  %i.av = phi ptr [ %i.at, %.noexc ], [ %i.ao, %bb.n ] ; 2 uses
  switch i64 %i.ar, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !19
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !36
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.bc, ptr %i.v, align 8, !tbaa !13
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.r

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.q
  %i.bd = add nuw i64 %.014, 1                    ; 2 uses
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 5
  %i.bk = icmp ult i64 %i.bd, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !50

bb.r:                                             ; preds = %bb.q, %.noexc.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10filesystem4pathD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %0) #29
  br label %common.resume

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZN10filesystem4pathC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10filesystem4path13make_absoluteEv(ptr dead_on_unwind noalias writable sret(%"class.filesystem::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNK10filesystem4path3strB5cxx11ENS0_9path_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %1, i32 noundef 1)
  %i.b = load ptr, ptr %2, align 8, !tbaa !14
  %i.c = call ptr @realpath(ptr noundef %i.b, ptr noundef nonnull %i.a) #29
  %i.d = icmp eq ptr %i.c, null
  %i.e = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.k = tail call ptr @__errno_location() #33
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51
  %i.m = call ptr @strerror(i32 noundef %i.l) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.m, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.u = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread: ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_0
