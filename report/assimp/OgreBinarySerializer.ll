inline.NumInlined: 1874
inline.NumDeleted: 793
begin_hunk_0_@_ZN6Assimp4Ogre20OgreBinarySerializer10ReadVectorER10aiVector3tIfE:bb.a

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer14ReadQuaternionER13aiQuaterniontIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ugt ptr %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ult ptr %i.e, %i.j
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %bb.b, label %_ZN6Assimp12StreamReaderILb0ELb0EE14CopyAndAdvanceEPvm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.72)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #21
  resume { ptr, i32 } %i.m

_ZN6Assimp12StreamReaderILb0ELb0EE14CopyAndAdvanceEPvm.exit: ; preds = %bb.a
  %i.n = load <4 x float>, ptr %i.d, align 1
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x float> %i.o, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre20OgreBinarySerializer5AtEndEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 0
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadStringB5cxx11Em(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ugt ptr %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp ult ptr %i.h, %i.m
  %or.cond.i.i.i.i = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.72)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #21
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.t = load i64, ptr %i.a, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %i.g, i64 %2, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer8ReadLineB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.n = phi ptr [ %i.am, %bb.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.al, %bb.i ], [ %i.g, %bb.a ]
  %i.p = phi ptr [ %i.ai, %bb.i ], [ %i.d, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ugt ptr %i.q, %i.s
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.66)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #21
  br label %.body

bb.e:                                             ; preds = %.lr.ph
  %i.w = load i8, ptr %i.n, align 1               ; 2 uses
  store ptr %i.q, ptr %i.o, align 8
  %i.x = icmp eq i8 %i.w, 10
  br i1 %i.x, label %.thread, label %bb.f

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.b, align 8              ; 4 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %2 = load i64, ptr %i.a, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %3 = phi i64 [ %2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.g ]
  %i.ad = icmp ugt i64 %i.z, %3
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.noexc9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ae = phi ptr [ %.pre.i.i, %.noexc9 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 %i.w, ptr %i.af, align 1
  store i64 %i.z, ptr %i.b, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.z
  store i8 0, ptr %i.ah, align 1
  %i.ai = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.i, %bb.e, %bb.a
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.as = load ptr, ptr %0, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.au = load i64, ptr %i.a, align 8
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ugt ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadItEET_v.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.66)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.s, %bb.h ], [ %i.i, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.j, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer4ReadItEET_v.exit: ; preds = %bb.a
  %i.k = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8
  br i1 %1, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadItEET_v.exit
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ugt ptr %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.66)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit: ; preds = %bb.e
  %i.u = load i32, ptr %i.n, align 1
  store ptr %i.o, ptr %i.m, align 8
  store i32 %i.u, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit, %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadItEET_v.exit
  ret i16 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ugt ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.72)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #21
  resume { ptr, i32 } %i.j

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer9SkipBytesEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %1 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ugt ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.72)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #21
  resume { ptr, i32 } %i.j

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp4Ogre20OgreBinarySerializer10ImportMeshEPNS_12StreamReaderILb0ELb0EEE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Assimp::Ogre::OgreBinarySerializer", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_0
