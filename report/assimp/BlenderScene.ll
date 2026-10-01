Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderScene?download=true
inline.NumInlined: 5803
inline.NumDeleted: 1917
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN15DeadlyErrorBaseC2IJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA10_S1_ESB_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #22
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA10_KcERA26_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(26) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(10) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(26) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA10_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(10) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #22
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA10_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(10) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA10_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(10) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA10_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(10) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(10) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #22
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40
  store i64 0, ptr %i.s, align 8
  %i.t = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !120

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %i.v = icmp ult i64 %1, 4
  br i1 %i.v, label %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store ptr %i.al, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  store i64 0, ptr %i.ao, align 8
  %i.ap = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !121

_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = icmp ult i64 %i.n, %1
  br i1 %i.ar, label %bb.d, label %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.as = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 192153584101141162) ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 48
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #26 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f ; 3 uses
  %xtraiter46 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i30.prol ], [ %i.aw, %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.057.i.i.i32.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit ]
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31.prol, i8 0, i64 24, i1 false)
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32
  store ptr %i.ax, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40
  store i64 0, ptr %i.ba, align 8
  %i.bb = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 48 ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !122

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.aw, %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i30.prol ]
  %i.bd = icmp ult i64 %1, 4
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.by, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 21 uses
  %.057.i.i.i32 = phi i64 [ %i.bx, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31, i8 0, i64 24, i1 false)
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store i64 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  store ptr %i.bo, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  store i64 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  store ptr %i.bt, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 184
  store i64 0, ptr %i.bw, align 8
  %i.bx = add nsw i64 %.057.i.i.i32, -4           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  %.not.i.i.i33.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !121

_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cq, %_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.av, %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.cp, %_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35 ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !128, !noalias !127 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !alias.scope !128, !noalias !127
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !128, !noalias !127
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !128, !noalias !127
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.bz, ptr %i.ci, align 8, !noalias !129
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !128, !noalias !127
  store ptr null, ptr %i.ca, align 8, !alias.scope !128, !noalias !127
  store ptr %i.cc, ptr %i.ce, align 8, !alias.scope !128, !noalias !127
  store ptr %i.cc, ptr %i.cg, align 8, !alias.scope !128, !noalias !127
  store i64 0, ptr %i.cj, align 8, !alias.scope !128, !noalias !127
  br label %_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i37
  %.sink15.i.i.i = phi i32 [ %i.cd, %bb.e ], [ 0, %.lr.ph.i.i.i37 ]
  %.sink13.i.i.i = phi ptr [ %i.cf, %bb.e ], [ %i.bz, %.lr.ph.i.i.i37 ]
  %.sink.i.i.i = phi ptr [ %i.ch, %bb.e ], [ %i.bz, %.lr.ph.i.i.i37 ]
  %.sink.i.i.i.i = phi i64 [ %i.ck, %bb.e ], [ 0, %.lr.ph.i.i.i37 ]
  store i32 %.sink15.i.i.i, ptr %i.bz, align 8, !alias.scope !127, !noalias !128
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.cb, ptr %i.cl, align 8, !alias.scope !127, !noalias !128
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink13.i.i.i, ptr %i.cm, align 8, !alias.scope !127, !noalias !128
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink.i.i.i, ptr %i.cn, align 8, !alias.scope !127, !noalias !128
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i, ptr %i.co, align 8, !alias.scope !127, !noalias !128
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.cp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, label %.lr.ph.i.i.i37, !llvm.loop !126

_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit: ; preds = %_ZSt19__relocate_object_aISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE13_M_deallocateEPSD_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit
  %i.cr = load ptr, ptr %i.h, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ct) #24
  br label %_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE13_M_deallocateEPSD_m.exit41

_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE13_M_deallocateEPSD_m.exit41: ; preds = %_ZNSt6vectorISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit, %bb.f
  store ptr %i.av, ptr %0, align 8
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %1
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %i.at
  store ptr %i.cv, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEEmSD_ET_SF_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt3mapIN6Assimp7Blender7PointerESt10shared_ptrINS2_8ElemBaseEESt4lessIS3_ESaISt4pairIKS3_S6_EEESaISD_EE13_M_deallocateEPSD_m.exit41, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !12
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !12
  br label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN6Assimp7Blender7PointerESt4pairIKS2_St10shared_ptrINS1_8ElemBaseEEESt10_Select1stIS8_ESt4lessIS2_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender6ObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(1384) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !13
  br label %_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt10__weak_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
end_hunk_0
begin_hunk_1_@_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_5MFaceEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb:bb.a
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 40                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MFaceEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender5MFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender5MFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5MFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MFaceEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_5MFaceEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MFaceEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MFaceEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 40
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !235

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MFaceEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MFaceEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_5MFaceEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_5MFaceEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !236

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %.013.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 240
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 280
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.ag, align 8
  %i.ai = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !237

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 230584300921369395) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 40
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ar = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !238

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %.013.i.i.i31, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 200
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 280
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %i.bh, align 8
  %i.bj = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 320
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !237

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !244, !noalias !243
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !243, !noalias !244
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MFaceE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !243, !noalias !244
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.bo, ptr noundef nonnull align 8 dereferenceable(21) %i.bp, i64 21, i1 false), !alias.scope !245
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !242

_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender5MFaceESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender5MFaceESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender5MFaceESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender5MFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %1
  store ptr %i.bv, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bw, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MFaceEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender5MFaceESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5MFaceD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_6MTFaceEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_6MTFaceEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender6MTFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender6MTFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_6MTFaceEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_6MTFaceEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender6MTFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_6MTFaceEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 56                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_6MTFaceEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender6MTFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender6MTFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender6MTFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_6MTFaceEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_6MTFaceEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_6MTFaceEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_6MTFaceEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 56
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !246

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_6MTFaceEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_6MTFaceEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_6MTFaceEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_6MTFaceEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i16 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i16 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  store i16 0, ptr %i.t, align 2
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store ptr null, ptr %i.x, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %.013.i.i.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 50
  store i16 0, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 52
  store i16 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 54
  store i16 0, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store ptr null, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 106
  store i16 0, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i16 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 110
  store i16 0, ptr %i.ah, align 2
  %i.ai = add nsw i64 %.01012.i.i.i, -2           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !247

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 164703072086692425) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 9 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i8 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 50
  store i16 0, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  store i16 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 54
  store i16 0, ptr %i.au, align 2
  %i.av = add nsw i64 %1, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp eq i64 %1, 1
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store ptr null, ptr %i.ay, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %.013.i.i.i31, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i8 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 50
  store i16 0, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 52
  store i16 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 54
  store i16 0, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store ptr null, ptr %i.be, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 106
  store i16 0, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store i16 0, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 110
  store i16 0, ptr %i.bi, align 2
  %i.bj = add nsw i64 %.01012.i.i.i32, -2         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  %.not.i.i.i33.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !247

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !253, !noalias !252
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !252, !noalias !253
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender6MTFaceE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !252, !noalias !253
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !alias.scope !254
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !251

_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender6MTFaceESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender6MTFaceESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender6MTFaceESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender6MTFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %1
  store ptr %i.bv, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bw, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender6MTFaceEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender6MTFaceESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender6MTFaceD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_5TFaceEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_5TFaceEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender5TFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender5TFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_5TFaceEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_5TFaceEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender5TFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_5TFaceEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 72                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5TFaceEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender5TFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender5TFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5TFaceES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5TFaceEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_5TFaceEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_5TFaceEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5TFaceEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 72
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !255

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5TFaceEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5TFaceEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_5TFaceEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_5TFaceEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !256

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %.013.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 360
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 504
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.ag, align 8
  %i.ai = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 576 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !257

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 128102389400760775) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 72
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ar = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 72 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !258

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %.013.i.i.i31, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 216
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 288
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 360
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 432
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 504
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %i.bh, align 8
  %i.bj = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 576
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !257

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !264, !noalias !263
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !263, !noalias !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5TFaceE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !263, !noalias !264
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !alias.scope !265
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %.not.i.i.i38 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !262

_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender5TFaceESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender5TFaceESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender5TFaceESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender5TFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw [72 x i8], ptr %i.ap, i64 %1
  store ptr %i.bv, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bw, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5TFaceEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender5TFaceESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5TFaceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi2EEclINS0_6vectorINS0_5MVertEEEEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA57_KcRPS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(57) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.b) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_5MVertEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_5MVertEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender5MVertES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender5MVertES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_5MVertEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_5MVertEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender5MVertES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_5MVertEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 56                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MVertEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender5MVertES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender5MVertES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5MVertES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MVertEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_5MVertEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MVertEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MVertEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 56
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !266

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MVertEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MVertEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_5MVertEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_5MVertEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.01012.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store ptr null, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 44
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 48
  store i32 0, ptr %i.s, align 8
  %i.t = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !267

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %i.v = icmp ult i64 %1, 4
  br i1 %i.v, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 21 uses
  %.01012.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store ptr null, ptr %i.w, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %.013.i.i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store ptr null, ptr %i.ab, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  store ptr null, ptr %i.ag, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  store i8 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 156
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  store ptr null, ptr %i.al, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 208
  store i8 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 212
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 216
  store i32 0, ptr %i.ao, align 8
  %i.ap = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !268

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ar = icmp ult i64 %i.n, %1
  br i1 %i.ar, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.as = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 164703072086692425) ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 56
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #26 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i30.prol ], [ %i.aw, %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store ptr null, ptr %i.ax, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 44
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 48
  store i32 0, ptr %i.ba, align 8
  %i.bb = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 56 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !269

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.aw, %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender5MVertESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i30.prol ]
  %i.bd = icmp ult i64 %1, 4
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.by, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 21 uses
  %.01012.i.i.i32 = phi i64 [ %i.bx, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store ptr null, ptr %i.be, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %.013.i.i.i31, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 44
  store i32 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store ptr null, ptr %i.bj, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  store i8 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 100
  store i32 0, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  store ptr null, ptr %i.bo, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  store i8 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 156
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  store ptr null, ptr %i.bt, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 208
  store i8 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 212
  store i32 0, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 216
  store i32 0, ptr %i.bw, align 8
  %i.bx = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 224
  %.not.i.i.i33.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !268

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i37 ], [ %i.av, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !275, !noalias !274
  store ptr %i.cb, ptr %i.bz, align 8, !alias.scope !274, !noalias !275
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MVertE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !274, !noalias !275
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cc, ptr noundef nonnull align 8 dereferenceable(36) %i.cd, i64 36, i1 false), !alias.scope !276
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.ce, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !273

_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender5MVertESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cg = load ptr, ptr %i.h, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ci) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender5MVertESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender5MVertESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender5MVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.av, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %1
  store ptr %i.cj, ptr %i.a, align 8
  %i.ck = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %i.at
  store ptr %i.ck, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MVertEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender5MVertESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5MVertD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi1EEclINS0_6vectorINS0_5MEdgeEEEEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef %2)
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclINS0_6vectorINS0_5MEdgeEEEEEvRT_PKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclINS0_6vectorINS0_5MEdgeEEEEEvRT_PKc.exit

_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclINS0_6vectorINS0_5MEdgeEEEEEvRT_PKc.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_5MEdgeEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_5MEdgeEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender5MEdgeES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender5MEdgeES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_5MEdgeEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_5MEdgeEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender5MEdgeES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_5MEdgeEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
end_hunk_1
begin_hunk_2_@_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_5MLoopEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb:bb.a
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MLoopEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender5MLoopES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender5MLoopES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender5MLoopES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MLoopEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_5MLoopEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MLoopEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MLoopEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 24
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !288

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MLoopEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_5MLoopEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_5MLoopEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_5MLoopEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !289

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %.013.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.ag, align 8
  %i.ai = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !290

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ar = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !291

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %.013.i.i.i31, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %i.bh, align 8
  %i.bj = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !290

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !297, !noalias !296
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !296, !noalias !297
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender5MLoopE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !296, !noalias !297
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !297, !noalias !296
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !296, !noalias !297
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !295

_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender5MLoopESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender5MLoopESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender5MLoopESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender5MLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bx, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender5MLoopEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender5MLoopESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5MLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_7MLoopUVEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_7MLoopUVEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender7MLoopUVES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender7MLoopUVES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_7MLoopUVEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_7MLoopUVEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender7MLoopUVES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_7MLoopUVEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
end_hunk_2
begin_hunk_3_@_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_8MLoopColEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb:bb.a
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_8MLoopColEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender8MLoopColES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender8MLoopColES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender8MLoopColES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_8MLoopColEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_8MLoopColEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_8MLoopColEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_8MLoopColEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 24
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !309

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_8MLoopColEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_8MLoopColEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_8MLoopColEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_8MLoopColEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !310

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %.013.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.ag, align 8
  %i.ai = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !311

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ar = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !312

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %.013.i.i.i31, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %i.bh, align 8
  %i.bj = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !311

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !318, !noalias !317
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !317, !noalias !318
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender8MLoopColE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !317, !noalias !318
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !318, !noalias !317
  store i32 %i.bq, ptr %i.bo, align 8, !alias.scope !317, !noalias !318
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !316

_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender8MLoopColESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender8MLoopColESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender8MLoopColESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender8MLoopColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bx, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender8MLoopColEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender8MLoopColESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8MLoopColD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_5MPolyEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_5MPolyEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender5MPolyES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender5MPolyES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_5MPolyEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_5MPolyEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender5MPolyES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_5MPolyEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
end_hunk_3
begin_hunk_4_@_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_11MDeformVertEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb:bb.a
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.308)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bl) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = udiv i64 %i.bo, %i.bq                   ; 5 uses
  %i.bs = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bt = load ptr, ptr %1, align 8               ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 48                ; 3 uses
  %i.by = icmp ugt i64 %i.br, %i.bx
  br i1 %i.by, label %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i.thread, label %bb.n

_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bz = sub nuw i64 %i.br, %i.bx
  tail call void @_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bz)
  br label %bb.q

bb.n:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.ca = icmp ult i64 %i.br, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bt, i64 %i.br ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.bs, %i.cb
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %bb.o, %_ZSt8_DestroyIN6Assimp7Blender11MDeformVertEEvPT_.exit.i.i.i.i.i52
  %.05.i.i.i.i.i50 = phi ptr [ %i.cj, %_ZSt8_DestroyIN6Assimp7Blender11MDeformVertEEvPT_.exit.i.i.i.i.i52 ], [ %i.cb, %bb.o ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i50, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i51, label %_ZSt8_DestroyIN6Assimp7Blender11MDeformVertEEvPT_.exit.i.i.i.i.i52, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i49
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i50, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #24
  br label %_ZSt8_DestroyIN6Assimp7Blender11MDeformVertEEvPT_.exit.i.i.i.i.i52

_ZSt8_DestroyIN6Assimp7Blender11MDeformVertEEvPT_.exit.i.i.i.i.i52: ; preds = %bb.p, %.lr.ph.i.i.i.i.i49
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i50, i64 48 ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.cj, %i.bs
  br i1 %.not.i.i.i.i.i53, label %_ZSt8_DestroyIPN6Assimp7Blender11MDeformVertES2_EvT_S4_RSaIT0_E.exit.i.i.i54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !43

_ZSt8_DestroyIPN6Assimp7Blender11MDeformVertES2_EvT_S4_RSaIT0_E.exit.i.i.i54: ; preds = %_ZSt8_DestroyIN6Assimp7Blender11MDeformVertEEvPT_.exit.i.i.i.i.i52
  store ptr %i.cb, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender11MDeformVertES2_EvT_S4_RSaIT0_E.exit.i.i.i54, %bb.o, %bb.n
  %.not.i47 = icmp ugt i64 %i.bq, %i.bo
  br i1 %.not.i47, label %_ZNK6Assimp7Blender9Structure9_allocateINS0_11MDeformVertEEEPT_RNS0_6vectorIS4_EERm.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i.thread, %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i
  %i.ck = load ptr, ptr %1, align 8
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_11MDeformVertEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_11MDeformVertEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i, %bb.q
  %i.cl = phi ptr [ %i.ck, %bb.q ], [ null, %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE6resizeEm.exit.i ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit55, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_11MDeformVertEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not65 = icmp ugt i64 %i.bq, %i.bo
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.cm = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ba ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = icmp ugt ptr %i.cp, %i.cs
  br i1 %i.ct, label %bb.r, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit55

bb.r:                                             ; preds = %._crit_edge
  %i.cu = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull @.str.308)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cu) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.064 = phi i64 [ %i.cw, %.lr.ph ], [ 0, %.preheader ]
  %.04563 = phi ptr [ %i.cx, %.lr.ph ], [ %i.cl, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_11MDeformVertEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %.04563, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cw = add nuw i64 %.064, 1                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.04563, i64 48
  %i.cy = icmp ult i64 %i.cw, %i.br
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !341

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit55: ; preds = %._crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_11MDeformVertEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cz = load ptr, ptr %1, align 8
  %i.da = load ptr, ptr %i.b, align 8
  %.not62 = icmp eq ptr %i.cz, %i.da
  br i1 %.not62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit55
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4
  br label %bb.v

bb.v:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit55, %bb.u, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread58, %_ZN6Assimp7Blender6vectorINS0_11MDeformVertEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_11MDeformVertEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread58 ], [ false, %bb.u ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit55 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender11MDeformVertD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.01012.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !342

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %.013.i.i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.af = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !343

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 192153584101141162) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 48
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #26 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.ap = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 48 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !344

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.01012.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %.013.i.i.i31, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bd = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !343

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender11MDeformVertE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !349, !noalias !350
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8, !alias.scope !350, !noalias !349
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !alias.scope !349, !noalias !350
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !alias.scope !350, !noalias !349
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !alias.scope !349, !noalias !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false), !alias.scope !350, !noalias !349
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !350, !noalias !349
  store i32 %i.bo, ptr %i.bm, align 8, !alias.scope !349, !noalias !350
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !348

_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender11MDeformVertESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.br = load ptr, ptr %i.h, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender11MDeformVertESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender11MDeformVertESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender11MDeformVertESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %1
  store ptr %i.bu, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bv, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender11MDeformVertEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender11MDeformVertESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender11MDeformVertD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp7Blender11MDeformVertD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN6Assimp7Blender11MDeformVertD2Ev.exit

_ZN6Assimp7Blender11MDeformVertD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_4MColEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorINS0_4MColEE5resetEv.exit, label %_ZSt8_DestroyIPN6Assimp7Blender4MColES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp7Blender4MColES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZN6Assimp7Blender6vectorINS0_4MColEE5resetEv.exit

_ZN6Assimp7Blender6vectorINS0_4MColEE5resetEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6Assimp7Blender4MColES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.e = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp7Blender6vectorINS0_4MColEE5resetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 4 uses
  %i.i = tail call noundef ptr @_ZNK6Assimp7Blender9Structure25LocateFileBlockForAddressERKNS0_7PointerERKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 120
  %.not.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i, label %_ZNK6Assimp7Blender3DNAixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA45_KcRKmRA2_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 1 dereferenceable(45) @.str.335, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ag, %bb.h ], [ %i.be, %bb.l ], [ %i.cf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #22
  br label %common.resume

_ZNK6Assimp7Blender3DNAixEm.exit:                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

bb.f:                                             ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit

_ZNK6Assimp7Blender9StructureneERKS1_.exit:       ; preds = %bb.f
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.w, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.y)
  %.not55 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not55, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, label %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread: ; preds = %_ZNK6Assimp7Blender3DNAixEm.exit, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN6Assimp7Blender5ErrorC2IJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S3_SD_RA10_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(32) @.str.328, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.329, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.330)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_4MColEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender4MColES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender4MColES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender4MColES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_4MColEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_4MColEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_4MColEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_4MColEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 24
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !351

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_4MColEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_4MColEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_4MColEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_4MColEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender8ElemBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !352

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %.013.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.ag, align 8
  %i.ai = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !353

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ar = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !354

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender4MColESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %.013.i.i.i31, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %i.bh, align 8
  %i.bj = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !353

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !360, !noalias !359
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !359, !noalias !360
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender4MColE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !359, !noalias !360
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !360, !noalias !359
  store i32 %i.bq, ptr %i.bo, align 8, !alias.scope !359, !noalias !360
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !358

_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender4MColESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender4MColESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender4MColESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender4MColESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bx, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender4MColEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender4MColESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender4MColD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi2EEclINS0_6vectorISt10shared_ptrINS0_8MaterialEEEEEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA57_KcRPS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(57) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.b) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender6vectorISt10shared_ptrINS0_8MaterialEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !44
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !44
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.a, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN6Assimp7Blender8MaterialEESaIS4_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender8MaterialEES4_EvT_S6_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_8MaterialEEEbRNS0_6vectorIT_IT0_EEERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Assimp::Blender::Pointer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %_ZN6Assimp7Blender6vectorISt10shared_ptrINS0_8MaterialEEE5resetEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !361
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !361
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender8MaterialEEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
end_hunk_4
begin_hunk_5_@_ZNK6Assimp7Blender9Structure14ResolvePointerINS0_6vectorENS0_13MDeformWeightEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb:bb.a
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %common.resume

_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53: ; preds = %bb.f, %_ZNK6Assimp7Blender9StructureneERKS1_.exit
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %.not56 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not56, label %bb.i, label %bb.s

bb.i:                                             ; preds = %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %sext = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = load i64, ptr %i.i, align 8
  %i.au = load i64, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax  ; 2 uses
  store ptr %i.az, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = udiv i64 %i.bg, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bl = load ptr, ptr %1, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24                ; 3 uses
  %i.bq = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.bq, label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i.thread, label %bb.m

_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i.thread: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.br = sub nuw i64 %i.bj, %i.bp
  tail call void @_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.br)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_13MDeformWeightEEEPT_RNS0_6vectorIS4_EERm.exit

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.bs = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN6Assimp7Blender13MDeformWeightES2_EvT_S4_RSaIT0_E.exit.i.i.i49

_ZSt8_DestroyIPN6Assimp7Blender13MDeformWeightES2_EvT_S4_RSaIT0_E.exit.i.i.i49: ; preds = %bb.n
  store ptr %i.bt, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Blender13MDeformWeightES2_EvT_S4_RSaIT0_E.exit.i.i.i49, %bb.n, %bb.m
  %.not.i47 = icmp ugt i64 %i.bi, %i.bg
  %spec.select = select i1 %.not.i47, ptr null, ptr %i.bl
  br label %_ZNK6Assimp7Blender9Structure9_allocateINS0_13MDeformWeightEEEPT_RNS0_6vectorIS4_EERm.exit

_ZNK6Assimp7Blender9Structure9_allocateINS0_13MDeformWeightEEEPT_RNS0_6vectorIS4_EERm.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i, %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i.thread
  %i.bu = phi ptr [ %i.bl, %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i.thread ]
  %i.bv = phi ptr [ %spec.select, %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i ], [ %.pre, %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE6resizeEm.exit.i.thread ]
  br i1 %5, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, label %.preheader

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure9_allocateINS0_13MDeformWeightEEEPT_RNS0_6vectorIS4_EERm.exit
  %.not60 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bw = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.as ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.o, label %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge

._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge: ; preds = %._crit_edge
  %.pre61 = load ptr, ptr %1, align 8
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50

bb.o:                                             ; preds = %._crit_edge
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.059 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader ]
  %.04558 = phi ptr [ %i.ch, %.lr.ph ], [ %i.bv, %.preheader ] ; 2 uses
  tail call void @_ZNK6Assimp7Blender9Structure7ConvertINS0_13MDeformWeightEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.04558, ptr noundef nonnull align 8 dereferenceable(232) %3)
  %i.cg = add nuw i64 %.059, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04558, i64 24
  %i.ci = icmp ult i64 %i.cg, %i.bj
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !380

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50: ; preds = %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge, %_ZNK6Assimp7Blender9Structure9_allocateINS0_13MDeformWeightEEEPT_RNS0_6vectorIS4_EERm.exit
  %i.cj = phi ptr [ %.pre61, %._crit_edge._ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50_crit_edge ], [ %i.bu, %_ZNK6Assimp7Blender9Structure9_allocateINS0_13MDeformWeightEEEPT_RNS0_6vectorIS4_EERm.exit ]
  %i.ck = load ptr, ptr %i.b, align 8
  %.not57 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50, %bb.r, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53, %_ZN6Assimp7Blender6vectorINS0_13MDeformWeightEE5resetEv.exit
  %.1 = phi i1 [ false, %_ZN6Assimp7Blender6vectorINS0_13MDeformWeightEE5resetEv.exit ], [ true, %_ZNK6Assimp7Blender9StructureneERKS1_.exit.thread53 ], [ false, %bb.r ], [ false, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit50 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %.013.i.i.i.prol, align 8
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !381

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %.013.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.ag, align 8
  %i.ai = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !382

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #23
  unreachable

_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #26 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %.013.i.i.i31.prol, align 8
  %i.ar = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !383

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %.013.i.i.i31, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %i.bh, align 8
  %i.bj = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !382

_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !389, !noalias !388
  store ptr %i.bn, ptr %i.bl, align 8, !alias.scope !388, !noalias !389
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp7Blender13MDeformWeightE, i64 16), ptr %.012.i.i.i, align 8, !alias.scope !388, !noalias !389
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !389, !noalias !388
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !388, !noalias !389
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !387

_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp7Blender13MDeformWeightESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #24
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender13MDeformWeightESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6Assimp7Blender13MDeformWeightESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6Assimp7Blender13MDeformWeightESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bx, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp7Blender13MDeformWeightEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp7Blender13MDeformWeightESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender13MDeformWeightD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure7ConvertIhEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread12 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1634692198
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 116
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetF4Ev.exit

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.322)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.aw, %bb.g ], [ %i.v, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %i.w, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #22
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetF4Ev.exit:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = load i32, ptr %i.q, align 1              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !70, !noundef !71
  %i.aa = trunc nuw i8 %i.z to i1
  %.2.insert.insert.i.i = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %spec.select.i.i = select i1 %i.aa, i32 %i.x, i32 %.2.insert.insert.i.i
  %.0.i.i = bitcast i32 %spec.select.i.i to float
  store ptr %i.r, ptr %i.p, align 8
  %i.ab = fmul float %.0.i.i, 2.550000e+02
  %i.ac = fptoui float %i.ab to i8
  store i8 %i.ac, ptr %1, align 1
  br label %bb.h

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8: ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8               ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1651863396
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i32
  %i.aj = xor i32 %i.ai, 25964
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp ugt ptr %i.as, %i.au
  br i1 %i.av, label %bb.e, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetF8Ev.exit

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.322)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetF8Ev.exit:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread
  %i.ay = load i64, ptr %i.ar, align 1            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ba = load i8, ptr %i.az, align 8, !range !70, !noundef !71
  %i.bb = trunc nuw i8 %i.ba to i1
  %.4.insert.insert.i.i = tail call i64 @llvm.bswap.i64(i64 %i.ay)
  %spec.select.i.i9 = select i1 %i.bb, i64 %i.ay, i64 %.4.insert.insert.i.i
  %.0.i.i10 = bitcast i64 %spec.select.i.i9 to double
  store ptr %i.as, ptr %i.aq, align 8
  %i.bc = fmul double %.0.i.i10, 2.550000e+02
  %i.bd = fptoui double %i.bc to i8
  store i8 %i.bd, ptr %1, align 1
  br label %bb.h

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8
  tail call void @_ZN6Assimp7Blender17ConvertDispatcherIhEEvRT_RKNS0_9StructureERKNS0_12FileDatabaseE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(232) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit8.thread12, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetF8Ev.exit, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetF4Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender17ConvertDispatcherIhEEvRT_RKNS0_9StructureERKNS0_12FileDatabaseE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread38 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
end_hunk_5
