Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/forward_iterator?download=true
inline.NumInlined: 1910
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb20ForwardLevelIteratorD0Ev
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7rocksdb20ForwardLevelIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb20ForwardLevelIterator5ValidEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !508, !range !297, !noundef !298
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !494
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !512  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !512  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 8, !tbaa !508
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr @.str.48, ptr %2, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 34, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @.str, ptr %3, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !129
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load <4 x i8>, ptr %1, align 8, !tbaa !28
  store <4 x i8> %i.d, ptr %i.c, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !392, !range !297, !noundef !298
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.f, ptr %i.g, align 4, !tbaa !393
  store i8 0, ptr %i.e, align 4, !tbaa !393
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.i, ptr %i.j, align 1, !tbaa !394
  store i8 0, ptr %i.h, align 1, !tbaa !394
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !184
  store ptr null, ptr %i.k, align 8, !tbaa !184
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !184  ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.n) #26
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.o, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator4SeekERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !494
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !512  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !512  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 8, !tbaa !508
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator11SeekForPrevERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @.str.49, ptr %3, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 35, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str, ptr %4, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !129
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load <4 x i8>, ptr %2, align 8, !tbaa !28
  store <4 x i8> %i.d, ptr %i.c, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %2, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !392, !range !297, !noundef !298
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.f, ptr %i.g, align 4, !tbaa !393
  store i8 0, ptr %i.e, align 4, !tbaa !393
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.i, ptr %i.j, align 1, !tbaa !394
  store i8 0, ptr %i.h, align 1, !tbaa !394
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !184
  store ptr null, ptr %i.k, align 8, !tbaa !184
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !184  ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.n) #26
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.o, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %i.f, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %i.r)
  %i.v = load i8, ptr %1, align 8, !tbaa !494
  %i.w = icmp eq i8 %i.v, 0
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !184  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.x) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.b, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.w, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.y = load i8, ptr %i.f, align 8, !tbaa !508, !range !297, !noundef !298
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !504
  %i.ab = add i32 %i.aa, 1                        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !514, !nonnull !298, !align !513 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !375
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !376
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %.not = icmp ugt i64 %i.ak, %i.ac
  br i1 %.not, label %bb.e, label %2

2:                                                ; preds = %bb.d
  store i8 0, ptr %i.f, align 8, !tbaa !508
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.j, i8 0, i64 6, i1 false)
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !184 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !184
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i.thread, label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.al) #26
  %.pre = load i32, ptr %i.h, align 4, !tbaa !504
  %i.am = icmp eq i32 %i.ab, %.pre
  br i1 %i.am, label %_ZN7rocksdb20ForwardLevelIterator12SetFileIndexEj.exit, label %_ZN7rocksdb6StatusD2Ev.exit.i.thread

_ZN7rocksdb6StatusD2Ev.exit.i.thread:             ; preds = %bb.e, %_ZN7rocksdb6StatusD2Ev.exit.i
  store i32 %i.ab, ptr %i.h, align 4, !tbaa !504
  call void @_ZN7rocksdb20ForwardLevelIterator5ResetEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  br label %_ZN7rocksdb20ForwardLevelIterator12SetFileIndexEj.exit

_ZN7rocksdb20ForwardLevelIterator12SetFileIndexEj.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i, %_ZN7rocksdb6StatusD2Ev.exit.i.thread
  %i.an = load i8, ptr %i.j, align 8, !tbaa !494
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN7rocksdb20ForwardLevelIterator12SetFileIndexEj.exit
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !512 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
  br label %bb.b, !llvm.loop !803

.loopexit:                                        ; preds = %_ZN7rocksdb20ForwardLevelIterator12SetFileIndexEj.exit, %bb.c, %_ZN7rocksdb6StatusD2Ev.exit, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator4PrevEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr @.str.50, ptr %2, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @.str, ptr %3, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !129
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load <4 x i8>, ptr %1, align 8, !tbaa !28
  store <4 x i8> %i.d, ptr %i.c, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !392, !range !297, !noundef !298
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.f, ptr %i.g, align 4, !tbaa !393
  store i8 0, ptr %i.e, align 4, !tbaa !393
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.i, ptr %i.j, align 1, !tbaa !394
  store i8 0, ptr %i.h, align 1, !tbaa !394
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !184
  store ptr null, ptr %i.k, align 8, !tbaa !184
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !184  ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.n) #26
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.o, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK7rocksdb20ForwardLevelIterator3keyEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, i64 } %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb20ForwardLevelIterator15write_unix_timeEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK7rocksdb20ForwardLevelIterator5valueEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, i64 } %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb20ForwardLevelIterator6statusEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !494   ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.b, ptr %0, align 8, !tbaa !494
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.f = load <4 x i8>, ptr %i.e, align 1, !tbaa !28
  store <4 x i8> %i.f, ptr %i.d, align 1, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.i = load i8, ptr %i.h, align 1, !tbaa !394
  store i8 %i.i, ptr %i.g, align 1, !tbaa !394
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull %i.l)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !184
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.b, %bb.c
  %storemerge = phi ptr [ %.pre.i, %bb.c ], [ null, %bb.b ]
  store ptr %storemerge, ptr %i.j, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !512  ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !117, !alias.scope !806
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !806
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN7rocksdb6StatusC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb20ForwardLevelIterator12PrepareValueEv(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.g, align 8, !tbaa !508
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20ForwardLevelIterator17SetPinnedItersMgrEPNS_22PinnedIteratorsManagerE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.a, align 8, !tbaa !511
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !512  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
