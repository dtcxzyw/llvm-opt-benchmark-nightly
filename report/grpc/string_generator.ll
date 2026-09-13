Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/string_generator?download=true
inline.NumInlined: 350
inline.NumDeleted: 201
begin_hunk_0_@_ZN3re215StringGenerator4NextEv:bb.a
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !65
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.av, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.04 = phi ptr [ %i.j, %bb.f ], [ %i.aw, %bb.l ]
  ret ptr %.04
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #24
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3re215StringGenerator6RandomEii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((80, 81), (113, 114), (116, 128)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = sext i32 %1 to i64
  %i.c = urem i64 %i.b, 2147483647
  %storemerge.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1)
  store i64 %storemerge.i, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 1, ptr %i.d, align 1, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %2, ptr %i.e, align 4, !tbaa !33
  %i.f = icmp sgt i32 %2, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3re215StringGenerator12GenerateNULLEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((80, 81), (112, 113)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.b, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re214DeBruijnStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %3 = alloca %class.LogMessageFatal, align 8     ; 5 uses
  %4 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %5 = alloca %class.LogMessageFatal, align 8     ; 6 uses
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull @.str, i32 noundef 115)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 30
  br i1 %i.e, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull @.str, i32 noundef 116)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #24
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = shl nuw nsw i64 1, %i.i                  ; 5 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = add nuw nsw i64 %i.j, 63                 ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741816
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = lshr i64 %i.l, 3
  %.idx.i = and i64 %i.p, 1073741816              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %.idx.i, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.r, align 8, !tbaa !31
  store i8 0, ptr %i.q, align 8, !tbaa !32
  %i.s = add nuw nsw i64 %i.j, %i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s)
          to label %.preheader84 unwind label %bb.j

.preheader84:                                     ; preds = %bb.i
  %i.t = add nsw i32 %1, -1                       ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %.not89 = icmp eq i32 %i.t, 0
  br i1 %.not89, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %bb.l, %.preheader84
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph:                                           ; preds = %.preheader84, %bb.l
  %.02586 = phi i64 [ %i.ai, %bb.l ], [ 0, %.preheader84 ]
  %i.w = load i64, ptr %i.r, align 8, !tbaa !31   ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.q
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph
  %i.aa = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ae = phi ptr [ %.pre.i.i, %.noexc ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 48, ptr %i.af, align 1, !tbaa !32
  store i64 %i.x, ptr %i.r, align 8, !tbaa !31
  %i.ag = load ptr, ptr %0, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store i8 0, ptr %i.ah, align 1, !tbaa !32
  %i.ai = add nuw nsw i64 %.02586, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.u
  br i1 %exitcond.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !66

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %bb.y
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !31
  %i.al = add nuw nsw i64 %i.j, %i.u
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.z

.preheader:                                       ; preds = %.preheader.preheader, %bb.y
  %.088 = phi i64 [ %i.bz, %bb.y ], [ 0, %.preheader.preheader ]
  %.02487 = phi i64 [ %.1, %bb.y ], [ 0, %.preheader.preheader ]
  %i.an = shl i64 %.02487, 1
  %i.ao = and i64 %i.an, %i.k                     ; 6 uses
  %i.ap = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.aq = lshr i64 %i.ao, 6                       ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aq
  %6 = and i64 %i.ap, -9223372036854775745
  %i.as = and i64 %i.ap, 63
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.av = and i64 %i.au, %i.at
  %.not = icmp eq i64 %i.av, 0
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !31  ; 7 uses
  %i.ax = add i64 %i.aw, 1                        ; 6 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.az = icmp eq ptr %i.ay, %i.q                 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.preheader
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45: ; preds = %bb.o
  %i.ba = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ba)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.o
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45
  %i.bc = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45 ]
  %i.bd = icmp ugt i64 %i.ax, %i.bc
  br i1 %i.bd, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc46 unwind label %bb.q

.noexc46:                                         ; preds = %bb.p
  %.pre.i.i44 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43, %.noexc46
  %i.be = phi ptr [ %.pre.i.i44, %.noexc46 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i8 49, ptr %i.bf, align 1, !tbaa !32
  store i64 %i.ax, ptr %i.r, align 8, !tbaa !31
  %i.bg = load ptr, ptr %0, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ax
  store i8 0, ptr %i.bh, align 1, !tbaa !32
  br label %bb.t

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %.preheader
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i51: ; preds = %bb.r
  %i.bj = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.r
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i51
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i51 ]
  %i.bm = icmp ugt i64 %i.ax, %i.bl
  br i1 %i.bm, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc52 unwind label %bb.q

.noexc52:                                         ; preds = %bb.s
  %.pre.i.i50 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49, %.noexc52
  %i.bn = phi ptr [ %.pre.i.i50, %.noexc52 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i49 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.aw
  store i8 48, ptr %i.bo, align 1, !tbaa !32
  store i64 %i.ax, ptr %i.r, align 8, !tbaa !31
  %i.bp = load ptr, ptr %0, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ax
  store i8 0, ptr %i.bq, align 1, !tbaa !32
  %.pre103 = lshr i64 %i.ao, 6
  %.pre91 = and i64 %i.ao, -9223372036854775746
  %.pre93 = and i64 %i.ao, 62
  %.pre95 = shl nuw nsw i64 1, %.pre93
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53
  %.pre-phi96 = phi i64 [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ], [ %.pre95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53 ] ; 2 uses
  %.pre-phi92 = phi i64 [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ], [ %.pre91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53 ]
  %.pre-phi = phi i64 [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ], [ %.pre103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53 ]
  %.1 = phi i64 [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit53 ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.pre-phi
  %i.br = icmp ugt i64 %.pre-phi92, -9223372036854775808
  %storemerge.idx.i.i.i.i.i54 = select i1 %i.br, i64 -8, i64 0
  %storemerge.i.i.i.i.i55 = getelementptr inbounds i8, ptr %7, i64 %storemerge.idx.i.i.i.i.i54 ; 2 uses
  %i.bs = load i64, ptr %storemerge.i.i.i.i.i55, align 8, !tbaa !47 ; 2 uses
  %i.bt = and i64 %.pre-phi96, %i.bs
  %.not82 = icmp eq i64 %i.bt, 0
  br i1 %.not82, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull @.str, i32 noundef 134)
          to label %_ZN15LogMessageFatalC2EPKci.exit unwind label %bb.w

_ZN15LogMessageFatalC2EPKci.exit:                 ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.4)
          to label %bb.v unwind label %bb.x       ; 0 uses

bb.v:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #24
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ad

bb.x:                                             ; preds = %_ZN15LogMessageFatalC2EPKci.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #24
  unreachable

bb.y:                                             ; preds = %bb.t
  %i.by = or i64 %.pre-phi96, %i.bs
  store i64 %i.by, ptr %storemerge.i.i.i.i.i55, align 8, !tbaa !47
  %i.bz = add nuw nsw i64 %.088, 1                ; 2 uses
  %exitcond90.not = icmp eq i64 %i.bz, %i.j
  br i1 %exitcond90.not, label %bb.n, label %.preheader, !llvm.loop !67

bb.z:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %5, ptr noundef nonnull @.str, i32 noundef 137)
          to label %_ZN15LogMessageFatalC2EPKci.exit64 unwind label %bb.ab

_ZN15LogMessageFatalC2EPKci.exit64:               ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.5)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %_ZN15LogMessageFatalC2EPKci.exit64
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #24
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN15LogMessageFatalC2EPKci.exit64
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #24
  unreachable

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %.idx.i) #22
  ret void

bb.ad:                                            ; preds = %bb.ab, %bb.w, %bb.q, %bb.m, %bb.j
  %.pn37 = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.v, %bb.j ], [ %i.cc, %bb.ab ], [ %i.bi, %bb.q ], [ %i.bw, %bb.w ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.q
  br i1 %i.cf, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.cg = load i64, ptr %i.q, align 8, !tbaa !32
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit66

_ZNSt13_Bvector_baseISaIbEED2Ev.exit66:           ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %.idx.i) #22
  resume { ptr, i32 } %.pn37
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.d
  ret void

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #23
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !30, !alias.scope !83
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !31, !alias.scope !83
  store i8 0, ptr %i.c, align 8, !tbaa !32, !alias.scope !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !83 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !83 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85, !noalias !83 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !46, !alias.scope !83 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !32, !alias.scope !83
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
end_hunk_0
