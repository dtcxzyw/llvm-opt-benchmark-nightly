inline.NumInlined: 2868
inline.NumDeleted: 1221
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !217    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !224
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.h, i64 noundef %i.k)
          to label %bb.h unwind label %bb.k, !inline_history !434

bb.g:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  store ptr null, ptr %i.g, align 8, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !220, !range !60, !noundef !61
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %0, align 8, !tbaa !217    ; 3 uses
  %.not.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i1.i, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #24, !inline_history !435
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

declare noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.arrow::Result.172", align 8 ; 49 uses
  %38 = alloca %"class.arrow::Result.9", align 8  ; 11 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %40 = alloca %"class.std::shared_ptr.138", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %41 = alloca %"class.std::shared_ptr.138", align 8 ; 6 uses
  %42 = alloca %"struct.arrow::ipc::feather::(anonymous namespace)::ArrayWriterV1", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250  ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !256
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !436
  store i64 %i.l, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !454
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.o = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.o, ptr %i.d, align 8, !tbaa !49
  %i.p = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc unwind label %bb.d     ; 7 uses

.noexc:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !74, !noalias !457
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !79, !noalias !457
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !43, !noalias !457
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow11StringArrayEJlDnDnRKSt10shared_ptrINS0_6BufferEElEEvPT_DpOT0_(ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !457

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #25, !noalias !457
  br label %.body

_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  store ptr %i.s, ptr %40, align 8, !tbaa !460
  %i.u = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.p, ptr %i.u, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.t, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.jt

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.138") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.f

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e
  %i.w = load ptr, ptr %41, align 8, !tbaa !246   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  store ptr %i.w, ptr %40, align 8, !tbaa !460
  %i.z = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.jt

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = phi ptr [ %i.y, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.p, %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ac = phi ptr [ %i.w, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.s, %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store ptr %i.ac, ptr %42, align 8, !tbaa !460
  %i.ad = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %2, ptr %i.ad, align 8, !tbaa !461
  %i.ae = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %3, ptr %i.ae, align 8, !tbaa !465
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 50 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !466
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !253, !noalias !466 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !256, !noalias !466 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 29
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %.noexc18 unwind label %bb.js, !inline_history !469

.noexc18:                                         ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246, !noalias !466
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef %2, ptr noundef %3)
          to label %_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV15WriteEv.exit unwind label %bb.js, !inline_history !469

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24, !noalias !466
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  switch i32 %i.aj, label %bb.ac [
    i32 1, label %bb.j
    i32 3, label %bb.k
    i32 5, label %bb.l
    i32 7, label %bb.m
    i32 9, label %bb.n
    i32 2, label %bb.o
    i32 4, label %bb.p
    i32 6, label %bb.q
    i32 8, label %bb.r
    i32 11, label %bb.s
    i32 12, label %bb.t
    i32 35, label %bb.u
    i32 14, label %bb.v
    i32 13, label %bb.w
    i32 34, label %bb.x
    i32 16, label %bb.y
    i32 18, label %bb.z
    i32 19, label %bb.aa
    i32 20, label %bb.ab
  ]

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.an = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ao = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 1, ptr %i.ao, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.l:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ap = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 2, ptr %i.ap, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.m:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.aq = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 3, ptr %i.aq, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.n:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ar = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 4, ptr %i.ar, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.o:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.as = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 5, ptr %i.as, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.p:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.at = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 6, ptr %i.at, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.q:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.au = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 7, ptr %i.au, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.r:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.av = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 8, ptr %i.av, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.s:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.aw = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 9, ptr %i.aw, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.t:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 10, ptr %i.ax, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.u:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ay = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 18, ptr %i.ay, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.v:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.az = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 12, ptr %i.az, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.w:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ba = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 11, ptr %i.ba, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.x:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.bb = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 17, ptr %i.bb, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.y:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.bc = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 3, ptr %i.bc, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.z:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.bd = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 4, ptr %i.bd, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.aa:                                            ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.be = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 3, ptr %i.be, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.ab:                                            ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.bf = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 4, ptr %i.bf, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.ac:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !470
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !43, !noalias !470
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !470
  invoke void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i1 noundef zeroext false)
          to label %.noexc143 unwind label %bb.js, !inline_history !474

.noexc143:                                        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !475
  invoke void @_ZN5arrow8internal12JoinToStringIJRA30_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA46_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(30) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(46) @.str.14)
          to label %.noexc.i unwind label %bb.ah, !noalias !470

.noexc.i:                                         ; preds = %.noexc143
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ad unwind label %bb.ae, !noalias !470

bb.ad:                                            ; preds = %.noexc.i
  %i.bj = load ptr, ptr %4, align 8, !tbaa !130, !noalias !475 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !83, !noalias !475
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #25, !noalias !470
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ae:                                            ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %4, align 8, !tbaa !130, !noalias !475 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %bb.ae
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !83, !noalias !475
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #25, !noalias !470
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !475
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !475
  call void @_ZN5arrow6ResultINS_3ipc7feather3fbs4TypeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %37, ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  %i.bu = load ptr, ptr %5, align 8, !tbaa !45, !noalias !470 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i142, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.af, !prof !48

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !50, !range !60, !noundef !61
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.ag, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.by = load ptr, ptr %6, align 8, !tbaa !130, !noalias !470 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %.noexc20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !83, !noalias !470
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #25
  br label %.noexc20

bb.ah:                                            ; preds = %.noexc143
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cd, %bb.ah ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i ]
  %i.ce = load ptr, ptr %6, align 8, !tbaa !130, !noalias !470 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %.body.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !83, !noalias !470
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #25, !noalias !470
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !470
  br label %.body21

.noexc20:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !470
  %.pr = load ptr, ptr %37, align 8, !tbaa !45, !noalias !466
  %i.cj = icmp eq ptr %.pr, null
  br i1 %i.cj, label %.noexc20..noexc20.thread_crit_edge, label %bb.ai, !prof !480

.noexc20..noexc20.thread_crit_edge:               ; preds = %.noexc20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %37, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !473, !noalias !466
  br label %.noexc20.thread

bb.ai:                                            ; preds = %.noexc20
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %_ZN5arrow6StatusC2ERKS0_.exit141 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

.noexc20.thread:                                  ; preds = %.noexc20..noexc20.thread_crit_edge, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.cl = phi i8 [ %.pre, %.noexc20..noexc20.thread_crit_edge ], [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ], [ 5, %bb.o ], [ 6, %bb.p ], [ 7, %bb.q ], [ 8, %bb.r ], [ 9, %bb.s ], [ 10, %bb.t ], [ 18, %bb.u ], [ 12, %bb.v ], [ 11, %bb.w ], [ 17, %bb.x ], [ 3, %bb.y ], [ 4, %bb.z ], [ 3, %bb.aa ], [ 4, %bb.ab ]
  store i8 %i.cl, ptr %3, align 8, !tbaa !295, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24, !noalias !466
  %i.cm = load ptr, ptr %2, align 8, !tbaa !43, !noalias !466
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8, !noalias !466
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43, !noalias !466
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !466
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.9") align 8 %38, ptr noundef nonnull align 8 dereferenceable(28) %i.cp)
          to label %bb.ak unwind label %bb.am, !noalias !466, !inline_history !469

bb.ak:                                            ; preds = %.noexc20.thread
  %i.ct = load ptr, ptr %38, align 8, !tbaa !45, !noalias !466
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ao, label %bb.al, !prof !48

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %.critedge.i unwind label %bb.an

bb.am:                                            ; preds = %.noexc20.thread
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.an:                                            ; preds = %.noexc112.invoke, %bb.al, %bb.jc, %bb.ja, %bb.iy, %bb.iw, %bb.iu, %bb.is, %bb.iq, %bb.io, %bb.im, %bb.ik, %bb.ii, %bb.ig, %bb.ie, %bb.ic, %bb.ia, %bb.hy, %bb.hw, %bb.hu, %bb.hs, %bb.hq, %bb.ho, %.noexc111, %.noexc110, %bb.hm, %.noexc107, %.noexc106, %bb.hj, %bb.hg, %.noexc102, %.noexc101, %bb.he, %bb.hb, %bb.gz, %_ZN5arrow6StatusD2Ev.exit.i179.i, %_ZN5arrow6StatusD2Ev.exit.i152.i, %bb.ep, %_ZN5arrow6StatusD2Ev.exit.i116.i, %bb.dj, %_ZN5arrow6StatusD2Ev.exit.i.i, %.noexc86, %.noexc85, %bb.cd, %.noexc82, %.noexc81, %bb.ca, %.noexc78, %.noexc77, %bb.bx, %.noexc74, %.noexc73, %bb.bu, %.noexc70, %.noexc69, %bb.br, %.noexc66, %.noexc65, %bb.bo, %.noexc62, %.noexc61, %bb.bl, %.noexc58, %.noexc57, %bb.bi, %.noexc54, %.noexc53, %bb.bf, %.noexc50, %.noexc49, %bb.bc, %.noexc46, %.noexc45, %bb.az, %.noexc42, %.noexc41, %bb.aw, %bb.at, %bb.ap, %bb.ao
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.ao:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !49, !noalias !466
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !296, !noalias !466
  %i.da = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !466
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !436, !noalias !466
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !297, !noalias !466
  %i.de = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.ap unwind label %bb.an, !noalias !466, !inline_history !469

bb.ap:                                            ; preds = %bb.ao
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.de, ptr %i.df, align 8, !tbaa !298, !noalias !466
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.dg, align 8, !tbaa !299, !noalias !466
  %i.dh = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.aq unwind label %bb.an, !noalias !466, !inline_history !469

bb.aq:                                            ; preds = %bb.ap
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %bb.ar, label %_ZN5arrow6StatusD2Ev.exit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24, !noalias !466
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !481, !noalias !466
  %i.dl = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !466 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !436, !noalias !466 ; 2 uses
  %i.do = ashr i64 %i.dn, 3
  %i.dp = and i64 %i.dn, 7
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = zext i1 %i.dq to i64
  %i.ds = add nsw i64 %i.do, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !483, !noalias !466
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV111WriteBufferEPKhll(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef %i.dk, i64 noundef %i.ds, i64 noundef %i.du)
          to label %_ZN5arrow6StatusD2Ev.exit138 unwind label %bb.as, !noalias !466, !inline_history !469

_ZN5arrow6StatusD2Ev.exit138:                     ; preds = %bb.ar
  %i.dv = load ptr, ptr %39, align 8, !tbaa !45   ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24, !noalias !466
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge.i

bb.as:                                            ; preds = %bb.ar
  %i.dx = landingpad { ptr, i32 }
end_hunk_0
