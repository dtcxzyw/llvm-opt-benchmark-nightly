Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mini?download=true
inline.NumInlined: 4693
inline.NumDeleted: 2056
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = load i64, ptr %i.i, align 8
  %i.o = and i64 %i.n, -2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #25
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.h) #24
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.p) #24
  ret void
}

declare void @_ZN8HeifFile12add_infe_boxEjNSt3__110shared_ptrI8Box_infeEE(ptr noundef nonnull align 8 dereferenceable(404), i32 noundef, ptr nofree noundef align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN8HeifFile12set_ipco_boxENSt3__110shared_ptrI8Box_ipcoEE(ptr noundef nonnull align 8 dereferenceable(404), ptr nofree noundef align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_ipcoED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22parse_codec_config_boxRKNSt3__16vectorIhNS_9allocatorIhEEEEjPNS_10shared_ptrI3BoxEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__1::shared_ptr.128", align 8 ; 6 uses
  %7 = alloca %class.BitstreamRange, align 8      ; 7 uses
  %8 = alloca %"class.std::__1::shared_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = load ptr, ptr %1, align 8, !tbaa !49
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, -9
  br i1 %i.g, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !44
  store i64 49, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 46, ptr %i.j, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.h, ptr noundef nonnull align 1 dereferenceable(46) @.str.148, i64 46, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 46
  store i8 0, ptr %i.k, align 1, !tbaa !44
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 149, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.thread.i.i
  %i.l = load i8, ptr %4, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.o = load i64, ptr %4, align 8
  %i.p = and i64 %i.o, -2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.y

bb.d:                                             ; preds = %.thread.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i8, ptr %4, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.u = load i64, ptr %4, align 8
  %i.v = and i64 %i.u, -2
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.w = add nuw nsw i64 %i.f, 8                  ; 10 uses
  %i.x = icmp ugt i64 %i.f, 2147483639
  br i1 %i.x, label %.thread.i.i33, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit

.thread.i.i33:                                    ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.y = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !44
  store i64 49, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 46, ptr %i.aa, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.y, ptr noundef nonnull align 1 dereferenceable(46) @.str.148, i64 46, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 46
  store i8 0, ptr %i.ab, align 1, !tbaa !44
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 149, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.thread.i.i33
  %i.ac = load i8, ptr %5, align 8
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !44
  %i.af = load i64, ptr %5, align 8
  %i.ag = and i64 %i.af, -2
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.y

bb.i:                                             ; preds = %.thread.i.i33
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load i8, ptr %5, align 8
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit39

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !44
  %i.al = load i64, ptr %5, align 8
  %i.am = and i64 %i.al, -2
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit39

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit39: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:    ; preds = %bb.f
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, i8 0, i64 %i.w, i1 false), !tbaa !44
  %i.ao = lshr i64 %i.w, 24
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !44
  %i.aq = lshr i64 %i.w, 16
  %i.ar = trunc i64 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !44
  %i.at = lshr i64 %i.w, 8
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !44
  %i.aw = trunc i64 %i.w to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  store i8 %i.aw, ptr %9, align 1, !tbaa !44
  %10 = lshr i32 %2, 24
  %11 = trunc nuw i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 %11, ptr %12, align 1, !tbaa !44
  %13 = lshr i32 %2, 16
  %14 = trunc i32 %13 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  store i8 %14, ptr %i.ax, align 1, !tbaa !44
  %15 = lshr i32 %2, 8
  %16 = trunc i32 %15 to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  store i8 %16, ptr %i.ay, align 1, !tbaa !44
  %17 = trunc i32 %2 to i8
  %18 = getelementptr inbounds nuw i8, ptr %i.an, i64 7
  store i8 %17, ptr %18, align 1, !tbaa !44
  %i.az = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKhEENS1_IPhEEEET0_T_S8_S7_.exit, label %bb.k

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit45, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit39
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit39 ], [ %.pn.pn, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit45 ], [ %i.q, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.az, i64 %i.bd, i1 false)
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKhEENS1_IPhEEEET0_T_S8_S7_.exit

_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKhEENS1_IPhEEEET0_T_S8_S7_.exit: ; preds = %bb.k, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.bf = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc unwind label %bb.u     ; 7 uses

.noexc:                                           ; preds = %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKhEENS1_IPhEEEET0_T_S8_S7_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !noalias !674
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI19StreamReader_memoryNS_9allocatorIS1_EEEE, i64 16), ptr %i.bf, align 8, !tbaa !31, !noalias !674
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 3 uses
  invoke void @_ZN19StreamReader_memoryC1EPKhmb(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull %i.an, i64 noundef %i.w, i1 noundef zeroext false)
          to label %_ZNSt3__110shared_ptrI12StreamReaderEC2B8ne180100I19StreamReader_memoryvEERKNS0_IT_EE.exit unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI19StreamReader_memoryNS1_IS3_EEEEEEED2B8ne180100Ev.exit7.i.i, !noalias !674

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI19StreamReader_memoryNS1_IS3_EEEEEEED2B8ne180100Ev.exit7.i.i: ; preds = %.noexc
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(96) %i.bf) #24, !noalias !674
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 96) #25, !noalias !674
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit45

_ZNSt3__110shared_ptrI12StreamReaderEC2B8ne180100I19StreamReader_memoryvEERKNS0_IT_EE.exit: ; preds = %.noexc
  store ptr %i.bh, ptr %6, align 8, !tbaa !675, !alias.scope !676
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !265, !alias.scope !676
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.bh, ptr %8, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !29
  %i.bl = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8 ; 0 uses
  invoke void @_ZN14BitstreamRangeC1ENSt3__110shared_ptrI12StreamReaderEEmPS_(ptr noundef nonnull align 8 dereferenceable(41) %7, ptr nofree noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.w, ptr noundef null)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %_ZNSt3__110shared_ptrI12StreamReaderEC2B8ne180100I19StreamReader_memoryvEERKNS0_IT_EE.exit
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !29 ; 5 uses
  %.not.i41 = icmp eq ptr %i.bm, null
  br i1 %.not.i41, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 acq_rel, align 8
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #24, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #24
  br label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.bt = invoke ptr @heif_get_global_security_limits()
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit
  invoke void @_ZN3Box4readER14BitstreamRangePNSt3__110shared_ptrIS_EEPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %7, ptr noundef nonnull %3, ptr noundef %i.bt)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZN14BitstreamRangeD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 acq_rel, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.r, label %_ZN14BitstreamRangeD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #24, !inline_history !670
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #24
  br label %_ZN14BitstreamRangeD2Ev.exit

_ZN14BitstreamRangeD2Ev.exit:                     ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !265 ; 5 uses
  %.not.i42 = icmp eq ptr %i.cc, null
  br i1 %.not.i42, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN14BitstreamRangeD2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = atomicrmw add ptr %i.cd, i64 -1 acq_rel, align 8
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #24, !inline_history !671
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #24
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZN14BitstreamRangeD2Ev.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.w) #25
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPKhEENS1_IPhEEEET0_T_S8_S7_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit45

bb.v:                                             ; preds = %_ZNSt3__110shared_ptrI12StreamReaderEC2B8ne180100I19StreamReader_memoryvEERKNS0_IT_EE.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %bb.x

bb.w:                                             ; preds = %bb.o, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14BitstreamRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %7) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.w ], [ %i.ck, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt3__110shared_ptrI19StreamReader_memoryED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit45

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit45: ; preds = %bb.u, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI19StreamReader_memoryNS1_IS3_EEEEEEED2B8ne180100Ev.exit7.i.i, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.cj, %bb.u ], [ %i.bi, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI19StreamReader_memoryNS1_IS3_EEEEEEED2B8ne180100Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.w) #25
  br label %common.resume

bb.y:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit38, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_freeED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
end_hunk_0
begin_hunk_1_@_ZNSt3__120__shared_ptr_emplaceI8Box_ilocNS_9allocatorIS1_EEED2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_ilocNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_ilocNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_ilocNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(256) %0) #24, !inline_history !935
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_ilocNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.a) #24, !inline_history !936
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_ilocNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #25
  ret void
}

declare void @_ZN8Box_ilocC1Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_irefNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_irefNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_irefNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_irefNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(208) %0) #24, !inline_history !937
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_irefNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #24, !inline_history !938
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_irefNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__115allocate_sharedB8ne180100I8Box_miniNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::shared_ptr.25") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(768) ptr @_Znwm(i64 noundef 768) #27 ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEEE, i64 16), ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  invoke void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(744) %i.c)
          to label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_miniNS1_IS3_EEEEEEED2B8ne180100Ev.exit unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_miniNS1_IS3_EEEEEEED2B8ne180100Ev.exit4

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_miniNS1_IS3_EEEEEEED2B8ne180100Ev.exit4: ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(768) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 768) #25
  resume { ptr, i32 } %i.d

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_miniNS1_IS3_EEEEEEED2B8ne180100Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i8 0, i64 49, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV8Box_mini, i64 16), ptr %i.c, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 177
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 0, ptr %i.i, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  store i32 0, ptr %i.j, align 4, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.h, i8 0, i64 13, i1 false)
  store i8 8, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.l, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.n, i8 0, i64 14, i1 false)
  store i8 8, ptr %i.o, align 2, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 239
  store i8 0, ptr %i.p, align 1, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 0, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 242
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i64 0, ptr %i.u, align 8, !tbaa !154
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store i32 0, ptr %i.v, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  store i64 0, ptr %i.w, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store i32 0, ptr %i.x, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  store i64 0, ptr %i.y, align 8, !tbaa !155
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 0, ptr %i.z, align 8, !tbaa !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store i64 0, ptr %i.aa, align 8, !tbaa !156
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store i32 0, ptr %i.ab, align 8, !tbaa !151
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.r, align 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.s, i8 0, i64 81, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(236) %i.t, i8 0, i64 236, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ac, i8 0, i64 120, i1 false)
  store i32 1835626089, ptr %i.ad, align 8, !tbaa !113
  store ptr %i.c, ptr %0, align 8, !tbaa !293, !alias.scope !941
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !297, !alias.scope !941
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(768) %0) #24, !inline_history !942
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 768) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(744) dereferenceable(744) %i.a) #24, !inline_history !943
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_miniNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 768) #25
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80, i32) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{ptr @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev, null, null}
!1 = distinct !{null, null}
!2 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev, null, null}
!3 = distinct !{ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!4 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_colrED2B8ne180100Ev, null, null}
!5 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_ilocED2B8ne180100Ev, null, null}
!6 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_irefED2B8ne180100Ev, null, null}
!7 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_pixiED2B8ne180100Ev, null, null}
!8 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_ispeED2B8ne180100Ev, null, null}
!9 = distinct !{ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!10 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_ndwtED2B8ne180100Ev, null, null}
!11 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_amveED2B8ne180100Ev, null, null}
!12 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_cclvED2B8ne180100Ev, null, null}
!13 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_mdcvED2B8ne180100Ev, null, null}
!14 = distinct !{ptr @_ZNSt3__110shared_ptrI8Box_clliED2B8ne180100Ev, null, null}
!15 = !{i32 1, !"long-double-type", !"x86_fp80"}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"any pointer", !20, i64 0}
!25 = !{!"p1 _ZTS12StreamReader", !24, i64 0}
!26 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !24, i64 0}
!27 = !{!"_ZTSNSt3__110shared_ptrI12StreamReaderEE", !25, i64 0, !26, i64 8}
!28 = !{!27, !25, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!"vtable pointer", !19, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTS14BitstreamRange", !24, i64 0}
!33 = !{!"long", !20, i64 0}
!34 = !{!"bool", !20, i64 0}
!35 = !{!"_ZTS14BitstreamRange", !27, i64 0, !32, i64 16, !21, i64 24, !33, i64 32, !34, i64 40}
!36 = !{!"_ZTS15heif_error_code", !20, i64 0}
!37 = !{!"_ZTS18heif_suberror_code", !20, i64 0}
!38 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !20, i64 0}
!39 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !38, i64 0}
!40 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !39, i64 0}
!41 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !40, i64 0}
!42 = !{!"_ZTS5Error", !36, i64 0, !37, i64 4, !41, i64 8}
!43 = !{!42, !36, i64 0}
!44 = !{!20, !20, i64 0}
!45 = !{!"p1 omnipotent char", !24, i64 0}
!46 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !46, i64 0}
!48 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !45, i64 0, !45, i64 8, !47, i64 16}
!49 = !{!48, !45, i64 0}
!50 = !{!45, !45, i64 0}
!51 = !{!48, !45, i64 8}
!52 = !{!"_ZTS9BoxHeader", !33, i64 8, !21, i64 16, !48, i64 24, !21, i64 48}
!53 = !{!"p1 _ZTSNSt3__110shared_ptrI3BoxEE", !24, i64 0}
!54 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10shared_ptrI3BoxEELi0ELb0EEE", !53, i64 0}
!55 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10shared_ptrI3BoxEENS_9allocatorIS3_EEEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEEE", !53, i64 0, !53, i64 8, !55, i64 16}
!57 = !{!"_ZTS14BoxStorageMode", !20, i64 0}
!58 = !{!"_ZTS3Box", !52, i64 0, !56, i64 56, !57, i64 80, !33, i64 88, !33, i64 96, !48, i64 104, !41, i64 128, !34, i64 152}
!59 = !{!"short", !20, i64 0}
!60 = !{!"p1 _ZTS8Box_clli", !24, i64 0}
!61 = !{!"_ZTSNSt3__110shared_ptrI8Box_clliEE", !60, i64 0, !26, i64 8}
!62 = !{!"p1 _ZTS8Box_mdcv", !24, i64 0}
!63 = !{!"_ZTSNSt3__110shared_ptrI8Box_mdcvEE", !62, i64 0, !26, i64 8}
!64 = !{!"p1 _ZTS8Box_cclv", !24, i64 0}
!65 = !{!"_ZTSNSt3__110shared_ptrI8Box_cclvEE", !64, i64 0, !26, i64 8}
!66 = !{!"p1 _ZTS8Box_amve", !24, i64 0}
!67 = !{!"_ZTSNSt3__110shared_ptrI8Box_amveEE", !66, i64 0, !26, i64 8}
!68 = !{!"p1 _ZTS8Box_ndwt", !24, i64 0}
!69 = !{!"_ZTSNSt3__110shared_ptrI8Box_ndwtEE", !68, i64 0, !26, i64 8}
!70 = !{!"_ZTS8Box_mini", !58, i64 0, !20, i64 153, !34, i64 154, !34, i64 155, !34, i64 156, !34, i64 157, !34, i64 158, !34, i64 159, !34, i64 160, !34, i64 161, !34, i64 162, !34, i64 163, !20, i64 164, !20, i64 165, !21, i64 168, !21, i64 172, !20, i64 176, !34, i64 177, !34, i64 178, !34, i64 179, !59, i64 180, !59, i64 182, !59, i64 184, !21, i64 188, !21, i64 192, !34, i64 196, !21, i64 200, !21, i64 204, !20, i64 208, !34, i64 209, !20, i64 210, !34, i64 211, !34, i64 212, !34, i64 213, !20, i64 214, !34, i64 215, !34, i64 216, !59, i64 218, !59, i64 220, !59, i64 222, !34, i64 224, !34, i64 225, !61, i64 232, !63, i64 248, !65, i64 264, !67, i64 280, !69, i64 296, !34, i64 312, !61, i64 320, !63, i64 336, !65, i64 352, !67, i64 368, !69, i64 384, !48, i64 400, !48, i64 424, !48, i64 448, !48, i64 472, !48, i64 496, !48, i64 520, !33, i64 544, !21, i64 552, !33, i64 560, !21, i64 568, !33, i64 576, !21, i64 584, !33, i64 592, !21, i64 600, !33, i64 608, !21, i64 616, !48, i64 624, !48, i64 648, !48, i64 672, !48, i64 696, !48, i64 720}
!71 = !{!70, !20, i64 153}
!72 = !{!70, !34, i64 154}
!73 = !{!70, !34, i64 155}
!74 = !{!70, !34, i64 156}
!75 = !{!70, !34, i64 157}
!76 = !{!70, !34, i64 158}
!77 = !{!70, !34, i64 159}
!78 = !{!70, !34, i64 160}
!79 = !{!70, !34, i64 161}
!80 = !{!70, !34, i64 162}
!81 = !{!70, !20, i64 164}
!82 = !{!70, !20, i64 165}
!83 = !{!70, !21, i64 168}
!84 = !{!70, !21, i64 172}
!85 = !{!70, !34, i64 177}
!86 = !{!70, !34, i64 178}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!70, !20, i64 176}
!90 = !{!70, !34, i64 179}
!91 = !{!70, !59, i64 180}
!92 = !{!70, !59, i64 182}
!93 = !{!70, !59, i64 184}
!94 = !{!70, !21, i64 188}
!95 = !{!70, !21, i64 192}
!96 = !{!70, !34, i64 196}
!97 = !{!70, !21, i64 200}
!98 = !{!70, !21, i64 204}
!99 = !{!70, !20, i64 208}
!100 = !{!70, !34, i64 209}
!101 = !{!70, !20, i64 210}
!102 = !{!70, !34, i64 211}
!103 = !{!70, !34, i64 212}
!104 = !{!70, !34, i64 213}
!105 = !{!70, !20, i64 214}
!106 = !{!70, !34, i64 215}
!107 = !{!70, !34, i64 216}
!108 = !{!70, !59, i64 218}
!109 = !{!70, !59, i64 220}
!110 = !{!70, !59, i64 222}
!111 = !{!70, !34, i64 224}
!112 = !{!70, !34, i64 225}
!113 = !{!52, !21, i64 16}
!114 = !{!"_ZTS24heif_content_light_level", !59, i64 0, !59, i64 2}
!115 = !{!"_ZTS8Box_clli", !58, i64 0, !114, i64 154}
!116 = !{!115, !59, i64 154}
!117 = !{!115, !59, i64 156}
!118 = !{!60, !60, i64 0}
!119 = !{!26, !26, i64 0}
!120 = !{!61, !60, i64 0}
!121 = !{!62, !62, i64 0}
!122 = !{!63, !62, i64 0}
!123 = !{!59, !59, i64 0}
!124 = !{!"_ZTS36heif_mastering_display_colour_volume", !20, i64 0, !20, i64 6, !59, i64 12, !59, i64 14, !21, i64 16, !21, i64 20}
!125 = !{!"_ZTS8Box_mdcv", !58, i64 0, !124, i64 156}
!126 = !{!125, !59, i64 168}
!127 = !{!125, !59, i64 170}
!128 = !{!125, !21, i64 172}
!129 = !{!125, !21, i64 176}
!130 = !{!64, !64, i64 0}
!131 = !{!65, !64, i64 0}
!132 = !{!66, !66, i64 0}
!133 = !{!67, !66, i64 0}
!134 = !{!"_ZTS32heif_ambient_viewing_environment", !21, i64 0, !59, i64 4, !59, i64 6}
!135 = !{!"_ZTS8Box_amve", !58, i64 0, !134, i64 156}
!136 = !{!135, !21, i64 156}
!137 = !{!135, !59, i64 160}
!138 = !{!135, !59, i64 162}
!139 = !{!"_ZTS7FullBox", !58, i64 0, !20, i64 153, !21, i64 156}
!140 = !{!139, !21, i64 156}
!141 = !{!"_ZTS8Box_ndwt", !139, i64 0, !21, i64 160}
!142 = !{!141, !21, i64 160}
!143 = !{!68, !68, i64 0}
!144 = !{!69, !68, i64 0}
!145 = !{!70, !34, i64 312}
!146 = !{!70, !21, i64 584}
!147 = !{!70, !21, i64 568}
!148 = !{!70, !21, i64 552}
!149 = !{!70, !34, i64 163}
!150 = !{!70, !21, i64 600}
!151 = !{!70, !21, i64 616}
!152 = !{!70, !33, i64 544}
!153 = !{!70, !33, i64 576}
!154 = !{!70, !33, i64 560}
!155 = !{!70, !33, i64 592}
!156 = !{!70, !33, i64 608}
!157 = !{i64 0, i64 24, !44}
!158 = !{!61, !26, i64 8}
!159 = !{!63, !26, i64 8}
!160 = !{!65, !26, i64 8}
!161 = !{!67, !26, i64 8}
!162 = !{!69, !26, i64 8}
!163 = !{!"any p2 pointer", !24, i64 0}
!164 = !{!"p1 int", !24, i64 0}
!165 = !{!"p1 long", !24, i64 0}
end_hunk_1
