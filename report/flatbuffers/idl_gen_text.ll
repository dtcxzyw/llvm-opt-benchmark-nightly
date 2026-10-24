Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_text?download=true
inline.NumInlined: 1776
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11flatbuffers11JsonPrinter9GenStructERKNS_9StructDefEPKNS_5TableEi:bb.a
  ret ptr %.6
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter16OutputIdentifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.c = load i8, ptr %i.b, align 2, !tbaa !195, !range !144, !noundef !22
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40   ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.m = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.k, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.p = icmp ugt i64 %i.i, %i.o
  br i1 %i.p, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.h, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %bb.c ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 34, ptr %i.r, align 1, !tbaa !42
  store i64 %i.i, ptr %i.g, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.i
  store i8 0, ptr %i.t, align 1, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.x
  br i1 %i.ab, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !41
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.ac, i64 noundef %i.x) ; 0 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !195, !range !144, !noundef !22
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40 ; 4 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5: ; preds = %bb.f
  %i.ap = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %bb.f
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5
  %i.ar = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5 ]
  %i.as = icmp ugt i64 %i.al, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit6

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.ak, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i4 = load ptr, ptr %i.ai, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i3, %bb.g
  %i.at = phi ptr [ %.pre.i.i4, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i3 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak
  store i8 34, ptr %i.au, align 1, !tbaa !42
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !40
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.al
  store i8 0, ptr %i.aw, align 1, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIhEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = load i16, ptr %i.d, align 8, !tbaa !191
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !42
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIhEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %i.h, ptr noundef nonnull align 8 dereferenceable(26) %i.c, i32 noundef %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load i32, ptr %i.i, align 8, !tbaa !196
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.m = load i16, ptr %i.l, align 8, !tbaa !191  ; 2 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !145
  %i.o = sext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !192
  %i.s = icmp ult i16 %i.m, %i.r
  br i1 %i.s, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.t = zext i16 %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIhEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %i.y, ptr noundef nonnull align 8 dereferenceable(26) %i.z, i32 noundef %4)
  br label %bb.k

_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ae = and i64 %i.ad, -4
  %i.af = icmp eq i64 %i.ae, 4611686018427387900
  br i1 %i.af, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit.thread
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !191 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 8 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !42  ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %i.an = phi i8 [ %i.aq, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.034.i.i.i = phi ptr [ %i.ap, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %5 = sext i8 %i.an to i32
  %6 = add nsw i32 %5, -48
  %i.ao = icmp ult i32 %6, 10
  br i1 %i.ao, label %.critedge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !42  ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq i8 %i.an, 48
  br i1 %i.ar, label %bb.h, label %.critedge.thread.i.i.i

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !42
  %i.au = and i8 %i.at, -33
  %i.av = icmp eq i8 %i.au, 88
  br i1 %i.av, label %bb.i, label %.critedge.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.al, ptr %i.b, align 8, !tbaa !197
  %i.aw = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.ax = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.al, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.aw) #23, !inline_history !201
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !197 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !42
  %.not.i.i.i.i = icmp ne i8 %i.az, 0
  %i.ba = icmp eq ptr %i.ay, %i.al
  %or.cond.i.i.i.i = or i1 %i.ba, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %or.cond.i.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.g, %bb.h, %.critedge.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.al, ptr %i.a, align 8, !tbaa !197
  %i.bb = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.bc = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.bb) #23, !inline_history !201
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !42
  %.not.i26.i.i.i = icmp ne i8 %i.be, 0
  %i.bf = icmp eq ptr %i.bd, %i.al
  %or.cond.i27.i.i.i = or i1 %i.bf, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %or.cond.i27.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i: ; preds = %.critedge.thread.i.i.i, %bb.i
  %.28.i.i = phi i64 [ %i.ax, %bb.i ], [ %i.bc, %.critedge.thread.i.i.i ]
  %spec.select21.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i, i64 255)
  %spec.select.i.i = trunc nuw i64 %spec.select21.i.i to i8
  br label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit

_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit: ; preds = %bb.i, %.critedge.thread.i.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i
  %.sink.i.i = phi i8 [ 0, %.critedge.thread.i.i.i ], [ %spec.select.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.bg = load i32, ptr %2, align 4, !tbaa !145
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !192
  %i.bl = icmp ult i16 %i.aj, %i.bk
  br i1 %i.bl, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIhEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit
  %i.bm = zext i16 %i.aj to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.bo, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIhEET_tS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !42
  br label %_ZNK11flatbuffers5Table8GetFieldIhEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIhEET_tS2_.exit:  ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.j
  %i.bs = phi i8 [ %i.br, %bb.j ], [ %.sink.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %.sink.i.i, %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIhEET_RKNS_8FieldDefE.exit ]
  call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIhEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %i.bs, ptr noundef nonnull align 8 dereferenceable(26) %i.ah, i32 noundef %4)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIhhEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIhEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIaEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load i16, ptr %i.b, align 8, !tbaa !191
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIaEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %i.f, ptr noundef nonnull align 8 dereferenceable(26) %i.a, i32 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !196
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.k = load i16, ptr %i.j, align 8, !tbaa !191  ; 2 uses
  %i.l = load i32, ptr %2, align 4, !tbaa !145
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !192
  %i.q = icmp ult i16 %i.k, %i.p
  br i1 %i.q, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.r = zext i16 %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIaEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %i.w, ptr noundef nonnull align 8 dereferenceable(26) %i.x, i32 noundef %4)
  br label %bb.h

_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ac = and i64 %i.ab, -4
  %i.ad = icmp eq i64 %i.ac, 4611686018427387900
  br i1 %i.ad, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit.thread
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !191 ; 2 uses
  %i.ai = tail call noundef signext i8 @_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIaEET_RKNS_8FieldDefE(ptr noundef nonnull align 8 dereferenceable(312) %1) ; 2 uses
  %i.aj = load i32, ptr %2, align 4, !tbaa !145
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !192
  %i.ao = icmp ult i16 %i.ah, %i.an
  br i1 %i.ao, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIaEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %bb.f
  %i.ap = zext i16 %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.ar, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIaEET_tS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !42
  br label %_ZNK11flatbuffers5Table8GetFieldIaEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIaEET_tS2_.exit:  ; preds = %bb.f, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.g
  %i.av = phi i8 [ %i.au, %bb.g ], [ %i.ai, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %i.ai, %bb.f ]
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIaEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %i.av, ptr noundef nonnull align 8 dereferenceable(26) %i.af, i32 noundef %4)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIaaEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIaEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIsEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load i16, ptr %i.b, align 8, !tbaa !191
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !192
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIsEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef signext %i.f, ptr noundef nonnull align 8 dereferenceable(26) %i.a, i32 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !196
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.k = load i16, ptr %i.j, align 8, !tbaa !191  ; 2 uses
  %i.l = load i32, ptr %2, align 4, !tbaa !145
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !192
  %i.q = icmp ult i16 %i.k, %i.p
  br i1 %i.q, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.r = zext i16 %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !192
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIsEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef signext %i.w, ptr noundef nonnull align 8 dereferenceable(26) %i.x, i32 noundef %4)
  br label %bb.h

_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ac = and i64 %i.ab, -4
  %i.ad = icmp eq i64 %i.ac, 4611686018427387900
  br i1 %i.ad, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit.thread
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !191 ; 2 uses
  %i.ai = tail call noundef signext i16 @_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIsEET_RKNS_8FieldDefE(ptr noundef nonnull align 8 dereferenceable(312) %1) ; 2 uses
  %i.aj = load i32, ptr %2, align 4, !tbaa !145
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !192
  %i.ao = icmp ult i16 %i.ah, %i.an
  br i1 %i.ao, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIsEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %bb.f
  %i.ap = zext i16 %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.ar, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIsEET_tS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !192
  br label %_ZNK11flatbuffers5Table8GetFieldIsEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIsEET_tS2_.exit:  ; preds = %bb.f, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.g
  %i.av = phi i16 [ %i.au, %bb.g ], [ %i.ai, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %i.ai, %bb.f ]
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIsEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef signext %i.av, ptr noundef nonnull align 8 dereferenceable(26) %i.af, i32 noundef %4)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIssEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIsEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldItEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = load i16, ptr %i.d, align 8, !tbaa !191
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !192
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarItEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %i.h, ptr noundef nonnull align 8 dereferenceable(26) %i.c, i32 noundef %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load i32, ptr %i.i, align 8, !tbaa !196
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.m = load i16, ptr %i.l, align 8, !tbaa !191  ; 2 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !145
  %i.o = sext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !192
  %i.s = icmp ult i16 %i.m, %i.r
  br i1 %i.s, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.t = zext i16 %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarItEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %i.y, ptr noundef nonnull align 8 dereferenceable(26) %i.z, i32 noundef %4)
  br label %bb.k

_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ae = and i64 %i.ad, -4
  %i.af = icmp eq i64 %i.ae, 4611686018427387900
  br i1 %i.af, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit.thread
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !191 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 8 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !42  ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %i.an = phi i8 [ %i.aq, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.034.i.i.i = phi ptr [ %i.ap, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %5 = sext i8 %i.an to i32
  %6 = add nsw i32 %5, -48
  %i.ao = icmp ult i32 %6, 10
  br i1 %i.ao, label %.critedge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !42  ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq i8 %i.an, 48
  br i1 %i.ar, label %bb.h, label %.critedge.thread.i.i.i

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !42
  %i.au = and i8 %i.at, -33
  %i.av = icmp eq i8 %i.au, 88
  br i1 %i.av, label %bb.i, label %.critedge.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.al, ptr %i.b, align 8, !tbaa !197
  %i.aw = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.ax = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.al, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.aw) #23, !inline_history !201
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !197 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !42
  %.not.i.i.i.i = icmp ne i8 %i.az, 0
  %i.ba = icmp eq ptr %i.ay, %i.al
  %or.cond.i.i.i.i = or i1 %i.ba, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %or.cond.i.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.g, %bb.h, %.critedge.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.al, ptr %i.a, align 8, !tbaa !197
  %i.bb = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.bc = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.bb) #23, !inline_history !201
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !42
  %.not.i26.i.i.i = icmp ne i8 %i.be, 0
  %i.bf = icmp eq ptr %i.bd, %i.al
  %or.cond.i27.i.i.i = or i1 %i.bf, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %or.cond.i27.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i: ; preds = %.critedge.thread.i.i.i, %bb.i
  %.28.i.i = phi i64 [ %i.ax, %bb.i ], [ %i.bc, %.critedge.thread.i.i.i ]
  %spec.select21.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i, i64 65535)
  %spec.select.i.i = trunc nuw i64 %spec.select21.i.i to i16
  br label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit

_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit: ; preds = %bb.i, %.critedge.thread.i.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i
  %.sink.i.i = phi i16 [ 0, %.critedge.thread.i.i.i ], [ %spec.select.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.bg = load i32, ptr %2, align 4, !tbaa !145
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !192
  %i.bl = icmp ult i16 %i.aj, %i.bk
  br i1 %i.bl, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldItEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit
  %i.bm = zext i16 %i.aj to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.bo, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldItEET_tS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !192
  br label %_ZNK11flatbuffers5Table8GetFieldItEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldItEET_tS2_.exit:  ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.j
  %i.bs = phi i16 [ %i.br, %bb.j ], [ %.sink.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %.sink.i.i, %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultItEET_RKNS_8FieldDefE.exit ]
  call void @_ZN11flatbuffers11JsonPrinter11PrintScalarItEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %i.bs, ptr noundef nonnull align 8 dereferenceable(26) %i.ah, i32 noundef %4)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIttEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldItEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIiEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load i16, ptr %i.b, align 8, !tbaa !191
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !145
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIiEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(26) %i.a, i32 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !196
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.k = load i16, ptr %i.j, align 8, !tbaa !191  ; 2 uses
  %i.l = load i32, ptr %2, align 4, !tbaa !145
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !192
  %i.q = icmp ult i16 %i.k, %i.p
  br i1 %i.q, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.r = zext i16 %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIiEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(26) %i.x, i32 noundef %4)
  br label %bb.h

_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ac = and i64 %i.ab, -4
  %i.ad = icmp eq i64 %i.ac, 4611686018427387900
  br i1 %i.ad, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit.thread
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !191 ; 2 uses
  %i.ai = tail call noundef i32 @_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIiEET_RKNS_8FieldDefE(ptr noundef nonnull align 8 dereferenceable(312) %1) ; 2 uses
  %i.aj = load i32, ptr %2, align 4, !tbaa !145
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !192
  %i.ao = icmp ult i16 %i.ah, %i.an
  br i1 %i.ao, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIiEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %bb.f
  %i.ap = zext i16 %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.ar, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIiEET_tS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !145
  br label %_ZNK11flatbuffers5Table8GetFieldIiEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIiEET_tS2_.exit:  ; preds = %bb.f, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.g
  %i.av = phi i32 [ %i.au, %bb.g ], [ %i.ai, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %i.ai, %bb.f ]
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIiEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(26) %i.af, i32 noundef %4)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIiiEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIiEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIjEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = load i16, ptr %i.d, align 8, !tbaa !191
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIjEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(26) %i.c, i32 noundef %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load i32, ptr %i.i, align 8, !tbaa !196
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.m = load i16, ptr %i.l, align 8, !tbaa !191  ; 2 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !145
  %i.o = sext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !192
  %i.s = icmp ult i16 %i.m, %i.r
  br i1 %i.s, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.t = zext i16 %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !145
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIjEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(26) %i.z, i32 noundef %4)
  br label %bb.k

_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ae = and i64 %i.ad, -4
  %i.af = icmp eq i64 %i.ae, 4611686018427387900
  br i1 %i.af, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit.thread
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !191 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 8 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !42  ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %i.an = phi i8 [ %i.aq, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.034.i.i.i = phi ptr [ %i.ap, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %5 = sext i8 %i.an to i32
  %6 = add nsw i32 %5, -48
  %i.ao = icmp ult i32 %6, 10
  br i1 %i.ao, label %.critedge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !42  ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq i8 %i.an, 48
  br i1 %i.ar, label %bb.h, label %.critedge.thread.i.i.i

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !42
  %i.au = and i8 %i.at, -33
  %i.av = icmp eq i8 %i.au, 88
  br i1 %i.av, label %bb.i, label %.critedge.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.al, ptr %i.b, align 8, !tbaa !197
  %i.aw = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.ax = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.al, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.aw) #23, !inline_history !201
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !197 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !42
  %.not.i.i.i.i = icmp ne i8 %i.az, 0
  %i.ba = icmp eq ptr %i.ay, %i.al
  %or.cond.i.i.i.i = or i1 %i.ba, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %or.cond.i.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.g, %bb.h, %.critedge.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.al, ptr %i.a, align 8, !tbaa !197
  %i.bb = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.bc = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.bb) #23, !inline_history !201
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !42
  %.not.i26.i.i.i = icmp ne i8 %i.be, 0
  %i.bf = icmp eq ptr %i.bd, %i.al
  %or.cond.i27.i.i.i = or i1 %i.bf, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %or.cond.i27.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i: ; preds = %.critedge.thread.i.i.i, %bb.i
  %.28.i.i = phi i64 [ %i.ax, %bb.i ], [ %i.bc, %.critedge.thread.i.i.i ]
  %spec.select21.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i, i64 4294967295)
  %spec.select.i.i = trunc nuw i64 %spec.select21.i.i to i32
  br label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit

_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit: ; preds = %bb.i, %.critedge.thread.i.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i
  %.sink.i.i = phi i32 [ 0, %.critedge.thread.i.i.i ], [ %spec.select.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.bg = load i32, ptr %2, align 4, !tbaa !145
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !192
  %i.bl = icmp ult i16 %i.aj, %i.bk
  br i1 %i.bl, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIjEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit
  %i.bm = zext i16 %i.aj to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.bo, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIjEET_tS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !145
  br label %_ZNK11flatbuffers5Table8GetFieldIjEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIjEET_tS2_.exit:  ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.j
  %i.bs = phi i32 [ %i.br, %bb.j ], [ %.sink.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %.sink.i.i, %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIjEET_RKNS_8FieldDefE.exit ]
  call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIjEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(26) %i.ah, i32 noundef %4)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIjjEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIjEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIlEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load i16, ptr %i.c, align 8, !tbaa !191
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !202
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIlEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(26) %i.b, i32 noundef %4)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !196
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.l = load i16, ptr %i.k, align 8, !tbaa !191  ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !145
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !192
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %bb.f

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.s = zext i16 %i.l to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIlEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(26) %i.y, i32 noundef %4)
  br label %bb.j

bb.f:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = and i64 %i.ac, -4
  %i.ae = icmp eq i64 %i.ad, 4611686018427387900
  br i1 %i.ae, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f
  %i.af = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !191 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !202
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef nonnull %i.a, ptr noundef %i.ak, i32 noundef 0, i1 noundef zeroext true) ; 0 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !202 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.an = load i32, ptr %2, align 4, !tbaa !145
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !192
  %i.as = icmp ult i16 %i.ai, %i.ar
  br i1 %i.as, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIlEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %bb.h
  %i.at = zext i16 %i.ai to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.av, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIlEET_tS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !202
  br label %_ZNK11flatbuffers5Table8GetFieldIlEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIlEET_tS2_.exit:  ; preds = %bb.h, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.i
  %i.az = phi i64 [ %i.ay, %bb.i ], [ %i.am, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %i.am, %bb.h ]
  call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIlEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(26) %i.ag, i32 noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIlEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldImEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load i16, ptr %i.c, align 8, !tbaa !191
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !202
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarImEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(26) %i.b, i32 noundef %4)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !196
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.l = load i16, ptr %i.k, align 8, !tbaa !191  ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !145
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !192
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %bb.f

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.s = zext i16 %i.l to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarImEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(26) %i.y, i32 noundef %4)
  br label %bb.j

bb.f:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = and i64 %i.ac, -4
  %i.ae = icmp eq i64 %i.ad, 4611686018427387900
  br i1 %i.ae, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.f
  %i.af = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !191 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !202
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 3 uses
  %i.al = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef nonnull %i.a, ptr noundef %i.ak, i32 noundef 0, i1 noundef zeroext true)
  %i.am = load i64, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp ne i64 %i.am, 0
  %or.cond.not.i = select i1 %i.al, i1 %.not.i.i, i1 false
  br i1 %or.cond.not.i, label %.preheader.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultImEET_RKNS_8FieldDefE.exit

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.014.i.i = phi ptr [ %i.ap, %.preheader.i.i ], [ %i.ak, %bb.h ] ; 4 uses
  %i.an = load i8, ptr %.014.i.i, align 1, !tbaa !42 ; 2 uses
  %.not17.i.i = icmp eq i8 %i.an, 0
  %5 = sext i8 %i.an to i32
  %6 = add nsw i32 %5, -48
  %i.ao = icmp ult i32 %6, 10
  %or.cond.i.i = select i1 %.not17.i.i, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 1
  br i1 %or.cond.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !280

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.aq = icmp ugt ptr %.014.i.i, %i.ak
  %.idx.i.i = sext i1 %i.aq to i64
  %i.ar = getelementptr inbounds i8, ptr %.014.i.i, i64 %.idx.i.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !42
  %i.at = icmp eq i8 %i.as, 45
  %spec.select.i = select i1 %i.at, i64 -1, i64 %i.am
  br label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultImEET_RKNS_8FieldDefE.exit

_ZN11flatbuffers11JsonPrinter15GetFieldDefaultImEET_RKNS_8FieldDefE.exit: ; preds = %bb.h, %.critedge.i.i
  %i.au = phi i64 [ %i.am, %bb.h ], [ %spec.select.i, %.critedge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.av = load i32, ptr %2, align 4, !tbaa !145
  %i.aw = sext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !192
  %i.ba = icmp ult i16 %i.ai, %i.az
  br i1 %i.ba, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldImEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultImEET_RKNS_8FieldDefE.exit
  %i.bb = zext i16 %i.ai to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.bd, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldImEET_tS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !202
  br label %_ZNK11flatbuffers5Table8GetFieldImEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldImEET_tS2_.exit:  ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultImEET_RKNS_8FieldDefE.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.i
  %i.bh = phi i64 [ %i.bg, %bb.i ], [ %i.au, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %i.au, %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultImEET_RKNS_8FieldDefE.exit ]
  call void @_ZN11flatbuffers11JsonPrinter11PrintScalarImEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(26) %i.ag, i32 noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldImEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIfEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load i16, ptr %i.c, align 8, !tbaa !191
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !204
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIfEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %i.g, ptr noundef nonnull align 8 dereferenceable(26) %i.b, i32 noundef %4)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !196
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.l = load i16, ptr %i.k, align 8, !tbaa !191  ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !145
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !192
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.s = zext i16 %i.l to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !192  ; 2 uses
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit.thread, label %_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit

_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIfEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %i.x, ptr noundef nonnull align 8 dereferenceable(26) %i.y, i32 noundef %4)
  br label %bb.i

_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit.thread: ; preds = %bb.d, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = and i64 %i.ac, -4
  %i.ae = icmp eq i64 %i.ad, 4611686018427387900
  br i1 %i.ae, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit.thread
  %i.af = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 4) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !191 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !197
  %i.al = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.am = call float @strtof_l(ptr noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef %i.al) #23 ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.ak
  br i1 %.not.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !42
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.critedge.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.aq = fcmp uno float %i.am, 0.000000e+00
  br i1 %i.aq, label %.sink.split.i.i.i, label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit

.sink.split.i.i.i:                                ; preds = %.critedge.i.i.i
  br label %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit

_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit: ; preds = %bb.f, %bb.g, %.critedge.i.i.i, %.sink.split.i.i.i
  %.0.i = phi float [ %i.am, %.critedge.i.i.i ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ], [ +qnan, %.sink.split.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ar = load i32, ptr %2, align 4, !tbaa !145
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !192
  %i.aw = icmp ult i16 %i.ai, %i.av
  br i1 %i.aw, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, label %_ZNK11flatbuffers5Table8GetFieldIfEET_tS2_.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15: ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit
  %i.ax = zext i16 %i.ai to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !192 ; 2 uses
  %.not.i16 = icmp eq i16 %i.az, 0
  br i1 %.not.i16, label %_ZNK11flatbuffers5Table8GetFieldIfEET_tS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !204
  br label %_ZNK11flatbuffers5Table8GetFieldIfEET_tS2_.exit

_ZNK11flatbuffers5Table8GetFieldIfEET_tS2_.exit:  ; preds = %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15, %bb.h
  %i.bd = phi float [ %i.bc, %bb.h ], [ %.0.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i15 ], [ %.0.i, %_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIfEET_RKNS_8FieldDefE.exit ]
  call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIfEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(26) %i.ag, i32 noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK11flatbuffers5Table11GetOptionalIffEESt8optionalIT0_Et.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK11flatbuffers5Table8GetFieldIfEET_tS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter8GenFieldIdEEvRKNS_8FieldDefEPKNS_5TableEbi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load i16, ptr %i.c, align 8, !tbaa !191
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !206
  tail call void @_ZN11flatbuffers11JsonPrinter11PrintScalarIdEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %i.g, ptr noundef nonnull align 8 dereferenceable(26) %i.b, i32 noundef %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !196
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.l = load i16, ptr %i.k, align 8, !tbaa !191  ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !145
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !192
  %i.r = icmp ult i16 %i.l, %i.q
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers11JsonPrinter11PrintScalarIhEEvT_RKNS_4TypeEi:bb.a
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !42
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !42
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.fc

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64, %.critedge59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare noundef ptr @_ZNK11flatbuffers7EnumDef13ReverseLookupElb(ptr noundef nonnull align 8 dereferenceable(312), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !147, !alias.scope !292
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !40, !alias.scope !292
  store i8 0, ptr %i.c, align 8, !tbaa !42, !alias.scope !292
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !292 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !292 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !228, !noalias !292 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !292 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !42, !alias.scope !292
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !149
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !149
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #23
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !149
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !149
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #11 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !42      ; 2 uses
  %.not2533 = icmp eq i8 %i.e, 0
  br i1 %.not2533, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %.preheader ] ; 2 uses
  %.034 = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %4 = sext i8 %i.f to i32
  %5 = add nsw i32 %4, -48
  %i.g = icmp ult i32 %5, 10
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !42    ; 2 uses
  %.not25 = icmp eq i8 %i.i, 0
  br i1 %.not25, label %.critedge.thread, label %.lr.ph, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #28, !inline_history !201
  store i32 0, ptr %i.o, align 4, !tbaa !145
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %1, ptr %i.b, align 8, !tbaa !197
  %i.p = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.q = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.p) #23
  store i64 %i.q, ptr %0, align 8, !tbaa !202
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !42
  %.not.i = icmp ne i8 %i.s, 0
  %i.t = icmp eq ptr %i.r, %1
  %or.cond.i = or i1 %i.t, %.not.i
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !tbaa !202
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @__errno_location() #28, !inline_history !201
  %i.v = load i32, ptr %i.u, align 4, !tbaa !145
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %bb.j, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.1.i = phi i1 [ false, %bb.g ], [ true, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.y

.critedge.thread:                                 ; preds = %bb.b, %.preheader, %bb.c, %.critedge
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  %i.w = tail call ptr @__errno_location() #28, !inline_history !201
  store i32 0, ptr %i.w, align 4, !tbaa !145
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %1, ptr %i.a, align 8, !tbaa !197
  %i.x = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.y = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.x) #23
  store i64 %i.y, ptr %0, align 8, !tbaa !202
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !42
  %.not.i26 = icmp ne i8 %i.aa, 0
  %i.ab = icmp eq ptr %i.z, %1
  %or.cond.i27 = or i1 %i.ab, %.not.i26
  br i1 %or.cond.i27, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %0, align 8, !tbaa !202
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30

bb.n:                                             ; preds = %bb.l
  br i1 %3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr @__errno_location() #28, !inline_history !201
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !145
  %.not24.i29 = icmp eq i32 %i.ad, 0
  br i1 %.not24.i29, label %bb.p, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30: ; preds = %bb.m, %bb.o, %bb.p
  %.1.i28 = phi i1 [ false, %bb.m ], [ true, %bb.p ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  br i1 %3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call ptr @__errno_location() #28
  store i32 0, ptr %i.ae, align 4, !tbaa !145
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %1, ptr %i.c, align 8, !tbaa !197
  %i.af = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.ag = call i64 @__isoc23_strtoll_l(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %2, ptr noundef %i.af) #23
  store i64 %i.ag, ptr %0, align 8, !tbaa !202
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !42
  %.not = icmp ne i8 %i.ai, 0
  %i.aj = icmp eq ptr %i.ah, %1
  %or.cond = or i1 %i.aj, %.not
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8, !tbaa !202
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  br i1 %3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call ptr @__errno_location() #28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !145
  %.not24 = icmp eq i32 %i.al, 0
  br i1 %.not24, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.1 = phi i1 [ false, %bb.t ], [ true, %bb.w ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30, %bb.x
  %.2 = phi i1 [ %.1, %bb.x ], [ %.1.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit ], [ %.1.i28, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30 ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll_l(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter11PrintScalarIaEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !209
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not55 = icmp eq i8 %1, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.e = select i1 %.not55, i64 5, i64 4          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.b
  %i.j = select i1 %.not55, ptr @.str.5, ptr @.str.4
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.j, i64 noundef %i.e) ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !211, !range !144, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.thread94

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !212  ; 6 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread94, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i8 %1 to i64                        ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers11JsonPrinter11PrintScalarIaEEvT_RKNS_4TypeEi:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.m
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68
  %i.cq = phi i64 [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68 ]
  %i.cr = icmp ugt i64 %i.ck, %i.cq
  br i1 %i.cr, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i67 = load ptr, ptr %i.ch, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66, %bb.n
  %i.cs = phi ptr [ %.pre.i.i67, %bb.n ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cj
  store i8 34, ptr %i.ct, align 1, !tbaa !42
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !40
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ck
  store i8 0, ptr %i.cv, align 1, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !219 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !219 ; 2 uses
  %.not9698 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not9698, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.da = icmp eq i64 %.1, %i.r
  br i1 %i.da, label %.critedge59, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %bb.r
  %.0100 = phi i64 [ %.1, %bb.r ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69 ] ; 2 uses
  %.sroa.088.099 = phi ptr [ %i.ee, %bb.r ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69 ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.088.099, align 8, !tbaa !221 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !223 ; 2 uses
  %i.de = and i64 %i.dd, %i.r
  %.not52 = icmp eq i64 %i.de, 0
  br i1 %.not52, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.df = or i64 %i.dd, %.0100
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40
  %i.dl = sub i64 4611686018427387903, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.di
  br i1 %i.dm, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73: ; preds = %bb.o
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.do = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef %i.dn, i64 noundef %i.di) ; 0 uses
  %i.dp = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !40 ; 4 uses
  %i.ds = add i64 %i.dr, 1                        ; 3 uses
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !41 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dw = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dx = load i64, ptr %i.du, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77
  %i.dy = phi i64 [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77 ]
  %i.dz = icmp ugt i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 noundef %i.dr, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i76 = load ptr, ptr %i.dp, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75, %bb.q
  %i.ea = phi ptr [ %.pre.i.i76, %bb.q ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i8 32, ptr %i.eb, align 1, !tbaa !42
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !40
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ds
  store i8 0, ptr %i.ed, align 1, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78, %.lr.ph
  %.1 = phi i64 [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78 ], [ %.0100, %.lr.ph ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.088.099, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.ee, %i.cz
  br i1 %.not96, label %._crit_edge, label %.lr.ph, !llvm.loop !293

.critedge59:                                      ; preds = %._crit_edge
  %i.ef = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !40
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  store i8 34, ptr %i.ek, align 1, !tbaa !42
  br label %bb.u

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %._crit_edge
  %i.el = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 noundef %i.cj, i8 noundef signext 0)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.thread, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.em = sext i8 %1 to i32
  call void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !40 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !40
  %i.et = sub i64 4611686018427387903, %i.es
  %i.eu = icmp ult i64 %i.et, %i.eq
  br i1 %i.eu, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %.thread94
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc79 unwind label %bb.t

.noexc79:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %.thread94
  %i.ev = load ptr, ptr %5, align 8, !tbaa !41
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef %i.ev, i64 noundef %i.eq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ex = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !42
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !42
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.fc

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64, %.critedge59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIaEET_RKNS_8FieldDefE(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !42    ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %1 = sext i8 %i.f to i32
  %2 = add nsw i32 %1, -48
  %i.g = icmp ult i32 %2, 10
  br i1 %i.g, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !42    ; 2 uses
  %.not25.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.d, ptr %i.b, align 8, !tbaa !197
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.o) #23, !inline_history !201
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !42
  %.not.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %i.d
  %or.cond.i.i.i = or i1 %i.s, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %or.cond.i.i.i, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

.critedge.thread.i.i:                             ; preds = %bb.b, %bb.c, %.critedge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.d, ptr %i.a, align 8, !tbaa !197
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.t) #23, !inline_history !201
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !42
  %.not.i26.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %i.d
  %or.cond.i27.i.i = or i1 %i.x, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %or.cond.i27.i.i, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i: ; preds = %.critedge.thread.i.i, %bb.d
  %.28.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i ] ; 2 uses
  %i.y = icmp sgt i64 %.28.i, 127
  br i1 %i.y, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i
  %spec.select21.i = call i64 @llvm.smax.i64(i64 %.28.i, i64 -128)
  %spec.select.i = trunc nsw i64 %spec.select21.i to i8
  br label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit: ; preds = %bb.d, %.critedge.thread.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i, %bb.e
  %.sink.i = phi i8 [ %spec.select.i, %bb.e ], [ 127, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i ], [ 0, %.critedge.thread.i.i ], [ 0, %bb.d ]
  ret i8 %.sink.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter11PrintScalarIsEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !209
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not55 = icmp eq i16 %1, 0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.e = select i1 %.not55, i64 5, i64 4          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.b
  %i.j = select i1 %.not55, ptr @.str.5, ptr @.str.4
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.j, i64 noundef %i.e) ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !211, !range !144, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.thread94

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !212  ; 6 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread94, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i16 %1 to i64                       ; 3 uses
  %i.s = tail call noundef ptr @_ZNK11flatbuffers7EnumDef13ReverseLookupElb(ptr noundef nonnull align 8 dereferenceable(312) %i.q, i64 noundef %i.r, i1 noundef zeroext false) ; 3 uses
  %.not48 = icmp eq ptr %i.s, null
  br i1 %.not48, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.ab = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ae = icmp ugt i64 %i.x, %i.ad
  br i1 %i.ae, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.h
  %i.af = phi ptr [ %.pre.i.i, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 34, ptr %i.ag, align 1, !tbaa !42
  store i64 %i.x, ptr %i.v, align 8, !tbaa !40
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.x
  store i8 0, ptr %i.ai, align 1, !tbaa !42
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %i.aq, i64 noundef %i.al) ; 0 uses
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40 ; 4 uses
  %i.av = add i64 %i.au, 1                        ; 3 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.az = icmp ult i64 %i.au, 16
  tail call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63 ]
  %i.bc = icmp ugt i64 %i.av, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.au, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i62 = load ptr, ptr %i.as, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61, %bb.j
  %i.bd = phi ptr [ %.pre.i.i62, %bb.j ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 34, ptr %i.be, align 1, !tbaa !42
  store i64 %i.av, ptr %i.at, align 8, !tbaa !40
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.av
  store i8 0, ptr %i.bg, align 1, !tbaa !42
  br label %bb.u

end_hunk_2
begin_hunk_3_@_ZN11flatbuffers11JsonPrinter11PrintScalarIsEEvT_RKNS_4TypeEi:bb.a
  call void @llvm.assume(i1 %i.co)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.m
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68
  %i.cq = phi i64 [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68 ]
  %i.cr = icmp ugt i64 %i.ck, %i.cq
  br i1 %i.cr, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i67 = load ptr, ptr %i.ch, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66, %bb.n
  %i.cs = phi ptr [ %.pre.i.i67, %bb.n ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cj
  store i8 34, ptr %i.ct, align 1, !tbaa !42
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !40
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ck
  store i8 0, ptr %i.cv, align 1, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !219 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !219 ; 2 uses
  %.not9698 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not9698, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.da = icmp eq i64 %.1, %i.r
  br i1 %i.da, label %.critedge59, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %bb.r
  %.0100 = phi i64 [ %.1, %bb.r ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69 ] ; 2 uses
  %.sroa.088.099 = phi ptr [ %i.ee, %bb.r ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69 ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.088.099, align 8, !tbaa !221 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !223 ; 2 uses
  %i.de = and i64 %i.dd, %i.r
  %.not52 = icmp eq i64 %i.de, 0
  br i1 %.not52, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.df = or i64 %i.dd, %.0100
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40
  %i.dl = sub i64 4611686018427387903, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.di
  br i1 %i.dm, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73: ; preds = %bb.o
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.do = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef %i.dn, i64 noundef %i.di) ; 0 uses
  %i.dp = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !40 ; 4 uses
  %i.ds = add i64 %i.dr, 1                        ; 3 uses
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !41 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dw = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dx = load i64, ptr %i.du, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77
  %i.dy = phi i64 [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77 ]
  %i.dz = icmp ugt i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 noundef %i.dr, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i76 = load ptr, ptr %i.dp, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75, %bb.q
  %i.ea = phi ptr [ %.pre.i.i76, %bb.q ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i8 32, ptr %i.eb, align 1, !tbaa !42
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !40
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ds
  store i8 0, ptr %i.ed, align 1, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78, %.lr.ph
  %.1 = phi i64 [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78 ], [ %.0100, %.lr.ph ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.088.099, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.ee, %i.cz
  br i1 %.not96, label %._crit_edge, label %.lr.ph, !llvm.loop !294

.critedge59:                                      ; preds = %._crit_edge
  %i.ef = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !40
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  store i8 34, ptr %i.ek, align 1, !tbaa !42
  br label %bb.u

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %._crit_edge
  %i.el = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 noundef %i.cj, i8 noundef signext 0)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.thread, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN11flatbuffers11NumToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i16 noundef signext %1)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !40 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !40
  %i.es = sub i64 4611686018427387903, %i.er
  %i.et = icmp ult i64 %i.es, %i.ep
  br i1 %i.et, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %.thread94
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc79 unwind label %bb.t

.noexc79:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %.thread94
  %i.eu = load ptr, ptr %5, align 8, !tbaa !41
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef %i.eu, i64 noundef %i.ep)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ew = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !42
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !42
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.fb

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64, %.critedge59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i16 @_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIsEET_RKNS_8FieldDefE(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !42    ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %1 = sext i8 %i.f to i32
  %2 = add nsw i32 %1, -48
  %i.g = icmp ult i32 %2, 10
  br i1 %i.g, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !42    ; 2 uses
  %.not25.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.d, ptr %i.b, align 8, !tbaa !197
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.o) #23, !inline_history !201
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !42
  %.not.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %i.d
  %or.cond.i.i.i = or i1 %i.s, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %or.cond.i.i.i, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

.critedge.thread.i.i:                             ; preds = %bb.b, %bb.c, %.critedge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.d, ptr %i.a, align 8, !tbaa !197
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.t) #23, !inline_history !201
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !42
  %.not.i26.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %i.d
  %or.cond.i27.i.i = or i1 %i.x, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %or.cond.i27.i.i, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i: ; preds = %.critedge.thread.i.i, %bb.d
  %.28.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i ] ; 2 uses
  %i.y = icmp sgt i64 %.28.i, 32767
  br i1 %i.y, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i
  %spec.select21.i = call i64 @llvm.smax.i64(i64 %.28.i, i64 -32768)
  %spec.select.i = trunc nsw i64 %spec.select21.i to i16
  br label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit: ; preds = %bb.d, %.critedge.thread.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i, %bb.e
  %.sink.i = phi i16 [ %spec.select.i, %bb.e ], [ 32767, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i ], [ 0, %.critedge.thread.i.i ], [ 0, %bb.d ]
  ret i16 %.sink.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11NumToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i16 noundef signext %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !147, !alias.scope !301
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !40, !alias.scope !301
  store i8 0, ptr %i.c, align 8, !tbaa !42, !alias.scope !301
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !301 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !301 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !228, !noalias !301 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !301 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !42, !alias.scope !301
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !149
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !149
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #23
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !149
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !149
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter11PrintScalarItEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !209
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not55 = icmp eq i16 %1, 0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.e = select i1 %.not55, i64 5, i64 4          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.b
  %i.j = select i1 %.not55, ptr @.str.5, ptr @.str.4
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.j, i64 noundef %i.e) ; 0 uses
  br label %bb.u
end_hunk_3
begin_hunk_4_@_ZN11flatbuffers11JsonPrinter11PrintScalarIiEEvT_RKNS_4TypeEi:bb.a
  call void @llvm.assume(i1 %i.co)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.m
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68
  %i.cq = phi i64 [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i68 ]
  %i.cr = icmp ugt i64 %i.ck, %i.cq
  br i1 %i.cr, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i67 = load ptr, ptr %i.ch, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66, %bb.n
  %i.cs = phi ptr [ %.pre.i.i67, %bb.n ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i66 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cj
  store i8 34, ptr %i.ct, align 1, !tbaa !42
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !40
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ck
  store i8 0, ptr %i.cv, align 1, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !219 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !219 ; 2 uses
  %.not9698 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not9698, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.da = icmp eq i64 %.1, %i.r
  br i1 %i.da, label %.critedge59, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %bb.r
  %.0100 = phi i64 [ %.1, %bb.r ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69 ] ; 2 uses
  %.sroa.088.099 = phi ptr [ %i.ee, %bb.r ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69 ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.088.099, align 8, !tbaa !221 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !223 ; 2 uses
  %i.de = and i64 %i.dd, %i.r
  %.not52 = icmp eq i64 %i.de, 0
  br i1 %.not52, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.df = or i64 %i.dd, %.0100
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40
  %i.dl = sub i64 4611686018427387903, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.di
  br i1 %i.dm, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73: ; preds = %bb.o
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.do = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef %i.dn, i64 noundef %i.di) ; 0 uses
  %i.dp = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !40 ; 4 uses
  %i.ds = add i64 %i.dr, 1                        ; 3 uses
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !41 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dw = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dx = load i64, ptr %i.du, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77
  %i.dy = phi i64 [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i77 ]
  %i.dz = icmp ugt i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 noundef %i.dr, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i76 = load ptr, ptr %i.dp, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75, %bb.q
  %i.ea = phi ptr [ %.pre.i.i76, %bb.q ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i75 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i8 32, ptr %i.eb, align 1, !tbaa !42
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !40
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ds
  store i8 0, ptr %i.ed, align 1, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78, %.lr.ph
  %.1 = phi i64 [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit78 ], [ %.0100, %.lr.ph ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.088.099, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.ee, %i.cz
  br i1 %.not96, label %._crit_edge, label %.lr.ph, !llvm.loop !310

.critedge59:                                      ; preds = %._crit_edge
  %i.ef = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !40
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  store i8 34, ptr %i.ek, align 1, !tbaa !42
  br label %bb.u

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %._crit_edge
  %i.el = load ptr, ptr %i.cg, align 8, !tbaa !39, !nonnull !22, !align !23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 noundef %i.cj, i8 noundef signext 0)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.thread, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %1)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !40 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !40
  %i.es = sub i64 4611686018427387903, %i.er
  %i.et = icmp ult i64 %i.es, %i.ep
  br i1 %i.et, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %.thread94
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc79 unwind label %bb.t

.noexc79:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %.thread94
  %i.eu = load ptr, ptr %5, align 8, !tbaa !41
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef %i.eu, i64 noundef %i.ep)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ew = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !42
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !42
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.fb

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64, %.critedge59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11flatbuffers11JsonPrinter15GetFieldDefaultIiEET_RKNS_8FieldDefE(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !42    ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %1 = sext i8 %i.f to i32
  %2 = add nsw i32 %1, -48
  %i.g = icmp ult i32 %2, 10
  br i1 %i.g, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !42    ; 2 uses
  %.not25.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.d, ptr %i.b, align 8, !tbaa !197
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.o) #23, !inline_history !201
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !42
  %.not.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %i.d
  %or.cond.i.i.i = or i1 %i.s, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %or.cond.i.i.i, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

.critedge.thread.i.i:                             ; preds = %bb.b, %bb.c, %.critedge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.d, ptr %i.a, align 8, !tbaa !197
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.t) #23, !inline_history !201
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !42
  %.not.i26.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %i.d
  %or.cond.i27.i.i = or i1 %i.x, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %or.cond.i27.i.i, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i: ; preds = %.critedge.thread.i.i, %bb.d
  %.28.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i ] ; 2 uses
  %i.y = icmp sgt i64 %.28.i, 2147483647
  br i1 %i.y, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i
  %spec.select21.i = call i64 @llvm.smax.i64(i64 %.28.i, i64 -2147483648)
  %spec.select.i = trunc nsw i64 %spec.select21.i to i32
  br label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit: ; preds = %bb.d, %.critedge.thread.i.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i, %bb.e
  %.sink.i = phi i32 [ %spec.select.i, %bb.e ], [ 2147483647, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i ], [ 0, %.critedge.thread.i.i ], [ 0, %bb.d ]
  ret i32 %.sink.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter11PrintScalarIjEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !209
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not55 = icmp eq i32 %1, 0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.e = select i1 %.not55, i64 5, i64 4          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.b
  %i.j = select i1 %.not55, ptr @.str.5, ptr @.str.4
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.j, i64 noundef %i.e) ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !211, !range !144, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.thread94

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !212  ; 6 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread94, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext i32 %1 to i64                       ; 3 uses
  %i.s = tail call noundef ptr @_ZNK11flatbuffers7EnumDef13ReverseLookupElb(ptr noundef nonnull align 8 dereferenceable(312) %i.q, i64 noundef %i.r, i1 noundef zeroext false) ; 3 uses
  %.not48 = icmp eq ptr %i.s, null
  br i1 %.not48, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.ab = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ae = icmp ugt i64 %i.x, %i.ad
  br i1 %i.ae, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.h
  %i.af = phi ptr [ %.pre.i.i, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 34, ptr %i.ag, align 1, !tbaa !42
  store i64 %i.x, ptr %i.v, align 8, !tbaa !40
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.x
  store i8 0, ptr %i.ai, align 1, !tbaa !42
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %i.aq, i64 noundef %i.al) ; 0 uses
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !39, !nonnull !22, !align !23 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40 ; 4 uses
  %i.av = add i64 %i.au, 1                        ; 3 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.az = icmp ult i64 %i.au, 16
  tail call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i63 ]
  %i.bc = icmp ugt i64 %i.av, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.au, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i62 = load ptr, ptr %i.as, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61, %bb.j
  %i.bd = phi ptr [ %.pre.i.i62, %bb.j ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i61 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  store i8 34, ptr %i.be, align 1, !tbaa !42
  store i64 %i.av, ptr %i.at, align 8, !tbaa !40
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.av
  store i8 0, ptr %i.bg, align 1, !tbaa !42
  br label %bb.u

end_hunk_4
begin_hunk_5_@_ZN11flatbuffers11JsonPrinter11PrintScalarImEEvT_RKNS_4TypeEi:bb.a
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.eg
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  store i8 34, ptr %i.ej, align 1, !tbaa !42
  br label %bb.u

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit69, %._crit_edge
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !39, !nonnull !22, !align !23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i64 noundef %i.ci, i8 noundef signext 0)
  br label %.thread94

.thread94:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.thread, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 noundef %1)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !40 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !40
  %i.er = sub i64 4611686018427387903, %i.eq
  %i.es = icmp ult i64 %i.er, %i.eo
  br i1 %i.es, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %.thread94
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc79 unwind label %bb.t

.noexc79:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %.thread94
  %i.et = load ptr, ptr %5, align 8, !tbaa !41
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef %i.et, i64 noundef %i.eo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ev = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !42
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !42
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.fa

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit64, %.critedge59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !147, !alias.scope !334
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !40, !alias.scope !334
  store i8 0, ptr %i.c, align 8, !tbaa !42, !alias.scope !334
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !334 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !334 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !228, !noalias !334 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !41, !alias.scope !334 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !42, !alias.scope !334
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !149
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !149
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #23
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !149
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !149
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !42      ; 2 uses
  %.not2533 = icmp eq i8 %i.e, 0
  br i1 %.not2533, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %.preheader ] ; 2 uses
  %.034 = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %4 = sext i8 %i.f to i32
  %5 = add nsw i32 %4, -48
  %i.g = icmp ult i32 %5, 10
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !42    ; 2 uses
  %.not25 = icmp eq i8 %i.i, 0
  br i1 %.not25, label %.critedge.thread, label %.lr.ph, !llvm.loop !335

.critedge:                                        ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #28, !inline_history !231
  store i32 0, ptr %i.o, align 4, !tbaa !145
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %1, ptr %i.b, align 8, !tbaa !197
  %i.p = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.q = call i64 @__isoc23_strtoull_l(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.p) #23
  store i64 %i.q, ptr %0, align 8, !tbaa !202
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !42
  %.not.i = icmp ne i8 %i.s, 0
  %i.t = icmp eq ptr %i.r, %1
  %or.cond.i = or i1 %i.t, %.not.i
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !tbaa !202
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @__errno_location() #28, !inline_history !231
  %i.v = load i32, ptr %i.u, align 4, !tbaa !145
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %bb.j, label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit

_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.1.i = phi i1 [ false, %bb.g ], [ true, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.y

.critedge.thread:                                 ; preds = %bb.b, %.preheader, %bb.c, %.critedge
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  %i.w = tail call ptr @__errno_location() #28, !inline_history !231
  store i32 0, ptr %i.w, align 4, !tbaa !145
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %1, ptr %i.a, align 8, !tbaa !197
  %i.x = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.y = call i64 @__isoc23_strtoull_l(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.x) #23
  store i64 %i.y, ptr %0, align 8, !tbaa !202
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !42
  %.not.i26 = icmp ne i8 %i.aa, 0
  %i.ab = icmp eq ptr %i.z, %1
  %or.cond.i27 = or i1 %i.ab, %.not.i26
  br i1 %or.cond.i27, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %0, align 8, !tbaa !202
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30

bb.n:                                             ; preds = %bb.l
  br i1 %3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr @__errno_location() #28, !inline_history !231
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !145
  %.not24.i29 = icmp eq i32 %i.ad, 0
  br i1 %.not24.i29, label %bb.p, label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30

_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30: ; preds = %bb.m, %bb.o, %bb.p
  %.1.i28 = phi i1 [ false, %bb.m ], [ true, %bb.p ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  br i1 %3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call ptr @__errno_location() #28
  store i32 0, ptr %i.ae, align 4, !tbaa !145
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %1, ptr %i.c, align 8, !tbaa !197
  %i.af = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !200
  %i.ag = call i64 @__isoc23_strtoull_l(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %2, ptr noundef %i.af) #23
  store i64 %i.ag, ptr %0, align 8, !tbaa !202
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !42
  %.not = icmp ne i8 %i.ai, 0
  %i.aj = icmp eq ptr %i.ah, %1
  %or.cond = or i1 %i.aj, %.not
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8, !tbaa !202
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  br i1 %3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call ptr @__errno_location() #28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !145
  %.not24 = icmp eq i32 %i.al, 0
  br i1 %.not24, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.1 = phi i1 [ false, %bb.t ], [ true, %bb.w ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit, %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30, %bb.x
  %.2 = phi i1 [ %.1, %bb.x ], [ %.1.i, %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit ], [ %.1.i28, %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30 ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull_l(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11JsonPrinter11PrintScalarIfEEvT_RKNS_4TypeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(26) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !209
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp une float %1, 0.000000e+00          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !22, !align !23 ; 2 uses
  %i.f = select i1 %i.c, i64 4, i64 5             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.b
  %i.k = select i1 %i.c, ptr @.str.4, ptr @.str.5
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.k, i64 noundef %i.f) ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !211, !range !144, !noundef !22
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread92

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !212  ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread92, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = fptosi float %1 to i64
  %i.t = tail call noundef ptr @_ZNK11flatbuffers7EnumDef13ReverseLookupElb(ptr noundef nonnull align 8 dereferenceable(312) %i.r, i64 noundef %i.s, i1 noundef zeroext false) ; 3 uses
  %.not48 = icmp eq ptr %i.t, null
  br i1 %.not48, label %bb.k, label %bb.g
end_hunk_5
begin_hunk_6_@_ZNK11flexbuffers9Reference8ToStringEbbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbiPKcb:bb.a
  %i.fq = sub i64 0, %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.fc, i64 %i.fq ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !246, !noalias !453 ; 9 uses
  %i.fu = icmp ult i8 %i.ft, 4
  br i1 %i.fu, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK11flexbuffers9Reference8IndirectEv.exit.i
  %i.fv = icmp samesign ult i8 %i.ft, 2
  br i1 %i.fv, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %_ZNK11flexbuffers9Reference8IndirectEv.exit.i
  %i.fw = icmp ult i8 %i.ft, 8
  %i.fx = zext i8 %i.ft to i64                    ; 5 uses
  %.neg.i220 = mul nsw i64 %i.fx, -3
  %i.fy = getelementptr inbounds i8, ptr %i.fr, i64 %.neg.i220 ; 6 uses
  br i1 %i.fw, label %bb.bi, label %bb.bj

bb.bg:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit183
  %.sroa.0201.0.ph.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11flexbuffers3Map8EmptyMapEvE9empty_map, i64 4), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit183 ], [ %i.fr, %bb.be ] ; 2 uses
  %.sroa.6.0.ph.ph = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit183 ], [ %i.ft, %bb.be ] ; 2 uses
  %i.fz = zext nneg i8 %.sroa.6.0.ph.ph to i64    ; 3 uses
  %.neg.i207214 = mul nuw nsw i64 %i.fz, -3
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0201.0.ph.ph, i64 %.neg.i207214 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  %i.gc = load i8, ptr %i.ga, align 1, !tbaa !42, !noalias !454
  %i.gd = zext i8 %i.gc to i64
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ga, i64 %i.ge
  %i.gg = load i8, ptr %i.gb, align 1, !tbaa !42, !noalias !454
  %i.gh = zext i8 %i.gg to i64
  br label %_ZN11flexbuffers10ReadUInt64EPKhh.exit.i

bb.bh:                                            ; preds = %bb.be
  %i.gi = zext nneg i8 %i.ft to i64               ; 3 uses
  %.neg.i207 = mul nsw i64 %i.gi, -3
  %i.gj = getelementptr inbounds i8, ptr %i.fr, i64 %.neg.i207 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  %i.gl = load i16, ptr %i.gj, align 2, !tbaa !192, !noalias !454
  %i.gm = zext i16 %i.gl to i64
  %i.gn = sub nsw i64 0, %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gj, i64 %i.gn
  %i.gp = load i16, ptr %i.gk, align 2, !tbaa !192, !noalias !454
  %i.gq = zext i16 %i.gp to i64
  br label %_ZN11flexbuffers10ReadUInt64EPKhh.exit.i

bb.bi:                                            ; preds = %bb.bf
  %i.gr = load i32, ptr %i.fy, align 4, !tbaa !145, !noalias !454
  %i.gs = zext i32 %i.gr to i64
  %i.gt = sub nsw i64 0, %i.gs
  %i.gu = getelementptr inbounds i8, ptr %i.fy, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !145, !noalias !454
  %i.gx = zext i32 %i.gw to i64
  br label %_ZN11flexbuffers10ReadUInt64EPKhh.exit.i

bb.bj:                                            ; preds = %bb.bf
  %i.gy = load i64, ptr %i.fy, align 8, !tbaa !202, !noalias !454
  %i.gz = sub i64 0, %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.fy, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !202, !noalias !454
  br label %_ZN11flexbuffers10ReadUInt64EPKhh.exit.i

_ZN11flexbuffers10ReadUInt64EPKhh.exit.i:         ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %i.hd = phi i1 [ true, %bb.bh ], [ true, %bb.bg ], [ false, %bb.bi ], [ false, %bb.bj ]
  %i.he = phi i64 [ %i.gi, %bb.bh ], [ %i.fz, %bb.bg ], [ %i.fx, %bb.bi ], [ %i.fx, %bb.bj ] ; 4 uses
  %.sroa.6.0211 = phi i8 [ %i.ft, %bb.bh ], [ %.sroa.6.0.ph.ph, %bb.bg ], [ %i.ft, %bb.bi ], [ %i.ft, %bb.bj ] ; 2 uses
  %.sroa.0201.0208 = phi ptr [ %i.fr, %bb.bh ], [ %.sroa.0201.0.ph.ph, %bb.bg ], [ %i.fr, %bb.bi ], [ %i.fr, %bb.bj ] ; 3 uses
  %i.hf = phi ptr [ %i.go, %bb.bh ], [ %i.gf, %bb.bg ], [ %i.gu, %bb.bi ], [ %i.ha, %bb.bj ] ; 3 uses
  %i.hg = phi i64 [ %i.gq, %bb.bh ], [ %i.gh, %bb.bg ], [ %i.gx, %bb.bi ], [ %i.hc, %bb.bj ] ; 2 uses
  %i.hh = trunc i64 %i.hg to i8                   ; 5 uses
  %i.hi = and i64 %i.hg, 255                      ; 4 uses
  %i.hj = sub nsw i64 0, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %i.hf, i64 %i.hj ; 4 uses
  %i.hl = icmp ult i8 %i.hh, 4                    ; 2 uses
  br i1 %i.hl, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %_ZN11flexbuffers10ReadUInt64EPKhh.exit.i
  %i.hm = icmp samesign ult i8 %i.hh, 2
  br i1 %i.hm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hn = load i8, ptr %i.hk, align 1, !tbaa !42, !noalias !454
  %i.ho = zext i8 %i.hn to i64
  br label %_ZNK11flexbuffers3Map4KeysEv.exit

bb.bm:                                            ; preds = %bb.bk
  %i.hp = load i16, ptr %i.hk, align 2, !tbaa !192, !noalias !454
  %i.hq = zext i16 %i.hp to i64
  br label %_ZNK11flexbuffers3Map4KeysEv.exit

bb.bn:                                            ; preds = %_ZN11flexbuffers10ReadUInt64EPKhh.exit.i
  %i.hr = icmp ult i8 %i.hh, 8
  br i1 %i.hr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hs = load i32, ptr %i.hk, align 4, !tbaa !145, !noalias !454
  %i.ht = zext i32 %i.hs to i64
  br label %_ZNK11flexbuffers3Map4KeysEv.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hu = load i64, ptr %i.hk, align 8, !tbaa !202, !noalias !454
  br label %_ZNK11flexbuffers3Map4KeysEv.exit

_ZNK11flexbuffers3Map4KeysEv.exit:                ; preds = %bb.bl, %bb.bm, %bb.bo, %bb.bp
  %i.hv = phi i64 [ %i.hq, %bb.bm ], [ %i.ho, %bb.bl ], [ %i.ht, %bb.bo ], [ %i.hu, %bb.bp ] ; 3 uses
  %i.hw = sub nsw i64 0, %i.he
  %i.hx = getelementptr inbounds i8, ptr %.sroa.0201.0208, i64 %i.hw ; 4 uses
  br i1 %i.hd, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %_ZNK11flexbuffers3Map4KeysEv.exit
  %i.hy = icmp samesign ult i8 %.sroa.6.0211, 2
  br i1 %i.hy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !42, !noalias !455
  %i.ia = zext i8 %i.hz to i64
  br label %_ZNK11flexbuffers3Map6ValuesEv.exit

bb.bs:                                            ; preds = %bb.bq
  %i.ib = load i16, ptr %i.hx, align 2, !tbaa !192, !noalias !455
  %i.ic = zext i16 %i.ib to i64
  br label %_ZNK11flexbuffers3Map6ValuesEv.exit

bb.bt:                                            ; preds = %_ZNK11flexbuffers3Map4KeysEv.exit
  %i.id = icmp ult i8 %.sroa.6.0211, 8
  br i1 %i.id, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ie = load i32, ptr %i.hx, align 4, !tbaa !145, !noalias !455
  %i.if = zext i32 %i.ie to i64
  br label %_ZNK11flexbuffers3Map6ValuesEv.exit

bb.bv:                                            ; preds = %bb.bt
  %i.ig = load i64, ptr %i.hx, align 8, !tbaa !202, !noalias !455
  br label %_ZNK11flexbuffers3Map6ValuesEv.exit

_ZNK11flexbuffers3Map6ValuesEv.exit:              ; preds = %bb.br, %bb.bs, %bb.bu, %bb.bv
  %i.ih = phi i64 [ %i.ic, %bb.bs ], [ %i.ia, %bb.br ], [ %i.if, %bb.bu ], [ %i.ig, %bb.bv ] ; 2 uses
  %.not146 = icmp eq i64 %i.hv, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK11flexbuffers3Map6ValuesEv.exit
  %i.ii = icmp sgt i32 %5, -1
  %or.cond144 = and i1 %4, %i.ii
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ik = mul i64 %i.ih, %i.he
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0201.0208, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.in = add nsw i32 %5, 1
  %i.io = icmp ult i8 %i.hh, 8
  %i.ip = icmp samesign ult i8 %i.hh, 2
  %i.iq = or disjoint i64 %i.hi, 17179869440
  %i.ir = add i64 %i.hv, -1
  br label %bb.bw

._crit_edge:                                      ; preds = %bb.co, %_ZNK11flexbuffers3Map6ValuesEv.exit
  br i1 %4, label %.critedge88, label %bb.cp

bb.bw:                                            ; preds = %.lr.ph, %bb.co
  %.080145 = phi i64 [ 0, %.lr.ph ], [ %i.ku, %bb.co ] ; 7 uses
  br i1 %2, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.is = mul i64 %.080145, %i.hi
  %i.it = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.is ; 5 uses
  br i1 %i.hl, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  br i1 %i.ip, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !42
  %i.iv = zext i8 %i.iu to i64
  br label %_ZNK11flexbuffers9Reference5AsKeyEv.exit118

bb.ca:                                            ; preds = %bb.by
  %i.iw = load i16, ptr %i.it, align 2, !tbaa !192
  %i.ix = zext i16 %i.iw to i64
  br label %_ZNK11flexbuffers9Reference5AsKeyEv.exit118

bb.cb:                                            ; preds = %bb.bx
  br i1 %i.io, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.iy = load i32, ptr %i.it, align 4, !tbaa !145
  %i.iz = zext i32 %i.iy to i64
  br label %_ZNK11flexbuffers9Reference5AsKeyEv.exit118

bb.cd:                                            ; preds = %bb.cb
  %i.ja = load i64, ptr %i.it, align 8, !tbaa !202
  br label %_ZNK11flexbuffers9Reference5AsKeyEv.exit118

_ZNK11flexbuffers9Reference5AsKeyEv.exit118:      ; preds = %bb.bz, %bb.ca, %bb.cc, %bb.cd
  %i.jb = phi i64 [ %i.ix, %bb.ca ], [ %i.iv, %bb.bz ], [ %i.iz, %bb.cc ], [ %i.ja, %bb.cd ]
  %i.jc = sub i64 0, %i.jb
  %i.jd = getelementptr inbounds i8, ptr %i.it, i64 %i.jc ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !42  ; 2 uses
  %i.jf = and i8 %i.je, -33
  %17 = sext i8 %i.jf to i32
  %18 = add nsw i32 %17, -65
  %i.jg = icmp ult i32 %18, 26
  %.not = icmp eq i8 %i.je, 95
  %or.cond = or i1 %.not, %i.jg
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNK11flexbuffers9Reference5AsKeyEv.exit118, %bb.ce
  %.0 = phi ptr [ %i.jh, %bb.ce ], [ %i.jd, %_ZNK11flexbuffers9Reference5AsKeyEv.exit118 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !42  ; 4 uses
  %.not84.not.not.not = icmp ne i8 %i.ji, 0       ; 3 uses
  br i1 %.not84.not.not.not, label %bb.ce, label %.loopexit

bb.ce:                                            ; preds = %.preheader
  %i.jj = and i8 %i.ji, -33
  %19 = sext i8 %i.jj to i32
  %20 = add nsw i32 %19, -65
  %i.jk = icmp ult i32 %20, 26
  %21 = sext i8 %i.ji to i32
  %22 = add nsw i32 %21, -48
  %i.jl = icmp ult i32 %22, 10
  %23 = select i1 %i.jk, i1 true, i1 %i.jl
  %.not85 = icmp eq i8 %i.ji, 95
  %or.cond143 = or i1 %.not85, %23
  br i1 %or.cond143, label %.preheader, label %.loopexit, !llvm.loop !445

.loopexit:                                        ; preds = %bb.ce, %.preheader, %_ZNK11flexbuffers9Reference5AsKeyEv.exit118, %bb.bw
  %.1 = phi i1 [ true, %bb.bw ], [ true, %_ZNK11flexbuffers9Reference5AsKeyEv.exit118 ], [ %.not84.not.not.not, %.preheader ], [ %.not84.not.not.not, %bb.ce ]
  br i1 %or.cond144, label %.lr.ph.i, label %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit

.lr.ph.i:                                         ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.04.i = phi i32 [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ 0, %.loopexit ] ; 2 uses
  %i.jm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #23 ; 2 uses
  %i.jn = load i64, ptr %i.et, align 8, !tbaa !40
  %i.jo = sub i64 4611686018427387903, %i.jn
  %i.jp = icmp ult i64 %i.jo, %i.jm
  br i1 %i.jp, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.cf:                                            ; preds = %.lr.ph.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %.lr.ph.i
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %6, i64 noundef %i.jm) ; 0 uses
  %i.jr = add nuw nsw i32 %.04.i, 1
  %exitcond.not.i = icmp eq i32 %.04.i, %5
  br i1 %exitcond.not.i, label %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit, label %.lr.ph.i, !llvm.loop !5

_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.js = mul i64 %.080145, %i.hi
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.js
  store ptr %i.jt, ptr %11, align 8
  store i64 %i.iq, ptr %i.ij, align 8
  call void @_ZNK11flexbuffers9Reference8ToStringEbbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbiPKcb(ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext true, i1 noundef zeroext %.1, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull @.str.23, i1 noundef zeroext false), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ju = load i64, ptr %i.et, align 8, !tbaa !40
  %i.jv = and i64 %i.ju, -2
  %i.jw = icmp eq i64 %i.jv, 4611686018427387902
  br i1 %i.jw, label %bb.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit125

bb.cg:                                            ; preds = %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit125: ; preds = %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit
  %i.jx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %.not.i126 = icmp ult i64 %.080145, %i.ih
  br i1 %.not.i126, label %bb.ch, label %_ZNK11flexbuffers6VectorixEm.exit

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit125
  %i.jy = getelementptr inbounds nuw i8, ptr %i.il, i64 %.080145
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !42  ; 2 uses
  %i.ka = mul i64 %.080145, %i.he
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0201.0208, i64 %i.ka
  %i.kc = and i8 %i.jz, 3
  %i.kd = shl nuw nsw i8 1, %i.kc
  %i.ke = lshr i8 %i.jz, 2
  %i.kf = zext nneg i8 %i.ke to i64
  %i.kg = shl nuw nsw i64 %i.kf, 32
  %i.kh = zext nneg i8 %i.kd to i64
  %i.ki = shl nuw nsw i64 %i.kh, 8
  %i.kj = or disjoint i64 %i.ki, %i.kg
  %i.kk = or disjoint i64 %i.kj, %i.he
  br label %_ZNK11flexbuffers6VectorixEm.exit

_ZNK11flexbuffers6VectorixEm.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit125, %bb.ch
  %.sroa.0.0.i127 = phi ptr [ %i.kb, %bb.ch ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit125 ]
  %.sroa.3.8.insert.insert.i128 = phi i64 [ %i.kk, %bb.ch ], [ 257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit125 ]
  store ptr %.sroa.0.0.i127, ptr %12, align 8
  store i64 %.sroa.3.8.insert.insert.i128, ptr %i.im, align 8
  call void @_ZNK11flexbuffers9Reference8ToStringEbbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbiPKcb(ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext true, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %4, i32 noundef %i.in, ptr noundef %6, i1 noundef zeroext %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.kl = icmp ult i64 %.080145, %i.ir
  br i1 %i.kl, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %_ZNK11flexbuffers6VectorixEm.exit
  %i.km = load i64, ptr %i.et, align 8, !tbaa !40
  %i.kn = icmp eq i64 %i.km, 4611686018427387903
  br i1 %i.kn, label %bb.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit131

bb.cj:                                            ; preds = %bb.ci
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit131: ; preds = %bb.ci
  %i.ko = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  br i1 %4, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit131
  %i.kp = load i64, ptr %i.et, align 8, !tbaa !40
  %i.kq = icmp eq i64 %i.kp, 4611686018427387903
  br i1 %i.kq, label %bb.cl, label %.sink.split

bb.cl:                                            ; preds = %bb.ck
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

bb.cm:                                            ; preds = %_ZNK11flexbuffers6VectorixEm.exit
  br i1 %4, label %.critedge, label %bb.co

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit131, %bb.cm
  %i.kr = load i64, ptr %i.et, align 8, !tbaa !40
  %i.ks = icmp eq i64 %i.kr, 4611686018427387903
  br i1 %i.ks, label %bb.cn, label %.sink.split

bb.cn:                                            ; preds = %.critedge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

.sink.split:                                      ; preds = %.critedge, %bb.ck
  %.str.26.sink = phi ptr [ @.str.26, %bb.ck ], [ @.str.25, %.critedge ]
  %i.kt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %.str.26.sink, i64 noundef 1) ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %.sink.split, %bb.cm
  %i.ku = add nuw i64 %.080145, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ku, %i.hv
  br i1 %exitcond.not, label %._crit_edge, label %bb.bw, !llvm.loop !446

bb.cp:                                            ; preds = %._crit_edge
  %i.kv = load i64, ptr %i.et, align 8, !tbaa !40
  %i.kw = icmp eq i64 %i.kv, 4611686018427387903
  br i1 %i.kw, label %bb.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184

bb.cq:                                            ; preds = %bb.cp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184: ; preds = %bb.cp
  %i.kx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, i64 noundef 1) ; 0 uses
  br label %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit189

.critedge88:                                      ; preds = %._crit_edge
  %i.ky = icmp sgt i32 %5, 0
  br i1 %i.ky, label %.lr.ph.i185, label %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit189

.lr.ph.i185:                                      ; preds = %.critedge88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i187
  %.04.i186 = phi i32 [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i187 ], [ 0, %.critedge88 ]
  %i.kz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #23 ; 2 uses
  %i.la = load i64, ptr %i.et, align 8, !tbaa !40
  %i.lb = sub i64 4611686018427387903, %i.la
  %i.lc = icmp ult i64 %i.lb, %i.kz
  br i1 %i.lc, label %bb.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i187

bb.cr:                                            ; preds = %.lr.ph.i185
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i187: ; preds = %.lr.ph.i185
  %i.ld = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %6, i64 noundef %i.kz) ; 0 uses
  %i.le = add nuw nsw i32 %.04.i186, 1            ; 2 uses
  %exitcond.not.i188 = icmp eq i32 %i.le, %5
  br i1 %exitcond.not.i188, label %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit189, label %.lr.ph.i185, !llvm.loop !5

_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i187, %.critedge88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184
  %i.lf = load i64, ptr %i.et, align 8, !tbaa !40
  %i.lg = icmp eq i64 %i.lf, 4611686018427387903
  br i1 %i.lg, label %bb.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit190

bb.cs:                                            ; preds = %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit189
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit190: ; preds = %_ZN11flexbuffers12IndentStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKc.exit189
  %i.lh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  br label %bb.ec

bb.ct:                                            ; preds = %bb.a
  %i.li = add i32 %i.b, -9
  %spec.select.i134 = icmp ult i32 %i.li, 2
  br i1 %spec.select.i134, label %bb.cu, label %bb.dh

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.lj = load ptr, ptr %0, align 8, !tbaa !244, !noalias !456 ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !245, !noalias !456 ; 3 uses
  %i.lm = icmp ult i8 %i.ll, 4
  br i1 %i.lm, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.ln = icmp samesign ult i8 %i.ll, 2
  br i1 %i.ln, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lo = load i8, ptr %i.lj, align 1, !tbaa !42, !noalias !456
  %i.lp = zext i8 %i.lo to i64
  br label %_ZNK11flexbuffers9Reference8IndirectEv.exit.i192

bb.cx:                                            ; preds = %bb.cv
  %i.lq = load i16, ptr %i.lj, align 2, !tbaa !192, !noalias !456
  %i.lr = zext i16 %i.lq to i64
  br label %_ZNK11flexbuffers9Reference8IndirectEv.exit.i192

bb.cy:                                            ; preds = %bb.cu
  %i.ls = icmp ult i8 %i.ll, 8
  br i1 %i.ls, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.lt = load i32, ptr %i.lj, align 4, !tbaa !145, !noalias !456
  %i.lu = zext i32 %i.lt to i64
end_hunk_6
