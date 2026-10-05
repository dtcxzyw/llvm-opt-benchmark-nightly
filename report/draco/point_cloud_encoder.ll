Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/point_cloud_encoder?download=true
inline.NumInlined: 614
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.i = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.i, ptr %i.h, align 1, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !43
  %i.l = load ptr, ptr %0, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco6StatusC2ENS0_4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !38
  %i.d = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.f, ptr %i.a, align 8, !tbaa !39
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !41
  %i.i = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.i, ptr %i.c, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !42
  store i8 %i.k, ptr %i.j, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN5draco17PointCloudEncoder12EncodeHeaderEv(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  tail call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.g, ptr %i.q, ptr noundef nonnull @.str.5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 5))
  br label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit:        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.r = load ptr, ptr %1, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.v = trunc i32 %i.u to i8
  store i8 %i.v, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 2, ptr %i.b, align 1, !tbaa !42
  %i.w = and i32 %i.u, 255
  %i.x = icmp eq i32 %i.w, 0
  %i.y = select i1 %i.x, i8 3, i8 2
  store i8 %i.y, ptr %i.c, align 1, !tbaa !42
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !28   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !61  ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.z, ptr %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.af)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !28  ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre4 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  %i.al = icmp slt i64 %.pre4, 1
  br i1 %i.al, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit1, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit1:   ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ap = load ptr, ptr %.pre, align 8, !tbaa !61 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %.pre, ptr %i.at, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %i.ao)
  %.pre5 = load ptr, ptr %i.f, align 8, !tbaa !28 ; 5 uses
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %.pre5, i64 32
  %.pre7 = load i64, ptr %.phi.trans.insert6, align 8, !tbaa !60
  %i.au = icmp slt i64 %.pre7, 1
  br i1 %i.au, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2

bb.c:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit1
  %i.av = getelementptr inbounds nuw i8, ptr %.pre5, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ay = load ptr, ptr %.pre5, align 8, !tbaa !61 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %.pre5, ptr %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.ax)
  %.pre8 = load ptr, ptr %i.f, align 8, !tbaa !28
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2:   ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit1, %bb.c
  %i.bd = phi ptr [ %.pre5, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit1 ], [ %.pre8, %bb.c ], [ %.pre, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %i.z, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.be = load ptr, ptr %1, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef zeroext i8 %i.bg(ptr noundef nonnull align 8 dereferenceable(112) %1)
  store i8 %i.bh, ptr %i.d, align 1, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !60
  %i.bk = icmp slt i64 %i.bj, 1
  br i1 %i.bk, label %bb.d, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit3

bb.d:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.bd, ptr %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull %i.bn)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit3

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit3:   ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit2, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !63
  %.not = icmp eq ptr %i.bw, null
  %spec.store.select = select i1 %.not, i16 0, i16 -32768
  store i16 %spec.store.select, ptr %i.e, align 2, !tbaa !83
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !28  ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !60
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %bb.e, label %_ZN5draco13EncoderBuffer6EncodeItEEbRKT_.exit

bb.e:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !61 ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.bx, ptr %i.ci, ptr noundef nonnull align 2 dereferenceable(2) %i.e, ptr noundef nonnull %i.cd)
  br label %_ZN5draco13EncoderBuffer6EncodeItEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeItEEbRKT_.exit:    ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit3, %bb.e
  store i32 0, ptr %0, align 8, !tbaa !46, !alias.scope !84
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !38, !alias.scope !84
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cl, align 8, !tbaa !43, !alias.scope !84
  store i8 0, ptr %i.ck, align 8, !tbaa !42, !alias.scope !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5draco17PointCloudEncoder14EncodeMetadataEv(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.draco::MetadataEncoder", align 1 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !46, !alias.scope !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !38, !alias.scope !89
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !43, !alias.scope !89
  store i8 0, ptr %i.h, align 8, !tbaa !42, !alias.scope !89
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = call noundef zeroext i1 @_ZN5draco15MetadataEncoder22EncodeGeometryMetadataEPNS_13EncoderBufferEPKNS_16GeometryMetadataE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %i.k, ptr noundef nonnull %i.f)
  br i1 %i.l, label %bb.h, label %.noexc.i

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 26, ptr %i.b, align 8, !tbaa !39
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !41
  %i.o = load i64, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.n, ptr noundef nonnull align 1 dereferenceable(26) @.str.6, i64 26, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = load ptr, ptr %3, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %0, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !38
  %i.u = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %i.v = load i64, ptr %i.p, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.v, ptr %i.a, align 8, !tbaa !39
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.g    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i.i
  store ptr %i.x, ptr %i.s, align 8, !tbaa !41
  %i.y = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.y, ptr %i.t, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc4, %.noexc.i
  %i.z = phi ptr [ %i.x, %.noexc4 ], [ %i.t, %.noexc.i ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !42
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.af = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.m
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !42
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.i

bb.g:                                             ; preds = %.noexc.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.am = load i64, ptr %i.m, align 8, !tbaa !42
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.aj

bb.h:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8, !tbaa !46, !alias.scope !90
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !38, !alias.scope !90
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !43, !alias.scope !90
  store i8 0, ptr %i.ap, align 8, !tbaa !42, !alias.scope !90
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5draco15MetadataEncoder22EncodeGeometryMetadataEPNS_13EncoderBufferEPKNS_16GeometryMetadataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco17PointCloudEncoder21EncodePointAttributesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.g, ptr %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.v)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !91
  %.pre58 = load ptr, ptr %i.i, align 8, !tbaa !91
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.j, %bb.b ], [ %.pre58, %bb.c ] ; 2 uses
  %i.ac = phi ptr [ %i.k, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not44 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.ab
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.032.045 = phi ptr [ %i.ac, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.032.045, align 8, !tbaa !32 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull %0, ptr noundef %i.ag)
  br i1 %i.ak, label %bb.d, label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.al = call noundef zeroext i1 @_ZN5draco17PointCloudEncoder27RearrangeAttributesEncodersEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br i1 %i.al, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %.not4046 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4046, label %._crit_edge55, label %.lr.ph49

bb.g:                                             ; preds = %.lr.ph49
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.028.047, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not40, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.f, %bb.g
  %.sroa.028.047 = phi ptr [ %i.aq, %bb.g ], [ %i.an, %bb.f ] ; 2 uses
  %i.ar = load i32, ptr %.sroa.028.047, align 4, !tbaa !65
  %i.as = load ptr, ptr %0, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.ar)
  br i1 %i.av, label %bb.g, label %.loopexit

._crit_edge50:                                    ; preds = %bb.g
  %.pre59 = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %.pre60 = load ptr, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %.not4151 = icmp eq ptr %.pre59, %.pre60
  br i1 %.not4151, label %._crit_edge55, label %.lr.ph54

bb.h:                                             ; preds = %.lr.ph54
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.052, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.aw, %.pre60
  br i1 %.not41, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %._crit_edge50, %bb.h
  %.sroa.024.052 = phi ptr [ %i.aw, %bb.h ], [ %.pre59, %._crit_edge50 ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.024.052, align 4, !tbaa !65
  %i.ay = sext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef %i.bc)
  br i1 %i.bg, label %bb.h, label %.loopexit

._crit_edge55:                                    ; preds = %bb.h, %bb.f, %._crit_edge50
  %i.bh = load ptr, ptr %0, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph49, %.lr.ph54, %._crit_edge55, %._crit_edge, %bb.a
  %.9 = phi i1 [ false, %._crit_edge ], [ %i.bk, %._crit_edge55 ], [ false, %.lr.ph49 ], [ false, %.lr.ph54 ], [ false, %bb.a ], [ false, %bb.e ]
  ret i1 %.9
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco17PointCloudEncoder27RearrangeAttributesEncodersEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !29   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.i, %i.p
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  %.pre395 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.u = phi ptr [ %.pre395, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not.i.i146 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i146, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 63                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 2305843009213693944
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #16 ; 3 uses
  %i.ae = lshr i64 %i.aa, 6                       ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %.idx.i = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.sroa.0223.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.ad, %.noexc ] ; 6 uses
  %.sroa.16233.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.af, %.noexc ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.critedge142

.critedge142:                                     ; preds = %._crit_edge323, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ah = phi ptr [ %i.u, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.do, %._crit_edge323 ] ; 5 uses
  %i.ai = phi ptr [ %i.v, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.dr, %._crit_edge323 ] ; 3 uses
  %.092 = phi i32 [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.395, %._crit_edge323 ] ; 2 uses
  %i.aj = zext i32 %.092 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = icmp ugt i64 %i.an, %i.aj
  br i1 %i.ao, label %.preheader282, label %bb.o

.preheader282:                                    ; preds = %.critedge142
  %.not = icmp eq ptr %i.ai, %i.ah
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph322

._crit_edge323:                                   ; preds = %bb.n
  %.pre399 = zext i32 %.395 to i64
  %i.ap = icmp samesign ule i64 %i.dv, %.pre399
  %i.aq = select i1 %.291, i1 true, i1 %i.ap
  br i1 %i.aq, label %.critedge142, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !92

.lr.ph322:                                        ; preds = %.preheader282, %bb.n
  %i.ar = phi ptr [ %i.do, %bb.n ], [ %i.ah, %.preheader282 ] ; 4 uses
  %i.as = phi i64 [ %i.dq, %bb.n ], [ 0, %.preheader282 ] ; 5 uses
  %.088321 = phi i32 [ %i.dp, %bb.n ], [ 0, %.preheader282 ] ; 4 uses
  %.089320 = phi i1 [ %.291, %bb.n ], [ false, %.preheader282 ] ; 2 uses
  %.193319 = phi i32 [ %.395, %bb.n ], [ %.092, %.preheader282 ] ; 4 uses
  %i.at = lshr i32 %.088321, 6
  %.zext = zext nneg i32 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0223.0, i64 %.zext ; 3 uses
  %i.av = and i64 %i.as, 63
  %i.aw = shl nuw i64 1, %i.av                    ; 2 uses
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.ay = and i64 %i.ax, %i.aw
  %.not276 = icmp eq i64 %i.ay, 0
  br i1 %.not276, label %.preheader281, label %bb.n

.preheader281:                                    ; preds = %.lr.ph322
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !34 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = and i64 %i.bh, 17179869180
  %.not371 = icmp eq i64 %i.bi, 0
  br i1 %.not371, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.383, label %._crit_edge..critedge_crit_edge, label %bb.n

._crit_edge..critedge_crit_edge:                  ; preds = %._crit_edge
  %.pre398 = load i64, ptr %i.au, align 8, !tbaa !39
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader281, %bb.m
  %i.bj = phi ptr [ %i.cu, %bb.m ], [ %i.ar, %.preheader281 ]
  %i.bk = phi ptr [ %i.da, %bb.m ], [ %i.be, %.preheader281 ]
  %.079318 = phi i32 [ %i.ct, %bb.m ], [ 0, %.preheader281 ] ; 2 uses
  %.080317 = phi i1 [ %.383, %bb.m ], [ true, %.preheader281 ]
  %i.bl = sext i32 %.079318 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !65 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %.lr.ph
  %i.bo = phi ptr [ %i.bj, %.lr.ph ], [ %.pre397, %bb.l ]
  %.078 = phi i32 [ 0, %.lr.ph ], [ %i.cs, %bb.l ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.as
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i32 noundef %i.bn)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = icmp slt i32 %.078, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit185

bb.h:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.as
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i32 noundef %i.bn, i32 noundef %.078)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not133 = icmp eq i32 %i.cd, %.088321
  br i1 %.not133, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !65 ; 2 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = sdiv i32 %i.ch, 64
  %.sext = sext i32 %i.cj to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %.sroa.0223.0, i64 %.sext
  %i.cl = and i64 %i.ci, -9223372036854775745
  %i.cm = icmp ugt i64 %i.cl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i149 = select i1 %i.cm, i64 -8, i64 0
  %storemerge.i.i.i.i.i150 = getelementptr inbounds i8, ptr %i.ck, i64 %storemerge.idx.i.i.i.i.i149
  %i.cn = and i64 %i.ci, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = load i64, ptr %storemerge.i.i.i.i.i150, align 8, !tbaa !39
  %i.cq = and i64 %i.co, %i.cp
  %.not277 = icmp eq i64 %i.cq, 0
  br i1 %.not277, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit185

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.cs = add nuw nsw i32 %.078, 1
  %.pre397 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %bb.e, !llvm.loop !93

bb.m:                                             ; preds = %bb.j, %bb.f
  %.383 = phi i1 [ %.080317, %bb.f ], [ false, %bb.j ] ; 2 uses
  %i.ct = add nuw i32 %.079318, 1                 ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !29  ; 4 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.as
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !35
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 2
  %i.df = trunc i64 %i.de to i32
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !llvm.loop !94

.critedge:                                        ; preds = %._crit_edge..critedge_crit_edge, %.preheader281
  %i.dh = phi ptr [ %i.cu, %._crit_edge..critedge_crit_edge ], [ %i.ar, %.preheader281 ]
  %i.di = phi i64 [ %.pre398, %._crit_edge..critedge_crit_edge ], [ %i.ax, %.preheader281 ]
  %i.dj = zext i32 %.193319 to i64
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  store i32 %.088321, ptr %i.dl, align 4, !tbaa !65
  %i.dm = add i32 %.193319, 1
  %i.dn = or i64 %i.di, %i.aw
  store i64 %i.dn, ptr %i.au, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %._crit_edge, %.lr.ph322
  %i.do = phi ptr [ %i.ar, %.lr.ph322 ], [ %i.dh, %.critedge ], [ %i.cu, %._crit_edge ] ; 3 uses
  %.395 = phi i32 [ %.193319, %.lr.ph322 ], [ %i.dm, %.critedge ], [ %.193319, %._crit_edge ] ; 3 uses
  %.291 = phi i1 [ %.089320, %.lr.ph322 ], [ true, %.critedge ], [ %.089320, %._crit_edge ] ; 2 uses
  %i.dp = add i32 %.088321, 1                     ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.do to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3                 ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, %i.dq
  br i1 %i.dw, label %.lr.ph322, label %._crit_edge323, !llvm.loop !95

bb.o:                                             ; preds = %.critedge142
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !68
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !69
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %sext = shl i64 %i.ef, 29
  %i.eg = ashr i64 %sext, 32                      ; 2 uses
  %.not.i.i157 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i157, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eh = add nsw i64 %i.eg, 63                   ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 2305843009213693944
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #16
          to label %.noexc161 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.thread ; 3 uses

.noexc161:                                        ; preds = %bb.p
  %i.el = lshr i64 %i.eh, 6                       ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %.idx.i160 = shl nuw nsw i64 %i.el, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ek, i8 0, i64 %.idx.i160, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162:         ; preds = %.noexc161, %bb.o
  %.sroa.16204.0 = phi ptr [ null, %bb.o ], [ %i.em, %.noexc161 ] ; 4 uses
  %.sroa.0198.0 = phi ptr [ null, %bb.o ], [ %i.ek, %.noexc161 ] ; 6 uses
  %.not361 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not361, label %.critedge145, label %.lr.ph367

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.thread:      ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit185

.lr.ph367:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162, %.loopexit279
  %i.eo = phi ptr [ %i.ir, %.loopexit279 ], [ %i.ah, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ] ; 2 uses
  %i.ep = phi i64 [ %i.it, %.loopexit279 ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ]
  %.074365 = phi i32 [ %i.is, %.loopexit279 ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ]
  %.sroa.17.0364 = phi ptr [ %.sroa.17.2.ph, %.loopexit279 ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ] ; 7 uses
  %.sroa.11.0363 = phi ptr [ %.sroa.11.1.ph, %.loopexit279 ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ] ; 7 uses
  %.sroa.0206.0362 = phi ptr [ %.sroa.0206.2.ph, %.loopexit279 ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ] ; 11 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4, !tbaa !65
  %i.et = sext i32 %i.es to i64                   ; 5 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !32 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !35
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !34
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = lshr exact i64 %i.fc, 2                 ; 3 uses
  %i.fe = trunc i64 %i.fd to i32                  ; 3 uses
  %i.ff = icmp slt i32 %i.fe, 2
  br i1 %i.ff, label %.loopexit279, label %bb.q

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %.lr.ph367
  %i.fg = and i64 %i.fd, 2147483647               ; 4 uses
  %i.fh = ptrtoint ptr %.sroa.11.0363 to i64      ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.0206.0362 to i64    ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 4 uses
  %i.fk = ashr exact i64 %i.fj, 2                 ; 6 uses
  %i.fl = icmp ugt i64 %i.fg, %i.fk
  br i1 %i.fl, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.fm = sub nuw nsw i64 %i.fg, %i.fk            ; 5 uses
  %i.fn = ptrtoint ptr %.sroa.17.0364 to i64      ; 2 uses
  %i.fo = sub i64 %i.fn, %i.fh
  %i.fp = ashr exact i64 %i.fo, 2                 ; 2 uses
  %i.fq = xor i64 %i.fk, 2305843009213693951
  %i.fr = icmp ule i64 %i.fp, %i.fq
  tail call void @llvm.assume(i1 %i.fr)
  %.not28.i = icmp ult i64 %i.fp, %i.fm
  br i1 %.not28.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %.sroa.11.0363, align 4, !tbaa !65
  %i.fs = getelementptr i8, ptr %.sroa.11.0363, i64 4 ; 3 uses
  %i.ft = add nsw i64 %i.fm, -1                   ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.s
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ft, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fs, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !65
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.r
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fm)
  %i.fw = add nuw nsw i64 %.sroa.speculated.i.i, %i.fk ; 2 uses
  %i.fx = shl nuw nsw i64 %i.fw, 2
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #16
          to label %.noexc192 unwind label %.loopexit.split-lp ; 4 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fj ; 3 uses
  store i32 0, ptr %i.fz, align 4, !tbaa !65
  %i.ga = add nsw i64 %i.fm, -1                   ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc192
  %i.gc = getelementptr i8, ptr %i.fz, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ga, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gc, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !65
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc192
  %i.gd = icmp sgt i64 %i.fj, 0
  br i1 %i.gd, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.t:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %.sroa.0206.0362, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.t, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0206.0362, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ge = sub i64 %i.fn, %i.fi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0362, i64 noundef %i.ge) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fm
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fw
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader

bb.v:                                             ; preds = %bb.q
  %i.gh = icmp ult i64 %i.fg, %i.fk
  br i1 %i.gh, label %bb.w, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader

bb.w:                                             ; preds = %bb.v
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0362, i64 %i.fg ; 2 uses
  %.not.i.i163 = icmp eq ptr %.sroa.11.0363, %i.gi
  %spec.select = select i1 %.not.i.i163, ptr %.sroa.11.0363, ptr %i.gi
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader

_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader: ; preds = %bb.v, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.s, %bb.w
  %.sroa.0206.6 = phi ptr [ %.sroa.0206.0362, %bb.v ], [ %.sroa.0206.0362, %bb.w ], [ %.sroa.0206.0362, %bb.s ], [ %.sroa.0206.0362, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fy, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 9 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.0363, %bb.v ], [ %spec.select, %bb.w ], [ %i.fs, %bb.s ], [ %i.fv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.gf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 4 uses
  %.sroa.17.6 = phi ptr [ %.sroa.17.0364, %bb.v ], [ %.sroa.17.0364, %bb.w ], [ %.sroa.17.0364, %bb.s ], [ %.sroa.17.0364, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.gg, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 6 uses
  %wide.trip.count = and i64 %i.fd, 2147483647
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us

_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us:   ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader, %._crit_edge331.us
  %.075.us = phi i32 [ %.3.us, %._crit_edge331.us ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us.preheader ] ; 2 uses
  %i.gj = icmp slt i32 %.075.us, %i.fe
  br i1 %i.gj, label %.preheader278.us, label %.split.us

.preheader278.us:                                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us, %.loopexit372
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit372 ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us ] ; 5 uses
  %.071328.us = phi i1 [ %.273.us, %.loopexit372 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us ] ; 2 uses
  %.176327.us = phi i32 [ %.3.us, %.loopexit372 ], [ %.075.us, %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us ] ; 4 uses
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.et
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !34
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !65 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gs = lshr i64 %indvars.iv, 6
  %.zext263.us = and i64 %i.gs, 67108863
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0198.0, i64 %.zext263.us ; 3 uses
  %i.gu = and i64 %indvars.iv, 63
  %i.gv = shl nuw i64 1, %i.gu                    ; 2 uses
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !39
  %i.gx = and i64 %i.gw, %i.gv
  %.not272.us = icmp eq i64 %i.gx, 0
  br i1 %.not272.us, label %.preheader.us, label %.loopexit372

.preheader.us:                                    ; preds = %.preheader278.us, %bb.z
  %.0.us = phi i32 [ %i.hv, %bb.z ], [ 0, %.preheader278.us ] ; 3 uses
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.et
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !32 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = invoke noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(72) %i.ha, i32 noundef %i.gq)
          to label %bb.x unwind label %.thread245.split.us

bb.x:                                             ; preds = %.preheader.us
  %.not274.us = icmp slt i32 %.0.us, %i.he
  br i1 %.not274.us, label %bb.y, label %.critedge.loopexit.us

bb.y:                                             ; preds = %bb.x
  %i.hf = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.et
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !32 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef i32 %i.hk(ptr noundef nonnull align 8 dereferenceable(72) %i.hh, i32 noundef %i.gq, i32 noundef %.0.us)
          to label %bb.z unwind label %.thread    ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = sdiv i32 %i.hl, 64
  %.sext265.us = sext i32 %i.hn to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %.sroa.0198.0, i64 %.sext265.us
  %i.hp = and i64 %i.hm, -9223372036854775745
  %i.hq = icmp ugt i64 %i.hp, -9223372036854775808
  %storemerge.idx.i.i.i.i.i171.us = select i1 %i.hq, i64 -8, i64 0
  %storemerge.i.i.i.i.i172.us = getelementptr inbounds i8, ptr %i.ho, i64 %storemerge.idx.i.i.i.i.i171.us
  %i.hr = and i64 %i.hm, 63
  %i.hs = shl nuw i64 1, %i.hr
  %i.ht = load i64, ptr %storemerge.i.i.i.i.i172.us, align 8, !tbaa !39
  %i.hu = and i64 %i.ht, %i.hs
  %.not273.us = icmp eq i64 %i.hu, 0
  %i.hv = add nuw nsw i32 %.0.us, 1
  br i1 %.not273.us, label %.loopexit372, label %.preheader.us, !llvm.loop !96

.loopexit372:                                     ; preds = %bb.z, %.critedge.loopexit.us, %.preheader278.us
  %.3.us = phi i32 [ %.176327.us, %.preheader278.us ], [ %i.hy, %.critedge.loopexit.us ], [ %.176327.us, %bb.z ] ; 3 uses
  %.273.us = phi i1 [ %.071328.us, %.preheader278.us ], [ true, %.critedge.loopexit.us ], [ %.071328.us, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge331.us, label %.preheader278.us, !llvm.loop !97

.critedge.loopexit.us:                            ; preds = %bb.x
  %i.hw = sext i32 %.176327.us to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.6, i64 %i.hw
  store i32 %i.gr, ptr %i.hx, align 4, !tbaa !65
  %i.hy = add nsw i32 %.176327.us, 1
  %i.hz = load i64, ptr %i.gt, align 8, !tbaa !39
  %i.ia = or i64 %i.hz, %i.gv
  store i64 %i.ia, ptr %i.gt, align 8, !tbaa !39
  br label %.loopexit372

._crit_edge331.us:                                ; preds = %.loopexit372
  %i.ib = icmp sge i32 %.3.us, %i.fe
  %or.cond.not.us = select i1 %.273.us, i1 true, i1 %i.ib
  br i1 %or.cond.not.us, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us, label %.critedge145.thread, !llvm.loop !98

.thread245.split.us:                              ; preds = %.preheader.us
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.thread:                                          ; preds = %bb.y
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.split.us:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit166.split.us
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.et
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !32 ; 5 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !34 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !35
  %.not.i.i.i = icmp eq ptr %i.ik, %i.ii
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.split.us
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %.split.us
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !34 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 40 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !35
  %.not.i.i4.i = icmp eq ptr %i.io, %i.im
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i5.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i5.i:     ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  store ptr %i.im, ptr %i.in, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i

_ZNSt6vectorIiSaIiEE5clearEv.exit6.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i5.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %.not10.i = icmp eq ptr %.sroa.0206.6, %.sroa.11.2
  br i1 %.not10.i, label %.loopexit279, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i, %.noexc179
  %.sroa.07.011.i = phi ptr [ %i.iq, %.noexc179 ], [ %.sroa.0206.6, %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i ] ; 2 uses
  %i.ip = load i32, ptr %.sroa.07.011.i, align 4, !tbaa !65
  invoke void @_ZN5draco17AttributesEncoder14AddAttributeIdEi(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, i32 noundef %i.ip)
          to label %.noexc179 unwind label %.loopexit

.noexc179:                                        ; preds = %.lr.ph.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.iq, %.sroa.11.2
  br i1 %.not.i, label %.loopexit279.loopexit, label %.lr.ph.i

.loopexit279.loopexit:                            ; preds = %.noexc179
  %.pre396 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %.lr.ph367, %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i
  %i.ir = phi ptr [ %i.eo, %.lr.ph367 ], [ %i.ie, %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i ], [ %.pre396, %.loopexit279.loopexit ] ; 2 uses
  %.sroa.0206.2.ph = phi ptr [ %.sroa.0206.0362, %.lr.ph367 ], [ %.sroa.0206.6, %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i ], [ %.sroa.0206.6, %.loopexit279.loopexit ] ; 2 uses
  %.sroa.11.1.ph = phi ptr [ %.sroa.11.0363, %.lr.ph367 ], [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i ], [ %.sroa.11.2, %.loopexit279.loopexit ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.0364, %.lr.ph367 ], [ %.sroa.17.6, %_ZNSt6vectorIiSaIiEE5clearEv.exit6.i ], [ %.sroa.17.6, %.loopexit279.loopexit ] ; 2 uses
  %i.is = add i32 %.074365, 1                     ; 2 uses
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.ir to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = ashr exact i64 %i.ix, 3
  %.not.not = icmp ugt i64 %i.iy, %i.it
  br i1 %.not.not, label %.lr.ph367, label %.critedge145, !llvm.loop !99

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0206.3 = phi ptr [ %.sroa.0206.0362, %.loopexit.split-lp ], [ %.sroa.0206.6, %.loopexit ] ; 2 uses
  %.sroa.17.3 = phi ptr [ %.sroa.17.0364, %.loopexit.split-lp ], [ %.sroa.17.6, %.loopexit ] ; 2 uses
  %.pn128.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i180 = icmp eq ptr %.sroa.0198.0, null
  br i1 %.not.i.i180, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread, %.thread245.split.us, %bb.aa
  %.pn128.pn.pn254 = phi { ptr, i32 } [ %i.ic, %.thread245.split.us ], [ %.pn128.pn.pn, %bb.aa ], [ %i.id, %.thread ]
  %.sroa.17.3252 = phi ptr [ %.sroa.17.6, %.thread245.split.us ], [ %.sroa.17.3, %bb.aa ], [ %.sroa.17.6, %.thread ]
  %.sroa.0206.3250 = phi ptr [ %.sroa.0206.6, %.thread245.split.us ], [ %.sroa.0206.3, %bb.aa ], [ %.sroa.0206.6, %.thread ]
  %i.iz = ptrtoint ptr %.sroa.16204.0 to i64
  %i.ja = ptrtoint ptr %.sroa.0198.0 to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 2 uses
  %i.jc = ashr exact i64 %i.jb, 3
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds [8 x i8], ptr %.sroa.16204.0, i64 %i.jd
  tail call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jb) #14
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

.critedge145:                                     ; preds = %.loopexit279, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162
  %.sroa.0206.4 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ], [ %.sroa.0206.2.ph, %.loopexit279 ] ; 2 uses
  %.sroa.17.4 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit162 ], [ %.sroa.17.2.ph, %.loopexit279 ] ; 2 uses
  %.not.i.i181 = icmp eq ptr %.sroa.0198.0, null
  br i1 %.not.i.i181, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit182, label %.critedge145.thread

.critedge145.thread:                              ; preds = %._crit_edge331.us, %.critedge145
  %.sroa.17.4442 = phi ptr [ %.sroa.17.4, %.critedge145 ], [ %.sroa.17.6, %._crit_edge331.us ]
  %.sroa.0206.4440 = phi ptr [ %.sroa.0206.4, %.critedge145 ], [ %.sroa.0206.6, %._crit_edge331.us ]
  %.not292438 = phi i1 [ true, %.critedge145 ], [ false, %._crit_edge331.us ]
  %i.jf = ptrtoint ptr %.sroa.16204.0 to i64
  %i.jg = ptrtoint ptr %.sroa.0198.0 to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 2 uses
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds [8 x i8], ptr %.sroa.16204.0, i64 %i.jj
  tail call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jh) #14
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit182

_ZNSt13_Bvector_baseISaIbEED2Ev.exit182:          ; preds = %.critedge145, %.critedge145.thread
  %.sroa.17.4443 = phi ptr [ %.sroa.17.4, %.critedge145 ], [ %.sroa.17.4442, %.critedge145.thread ]
  %.sroa.0206.4441 = phi ptr [ %.sroa.0206.4, %.critedge145 ], [ %.sroa.0206.4440, %.critedge145.thread ] ; 3 uses
  %.not292439 = phi i1 [ true, %.critedge145 ], [ %.not292438, %.critedge145.thread ] ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %.sroa.0206.4441, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit182
  %i.jl = ptrtoint ptr %.sroa.17.4443 to i64
  %i.jm = ptrtoint ptr %.sroa.0206.4441 to i64
  %i.jn = sub i64 %i.jl, %i.jm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.4441, i64 noundef %i.jn) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ab, %bb.aa
  %.sroa.0206.5 = phi ptr [ %.sroa.0206.3250, %bb.ab ], [ %.sroa.0206.3, %bb.aa ] ; 3 uses
  %.sroa.17.5 = phi ptr [ %.sroa.17.3252, %bb.ab ], [ %.sroa.17.3, %bb.aa ]
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn254, %bb.ab ], [ %.pn128.pn.pn, %bb.aa ] ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %.sroa.0206.5, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit185, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.jo = ptrtoint ptr %.sroa.17.5 to i64
  %i.jp = ptrtoint ptr %.sroa.0206.5 to i64
  %i.jq = sub i64 %i.jo, %i.jp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.5, i64 noundef %i.jq) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit185

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.preheader282, %._crit_edge323, %bb.ac, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit182
  %.8122 = phi i1 [ %.not292439, %bb.ac ], [ %.not292439, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit182 ], [ false, %._crit_edge323 ], [ false, %.preheader282 ]
  %.not.i.i186 = icmp eq ptr %.sroa.0223.0, null
  br i1 %.not.i.i186, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit187, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jr = ptrtoint ptr %.sroa.16233.0 to i64
  %i.js = ptrtoint ptr %.sroa.0223.0 to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 2 uses
  %i.ju = ashr exact i64 %i.jt, 3
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds [8 x i8], ptr %.sroa.16233.0, i64 %i.jv
  tail call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jt) #14
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit187

_ZNSt13_Bvector_baseISaIbEED2Ev.exit187:          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ae
  ret i1 %.8122

_ZNSt6vectorIiSaIiEED2Ev.exit185:                 ; preds = %bb.ad, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.thread, %bb.g, %bb.k
  %.pn134.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.k ], [ %.pn128.pn.pn.pn, %bb.ad ], [ %i.en, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.thread ], [ %i.bw, %bb.g ], [ %.pn128.pn.pn.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ]
  %.not.i.i188 = icmp eq ptr %.sroa.0223.0, null
  br i1 %.not.i.i188, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit189, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit185
  %i.jx = ptrtoint ptr %.sroa.16233.0 to i64
  %i.jy = ptrtoint ptr %.sroa.0223.0 to i64
  %i.jz = sub i64 %i.jx, %i.jy                    ; 2 uses
  %i.ka = ashr exact i64 %i.jz, 3
  %i.kb = sub nsw i64 0, %i.ka
  %i.kc = getelementptr inbounds [8 x i8], ptr %.sroa.16233.0, i64 %i.kb
  tail call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.jz) #14
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit189

_ZNSt13_Bvector_baseISaIbEED2Ev.exit189:          ; preds = %bb.af, %_ZNSt6vectorIiSaIiEED2Ev.exit185
  resume { ptr, i32 } %.pn134.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco17PointCloudEncoder26GenerateAttributesEncodersEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i32 %.01523, 1               ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = trunc i64 %i.v to i32
  %.not = icmp slt i32 %i.m, %i.w
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !100

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01523 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %.01523)
  br i1 %i.aa, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.pre-phi33 = phi i64 [ %i.i, %bb.a ], [ %i.u, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %sext = shl i64 %.pre-phi33, 29
  %i.ac = ashr i64 %sext, 32                      ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 3 uses
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.al = sub nuw nsw i64 %i.ac, %i.aj
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.al)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %._crit_edge
  %i.am = icmp ult i64 %i.ac, %i.aj
  br i1 %i.am, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %.not28 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not28, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %._crit_edge26
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge26 ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !34 ; 6 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = trunc i64 %i.bf to i32                  ; 4 uses
  %.not29 = icmp eq i32 %i.bg, 0
  br i1 %.not29, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.preheader
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 5 uses
  %i.bi = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %xtraiter = and i32 %i.bg, 3                    ; 3 uses
  %i.bj = icmp ult i32 %i.bg, 4
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph25.new

.lr.ph25.new:                                     ; preds = %.lr.ph25
  %unroll_iter = and i32 %i.bg, -4
  br label %bb.g

._crit_edge26.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge26, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge26.loopexit.unr-lcssa, %.lr.ph25
  %.024.epil.init = phi i32 [ 0, %.lr.ph25 ], [ %i.cp, %._crit_edge26.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.024.epil = phi i32 [ %.024.epil.init, %.epil.preheader ], [ %i.bp, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bk = sext i32 %.024.epil to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !65
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bn
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !65
  %i.bp = add nuw i32 %.024.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge26, label %bb.f, !llvm.loop !101

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit.unr-lcssa, %bb.f, %.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bq = and i64 %indvars.iv.next, 4294967295
  %i.br = icmp ugt i64 %i.av, %i.bq
  br i1 %i.br, label %.preheader, label %.loopexit, !llvm.loop !102

bb.g:                                             ; preds = %bb.g, %.lr.ph25.new
  %.024 = phi i32 [ 0, %.lr.ph25.new ], [ %i.cp, %bb.g ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph25.new ], [ %niter.next.3, %bb.g ]
  %i.bs = sext i32 %.024 to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !65
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bv
  store i32 %i.bi, ptr %i.bw, align 4, !tbaa !65
  %i.bx = sext i32 %.024 to i64
  %i.by = getelementptr [4 x i8], ptr %i.bb, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !65
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cb
  store i32 %i.bi, ptr %i.cc, align 4, !tbaa !65
  %i.cd = sext i32 %.024 to i64
  %i.ce = getelementptr [4 x i8], ptr %i.bb, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !65
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ch
  store i32 %i.bi, ptr %i.ci, align 4, !tbaa !65
  %i.cj = sext i32 %.024 to i64
  %i.ck = getelementptr [4 x i8], ptr %i.bb, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !65
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cn
  store i32 %i.bi, ptr %i.co, align 4, !tbaa !65
  %i.cp = add nuw i32 %.024, 4                    ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge26.loopexit.unr-lcssa, label %bb.g, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge26, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cq = phi i1 [ true, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ true, %._crit_edge26 ], [ false, %.lr.ph ]
  ret i1 %i.cq
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco17PointCloudEncoder19EncodeAllAttributesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.sroa.08.012, align 4, !tbaa !65
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef %i.l) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 4 ; 2 uses
  %.not = icmp ne ptr %i.q, %i.d
  %or.cond.not = select i1 %i.p, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.p, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco17PointCloudEncoder19MarkParentAttributeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  %.not = icmp slt i32 %1, %i.l
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = zext nneg i32 %1 to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.1 = phi i1 [ %i.z, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5draco17PointCloudEncoder20GetPortableAttributeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  %.not = icmp slt i32 %1, %i.l
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = zext nneg i32 %1 to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.z, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco17PointCloudEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5draco17PointCloudEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2, %_ZSt8_DestroyISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorIiSaIiEED2Ev.exit2 ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5draco17AttributesEncoderEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5draco17AttributesEncoderEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(72) %i.s) #13, !inline_history !105
  br label %_ZSt8_DestroyISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5draco17AttributesEncoderEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit2
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorIiSaIiEED2Ev.exit2 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco17PointCloudEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco17PointCloudEncoder15GetGeometryTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17PointCloudEncoder17InitializeEncoderEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17PointCloudEncoder17EncodeEncoderDataEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco17PointCloudEncoder18EncodeGeometryDataEv(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !46, !alias.scope !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !38, !alias.scope !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !43, !alias.scope !109
  store i8 0, ptr %i.b, align 8, !tbaa !42, !alias.scope !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17PointCloudEncoder33EncodeAttributesEncoderIdentifierEi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !71

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !42
  store i8 %i.s, ptr %i.g, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !120
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !71

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !42
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check166, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check166:                                    ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %min.iters.check149 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check149, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %iter.check166
  %min.iters.check151 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check151, label %vec.epilog.ph170, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.ae = and i64 %i.c, 28
  %n.vec153 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec153
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.ph152, %vector.body154
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %2, i64 %index155 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !42
  %wide.load159 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !42
  %i.aj = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !42
  store <16 x i8> %wide.load159, ptr %i.aj, align 1, !tbaa !42
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ak, label %middle.block161, label %vector.body154, !llvm.loop !110

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.c, %n.vec153
  br i1 %cmp.n162, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph170, !prof !121

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec171 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.al = and i64 %i.c, 3
  %i.am = getelementptr i8, ptr %1, i64 %n.vec171
  %i.an = getelementptr i8, ptr %2, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174 = getelementptr i8, ptr %1, i64 %index173
  %next.gep175 = getelementptr i8, ptr %2, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep175, align 1, !tbaa !42
  store <4 x i8> %wide.load176, ptr %next.gep174, align 1, !tbaa !42
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ao, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !111

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  %cmp.n179 = icmp eq i64 %i.c, %n.vec171
  br i1 %cmp.n179, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block178
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check166 ], [ %i.af, %vec.epilog.iter.check168 ], [ %i.al, %vec.epilog.middle.block178 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check166 ], [ %i.ag, %vec.epilog.iter.check168 ], [ %i.am, %vec.epilog.middle.block178 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check166 ], [ %i.ah, %vec.epilog.iter.check168 ], [ %i.an, %vec.epilog.middle.block178 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ap = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !42
  store i8 %i.ap, ptr %.0811.i.i.i.i.i, align 1, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !112

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.au = icmp eq i64 %i.l, 1
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.l ; 6 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.a, %i.aw                     ; 11 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %iter.check, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.ax, 4
  %i.az = sub i64 %i.b, %i.k
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond183 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond183, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ax, 28
  %n.vec = and i64 %i.ax, 9223372036854775776     ; 5 uses
  %i.bb = and i64 %i.ax, 31
  %i.bc = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.bd = getelementptr i8, ptr %i.av, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.av, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep97, align 1, !tbaa !42
  %wide.load98 = load <16 x i8>, ptr %i.be, align 1, !tbaa !42
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !42
  store <16 x i8> %wide.load98, ptr %i.bf, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.ax, 9223372036854775804  ; 4 uses
  %i.bh = and i64 %i.ax, 3
  %i.bi = getelementptr i8, ptr %i.g, i64 %n.vec101
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec101
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %i.g, i64 %index102
  %next.gep104 = getelementptr i8, ptr %i.av, i64 %index102
  %wide.load105 = load <4 x i8>, ptr %next.gep104, align 1, !tbaa !42
  store <4 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !42
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.ax, %n.vec101
  br i1 %cmp.n107, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !42
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !115

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !120
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !120
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !71

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !120
  %i.bx = icmp sgt i64 %i.l, 0
  br i1 %i.bx, label %iter.check130, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check130:                                    ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %min.iters.check113 = icmp ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond184 = or i1 %min.iters.check113, %diff.check112
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !42
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !42
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !42
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !42
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !116

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !121

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !42
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !42
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !117

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !42
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !118

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !122   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !71

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !42
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !42
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !71

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !42
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #14
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !122
  store ptr %i.do, ptr %i.f, align 8, !tbaa !120
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !119
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco17AttributesEncoder14AddAttributeIdEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.d, align 4, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2305843009213693951)
  %i.q = select i1 %i.o, i64 2305843009213693951, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #16 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i32 %1, ptr %i.t, align 4, !tbaa !65
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !34
  store ptr %i.v, ptr %i.c, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.e, align 8, !tbaa !70
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.g, %bb.b ], [ %i.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !34  ; 6 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 4 uses
  %i.ag = trunc i64 %i.af to i32
  %.not = icmp slt i32 %1, %i.ag
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ah = add nsw i32 %1, 1
  %i.ai = sext i32 %i.ah to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 -1, ptr %i.a, align 4, !tbaa !65
  %i.aj = icmp ult i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nuw nsw i64 %i.ai, %i.af
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.aa, i64 noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !35
  %.pre5.pre = load ptr, ptr %i.y, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ugt i64 %i.af, %i.ai
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ai ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.am, ptr %i.z, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre5 = phi ptr [ %.pre5.pre, %bb.h ], [ %i.ab, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.h ], [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ %i.x, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.an = phi ptr [ %.pre5, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.ab, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.ao = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ], [ %i.x, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 2
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %i.au, -1
  %i.aw = sext i32 %1 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !65     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !71

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !65
  store i32 %i.s, ptr %i.d, align 4, !tbaa !65
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !35
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !71

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !65
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !123

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !124

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !126

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !35
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !71

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !65
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !35
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !65
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !127

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !128

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !65    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !65
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !129

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !65
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !130

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !71

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !65
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !65
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !71

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !65
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !34
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !70
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK5draco7Options7GetBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !65
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !35
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !65
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !65
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !33}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN5draco10PointCloudE", !11, i64 0}
!13 = !{!"p1 _ZTSSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS1_EE", !11, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !14, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !15, i64 0}
!17 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !16, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIiSaIiEE", !21, i64 0}
!23 = !{!"p1 _ZTSN5draco13EncoderBufferE", !11, i64 0}
!24 = !{!"p1 _ZTSN5draco18EncoderOptionsBaseIiEE", !11, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!"_ZTSN5draco17PointCloudEncoderE", !12, i64 8, !17, i64 16, !22, i64 40, !22, i64 64, !23, i64 88, !24, i64 96, !25, i64 104}
!27 = !{!26, !12, i64 8}
!28 = !{!26, !23, i64 88}
!29 = !{!14, !13, i64 0}
!30 = !{!14, !13, i64 8}
!31 = !{!"p1 _ZTSN5draco17AttributesEncoderE", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!19, !18, i64 0}
!35 = !{!19, !18, i64 8}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!25, !25, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !25, i64 8, !5, i64 16}
!41 = !{!40, !36, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{!40, !25, i64 8}
!44 = !{!"_ZTSN5draco6Status4CodeE", !5, i64 0}
!45 = !{!"_ZTSN5draco6StatusE", !44, i64 0, !40, i64 8}
!46 = !{!45, !44, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIcSaIcEE", !49, i64 0}
!51 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !11, i64 0}
!52 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !51, i64 0}
!53 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !52, i64 0}
!54 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !55, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !56, i64 0}
!58 = !{!"bool", !5, i64 0}
!59 = !{!"_ZTSN5draco13EncoderBufferE", !50, i64 0, !57, i64 24, !25, i64 32, !58, i64 40}
!60 = !{!59, !25, i64 32}
!61 = !{!36, !36, i64 0}
!62 = !{!"p1 _ZTSN5draco16GeometryMetadataE", !11, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!18, !18, i64 0}
!65 = !{!6, !6, i64 0}
!66 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !11, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 0}
!70 = !{!19, !18, i64 16}
!71 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!26, !25, i64 104}
!75 = distinct !{null, null, null, null, null, null, null}
!76 = distinct !{!76, i1 false, !"_ZN5draco8OkStatusEv"}
!77 = distinct !{!77, !76, !"_ZN5draco8OkStatusEv: argument 0"}
!78 = !{!26, !24, i64 96}
!79 = !{!77}
!80 = distinct !{!80, i1 false, !"_ZN5draco8OkStatusEv"}
!81 = distinct !{!81, !80, !"_ZN5draco8OkStatusEv: argument 0"}
!82 = !{!"short", !5, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!81}
!85 = distinct !{!85, i1 false, !"_ZN5draco8OkStatusEv"}
!86 = distinct !{!86, !85, !"_ZN5draco8OkStatusEv: argument 0"}
!87 = distinct !{!87, i1 false, !"_ZN5draco8OkStatusEv"}
!88 = distinct !{!88, !87, !"_ZN5draco8OkStatusEv: argument 0"}
!89 = !{!86}
!90 = !{!88}
!91 = !{!13, !13, i64 0}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !104}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{null, null, null, null, null, null}
!106 = !{!14, !13, i64 16}
!107 = distinct !{!107, i1 false, !"_ZN5draco8OkStatusEv"}
!108 = distinct !{!108, !107, !"_ZN5draco8OkStatusEv: argument 0"}
!109 = !{!108}
!110 = distinct !{!110, !33, !72, !73}
!111 = distinct !{!111, !33, !72, !73}
!112 = distinct !{!112, !33, !72}
!113 = distinct !{!113, !33, !72, !73}
!114 = distinct !{!114, !33, !72, !73}
!115 = distinct !{!115, !33, !72}
!116 = distinct !{!116, !33, !72, !73}
!117 = distinct !{!117, !33, !72, !73}
!118 = distinct !{!118, !33, !72}
!119 = !{!47, !36, i64 16}
!120 = !{!47, !36, i64 8}
!121 = !{!"branch_weights", i32 4, i32 28}
!122 = !{!47, !36, i64 0}
!123 = distinct !{!123, !33, !72, !73}
!124 = distinct !{!124, !33, !73, !72}
!125 = distinct !{!125, !33, !72, !73}
!126 = distinct !{!126, !33, !73, !72}
!127 = distinct !{!127, !33, !72, !73}
!128 = distinct !{!128, !33, !73, !72}
!129 = distinct !{!129, !33, !72, !73}
!130 = distinct !{!130, !33, !73, !72}
end_hunk_0
