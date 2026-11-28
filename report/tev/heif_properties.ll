Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/heif_properties?download=true
inline.NumInlined: 2166
inline.NumDeleted: 1172
begin_hunk_0_@heif_item_get_property_type:bb.a
  br label %_ZNK11HeifContext13get_heif_fileEv.exit

_ZNK11HeifContext13get_heif_fileEv.exit:          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK8HeifFile14get_propertiesEjRNSt3__16vectorINS0_10shared_ptrI3BoxEENS0_9allocatorIS4_EEEE(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %5, ptr noundef nonnull align 8 dereferenceable(404) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.i = load i32, ptr %5, align 8, !tbaa !33
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp eq i32 %2, 0
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit, label %bb.e

bb.d:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c
  %i.m = add i32 %2, -1
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4
  %.not = icmp ugt i64 %i.u, %i.n
  br i1 %.not, label %bb.f, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52   ; 5 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.thread, label %bb.g

_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.thread: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %i.af = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #25, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #25
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit:   ; preds = %bb.h, %bb.g, %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.thread, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ %i.aa, %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100ERKS2_.exit.thread ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %_ZN5ErrorD2Ev.exit

bb.i:                                             ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  %i.ap = load i64, ptr %i.ak, align 8
  %i.aq = and i64 %i.ap, -2
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.aq) #26
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ar = load ptr, ptr %4, align 8, !tbaa !38    ; 5 uses
  %.not.i.i10 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i10, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.au, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.at, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 acq_rel, align 8
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #25, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.au
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %4, align 8, !tbaa !38
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.j
  %i.bd = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.ar, %bb.j ] ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bi) #26
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN5ErrorD2Ev.exit, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !25  ; 5 uses
  %.not.i11 = icmp eq ptr %i.bj, null
  br i1 %.not.i11, label %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i64 -1 acq_rel, align 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #25, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #25
  br label %_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #25, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #25
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @heif_item_get_property_user_description(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %class.Result, align 8              ; 12 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sink.sroa.gep55 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sink.sroa.gep56 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sink.sroa.gep57 = getelementptr inbounds nuw i8, ptr %9, i64 16
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr @heif_error_null_pointer_argument, align 8
  %.sroa.4.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_null_pointer_argument, i64 8), align 8, !tbaa !56
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  call void @_ZN11HeifContext13find_propertyI8Box_udesEE6ResultINSt3__110shared_ptrIT_EEEjj(ptr dead_on_unwind nonnull writable sret(%class.Result) align 8 %5, ptr noundef nonnull align 8 dereferenceable(312) %i.c, i32 noundef %1, i32 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !58
  switch i32 %i.e, label %.invoke [
    i32 0, label %bb.d
    i32 1, label %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI8Box_udesEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i
  ]

_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI8Box_udesEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = invoke { i64, ptr } @_ZNK5Error12error_structEP11ErrorBuffer(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.f)
          to label %_ZNK6ResultINSt3__110shared_ptrI8Box_udesEEE12error_structEP11ErrorBuffer.exit unwind label %bb.v ; 2 uses

_ZNK6ResultINSt3__110shared_ptrI8Box_udesEEE12error_structEP11ErrorBuffer.exit: ; preds = %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI8Box_udesEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  br label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %bb.e unwind label %bb.v       ; 7 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store i32 1, ptr %i.j, align 16, !tbaa !259
  %i.k = load i32, ptr %i.d, align 8, !tbaa !58
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit, label %.invoke

_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit: ; preds = %bb.e
  %i.m = load ptr, ptr %5, align 8, !tbaa !62     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !noalias !260
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !63
  br label %_ZNK8Box_udes8get_langEv.exit

bb.g:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51, !noalias !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51, !noalias !260
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZNK8Box_udes8get_langEv.exit unwind label %bb.v

_ZNK8Box_udes8get_langEv.exit:                    ; preds = %bb.f, %bb.g
  %i.u = load i8, ptr %6, align 8                 ; 2 uses
  %i.v = trunc i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i8 %i.u, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = select i1 %i.v, i64 %i.x, i64 %i.z
  %i.ab = add i64 %i.aa, 1
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #27
          to label %bb.h unwind label %bb.w       ; 2 uses

bb.h:                                             ; preds = %_ZNK8Box_udes8get_langEv.exit
  %i.ad = load i8, ptr %6, align 8
  %i.ae = trunc i8 %i.ad to i1                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.ai = select i1 %i.ae, ptr %i.ag, ptr %i.ah
  %i.aj = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %i.ai) #25 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !64
  br i1 %i.ae, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %6, align 8
  %i.am = and i64 %i.al, -2
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.am) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.h, %bb.i
  %i.an = load i32, ptr %i.d, align 8, !tbaa !58
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit28, label %.invoke

_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit28: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 184 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !noalias !261
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !63
  br label %_ZNK8Box_udes8get_nameEv.exit

bb.k:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51, !noalias !261
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !51, !noalias !261
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_ZNK8Box_udes8get_nameEv.exit unwind label %bb.v

_ZNK8Box_udes8get_nameEv.exit:                    ; preds = %bb.j, %bb.k
  %i.ax = load i8, ptr %7, align 8                ; 2 uses
  %i.ay = trunc i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i8 %i.ax, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = select i1 %i.ay, i64 %i.ba, i64 %i.bc
  %i.be = add i64 %i.bd, 1
  %i.bf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #27
          to label %bb.l unwind label %bb.x       ; 2 uses

bb.l:                                             ; preds = %_ZNK8Box_udes8get_nameEv.exit
  %i.bg = load i8, ptr %7, align 8
  %i.bh = trunc i8 %i.bg to i1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bl = select i1 %i.bh, ptr %i.bj, ptr %i.bk
  %i.bm = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(1) %i.bl) #25 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.bf, ptr %i.bn, align 16, !tbaa !65
  br i1 %i.bh, label %bb.m, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

bb.m:                                             ; preds = %bb.l
  %i.bo = load i64, ptr %7, align 8
  %i.bp = and i64 %i.bo, -2
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bp) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.l, %bb.m
  %i.bq = load i32, ptr %i.d, align 8, !tbaa !58
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit34, label %.invoke

_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit34: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32
  %i.bs = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 208 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !noalias !262
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa.struct !63
  br label %_ZNK8Box_udes15get_descriptionEv.exit

bb.o:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !51, !noalias !262
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !51, !noalias !262
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.bx, i64 noundef %i.bz)
          to label %_ZNK8Box_udes15get_descriptionEv.exit unwind label %bb.v

_ZNK8Box_udes15get_descriptionEv.exit:            ; preds = %bb.n, %bb.o
  %i.ca = load i8, ptr %8, align 8                ; 2 uses
  %i.cb = trunc i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = lshr i8 %i.ca, 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = select i1 %i.cb, i64 %i.cd, i64 %i.cf
  %i.ch = add i64 %i.cg, 1
  %i.ci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #27
          to label %bb.p unwind label %bb.y       ; 2 uses

bb.p:                                             ; preds = %_ZNK8Box_udes15get_descriptionEv.exit
  %i.cj = load i8, ptr %8, align 8
  %i.ck = trunc i8 %i.cj to i1                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.co = select i1 %i.ck, ptr %i.cm, ptr %i.cn
  %i.cp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(1) %i.co) #25 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ci, ptr %i.cq, align 8, !tbaa !66
  br i1 %i.ck, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38

bb.q:                                             ; preds = %bb.p
  %i.cr = load i64, ptr %8, align 8
  %i.cs = and i64 %i.cr, -2
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cs) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38: ; preds = %bb.p, %bb.q
  %i.ct = load i32, ptr %i.d, align 8, !tbaa !58
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit40, label %.invoke

.invoke:                                          ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.e, %bb.c
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #28
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit40: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38
  %i.cv = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 232 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !noalias !263
  %i.cy = trunc i8 %i.cx to i1
  br i1 %i.cy, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !63
  br label %_ZNK8Box_udes8get_tagsEv.exit

bb.s:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEdeEv.exit40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 248
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51, !noalias !263
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 240
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !51, !noalias !263
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.da, i64 noundef %i.dc)
          to label %_ZNK8Box_udes8get_tagsEv.exit unwind label %bb.v

_ZNK8Box_udes8get_tagsEv.exit:                    ; preds = %bb.r, %bb.s
  %i.dd = load i8, ptr %9, align 8                ; 2 uses
  %i.de = trunc i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = lshr i8 %i.dd, 1
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = select i1 %i.de, i64 %i.dg, i64 %i.di
  %i.dk = add i64 %i.dj, 1
  %i.dl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #27
          to label %bb.t unwind label %bb.z       ; 2 uses

bb.t:                                             ; preds = %_ZNK8Box_udes8get_tagsEv.exit
  %i.dm = load i8, ptr %9, align 8
  %i.dn = trunc i8 %i.dm to i1                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.dr = select i1 %i.dn, ptr %i.dp, ptr %i.dq
  %i.ds = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dl, ptr noundef nonnull dereferenceable(1) %i.dr) #25 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.dl, ptr %i.dt, align 16, !tbaa !67
  br i1 %i.dn, label %bb.u, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

bb.u:                                             ; preds = %bb.t
  %i.du = load i64, ptr %9, align 8
  %i.dv = and i64 %i.du, -2
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dv) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44: ; preds = %bb.t, %bb.u
  store ptr %i.j, ptr %3, align 8, !tbaa !265
  %.sroa.0.0.copyload15 = load i64, ptr @heif_error_success, align 8
  %.sroa.4.0.copyload16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_success, i64 8), align 8, !tbaa !56
  br label %bb.aa

bb.v:                                             ; preds = %.invoke, %bb.s, %bb.o, %bb.k, %bb.g, %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI8Box_udesEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i, %bb.d
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

bb.w:                                             ; preds = %_ZNK8Box_udes8get_langEv.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load i8, ptr %6, align 8
  %i.dz = trunc i8 %i.dy to i1
  br i1 %i.dz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

bb.x:                                             ; preds = %_ZNK8Box_udes8get_nameEv.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load i8, ptr %7, align 8
  %i.ec = trunc i8 %i.eb to i1
  br i1 %i.ec, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

bb.y:                                             ; preds = %_ZNK8Box_udes15get_descriptionEv.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load i8, ptr %8, align 8
  %i.ef = trunc i8 %i.ee to i1
  br i1 %i.ef, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

bb.z:                                             ; preds = %_ZNK8Box_udes8get_tagsEv.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load i8, ptr %9, align 8
  %i.ei = trunc i8 %i.eh to i1
  br i1 %i.ei, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

bb.aa:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44, %_ZNK6ResultINSt3__110shared_ptrI8Box_udesEEE12error_structEP11ErrorBuffer.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload15, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44 ], [ %i.h, %_ZNK6ResultINSt3__110shared_ptrI8Box_udesEEE12error_structEP11ErrorBuffer.exit ]
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload16, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44 ], [ %i.i, %_ZNK6ResultINSt3__110shared_ptrI8Box_udesEEE12error_structEP11ErrorBuffer.exit ]
  %i.ej = load i32, ptr %i.d, align 8, !tbaa !58  ; 2 uses
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.el = zext i32 %i.ej to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI8Box_udesEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !68
  invoke void %i.en(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI8Box_udesEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i unwind label %bb.ac, !inline_history !4

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI8Box_udesEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #29
  unreachable

_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev.exit: ; preds = %bb.aa, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI8Box_udesEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ad

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split: ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.y ], [ %.sink.sroa.gep55, %bb.x ], [ %.sink.sroa.gep56, %bb.w ], [ %.sink.sroa.gep57, %bb.z ]
  %.sink = phi ptr [ %8, %bb.y ], [ %7, %bb.x ], [ %6, %bb.w ], [ %9, %bb.z ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ed, %bb.y ], [ %i.ea, %bb.x ], [ %i.dx, %bb.w ], [ %i.eg, %bb.z ]
  %10 = load ptr, ptr %.sink.sroa.phi, align 8, !tbaa !51
  %11 = load i64, ptr %.sink, align 8
  %12 = and i64 %11, -2
  call void @_ZdlPvm(ptr noundef %10, i64 noundef %12) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.x ], [ %i.ed, %bb.y ], [ %i.dw, %bb.v ], [ %i.eg, %bb.z ], [ %i.dx, %bb.w ], [ %.pn.pn.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45.sink.split ]
  call void @_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn

bb.ad:                                            ; preds = %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev.exit, %bb.b
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev.exit ], [ %.sroa.0.0.copyload, %bb.b ]
  %.sroa.4.1 = phi ptr [ %.sroa.4.0, %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEED2Ev.exit ], [ %.sroa.4.0.copyload, %bb.b ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.1, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11HeifContext13find_propertyI8Box_udesEE6ResultINSt3__110shared_ptrIT_EEEjj(ptr dead_on_unwind noalias writable sret(%class.Result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::shared_ptr", align 8 ; 6 uses
  %5 = alloca %"class.std::__1::vector.43", align 8 ; 13 uses
  %6 = alloca %class.Error, align 8               ; 13 uses
  %7 = alloca %class.Error, align 8               ; 3 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__1::shared_ptr.80", align 8 ; 6 uses
  %10 = alloca %"class.std::__1::shared_ptr.88", align 8 ; 6 uses
  %11 = alloca %class.Error, align 8              ; 9 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24, !noalias !270 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !24, !alias.scope !270
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !270 ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !25, !alias.scope !270
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK11HeifContext13get_heif_fileEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8, !noalias !270 ; 0 uses
  br label %_ZNK11HeifContext13get_heif_fileEv.exit

_ZNK11HeifContext13get_heif_fileEv.exit:          ; preds = %bb.a, %bb.b
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  invoke void @_ZN11HeifContext13find_propertyI8Box_udesEE6ResultINSt3__110shared_ptrIT_EEEj(ptr dead_on_unwind writable sret(%class.Result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i32 noundef %2)
          to label %bb.ar unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.e:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK8HeifFile14get_propertiesEjRNSt3__16vectorINS0_10shared_ptrI3BoxEENS0_9allocatorIS4_EEEE(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %6, ptr noundef nonnull align 8 dereferenceable(404) %i.b, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %6, align 8, !tbaa !33
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %6, align 8
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !63
  br label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEC2ERK5Error.exit

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEC2ERK5Error.exit unwind label %bb.k

_ZN6ResultINSt3__110shared_ptrI8Box_udesEEEC2ERK5Error.exit: ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.t, align 8, !tbaa !58
  br label %bb.ak

bb.j:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit47

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.l:                                             ; preds = %bb.f
  %i.w = add i32 %3, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %.not = icmp ugt i64 %i.ae, %i.x
  br i1 %.not, label %bb.t, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.af = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.m unwind label %bb.q       ; 3 uses

bb.m:                                             ; preds = %.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !51
  store i64 33, ptr %8, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 27, ptr %i.ah, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.af, ptr noundef nonnull align 1 dereferenceable(27) @.str.16, i64 27, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 27
  store i8 0, ptr %i.ai, align 1, !tbaa !51
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 5, i32 noundef 2007, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.o, label %_ZN5ErrorD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = load i64, ptr %i.aj, align 8
  %i.ap = and i64 %i.ao, -2
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #26
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.n, %bb.o
  %i.aq = load i8, ptr %8, align 8
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.p, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.p:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.at = load i64, ptr %8, align 8
  %i.au = and i64 %i.at, -2
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN5ErrorD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre = load ptr, ptr %5, align 8, !tbaa !38
  br label %bb.t

bb.q:                                             ; preds = %.thread.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25

bb.r:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load i8, ptr %8, align 8
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.s, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ba = load i64, ptr %8, align 8
  %i.bb = and i64 %i.ba, -2
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25: ; preds = %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.aw, %bb.r ], [ %i.aw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

bb.t:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.l
  %i.bc = phi ptr [ %.pre, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.x ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52 ; 5 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !52
end_hunk_0
