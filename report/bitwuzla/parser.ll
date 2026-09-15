Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/parser?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser10parse_termERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN8bitwuzla4TermE:bb.a
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #30, !inline_history !5
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !252
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.o ], [ %i.al, %bb.p ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !253

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.q, ptr %i.o, align 8, !tbaa !251
  br label %_ZN8bitwuzla4TermaSERKS0_.exit

_ZN8bitwuzla4TermaSERKS0_.exit:                   ; preds = %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.s

bb.r:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.t

bb.s:                                             ; preds = %bb.d, %_ZN8bitwuzla4TermaSERKS0_.exit
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !33
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !33
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !154 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !54
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #30
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !33
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !206
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bi) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %i.l

bb.t:                                             ; preds = %bb.r, %bb.e
  %.pn = phi { ptr, i32 } [ %i.an, %bb.r ], [ %i.m, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla6parser4smt26Parser10init_logicEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.144, i64 3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.g, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !53
  store i8 0, ptr %i.h, align 8, !tbaa !54
  %i.j = invoke noundef i64 @_ZN4bzla6parser4smt26Parser13enable_theoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_m(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.h, align 8, !tbaa !54
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.o = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.e
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load i64, ptr %i.e, align 8, !tbaa !54
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.s = load i64, ptr %i.b, align 8, !tbaa !53
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str.144, i64 noundef 3) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.c
  %i.x = load i64, ptr %i.h, align 8, !tbaa !54
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.z = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !54
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.u

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_termEbNS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %3 = alloca %"class.std::optional", align 8     ; 4 uses
  %4 = alloca %"class.bitwuzla::Term", align 8    ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN8bitwuzla4TermC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  br i1 %1, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.d = invoke noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
          to label %bb.b unwind label %.loopexit.loopexit.split-lp

bb.b:                                             ; preds = %bb.a, %.peel.begin
  %.012.peel = phi i32 [ %2, %.peel.begin ], [ %i.d, %bb.a ] ; 3 uses
  switch i32 %.012.peel, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.peel [
    i32 1, label %.loopexit28
    i32 0, label %.loopexit29
  ]

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.peel: ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 8, !tbaa !194, !range !209, !noundef !207
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = icmp ne i32 %.012.peel, 4                ; 2 uses
  %or.cond.peel = and i1 %i.g, %i.f
  br i1 %or.cond.peel, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.peel
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser15parse_open_termENS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef %.012.peel)
          to label %bb.e unwind label %.loopexit.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.h, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !194
  %i.i = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10close_termEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
          to label %bb.g unwind label %.loopexit.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  br i1 %i.i, label %bb.h, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not.peel = icmp eq i64 %i.n, 8
  br i1 %.not.peel, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.q
  %i.o = invoke noundef i32 @_ZN4bzla6parser4smt26Parser10next_tokenEb(ptr noundef nonnull align 8 dereferenceable(2056) %0, i1 noundef zeroext false)
          to label %bb.i unwind label %.loopexit.loopexit ; 3 uses

.loopexit.loopexit:                               ; preds = %bb.o, %bb.m, %.peel.next
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.a, %bb.d, %bb.f
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit28, %.loopexit29, %.noexc18
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.i:                                             ; preds = %.peel.next
  switch i32 %i.o, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit [
    i32 1, label %.loopexit28
    i32 0, label %.loopexit29
  ]

.loopexit28:                                      ; preds = %bb.i, %bb.b
  %i.p = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser9error_eofEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
          to label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread unwind label %.loopexit.split-lp ; 0 uses

.loopexit29:                                      ; preds = %bb.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6parser4smt25Lexer9error_msgB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.r)
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %.loopexit29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !217
  %i.u = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc19 unwind label %.loopexit.split-lp ; 0 uses

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit: ; preds = %bb.i
  %i.v = load i8, ptr %i.a, align 8, !tbaa !194, !range !209, !noundef !207
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = icmp ne i32 %i.o, 4                      ; 2 uses
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.l

._crit_edge.i.i:                                  ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit, %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.y, ptr noundef nonnull align 1 dereferenceable(11) @.str.83, i64 11, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.z, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 0, ptr %i.aa, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.ab, align 8, !tbaa !217
  %i.ac = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ad = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.af = load i64, ptr %i.y, align 8, !tbaa !54
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ai = load ptr, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.y
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.k
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !54
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.l:                                             ; preds = %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit
  br i1 %i.x, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 8, !tbaa !194
  %i.am = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10close_termEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
          to label %bb.n unwind label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.q, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.an = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser15parse_open_termENS1_5TokenE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef %i.o)
          to label %bb.p unwind label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  br i1 %i.an, label %bb.q, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread

bb.q:                                             ; preds = %bb.n, %bb.p
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.not = icmp eq i64 %i.as, 8
  br i1 %.not, label %_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread, label %.peel.next, !llvm.loop !412

_ZN4bzla6parser4smt26Parser11check_tokenENS1_5TokenE.exit.thread: ; preds = %bb.q, %bb.p, %bb.n, %bb.e, %bb.g, %bb.h, %.loopexit28, %.noexc19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.013 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %.loopexit28 ], [ false, %.noexc19 ], [ false, %bb.e ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.p ], [ true, %bb.q ], [ false, %bb.n ]
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.013

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit26, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp27, %.loopexit.loopexit.split-lp ]
  call void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla6parser4smt26Parser12pop_term_argEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.bitwuzla::Term") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2056) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -112
  %i.d = load i8, ptr %i.c, align 8, !tbaa !242
  switch i8 %i.d, label %bb.b [
    i8 2, label %_ZSt3getIN8bitwuzla4TermEJPN4bzla6parser4smt211SymbolTable4NodeENS0_4SortES1_EERT_RSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !259

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.202, ptr %i.f, align 8, !tbaa !262
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @.str.201, ptr %i.h, align 8, !tbaa !262
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt3getIN8bitwuzla4TermEJPN4bzla6parser4smt211SymbolTable4NodeENS0_4SortES1_EERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -128
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251  ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !263
  store <2 x ptr> %i.l, ptr %0, align 8, !tbaa !263
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN8bitwuzla4TermC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt3getIN8bitwuzla4TermEJPN4bzla6parser4smt211SymbolTable4NodeENS0_4SortES1_EERT_RSt7variantIJDpT0_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.m, align 4, !tbaa !252
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !252
  br label %_ZN8bitwuzla4TermC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !182
  br label %_ZN8bitwuzla4TermC2ERKS0_.exit

_ZN8bitwuzla4TermC2ERKS0_.exit:                   ; preds = %_ZSt3getIN8bitwuzla4TermEJPN4bzla6parser4smt211SymbolTable4NodeENS0_4SortES1_EERT_RSt7variantIJDpT0_EE.exit, %bb.d, %bb.e
  %i.r = phi ptr [ %i.b, %_ZSt3getIN8bitwuzla4TermEJPN4bzla6parser4smt211SymbolTable4NodeENS0_4SortES1_EERT_RSt7variantIJDpT0_EE.exit ], [ %i.b, %bb.d ], [ %.pre, %bb.e ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -152 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !182
  tail call void @_ZN4bzla6parser4smt26Parser10ParsedItemD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %i.s) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN8bitwuzla4TermaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !256
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !251  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4bzla4NodeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 4, !tbaa !252
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !252
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !251
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.k = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ %.pr.pre.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !246
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !247
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30, !inline_history !413
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30, !inline_history !413
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i9.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !252
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !253

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !251
  br label %_ZNSt10shared_ptrIN4bzla4NodeEEaSERKS2_.exit

_ZNSt10shared_ptrIN4bzla4NodeEEaSERKS2_.exit:     ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN8bitwuzla4TermD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla6parser4smt26Parser10parse_sortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN8bitwuzla4SortE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  tail call void @_ZN4bzla6parser4smt26Parser10init_logicEv(ptr noundef nonnull align 8 dereferenceable(2056) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
end_hunk_0
