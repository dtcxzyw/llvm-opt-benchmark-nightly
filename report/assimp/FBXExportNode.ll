Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExportNode?download=true
inline.NumInlined: 1126
inline.NumDeleted: 374
begin_hunk_0_@_ZN6Assimp3FBX4Node10DumpBinaryERNS_12StreamWriterILb0ELb0EEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i, label %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN6Assimp3FBX17FBXExportProperty10DumpBinaryERNS_12StreamWriterILb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i, label %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit.loopexit, label %.lr.ph.i

_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.c, align 8
  %.pre11 = load ptr, ptr %i.a, align 8
  br label %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit

_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit: ; preds = %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit.loopexit, %bb.a
  %i.f = phi ptr [ %.pre11, %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit.loopexit ], [ %i.b, %bb.a ]
  %i.g = phi ptr [ %.pre, %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit.loopexit ], [ %i.b, %bb.a ]
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  tail call void @_ZN6Assimp3FBX4Node19EndPropertiesBinaryERNS_12StreamWriterILb0ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.m, %i.o
  br i1 %.not9, label %_ZN6Assimp3FBX4Node18DumpChildrenBinaryERNS_12StreamWriterILb0ELb0EEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit, %.lr.ph
  %.sroa.06.010 = phi ptr [ %i.p, %.lr.ph ], [ %i.m, %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit ] ; 2 uses
  tail call void @_ZN6Assimp3FBX4Node10DumpBinaryERNS_12StreamWriterILb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.06.010, ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !54
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.o
  br i1 %.not, label %_ZN6Assimp3FBX4Node18DumpChildrenBinaryERNS_12StreamWriterILb0ELb0EEE.exit, label %.lr.ph

_ZN6Assimp3FBX4Node18DumpChildrenBinaryERNS_12StreamWriterILb0ELb0EEE.exit: ; preds = %.lr.ph, %_ZN6Assimp3FBX4Node20DumpPropertiesBinaryERNS_12StreamWriterILb0ELb0EEE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i8, ptr %i.q, align 8, !range !55, !noundef !56
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp3FBX4Node18DumpChildrenBinaryERNS_12StreamWriterILb0ELb0EEE.exit
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = icmp ne ptr %i.t, %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6Assimp3FBX4Node18DumpChildrenBinaryERNS_12StreamWriterILb0ELb0EEE.exit
  %i.w = phi i1 [ true, %_ZN6Assimp3FBX4Node18DumpChildrenBinaryERNS_12StreamWriterILb0ELb0EEE.exit ], [ %i.v, %bb.b ]
  tail call void @_ZN6Assimp3FBX4Node9EndBinaryERNS_12StreamWriterILb0ELb0EEEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %i.w)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !85 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef 1, i64 noundef %i.h)
          to label %bb.b unwind label %bb.k       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !4
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !4
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.j, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Node9DumpAsciiERSoi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #3 align 2 !guid !86 {
bb.a:
  tail call void @_ZN6Assimp3FBX4Node10BeginAsciiERSoi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.c, %i.d
  br i1 %.not8.i, label %_ZN6Assimp3FBX4Node19DumpPropertiesAsciiERSoi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  tail call void @_ZN6Assimp3FBX17FBXExportProperty9DumpAsciiERSoi(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 32
  br i1 %i.j, label %.lr.ph.peel.next.i, label %_ZN6Assimp3FBX4Node19DumpPropertiesAsciiERSoi.exit

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.preheader.i, %.lr.ph.peel.next.i
  %.07.i = phi i64 [ %i.m, %.lr.ph.peel.next.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 2) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.pre.i, i64 %.07.i
  tail call void @_ZN6Assimp3FBX17FBXExportProperty9DumpAsciiERSoi(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %i.m = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph.peel.next.i, label %_ZN6Assimp3FBX4Node19DumpPropertiesAsciiERSoi.exit, !llvm.loop !5

_ZN6Assimp3FBX4Node19DumpPropertiesAsciiERSoi.exit: ; preds = %.lr.ph.peel.next.i, %bb.a, %.lr.ph.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !55, !noundef !56
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp3FBX4Node19DumpPropertiesAsciiERSoi.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6Assimp3FBX4Node19DumpPropertiesAsciiERSoi.exit
  %i.ac = add nsw i32 %2, 1
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.21, i64 noundef 2) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.ah = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %3, label %.lr.ph

3:                                                ; preds = %bb.c
  %4 = load i8, ptr %i.u, align 8
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.a, label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.loopexit

.lr.ph:                                           ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ai = phi ptr [ %i.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ah, %bb.c ] ; 2 uses
  %i.aj = phi ptr [ %i.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ag, %bb.c ]
  %.0.i11 = phi i64 [ %i.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %.0.i11 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.am, 14
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.ao = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 7598822138193342021
  %i.ar = getelementptr i8, ptr %i.ao, i64 6
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = xor i64 %i.as, 7309475598759324020
  %i.au = or i64 %i.aq, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_ZN6Assimp3FBX4Node9DumpAsciiERSoi(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ac), !inline_history !58
  %.pre = load ptr, ptr %i.af, align 8
  %.pre12 = load ptr, ptr %i.ae, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ay = phi ptr [ %.pre12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10 ], [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %i.az = phi ptr [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10 ], [ %i.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %i.ba = add nuw i64 %.0.i11, 1                  ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 112
  %i.bf = icmp ult i64 %i.ba, %i.be
  br i1 %i.bf, label %.lr.ph, label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit, !llvm.loop !6

_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.b
  %.ph = phi ptr [ %i.y, %bb.b ], [ %i.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.ph17 = phi ptr [ %i.y, %bb.b ], [ %i.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.pr.pr = load i8, ptr %i.u, align 8
  %6 = trunc nuw i8 %.pr.pr to i1
  br i1 %6, label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.a, label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.loopexit

_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.loopexit: ; preds = %3, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit
  %7 = phi ptr [ %i.ag, %3 ], [ %.ph, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit ]
  %8 = phi ptr [ %i.ag, %3 ], [ %.ph17, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit ]
  %i.bg = icmp ne ptr %8, %7
  br label %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.a

_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.a: ; preds = %3, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.loopexit, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit
  %i.bh = phi i1 [ true, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit ], [ %i.bg, %_ZN6Assimp3FBX4Node17DumpChildrenAsciiERSoi.exit.loopexit ], [ true, %3 ]
  tail call void @_ZN6Assimp3FBX4Node8EndAsciiERSoib(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %i.bh)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !91 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp3FBX4Node10DumpBinaryERNS_12StreamWriterILb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  invoke void @_ZN6Assimp3FBX4Node9DumpAsciiERSoi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %3)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.a, ptr %5, align 8, !alias.scope !94
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !94
  store i8 0, ptr %i.a, align 8, !alias.scope !94
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !94 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !94 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !94 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !alias.scope !94 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = load i64, ptr %i.b, align 8              ; 2 uses
  %i.u = add i64 %i.t, %i.s                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp ugt i64 %i.u, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = sub nuw i64 %i.u, %i.ab
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ad)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.h
  %.pre.i = load i64, ptr %i.r, align 8
  %.pre7.i = load ptr, ptr %i.v, align 8
  %.pre8.i = load i64, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = phi i64 [ %.pre8.i, %.noexc ], [ %i.t, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.af = phi ptr [ %.pre7.i, %.noexc ], [ %i.y, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.ag = phi i64 [ %.pre.i, %.noexc ], [ %i.s, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.ai, i64 %i.ae, i1 false)
  %i.aj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ak = load i64, ptr %i.r, align 8
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.r, align 8
  %i.am = load ptr, ptr %5, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.i
  %i.ao = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ao)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.a, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %4, align 8
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %4, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load i64, ptr %i.az, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #22
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.be) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8               ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.k, %bb.f
  %.sink = phi ptr [ %i.o, %bb.f ], [ %i.bh, %bb.k ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.bg, %bb.k ]
  %i.bj = load i64, ptr %i.a, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bk) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.bg, %bb.k ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bf, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn

bb.m:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Node5BeginERNS_12StreamWriterILb0ELb0EEEbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !99 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp3FBX4Node11BeginBinaryERNS_12StreamWriterILb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  invoke void @_ZN6Assimp3FBX4Node10BeginAsciiERSoi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %3)
          to label %bb.d unwind label %bb.j

end_hunk_0
