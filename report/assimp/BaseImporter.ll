inline.NumInlined: 1634
inline.NumDeleted: 756
begin_hunk_0_@_ZN6Assimp12BaseImporter8ReadFileEPNS_8ImporterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE:bb.a
bb.q:                                             ; preds = %bb.o, %bb.n, %bb.h
  %.merged20 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.aq, %bb.o ], [ %i.ap, %bb.n ]
  call void @_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g, %bb.f
  %.merged = phi { ptr, i32 } [ %.merged20, %bb.q ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN6Assimp16FileSystemFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(105) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.merged

bb.s:                                             ; preds = %bb.a, %_ZN6Assimp16FileSystemFilterD2Ev.exit
  %.1 = phi ptr [ %.028, %_ZN6Assimp16FileSystemFilterD2Ev.exit ], [ null, %bb.a ]
  ret ptr %.1

bb.t:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #29
  unreachable
}

declare noundef ptr @_ZNK6Assimp8Importer18GetProgressHandlerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16FileSystemFilterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp16FileSystemFilterE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %i.d, align 8
  %i.k = load i64, ptr %i.a, align 8
  store i64 %i.k, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.y, ptr %i.z, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.e
  %i.aa = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull @.str.21, i64 noundef -1, i64 noundef 2) #26 ; 7 uses
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ab = load i64, ptr %i.t, align 8             ; 4 uses
  %i.ac = sub i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = icmp ugt i64 %i.aa, %i.ab
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i64 noundef %i.aa, i64 noundef %i.ab) #30
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.f
  switch i64 %i.ac, label %bb.i [
    i64 -1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  store i64 %i.aa, ptr %i.t, align 8
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  store i8 0, ptr %i.af, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.aa, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.l:                                             ; preds = %bb.i, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.aj, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.r, align 8
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.al, align 1
  %.pre.i = load ptr, ptr %3, align 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %.pre.i, align 1
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aj
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ao = load i64, ptr %i.aj, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.h
  %.pr = load i64, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.aq = phi i64 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i ] ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.m
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(105) %0)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ax = load i64, ptr %i.t, align 8             ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.s
  br i1 %i.ba, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %4 = load i64, ptr %i.s, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %5 = phi i64 [ %4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.o ]
  %i.bc = icmp ugt i64 %i.ay, %5
  br i1 %i.bc, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc18 unwind label %bb.q

.noexc18:                                         ; preds = %bb.p
  %.pre.i.i = load ptr, ptr %i.r, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc18
  %i.bd = phi ptr [ %.pre.i.i, %.noexc18 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  store i8 %i.aw, ptr %i.be, align 1
  br label %.sink.split

bb.q:                                             ; preds = %bb.v, %bb.p, %bb.m, %bb.x, %bb.w, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.bg = load ptr, ptr %i.r, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aq
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1
  switch i8 %i.bj, label %bb.s [
    i8 92, label %bb.w
    i8 47, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(105) %0)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.bo = load i64, ptr %i.t, align 8             ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.s
  br i1 %i.br, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

bb.u:                                             ; preds = %bb.t
  %i.bs = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %bb.t
  %6 = load i64, ptr %i.s, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19, %bb.u
  %7 = phi i64 [ %6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19 ], [ 15, %bb.u ]
  %i.bt = icmp ugt i64 %i.bp, %7
  br i1 %i.bt, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.bo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc21 unwind label %bb.q

.noexc21:                                         ; preds = %bb.v
  %.pre.i.i20 = load ptr, ptr %i.r, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19, %.noexc21
  %i.bu = phi ptr [ %.pre.i.i20, %.noexc21 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i19 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bo
  store i8 %i.bn, ptr %i.bv, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22
  %.sink = phi i64 [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit22 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  store i64 %.sink, ptr %i.t, align 8
  %i.bw = load ptr, ptr %i.r, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sink
  store i8 0, ptr %i.bx, align 1
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.r, %bb.r
  %i.by = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6Assimp6Logger4infoIJRA27_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.by, ptr noundef nonnull align 1 dereferenceable(27) @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 1 dereferenceable(2) @.str.23)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %bb.x
  ret void

bb.z:                                             ; preds = %bb.l, %bb.q, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.bf, %bb.q ], [ %i.ai, %bb.l ] ; 2 uses
  %i.bz = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.s
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.z
  %i.cb = load i64, ptr %i.s, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.e
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cf = load i64, ptr %i.e, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #7

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI7aiSceneSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit

_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit:     ; preds = %bb.a
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1168) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI7aiSceneEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp16FileSystemFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp16FileSystemFilterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp8IOSystemE, i64 16), ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3 ] ; 3 uses
  %i.q = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.m, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.w = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i, label %_ZN6Assimp8IOSystemD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN6Assimp8IOSystemD2Ev.exit

_ZN6Assimp8IOSystemD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6Assimp12BaseImporter15SetupPropertiesEPKNS_8ImporterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN6Assimp12BaseImporter24SearchFileHeaderForTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKcmjbb:bb.a
  br i1 %.not130, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = add i32 %4, 1
  %i.o = zext i32 %i.n to i64
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #28
          to label %bb.c unwind label %bb.f       ; 14 uses

bb.c:                                             ; preds = %bb.b
  %i.q = zext i32 %4 to i64
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.p, i64 noundef 1, i64 noundef %i.q)
          to label %bb.d unwind label %bb.g       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %.not131 = icmp eq i64 %i.u, 0
  br i1 %.not131, label %.thread125, label %.preheader

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %7, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.e
  %i.y = load i64, ptr %i.b, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ae

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit108

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %bb.i
  %.069140.prol = phi ptr [ %.170.prol, %bb.i ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %.071139.prol = phi ptr [ %i.af, %bb.i ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.i ], [ 0, %.lr.ph.preheader ]
  %i.ad = load i8, ptr %.071139.prol, align 1     ; 2 uses
  %.not91.prol = icmp eq i8 %i.ad, 0
  br i1 %.not91.prol, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.prol
  %i.ae = getelementptr inbounds nuw i8, ptr %.069140.prol, i64 1
  store i8 %i.ad, ptr %.069140.prol, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.prol
  %.170.prol = phi ptr [ %i.ae, %bb.h ], [ %.069140.prol, %.lr.ph.prol ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.071139.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %bb.i, %.lr.ph.preheader
  %.170.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.170.prol, %bb.i ]
  %.069140.unr = phi ptr [ %i.p, %.lr.ph.preheader ], [ %.170.prol, %bb.i ]
  %.071139.unr = phi ptr [ %i.p, %.lr.ph.preheader ], [ %i.af, %bb.i ]
  %i.ag = icmp ult i64 %i.u, 4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.d, %.preheader
  %.072137 = phi i64 [ %i.am, %.preheader ], [ 0, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 %.072137 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = call i32 @tolower(i32 noundef %i.aj) #31
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.ah, align 1
  %i.am = add nuw i64 %.072137, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.u
  br i1 %exitcond.not, label %.lr.ph.preheader, label %.preheader, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.n
  %.069140 = phi ptr [ %.170.3, %bb.n ], [ %.069140.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.071139 = phi ptr [ %i.ay, %bb.n ], [ %.071139.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.an = load i8, ptr %.071139, align 1          ; 2 uses
  %.not91 = icmp eq i8 %i.an, 0
  br i1 %.not91, label %.lr.ph.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.069140, i64 1
  store i8 %i.an, ptr %.069140, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %.170 = phi ptr [ %i.ao, %bb.j ], [ %.069140, %.lr.ph ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.071139, i64 1
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not91.1 = icmp eq i8 %i.aq, 0
  br i1 %.not91.1, label %.lr.ph.2, label %bb.k

bb.k:                                             ; preds = %.lr.ph.1
  %i.ar = getelementptr inbounds nuw i8, ptr %.170, i64 1
  store i8 %i.aq, ptr %.170, align 1
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.k, %.lr.ph.1
  %.170.1 = phi ptr [ %i.ar, %bb.k ], [ %.170, %.lr.ph.1 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.071139, i64 2
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not91.2 = icmp eq i8 %i.at, 0
  br i1 %.not91.2, label %.lr.ph.3, label %bb.l

bb.l:                                             ; preds = %.lr.ph.2
  %i.au = getelementptr inbounds nuw i8, ptr %.170.1, i64 1
  store i8 %i.at, ptr %.170.1, align 1
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.l, %.lr.ph.2
  %.170.2 = phi ptr [ %i.au, %bb.l ], [ %.170.1, %.lr.ph.2 ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.071139, i64 3
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %.not91.3 = icmp eq i8 %i.aw, 0
  br i1 %.not91.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.3
  %i.ax = getelementptr inbounds nuw i8, ptr %.170.2, i64 1
  store i8 %i.aw, ptr %.170.2, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.3
  %.170.3 = phi ptr [ %i.ax, %bb.m ], [ %.170.2, %.lr.ph.3 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.071139, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.ay, %i.ac
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.n, %.lr.ph.prol.loopexit
  %.170.lcssa = phi ptr [ %.170.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.170.3, %bb.n ]
  store i8 0, ptr %.170.lcssa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.az, ptr %8, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.az, align 8
  %.not132147.not = icmp eq i64 %3, 0
  br i1 %.not132147.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.thread, label %.lr.ph151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.thread: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br label %bb.ac

.lr.ph151:                                        ; preds = %._crit_edge
  %.not92 = xor i1 %6, true
  %.not93 = xor i1 %5, true
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph151, %bb.aa
  %i.bb = phi ptr [ %i.az, %.lr.ph151 ], [ %i.bh, %bb.aa ]
  %i.bc = phi i64 [ 0, %.lr.ph151 ], [ %i.cj, %bb.aa ]
  %.063148 = phi i32 [ 0, %.lr.ph151 ], [ %i.ci, %bb.aa ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bc ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #31 ; 2 uses
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.bb, align 1
  %.not153 = icmp eq i64 %i.bf, 0
  br i1 %.not153, label %._crit_edge145, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %bb.o
  %i.bg = load ptr, ptr %i.bd, align 8
  br label %.lr.ph144

._crit_edge145:                                   ; preds = %bb.r, %bb.o
  %i.bh = load ptr, ptr %8, align 8               ; 3 uses
  %i.bi = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.bh) #31 ; 4 uses
  %.not83 = icmp eq ptr %i.bi, null
  br i1 %.not83, label %bb.aa, label %bb.t

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %bb.r
  %.056142 = phi i64 [ %i.by, %bb.r ], [ 0, %.lr.ph144.preheader ]
  %.057141 = phi ptr [ %i.bx, %bb.r ], [ %i.bg, %.lr.ph144.preheader ] ; 2 uses
  %i.bj = load i8, ptr %.057141, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call i32 @tolower(i32 noundef %i.bk) #31
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = load i64, ptr %i.ba, align 8            ; 4 uses
  %i.bo = add i64 %i.bn, 1                        ; 3 uses
  %i.bp = load ptr, ptr %8, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.az
  br i1 %i.bq, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

bb.p:                                             ; preds = %.lr.ph144
  %i.br = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %.lr.ph144
  %9 = load i64, ptr %i.az, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.p
  %10 = phi i64 [ %9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ 15, %bb.p ]
  %i.bs = icmp ugt i64 %i.bo, %10
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc99 unwind label %bb.s

.noexc99:                                         ; preds = %bb.q
  %.pre.i = load ptr, ptr %8, align 8
  br label %bb.r

bb.r:                                             ; preds = %.noexc99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bt = phi ptr [ %.pre.i, %.noexc99 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn
  store i8 %i.bm, ptr %i.bu, align 1
  store i64 %i.bo, ptr %i.ba, align 8
  %i.bv = load ptr, ptr %8, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bo
  store i8 0, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.057141, i64 1
  %i.by = add nuw i64 %.056142, 1                 ; 2 uses
  %exitcond156.not = icmp eq i64 %i.by, %i.bf
  br i1 %exitcond156.not, label %._crit_edge145, label %.lr.ph144, !llvm.loop !13

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.t:                                             ; preds = %._crit_edge145
  %.not84 = icmp eq ptr %i.bi, %i.p               ; 2 uses
  %or.cond = or i1 %.not84, %.not92
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = call i32 @isgraph(i32 noundef %i.cc) #31
  %.not85 = icmp eq i32 %i.cd, 0
  br i1 %.not85, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u, %bb.t
  %or.cond94 = or i1 %.not84, %.not93
  br i1 %or.cond94, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1
  switch i8 %i.cf, label %bb.aa [
    i8 13, label %bb.x
    i8 10, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.v
  %i.cg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6Assimp6Logger5debugIJRA42_KcRPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 1 dereferenceable(42) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %..loopexit_crit_edge unwind label %bb.z

..loopexit_crit_edge:                             ; preds = %bb.y
  %.pre = load ptr, ptr %8, align 8
  br label %.loopexit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge145, %bb.u, %bb.w
  %i.ci = add i32 %.063148, 1                     ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not132 = icmp ugt i64 %3, %i.cj
  br i1 %.not132, label %bb.o, label %.loopexit, !llvm.loop !14

bb.ab:                                            ; preds = %bb.z, %bb.s
  %.pn86 = phi { ptr, i32 } [ %i.bz, %bb.s ], [ %i.ch, %bb.z ]
  %i.ck = load ptr, ptr %8, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.az
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.az, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit108

.loopexit:                                        ; preds = %bb.aa, %..loopexit_crit_edge
  %i.co = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.bh, %bb.aa ] ; 2 uses
  %.not132135 = phi i1 [ true, %..loopexit_crit_edge ], [ false, %bb.aa ] ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.az
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br i1 %.not132135, label %bb.ad, label %bb.ac

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %.loopexit
  %i.cq = load i64, ptr %i.az, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br i1 %.not132135, label %bb.ad, label %bb.ac

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.g
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.ab, %bb.g ]
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit108, %bb.f
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit108 ], [ %i.aa, %bb.f ]
  %i.cs = load ptr, ptr %i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #26, !inline_history !15
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.ad

.thread125:                                       ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.p) #27
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i114

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.ac
  %.4 = phi i1 [ false, %bb.ac ], [ true, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104 ] ; 2 uses
  br i1 %.not130, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i114: ; preds = %.thread125, %bb.ad
  %.4128 = phi i1 [ false, %.thread125 ], [ %.4, %bb.ad ]
  %i.cv = load ptr, ptr %i.i, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #26, !inline_history !15
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit115

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  resume { ptr, i32 } %.pn86.pn.pn.pn

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit115: ; preds = %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i114, %bb.ad, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ %.4, %bb.ad ], [ %.4128, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i114 ]
  ret i1 %.5
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isgraph(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5debugIJRA42_KcRPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(42) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA42_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #26
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp16FileSystemFilter9BuildPathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.c, 3
  br i1 %i.d, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.g), !inline_history !86
  br i1 %i.k, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %.not = icmp eq i8 %i.n, 58
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.p = load ptr, ptr %i.o, align 8, !noalias !110
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noalias !110 ; 3 uses
  %i.s = load i64, ptr %i.b, align 8, !noalias !110 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.t, ptr %2, align 8, !alias.scope !113
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.u, align 8, !alias.scope !113
  store i8 0, ptr %i.t, align 8, !alias.scope !113
  %i.v = add i64 %i.s, %i.r
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.v)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !alias.scope !113
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.r
  br i1 %i.y, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aa = load i64, ptr %i.u, align 8, !alias.scope !113
  %i.ab = sub i64 4611686018427387903, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.s
  br i1 %i.ac, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #30
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.l, i64 noundef %i.s)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !alias.scope !113 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.t, align 8, !alias.scope !113
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ae, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.aj = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ak = load ptr, ptr %2, align 8
  %i.al = load ptr, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %i.ak)
          to label %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h, !inline_history !86 ; 2 uses

_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  br i1 %i.ao, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.g:                                             ; preds = %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.t
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.as = load i64, ptr %i.t, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g, %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.au = load ptr, ptr %2, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.t
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aw = load i64, ptr %i.t, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %i.ao, label %bb.z, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.c
  %i.ay = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef -1) #26 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ba = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 92, i64 noundef -1) #26 ; 2 uses
  %.not41 = icmp eq i64 %i.ba, -1
  br i1 %.not41, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.02973 = phi i64 [ %i.ba, %bb.j ], [ %i.ay, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.bb, ptr %3, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit61: ; preds = %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59, %.thread
  %.028 = phi i64 [ -1, %.thread ], [ %i.bx, %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59 ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50 unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit61
  %i.bh = load i8, ptr %i.be, align 8
  %i.bi = load i64, ptr %i.bc, align 8            ; 4 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bb
  br i1 %i.bl, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50
  %i.bm = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50
  %5 = load i64, ptr %i.bb, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %6 = phi i64 [ %5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.k ]
  %i.bn = icmp ugt i64 %i.bj, %6
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %3, align 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bo = phi ptr [ %.pre.i.i, %.noexc ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi
  store i8 %i.bh, ptr %i.bp, align 1
  store i64 %i.bj, ptr %i.bc, align 8
  %i.bq = load ptr, ptr %3, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bj
  store i8 0, ptr %i.br, align 1
  %i.bs = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef %.028) #26 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 92, i64 noundef %.028) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit61
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.p:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.bu, %bb.n ], [ %i.bs, %bb.m ] ; 2 uses
  %i.bw = add i64 %.0, 1                          ; 5 uses
  %or.cond = icmp ult i64 %i.bw, 2
  br i1 %or.cond, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = add i64 %.0, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.by = load i64, ptr %i.b, align 8             ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.bz = icmp ugt i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31, i64 noundef %i.bw, i64 noundef %i.by) #30
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.q
  %i.ca = sub i64 %i.by, %.02973
  store ptr %i.bf, ptr %4, align 8, !alias.scope !116
  %i.cb = load ptr, ptr %1, align 8, !noalias !116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bw ; 2 uses
  %i.cd = sub nuw i64 %i.by, %i.bw
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cd) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !116
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !noalias !116
  %i.ce = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ce, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc52 unwind label %.loopexit77 ; 2 uses

.noexc52:                                         ; preds = %.noexc10.i.i
  store ptr %i.cf, ptr %4, align 8, !alias.scope !116
  %i.cg = load i64, ptr %i.a, align 8, !noalias !116
  store i64 %i.cg, ptr %i.bf, align 8, !alias.scope !116
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ch = phi ptr [ %i.cf, %.noexc52 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.ci = load i8, ptr %i.cc, align 1
  store i8 %i.ci, ptr %i.ch, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr nonnull align 1 %i.cc, i64 %spec.select.i.i.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i
  %i.cj = load i64, ptr %i.a, align 8, !noalias !116 ; 2 uses
  store i64 %i.cj, ptr %i.bg, align 8, !alias.scope !116
  %i.ck = load ptr, ptr %4, align 8, !alias.scope !116
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !116
  %i.cm = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.cn = load i64, ptr %i.bc, align 8
  %i.co = sub i64 4611686018427387903, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.cm
  br i1 %i.cp, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #30
          to label %.noexc53 unwind label %.loopexit.split-lp79

.noexc53:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.cq = load ptr, ptr %4, align 8
  %i.cr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.cq, i64 noundef %i.cm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit78 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cs = load ptr, ptr %4, align 8               ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bf
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cu = load i64, ptr %i.bf, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cx = load ptr, ptr %3, align 8
  %i.cy = load ptr, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef %i.cx)
          to label %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59 unwind label %.loopexit83, !inline_history !86

_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  br i1 %i.db, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit61

bb.w:                                             ; preds = %_ZNK6Assimp8IOSystem6ExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit59
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.loopexit unwind label %.loopexit.split-lp84

.loopexit77:                                      ; preds = %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

.loopexit78:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit80 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp79:                             ; preds = %bb.v
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp79, %.loopexit78
  %lpad.phi82 = phi { ptr, i32 } [ %lpad.loopexit80, %.loopexit78 ], [ %lpad.loopexit.split-lp81, %.loopexit.split-lp79 ] ; 2 uses
  %i.dc = load ptr, ptr %4, align 8               ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bf
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.x
  %i.de = load i64, ptr %i.bf, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.x, %.loopexit77, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %.pn = phi { ptr, i32 } [ %lpad.phi82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit77 ], [ %lpad.phi82, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.y

.loopexit83:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp84:                             ; preds = %bb.w
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit:                                        ; preds = %bb.p, %bb.w
  %i.dg = load ptr, ptr %3, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bb
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %.loopexit
  %i.di = load i64, ptr %i.bb, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #27
end_hunk_2
