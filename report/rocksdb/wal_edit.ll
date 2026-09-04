Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wal_edit?download=true
inline.NumInlined: 571
inline.NumDeleted: 265
begin_hunk_0_@_ZNK7rocksdb11WalAddition8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.az = icmp ugt i64 %i.ay, 127
  br i1 %i.az, label %.lr.ph.i.i22, label %_ZN7rocksdb14EncodeVarint64EPcm.exit.i12

.lr.ph.i.i22:                                     ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, %.lr.ph.i.i22
  %.09.i.i23 = phi ptr [ %i.bc, %.lr.ph.i.i22 ], [ %i.b, %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit ] ; 2 uses
  %.078.i.i24 = phi i64 [ %i.bd, %.lr.ph.i.i22 ], [ %i.ay, %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit ] ; 3 uses
  %i.ba = trunc i64 %.078.i.i24 to i8
  %i.bb = or i8 %i.ba, -128
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i23, i64 1 ; 2 uses
  store i8 %i.bb, ptr %.09.i.i23, align 1, !tbaa !15
  %i.bd = lshr i64 %.078.i.i24, 7                 ; 2 uses
  %i.be = icmp ugt i64 %.078.i.i24, 16383
  br i1 %i.be, label %.lr.ph.i.i22, label %_ZN7rocksdb14EncodeVarint64EPcm.exit.i12, !llvm.loop !0

_ZN7rocksdb14EncodeVarint64EPcm.exit.i12:         ; preds = %.lr.ph.i.i22, %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %.07.lcssa.i.i13 = phi i64 [ %i.ay, %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit ], [ %i.bd, %.lr.ph.i.i22 ]
  %.0.lcssa.i.i14 = phi ptr [ %i.b, %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit ], [ %i.bc, %.lr.ph.i.i22 ] ; 2 uses
  %i.bf = trunc nuw nsw i64 %.07.lcssa.i.i13 to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i14, i64 1 ; 2 uses
  store i8 %i.bf, ptr %.0.lcssa.i.i14, align 1, !tbaa !15
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.b to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !21  ; 5 uses
  %i.bl = sub i64 9223372036854775807, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.o:                                             ; preds = %_ZN7rocksdb14EncodeVarint64EPcm.exit.i12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZN7rocksdb14EncodeVarint64EPcm.exit.i12
  %i.bn = add i64 %i.bj, %i.bk                    ; 3 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.w
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bq = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.br = load i64, ptr %i.w, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21
  %i.bs = phi i64 [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21 ]
  %.not.i.i.i18 = icmp ugt i64 %i.bn, %i.bs
  br i1 %.not.i.i.i18, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  %.not8.i.i.i19 = icmp eq ptr %i.bg, %i.b
  br i1 %.not8.i.i.i19, label %_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit25, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk ; 2 uses
  %cond.i.i.i20 = icmp eq i64 %i.bj, 1
  br i1 %cond.i.i.i20, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !15
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !15
  br label %_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit25

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %i.b, i64 %i.bj, i1 false)
  br label %_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit25

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bk, i64 noundef 0, ptr noundef nonnull %i.b, i64 noundef %i.bj)
  br label %_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit25

_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit25: ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  store i64 %i.bn, ptr %i.q, align 8, !tbaa !21
  %i.bv = load ptr, ptr %1, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 0, ptr %i.bw, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.u

bb.u:                                             ; preds = %_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit25, %_ZN7rocksdb11PutVarint64EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bx = call noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.a, i32 noundef 1) ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.a to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = load i64, ptr %i.q, align 8, !tbaa !21  ; 5 uses
  %i.cc = sub i64 9223372036854775807, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26: ; preds = %bb.u
  %i.ce = add i64 %i.ca, %i.cb                    ; 3 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.w
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26
  %i.ch = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.ch)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26
  %i.ci = load i64, ptr %i.w, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32
  %i.cj = phi i64 [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32 ]
  %.not.i.i.i29 = icmp ugt i64 %i.ce, %i.cj
  br i1 %.not.i.i.i29, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28
  %.not8.i.i.i30 = icmp eq ptr %i.bx, %i.a
  br i1 %.not8.i.i.i30, label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cb ; 2 uses
  %cond.i.i.i31 = icmp eq i64 %i.ca, 1
  br i1 %cond.i.i.i31, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !15
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !15
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit33

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 1 %i.a, i64 %i.ca, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit33

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cb, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ca)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit33

_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit33: ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  store i64 %i.ce, ptr %i.q, align 8, !tbaa !21
  %i.cm = load ptr, ptr %1, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i8 0, ptr %i.cn, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb11WalAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 12 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZN7rocksdb11WalAddition10DecodeFromEPNS_5SliceE.class_name, i64 12, i1 false)
  %i.d = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 2 uses
  %i.h = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.d, ptr noundef %i.g, ptr noundef nonnull %1) ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !27
  store i64 %i.k, ptr %i.e, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.a, ptr %3, align 8, !tbaa !25
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str, ptr %4, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 29, ptr %i.o, align 8, !tbaa !26
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

thread-pre-split:                                 ; preds = %bb.f
  %13 = ptrtoint ptr %i.u to i64
  %i.p = ptrtoint ptr %i.aj to i64
  %i.q = sub i64 %13, %i.p                        ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !27
  store i64 %i.q, ptr %i.e, align 8, !tbaa !28
  %i.r = load i64, ptr %i.c, align 8, !tbaa !28
  store i64 %i.r, ptr %i.l, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit
  %i.s = phi ptr [ %i.aj, %thread-pre-split ], [ %i.h, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit ] ; 4 uses
  %i.t = phi i64 [ %i.q, %thread-pre-split ], [ %i.k, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 3 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.s, align 1, !tbaa !15    ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.d
  %i.x = zext nneg i8 %i.v to i32                 ; 2 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %bb.e

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.d, %bb.c
  %i.z = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i = icmp eq ptr %i.z, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %thread-pre-split19

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.a, ptr %5, align 8, !tbaa !25
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr @.str.1, ptr %6, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 18, ptr %i.ac, align 8, !tbaa !26
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge

thread-pre-split19:                               ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr20 = load i32, ptr %i.b, align 4, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split19, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.ad = phi i32 [ %.pr20, %thread-pre-split19 ], [ %i.x, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ]
  %i.ae = phi ptr [ %i.z, %thread-pre-split19 ], [ %i.y, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 4 uses
  %i.af = ptrtoint ptr %i.u to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !27
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !28
  switch i32 %i.ad, label %bb.i [
    i32 2, label %bb.f
    i32 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.c) ; 4 uses
  %.not21 = icmp eq ptr %i.aj, null
  br i1 %.not21, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %i.a, ptr %7, align 8, !tbaa !25
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr @.str.2, ptr %8, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 28, ptr %i.am, align 8, !tbaa !26
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p, !llvm.loop !85

bb.h:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !30, !alias.scope !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !93
  br label %.critedge

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.3, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !92
  %i.ar = zext i32 %i.aq to i64
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %i.ar)
          to label %_ZNSolsEj.exit unwind label %bb.m ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %i.a, ptr %10, align 8, !tbaa !25
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.av, ptr %12, align 8, !tbaa !31, !alias.scope !96
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !21, !alias.scope !96
  store i8 0, ptr %i.av, align 8, !tbaa !15, !alias.scope !96
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35, !noalias !96 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !96 ; 2 uses
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  %.08.i.i.i = select i1 %i.bb, ptr %i.ay, ptr %i.ba ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEj.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36, !noalias !96 ; 2 uses
  %i.be = ptrtoint ptr %.08.i.i.i to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.bd, i64 noundef %i.bg)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %12, align 8, !tbaa !22, !alias.scope !96 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.av
  br i1 %i.bk, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %_ZNSolsEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.bm = load ptr, ptr %12, align 8, !tbaa !22
  store ptr %i.bm, ptr %11, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !21
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !26
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.n

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.av
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.br = load i64, ptr %i.av, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %9, align 8, !tbaa !38
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %9, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !38
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.by, ptr %i.ao, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bz, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !22 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bz, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #17
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ch, ptr %9, align 8, !tbaa !38
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cj = getelementptr i8, ptr %i.ch, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %9, i64 %i.ck
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cm, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cn) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.critedge

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %12, align 8, !tbaa !22   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.av
  br i1 %i.cr, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.k
  %.sink = phi ptr [ %i.bj, %bb.k ], [ %i.cq, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.cp, %bb.n ]
  %i.cs = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ct) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.cp, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.co, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn.pn

end_hunk_0
