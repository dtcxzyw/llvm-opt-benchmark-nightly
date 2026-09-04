Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/blob_file_addition?download=true
inline.NumInlined: 331
inline.NumDeleted: 126
begin_hunk_0_@_ZNK7rocksdb16BlobFileAddition8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not8.i.i.i39, label %_ZN7rocksdb11PutVarint32IJNS_16BlobFileAddition15CustomFieldTagsEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ct ; 2 uses
  %cond.i.i.i40 = icmp eq i64 %i.cs, 1
  br i1 %cond.i.i.i40, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dd = load i8, ptr %i.a, align 1, !tbaa !16
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !16
  br label %_ZN7rocksdb11PutVarint32IJNS_16BlobFileAddition15CustomFieldTagsEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr nonnull align 1 %i.a, i64 %i.cs, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJNS_16BlobFileAddition15CustomFieldTagsEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ct, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.cs)
  br label %_ZN7rocksdb11PutVarint32IJNS_16BlobFileAddition15CustomFieldTagsEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

_ZN7rocksdb11PutVarint32IJNS_16BlobFileAddition15CustomFieldTagsEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.u, %bb.w, %bb.x, %bb.y
  store i64 %i.cw, ptr %i.q, align 8, !tbaa !17
  %i.de = load ptr, ptr %1, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  store i8 0, ptr %i.df, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = call noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.a, i32 noundef %i.d) ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 5 uses
  %i.k = sub i64 9223372036854775807, %i.j
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.m = add i64 %i.h, %i.j                       ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %i.e, %i.a
  br i1 %.not8.i.i.i, label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.h, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.a, align 1, !tbaa !16
  store i8 %i.u, ptr %i.t, align 1, !tbaa !16
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.a, i64 %i.h, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.h)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.m, ptr %i.i, align 8, !tbaa !17
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  store i8 0, ptr %i.w, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.x = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !23   ; 6 uses
  %i.z = load i64, ptr %i.i, align 8, !tbaa !17   ; 5 uses
  %i.aa = sub i64 9223372036854775807, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.h:                                             ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %i.ac = add i64 %i.z, %i.y                      ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.af = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ac, %i.ah
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z ; 2 uses
  %cond.i.i = icmp eq i64 %i.y, 1
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !16
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !17
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 0, ptr %i.al, align 1, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16BlobFileAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [17 x i8], align 16               ; 19 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.d, ptr noundef nonnull align 16 dereferenceable(17) @__const._ZN7rocksdb16BlobFileAddition10DecodeFromEPNS_5SliceE.class_name, i64 17, i1 false)
  %i.f = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 13 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 4 uses
  %i.j = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.f, ptr noundef %i.i, ptr noundef nonnull %1) ; 5 uses
  %.not52 = icmp eq ptr %i.j, null
  br i1 %.not52, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %bb.b

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.d, ptr %3, align 8, !tbaa !22
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr @.str, ptr %4, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 31, ptr %i.m, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !47
  store i64 %i.p, ptr %i.g, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.s = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.j, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q) ; 5 uses
  %.not53 = icmp eq ptr %i.s, null
  br i1 %.not53, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit9, label %bb.c

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit9:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.d, ptr %5, align 8, !tbaa !22
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr @.str.1, ptr %6, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 31, ptr %i.v, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.n, %i.w                       ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !47
  store i64 %i.x, ptr %i.g, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %i.aa = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.s, ptr noundef nonnull %i.z, ptr noundef nonnull %i.y) ; 8 uses
  %.not54 = icmp eq ptr %i.aa, null
  br i1 %.not54, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit10, label %bb.d

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit10:    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.d, ptr %7, align 8, !tbaa !22
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr @.str.2, ptr %8, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 31, ptr %i.ad, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.n, %i.ae                     ; 2 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !47
  store i64 %i.af, ptr %i.g, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr @.str.20, ptr %9, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %.not.i.i = icmp eq ptr %i.i, %i.aa
  br i1 %.not.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !16  ; 2 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i: ; preds = %bb.e
  %i.ak = zext nneg i8 %i.ai to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  br label %bb.f

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i:    ; preds = %bb.e, %bb.d
  %i.am = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.c) ; 2 uses
  %.not15.i.i = icmp eq ptr %i.am, null
  br i1 %.not15.i.i, label %bb.g, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.an = phi i32 [ %i.ak, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %.pre.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ]
  %i.ao = phi ptr [ %i.al, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %i.am, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ] ; 4 uses
  %23 = ptrtoint ptr %i.i to i64
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %23, %i.ap                      ; 3 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !47
  store i64 %i.aq, ptr %i.g, align 8, !tbaa !48
  %i.ar = zext i32 %i.an to i64                   ; 4 uses
  %.not.i = icmp ult i64 %i.aq, %i.ar
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.d, ptr %10, align 8, !tbaa !22
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr @.str.3, ptr %11, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 30, ptr %i.au, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ai

bb.h:                                             ; preds = %bb.f
  store ptr %i.ao, ptr %9, align 8, !tbaa !47
  store i64 %i.ar, ptr %i.ag, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  store ptr %i.av, ptr %2, align 8, !tbaa !22
  %i.aw = sub nuw i64 %i.aq, %i.ar
  store i64 %i.aw, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  %i.bb = load ptr, ptr %12, align 8, !tbaa !18   ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.bd, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.bd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !17 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  switch i64 %i.bf, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !16
  store i8 %i.bh, ptr %i.ay, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bb, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !17
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !16
  %.pre.i12 = load ptr, ptr %12, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !tbaa !16
  store <2 x i64> %i.bo, ptr %i.bm, align 8, !tbaa !16
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bp = load i64, ptr %i.az, align 8, !tbaa !16
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load <2 x i64>, ptr %i.bq, align 8, !tbaa !16
  store <2 x i64> %i.bs, ptr %i.br, align 8, !tbaa !16
  %.not.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ay, ptr %12, align 8, !tbaa !18
  store i64 %i.bp, ptr %i.bc, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bc, ptr %12, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bt = phi ptr [ %.pre.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ay, %bb.l ], [ %i.bc, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !17
  store i8 0, ptr %i.bt, align 1, !tbaa !16
  %i.bv = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 4 uses
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc ; 2 uses
  %.not.i.i13 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i13, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i14, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i8, ptr %i.cb, align 1, !tbaa !16  ; 2 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i21, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i14

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i21: ; preds = %bb.n
  %i.cg = zext nneg i8 %i.ce to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  br label %bb.o

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i14:  ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.cb, ptr noundef %i.cd, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i.i15 = icmp eq ptr %i.ci, null
  br i1 %.not15.i.i15, label %bb.p, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i16

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i16: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i14
  %.pre.i17 = load i32, ptr %i.b, align 4, !tbaa !49
  br label %bb.o

bb.o:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i16, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i21
  %i.cj = phi i32 [ %i.cg, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i21 ], [ %.pre.i17, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i16 ]
  %i.ck = phi ptr [ %i.ch, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i21 ], [ %i.ci, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i16 ] ; 4 uses
  %i.cl = ptrtoint ptr %i.cd to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  store ptr %i.ck, ptr %2, align 8, !tbaa !47
  store i64 %i.cn, ptr %i.g, align 8, !tbaa !48
  %i.co = zext i32 %i.cj to i64                   ; 4 uses
  %.not.i18 = icmp ult i64 %i.cn, %i.co
  br i1 %.not.i18, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.d, ptr %14, align 8, !tbaa !22
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr @.str.4, ptr %15, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 29, ptr %i.cr, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ah

bb.q:                                             ; preds = %bb.o
  store ptr %i.ck, ptr %13, align 8, !tbaa !47
  store i64 %i.co, ptr %i.ca, align 8, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  store ptr %i.cs, ptr %2, align 8, !tbaa !22
  %i.ct = sub nuw i64 %i.cn, %i.co
  store i64 %i.ct, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, i1 noundef zeroext false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  %i.cy = load ptr, ptr %16, align 8, !tbaa !18   ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.da = icmp eq ptr %i.cy, %i.cz                ; 2 uses
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %bb.q
  br i1 %i.da, label %bb.r, label %.thread.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23: ; preds = %bb.q
  br i1 %i.da, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !17 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  switch i64 %i.dc, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !16
  store i8 %i.de, ptr %i.cv, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cy, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26: ; preds = %bb.t, %bb.s, %bb.r
  %i.df = load i64, ptr %i.db, align 8, !tbaa !17 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !17
  %i.dh = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 0, ptr %i.di, align 1, !tbaa !16
  %.pre.i27 = load ptr, ptr %16, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

.thread.i29:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !tbaa !16
  store <2 x i64> %i.dl, ptr %i.dj, align 8, !tbaa !16
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23
  %i.dm = load i64, ptr %i.cw, align 8, !tbaa !16
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dp = load <2 x i64>, ptr %i.dn, align 8, !tbaa !16
  store <2 x i64> %i.dp, ptr %i.do, align 8, !tbaa !16
  %.not.i25 = icmp eq ptr %i.cv, null
  br i1 %.not.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24
  store ptr %i.cv, ptr %16, align 8, !tbaa !18
  store i64 %i.dm, ptr %i.cz, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24, %.thread.i29
  store ptr %i.cz, ptr %16, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26, %bb.u, %bb.v
  %i.dq = phi ptr [ %.pre.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26 ], [ %i.cv, %bb.u ], [ %i.cz, %bb.v ]
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.dr, align 8, !tbaa !17
  store i8 0, ptr %i.dq, align 1, !tbaa !16
  %i.ds = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %.pr51 = load i64, ptr %i.g, align 8, !tbaa !23
  %.pre = load ptr, ptr %2, align 8, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.dx = phi ptr [ %i.fg, %bb.af ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ] ; 4 uses
  %i.dy = phi i64 [ %i.fh, %bb.af ], [ %.pr51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !49
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy ; 4 uses
  %.not.i34 = icmp eq i64 %i.dy, 0
  br i1 %.not.i34, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = load i8, ptr %i.dx, align 1, !tbaa !16  ; 2 uses
  %i.eb = icmp sgt i8 %i.ea, -1
  br i1 %i.eb, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.x
  %i.ec = zext nneg i8 %i.ea to i32               ; 2 uses
  store i32 %i.ec, ptr %i.e, align 4, !tbaa !49
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  br label %bb.y

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.x, %bb.w
  %i.ee = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.dx, ptr noundef %i.dz, ptr noundef nonnull %i.e) ; 2 uses
  %.not15.i = icmp eq ptr %i.ee, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %thread-pre-split

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr %i.d, ptr %17, align 8, !tbaa !22
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr @.str.5, ptr %18, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 31, ptr %i.eh, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.thread

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.e, align 4, !tbaa !49
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.ei = phi i32 [ %.pr, %thread-pre-split ], [ %i.ec, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 2 uses
  %i.ej = phi ptr [ %i.ee, %thread-pre-split ], [ %i.ed, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 7 uses
  %i.ek = ptrtoint ptr %i.dz to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  store ptr %i.ej, ptr %2, align 8, !tbaa !47
  store i64 %i.em, ptr %i.g, align 8, !tbaa !48
  %i.en = icmp eq i32 %i.ei, 0
  br i1 %i.en, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = and i32 %i.ei, 64
  %.not = icmp eq i32 %i.eo, 0
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.d, ptr %19, align 8, !tbaa !22
  %i.ep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store ptr @.str.6, ptr %20, align 8, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 45, ptr %i.er, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.em
  %.not.i.i35 = icmp eq ptr %i.dz, %i.ej
  br i1 %.not.i.i35, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = load i8, ptr %i.ej, align 1, !tbaa !16  ; 2 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i43, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i36

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i43: ; preds = %bb.ac
  %i.ev = zext nneg i8 %i.et to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %bb.ad

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i36:  ; preds = %bb.ac, %bb.ab
  %i.ex = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.es, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i.i37 = icmp eq ptr %i.ex, null
  br i1 %.not15.i.i37, label %bb.ae, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i38

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i38: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i36
  %.pre.i39 = load i32, ptr %i.a, align 4, !tbaa !49
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i38, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i43
  %i.ey = phi i32 [ %i.ev, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i43 ], [ %.pre.i39, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i38 ]
  %i.ez = phi ptr [ %i.ew, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i43 ], [ %i.ex, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i38 ] ; 3 uses
  %24 = ptrtoint ptr %i.dz to i64
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %24, %i.fa                      ; 3 uses
  store ptr %i.ez, ptr %2, align 8, !tbaa !47
  store i64 %i.fb, ptr %i.g, align 8, !tbaa !48
  %i.fc = zext i32 %i.ey to i64                   ; 3 uses
  %.not.i40 = icmp ult i64 %i.fb, %i.fc
  br i1 %.not.i40, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  store ptr %i.d, ptr %21, align 8, !tbaa !22
  %i.fd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store ptr @.str.7, ptr %22, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 33, ptr %i.ff, align 8, !tbaa !23
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %.thread

.thread:                                          ; preds = %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, %bb.aa, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fc ; 2 uses
  store ptr %i.fg, ptr %2, align 8, !tbaa !22
  %i.fh = sub nuw i64 %i.fb, %i.fc                ; 2 uses
  store i64 %i.fh, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.w

bb.ag:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.fi, align 8, !tbaa !51, !alias.scope !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !52
  br label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit10, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit9, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb16BlobFileAddition11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7rocksdblsERSoRKNS_16BlobFileAdditionE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24, !alias.scope !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !17, !alias.scope !59
  store i8 0, ptr %i.b, align 8, !tbaa !16, !alias.scope !59
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28, !noalias !59 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !59 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29, !noalias !59 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !59 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !16, !alias.scope !59
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #21
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !31
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ah) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7rocksdblsERSoRKNS_16BlobFileAdditionE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 18) ; 0 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !15
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.b) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.9, i64 noundef 19) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 19) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.j) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.11, i64 noundef 18) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.n, i64 noundef %i.p) ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.12, i64 noundef 17) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  store ptr %i.t, ptr %3, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  store i64 %i.w, ptr %i.u, align 8, !tbaa !23
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true)
  %i.x = load ptr, ptr %2, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.x, i64 noundef %i.z)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

end_hunk_0
