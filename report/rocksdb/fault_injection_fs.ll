inline.NumInlined: 2916
inline.NumDeleted: 952
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb16InjectedErrorLogD2Ev:bb.a
  br i1 %i.h, label %.preheader.i, label %_ZNK7rocksdb16InjectedErrorLog5FlushEv.exit, !llvm.loop !24

_ZNK7rocksdb16InjectedErrorLog5FlushEv.exit:      ; preds = %bb.b, %.noexc
  %i.i = load i32, ptr %i.a, align 8, !tbaa !20
  %i.j = invoke i32 @close(i32 noundef %i.i)
          to label %bb.c unwind label %.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %_ZNK7rocksdb16InjectedErrorLog5FlushEv.exit, %bb.a
  ret void

.loopexit:                                        ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.loopexit.split-lp:                               ; preds = %_ZNK7rocksdb16InjectedErrorLog5FlushEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.k = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb16InjectedErrorLog5FlushEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !20
  %i.e = tail call i32 @fsync(i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = tail call ptr @__errno_location() #34
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %.preheader, label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16InjectedErrorLog6RecordERKNS_5SliceES3_RKNS0_17TaggedEntryDetailERKNS_8IOStatusE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"struct.rocksdb::InjectedErrorLog::Entry", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 89
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 90
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 91
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 196 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(164) %i.m, i8 0, i64 164, i1 false)
  %i.n = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #31
  %i.o = sdiv i64 %i.n, 1000
  store i64 %i.o, ptr %5, align 8, !tbaa !26
  %i.p = tail call noundef ptr @_ZN7rocksdb3Env7DefaultEv() ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 656
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
  store i64 %i.t, ptr %i.d, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !tbaa.struct !32
  %i.v = load i8, ptr %3, align 8, !tbaa !34      ; 2 uses
  store i8 %i.v, ptr %i.f, align 8, !tbaa !36
  %.off.i = add i8 %i.v, -1
  %switch.i = icmp ult i8 %.off.i, 3
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.x, i64 48)
  %i.z = trunc nuw nsw i64 %i.y to i8
  %.0.i = select i1 %switch.i, i8 %i.z, i8 0
  store i8 %.0.i, ptr %i.g, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !38, !range !50, !noundef !51
  store i8 %i.ab, ptr %i.h, align 2, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !53, !range !50, !noundef !51
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17 = load i64, ptr %i.ae, align 8, !tbaa !55 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.val17, i64 31) ; 3 uses
  %.not.i = icmp eq i64 %.val17, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val16 = load ptr, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val16, i64 %.val17
  %i.ag = sub nsw i64 0, %.sroa.speculated.i
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull readonly align 1 %i.ah, i64 %.sroa.speculated.i, i1 false)
  br label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit

_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit: ; preds = %bb.b, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.speculated.i
  store i8 0, ptr %i.ai, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val15 = load i64, ptr %i.aj, align 8, !tbaa !55 ; 3 uses
  %.sroa.speculated.i18 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 71) ; 3 uses
  %.not.i19 = icmp eq i64 %.val15, 0
  br i1 %.not.i19, label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit20, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit
  %.val14 = load ptr, ptr %2, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val14, i64 %.val15
  %i.al = sub nsw i64 0, %.sroa.speculated.i18
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull readonly align 1 %i.am, i64 %.sroa.speculated.i18, i1 false)
  br label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit20

_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit20: ; preds = %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.speculated.i18
  store i8 0, ptr %i.an, align 1, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit23, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit20
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #36 ; 3 uses
  %.sroa.speculated.i21 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 55) ; 4 uses
  %.not.i22 = icmp eq i64 %i.ar, 0
  br i1 %.not.i22, label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.at = sub nsw i64 0, %.sroa.speculated.i21
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 1 %i.au, i64 %.sroa.speculated.i21, i1 false)
  br label %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit23

_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit23: ; preds = %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit20, %bb.e, %bb.f
  %.sroa.speculated.i2128 = phi i64 [ %.sroa.speculated.i21, %bb.f ], [ %.sroa.speculated.i21, %bb.e ], [ 0, %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.speculated.i2128
  store i8 0, ptr %i.av, align 1, !tbaa !16
  %i.aw = atomicrmw add ptr %0, i64 256 monotonic, align 8
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !20
  %i.ay = call noundef zeroext i1 @_ZN7rocksdb20PosixPositionedWriteEiPKcml(i32 noundef %i.ax, ptr noundef nonnull %5, i64 noundef 256, i64 noundef %i.aw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN7rocksdb12_GLOBAL__N_116CopyStringSuffixERKNS_5SliceEPcm.exit23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare noundef ptr @_ZN7rocksdb3Env7DefaultEv() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN7rocksdb20PosixPositionedWriteEiPKcml(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

declare i32 @fsync(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16TestFSGetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %bb.b
  %.1.i.i.in = phi i64 [ %i.b, %bb.b ], [ %.1.i.i, %bb.c ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  switch i8 %i.e, label %bb.c [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  ]

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %._crit_edge.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !58

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !17
  store i8 0, ptr %i.f, align 8, !tbaa !16
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !9, !alias.scope !59
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.1.i.i, i64 %i.b) ; 8 uses
  %i.i = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.j = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.j, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
  unreachable

bb.e:                                             ; preds = %bb.d
  %2 = add nuw i64 %spec.select.i.i.i, 1          ; 2 uses
  %i.k = icmp slt i64 %2, 0
  br i1 %i.k, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !62

.noexc11.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #32 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !13, !alias.scope !59
  store i64 %spec.select.i.i.i, ptr %i.h, align 8, !tbaa !16, !alias.scope !59
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.c, align 1, !tbaa !16
  store i8 %i.n, ptr %i.m, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.c, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.o, align 8, !tbaa !17, !alias.scope !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.i.i.i
  store i8 0, ptr %i.p, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb17TestFSTrimDirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 11 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %._crit_edge.i.i.thread, label %bb.b

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.1.i.in = phi i64 [ %i.b, %bb.b ], [ %.1.i, %bb.d ] ; 2 uses
  %.1.i = add i64 %.1.i.in, -1                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit

bb.d:                                             ; preds = %bb.c
  %.not12.i = icmp eq i64 %.1.i, 0
  br i1 %.not12.i, label %bb.e, label %bb.c, !llvm.loop !63

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !9
  %i.i = icmp ugt i64 %i.b, 15
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i64 %i.b, 0
  br i1 %i.j, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i64 %i.b, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !62

.noexc6.i:                                        ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #32 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  store i64 %i.b, ptr %i.h, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.e
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.h, %bb.e ] ; 4 uses
  %cond10 = icmp eq i64 %i.b, 1
  br i1 %cond10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.o, ptr %i.n, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.d, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i.thread, %bb.h, %bb.i
  %i.p = phi ptr [ %i.c, %._crit_edge.i.i.thread ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.b
  store i8 0, ptr %i.r, align 1, !tbaa !16
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !9, !alias.scope !64
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.1.i.in, i64 %i.b) ; 8 uses
  %i.t = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.t, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit
  %i.u = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.u, label %.noexc10.i.i, label %bb.k

.noexc10.i.i:                                     ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !62

.noexc11.i.i:                                     ; preds = %bb.k
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.k
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !13, !alias.scope !64
  store i64 %spec.select.i.i.i, ptr %i.s, align 8, !tbaa !16, !alias.scope !64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit ] ; 3 uses
  %cond = icmp eq i64 %spec.select.i.i.i, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.z, ptr %i.y, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.d, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.l, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.aa, align 8, !tbaa !17, !alias.scope !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19TestFSGetDirAndNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !9
  %i.b = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 9 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !62

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !13
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.n = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !67 ; 4 uses
  %.not.i = icmp eq i64 %i.n, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !13 ; 5 uses
  br i1 %.not.i, label %._crit_edge.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.f
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.f ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.1.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16, !noalias !67
  switch i8 %i.p, label %bb.f [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  ]

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !58

._crit_edge.i.i.i:                                ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !9, !alias.scope !67
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !17, !alias.scope !67
  store i8 0, ptr %i.q, align 8, !tbaa !16, !alias.scope !67
  br label %_ZN7rocksdb16TestFSGetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !9, !alias.scope !70
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i, i64 %i.n) ; 8 uses
  %i.t = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.t, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %i.u = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.u, label %.noexc10.i.i.i, label %bb.h

.noexc10.i.i.i:                                   ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc10.i.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  %5 = add nuw i64 %spec.select.i.i.i.i, 1        ; 2 uses
  %i.v = icmp slt i64 %5, 0
  br i1 %i.v, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc11.i.i.i:                                   ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc7 unwind label %bb.q

.noexc7:                                          ; preds = %.noexc11.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #32
          to label %.noexc8 unwind label %bb.q    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.w, ptr %2, align 8, !tbaa !13, !alias.scope !70
  store i64 %spec.select.i.i.i.i, ptr %i.s, align 8, !tbaa !16, !alias.scope !70
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i
  %i.x = phi ptr [ %i.w, %.noexc8 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i ] ; 3 uses
  switch i64 %spec.select.i.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %.pre.pre, align 1, !tbaa !16
  store i8 %i.y, ptr %i.x, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %.pre.pre, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i.i.i.i, ptr %i.z, align 8, !tbaa !17, !alias.scope !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.aa, align 1, !tbaa !16
  br label %_ZN7rocksdb16TestFSGetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7rocksdb16TestFSGetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i, %._crit_edge.i.i.i
  %i.ab = icmp eq ptr %.pre.pre, %i.a
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7rocksdb16TestFSGetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.ac)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb16TestFSGetDirNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.ae) #33
  %.pre32 = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = phi i64 [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.pre32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.aj = icmp ugt i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i64 noundef %i.ai, i64 noundef %i.af) #37
          to label %.noexc10 unwind label %bb.r

.noexc10:                                         ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !9, !alias.scope !73
  %i.al = load ptr, ptr %1, align 8, !tbaa !13, !noalias !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai ; 2 uses
  %i.an = sub nuw i64 %i.af, %i.ai                ; 8 uses
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %bb.l, label %._crit_edge.i.i.i9

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ap = icmp slt i64 %i.an, 0
  br i1 %i.ap, label %.noexc10.i.i, label %bb.m

.noexc10.i.i:                                     ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %.noexc10.i.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.aq = add nuw i64 %i.an, 1                    ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !62

.noexc11.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc12 unwind label %bb.r

.noexc12:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.m
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #32
          to label %.noexc13 unwind label %bb.r   ; 2 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.as, ptr %4, align 8, !tbaa !13, !alias.scope !73
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !16, !alias.scope !73
  br label %._crit_edge.i.i.i9

._crit_edge.i.i.i9:                               ; preds = %.noexc13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.at = phi ptr [ %i.as, %.noexc13 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.an, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i9
  %i.au = load i8, ptr %i.am, align 1, !tbaa !16
  store i8 %i.au, ptr %i.at, align 1, !tbaa !16
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i9
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.an, ptr %i.av, align 8, !tbaa !17, !alias.scope !73
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !16
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesIS9_SA_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit unwind label %bb.s

_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit: ; preds = %bb.p
  %i.ax = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.bb = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !16
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc11.i.i.i, %.noexc10.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.q
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc10.i.i, %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.s:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ak
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.s
  %i.bo = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.r ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bl, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.bq = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %.sink55 = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %.sink = phi ptr [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.bu = add i64 %.sink55, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22CalculateTypedChecksumERKNS_12ChecksumTypeEPKcmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !76
  switch i8 %i.c, label %bb.j [
    i8 1, label %bb.b
    i8 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN7rocksdb6crc32c6ExtendEjPKcm(i32 noundef 0, ptr noundef %1, i64 noundef %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.d, ptr %i.b, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb20FaultInjectionTestFS31MaybeInjectThreadLocalReadErrorERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ec, ptr %i.ed, align 4, !tbaa !53
  %i.ee = load i8, ptr %0, align 8, !tbaa !78
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  store ptr %3, ptr %24, align 8, !tbaa !175
  %i.eh = icmp eq ptr %3, null
  br i1 %i.eh, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #36
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.al, %bb.am
  %i.ej = phi i64 [ %i.ei, %bb.am ], [ 0, %bb.al ]
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.el = load ptr, ptr %4, align 8, !tbaa !13
  store ptr %i.el, ptr %25, align 8, !tbaa !175
  %i.em = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !17
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !55
  invoke void @_ZN7rocksdb16InjectedErrorLog6RecordERKNS_5SliceES3_RKNS0_17TaggedEntryDetailERKNS_8IOStatusE(ptr noundef nonnull align 8 dereferenceable(12) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %bb.aq

bb.ao:                                            ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aj, %bb.ag, %bb.z, %bb.u, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.ao ], [ %i.aw, %bb.l ], [ %i.bm, %bb.u ], [ %i.ci, %bb.z ], [ %i.dx, %bb.aj ], [ %i.dn, %bb.ag ]
  %i.eq = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i69, label %_ZN7rocksdb6StatusD2Ev.exit71, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70: ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.eq) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit71

_ZN7rocksdb6StatusD2Ev.exit71:                    ; preds = %bb.ap, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70
  resume { ptr, i32 } %.pn

bb.aq:                                            ; preds = %bb.ak, %bb.an, %bb.h
  ret void
}

declare noundef ptr @_ZNK7rocksdb14ThreadLocalPtr3GetEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb20FaultInjectionTestFS31ShouldExcludeFromFaultInjectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20FaultInjectionIOTypeE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 5, ptr %i.a, align 4, !tbaa !542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.d = invoke noundef zeroext i1 @_ZN7rocksdb20FaultInjectionTestFS16TryParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #35
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.k = load i32, ptr %i.a, align 4, !tbaa !542  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.f ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !542
  %i.n = icmp slt i32 %i.m, %i.k                  ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %bb.f, !llvm.loop !544

_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %bb.f
  %i.o = icmp eq ptr %.19.i.i.i, %i.j
  br i1 %i.o, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit: ; preds = %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !542
  %.not21 = icmp slt i32 %i.k, %i.q
  br i1 %.not21, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16

_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.e, %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.g, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16

bb.g:                                             ; preds = %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !166  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.not10.i.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i5, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %bb.g
  %i.u = load i32, ptr %i.a, align 4, !tbaa !542  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i6
  %.012.i.i.i7 = phi ptr [ %i.s, %.lr.ph.i.i.i6 ], [ %.1.i.i.i12, %bb.h ] ; 3 uses
  %.0811.i.i.i8 = phi ptr [ %i.t, %.lr.ph.i.i.i6 ], [ %.19.i.i.i9, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i7, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !542
  %i.x = icmp slt i32 %i.w, %i.u                  ; 2 uses
  %.19.i.i.i9 = select i1 %i.x, ptr %.0811.i.i.i8, ptr %.012.i.i.i7 ; 3 uses
  %.1.in.v.i.i.i10 = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i11 = getelementptr inbounds nuw i8, ptr %.012.i.i.i7, i64 %.1.in.v.i.i.i10
  %.1.i.i.i12 = load ptr, ptr %.1.in.i.i.i11, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.1.i.i.i12, null
  br i1 %.not.i.i.i13, label %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i14, label %bb.h, !llvm.loop !544

_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i14: ; preds = %bb.h
  %i.y = icmp eq ptr %.19.i.i.i9, %i.t
  br i1 %i.y, label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i14
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i9, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !542
  %i.ab = icmp sge i32 %i.u, %i.aa
  br label %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16

_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16: ; preds = %bb.g, %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i14, %bb.i, %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread, %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit ], [ false, %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit.thread ], [ false, %bb.g ], [ false, %_ZNKSt8_Rb_treeIN7rocksdb8FileTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i14 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit17 unwind label %bb.j

bb.j:                                             ; preds = %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #35
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit17:                 ; preds = %_ZNKSt3setIN7rocksdb8FileTypeESt4lessIS1_ESaIS1_EE5countERKS1_.exit16
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

declare noundef ptr @_ZN7rocksdb4port9SaveStackEPii(ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb20FaultInjectionTestFS16TryParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 13 uses
  %.not = icmp eq i64 %i.b, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !13    ; 4 uses
  br i1 %.not, label %._crit_edge.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %.1.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  switch i8 %i.e, label %bb.b [
    i8 92, label %6
    i8 47, label %6
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !58

.loopexit:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !9
  %i.g = icmp ugt i64 %i.b, 15
  br i1 %i.g, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %.loopexit
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i64 %i.b, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !62

.noexc6.i:                                        ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #32 ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !13
  store i64 %i.b, ptr %i.f, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.loopexit
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %.loopexit ] ; 5 uses
  switch i64 %i.b, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %.pre, align 1, !tbaa !16
  store i8 %i.m, ptr %i.l, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %.pre, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i, %bb.e, %bb.f
  %i.n = phi ptr [ %i.c, %._crit_edge.i.i.thread ], [ %i.l, %._crit_edge.i.i ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.o, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  store i8 0, ptr %i.p, align 1, !tbaa !16
  br label %bb.k

6:                                                ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %7 = icmp ugt i64 %.1.i.i.in, %i.b
  br i1 %7, label %8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

8:                                                ; preds = %6
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i64 noundef %.1.i.i.in, i64 noundef %i.b) #37, !noalias !545
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %6
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !9, !alias.scope !545
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 %.1.i.i.in ; 2 uses
  %i.s = sub nuw i64 %i.b, %.1.i.i.in             ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc10.i.i, label %bb.h

.noexc10.i.i:                                     ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #37
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !62

.noexc11.i.i:                                     ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32 ; 2 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !13, !alias.scope !545
  store i64 %i.s, ptr %i.q, align 8, !tbaa !16, !alias.scope !545
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.r, align 1, !tbaa !16
  store i8 %i.z, ptr %i.y, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !17, !alias.scope !545
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = invoke noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef %3, ptr noundef null)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.ac, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit, label %bb.n

bb.m:                                             ; preds = %.thread43.i, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.ad

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17 ; 10 uses
  %i.al = icmp eq i64 %i.ak, 3
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.n
  %i.am = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = xor i16 %i.an, 20300
  %i.ap = getelementptr i8, ptr %i.am, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i16
  %i.as = xor i16 %i.ar, 71
  %i.at = or i16 %i.ao, %i.as
  %i.au = icmp ne i16 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.thread43.i, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33.i: ; preds = %bb.n
  %i.ax = icmp ugt i64 %i.ak, 3
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33.i
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 7)
  %i.ay = load ptr, ptr %5, align 8, !tbaa !13    ; 6 uses
  %bcmp.i = call i32 @bcmp(ptr %i.ay, ptr nonnull @.str.112, i64 %spec.select.i.i.i)
  %.not.i.i12 = icmp eq i32 %bcmp.i, 0
  %i.az = icmp ugt i64 %i.ak, 6
  %or.cond.i = and i1 %i.az, %.not.i.i12
  br i1 %or.cond.i, label %.thread43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ba = add i64 %i.ak, -4
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread.i
  %.0.i.i.i = phi i64 [ %i.bf, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread.i ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.0.i.i.i
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = icmp ne i32 %i.bc, 1196379231
  %i.be = zext i1 %i.bd to i32
  %.not13.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not13.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.bf = add i64 %.0.i.i.i, -1
  %.not12.i.i.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, !llvm.loop !548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.bg = add i64 %.0.i.i.i, 4                    ; 5 uses
  %i.bh = icmp eq i64 %i.bg, %i.ak
  br i1 %i.bh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm.exit.i
  %i.bi = icmp ult i64 %i.bg, %i.ak
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13: ; preds = %bb.p
  %i.bj = sub nuw i64 %i.ak, %i.bg                ; 2 uses
  %spec.select.i.i23.i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 4)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bg
  %bcmp44.i = call i32 @bcmp(ptr %i.bk, ptr nonnull @.str.114, i64 %spec.select.i.i23.i)
  %.not.i26.i = icmp eq i32 %bcmp44.i, 0
  %i.bl = icmp ugt i64 %i.bj, 3
  %or.cond45.i = select i1 %.not.i26.i, i1 %i.bl, i1 false
  br i1 %or.cond45.i, label %.thread43.i, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm.exit.i
  %i.bm = icmp eq i64 %i.ak, -1
  br i1 %i.bm, label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit, label %.thread43.i

.thread43.i:                                      ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bn = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13 ], [ %i.ay, %bb.q ], [ %i.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %.242.i = phi i64 [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13 ], [ %i.ak, %bb.q ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.bn, ptr %4, align 8, !tbaa !175
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.242.i, ptr %i.bo, align 8, !tbaa !55
  %i.bp = invoke noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmRKNS_5SliceEPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %3, ptr noundef null)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.thread43.i
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.bq = load i32, ptr %3, align 4, !tbaa !542
  %i.br = icmp eq i32 %i.bq, 6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc
  %i.bs = phi i1 [ false, %.noexc ], [ %i.br, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit

_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit: ; preds = %bb.o, %bb.s, %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13, %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.l
  %.0 = phi i1 [ true, %bb.l ], [ %i.bs, %bb.s ], [ false, %bb.q ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13 ], [ false, %bb.p ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33.i ], [ false, %bb.o ]
  %i.bt = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7rocksdb12_GLOBAL__N_123TryParseInfoLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20FaultInjectionTestFS15GetErrorMessageENS_20FaultInjectionIOTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14ErrorOperationE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(496) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
end_hunk_1
