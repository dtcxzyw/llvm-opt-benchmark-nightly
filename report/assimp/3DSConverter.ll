inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter13ConvertMeshesEP7aiScene:bb.a
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ly, align 8
  %.not226 = icmp eq i32 %i.x, 0
  br i1 %.not226, label %._crit_edge223, label %.lr.ph222

._crit_edge223:                                   ; preds = %.lr.ph222, %bb.aq
  br i1 %.050.lcssa, label %bb.as, label %bb.av

bb.ar:                                            ; preds = %bb.at, %._crit_edge215
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.lr.ph222:                                        ; preds = %bb.aq, %.lr.ph222
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph222 ], [ 0, %bb.aq ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.0.lcssa, i64 %indvars.iv
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = load ptr, ptr %i.ly, align 8
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv
  store ptr %i.mb, ptr %i.md, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.me = load i32, ptr %i.y, align 8
  %i.mf = zext i32 %i.me to i64
  %i.mg = icmp samesign ult i64 %indvars.iv.next, %i.mf
  br i1 %i.mg, label %.lr.ph222, label %._crit_edge223, !llvm.loop !20

bb.as:                                            ; preds = %._crit_edge223
  %i.mh = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mh, ptr noundef nonnull @.str.24)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr nonnull %i.mh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.az unwind label %bb.ar

bb.au:                                            ; preds = %bb.as
  %i.mi = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.mh) #24
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge223
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i84 = icmp eq ptr %.sroa.0120.0.lcssa, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mj = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.mk = sub i64 %i.mj, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0.lcssa, i64 noundef %i.mk) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.av, %bb.aw
  ret void

bb.ax:                                            ; preds = %bb.ap, %bb.ar, %bb.au
  %.sroa.19.7 = phi ptr [ %.sroa.19.6, %bb.ap ], [ %.sroa.19.0.lcssa, %bb.ar ], [ %.sroa.19.0.lcssa, %bb.au ]
  %.sroa.0120.7 = phi ptr [ %.sroa.0120.6, %bb.ap ], [ %.sroa.0120.0.lcssa, %bb.ar ], [ %.sroa.0120.0.lcssa, %bb.au ] ; 3 uses
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.ap ], [ %i.lz, %bb.ar ], [ %i.mi, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not.i.i.i85 = icmp eq ptr %.sroa.0120.7, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit86, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ml = ptrtoint ptr %.sroa.19.7 to i64
  %i.mm = ptrtoint ptr %.sroa.0120.7 to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.7, i64 noundef %i.mn) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit86

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit86:         ; preds = %bb.ax, %bb.ay
  resume { ptr, i32 } %.pn68.pn.pn.pn

bb.az:                                            ; preds = %bb.at
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = mul i64 %i.c, 24                      ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.c, %.preheader.i
  %i.n = icmp eq ptr %i.g, %i.a
  br i1 %i.n, label %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.b
  %i.o = add i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.o) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_St6vectorIjSaIjEEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
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
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree nonnull readnone align 4 captures(none) %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i:
  %5 = alloca %class.aiMatrix4x4t, align 4        ; 10 uses
  %i.a = alloca [12 x i8], align 1                ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not441 = icmp eq i32 %i.e, 0
  br i1 %.not441, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.i = icmp eq ptr %.sroa.0349.1, %.sroa.16359.1
  br i1 %i.i, label %._crit_edge.thread, label %bb.g

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.0349.0399 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.0349.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 8 uses
  %.sroa.16359.0398 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.16359.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 8 uses
  %.sroa.26.0397 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.26.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i64, ptr %i.h, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = load ptr, ptr %i.g, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.v, ptr %i.u, i64 %i.p)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.not.i = icmp eq ptr %.sroa.16359.0398, %.sroa.26.0397
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.x = trunc nuw i64 %indvars.iv to i32
  store i32 %i.x, ptr %.sroa.16359.0398, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.16359.0398, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.z = ptrtoint ptr %.sroa.16359.0398 to i64
  %i.aa = ptrtoint ptr %.sroa.0349.0399 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
          to label %.noexc254 unwind label %.loopexit.split-lp

.noexc254:                                        ; preds = %bb.e
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc255 unwind label %.loopexit386 ; 4 uses

.noexc255:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  store i32 %i.al, ptr %i.ak, align 4
  %i.am = icmp sgt i64 %i.ab, 0
  br i1 %i.am, label %bb.f, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc255
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %.sroa.0349.0399, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc255
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0349.0399, i64 noundef %i.ab) #26
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit386:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.26.1 = phi ptr [ %.sroa.26.0397, %bb.c ], [ %.sroa.26.0397, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.26.0397, %bb.a ] ; 4 uses
  %.sroa.16359.1 = phi ptr [ %i.y, %bb.c ], [ %.sroa.16359.0398, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.16359.0398, %bb.a ] ; 3 uses
  %.sroa.0349.1 = phi ptr [ %.sroa.0349.0399, %bb.c ], [ %.sroa.0349.0399, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0349.0399, %bb.a ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.d, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.a, label %._crit_edge, !llvm.loop !21

bb.g:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load i32, ptr %.sroa.0349.1, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 64, i1 false)
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 156
  %.sroa.8335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 160 ; 2 uses
  %.sroa.8335.0.copyload = load float, ptr %.sroa.8335.0..sroa_idx, align 8
  %.sroa.11337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 164
  %.sroa.14339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 168 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 172
  %.sroa.18341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 176 ; 2 uses
  %.sroa.18341.0.copyload = load float, ptr %.sroa.18341.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 180
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 184 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 192 ; 2 uses
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 196
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 204
  %i.bb = load <2 x float>, ptr %i.ba, align 8
  %i.bc = load <2 x float>, ptr %.sroa.14339.0..sroa_idx, align 8
  %i.bd = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 8
  %i.be = load <2 x float>, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 2 uses
  %.sroa.38.0.copyload = load float, ptr %.sroa.38.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 212
  %i.bf = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %5)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.bh = load <2 x float>, ptr %i.bg, align 8    ; 3 uses
  %.sroa.8330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 240
  %.sroa.8330.0.copyload = load float, ptr %.sroa.8330.0..sroa_idx, align 8 ; 2 uses
  %i.bi = ptrtoint ptr %.sroa.16359.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0349.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 2                 ; 3 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.bm, ptr %i.bn, align 8
  %i.bo = icmp ugt i64 %i.bl, 4611686018427387903
  %i.bp = select i1 %i.bo, i64 -1, i64 %i.bk
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #28
          to label %.lr.ph421 unwind label %bb.j

.lr.ph421:                                        ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bw = extractelement <2 x float> %i.bh, i64 0
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %i.by = extractelement <2 x float> %i.bh, i64 1
  %i.bz = fcmp une float %i.by, 0.000000e+00
  %or.cond = select i1 %i.bx, i1 true, i1 %i.bz
  %i.ca = fcmp une float %.sroa.8330.0.copyload, 0.000000e+00
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ca
  br label %bb.k

._crit_edge422:                                   ; preds = %.loopexit385
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %._crit_edge.thread

bb.i:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph421, %.loopexit385
  %i.cd = phi i64 [ 0, %.lr.ph421 ], [ %i.ia, %.loopexit385 ] ; 2 uses
  %.0214419 = phi i32 [ 0, %.lr.ph421 ], [ %i.hz, %.loopexit385 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0349.1, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = load ptr, ptr %i.as, align 8
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.l, label %.loopexit385

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %.idx = mul nuw nsw i64 %i.cr, 12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %.not403 = icmp eq i32 %i.cq, 0
  br i1 %.not403, label %._crit_edge408, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %bb.l
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %.lr.ph407
  %.0217405 = phi ptr [ %i.ea, %.lr.ph407 ], [ %i.co, %.lr.ph407.preheader ] ; 5 uses
  %.0220404 = phi ptr [ %i.eb, %.lr.ph407 ], [ %i.cu, %.lr.ph407.preheader ] ; 5 uses
  %i.cv = load float, ptr %.0217405, align 4      ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.0217405, i64 4
  %i.cw = load float, ptr %7, align 4             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0217405, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4          ; 2 uses
  %8 = load <8 x float>, ptr %5, align 4          ; 4 uses
  %9 = insertelement <2 x float> poison, float %i.cw, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <8 x float> %8, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %12 = fmul <2 x float> %10, %11
  %13 = shufflevector <8 x float> %8, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.cv, i64 0
  %14 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %14, <2 x float> %12)
  %16 = shufflevector <8 x float> %8, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %17 = insertelement <2 x float> poison, float %i.cy, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %18, <2 x float> %15)
  %20 = shufflevector <8 x float> %8, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %21 = fadd <2 x float> %19, %20
  %i.cz = load float, ptr %i.bs, align 4
  %i.da = load float, ptr %i.bt, align 4
  %i.db = fmul float %i.cw, %i.da
  %i.dc = call float @llvm.fmuladd.f32(float %i.cz, float %i.cv, float %i.db)
  %i.dd = load float, ptr %i.bu, align 4
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.cy, float %i.dc)
  %i.df = load float, ptr %i.bv, align 4
  %i.dg = fadd float %i.df, %i.de
  store <2 x float> %21, ptr %.0217405, align 4
  store float %i.dg, ptr %i.cx, align 4
  %i.dh = load float, ptr %.0220404, align 4      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0220404, i64 4
  %i.dj = load float, ptr %i.di, align 4          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0220404, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4          ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.bc, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.dq, <2 x float> %i.do)
  %i.ds = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.dt, <2 x float> %i.dr)
  %i.dv = fadd <2 x float> %i.be, %i.du
  %i.dw = fmul float %.sroa.18341.0.copyload, %i.dj
  %i.dx = call float @llvm.fmuladd.f32(float %.sroa.8335.0.copyload, float %i.dh, float %i.dw)
  %i.dy = call float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.dl, float %i.dx)
  %i.dz = fadd float %.sroa.38.0.copyload, %i.dy
  store <2 x float> %i.dv, ptr %.0220404, align 4
  store float %i.dz, ptr %i.dk, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.0217405, i64 12 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0220404, i64 12
  %.not = icmp eq ptr %i.ea, %i.cs
  br i1 %.not, label %._crit_edge408, label %.lr.ph407, !llvm.loop !22

._crit_edge408:                                   ; preds = %.lr.ph407, %bb.l
  %i.ec = load float, ptr %i.ba, align 8          ; 3 uses
  %i.ed = load float, ptr %.sroa.17.0..sroa_idx, align 4 ; 3 uses
  %i.ee = fmul float %i.ec, %i.ed                 ; 2 uses
  %i.ef = load float, ptr %.sroa.30.0..sroa_idx, align 8 ; 4 uses
  %i.eg = fmul float %i.ee, %i.ef
  %i.eh = load float, ptr %.sroa.40.0..sroa_idx, align 4 ; 6 uses
  %i.ei = load float, ptr %.sroa.31.0..sroa_idx, align 4 ; 5 uses
  %i.ej = fmul float %i.ee, %i.ei
  %i.ek = load float, ptr %.sroa.38.0..sroa_idx, align 8 ; 6 uses
  %i.el = fneg float %i.ek
  %i.em = fmul float %i.ej, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.eg, float %i.eh, float %i.em)
  %i.eo = load float, ptr %.sroa.18341.0..sroa_idx, align 8 ; 3 uses
  %i.ep = fmul float %i.ec, %i.eo                 ; 2 uses
  %i.eq = fmul float %i.ei, %i.ep
  %i.er = load float, ptr %.sroa.36.0..sroa_idx, align 4 ; 6 uses
  %i.es = call float @llvm.fmuladd.f32(float %i.eq, float %i.er, float %i.en)
  %i.et = load float, ptr %.sroa.27.0..sroa_idx, align 4 ; 4 uses
  %i.eu = fneg float %i.et                        ; 3 uses
  %i.ev = fmul float %i.ep, %i.eu
  %i.ew = call float @llvm.fmuladd.f32(float %i.ev, float %i.eh, float %i.es)
  %i.ex = load float, ptr %.sroa.21.0..sroa_idx, align 4 ; 3 uses
  %i.ey = fmul float %i.ec, %i.ex                 ; 2 uses
  %i.ez = fmul float %i.et, %i.ey
  %i.fa = call float @llvm.fmuladd.f32(float %i.ez, float %i.ek, float %i.ew)
  %i.fb = fneg float %i.ef                        ; 3 uses
  %i.fc = fmul float %i.ey, %i.fb
  %i.fd = call float @llvm.fmuladd.f32(float %i.fc, float %i.er, float %i.fa)
  %i.fe = load float, ptr %.sroa.5333.0..sroa_idx, align 4 ; 3 uses
  %i.ff = fmul float %i.eo, %i.fe                 ; 2 uses
  %i.fg = load float, ptr %.sroa.34.0..sroa_idx, align 8 ; 6 uses
  %i.fh = fneg float %i.ei                        ; 2 uses
  %i.fi = fmul float %i.ff, %i.fh
  %i.fj = call float @llvm.fmuladd.f32(float %i.fi, float %i.fg, float %i.fd)
  %i.fk = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 4 uses
  %i.fl = fmul float %i.ff, %i.fk
  %i.fm = call float @llvm.fmuladd.f32(float %i.fl, float %i.eh, float %i.fj)
  %i.fn = fmul float %i.ex, %i.fe                 ; 2 uses
  %i.fo = fneg float %i.fk                        ; 3 uses
  %i.fp = fmul float %i.fn, %i.fo
  %i.fq = call float @llvm.fmuladd.f32(float %i.fp, float %i.ek, float %i.fm)
  %i.fr = fmul float %i.ef, %i.fn
  %i.fs = call float @llvm.fmuladd.f32(float %i.fr, float %i.fg, float %i.fq)
  %i.ft = load float, ptr %.sroa.14339.0..sroa_idx, align 8 ; 3 uses
  %i.fu = fmul float %i.fe, %i.ft                 ; 2 uses
  %i.fv = fmul float %i.fu, %i.fb
  %i.fw = call float @llvm.fmuladd.f32(float %i.fv, float %i.eh, float %i.fs)
  %i.fx = fmul float %i.ei, %i.fu
  %i.fy = call float @llvm.fmuladd.f32(float %i.fx, float %i.ek, float %i.fw)
  %i.fz = load float, ptr %.sroa.8335.0..sroa_idx, align 8 ; 3 uses
  %i.ga = fmul float %i.ex, %i.fz                 ; 2 uses
  %i.gb = fmul float %i.fk, %i.ga
  %i.gc = call float @llvm.fmuladd.f32(float %i.gb, float %i.er, float %i.fy)
  %i.gd = fmul float %i.ga, %i.eu
  %i.ge = call float @llvm.fmuladd.f32(float %i.gd, float %i.fg, float %i.gc)
  %i.gf = fmul float %i.ft, %i.fz                 ; 2 uses
  %i.gg = fmul float %i.et, %i.gf
  %i.gh = call float @llvm.fmuladd.f32(float %i.gg, float %i.eh, float %i.ge)
  %i.gi = fmul float %i.gf, %i.fh
  %i.gj = call float @llvm.fmuladd.f32(float %i.gi, float %i.er, float %i.gh)
  %i.gk = fmul float %i.ed, %i.fz                 ; 2 uses
  %i.gl = fmul float %i.ei, %i.gk
  %i.gm = call float @llvm.fmuladd.f32(float %i.gl, float %i.fg, float %i.gj)
  %i.gn = fmul float %i.gk, %i.fo
  %i.go = call float @llvm.fmuladd.f32(float %i.gn, float %i.eh, float %i.gm)
  %i.gp = load float, ptr %.sroa.11337.0..sroa_idx, align 4 ; 3 uses
  %i.gq = fmul float %i.ft, %i.gp                 ; 2 uses
  %i.gr = fmul float %i.gq, %i.eu
  %i.gs = call float @llvm.fmuladd.f32(float %i.gr, float %i.ek, float %i.go)
  %i.gt = fmul float %i.ef, %i.gq
  %i.gu = call float @llvm.fmuladd.f32(float %i.gt, float %i.er, float %i.gs)
  %i.gv = fmul float %i.ed, %i.gp                 ; 2 uses
  %i.gw = fmul float %i.gv, %i.fb
  %i.gx = call float @llvm.fmuladd.f32(float %i.gw, float %i.fg, float %i.gu)
  %i.gy = fmul float %i.fk, %i.gv
  %i.gz = call float @llvm.fmuladd.f32(float %i.gy, float %i.ek, float %i.gx)
  %i.ha = fmul float %i.eo, %i.gp                 ; 2 uses
  %i.hb = fmul float %i.ha, %i.fo
  %i.hc = call float @llvm.fmuladd.f32(float %i.hb, float %i.er, float %i.gz)
  %i.hd = fmul float %i.et, %i.ha
  %i.he = call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.fg, float %i.hc)
  %i.hf = fcmp olt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge408
  %i.hg = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not231409 = icmp eq ptr %i.hg, %i.cs
  br i1 %.not231409, label %._crit_edge414, label %.lr.ph413.preheader

.lr.ph413.preheader:                              ; preds = %bb.m
  %i.hh = load ptr, ptr %i.ct, align 8
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %.lr.ph413
  %.1218411 = phi ptr [ %i.hm, %.lr.ph413 ], [ %i.hg, %.lr.ph413.preheader ] ; 3 uses
  %.1221410 = phi ptr [ %i.hn, %.lr.ph413 ], [ %i.hh, %.lr.ph413.preheader ] ; 3 uses
  %i.hi = load float, ptr %.1218411, align 4
  %i.hj = fneg float %i.hi
  store float %i.hj, ptr %.1218411, align 4
  %i.hk = load float, ptr %.1221410, align 4
  %i.hl = fneg float %i.hk
  store float %i.hl, ptr %.1221410, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.1218411, i64 12 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1221410, i64 12
  %.not231 = icmp eq ptr %i.hm, %i.cs
  br i1 %.not231, label %._crit_edge414, label %.lr.ph413, !llvm.loop !23

bb.n:                                             ; preds = %bb.o, %._crit_edge414
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge414:                                   ; preds = %.lr.ph413, %bb.m
  %i.hp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.o unwind label %bb.n

bb.o:                                             ; preds = %._crit_edge414
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hp, ptr noundef nonnull @.str.25)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o, %._crit_edge408
  br i1 %or.cond5, label %bb.q, label %.loopexit385

bb.q:                                             ; preds = %bb.p
  %i.hq = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not234415 = icmp eq ptr %i.hq, %i.cs
  br i1 %.not234415, label %.loopexit385, label %.lr.ph418

.lr.ph418:                                        ; preds = %bb.q, %.lr.ph418
  %.2219416 = phi ptr [ %i.hw, %.lr.ph418 ], [ %i.hq, %bb.q ] ; 4 uses
  %i.hr = load <2 x float>, ptr %.2219416, align 4
  %i.hs = fsub <2 x float> %i.hr, %i.bh
  store <2 x float> %i.hs, ptr %.2219416, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %.2219416, i64 8 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = fsub float %i.hu, %.sroa.8330.0.copyload
  store float %i.hv, ptr %i.ht, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.2219416, i64 12 ; 2 uses
  %.not234 = icmp eq ptr %i.hw, %i.cs
  br i1 %.not234, label %.loopexit385, label %.lr.ph418, !llvm.loop !24

.loopexit385:                                     ; preds = %.lr.ph418, %bb.q, %bb.k, %bb.p
  store ptr inttoptr (i64 1 to ptr), ptr %i.ck, align 8
  %i.hx = load ptr, ptr %i.br, align 8
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.cd
  store i32 %i.cf, ptr %i.hy, align 4
  %i.hz = add i32 %.0214419, 1                    ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = icmp ugt i64 %i.bl, %i.ia
  br i1 %i.ib, label %bb.k, label %._crit_edge422, !llvm.loop !25

bb.r:                                             ; preds = %bb.j, %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.ho, %bb.n ], [ %i.cc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %._crit_edge422, %._crit_edge
  %.sroa.0349.0.lcssa530 = phi ptr [ %.sroa.0349.1, %._crit_edge ], [ %.sroa.0349.1, %._crit_edge422 ], [ %i.b, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.26.0.lcssa526 = phi ptr [ %.sroa.26.1, %._crit_edge ], [ %.sroa.26.1, %._crit_edge422 ], [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.id = load i32, ptr %i.ic, align 8            ; 2 uses
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.s
  %.153.i.i = phi ptr [ %.2.i.i, %bb.u ], [ %i.a, %bb.s ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.u ], [ false, %bb.s ]
  %.03051.i.i = phi i32 [ %i.io, %bb.u ], [ 1000000000, %bb.s ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uv, ptr align 1 %i.uw, i64 %i.ur, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ur
  store i8 0, ptr %i.ux, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271: ; preds = %bb.az, %bb.ba
  %i.uy = load ptr, ptr %i.oj, align 8            ; 3 uses
  %i.uz = load ptr, ptr %i.ok, align 8            ; 2 uses
  %i.va = icmp eq ptr %i.uy, %i.uz
  br i1 %i.va, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.vb = ptrtoint ptr %i.uz to i64
  %i.vc = ptrtoint ptr %i.uy to i64
  %i.vd = sub i64 %i.vb, %i.vc
  %i.ve = sdiv exact i64 %i.vd, 24                ; 2 uses
  %i.vf = trunc i64 %i.ve to i32
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tr, i64 1028
  store i32 %i.vf, ptr %i.vg, align 4
  %i.vh = and i64 %i.ve, 4294967295               ; 3 uses
  %i.vi = mul nuw nsw i64 %i.vh, 24               ; 2 uses
  %i.vj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vi) #28
          to label %bb.bc unwind label %bb.bf     ; 4 uses

bb.bc:                                            ; preds = %bb.bb
  %i.vk = icmp eq i64 %i.vh, 0
  br i1 %i.vk, label %.loopexit382, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.vj, i64 %i.vh
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %i.vm = phi ptr [ %i.vj, %bb.bd ], [ %i.vo, %bb.be ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vm, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.vn, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 24 ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.vl
  br i1 %i.vp, label %.loopexit382, label %bb.be

.loopexit382:                                     ; preds = %bb.be, %bb.bc
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tr, i64 1032
  store ptr %i.vj, ptr %i.vq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vj, ptr nonnull align 8 %i.uy, i64 %i.vi, i1 false)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bm, %bb.bh, %bb.bb, %._crit_edge434
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bg:                                            ; preds = %.loopexit382, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.vs = load ptr, ptr %i.kj, align 8            ; 5 uses
  %i.vt = load ptr, ptr %i.kk, align 8            ; 2 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %.loopexit380, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vs to i64
  %i.vx = sub i64 %i.vv, %i.vw                    ; 2 uses
  %i.vy = ashr exact i64 %i.vx, 5                 ; 3 uses
  %i.vz = trunc i64 %i.vy to i32                  ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tr, i64 1040 ; 2 uses
  store i32 %i.vz, ptr %i.wa, align 8
  %i.wb = and i64 %i.vy, 4294967295               ; 4 uses
  %i.wc = shl nuw nsw i64 %i.wb, 5
  %i.wd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wc) #28
          to label %bb.bi unwind label %bb.bf     ; 7 uses

bb.bi:                                            ; preds = %bb.bh
  %i.we = icmp eq i64 %i.wb, 0
  br i1 %i.we, label %.loopexit381, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.wf = getelementptr inbounds nuw [32 x i8], ptr %i.wd, i64 %i.wb
  %i.wg = add nuw nsw i64 %i.wb, 576460752303423487
  %i.wh = and i64 %i.wg, 576460752303423487
  %xtraiter = and i64 %i.vy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bj, %.prol.preheader
  %i.wi = phi ptr [ %i.wl, %.prol.preheader ], [ %i.wd, %bb.bj ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bj ]
  store double 0.000000e+00, ptr %i.wi, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.wj, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  store i32 1, ptr %i.wk, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !39

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bj
  %.unr = phi ptr [ %i.wd, %bb.bj ], [ %i.wl, %.prol.preheader ]
  %i.wm = icmp samesign ult i64 %i.wh, 7
  br i1 %i.wm, label %.loopexit381, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.wn = phi ptr [ %i.xl, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.wn, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.wo, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  store i32 1, ptr %i.wp, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  store double 0.000000e+00, ptr %i.wq, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.wr, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 56
  store i32 1, ptr %i.ws, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 64
  store double 0.000000e+00, ptr %i.wt, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wn, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.wu, align 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 88
  store i32 1, ptr %i.wv, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wn, i64 96
  store double 0.000000e+00, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wn, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.wx, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wn, i64 120
  store i32 1, ptr %i.wy, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wn, i64 128
  store double 0.000000e+00, ptr %i.wz, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wn, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xa, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wn, i64 152
  store i32 1, ptr %i.xb, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wn, i64 160
  store double 0.000000e+00, ptr %i.xc, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wn, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xd, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wn, i64 184
  store i32 1, ptr %i.xe, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wn, i64 192
  store double 0.000000e+00, ptr %i.xf, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wn, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wn, i64 216
  store i32 1, ptr %i.xh, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wn, i64 224
  store double 0.000000e+00, ptr %i.xi, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wn, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xj, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wn, i64 248
  store i32 1, ptr %i.xk, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wn, i64 256 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.wf
  br i1 %i.xm, label %.loopexit381, label %.new

.loopexit381:                                     ; preds = %.prol.loopexit, %.new, %bb.bi
  store ptr %i.wd, ptr %i.ug, align 8
  %.not445 = icmp eq i32 %i.vz, 0
  br i1 %.not445, label %.loopexit380, label %.lr.ph439.preheader

.lr.ph439.preheader:                              ; preds = %.loopexit381
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %.sroa.6.0.copyload.peel = load <2 x float>, ptr %.sroa.6.0..sroa_idx.peel, align 8 ; 5 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.sroa.0.0.copyload.peel = load <2 x float>, ptr %i.xn, align 8 ; 4 uses
  %i.xo = load double, ptr %i.vs, align 8
  store double %i.xo, ptr %i.wd, align 8
  %.sroa.0.4.vec.extract287.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 1 ; 2 uses
  %foldExtExtBinop549 = fmul <2 x float> %.sroa.6.0.copyload.peel, %.sroa.6.0.copyload.peel
  %i.xp = extractelement <2 x float> %foldExtExtBinop549, i64 0
  %i.xq = call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract287.peel, float %.sroa.0.4.vec.extract287.peel, float %i.xp)
  %.sroa.13.12.vec.extract297.peel = extractelement <2 x float> %.sroa.6.0.copyload.peel, i64 1 ; 2 uses
  %i.xr = call float @llvm.fmuladd.f32(float %.sroa.13.12.vec.extract297.peel, float %.sroa.13.12.vec.extract297.peel, float %i.xq)
  %.sroa.0.0.vec.extract281.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 0 ; 2 uses
  %i.xs = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract281.peel, float %.sroa.0.0.vec.extract281.peel, float %i.xr) ; 2 uses
  %i.xt = fcmp une float %i.xs, 0.000000e+00
  br i1 %i.xt, label %bb.bk, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

bb.bk:                                            ; preds = %.lr.ph439.preheader
  %sqrt.i.peel = call float @llvm.sqrt.f32(float %i.xs)
  %i.xu = fdiv float 1.000000e+00, %sqrt.i.peel
  %i.xv = insertelement <2 x float> poison, float %i.xu, i64 0
  %i.xw = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xx = fmul <2 x float> %.sroa.6.0.copyload.peel, %i.xw
  %i.xy = fmul <2 x float> %.sroa.0.0.copyload.peel, %i.xw
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel:      ; preds = %bb.bk, %.lr.ph439.preheader
  %.sroa.13.1.peel = phi <2 x float> [ %i.xx, %bb.bk ], [ %.sroa.6.0.copyload.peel, %.lr.ph439.preheader ] ; 2 uses
  %.sroa.0.1.peel = phi <2 x float> [ %i.xy, %bb.bk ], [ %.sroa.0.0.copyload.peel, %.lr.ph439.preheader ] ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store <2 x float> %.sroa.0.1.peel, ptr %i.xz, align 8
  %.sroa.13.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  store <2 x float> %.sroa.13.1.peel, ptr %.sroa.13.0..sroa_idx.peel, align 8
  %i.ya = and i64 %i.vx, 137438953408
  %.not522 = icmp eq i64 %i.ya, 0
  br i1 %.not522, label %.loopexit380, label %.lr.ph439.peel.next

.lr.ph439.peel.next:                              ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv458 = phi i64 [ %indvars.iv.next459, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ 1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.0.0369436 = phi <2 x float> [ %.sroa.0.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.0.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.13.0435 = phi <2 x float> [ %.sroa.13.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.13.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 5 uses
  %i.yb = load ptr, ptr %i.kj, align 8
  %i.yc = getelementptr inbounds nuw [32 x i8], ptr %i.yb, i64 %indvars.iv458 ; 3 uses
  %.sroa.13.12.vec.extract = extractelement <2 x float> %.sroa.13.0435, i64 1
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %22 = fneg float %.sroa.13.12.vec.extract
  %i.yf = load <2 x float>, ptr %i.yd, align 4    ; 4 uses
  %23 = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %24 = load <2 x float>, ptr %i.ye, align 4      ; 6 uses
  %i.yg = shufflevector <2 x float> %.sroa.0.0369436, <2 x float> %.sroa.13.0435, <2 x i32> <i32 1, i32 2>
  %i.yh = fneg <2 x float> %i.yg                  ; 2 uses
  %i.yi = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yj = fmul <2 x float> %.sroa.13.0435, %i.yi
  %i.yk = shufflevector <2 x float> %.sroa.0.0369436, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yk, <2 x float> %i.yf, <2 x float> %i.yj)
  %i.ym = shufflevector <2 x float> %.sroa.13.0435, <2 x float> %.sroa.0.0369436, <2 x i32> <i32 1, i32 3>
  %i.yn = shufflevector <2 x float> %24, <2 x float> %i.yf, <2 x i32> <i32 1, i32 2>
  %i.yo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ym, <2 x float> %i.yn, <2 x float> %i.yl)
  %25 = shufflevector <2 x float> %23, <2 x float> %24, <2 x i32> <i32 0, i32 3>
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yh, <2 x float> %25, <2 x float> %i.yo) ; 5 uses
  %i.yp = shufflevector <2 x float> %.sroa.0.0369436, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %27 = fneg <2 x float> %24
  %28 = shufflevector <2 x float> %27, <2 x float> %24, <2 x i32> <i32 1, i32 2>
  %i.yq = fmul <2 x float> %i.yp, %28
  %i.yr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yk, <2 x float> %24, <2 x float> %i.yq)
  %29 = shufflevector <2 x float> %i.yh, <2 x float> %.sroa.13.0435, <2 x i32> <i32 1, i32 2>
  %i.ys = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %i.yf, <2 x float> %i.yr)
  %i.yt = insertelement <2 x float> poison, float %22, i64 0
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %23, <2 x float> %i.ys) ; 4 uses
  %i.yw = load double, ptr %i.yc, align 8
  %i.yx = load ptr, ptr %i.ug, align 8
  %i.yy = getelementptr inbounds nuw [32 x i8], ptr %i.yx, i64 %indvars.iv458
  store double %i.yw, ptr %i.yy, align 8
  %foldExtExtBinop551 = fmul <2 x float> %26, %26
  %i.yz = extractelement <2 x float> %foldExtExtBinop551, i64 0
  %i.za = extractelement <2 x float> %i.yv, i64 1 ; 2 uses
  %i.zb = call float @llvm.fmuladd.f32(float %i.za, float %i.za, float %i.yz)
  %i.zc = extractelement <2 x float> %26, i64 1   ; 2 uses
  %i.zd = call float @llvm.fmuladd.f32(float %i.zc, float %i.zc, float %i.zb)
  %i.ze = extractelement <2 x float> %i.yv, i64 0 ; 2 uses
  %i.zf = call float @llvm.fmuladd.f32(float %i.ze, float %i.ze, float %i.zd) ; 2 uses
  %i.zg = fcmp une float %i.zf, 0.000000e+00
  br i1 %i.zg, label %bb.bl, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.bl:                                            ; preds = %.lr.ph439.peel.next
  %sqrt.i = call float @llvm.sqrt.f32(float %i.zf)
  %i.zh = fdiv float 1.000000e+00, %sqrt.i
  %i.zi = insertelement <2 x float> poison, float %i.zh, i64 0
  %i.zj = shufflevector <2 x float> %i.zi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zk = fmul <2 x float> %26, %i.zj
  %30 = fmul <2 x float> %i.yv, %i.zj
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %bb.bl, %.lr.ph439.peel.next
  %.sroa.13.1 = phi <2 x float> [ %i.zk, %bb.bl ], [ %26, %.lr.ph439.peel.next ] ; 2 uses
  %.sroa.0.1 = phi <2 x float> [ %30, %bb.bl ], [ %i.yv, %.lr.ph439.peel.next ] ; 2 uses
  %i.zl = load ptr, ptr %i.ug, align 8
  %i.zm = getelementptr inbounds nuw [32 x i8], ptr %i.zl, i64 %indvars.iv458 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  store <2 x float> %.sroa.0.1, ptr %i.zn, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  store <2 x float> %.sroa.13.1, ptr %.sroa.13.0..sroa_idx, align 8
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %i.zo = load i32, ptr %i.wa, align 8
  %i.zp = zext i32 %i.zo to i64
  %i.zq = icmp samesign ult i64 %indvars.iv.next459, %i.zp
  br i1 %i.zq, label %.lr.ph439.peel.next, label %.loopexit380, !llvm.loop !40

.loopexit380:                                     ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.loopexit381, %bb.bg
  %i.zr = load ptr, ptr %i.ms, align 8            ; 3 uses
  %i.zs = load ptr, ptr %i.mt, align 8            ; 2 uses
  %i.zt = icmp eq ptr %i.zr, %i.zs
  br i1 %i.zt, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %.loopexit380
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = ptrtoint ptr %i.zr to i64
  %i.zw = sub i64 %i.zu, %i.zv
  %i.zx = sdiv exact i64 %i.zw, 24                ; 2 uses
  %i.zy = trunc i64 %i.zx to i32
  store i32 %i.zy, ptr %i.uh, align 8
  %i.zz = and i64 %i.zx, 4294967295               ; 3 uses
  %i.aaa = mul nuw nsw i64 %i.zz, 24              ; 2 uses
  %i.aab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aaa) #28
          to label %bb.bn unwind label %bb.bf     ; 4 uses

bb.bn:                                            ; preds = %bb.bm
  %i.aac = icmp eq i64 %i.zz, 0
  br i1 %i.aac, label %.loopexit379, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aad = getelementptr inbounds nuw [24 x i8], ptr %i.aab, i64 %i.zz
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %i.aae = phi ptr [ %i.aab, %bb.bo ], [ %i.aag, %bb.bp ] ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aae, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.aaf, align 4
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 24 ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.aad
  br i1 %i.aah, label %.loopexit379, label %bb.bp

.loopexit379:                                     ; preds = %bb.bp, %bb.bn
  store ptr %i.aab, ptr %i.ui, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aab, ptr nonnull align 8 %i.zr, i64 %i.aaa, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit380, %.loopexit379, %bb.am
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8
  %i.aal = load ptr, ptr %i.aai, align 8
  %i.aam = ptrtoint ptr %i.aak to i64
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = sub i64 %i.aam, %i.aan
  %i.aap = lshr exact i64 %i.aao, 3               ; 2 uses
  %i.aaq = trunc i64 %i.aap to i32                ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i32 %i.aaq, ptr %i.aar, align 8
  %i.aas = icmp eq i32 %i.aaq, 0
  br i1 %i.aas, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aat = load ptr, ptr %i.aaj, align 8
  %i.aau = load ptr, ptr %i.aai, align 8
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  %i.aay = call i64 @llvm.smax.i64(i64 %i.aax, i64 -1)
  %i.aaz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aay) #28
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.aba = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 4 uses
  store ptr %i.aaz, ptr %i.aba, align 8
  %wide.trip.count = and i64 %i.aap, 4294967295
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bu:                                            ; preds = %bb.bs, %bb.bx
  %indvars.iv462 = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next463, %bb.bx ] ; 5 uses
  %i.abc = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.bv unwind label %bb.by     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.abc)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.abd = load ptr, ptr %i.aba, align 8
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %indvars.iv462
  store ptr %i.abc, ptr %i.abe, align 8
  %i.abf = load ptr, ptr %i.aba, align 8
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %indvars.iv462
  %i.abh = load ptr, ptr %i.abg, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 1096
  store ptr %2, ptr %i.abi, align 8
  %i.abj = load ptr, ptr %i.aba, align 8
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %indvars.iv462
  %i.abl = load ptr, ptr %i.abk, align 8
  %i.abm = load ptr, ptr %i.aai, align 8
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv462
  %i.abo = load ptr, ptr %i.abn, align 8
  invoke void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %i.abl, ptr noundef %i.abo, ptr nonnull align 4 poison)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bu, !llvm.loop !42

bb.by:                                            ; preds = %bb.bw, %bb.bu
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bz:                                            ; preds = %bb.bv
  %i.abq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.abc, i64 noundef 1144) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bx, %bb.bq
  %i.abr = ptrtoint ptr %.sroa.26.0.lcssa526 to i64
  %i.abs = ptrtoint ptr %.sroa.0349.0.lcssa530 to i64
  %i.abt = sub i64 %i.abr, %i.abs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0349.0.lcssa530, i64 noundef %i.abt) #26
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit278:                 ; preds = %.loopexit386, %.loopexit.split-lp, %bb.r, %.body, %bb.bt, %bb.bz, %bb.by, %bb.au, %bb.bf
  %.sroa.26.0395 = phi ptr [ %.sroa.26.0.lcssa526, %bb.bt ], [ %.sroa.26.1, %bb.r ], [ %.sroa.26.0.lcssa526, %bb.bz ], [ %.sroa.26.0.lcssa526, %.body ], [ %.sroa.26.0.lcssa526, %bb.by ], [ %.sroa.26.0.lcssa526, %bb.au ], [ %.sroa.26.0.lcssa526, %bb.bf ], [ %.sroa.16359.0398, %.loopexit386 ], [ %.sroa.16359.0398, %.loopexit.split-lp ]
  %.sroa.0349.0389 = phi ptr [ %.sroa.0349.0.lcssa530, %bb.bt ], [ %.sroa.0349.1, %bb.r ], [ %.sroa.0349.0.lcssa530, %bb.bz ], [ %.sroa.0349.0.lcssa530, %.body ], [ %.sroa.0349.0.lcssa530, %bb.by ], [ %.sroa.0349.0.lcssa530, %bb.au ], [ %.sroa.0349.0.lcssa530, %bb.bf ], [ %.sroa.0349.0399, %.loopexit386 ], [ %.sroa.0349.0399, %.loopexit.split-lp ] ; 2 uses
  %.pn251 = phi { ptr, i32 } [ %i.abb, %bb.bt ], [ %.pn.pn, %bb.r ], [ %i.abq, %bb.bz ], [ %.pn235, %.body ], [ %i.abp, %bb.by ], [ %i.rr, %bb.au ], [ %i.vr, %bb.bf ], [ %lpad.loopexit, %.loopexit386 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.abu = ptrtoint ptr %.sroa.26.0395 to i64
  %i.abv = ptrtoint ptr %.sroa.0349.0389 to i64
  %i.abw = sub i64 %i.abu, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0349.0389, i64 noundef %i.abw) #26
  resume { ptr, i32 } %.pn251
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 5 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fneg <2 x float> %i.x                    ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
end_hunk_1
