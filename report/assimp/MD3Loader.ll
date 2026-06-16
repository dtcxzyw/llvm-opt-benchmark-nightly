inline.NumInlined: 1319
inline.NumDeleted: 545
begin_hunk_0_@_ZN17DeadlyImportErrorC2EPKc:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #24
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD3Importer28ValidateSurfaceHeaderOffsetsEPKNS_3MD37SurfaceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %sext = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext, 32
  %i.g = add nsw i64 %i.f, 108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 8              ; 5 uses
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.43)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.n = trunc i64 %i.e to i32                    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = add i32 %i.p, %i.n                       ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.not15.i = icmp ule i32 %i.s, %i.i
  %i.u = zext i32 %i.r to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, %i.t
  %i.x = icmp samesign ule i64 %i.w, %i.j
  %i.y = select i1 %.not15.i, i1 %i.x, i1 false
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = add i32 %i.aa, %i.n                     ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.not15.i26 = icmp ule i32 %i.ad, %i.i
  %i.af = zext i32 %i.ac to i64
  %i.ag = mul nuw nsw i64 %i.af, 68
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = icmp samesign ule i64 %i.ah, %i.j
  %i.aj = select i1 %.not15.i26, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.al, %i.n                     ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.not15.i27 = icmp ule i32 %i.ao, %i.i
  %i.aq = zext i32 %i.an to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, %i.ap
  %i.at = icmp samesign ule i64 %i.as, %i.j
  %i.au = select i1 %.not15.i27, i1 %i.at, i1 false
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, %i.n                     ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %.not15.i28 = icmp ule i32 %i.ax, %i.i
  %i.az = add nuw nsw i64 %i.ar, %i.ay
  %i.ba = icmp samesign ule i64 %i.az, %i.j
  %i.bb = select i1 %.not15.i28, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.44)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.h
  %i.be = icmp ugt i32 %i.r, 8192
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull @.str.45)
  %.pre = load i32, ptr %i.ab, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = phi i32 [ %.pre, %bb.m ], [ %i.ac, %bb.l ]
  %i.bh = icmp ugt i32 %i.bg, 256
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, ptr noundef nonnull @.str.46)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = load i32, ptr %i.am, align 4
  %i.bk = icmp ugt i32 %i.bj, 4096
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull @.str.47)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp ugt i32 %i.bn, 1024
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull @.str.48)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void

bb.u:                                             ; preds = %bb.k, %bb.d
  %.sink = phi ptr [ %i.bc, %bb.k ], [ %i.l, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.m, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp11MD3Importer7GetInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD3Importer15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(296) initializes((72, 77)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.49, i32 noundef -1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %i.a, ptr %i.b, align 8
  %i.c = icmp eq i32 %i.a, -1
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.50, i32 noundef 0)
  store i32 %i.d, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.e = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.51, i32 noundef 1)
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, ptr noundef nonnull align 1 dereferenceable(7) @.str.53, i64 7, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.k, align 1
  invoke void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %2, align 8                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  br i1 %i.r, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %2, %i.l
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %6, !prof !10

6:                                                ; preds = %bb.d
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %6
  %i.v = load i8, ptr %i.p, align 1
  store i8 %i.v, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %6
  %i.w = load i64, ptr %i.s, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.p, ptr %i.l, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ac, ptr %i.aa, align 8
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8
  store ptr %i.p, ptr %i.l, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load <2 x i64>, ptr %i.ae, align 8
  store <2 x i64> %i.ag, ptr %i.af, align 8
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %2, align 8
  store i64 %i.ad, ptr %i.q, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %7 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.m, %bb.g ], [ %i.q, %bb.h ], [ %i.p, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %7, align 1
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.i, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ar = call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.54, i32 noundef 1)
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = zext i1 %i.as to i8
  store i8 %i.au, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.av, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.aw, align 8
  store i8 0, ptr %i.av, align 8
  invoke void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  %i.bb = load ptr, ptr %4, align 8               ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i29: ; preds = %bb.i
  br i1 %i.bd, label %bb.j, label %.thread.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23: ; preds = %bb.i
  br i1 %i.bd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i29
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %.not21.i26 = icmp eq ptr %4, %i.ax
  br i1 %.not21.i26, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31, label %8, !prof !10

8:                                                ; preds = %bb.j
  switch i64 %i.bf, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %8
  %i.bh = load i8, ptr %i.bb, align 1
  store i8 %i.bh, ptr %i.ay, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27

bb.l:                                             ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bb, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27: ; preds = %bb.l, %bb.k, %8
  %i.bi = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.ax, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1
  %.pre.i28 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31

.thread.i30:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i29
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bb, ptr %i.ax, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load <2 x i64>, ptr %i.bn, align 8
  store <2 x i64> %i.bo, ptr %i.bm, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23
  %i.bp = load i64, ptr %i.az, align 8
  store ptr %i.bb, ptr %i.ax, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load <2 x i64>, ptr %i.bq, align 8
  store <2 x i64> %i.bs, ptr %i.br, align 8
  %.not.i25 = icmp eq ptr %i.ay, null
  br i1 %.not.i25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24
  store ptr %i.ay, ptr %4, align 8
  store i64 %i.bp, ptr %i.bc, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24, %.thread.i30
  store ptr %i.bc, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27, %bb.m, %bb.n
  %9 = phi ptr [ %.pre.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27 ], [ %i.ay, %bb.m ], [ %i.bc, %bb.n ], [ %i.bb, %bb.j ]
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bt, align 8
  store i8 0, ptr %9, align 1
  %i.bu = load ptr, ptr %4, align 8               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31
  %i.bx = load i64, ptr %i.bv, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.bz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.av
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cb = load i64, ptr %i.av, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cd = call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.57, i32 noundef 0)
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cg = zext i1 %i.ce to i8
  store i8 %i.cg, ptr %i.cf, align 8
  ret void

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %3, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.i
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.o
  %i.ck = load i64, ptr %i.i, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %5, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.av
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.p
  %i.cp = load i64, ptr %i.av, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn13.pn = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %.pn13.pn
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11MD3Importer8ReadSkinERNS_8Q3Shader8SkinDataE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 noundef signext 95, i64 noundef -1) #24 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 noundef signext 46, i64 noundef -1) #24 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.010 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load i64, ptr %i.j, align 8, !noalias !41
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.l, ptr %6, align 8, !alias.scope !41
  %i.m = load ptr, ptr %i.b, align 8, !noalias !41 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.010, i64 %i.k) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !41
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !noalias !41
  %i.n = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.n, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %6, align 8, !alias.scope !41
  %i.p = load i64, ptr %i.a, align 8, !noalias !41
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !41
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc10.i.i ], [ %i.l, %bb.d ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.m, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.m, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !noalias !41 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !41
  %i.u = load ptr, ptr %6, align 8, !alias.scope !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !41
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load i64, ptr %i.w, align 8, !noalias !44
  %i.y = load ptr, ptr %i.i, align 8, !noalias !44
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.x)
          to label %.noexc unwind label %bb.s     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aa, ptr %5, align 8, !alias.scope !44
  %i.ab = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ab, ptr %5, align 8, !alias.scope !44
  %i.ai = load i64, ptr %i.ac, align 8
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !44
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.aj = phi i64 [ %i.af, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.al, align 8, !alias.scope !44
  store ptr %i.ac, ptr %i.z, align 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.ac, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.am = load i64, ptr %i.al, align 8, !noalias !47
  %i.an = icmp eq i64 %i.am, 4611686018427387903
  br i1 %i.an, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #26
          to label %.noexc21 unwind label %bb.t
end_hunk_0
begin_hunk_1_@_Z18SetGenericPropertyIiEbRSt3mapIjT_St4lessIjESaISt4pairIKjS1_EEEPKcRKS1_:bb.a
_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 40) #25
  resume { ptr, i32 } %i.ds

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 40) #25
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit

bb.m:                                             ; preds = %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit
  %i.dt = load i32, ptr %2, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  store i32 %i.dt, ptr %i.du, align 4
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_.exit: ; preds = %bb.h, %.thread.i, %bb.l, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %.thread.i ], [ false, %bb.h ]
  ret i1 %.0
}

declare void @_ZN6Assimp11BatchLoaderC1EPNS_8IOSystemEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare noundef i32 @_ZN6Assimp11BatchLoader14AddLoadRequestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjPKNS0_11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6Assimp11BatchLoader7LoadAllEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168)) unnamed_addr #1

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

declare noundef ptr @_ZN6Assimp11BatchLoader9GetImportEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6Assimp11BatchLoaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BatchLoader11PropertyMapD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit: ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit: ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.q)
          to label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev.exit: ; preds = %_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11MD3Importer11ConvertPathEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 92) #28 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026 = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.c = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 92) #28 ; 2 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #28 ; 2 uses
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.02540 = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.026 to i64
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call i32 @strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.78, i64 noundef 6) #28
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.h [
    i8 47, label %bb.f
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.k = load i8, ptr %2, align 1
  %.not33 = icmp eq i8 %i.k, 0
  br i1 %.not33, label %bb.g, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.02540, i64 1
  br label %.critedge

bb.h:                                             ; preds = %.thread, %bb.e
  %i.m = ptrtoint ptr %.02540 to i64
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.m, %i.n
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.g) ; 2 uses
  %i.p = and i64 %.sroa.speculated, 4294967295
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit:         ; preds = %bb.f, %bb.h
  %.02448 = phi i64 [ %.sroa.speculated, %bb.h ], [ 6, %bb.f ]
  %i.q = and i64 %.02448, 4294967295
  %i.r = tail call i32 @strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.q) #28
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread, label %.critedge

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread:  ; preds = %bb.h, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.02540, i64 1
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit, %bb.g, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread
  %.sink57 = phi ptr [ %i.l, %bb.g ], [ %i.s, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread ], [ %1, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit ], [ %1, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink57) #24
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.u, ptr noundef nonnull %.sink57, i64 noundef %i.v) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD3Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.Assimp::Q3Shader::SkinData", align 8 ; 22 uses
  %9 = alloca %"struct.Assimp::Q3Shader::ShaderData", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %13 = alloca %struct.aiColor3D, align 8         ; 9 uses
  %14 = alloca %struct.aiString, align 4          ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %struct.aiString, align 4          ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %3, ptr %i.k, align 8
  %i.l = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull @.str.79, i64 noundef -1, i64 noundef 2) #24
  %i.m = add i64 %i.l, 1                          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !204 ; 3 uses
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.113, i64 noundef %i.m, i64 noundef %i.o) #26, !noalias !204
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.q, ptr %5, align 8, !alias.scope !204
  %i.r = load ptr, ptr %i.i, align 8, !noalias !204
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m ; 2 uses
  %i.t = sub nuw i64 %i.o, %i.m                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !204
  store i64 %i.t, ptr %i.f, align 8, !noalias !204
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %5, align 8, !alias.scope !204
  %i.w = load i64, ptr %i.f, align 8, !noalias !204
  store i64 %i.w, ptr %i.q, align 8, !alias.scope !204
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.x = phi ptr [ %i.v, %.noexc10.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.s, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.z = load i64, ptr %i.f, align 8, !noalias !204 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.z, ptr %i.aa, align 8, !alias.scope !204
  %i.ab = load ptr, ptr %5, align 8, !alias.scope !204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !204
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = load ptr, ptr %5, align 8               ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %i.q                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ai, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %.not21.i = icmp eq ptr %5, %i.ad
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %23, !prof !10

23:                                               ; preds = %bb.e
  switch i64 %i.aj, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %23
  %i.al = load i8, ptr %i.ah, align 1
  store i8 %i.al, ptr %i.ae, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %23
  %i.am = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.ad, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1
  %.pre.i = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.ah, ptr %i.ad, align 8
  %i.ar = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.ar, ptr %i.aq, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.as = load i64, ptr %i.af, align 8
  store ptr %i.ah, ptr %i.ad, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.au = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.au, ptr %i.at, align 8
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ae, ptr %5, align 8
  store i64 %i.as, ptr %i.q, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %24 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ae, %bb.h ], [ %i.q, %bb.i ], [ %i.ah, %bb.e ]
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %24, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.av = load i64, ptr %i.n, align 8, !noalias !207
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.aw, ptr %6, align 8, !alias.scope !207
  %i.ax = load ptr, ptr %i.i, align 8, !noalias !207 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.av) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !207
  store i64 %spec.select.i.i.i, ptr %i.e, align 8, !noalias !207
  %i.ay = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ay, label %.noexc10.i.i304, label %._crit_edge.i.i.i303

.noexc10.i.i304:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i304
  store ptr %i.az, ptr %6, align 8, !alias.scope !207
  %i.ba = load i64, ptr %i.e, align 8, !noalias !207
  store i64 %i.ba, ptr %i.aw, align 8, !alias.scope !207
  br label %._crit_edge.i.i.i303

._crit_edge.i.i.i303:                             ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bb = phi ptr [ %i.az, %.noexc ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i303
  %i.bc = load i8, ptr %i.ax, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i303
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.ax, i64 %spec.select.i.i.i, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i303
  %i.bd = load i64, ptr %i.e, align 8, !noalias !207 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !207
  %i.bf = load ptr, ptr %6, align 8, !alias.scope !207
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !207
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  %i.bl = load ptr, ptr %6, align 8               ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw                ; 2 uses
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i312: ; preds = %bb.l
  br i1 %i.bm, label %bb.m, label %.thread.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306: ; preds = %bb.l
  br i1 %i.bm, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i312
  %i.bn = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %.not21.i309 = icmp eq ptr %6, %i.bh
  br i1 %.not21.i309, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314, label %25, !prof !10

25:                                               ; preds = %bb.m
  switch i64 %i.bn, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i310
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %25
  %i.bp = load i8, ptr %i.bl, align 1
  store i8 %i.bp, ptr %i.bi, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i310

bb.o:                                             ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i310: ; preds = %bb.o, %bb.n, %25
  %i.bq = load i64, ptr %i.be, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.bh, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1
  %.pre.i311 = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314

.thread.i313:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i312
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bv = load <2 x i64>, ptr %i.be, align 8
  store <2 x i64> %i.bv, ptr %i.bu, align 8
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306
  %i.bw = load i64, ptr %i.bj, align 8
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.by = load <2 x i64>, ptr %i.be, align 8
  store <2 x i64> %i.by, ptr %i.bx, align 8
  %.not.i308 = icmp eq ptr %i.bi, null
  br i1 %.not.i308, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307
  store ptr %i.bi, ptr %6, align 8
  store i64 %i.bw, ptr %i.aw, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307, %.thread.i313
  store ptr %i.aw, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i310, %bb.p, %bb.q
  %26 = phi ptr [ %.pre.i311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i310 ], [ %i.bi, %bb.p ], [ %i.aw, %bb.q ], [ %i.bl, %bb.m ]
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %26, align 1
  %i.bz = load ptr, ptr %6, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.aw
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314
  %i.cb = load i64, ptr %i.aw, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit314, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cd = load ptr, ptr %5, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.q
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.q, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %.not530786 = icmp samesign eq i64 %i.ci, 0
  br i1 %.not530786, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %i.cj = load ptr, ptr %i.ad, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cl = load i8, ptr %i.ck, align 4, !range !200, !noundef !201
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.s, label %._crit_edge.i.i

bb.r:                                             ; preds = %.noexc10.i.i304
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.co = load ptr, ptr %5, align 8               ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.q
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.r
  %i.cq = load i64, ptr %i.q, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit452

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0505.0787 = phi ptr [ %i.cw, %.lr.ph ], [ %i.cj, %.lr.ph.preheader ] ; 3 uses
  %i.cs = load i8, ptr %.sroa.0505.0787, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = call i32 @tolower(i32 noundef %i.ct) #28
  %i.cv = trunc i32 %i.cu to i8
  store i8 %i.cv, ptr %.sroa.0505.0787, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0505.0787, i64 1 ; 2 uses
  %i.cx = load ptr, ptr %i.ad, align 8
  %i.cy = load i64, ptr %i.ch, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  %.not530.a = icmp eq ptr %i.cw, %i.cz
  br i1 %.not530.a, label %._crit_edge, label %.lr.ph, !llvm.loop !210

bb.s:                                             ; preds = %._crit_edge
  %i.da = call noundef zeroext i1 @_ZN6Assimp11MD3Importer17ReadMultipartFileEv(ptr noundef nonnull align 8 dereferenceable(296) %0)
  br i1 %i.da, label %bb.gj, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.db, ptr %7, align 8
  store i16 25202, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.dd, align 2
  %i.de = load ptr, ptr %1, align 8
  %i.df = load ptr, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.de, ptr noundef nonnull %i.db)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.u, !inline_history !3 ; 9 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.dj = load ptr, ptr %7, align 8               ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.db
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.dl = load i64, ptr %i.db, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not.i326 = icmp eq ptr %i.di, null            ; 2 uses
  br i1 %.not.i326, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 1 dereferenceable(25) @.str.81, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.82)
          to label %.invoke unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit449.thread528

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8               ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.db
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.u
  %i.dr = load i64, ptr %i.db, align 8
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit452

_ZNSt6vectorIhSaIhEED2Ev.exit449.thread528:       ; preds = %bb.t
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dn) #24
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit452

bb.v:                                             ; preds = %.invoke, %bb.w
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit449

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.dv = load ptr, ptr %i.di, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.x unwind label %bb.v       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i32 %i.dz, ptr %i.ea, align 8
  %i.eb = and i64 %i.dy, 4294967292
  %i.ec = icmp samesign ult i64 %i.eb, 108
  br i1 %i.ec, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ed = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull @.str.83)
          to label %.invoke unwind label %bb.z

.invoke:                                          ; preds = %bb.t, %bb.y
  %i.ee = phi ptr [ %i.ed, %bb.y ], [ %i.dn, %bb.t ]
  invoke void @__cxa_throw(ptr nonnull %i.ee, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ed) #24
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i451

bb.aa:                                            ; preds = %bb.x
  %i.eg = and i64 %i.dy, 4294967295               ; 6 uses
  %.not.i.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #27
          to label %.noexc330 unwind label %bb.ag ; 8 uses

.noexc330:                                        ; preds = %bb.aa
  store i8 0, ptr %i.eh, align 1
  %i.ei = add nsw i64 %i.eg, -1                   ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc330
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ek, i8 0, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.ab, %.noexc330
  %i.el = load ptr, ptr %i.di, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef i64 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %i.eh, i64 noundef 1, i64 noundef %i.eg)
          to label %bb.ac unwind label %bb.ah     ; 0 uses

bb.ac:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
end_hunk_1
