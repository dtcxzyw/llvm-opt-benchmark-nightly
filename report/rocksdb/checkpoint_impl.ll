Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/checkpoint_impl?download=true
inline.NumInlined: 2162
inline.NumDeleted: 984
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10Checkpoint18ExportColumnFamilyEPNS_18ColumnFamilyHandleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPNS_25ExportImportFilesMetaDataE(ptr dead_on_unwind noalias nonnull writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr @.str, ptr %5, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr @.str, ptr %6, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb14CheckpointImpl16CreateCheckpointERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN7rocksdb14CheckpointImpl20CreateCheckpointImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPmPNS_10CopyEngineEbPNS_11RateLimiterE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr noundef %4, ptr noundef null, i1 noundef zeroext true, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb14CheckpointImpl20CreateCheckpointImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPmPNS_10CopyEngineEbPNS_11RateLimiterE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5, i1 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"struct.rocksdb::DBOptions", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 27 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %25 = alloca %"class.std::unique_ptr.72", align 8 ; 10 uses
  %26 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %27 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %28 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %29 = alloca %"class.std::function", align 8    ; 9 uses
  %30 = alloca %"class.std::function.96", align 8 ; 9 uses
  %31 = alloca %"class.std::function.98", align 8 ; 9 uses
  %32 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %33 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %34 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %35 = alloca %"class.std::unique_ptr.102", align 8 ; 8 uses
  %36 = alloca %"class.rocksdb::IOStatus", align 8 ; 8 uses
  %37 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %38 = alloca %"class.rocksdb::IOStatus", align 8 ; 8 uses
  %39 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %40 = alloca %"struct.rocksdb::DirFsyncOptions", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 920
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::DBOptions") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 888
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.b unwind label %bb.f       ; 7 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %i.r, ptr %i.a, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 232
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %10, align 8, !tbaa !79     ; 2 uses
  switch i8 %i.v, label %bb.j [
    i8 0, label %bb.e
    i8 1, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr @.str.45, ptr %11, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 16, ptr %i.w, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr @.str, ptr %12, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !31
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.i

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.g:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.h:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit267

bb.i:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.eb

bb.j:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %10
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %i.v, ptr %0, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ag = load <4 x i8>, ptr %i.ad, align 1, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %10, align 8, !tbaa !15
  store <4 x i8> %i.ag, ptr %i.ae, align 1, !tbaa !15
  store i8 0, ptr %i.af, align 4, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !93
  store i8 0, ptr %i.ah, align 1, !tbaa !93
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !94
  store ptr null, ptr %i.ak, align 8, !tbaa !94
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !94
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 13 uses
  store ptr null, ptr %i.am, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 6, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 10 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !9
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.46, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 32), ptr noundef %i.ao)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %2, align 8, !tbaa !9     ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1.i.in = phi i64 [ %i.aq, %bb.n ], [ %.1.i, %bb.p ] ; 9 uses
  %.1.i = add i64 %.1.i.in, -1                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.1.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = icmp eq i8 %i.at, 47
  br i1 %i.au, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit

bb.p:                                             ; preds = %bb.o
  %.not12.i = icmp eq i64 %.1.i, 0
  br i1 %.not12.i, label %.loopexit, label %bb.o, !llvm.loop !112

.loopexit:                                        ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr @.str.47, ptr %14, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 33, ptr %i.av, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @.str, ptr %15, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !31
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit99 unwind label %bb.r

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit99: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dz

bb.q:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.r:                                             ; preds = %.loopexit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.ea

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.az, ptr %17, align 8, !tbaa !61, !alias.scope !113
  %i.ba = icmp ugt i64 %.1.i.in, 15
  br i1 %i.ba, label %bb.s, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit
  %i.bb = icmp slt i64 %.1.i.in, 0
  br i1 %i.bb, label %.noexc10.i.i, label %bb.t

.noexc10.i.i:                                     ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #32
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %.noexc10.i.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bc = add nuw i64 %.1.i.in, 1                 ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !116

.noexc11.i.i:                                     ; preds = %bb.t
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc100 unwind label %bb.am

.noexc100:                                        ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.t
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #29
          to label %.noexc101 unwind label %bb.am ; 2 uses

.noexc101:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.be, ptr %17, align 8, !tbaa !9, !alias.scope !113
  store i64 %.1.i.in, ptr %i.az, align 8, !tbaa !15, !alias.scope !113
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit
  %i.bf = phi ptr [ %i.be, %.noexc101 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm.exit ] ; 3 uses
  %cond = icmp eq i64 %.1.i.in, 1
  br i1 %cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = load i8, ptr %i.ar, align 1, !tbaa !15
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull align 1 %i.ar, i64 %.1.i.in, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  store i64 %.1.i.in, ptr %i.bh, align 8, !tbaa !62, !alias.scope !113
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.1.i.in
  store i8 0, ptr %i.bi, align 1, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !62, !noalias !117 ; 5 uses
  %i.bk = and i64 %i.bj, -4
  %i.bl = icmp eq i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #32
          to label %.noexc102 unwind label %bb.an

.noexc102:                                        ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.w
  %i.bm = add nsw i64 %i.bj, 4                    ; 3 uses
  %i.bn = load ptr, ptr %17, align 8, !tbaa !9, !noalias !117 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.az
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bp = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bq = load i64, ptr %i.az, align 8, !tbaa !15, !noalias !117
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bm, %i.br
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  store i32 1886221358, ptr %i.bs, align 1, !noalias !117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.bj, i64 noundef 0, ptr noundef nonnull @.str.48, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !62, !noalias !117
  %i.bt = load ptr, ptr %17, align 8, !tbaa !9, !noalias !117
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store i8 0, ptr %i.bu, align 1, !tbaa !15, !noalias !117
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  store ptr %i.bv, ptr %16, align 8, !tbaa !61, !alias.scope !117
  %i.bw = load ptr, ptr %17, align 8, !tbaa !9, !noalias !117 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, %i.az
  br i1 %i.bx, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.by = load i64, ptr %i.bh, align 8, !tbaa !62, !noalias !117 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bw, ptr %16, align 8, !tbaa !9, !alias.scope !117
  %i.cb = load i64, ptr %i.az, align 8, !tbaa !15, !noalias !117
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !15, !alias.scope !117
  %.pre.i = load i64, ptr %i.bh, align 8, !tbaa !62, !noalias !117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %i.cc = phi ptr [ %i.bv, %bb.aa ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cd = phi i64 [ %i.by, %bb.aa ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !62, !alias.scope !117
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.49, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 32), ptr noundef %i.cc)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !120
  invoke void @_ZN7rocksdb14CheckpointImpl21CleanStagingDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6LoggerE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.cf)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load <4 x i8>, ptr %18, align 8, !tbaa !15
  %i.ch = load i8, ptr %18, align 8, !tbaa !122
  store <4 x i8> %i.cg, ptr %13, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %18, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !95, !range !49, !noundef !50
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 6 uses
  store i8 %i.cj, ptr %i.ck, align 4, !tbaa !92
  store i8 0, ptr %i.ci, align 4, !tbaa !92
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 6 uses
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !94
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !94 ; 2 uses
  store ptr %i.cp, ptr %i.am, align 8, !tbaa !94
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #28
  %.pre = load i8, ptr %13, align 8, !tbaa !79
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.ac
  %i.cr = phi i8 [ %.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ], [ %i.ch, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.av, label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.ct = load ptr, ptr %16, align 8, !tbaa !9, !noalias !123
  %i.cu = load i64, ptr %i.ce, align 8, !tbaa !62, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !123
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.50, i64 noundef 40, ptr noundef %i.ct, i64 noundef %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !123
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.cv = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !62, !noalias !126 ; 5 uses
  %i.cx = icmp sgt i64 %i.cw, 9223372036854775770
  br i1 %i.cx, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #32
          to label %.noexc118 unwind label %bb.ar

.noexc118:                                        ; preds = %bb.af
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108: ; preds = %bb.ae
  %i.cy = add nsw i64 %i.cw, 37                   ; 3 uses
  %i.cz = load ptr, ptr %22, align 8, !tbaa !9, !noalias !126 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 9 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108
  %i.dc = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i108
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !15, !noalias !126
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i117
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i117 ]
  %.not.i.i.i111 = icmp ugt i64 %i.cy, %i.de
  br i1 %.not.i.i.i111, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i110
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.df, ptr noundef nonnull align 1 dereferenceable(37) @.str.51, i64 37, i1 false), !noalias !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i110
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.cw, i64 noundef 0, ptr noundef nonnull @.str.51, i64 noundef 37)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114_crit_edge unwind label %bb.ar

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114_crit_edge: ; preds = %bb.ah
  %.pre296 = load ptr, ptr %22, align 8, !tbaa !9, !noalias !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114_crit_edge, %bb.ag
  %i.dg = phi ptr [ %.pre296, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114_crit_edge ], [ %i.cz, %bb.ag ]
  store i64 %i.cy, ptr %i.cv, align 8, !tbaa !62, !noalias !126
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i8 0, ptr %i.dh, align 1, !tbaa !15, !noalias !126
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.di, ptr %21, align 8, !tbaa !61, !alias.scope !126
  %i.dj = load ptr, ptr %22, align 8, !tbaa !9, !noalias !126 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.da
  br i1 %i.dk, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !62, !noalias !126 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add nuw nsw i64 %i.dl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.dn, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114
  store ptr %i.dj, ptr %21, align 8, !tbaa !9, !alias.scope !126
  %i.do = load i64, ptr %i.da, align 8, !tbaa !15, !noalias !126
  store i64 %i.do, ptr %i.di, align 8, !tbaa !15, !alias.scope !126
  %.pre.i116 = load i64, ptr %i.cv, align 8, !tbaa !62, !noalias !126
end_hunk_0
