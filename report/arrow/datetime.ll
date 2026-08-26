Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/datetime?download=true
inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK14arrow_vendored4date4tzdb12current_zoneEv:bb.a
.loopexit542:                                     ; preds = %bb.cq, %.loopexit542.sink.split
  %.13 = phi ptr [ %i.nk, %.loopexit542.sink.split ], [ %.10, %bb.cq ]
  %i.ok = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.ke
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %.loopexit542
  %i.om = load i64, ptr %i.ke, align 8, !tbaa !31
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %.loopexit542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.not.i215, label %bb.dg, label %bb.dh

bb.df:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.oo = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.ke
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %bb.df
  %i.oq = load i64, ptr %i.ke, align 8, !tbaa !31
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.dl

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.dk

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %bb.cm
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.os = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.os, ptr noundef nonnull @.str.19)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @__cxa_throw(ptr nonnull %i.os, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.os) #30
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dg, %bb.bw, %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i127, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %.16 = phi ptr [ %.13, %bb.dg ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.5, %bb.bw ], [ %.2, %bb.bo ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i127 ], [ %.0, %bb.u ]
  ret ptr %.16

bb.dl:                                            ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit106
  %.pn99.pn.pn = phi { ptr, i32 } [ %.pn99.pn, %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit106 ], [ %i.ot, %bb.dj ], [ %.pn95.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn88.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  resume { ptr, i32 } %.pn99.pn.pn

bb.dm:                                            ; preds = %_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit118, %_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit107, %_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored4dateL14sniff_realpathEPKc() unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @realpath(ptr noundef nonnull @.str.8, ptr noundef null) #30 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 32) #30 ; 3 uses
  %i.d = tail call ptr @__errno_location() #34
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #34
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 %i.e, ptr nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.9)
          to label %_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit unwind label %bb.c

_ZNSt12system_errorC2EiRKNSt3_V214error_categoryEPKc.exit: ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #30
  br label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit8

bb.d:                                             ; preds = %bb.a
  %i.h = invoke fastcc { i64, ptr } @_ZN14arrow_vendored4dateL15extract_tz_nameEPKc(ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 4 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 5 uses
  %i.k = icmp ult i64 %i.i, 5
  br i1 %i.k, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  %i.m = ptrtoint ptr %i.l to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.f
  %.033.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.aa, %bb.f ]
  %.02032.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.y, %bb.f ]
  %.reass.reass.i.reass.reass.i = add i64 %.033.i.i, -4
  %i.n = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef 112, i64 noundef %.reass.reass.i.reass.reass.i) #30 ; 5 uses
  %.not26.i.i = icmp eq ptr %i.n, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.o = load i32, ptr %i.n, align 1
  %i.p = xor i32 %i.o, 1769172848
  %i.q = getelementptr i8, ptr %i.n, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %i.s, 120
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.m, %i.z                      ; 2 uses
  %.not25.i.i = icmp ult i64 %i.aa, 5
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !211

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ab = icmp eq ptr %i.n, %i.j
  br i1 %i.ab, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
  %i.ac = icmp eq i64 %i.i, 10
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6:  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread
  %i.ad = load i64, ptr %i.j, align 1
  %i.ae = xor i64 %i.ad, 7815278589862178672
  %i.af = getelementptr i8, ptr %i.j, i64 8
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i64
  %i.ai = xor i64 %i.ah, 29541
  %i.aj = or i64 %i.ae, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0                    ; 2 uses
  %i.al = zext i1 %i.ak to i32                    ; 0 uses
  br label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit

_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit:            ; preds = %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
  %.0 = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread ], [ true, %bb.e ], [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6 ]
  tail call void @free(ptr noundef nonnull %i.a) #30, !inline_history !188
  ret i1 %.0

bb.g:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.a) #30, !inline_history !188
  br label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit8

_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit8:           ; preds = %bb.c, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, ptr } @_ZN14arrow_vendored4dateL15extract_tz_nameEPKc(ptr noundef %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30 ; 6 uses
  store i64 %i.a, ptr %1, align 8, !tbaa !212
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !214
  %.not.i.i = icmp ult i64 %i.a, 8
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -8
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c, %bb.b
  %.013.i.i = phi i64 [ %i.i, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i.i ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = icmp ne i64 %i.e, 8027224784786845562
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = add i64 %.013.i.i, -1
  %.not6.i.i = icmp eq i64 %.013.i.i, 0
  br i1 %.not6.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, !llvm.loop !215

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

bb.d:                                             ; preds = %.loopexit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread: ; preds = %.loopexit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !31
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.y = load i64, ptr %i.w, align 8, !tbaa !31
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.ab) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn.pn21 = phi { ptr, i32 } [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  resume { ptr, i32 } %.pn.pn20

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %5 = icmp ult i64 %.013.i.i, %i.a
  br i1 %5, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit
  %6 = sub nuw i64 %i.a, %.013.i.i
  %7 = tail call ptr @memchr(ptr noundef nonnull %i.d, i32 noundef 47, i64 noundef %6) #30 ; 2 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %8

8:                                                ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %9, %10
  %11 = add i64 %reass.sub, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %8
  %.1.i = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit ], [ %11, %8 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i
  %i.ad = sub i64 %i.a, %.1.i
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.ad, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %i.ac, 1
  ret { i64, ptr } %.fca.1.insert

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #4 align 2

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN14arrow_vendored4date12current_zoneEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN14arrow_vendored4date8get_tzdbEv.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN14arrow_vendored4date8get_tzdbEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN14arrow_vendored4dateL11create_tzdbEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14arrow_vendored4date9tzdb_listD1Ev, ptr nonnull @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  br label %_ZN14arrow_vendored4date8get_tzdbEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4date13get_tzdb_listEvE5tz_db) #30
  resume { ptr, i32 } %i.e

_ZN14arrow_vendored4date8get_tzdbEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load atomic ptr, ptr @_ZZN14arrow_vendored4date13get_tzdb_listEvE5tz_db seq_cst, align 8
  %i.g = tail call noundef ptr @_ZNK14arrow_vendored4date4tzdb12current_zoneEv(ptr noundef nonnull align 8 dereferenceable(88) %i.f)
  ret ptr %i.g
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14arrow_vendored4date9time_zoneEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit
  %.05 = phi ptr [ %i.af, %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i.i.i.i, %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i
  %i.aa = load ptr, ptr %.05, align 8, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit

_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date9time_zoneD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
end_hunk_0
