inline.NumInlined: 2868
inline.NumDeleted: 1221
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !154

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !50, !range !60, !noundef !61
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow3ipc7feather15WriteProperties8DefaultsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.arrow::ipc::feather::WriteProperties") align 8 captures(none) initializes((0, 4), (8, 24)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  store i32 3, ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 65536, ptr %i.a, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -2147483648, ptr %i.c, align 4, !tbaa !206
  store i32 0, ptr %i.b, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr.35", align 16 ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.std::shared_ptr.138", align 8 ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"class.arrow_vendored_private::flatbuffers::FlatBufferBuilderImpl", align 8 ; 37 uses
  %13 = alloca %"struct.arrow::ipc::feather::(anonymous namespace)::ColumnMetadata", align 8 ; 21 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %15 = alloca %"class.std::shared_ptr.104", align 8 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.82", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.19", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 11 uses
  %20 = alloca %"class.arrow::Result.37", align 8 ; 12 uses
  %21 = alloca %"class.std::unique_ptr.41", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.49", align 16 ; 9 uses
  %23 = alloca %"class.arrow::Result.52", align 8 ; 12 uses
  %24 = alloca %"class.std::shared_ptr.56", align 8 ; 7 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.b = load i32, ptr %3, align 8, !tbaa !202
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.cq

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !211
  %i.d = load ptr, ptr %2, align 8, !tbaa !43, !noalias !211
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !211
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 4), !noalias !211, !inline_history !216
  %i.g = load ptr, ptr %10, align 8, !tbaa !45, !noalias !211 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !211
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit84.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit84.i.i.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !211
  %i.i = load ptr, ptr %2, align 8, !tbaa !43, !noalias !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !211
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZN5arrow3ipc7feather12_GLOBAL__N_113kPaddingBytesE, i64 noundef 4), !noalias !211, !inline_history !216
  %i.l = load ptr, ptr %11, align 8, !tbaa !45, !noalias !211 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !211
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit94.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit84.i.i.i, %bb.b
  %.ph.i = phi ptr [ %i.l, %_ZN5arrow6StatusD2Ev.exit84.i.i.i ], [ %i.g, %bb.b ]
  store ptr %.ph.i, ptr %0, align 8, !tbaa !45, !alias.scope !208
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_114WriteFeatherV1ERKNS_5TableEPNS_2io12OutputStreamE.exit

_ZN5arrow6StatusD2Ev.exit94.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit84.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !208
  store ptr null, ptr %12, align 8, !tbaa !217, !noalias !208
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !220, !noalias !208
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 1024, ptr %i.o, align 8, !tbaa !221, !noalias !208
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 2147483647, ptr %i.p, align 8, !tbaa !222, !noalias !208
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store i64 8, ptr %i.q, align 8, !tbaa !223, !noalias !208
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 7 uses
  store i64 0, ptr %i.r, align 8, !tbaa !224, !noalias !208
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 9 uses
  store i32 0, ptr %i.s, align 8, !tbaa !225, !noalias !208
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !226, !noalias !208
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 3 uses
  store i8 0, ptr %i.v, align 8, !tbaa !229, !noalias !208
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 97
  store i8 0, ptr %i.w, align 1, !tbaa !230, !noalias !208
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %i.t, i8 0, i64 30, i1 false), !noalias !208
  store i64 1, ptr %i.x, align 8, !tbaa !231, !noalias !208
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  store i8 0, ptr %i.y, align 8, !tbaa !232, !noalias !208
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 113
  store i8 1, ptr %i.z, align 1, !tbaa !233, !noalias !208
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr null, ptr %i.aa, align 8, !tbaa !234, !noalias !208
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 92 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 80
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 84 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit94.i
  %.sroa.13.0.i = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %.sroa.13.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 7 uses
  %.sroa.9.0.i = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %.sroa.9.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 5 uses
  %.sroa.0185.0.i = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %.sroa.0185.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 17 uses
  %.058.i = phi i32 [ 0, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !235, !noalias !208
  %i.ay = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK5arrow5Table11num_columnsEv.exit.i unwind label %bb.d, !noalias !208

_ZNK5arrow5Table11num_columnsEv.exit.i:           ; preds = %bb.c
  %.not.i = icmp slt i32 %.058.i, %i.ay
  br i1 %.not.i, label %bb.e, label %.critedge85.i

bb.d:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.e:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !208
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !129, !noalias !208
  store i64 0, ptr %i.ae, align 8, !tbaa !131, !noalias !208
  store i8 0, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !208
  %i.ba = load ptr, ptr %1, align 8, !tbaa !43, !noalias !208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !208
  invoke void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.104") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.058.i)
          to label %bb.f unwind label %bb.ai, !noalias !208

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %15, align 8, !tbaa !236, !noalias !208 ; 2 uses
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !239, !noalias !208 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val90.i = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !208
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.bf = ptrtoint ptr %.val90.i to i64
  %i.bg = ptrtoint ptr %.val.i to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 4
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.g, label %_ZN5arrow6StatusD2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(51) @.str.12)
          to label %_ZN5arrow6StatusD2Ev.exit99.i unwind label %bb.aj, !noalias !208

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.f
  %i.bl = load ptr, ptr %.val.i, align 8, !tbaa !246, !noalias !249 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !249
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull %2, ptr noundef nonnull %13)
          to label %.noexc95.i unwind label %bb.aj, !noalias !208

.noexc95.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bm = load ptr, ptr %7, align 8, !tbaa !45, !noalias !249 ; 2 uses
  store ptr %i.bm, ptr %14, align 8, !tbaa !45, !alias.scope !243, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !249
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit45.i.i, label %_ZN5arrow6StatusD2Ev.exit99.i

_ZN5arrow6StatusD2Ev.exit45.i.i:                  ; preds = %.noexc95.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !250, !noalias !249
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !253, !noalias !249 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !256, !noalias !249
  switch i32 %i.bs, label %bb.v [
    i32 29, label %bb.h
    i32 16, label %bb.s
    i32 19, label %bb.t
    i32 18, label %bb.u
  ]

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 1, ptr %i.af, align 8, !tbaa !270, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !249
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bl)
          to label %.noexc96.i unwind label %bb.aj, !noalias !208 ; 2 uses

.noexc96.i:                                       ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !246, !noalias !249 ; 3 uses
  store ptr %i.bu, ptr %8, align 8, !tbaa !246, !noalias !249
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !73, !noalias !249 ; 3 uses
  store ptr %i.bw, ptr %i.ah, align 8, !tbaa !73, !noalias !249
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc96.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !249
  %.not.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !249
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !3, !noalias !249
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !249 ; 0 uses
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !246, !noalias !249
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i.i: ; preds = %bb.k, %bb.j, %.noexc96.i
  %i.cc = phi ptr [ %i.bu, %.noexc96.i ], [ %i.bu, %bb.j ], [ %.pre.i.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !249
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull %2, ptr noundef nonnull %i.ai)
          to label %_ZN5arrow6StatusD2Ev.exit47.i.i unwind label %bb.l, !noalias !249

_ZN5arrow6StatusD2Ev.exit47.i.i:                  ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i.i
  %i.cd = load ptr, ptr %9, align 8, !tbaa !45, !noalias !249 ; 2 uses
  store ptr %i.cd, ptr %14, align 8, !tbaa !45, !alias.scope !243, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !249
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit51.i.i, label %.critedge41.i.i

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !249
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #24, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !249
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit51.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit47.i.i
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !250, !noalias !249
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !253, !noalias !249
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !275, !range !60, !noalias !249, !noundef !61
  store i8 %i.cj, ptr %i.aj, align 8, !tbaa !279, !noalias !249
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !73, !noalias !249 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit51.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8, !noalias !249 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cl, align 8, !tbaa !74, !noalias !249
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !79, !noalias !249
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !43, !noalias !249
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !249
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #24, !noalias !249, !inline_history !280
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !43, !noalias !249
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !249
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #24, !noalias !249, !inline_history !280
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !249
  %.not.i.i.i52.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i52.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3, !noalias !249
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4, !noalias !249
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.p ], [ %i.cy, %bb.q ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !85

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #24, !noalias !249
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %_ZN5arrow6StatusD2Ev.exit51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !249
  br label %.noexc97.i

bb.s:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 3, ptr %i.af, align 8, !tbaa !270, !noalias !249
  br label %.noexc97.i

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 4, ptr %i.af, align 8, !tbaa !270, !noalias !249
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.db = load i32, ptr %i.da, align 8, !tbaa !281, !noalias !249
  store i32 %i.db, ptr %i.ag, align 4, !tbaa !284, !noalias !249
  br label %.noexc97.i

bb.u:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 2, ptr %i.af, align 8, !tbaa !270, !noalias !249
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !285, !noalias !249
  store i32 %i.dd, ptr %i.ag, align 4, !tbaa !284, !noalias !249
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %.noexc97.i unwind label %bb.aj, !noalias !208

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 0, ptr %i.af, align 8, !tbaa !270, !noalias !249
  br label %.noexc97.i

.noexc97.i:                                       ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  store ptr null, ptr %14, align 8, !tbaa !45, !alias.scope !287, !noalias !208
  br label %_ZN5arrow6StatusD2Ev.exit99.i

.critedge41.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit47.i.i
  %i.df = load ptr, ptr %i.ah, align 8, !tbaa !73, !noalias !249 ; 8 uses
  %.not.i.i53.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i53.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i.i, label %bb.w

bb.w:                                             ; preds = %.critedge41.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8, !noalias !249 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dg, align 8, !tbaa !74, !noalias !249
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !79, !noalias !249
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !43, !noalias !249
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !249
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #24, !noalias !249, !inline_history !280
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !43, !noalias !249
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !249
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #24, !noalias !249, !inline_history !280
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i.i

bb.y:                                             ; preds = %bb.w
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !249
  %.not.i.i.i54.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i54.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3, !noalias !249
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4, !noalias !249
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i56.i.i = phi i32 [ %i.dj, %bb.z ], [ %i.dt, %bb.aa ]
  %i.du = icmp eq i32 %.0.i.i.i.i56.i.i, 1
  br i1 %i.du, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i.i, !prof !85

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #24, !noalias !249
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i, %bb.x, %.critedge41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !249
  br label %_ZN5arrow6StatusD2Ev.exit99.i

_ZN5arrow6StatusD2Ev.exit99.i:                    ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i.i, %.noexc97.i, %.noexc95.i, %bb.g
  %i.dv = load ptr, ptr %14, align 8, !tbaa !45, !noalias !208 ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !45, !alias.scope !208
  store ptr null, ptr %14, align 8, !tbaa !45, !noalias !208
  %i.dw = load ptr, ptr %i.ak, align 8, !tbaa !73, !noalias !208 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit99.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8, !noalias !208 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dx, align 8, !tbaa !74, !noalias !208
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !79, !noalias !208
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !43, !noalias !208
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !208
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #24, !noalias !208, !inline_history !290
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !43, !noalias !208
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !208
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #24, !noalias !208, !inline_history !290
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split.i

bb.ae:                                            ; preds = %bb.ac
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !208
  %.not.i.i.i100.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i100.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.ea, %bb.af ], [ %i.ek, %bb.ag ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.el, label %bb.ah, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split.i, !prof !85

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #24, !noalias !208
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split.i

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !45, !alias.scope !208
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split.i, %_ZN5arrow6StatusD2Ev.exit99.i
  %i.em = phi ptr [ %.pr.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split.i ], [ %i.dv, %_ZN5arrow6StatusD2Ev.exit99.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !208
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZN5arrow6StatusD2Ev.exit104.i, label %.critedge83.i

bb.ai:                                            ; preds = %bb.e
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.u, %bb.h, %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.g
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aj, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.ep, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #24, !noalias !208
  br label %bb.ak

bb.ak:                                            ; preds = %.body.i, %bb.ai
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.eo, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !208
  br label %bb.bw

_ZN5arrow6StatusD2Ev.exit104.i:                   ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !208
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.eq = load ptr, ptr %i.ab, align 8, !tbaa !235, !noalias !294
  %i.er = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i32 noundef %.058.i)
          to label %.noexc107.i unwind label %bb.bt, !noalias !208 ; 2 uses

.noexc107.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit104.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !136, !noalias !294 ; 3 uses
  store ptr %i.es, ptr %16, align 8, !tbaa !136, !alias.scope !291, !noalias !208
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !73, !noalias !294 ; 3 uses
  store ptr %i.eu, ptr %i.al, align 8, !tbaa !73, !alias.scope !291, !noalias !208
  %.not.i.i.i.i105.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i105.i, label %_ZNK5arrow5Table5fieldEi.exit.i, label %bb.al

bb.al:                                            ; preds = %.noexc107.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !294
  %.not.i.i.i.i.i106.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i.i.i106.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !294
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !3, !noalias !294
  br label %_ZNK5arrow5Table5fieldEi.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ez = atomicrmw volatile add ptr %i.ev, i32 1 acq_rel, align 4, !noalias !294 ; 0 uses
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !136, !noalias !208
  br label %_ZNK5arrow5Table5fieldEi.exit.i

_ZNK5arrow5Table5fieldEi.exit.i:                  ; preds = %bb.an, %bb.am, %.noexc107.i
  %i.fa = phi ptr [ %.pre.i, %bb.an ], [ %i.es, %bb.am ], [ %i.es, %.noexc107.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !130, !noalias !208
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !131, !noalias !208
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef %i.fc, i64 noundef %i.fe)
          to label %bb.ao unwind label %bb.bu, !noalias !208

bb.ao:                                            ; preds = %_ZNK5arrow5Table5fieldEi.exit.i
  %i.ff = load i32, ptr %i.s, align 8, !tbaa !225, !noalias !208
  %i.fg = load i8, ptr %13, align 8, !tbaa !295, !noalias !208
  %i.fh = load i64, ptr %i.am, align 8, !tbaa !296, !noalias !208
  %i.fi = load i64, ptr %i.an, align 8, !tbaa !297, !noalias !208
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !79
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !419
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !419
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread, !prof !154

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !50, !range !60, !noundef !61
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !420
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = load ptr, ptr %0, align 8, !tbaa !33     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !85

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !3
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !37
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !420  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !48

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4, !tbaa !3
  store i32 %i.z, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !48

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !33
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !420 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !33
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !420
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !48

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !3
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !420
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow3ipc7feather3fbs12CreateColumnERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEENS8_INS2_14PrimitiveArrayEEENS2_12TypeMetadataENS8_IvEESA_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i32 %4, i32 %5) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !225  ; 4 uses
  %.not.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i, label %_ZN5arrow3ipc7feather3fbs13ColumnBuilder17add_user_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !231
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.d, align 8, !tbaa !231
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = sub i32 0, %i.c
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %.pre4.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !302 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !303
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.e, label %.lr.ph.preheader.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !302
  %.pre.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %i.c, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i.i, %bb.e ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !302
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !302
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !83
  %i.x = add nuw i64 %.05.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !421

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !225
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %i.y = phi i32 [ %.pre.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i ], [ %i.c, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i ]
  %reass.sub = sub i32 %i.y, %5
  %i.z = add i32 %reass.sub, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 12, i32 noundef %i.z, i32 noundef 0)
  br label %_ZN5arrow3ipc7feather3fbs13ColumnBuilder17add_user_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit

_ZN5arrow3ipc7feather3fbs13ColumnBuilder17add_user_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit: ; preds = %bb.a, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i
  %.not.i.i.i9 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i9, label %_ZN5arrow3ipc7feather3fbs13ColumnBuilder12add_metadataEN22arrow_vendored_private11flatbuffers6OffsetIvEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow3ipc7feather3fbs13ColumnBuilder17add_user_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !231
  %i.ac = icmp ult i64 %i.ab, 4
  br i1 %i.ac, label %bb.g, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10

bb.g:                                             ; preds = %bb.f
  store i64 4, ptr %i.aa, align 8, !tbaa !231
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10: ; preds = %bb.g, %bb.f
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !225 ; 3 uses
  %i.ae = sub i32 0, %i.ad
  %i.af = and i32 %i.ae, 3                        ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %.not.i.i.i.i.i.i11 = icmp eq i32 %i.af, 0
  %.phi.trans.insert.i.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i11, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20, label %bb.h

bb.h:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10
  %.pre4.i.i.i.i.i.i13 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !302 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !303
  %i.aj = ptrtoint ptr %.pre4.i.i.i.i.i.i13 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = and i64 %i.al, 4294967295
  %i.an = icmp samesign ult i64 %i.am, %i.ag
  br i1 %i.an, label %bb.i, label %.lr.ph.preheader.i.i.i.i.i14

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ag)
  %.pre.i.i.i.i.i.i22 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !302
  %.pre.i.i.i.i23 = load i32, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i.i.i14

.lr.ph.preheader.i.i.i.i.i14:                     ; preds = %bb.i, %bb.h
  %i.ao = phi i32 [ %i.ad, %bb.h ], [ %.pre.i.i.i.i23, %bb.i ]
  %i.ap = phi ptr [ %.pre4.i.i.i.i.i.i13, %bb.h ], [ %.pre.i.i.i.i.i.i22, %bb.i ]
  %i.aq = sub nsw i64 0, %i.ag
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store ptr %i.ar, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !302
  %i.as = add i32 %i.ao, %i.af
  store i32 %i.as, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.i.i.i.i.i15.epil

.lr.ph.i.i.i.i.i15.epil:                          ; preds = %.lr.ph.i.i.i.i.i15.epil, %.lr.ph.preheader.i.i.i.i.i14
  %.05.i.i.i.i.i16.epil = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i15.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i14 ] ; 2 uses
  %epil.iter79 = phi i64 [ %epil.iter79.next, %.lr.ph.i.i.i.i.i15.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i14 ]
  %i.at = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.05.i.i.i.i.i16.epil
  store i8 0, ptr %i.au, align 1, !tbaa !83
  %i.av = add nuw i64 %.05.i.i.i.i.i16.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %i.ag
  br i1 %epil.iter79.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18, label %.lr.ph.i.i.i.i.i15.epil, !llvm.loop !423

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i15.epil
  %.pre.i.i.i19 = load i32, ptr %i.b, align 8, !tbaa !225
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10
  %i.aw = phi i32 [ %.pre.i.i.i19, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18 ], [ %i.ad, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10 ]
  %reass.sub63 = sub i32 %i.aw, %4
  %i.ax = add i32 %reass.sub63, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 10, i32 noundef %i.ax, i32 noundef 0)
  br label %_ZN5arrow3ipc7feather3fbs13ColumnBuilder12add_metadataEN22arrow_vendored_private11flatbuffers6OffsetIvEE.exit

_ZN5arrow3ipc7feather3fbs13ColumnBuilder12add_metadataEN22arrow_vendored_private11flatbuffers6OffsetIvEE.exit: ; preds = %_ZN5arrow3ipc7feather3fbs13ColumnBuilder17add_user_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20
  %.not.i.i.i24 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i24, label %_ZN5arrow3ipc7feather3fbs13ColumnBuilder10add_valuesEN22arrow_vendored_private11flatbuffers6OffsetINS2_14PrimitiveArrayEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow3ipc7feather3fbs13ColumnBuilder12add_metadataEN22arrow_vendored_private11flatbuffers6OffsetIvEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !231
  %i.ba = icmp ult i64 %i.az, 4
  br i1 %i.ba, label %bb.k, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i25

bb.k:                                             ; preds = %bb.j
  store i64 4, ptr %i.ay, align 8, !tbaa !231
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i25

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i25: ; preds = %bb.k, %bb.j
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !225 ; 3 uses
  %i.bc = sub i32 0, %i.bb
  %i.bd = and i32 %i.bc, 3                        ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 4 uses
  %.not.i.i.i.i.i.i26 = icmp eq i32 %i.bd, 0
  %.phi.trans.insert.i.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i26, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i35, label %bb.l

bb.l:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i25
  %.pre4.i.i.i.i.i.i28 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i27, align 8, !tbaa !302 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !303
  %i.bh = ptrtoint ptr %.pre4.i.i.i.i.i.i28 to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = icmp samesign ult i64 %i.bk, %i.be
  br i1 %i.bl, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i29

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.be)
  %.pre.i.i.i.i.i.i37 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i27, align 8, !tbaa !302
  %.pre.i.i.i.i38 = load i32, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i.i.i29

.lr.ph.preheader.i.i.i.i.i29:                     ; preds = %bb.m, %bb.l
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc7feather3fbs12CreateCTableERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEElNS8_INS4_6VectorINS8_INS2_6ColumnEEEjEEEEiSA_:bb.a
  %.pre4.i.i.i.i.i.i27 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i26, align 8, !tbaa !302 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !303
  %i.bi = ptrtoint ptr %.pre4.i.i.i.i.i.i27 to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = icmp samesign ult i64 %i.bl, %i.bf
  br i1 %i.bm, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i28

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.bf)
  %.pre.i.i.i.i.i.i36 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i26, align 8, !tbaa !302
  %.pre.i.i.i.i37 = load i32, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i.i.i28

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %bb.m, %bb.l
  %i.bn = phi i32 [ %i.bc, %bb.l ], [ %.pre.i.i.i.i37, %bb.m ]
  %i.bo = phi ptr [ %.pre4.i.i.i.i.i.i27, %bb.l ], [ %.pre.i.i.i.i.i.i36, %bb.m ]
  %i.bp = sub nsw i64 0, %i.bf
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  store ptr %i.bq, ptr %.phi.trans.insert.i.i.i.i.i.i26, align 8, !tbaa !302
  %i.br = add i32 %i.bn, %i.be
  store i32 %i.br, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.i.i.i.i.i29.epil

.lr.ph.i.i.i.i.i29.epil:                          ; preds = %.lr.ph.i.i.i.i.i29.epil, %.lr.ph.preheader.i.i.i.i.i28
  %.05.i.i.i.i.i30.epil = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i29.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %epil.iter63 = phi i64 [ %epil.iter63.next, %.lr.ph.i.i.i.i.i29.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i28 ]
  %i.bs = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i26, align 8, !tbaa !302
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.05.i.i.i.i.i30.epil
  store i8 0, ptr %i.bt, align 1, !tbaa !83
  %i.bu = add nuw i64 %.05.i.i.i.i.i30.epil, 1
  %epil.iter63.next = add i64 %epil.iter63, 1     ; 2 uses
  %epil.iter63.cmp.not = icmp eq i64 %epil.iter63.next, %i.bf
  br i1 %epil.iter63.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32, label %.lr.ph.i.i.i.i.i29.epil, !llvm.loop !428

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29.epil
  %.pre.i.i.i33 = load i32, ptr %i.b, align 8, !tbaa !225
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i34

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i34: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i24
  %i.bv = phi i32 [ %.pre.i.i.i33, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32 ], [ %i.bc, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i24 ]
  %reass.sub46 = sub i32 %i.bv, %1
  %i.bw = add i32 %reass.sub46, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 4, i32 noundef %i.bw, i32 noundef 0)
  br label %_ZN5arrow3ipc7feather3fbs13CTableBuilder15add_descriptionEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit

_ZN5arrow3ipc7feather3fbs13CTableBuilder15add_descriptionEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit: ; preds = %_ZN5arrow3ipc7feather3fbs13CTableBuilder11add_columnsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_6ColumnEEEjEEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i34
  %i.bx = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.c)
  ret i32 %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429
  invoke void @_ZNSt8_Rb_treeIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEES4_St9_IdentityIS4_ENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3setIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt3setIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EED2Ev.exit, %bb.a
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
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24, !noalias !466
  br label %.body39

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit138, %bb.aq
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !250 ; 35 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !253 ; 143 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !256, !noalias !484
  switch i32 %i.eb, label %bb.jc [
    i32 0, label %bb.at
    i32 1, label %bb.av
    i32 3, label %bb.ay
    i32 2, label %bb.bb
    i32 5, label %bb.be
    i32 4, label %bb.bh
    i32 7, label %bb.bk
    i32 6, label %bb.bn
    i32 9, label %bb.bq
    i32 8, label %bb.bt
    i32 10, label %bb.bw
    i32 11, label %bb.bz
    i32 12, label %bb.cc
    i32 13, label %bb.cf
    i32 39, label %bb.dj
    i32 14, label %bb.dl
    i32 40, label %bb.ep
    i32 34, label %bb.er
    i32 35, label %bb.fv
    i32 15, label %bb.gz
    i32 33, label %bb.hb
    i32 16, label %bb.hd
    i32 17, label %bb.hg
    i32 18, label %bb.hi
    i32 19, label %bb.hl
    i32 20, label %bb.ho
    i32 37, label %bb.hq
    i32 21, label %bb.hs
    i32 22, label %bb.hu
    i32 43, label %bb.hw
    i32 44, label %bb.hy
    i32 23, label %bb.ia
    i32 24, label %bb.ic
    i32 25, label %bb.ie
    i32 36, label %bb.ig
    i32 41, label %bb.ii
    i32 42, label %bb.ik
    i32 30, label %bb.im
    i32 32, label %bb.io
    i32 26, label %bb.iq
    i32 27, label %bb.is
    i32 28, label %bb.iu
    i32 29, label %bb.iw
    i32 38, label %bb.iy
    i32 31, label %bb.ja
  ]

bb.at:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24, !noalias !487
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !43, !noalias !487
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !487
  invoke void %i.ee(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(72) %i.dz, i1 noundef zeroext false)
          to label %.noexc38 unwind label %bb.an, !inline_history !490

.noexc38:                                         ; preds = %bb.at
  invoke void @_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i unwind label %bb.au

_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i: ; preds = %.noexc38
  %i.ef = load ptr, ptr %36, align 8, !tbaa !130, !noalias !487 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV15VisitINS_8NullTypeEEENSt9enable_ifIXoooooooooooooooooooosr14is_nested_typeIT_EE5valuesr12is_null_typeIS7_EE5valuesr15is_decimal_typeIS7_EE5valuesr3std7is_sameINS_14DictionaryTypeES7_EE5valuesr16is_duration_typeIS7_EE5valuesr16is_interval_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valuesr24is_binary_view_like_typeIS7_EE5valuesr3std7is_sameINS_10Date64TypeES7_EE5valuesr3std7is_sameINS_10Time64TypeES7_EE5valuesr3std7is_sameINS_13ExtensionTypeES7_EE5valueENS_6StatusEE4typeERKS7_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !83, !noalias !487
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #25
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV15VisitINS_8NullTypeEEENSt9enable_ifIXoooooooooooooooooooosr14is_nested_typeIT_EE5valuesr12is_null_typeIS7_EE5valuesr15is_decimal_typeIS7_EE5valuesr3std7is_sameINS_14DictionaryTypeES7_EE5valuesr16is_duration_typeIS7_EE5valuesr16is_interval_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valuesr24is_binary_view_like_typeIS7_EE5valuesr3std7is_sameINS_10Date64TypeES7_EE5valuesr3std7is_sameINS_10Time64TypeES7_EE5valuesr3std7is_sameINS_13ExtensionTypeES7_EE5valueENS_6StatusEE4typeERKS7_.exit.i

bb.au:                                            ; preds = %.noexc38
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %36, align 8, !tbaa !130, !noalias !487 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i: ; preds = %bb.au
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !83, !noalias !487
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24, !noalias !487
  br label %.body39

_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV15VisitINS_8NullTypeEEENSt9enable_ifIXoooooooooooooooooooosr14is_nested_typeIT_EE5valuesr12is_null_typeIS7_EE5valuesr15is_decimal_typeIS7_EE5valuesr3std7is_sameINS_14DictionaryTypeES7_EE5valuesr16is_duration_typeIS7_EE5valuesr16is_interval_typeIS7_EE5valuesr25is_fixed_size_binary_typeIS7_EE5valuesr24is_binary_view_like_typeIS7_EE5valuesr3std7is_sameINS_10Date64TypeES7_EE5valuesr3std7is_sameINS_10Time64TypeES7_EE5valuesr3std7is_sameINS_13ExtensionTypeES7_EE5valueENS_6StatusEE4typeERKS7_.exit.i: ; preds = %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24, !noalias !487
  br label %.critedge.i

bb.av:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !456, !noalias !494
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !70, !noalias !494 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.et, null
  br i1 %.not.i.i37, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 9
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !101, !range !60, !noalias !494, !noundef !61
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !494
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !483, !noalias !494
  %i.fa = load ptr, ptr %i.dz, align 8, !tbaa !43, !noalias !494
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !494
  %i.fd = invoke noundef i32 %i.fc(ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
          to label %.noexc41 unwind label %bb.an, !inline_history !490

.noexc41:                                         ; preds = %bb.aw
  %i.fe = trunc nuw i8 %i.ev to i1
  %i.ff = select i1 %i.fe, ptr %i.ex, ptr null, !prof !48
  %i.fg = sext i32 %i.fd to i64
  %i.fh = mul nsw i64 %i.ez, %i.fg
  %i.fi = sdiv i64 %i.fh, 8
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %i.fi
  %i.fk = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !494
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !483, !noalias !494
  %i.fn = load ptr, ptr %i.dz, align 8, !tbaa !43, !noalias !494
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !494
  %i.fq = invoke noundef i32 %i.fp(ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
          to label %.noexc42 unwind label %bb.an, !inline_history !490

.noexc42:                                         ; preds = %.noexc41
  %i.fr = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !494
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !436, !noalias !494
  %i.fu = load ptr, ptr %i.dz, align 8, !tbaa !43, !noalias !494
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !494
  %i.fx = invoke noundef i32 %i.fw(ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
          to label %.noexc43 unwind label %bb.an, !inline_history !490

.noexc43:                                         ; preds = %.noexc42
  %i.fy = sext i32 %i.fq to i64
  %i.fz = mul nsw i64 %i.fm, %i.fy
  %i.ga = srem i64 %i.fz, 8
  %i.gb = sext i32 %i.fx to i64
  %i.gc = mul nsw i64 %i.ft, %i.gb                ; 2 uses
  %i.gd = ashr i64 %i.gc, 3
  %i.ge = and i64 %i.gc, 7
  %i.gf = icmp ne i64 %i.ge, 0
  %i.gg = zext i1 %i.gf to i64
  %i.gh = add nsw i64 %i.gd, %i.gg
  br label %.noexc112.invoke

bb.ax:                                            ; preds = %bb.av
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !495
  br label %.critedge.i

bb.ay:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !456, !noalias !501
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !70, !noalias !501 ; 3 uses
  %.not.i91.i = icmp eq ptr %i.gl, null
  br i1 %.not.i91.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 9
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !101, !range !60, !noalias !501, !noundef !61
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !501
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !483, !noalias !501
  %i.gs = load ptr, ptr %i.dz, align 8, !tbaa !43, !noalias !501
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !501
  %i.gv = invoke noundef i32 %i.gu(ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
          to label %.noexc45 unwind label %bb.an, !inline_history !490

.noexc45:                                         ; preds = %bb.az
  %i.gw = trunc nuw i8 %i.gn to i1
  %i.gx = select i1 %i.gw, ptr %i.gp, ptr null, !prof !48
  %i.gy = sext i32 %i.gv to i64
  %i.gz = mul nsw i64 %i.gr, %i.gy
  %i.ha = sdiv i64 %i.gz, 8
  %i.hb = getelementptr inbounds i8, ptr %i.gx, i64 %i.ha
  %i.hc = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !501
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !483, !noalias !501
  %i.hf = load ptr, ptr %i.dz, align 8, !tbaa !43, !noalias !501
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !501
  %i.hi = invoke noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
          to label %.noexc46 unwind label %bb.an, !inline_history !490

end_hunk_2
begin_hunk_3_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_:bb.a
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.an to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !303
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ab, align 8, !tbaa !303
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !306
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !306
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !307
  %i.ba = icmp ugt i16 %1, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.h:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.ay, align 4, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %bb.h, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !224  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !225  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !303
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304  ; 6 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.l = lshr i64 %i.b, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = select i1 %.not, i64 %i.n, i64 %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.o)
  %i.p = add i64 %.sroa.speculated, %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !223  ; 2 uses
  %i.s = add i64 %i.r, -1
  %i.t = add i64 %i.s, %i.p
  %i.u = sub i64 0, %i.r
  %i.v = and i64 %i.t, %i.u                       ; 6 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !224
  %.not8 = icmp eq ptr %i.h, null
  %i.w = load ptr, ptr %0, align 8, !tbaa !217    ; 6 uses
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = zext i32 %i.d to i64                     ; 3 uses
  %i.y = and i64 %i.k, 4294967295                 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #26 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ab = sub nsw i64 0, %i.x                     ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ae, i64 %i.x, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.h, i64 %i.y, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #25
  br label %_ZN22arrow_vendored_private11flatbuffers18ReallocateDownwardEPNS0_9AllocatorEPhmmmm.exit

_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i: ; preds = %bb.b
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.h, i64 noundef %i.b, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %i.y), !inline_history !757
  br label %_ZN22arrow_vendored_private11flatbuffers18ReallocateDownwardEPNS0_9AllocatorEPhmmmm.exit

bb.d:                                             ; preds = %bb.a
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %bb.e, label %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #26
  br label %_ZN22arrow_vendored_private11flatbuffers18ReallocateDownwardEPNS0_9AllocatorEPhmmmm.exit

_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i: ; preds = %bb.d
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %i.v), !inline_history !758
  br label %_ZN22arrow_vendored_private11flatbuffers18ReallocateDownwardEPNS0_9AllocatorEPhmmmm.exit

_ZN22arrow_vendored_private11flatbuffers18ReallocateDownwardEPNS0_9AllocatorEPhmmmm.exit: ; preds = %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i, %bb.e, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i, %bb.c
  %storemerge = phi ptr [ %i.z, %bb.c ], [ %i.ai, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i ], [ %i.an, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i ], [ %i.aj, %bb.e ] ; 3 uses
  store ptr %storemerge, ptr %i.g, align 8, !tbaa !304
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !224
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.ao
  %i.aq = zext i32 %i.d to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.at, align 8, !tbaa !302
  %i.au = and i64 %i.k, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.au
  store ptr %i.av, ptr %i.e, align 8, !tbaa !303
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !231
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !231
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !225  ; 2 uses
  %i.f = sub i32 0, %i.e
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  br i1 %.not.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !303
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ult i64 %i.n, %i.h
  br i1 %i.o, label %bb.d, label %.lr.ph.preheader.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i, %bb.d ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.t = add i32 %i.p, %i.g
  store i32 %i.t, ptr %i.d, align 8, !tbaa !225
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.w, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.u = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.v, align 1, !tbaa !83
  %i.w = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.h
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !759

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !303
  %i.z = ptrtoint ptr %.pre4.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = and i64 %i.ab, 4294967292
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !303
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  %.pre-phi = phi i64 [ %.pre45, %bb.e ], [ %i.aa, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ]
  %i.ae = phi ptr [ %.pre.i.i.i, %bb.e ], [ %.pre4.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  store ptr %i.af, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !225
  %i.ah = add i32 %i.ag, 4
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !225
  store i32 0, ptr %i.af, align 4, !tbaa !3
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !225 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !307
  %i.al = add i16 %i.ak, 2
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %i.al, i16 4) ; 3 uses
  store i16 %.sroa.speculated, ptr %i.aj, align 4, !tbaa !307
  %i.am = zext i16 %.sroa.speculated to i64       ; 4 uses
  %i.an = ptrtoint ptr %i.af to i64
  %i.ao = sub i64 %i.an, %.pre-phi
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp samesign ult i64 %i.ap, %i.am
  br i1 %i.aq, label %bb.g, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.am)
  %.pre.i.i30 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %.pre44 = load i32, ptr %i.d, align 8, !tbaa !225
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit: ; preds = %bb.f, %bb.g
  %i.ar = phi i32 [ %i.ai, %bb.f ], [ %.pre44, %bb.g ]
  %i.as = phi ptr [ %i.af, %bb.f ], [ %.pre.i.i30, %bb.g ]
  %i.at = sub nsw i64 0, %i.am
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at ; 2 uses
  store ptr %i.au, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.av = zext i16 %.sroa.speculated to i32
  %i.aw = add i32 %i.ar, %i.av
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, i8 0, i64 %i.am, i1 false)
  %i.ax = sub i32 %i.ai, %1
  %i.ay = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = trunc i32 %i.ax to i16
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !120
  %i.bb = load i16, ptr %i.aj, align 4, !tbaa !307
  store i16 %i.bb, ptr %i.ay, align 2, !tbaa !120
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !306 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.neg = mul nsw i64 %i.bf, -8
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %.neg ; 6 uses
  %.not42 = icmp eq i32 %i.be, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !303
  store i32 0, ptr %i.bd, align 8, !tbaa !306
  store i16 0, ptr %i.aj, align 4, !tbaa !307
  %i.bh = load i16, ptr %i.ay, align 2, !tbaa !120 ; 2 uses
  %i.bi = load i32, ptr %i.d, align 8, !tbaa !225 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !233, !range !60, !noundef !61
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.h, label %.loopexit.thread

.lr.ph:                                           ; preds = %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit, %.lr.ph
  %.038 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bg, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE8fill_bigEm.exit ] ; 3 uses
  %i.bm = load i32, ptr %.038, align 4, !tbaa !760
  %i.bn = sub i32 %i.ai, %i.bm
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.038, i64 4
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !762
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.br
  store i16 %i.bo, ptr %i.bs, align 2, !tbaa !120
  %i.bt = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.bc
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !763

bb.h:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !304 ; 3 uses
  %i.bx = icmp ult ptr %i.bw, %i.bg
  br i1 %i.bx, label %.lr.ph41, label %.loopexit.thread

.lr.ph41:                                         ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !224
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cb = zext i16 %i.bh to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph41, %bb.k
  %.02739 = phi ptr [ %i.bw, %.lr.ph41 ], [ %i.ch, %bb.k ] ; 2 uses
  %i.cc = load i32, ptr %.02739, align 4, !tbaa !3 ; 4 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !120
  %.not = icmp eq i16 %i.bh, %i.cg
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.cf, ptr nonnull %i.ay, i64 %i.cb)
  %.not29 = icmp eq i32 %bcmp, 0
  br i1 %.not29, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.02739, i64 4 ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.bg
  br i1 %i.ci, label %bb.i, label %.loopexit.thread, !llvm.loop !764

.loopexit:                                        ; preds = %bb.j
  %i.cj = sub i32 %i.bi, %i.ai
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ck ; 2 uses
  store ptr %i.cl, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !225
  %i.cm = icmp eq i32 %i.cc, %i.ai
  br i1 %i.cm, label %.loopexit.thread, label %bb.m

.loopexit.thread:                                 ; preds = %bb.k, %bb.h, %._crit_edge, %.loopexit
  %.03754 = phi i32 [ %i.cc, %.loopexit ], [ %i.bi, %._crit_edge ], [ %i.bi, %bb.h ], [ %i.bi, %bb.k ]
  %i.cn = phi i32 [ %i.ai, %.loopexit ], [ %i.bi, %._crit_edge ], [ %i.bi, %bb.h ], [ %i.bi, %bb.k ]
  %i.co = phi ptr [ %i.cl, %.loopexit ], [ %i.ay, %._crit_edge ], [ %i.ay, %bb.h ], [ %i.ay, %bb.k ]
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.bg to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = and i64 %i.cr, 4294967292
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit

bb.l:                                             ; preds = %.loopexit.thread
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 4)
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !303
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit: ; preds = %.loopexit.thread, %bb.l
  %i.cu = phi ptr [ %i.bg, %.loopexit.thread ], [ %.pre.i, %bb.l ] ; 2 uses
  store i32 %i.cn, ptr %i.cu, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store ptr %i.cv, ptr %i.x, align 8, !tbaa !303
  br label %bb.m

bb.m:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit, %.loopexit
  %.03753 = phi i32 [ %.03754, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit ], [ %i.cc, %.loopexit ]
  %i.cw = zext i32 %i.ai to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !226
  %i.cz = add i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !304
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !224
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  %i.df = sub i64 0, %i.cz
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  %i.dh = sub nsw i32 %.03753, %i.ai
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.di, align 8, !tbaa !229
  ret i32 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.neg = xor i64 %2, -1
  %i.a = icmp eq i64 %2, -1
  br i1 %i.a, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !231
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.b, align 8, !tbaa !231
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !225  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.neg17 = sub i64 %.neg, %i.g
  %i.h = and i64 %.neg17, 3                       ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !303
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.f, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.t = trunc nuw nsw i64 %i.h to i32
  %i.u = add i32 %i.p, %i.t
  store i32 %i.u, ptr %i.e, align 8, !tbaa !225
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !302
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !83
  %i.x = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.h
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !765
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadEPSt10shared_ptrINS_5TableEE:bb.a
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.el, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !79
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24, !inline_history !806
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i34 = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i34, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

bb.ah:                                            ; preds = %bb.af
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i36 = phi i32 [ %i.eo, %bb.ag ], [ %i.ey, %bb.ah ]
  %i.ez = icmp eq i32 %.0.i.i.i.i36, 1
  br i1 %i.ez, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge

bb.aj:                                            ; preds = %.critedge23
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV18num_rowsEv.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn20 = phi { ptr, i32 } [ %i.fb, %bb.ak ], [ %i.fa, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.at

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.peel, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %storemerge = phi ptr [ null, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.w, %_ZN5arrow6StatusD2Ev.exit.peel ], [ %i.bf, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8
  %i.fc = load ptr, ptr %3, align 16, !tbaa !817  ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !808 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %.critedge, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44
  %.05.i.i.i39 = phi ptr [ %i.fw, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44 ], [ %i.fc, %.critedge ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i38
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fh, align 8, !tbaa !74
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !79
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !43
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24, !inline_history !818
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24, !inline_history !818
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44

bb.ao:                                            ; preds = %bb.am
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i41 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i.i.i41, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42

bb.aq:                                            ; preds = %bb.ao
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i43 = phi i32 [ %i.fk, %bb.ap ], [ %i.fu, %bb.aq ]
  %i.fv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i43, 1
  br i1 %i.fv, label %bb.ar, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44, !prof !85

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42, %bb.an, %.lr.ph.i.i.i38
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 16 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.fw, %i.fe
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46, label %.lr.ph.i.i.i38, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44
  %.pr.i47 = load ptr, ptr %3, align 16, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46, %.critedge
  %i.fx = phi ptr [ %.pr.i47, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46 ], [ %i.fc, %.critedge ] ; 3 uses
  %.not.i.i1.i49 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i1.i49, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit50, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !811
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit50

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit50: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.at:                                            ; preds = %bb.d, %bb.g, %bb.al
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.al ], [ %lpad.phi107, %bb.g ], [ %lpad.phi, %bb.d ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.74", align 16   ; 15 uses
  %6 = alloca %"class.std::vector.253", align 16  ; 15 uses
  %7 = alloca %"class.std::shared_ptr.28", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::shared_ptr.258", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  %11 = alloca %"class.std::vector.74", align 16  ; 7 uses
  %12 = alloca %"class.std::shared_ptr.56", align 8 ; 4 uses
  %13 = alloca %"class.std::vector.253", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.b = load ptr, ptr %1, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !820    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !820  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.critedge31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.095.098 = phi ptr [ %i.e, %.lr.ph ], [ %i.bb, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.n = load i32, ptr %.sroa.095.098, align 4, !tbaa !3 ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %7, align 8, !tbaa !235
  %i.q = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not = icmp slt i32 %i.n, %i.q
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !821
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.22)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %4, align 8, !tbaa !130, !noalias !821 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !83, !noalias !821
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit

bb.i:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !130, !noalias !821 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !83, !noalias !821
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !821
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !821
  br label %.critedge29

.loopexit:                                        ; preds = %bb.e, %_ZN5arrow6StatusD2Ev.exit37, %bb.l, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !808 ; 3 uses
  %i.ad = load ptr, ptr %i.j, align 16, !tbaa !811
  %.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !808
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.af, ptr %i.i, align 8, !tbaa !808
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ac)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge unwind label %.loopexit

._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !812
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge, %bb.k
  %i.ag = phi ptr [ %.pre, %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -16
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ah, ptr noundef %i.ai)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.m

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.aj = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge29

bb.m:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.am = load ptr, ptr %7, align 8, !tbaa !235
  %i.an = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef %i.an)
          to label %bb.n unwind label %.loopexit  ; 3 uses

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !132 ; 5 uses
  %i.aq = load ptr, ptr %i.l, align 16, !tbaa !135
  %.not.i38 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i38, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !73 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !68
  store <2 x ptr> %i.at, ptr %i.ap, align 8, !tbaa !68
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i39 = load ptr, ptr %i.k, align 8, !tbaa !132
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.az = phi ptr [ %i.ap, %bb.o ], [ %i.ap, %bb.q ], [ %.pre.i39, %bb.r ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.k, align 8, !tbaa !132
  br label %.critedge

bb.s:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.critedge unwind label %.loopexit

.critedge:                                        ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.095.098, i64 4 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.g
  br i1 %i.bc, label %.critedge31, label %bb.d

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.m
  %.pn23 = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.cg

.critedge29:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bl

.critedge31:                                      ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = load <2 x ptr>, ptr %5, align 16, !tbaa !144
  store <2 x ptr> %i.be, ptr %11, align 16, !tbaa !144
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !135
  store ptr %i.bh, ptr %i.bf, align 16, !tbaa !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
          to label %bb.t unwind label %bb.bi

bb.t:                                             ; preds = %.critedge31
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = load <2 x ptr>, ptr %6, align 16, !tbaa !812
  store <2 x ptr> %i.bj, ptr %13, align 16, !tbaa !812
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !811
  store ptr %i.bm, ptr %i.bk, align 16, !tbaa !811
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !108 ; 3 uses
  %i.bo = load i32, ptr %.val, align 4, !tbaa !3
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds i8, ptr %.val, i64 %i.bq ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE:bb.a
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #24, !inline_history !818
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74

bb.bu:                                            ; preds = %bb.bs
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i.i71, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72

bb.bw:                                            ; preds = %bb.bu
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i.i73 = phi i32 [ %i.hq, %bb.bv ], [ %i.ia, %bb.bw ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i73, 1
  br i1 %i.ib, label %bb.bx, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74, !prof !85

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72, %bb.bt, %.lr.ph.i.i.i68
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i69, i64 16 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ic, %i.hk
  br i1 %.not.i.i.i75, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76, label %.lr.ph.i.i.i68, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74
  %.pr.i77 = load ptr, ptr %6, align 16, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66
  %i.id = phi ptr [ %.pr.i77, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76 ], [ %i.hi, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66 ] ; 3 uses
  %.not.i.i1.i79 = icmp eq ptr %i.id, null
  br i1 %.not.i.i1.i79, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !811
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.id to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ii) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ij = load ptr, ptr %5, align 16, !tbaa !147  ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i81 = icmp eq ptr %i.ij, %i.il
  br i1 %.not4.i.i.i81, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92, label %.lr.ph.i.i.i82

.lr.ph.i.i.i82:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88
  %.05.i.i.i83 = phi ptr [ %i.jd, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88 ], [ %i.ij, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80 ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i83, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i.i.i.i.i84 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i84, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i82
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.io, align 8, !tbaa !74
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !79
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #24, !inline_history !826
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #24, !inline_history !826
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88

bb.cb:                                            ; preds = %bb.bz
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i85 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i.i.i.i85, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86

bb.cd:                                            ; preds = %bb.cb
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i.i87 = phi i32 [ %i.ir, %bb.cc ], [ %i.jb, %bb.cd ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i87, 1
  br i1 %i.jc, label %bb.ce, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88, !prof !85

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86, %bb.ca, %.lr.ph.i.i.i82
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i83, i64 16 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.jd, %i.il
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90, label %.lr.ph.i.i.i82, !llvm.loop !149

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88
  %.pr.i91 = load ptr, ptr %5, align 16, !tbaa !147
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80
  %i.je = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90 ], [ %i.ij, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80 ] ; 3 uses
  %.not.i.i1.i93 = icmp eq ptr %i.je, null
  br i1 %.not.i.i1.i93, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit94, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92
  %i.jf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jg = load ptr, ptr %i.jf, align 16, !tbaa !135
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit94

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit94: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.cg:                                            ; preds = %bb.bk, %.body
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.bk ], [ %.pn23, %.body ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.c
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %bb.cg ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn25.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.74", align 16   ; 15 uses
  %6 = alloca %"class.std::vector.253", align 16  ; 15 uses
  %7 = alloca %"class.std::shared_ptr.28", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.258", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  %12 = alloca %"class.std::vector.74", align 16  ; 7 uses
  %13 = alloca %"class.std::shared_ptr.56", align 8 ; 4 uses
  %14 = alloca %"class.std::vector.253", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !830    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !830  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.critedge38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0111.0129 = phi ptr [ %i.d, %.lr.ph ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.h, ptr %8, align 8, !tbaa !129
  %i.o = load ptr, ptr %.sroa.0111.0129, align 8, !tbaa !130 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0111.0129, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !131  ; 8 uses
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !85

.noexc6.i:                                        ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26
          to label %.noexc40 unwind label %.loopexit ; 2 uses

.noexc40:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.v, ptr %8, align 8, !tbaa !130
  store i64 %i.q, ptr %i.h, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc40, %bb.d
  %i.w = phi ptr [ %i.v, %.noexc40 ], [ %i.h, %bb.d ] ; 3 uses
  switch i64 %i.q, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.o, align 1, !tbaa !83
  store i8 %i.x, ptr %i.w, align 1, !tbaa !83
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  store i64 %i.q, ptr %i.i, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.y, align 1, !tbaa !83
  %i.z = load ptr, ptr %7, align 8, !tbaa !235
  %i.aa = load ptr, ptr %8, align 8, !tbaa !130
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !131
  %i.ac = invoke noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 %i.ab, ptr %i.aa)
          to label %bb.j unwind label %.loopexit114 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !831
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str.24)
          to label %.noexc41 unwind label %.loopexit.split-lp115

.noexc41:                                         ; preds = %bb.k
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc41
  %i.ae = load ptr, ptr %4, align 8, !tbaa !130, !noalias !831 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !83, !noalias !831
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit

bb.m:                                             ; preds = %.noexc41
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !130, !noalias !831 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !83, !noalias !831
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !831
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !831
  br label %.critedge36

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

.loopexit114:                                     ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit47, %bb.p, %bb.w
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp115:                            ; preds = %bb.k
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !808 ; 3 uses
  %i.aq = load ptr, ptr %i.k, align 16, !tbaa !811
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !808
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.j, align 8, !tbaa !808
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ap)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge unwind label %.loopexit114

._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !812
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge, %bb.o
  %i.at = phi ptr [ %.pre, %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge ], [ %i.as, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ac, ptr noundef %i.au)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.q

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.av = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit47, label %.critedge36

bb.q:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body

_ZN5arrow6StatusD2Ev.exit47:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ay = load ptr, ptr %7, align 8, !tbaa !235
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i32 noundef %i.ac)
          to label %bb.r unwind label %.loopexit114 ; 3 uses

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !132 ; 5 uses
  %i.bb = load ptr, ptr %i.m, align 16, !tbaa !135
  %.not.i48 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i48, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.az, align 8, !tbaa !68
  store <2 x ptr> %i.be, ptr %i.ba, align 8, !tbaa !68
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE:bb.a
  %.not.i.i.i33 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i33, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread102, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %.pr105 = phi ptr [ %i.af, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread102 ], [ %.pr.pre, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr105, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i34 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35

bb.g:                                             ; preds = %bb.e
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.at = phi ptr [ %i.ag, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread ], [ %i.aj, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %i.aj, %bb.f ], [ %i.aj, %bb.g ]
  %i.au = load i32, ptr %i.w, align 4, !tbaa !3
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 %i.aw ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !120
  %i.az = icmp ugt i16 %i.ay, 6
  br i1 %i.az, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !120 ; 2 uses
  %.not.i.i.i37 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i.i37, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  br label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit

_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36, %bb.h, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35
  %i.bh = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35 ], [ %i.bg, %bb.h ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36 ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %8, ptr noundef %i.bh, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit
  %i.bi = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !45
  store ptr null, ptr %7, align 8, !tbaa !45
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !73 ; 8 uses
  %.not.i.i40 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i40, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !79
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !395
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !395
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i41 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !85

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %.pr82 = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.bz = phi ptr [ %.pr82, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.bi, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN5arrow6StatusD2Ev.exit45, label %.critedge

bb.o:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.p:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bs

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = load ptr, ptr %6, align 16, !tbaa !253
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !256
  %i.cg = icmp eq i32 %i.cf, 29
  br i1 %i.cg, label %bb.q, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ch = load ptr, ptr %5, align 8, !tbaa !250
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !839 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3, !noalias !839
  %i.cl = sext i32 %i.ck to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i.i46 = icmp ne i16 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i46)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !839
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.s ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3, !noalias !839
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy ; 4 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !839
  %i.db = sext i32 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc ; 3 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %i.df = icmp ugt i16 %i.de, 8
  br i1 %i.df, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i, label %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i

_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !83, !noalias !839
  %i.dl = icmp eq i8 %i.dk, 1
  %i.dm = icmp ugt i16 %i.de, 10
  %or.cond.i.i.i = and i1 %i.dm, %i.dl
  br i1 %or.cond.i.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 10
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !839
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds
  br label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i: ; preds = %bb.r, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %bb.q
  %i.du = phi ptr [ null, %bb.q ], [ null, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i ], [ %i.dt, %bb.r ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ] ; 3 uses
  %i.dv = load ptr, ptr %i.x, align 8, !tbaa !235, !noalias !839
  %i.dw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i32 noundef %2)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !136, !noalias !839
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !253, !noalias !839 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !73, !noalias !839 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !68, !noalias !839
  store <2 x ptr> %i.ee, ptr %4, align 16, !tbaa !68, !noalias !839
  %.not.i.i.i8.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i8.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !839
  %.not.i.i.i.i9.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i9.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !839
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !3, !noalias !839
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ej = atomicrmw volatile add ptr %i.ef, i32 1 acq_rel, align 4, !noalias !839 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.u, %bb.t, %.noexc
  %i.ek = load i32, ptr %i.du, align 4, !tbaa !3, !noalias !839
  %i.el = sext i32 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.du, i64 %i.em ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !120, !noalias !839
  %i.ep = icmp ugt i16 %i.eo, 4
  br i1 %i.ep, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i11.i = icmp eq i16 %i.er, 0
  br i1 %.not.i.i.i11.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i
  %i.es = zext i16 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3, !noalias !839
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ev
  br label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i

_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i: ; preds = %bb.v, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ex = phi ptr [ %i.ew, %bb.v ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i ], [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %4, ptr noundef %i.ex, ptr noundef nonnull %i.ci)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i
  %i.ey = load ptr, ptr %i.eb, align 8, !tbaa !73, !noalias !839 ; 8 uses
  %.not.i.i.i47 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i47, label %_ZN5arrow6StatusD2Ev.exit49, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ez, align 8, !tbaa !74
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !79
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #24, !inline_history !842
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #24, !inline_history !842
  br label %_ZN5arrow6StatusD2Ev.exit49

bb.z:                                             ; preds = %bb.x
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !839
  %.not.i.i.i12.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i12.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.fc, %bb.aa ], [ %i.fm, %bb.ab ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fn, label %bb.ac, label %_ZN5arrow6StatusD2Ev.exit49, !prof !85

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #24
  br label %_ZN5arrow6StatusD2Ev.exit49

bb.ad:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  br label %.body

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fp = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  store ptr %i.fp, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %_ZN5arrow6StatusD2Ev.exit53, label %.critedge

bb.ae:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ae, %bb.ad
  %.pn24 = phi { ptr, i32 } [ %i.fo, %bb.ad ], [ %i.fr, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bs

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %i.fs = load ptr, ptr %5, align 8, !tbaa !250   ; 2 uses
  %i.ft = load ptr, ptr %6, align 16, !tbaa !253
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !253
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fv = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 4 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i.i.i54, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %.not7.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i55 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i55, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gb = atomicrmw volatile add ptr %i.fx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.fu, align 8, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.gc = phi ptr [ %i.fw, %bb.af ], [ %i.fw, %bb.ah ], [ %.pr.pre.i.i.i, %bb.ai ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.gd, align 8, !tbaa !74
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !79
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24, !inline_history !399
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24, !inline_history !399
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i9.i.i.i = icmp eq i8 %i.go, 0
  br i1 %.not.i9.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56

bb.an:                                            ; preds = %bb.al
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i57 = phi i32 [ %i.gg, %bb.am ], [ %i.gq, %bb.an ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i57, 1
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !817    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !856, !noalias !853
  store ptr null, ptr %i.r, align 8, !tbaa !73, !alias.scope !856, !noalias !853
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !853, !noalias !856
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !236, !alias.scope !856, !noalias !853
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.z, %.lr.ph.i.i.i16 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !tbaa !68, !alias.scope !862, !noalias !859
  store ptr null, ptr %i.w, align 8, !tbaa !73, !alias.scope !862, !noalias !859
  store <2 x ptr> %i.x, ptr %.012.i.i.i17, align 8, !tbaa !68, !alias.scope !859, !noalias !862
  store ptr null, ptr %.0911.i.i.i18, align 8, !tbaa !236, !alias.scope !862, !noalias !859
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i16 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !811
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !817
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !808
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !811
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.159", align 16  ; 26 uses
  %6 = alloca %"class.arrow::Result.15", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr.19", align 16 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %15 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %16 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %17 = alloca %"class.std::shared_ptr.141", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.79", align 16 ; 4 uses
  %19 = alloca %"class.std::vector.159", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !3
  %i.l = sext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !120  ; 2 uses
  %i.p = icmp ugt i16 %i.o, 8
  br i1 %i.p, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !120  ; 2 uses
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit: ; preds = %bb.b, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.v = phi i64 [ %i.u, %bb.b ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ] ; 3 uses
  %i.w = icmp ugt i16 %i.o, 14
  br i1 %i.w, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59: ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120  ; 2 uses
  %.not.i.i60 = icmp eq i16 %i.y, 0
  br i1 %.not.i.i60, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit: ; preds = %bb.a, %bb.c, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit
  %i.ac = phi i64 [ %i.v, %bb.c ], [ %i.v, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59 ], [ %i.v, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit ], [ 0, %bb.a ]
  %i.ad = phi i64 [ %i.ab, %bb.c ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59 ], [ 0, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit ], [ 0, %bb.a ]
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ac, i64 noundef %i.ad)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit
  %i.ah = load ptr, ptr %6, align 8, !tbaa !45
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.g

bb.f:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !68, !noalias !870
  store ptr null, ptr %i.an, align 8, !tbaa !73, !noalias !870
  store <2 x ptr> %i.ao, ptr %7, align 16, !tbaa !68, !alias.scope !870
  store ptr null, ptr %i.al, align 8, !tbaa !70, !noalias !870
  %i.ap = load ptr, ptr %2, align 8, !tbaa !253   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !256
  %i.as = icmp eq i32 %i.ar, 29
  br i1 %i.as, label %bb.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !253
  store ptr %i.au, ptr %2, align 8, !tbaa !253
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73 ; 4 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not7.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %i.be = phi ptr [ %i.ay, %bb.j ], [ %i.ay, %bb.l ], [ %.pr.pre.i.i.i, %bb.m ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !79
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24, !inline_history !399
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24, !inline_history !399
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i9.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !85

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !73
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.i, %bb.h
  %i.bu = load i32, ptr %3, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %3, i64 %i.bw ; 3 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !120
  %i.bz = icmp ugt i16 %i.by, 12
  br i1 %i.bz, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i61, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray10null_countEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i61: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !120 ; 2 uses
  %.not.i.i62 = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i62, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray10null_countEv.exit.thread, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray10null_countEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray10null_countEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i61
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !49
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i63, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray10null_countEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i63: ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray10null_countEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !120 ; 2 uses
  %.not.i.i64 = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i64, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6lengthEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i63
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6lengthEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6lengthEv.exit: ; preds = %bb.t, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i63
  %i.cl = phi i64 [ %i.ck, %bb.t ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i63 ] ; 2 uses
  %i.cm = ashr i64 %i.cl, 3
  %i.cn = and i64 %i.cl, 7
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i64
  %i.cq = add nsw i64 %i.cm, %i.cp                ; 2 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %bb.an, !inline_history !871

.noexc:                                           ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6lengthEv.exit
  %i.cv = icmp slt i32 %i.cu, 2
  br i1 %i.cv, label %_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV115GetOutputLengthEl.exit, label %bb.u

bb.u:                                             ; preds = %.noexc
  %i.cw = add nsw i64 %i.cq, 7
  %i.cx = sdiv i64 %i.cw, 8
  %i.cy = shl nsw i64 %i.cx, 3
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV115GetOutputLengthEl.exit

_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV115GetOutputLengthEl.exit: ; preds = %bb.u, %.noexc
  %.0.i = phi i64 [ %i.cy, %bb.u ], [ %i.cq, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.da = load ptr, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %i.db = load <2 x ptr>, ptr %7, align 16, !tbaa !68
  store <2 x ptr> %i.db, ptr %9, align 16, !tbaa !68
  %.not.i.i.i65 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i65, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV115GetOutputLengthEl.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i66 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV115GetOutputLengthEl.exit, %bb.w, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.g, align 8, !tbaa !49, !noalias !872
  store i64 %.0.i, ptr %i.h, align 8, !tbaa !49, !noalias !872
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  store ptr null, ptr %8, align 8, !tbaa !70, !alias.scope !878
  %i.dh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc67 unwind label %bb.ao  ; 4 uses

.noexc67:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.y unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !878

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc67
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 96) #25, !noalias !878
  br label %.body

bb.y:                                             ; preds = %.noexc67
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !73, !alias.scope !878
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  store ptr %i.dk, ptr %8, align 8, !tbaa !327, !alias.scope !878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !879 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !880
  %.not.i.i68 = icmp eq ptr %i.dm, %i.do
end_hunk_7
begin_hunk_8_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D0Ev
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV27versionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV26schemaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !68
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::ipc::IpcReadOptions", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds i8, ptr null, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !37
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.m, label %.noexc.i.i.i, label %bb.c, !prof !85

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !420
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !37
  %i.r = icmp samesign ugt i64 %i.i, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !154

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.f, i64 %i.i, i1 false)
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.i, 4
  br i1 %i.s, label %bb.f, label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.f, align 4, !tbaa !3
  store i32 %i.t, ptr %i.n, align 4, !tbaa !3
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit:       ; preds = %.thread6, %bb.d, %bb.e, %bb.f
  %i.u = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.l, %.thread6 ] ; 2 uses
  %i.v = phi ptr [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.k, %.thread6 ]
  %i.w = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.j, %.thread6 ]
  store ptr %i.v, ptr %i.w, align 8, !tbaa !420
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.j:                                             ; preds = %bb.g, %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i4, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit5

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit5:          ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::shared_ptr.28", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !830    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !830  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.bk, %bb.b ] ; 4 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.bl, %bb.b ] ; 4 uses
  %.sroa.033.052 = phi ptr [ %i.d, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.h, ptr %7, align 8, !tbaa !129
  %i.r = load ptr, ptr %.sroa.033.052, align 8, !tbaa !130 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !131  ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !85

.noexc6.i:                                        ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26
          to label %.noexc21 unwind label %.loopexit ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !130
  store i64 %i.t, ptr %i.h, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.c
  %i.z = phi ptr [ %i.y, %.noexc21 ], [ %i.h, %bb.c ] ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !83
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !83
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  store i64 %i.t, ptr %i.i, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ab, align 1, !tbaa !83
  %i.ac = load ptr, ptr %6, align 8, !tbaa !235
  %i.ad = load ptr, ptr %7, align 8, !tbaa !130
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !131
  %i.af = invoke noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 %i.ae, ptr %i.ad)
          to label %bb.i unwind label %.loopexit36 ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.af, -1                   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !943
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(14) @.str.24)
          to label %.noexc22 unwind label %.loopexit36

.noexc22:                                         ; preds = %bb.j
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc22
  %i.ag = load ptr, ptr %4, align 8, !tbaa !130, !noalias !943 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.l
  br i1 %i.ah, label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !83, !noalias !943
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit

bb.l:                                             ; preds = %.noexc22
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !130, !noalias !943 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.l
  %i.an = load i64, ptr %i.l, align 8, !tbaa !83, !noalias !943
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !943
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !943
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit36:                                      ; preds = %bb.h, %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp37:                             ; preds = %bb.p
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit36, %.loopexit.split-lp37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ] ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !83
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.af, ptr %i.q, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.j, align 8, !tbaa !420
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.p to i64
  %i.av = ptrtoint ptr %i.o to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc23 unwind label %.loopexit.split-lp37

.noexc23:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #26
          to label %.noexc24 unwind label %.loopexit36 ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 %i.af, ptr %i.bf, align 4, !tbaa !3
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.o, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %5, align 8, !tbaa !33
end_hunk_8
begin_hunk_9_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE:bb.a
  %i.ck = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ck, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit41, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cl = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  %.pre = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i30 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pre to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cv) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn17
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

declare void @_ZN5arrow2io12CacheOptions12LazyDefaultsEv(ptr dead_on_unwind writable sret(%"struct.arrow::io::CacheOptions") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %5 = alloca %"class.std::shared_ptr.91", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.295", align 8   ; 12 uses
  %7 = alloca %"class.arrow::Result.300", align 8 ; 12 uses
  %8 = alloca %"class.arrow::Result.307", align 8 ; 13 uses
  %9 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow3ipc21RecordBatchFileReader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.87") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.b = load ptr, ptr %4, align 8, !tbaa !45
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !68, !noalias !954
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !186, !noalias !954 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !73, !noalias !954
  store <2 x ptr> %i.h, ptr %5, align 16, !tbaa !68, !alias.scope !954
  store ptr null, ptr %i.e, align 8, !tbaa !186, !noalias !954
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.i       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.f, label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.e
  store i64 0, ptr %6, align 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 4                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26
          to label %.noexc40 unwind label %bb.j   ; 4 uses

.noexc40:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.q, ptr %6, align 8, !tbaa !955
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.n
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.q, i64 %i.p
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc40
  %.sink.i = phi ptr [ %i.r, %.noexc40 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc40 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.t, align 8, !tbaa !958
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !959
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit ], [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 4 uses
  %i.w = load ptr, ptr %5, align 16, !tbaa !186   ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.aa to i64
  %.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not, label %bb.l, label %.critedge

bb.i:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.300") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef %i.ai)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %7, align 8, !tbaa !45
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  br i1 %i.ak, label %bb.q, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit42 unwind label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.p:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bv

bb.q:                                             ; preds = %bb.m
  %i.an = load <2 x ptr>, ptr %i.u, align 8, !tbaa !68, !noalias !960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !955
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 8 uses
  store <2 x ptr> %i.an, ptr %i.ap, align 8, !tbaa !68
  %.not.i.i.i.i43 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i43, label %_ZN5arrow6StatusC2ERKS0_.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.as, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !79
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !965
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !965
  br label %_ZN5arrow6StatusC2ERKS0_.exit42

bb.t:                                             ; preds = %bb.r
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.u ], [ %i.bf, %bb.v ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.w, label %_ZN5arrow6StatusC2ERKS0_.exit42, !prof !85

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24
  br label %_ZN5arrow6StatusC2ERKS0_.exit42

_ZN5arrow6StatusC2ERKS0_.exit42:                  ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %bb.n
  %i.bh = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.x, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !48

bb.x:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit42
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !73  ; 8 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i44, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bk, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !79
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !966
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !966
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.ab ], [ %i.bx, %bb.ac ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.ad, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, !prof !85

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z
  %.pr.i.pr = load ptr, ptr %7, align 8, !tbaa !45 ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i45, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !154

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit42
  %i.bz = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.bh, %_ZN5arrow6StatusC2ERKS0_.exit42 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !50, !range !60, !noundef !61
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %bb.x, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ak, label %bb.g, label %.loopexit, !llvm.loop !967

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.af unwind label %bb.bd

bb.af:                                            ; preds = %.critedge
  invoke void @_ZN5arrow5Table17FromRecordBatchesESt10shared_ptrINS_6SchemaEERKSt6vectorIS1_INS_11RecordBatchEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.307") align 8 %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ag unwind label %bb.be

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.cg = load ptr, ptr %8, align 8, !tbaa !45, !noalias !968
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ah, label %_ZNO5arrow6ResultISt10shared_ptrINS_5TableEEE6statusEv.exit.i

_ZNO5arrow6ResultISt10shared_ptrINS_5TableEEE6statusEv.exit.i: ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0)
          to label %.noexc50 unwind label %bb.bf

.noexc50:                                         ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_5TableEEE6statusEv.exit.i
  %i.ci = load ptr, ptr %8, align 8, !tbaa !45, !noalias !974
  %i.cj = load ptr, ptr %0, align 8, !tbaa !45, !alias.scope !974 ; 2 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !45, !noalias !974
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !68, !noalias !975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !968
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !73, !noalias !968 ; 8 uses
  store <2 x ptr> %i.cm, ptr %3, align 8, !tbaa !68, !noalias !968
  %.not.i.i.i.i.i46 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i46, label %thread-pre-split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8, !noalias !968 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.co, align 8, !tbaa !74, !noalias !968
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !79, !noalias !968
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !43, !noalias !968
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !968
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #24, !noalias !968, !inline_history !978
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !43, !noalias !968
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !968
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #24, !noalias !968, !inline_history !978
  br label %thread-pre-split

bb.ak:                                            ; preds = %bb.ai
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !968
  %.not.i.i.i.i.i.i47 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i47, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !3, !noalias !968
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48

bb.am:                                            ; preds = %bb.ak
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4, !noalias !968
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48

end_hunk_9
