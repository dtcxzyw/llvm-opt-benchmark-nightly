Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/unique_id?download=true
inline.NumInlined: 269
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb15DecodeSessionIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmS8_:bb.a
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = add i64 %i.dt, %i.dn
  %i.dv = getelementptr inbounds nuw i8, ptr %scevgep, i64 10
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16  ; 4 uses
  %i.dx = mul i64 %i.du, 36
  %i.dy = zext nneg i8 %i.dw to i64
  %i.dz = add i8 %i.dw, -48
  %or.cond.i14.10 = icmp ult i8 %i.dz, 10
  br i1 %or.cond.i14.10, label %.lr.ph.i12.11, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i12.10
  %i.ea = add i8 %i.dw, -65
  %or.cond5.i15.10 = icmp ult i8 %i.ea, 26
  br i1 %or.cond5.i15.10, label %.lr.ph.i12.11, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = add i8 %i.dw, -97
  %or.cond8.i16.10 = icmp ult i8 %i.eb, 26
  br i1 %or.cond8.i16.10, label %.lr.ph.i12.11, label %_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit20

.lr.ph.i12.11:                                    ; preds = %bb.ae, %bb.ad, %.lr.ph.i12.10
  %.sink41.i18.10 = phi i64 [ 4294967248, %.lr.ph.i12.10 ], [ 4294967241, %bb.ad ], [ 4294967209, %bb.ae ]
  %i.ec = add nuw nsw i64 %.sink41.i18.10, %i.dy
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = add i64 %i.ed, %i.dx
  %i.ef = getelementptr inbounds nuw i8, ptr %scevgep, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16  ; 4 uses
  %i.eh = mul i64 %i.ee, 36
  %i.ei = zext nneg i8 %i.eg to i64
  %i.ej = add i8 %i.eg, -48
  %or.cond.i14.11 = icmp ult i8 %i.ej, 10
  br i1 %or.cond.i14.11, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i12.11
  %i.ek = add i8 %i.eg, -65
  %or.cond5.i15.11 = icmp ult i8 %i.ek, 26
  br i1 %or.cond5.i15.11, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = add i8 %i.eg, -97
  %or.cond8.i16.11 = icmp ult i8 %i.el, 26
  br i1 %or.cond8.i16.11, label %bb.ah, label %_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit20

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph.i12.11
  %.sink41.i18.11 = phi i64 [ 4294967248, %.lr.ph.i12.11 ], [ 4294967241, %bb.af ], [ 4294967209, %bb.ag ]
  %i.em = add nuw nsw i64 %.sink41.i18.11, %i.ei
  %i.en = and i64 %i.em, 4294967295
  %i.eo = add i64 %i.en, %i.eh
  %i.ep = lshr i64 %i.x, 2
  store i64 %i.ep, ptr %2, align 8, !tbaa !21
  %i.eq = and i64 %i.eo, 4611686018427387903
  %i.er = shl i64 %i.v, 62
  %i.es = or disjoint i64 %i.eq, %i.er
  store i64 %i.es, ptr %3, align 8, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.et, align 8, !tbaa !22, !alias.scope !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !24
  br label %bb.ai

_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit20: ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr @.str.3, ptr %12, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 26, ptr %i.eu, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store ptr @.str.11, ptr %13, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit, %_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit20, %bb.ah, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22GetSstInternalUniqueIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_mNS_11UniqueIdPtrEb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3, ptr nofree writeonly captures(none) %4, i8 %5, i1 noundef zeroext %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  br i1 %6, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr @.str.4, ptr %7, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @.str.11, ptr %8, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr @.str.5, ptr %9, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 26, ptr %i.k, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr @.str.11, ptr %10, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr @.str, ptr %11, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 21, ptr %i.p, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr @.str.11, ptr %12, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !21
  call void @_ZN7rocksdb15DecodeSessionIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmS8_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.r = load i8, ptr %0, align 8, !tbaa !27
  %i.s = icmp ne i8 %i.r, 0                       ; 2 uses
  %brmerge.not = and i1 %i.s, %6
  br i1 %brmerge.not, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.v) #12
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  resume { ptr, i32 } %i.t

bb.j:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %2, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17
  invoke void @_ZN7rocksdb8Hash2x64EPKcmPmS2_(ptr noundef %i.w, i64 noundef %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr %i.b, align 8, !tbaa !21
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ac = or i64 %i.ab, 1
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !21
  br label %.thread

bb.m:                                             ; preds = %bb.h
  br i1 %i.s, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i18, label %_ZN7rocksdb6StatusD2Ev.exit20.a, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i19

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i19: ; preds = %.thread
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #12
  br label %_ZN7rocksdb6StatusD2Ev.exit20.a

_ZN7rocksdb6StatusD2Ev.exit20.a:                  ; preds = %.thread, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i19
  %i.af = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.af, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ag = load ptr, ptr %1, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !21
  call void @_ZN7rocksdb8Hash2x64EPKcmmPmS2_(ptr noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !21
  %i.al = xor i64 %i.ak, %3
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !21
  %i.an = trunc i8 %5 to i1
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit20.a
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN7rocksdb6StatusD2Ev.exit20.a
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %13, align 8, !tbaa !22, !alias.scope !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.g, %bb.e, %bb.c
  ret void
}

declare void @_ZN7rocksdb8Hash2x64EPKcmPmS2_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN7rocksdb8Hash2x64EPKcmmPmS2_(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb26InternalUniqueIdToExternalENS_11UniqueIdPtrE(ptr nofree captures(none) %0, i8 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = add i64 %i.d, -1055665268803122216
  %i.f = load i64, ptr %0, align 8, !tbaa !21
  %i.g = add i64 %i.f, 6417269962128484497
  call void @_ZN7rocksdb17BijectiveHash2x64EmmPmS0_(i64 noundef %i.e, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.h = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  store i64 %i.h, ptr %0, align 8, !tbaa !21
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !21
  %i.j = trunc i8 %1 to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %i.n = add i64 %i.k, %i.m
  store i64 %i.n, ptr %i.l, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @_ZN7rocksdb17BijectiveHash2x64EmmPmS0_(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb26ExternalUniqueIdToInternalENS_11UniqueIdPtrE(ptr nofree captures(none) %0, i8 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = load i64, ptr %0, align 8, !tbaa !21     ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !21
  %i.f = trunc i8 %1 to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = add i64 %i.e, %i.c
  %i.j = sub i64 %i.h, %i.i
  store i64 %i.j, ptr %i.g, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN7rocksdb19BijectiveUnhash2x64EmmPmS0_(i64 noundef %i.e, i64 noundef %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21
  %i.l = add i64 %i.k, -6417269962128484497
  store i64 %i.l, ptr %0, align 8, !tbaa !21
  %i.m = load i64, ptr %i.b, align 8, !tbaa !21
  %i.n = add i64 %i.m, 1055665268803122216
  store i64 %i.n, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @_ZN7rocksdb19BijectiveUnhash2x64EmmPmS0_(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19EncodeUniqueIdBytesB5cxx11ENS_11UniqueIdPtrE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1, i8 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc i8 %2 to i1                        ; 2 uses
  %i.b = select i1 %i.a, i64 24, i64 16           ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = or disjoint i64 %i.b, 1
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #10 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !13
  store i64 %i.b, ptr %i.c, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, i8 0, i64 %i.b, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 0, ptr %i.g, align 1, !tbaa !16
  %i.h = load <2 x i64>, ptr %1, align 8, !tbaa !21
  store <2 x i64> %i.h, ptr %i.e, align 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  store i64 %i.k, ptr %i.i, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19DecodeUniqueIdBytesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11UniqueIdPtrE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree writeonly captures(none) %2, i8 %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = trunc i8 %3 to i1                        ; 2 uses
  %i.d = select i1 %i.c, i64 24, i64 16
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr @.str.6, ptr %4, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 21, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr @.str.11, ptr %5, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.0.copyload.i = load i64, ptr %i.g, align 1
  store i64 %.0.copyload.i, ptr %2, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i8 = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.copyload.i8, ptr %i.i, align 8, !tbaa !21
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.0.copyload.i9 = load i64, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.0.copyload.i9, ptr %i.k, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !22, !alias.scope !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb38GetExtendedUniqueIdFromTablePropertiesERKNS_15TablePropertiesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7rocksdb36GetUniqueIdFromTablePropertiesHelperISt5arrayImLm3EEEENS_6StatusERKNS_15TablePropertiesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb36GetUniqueIdFromTablePropertiesHelperISt5arrayImLm3EEEENS_6StatusERKNS_15TablePropertiesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(784) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"struct.std::array", align 8       ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.e = load i64, ptr %1, align 8, !tbaa !45
  call void @_ZN7rocksdb22GetSstInternalUniqueIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_mNS_11UniqueIdPtrEb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.e, ptr nonnull %3, i8 1, i1 noundef zeroext false)
  %i.f = load i8, ptr %0, align 8, !tbaa !27
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.i

end_hunk_0
