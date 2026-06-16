inline.NumInlined: 782
inline.NumDeleted: 476
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileC2EPKci:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 2, ptr %i.e, align 8
  store i32 3, ptr %i.f, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr null, ptr %i.g, align 8, !tbaa !138
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileC2EPKcRKNS_18ContextInitializerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileC2ERNS_7IStreamEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::ContextInitializer", align 8 ; 11 uses
  %i.a = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57IStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.b, align 8
  store i64 104, ptr %3, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  store i32 -2, ptr %i.d, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 92
  store float -1.000000e+00, ptr %i.e, align 4, !tbaa !133
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 2, ptr %i.f, align 8
  store i32 3, ptr %i.g, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr null, ptr %i.h, align 8, !tbaa !138
  %i.i = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_518ContextInitializer14setInputStreamEPNS_7IStreamE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull %1)
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileC2EPKcRKNS_18ContextInitializerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57IStream8fileNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_518ContextInitializer14setInputStreamEPNS_7IStreamE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileC2EPNS_13InputPartDataE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !139
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextC2ERKS0_.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextC2ERKS0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.k = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #24
          to label %bb.e unwind label %bb.g       ; 16 uses

bb.e:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextC2ERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !10, !noalias !140
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !12, !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN27OpenImageIO_v3_1_Imf__3_3_59InputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !13, !noalias !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !3, !noalias !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.p, i8 0, i64 40, i1 false), !noalias !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %0, ptr %i.r, align 8, !tbaa !15, !noalias !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.q, ptr %i.s, align 8, !tbaa !86, !noalias !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !87, !noalias !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr null, ptr %i.v, align 8, !tbaa !88, !noalias !140
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i8 0, i64 64, i1 false), !noalias !140
  store ptr %i.u, ptr %i.w, align 8, !tbaa !89, !noalias !140
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store ptr %i.u, ptr %i.y, align 8, !tbaa !90, !noalias !140
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store i64 0, ptr %i.z, align 8, !tbaa !91, !noalias !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store i32 -1, ptr %i.aa, align 8, !tbaa !92, !noalias !140
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false), !noalias !140
  store ptr %i.k, ptr %i.l, align 8, !tbaa !93, !alias.scope !140
  store ptr %i.p, ptr %i.j, align 8, !tbaa !96, !alias.scope !140
  store ptr %1, ptr %i.t, align 8, !tbaa !101
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile10initializeEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextC2ERKS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_59InputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ac, %bb.g ]
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret ptr %i.a
}

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile6headerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data9getHeaderEi(ptr noundef nonnull align 8 dereferenceable(216) %i.b, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(49) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data9getHeaderEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::Header", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context9partCountEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.e = icmp sgt i32 %1, -1
  %i.f = icmp slt i32 %1, %i.c
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !144  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 56                  ; 5 uses
  %i.o = trunc i64 %i.n to i32
  %.not = icmp slt i32 %1, %i.o
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %narrow = add nuw nsw i32 %1, 1                 ; 2 uses
  %i.p = zext nneg i32 %narrow to i64             ; 4 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i64 %i.p, %i.n
  invoke void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.r)
          to label %.lr.ph.preheader unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.n, %i.p
  br i1 %i.s, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.p ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.i, %i.t
  br i1 %.not.i.i32, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.t, %bb.g ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i.i) #25
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !145

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.t, ptr %i.h, align 8, !tbaa !143
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.g, %bb.f, %bb.e
  %sext = shl i64 %i.n, 32
  %i.v = ashr exact i64 %sext, 32
  br label %.lr.ph

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.y = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context6headerEi(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO_v3_1_Imf__3_3_5::Header") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.y)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.aa, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %narrow, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !147

bb.k:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn28 = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ab

.loopexit:                                        ; preds = %bb.j, %bb.c
  %i.ae = zext nneg i32 %1 to i64
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %i.ae
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 0 uses
  ret ptr %i.ag

bb.n:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_Z13iex_debugTrapv()
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.19, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef %1)
          to label %bb.q unwind label %bb.x       ; 2 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.q
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %i.c)
          to label %bb.r unwind label %bb.x       ; 2 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.21, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.r
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ap = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %i.ap)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ar = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.ac unwind label %bb.x

bb.v:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.u, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ar) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.au, %bb.x ], [ %i.av, %bb.y ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.at, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.h, %bb.m, %bb.aa, %bb.v
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.as, %bb.v ], [ %.pn.pn, %bb.aa ], [ %.pn28, %bb.m ], [ %i.w, %bb.h ]
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 0 uses
  resume { ptr, i32 } %.pn28.pn.pn

bb.ac:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile7versionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sink = select i1 %.not, ptr %0, ptr %i.e
  %i.f = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context7versionEv(ptr noundef nonnull align 8 dereferenceable(16) %.sink)
  ret i32 %i.f
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context7versionEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile14setFrameBufferERKNS_11FrameBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(216) %i.b) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.a
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data20lockedSetFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(216) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data14setFrameBufferERKNS_11FrameBufferE.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(216) %i.b) #25 ; 0 uses
  resume { ptr, i32 } %i.d

_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data14setFrameBufferERKNS_11FrameBufferE.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(216) %i.b) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data20lockedSetFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.b = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 0 uses
  ret void

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #25 ; 0 uses
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data20lockedSetFrameBufferERKNS_11FrameBufferE:bb.a
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !126
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, ptr noundef nonnull align 8 dereferenceable(48) %1) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLineESt14default_deleteIS1_EED2Ev.exit, %bb.ag, %.loopexit
  ret void

bb.ai:                                            ; preds = %bb.r
  unreachable
}

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data18deleteCachedBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferEEclEPS1_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable

_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferEEclEPS1_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferEEclEPS1_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !158  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i ], [ %i.h, %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferESt14default_deleteIS1_EE5resetEPS1_.exit ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #26
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !160

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !158
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE5clearEv.exit: ; preds = %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 -1, ptr %i.m, align 8, !tbaa !92
  ret void
}

declare { i64, i64 } @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context10dataWindowEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9tileYSizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context10hasChannelEiPKc(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #4

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile10levelWidthEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data18bufferedReadPixelsEii(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imath_3_1::Box", align 4    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10getPartIdxEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !109
  br label %_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10getPartIdxEv.exit

_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10getPartIdxEv.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = tail call { i64, i64 } @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context10dataWindowEi(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.g) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %.sroa.speculated80 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1) ; 4 uses
  %.sroa.speculated77 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2) ; 4 uses
  %.sroa.023.4.extract.shift = lshr i64 %i.i, 32
  %.sroa.023.4.extract.trunc = trunc nuw i64 %.sroa.023.4.extract.shift to i32 ; 5 uses
  %i.k = icmp slt i32 %.sroa.speculated80, %.sroa.023.4.extract.trunc
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10getPartIdxEv.exit
  %.sroa.11.12.extract.shift = lshr i64 %i.j, 32
  %.sroa.11.12.extract.trunc = trunc nuw i64 %.sroa.11.12.extract.shift to i32 ; 2 uses
  %i.l = icmp sgt i32 %.sroa.speculated77, %.sroa.11.12.extract.trunc
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10getPartIdxEv.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull @.str.14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #25
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.c
  %i.o = sub nsw i32 %.sroa.speculated80, %.sroa.023.4.extract.trunc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9tileYSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.s = udiv i32 %i.o, %i.r                      ; 3 uses
  %i.t = sub nsw i32 %.sroa.speculated77, %.sroa.023.4.extract.trunc
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.v = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9tileYSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  %i.w = udiv i32 %i.t, %i.v                      ; 3 uses
  %i.x = icmp eq i32 %.sroa.speculated80, %.sroa.023.4.extract.trunc
  %i.y = icmp eq i32 %.sroa.speculated77, %.sroa.11.12.extract.trunc
  %or.cond = and i1 %i.x, %i.y
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !125  ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !125 ; 2 uses
  %i.ac = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef 0)
  %i.ad = add nsw i32 %i.ac, -1
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef 0, i32 noundef %i.ad, i32 noundef %i.s, i32 noundef %i.w, i32 noundef 0, i32 noundef 0)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  %.not97 = icmp sgt i32 %i.s, %i.w
  br i1 %.not97, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.023.0.extract.trunc = trunc i64 %i.i to i32 ; 3 uses
  %.sroa.11.8.extract.trunc = trunc i64 %i.j to i32
  %i.aj = sub nsw i32 %.sroa.11.8.extract.trunc, %.sroa.023.0.extract.trunc
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph100, %._crit_edge
  %.04298 = phi i32 [ %i.s, %.lr.ph100 ], [ %i.az, %._crit_edge ] ; 7 uses
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !92
  %.not44 = icmp eq i32 %.04298, %i.am
  br i1 %.not44, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 2 uses
  %.not90 = icmp eq ptr %i.an, null
  br i1 %.not90, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.aq = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ap)
  %.not91 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not91, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !125 ; 2 uses
  %i.as = call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i32 noundef 0)
  %i.at = add nsw i32 %i.as, -1
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i32 noundef 0, i32 noundef %i.at, i32 noundef %.04298, i32 noundef %.04298, i32 noundef 0, i32 noundef 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.m, %bb.l
  store i32 %.04298, ptr %i.ag, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !125
  call void @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile17dataWindowForTileEiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Box") align 4 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i32 noundef 0, i32 noundef %.04298, i32 noundef 0)
  %i.av = load i32, ptr %i.ah, align 4, !tbaa !3
  %.sroa.speculated70 = call i32 @llvm.smax.i32(i32 %.sroa.speculated80, i32 %i.av) ; 2 uses
  %i.aw = load i32, ptr %i.ai, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aw, i32 %.sroa.speculated77) ; 2 uses
  %i.ax = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al) ; 2 uses
  %i.ay = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al)
  %.not9295 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not9295, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.az = add nsw i32 %.04298, 1
  %.not.not = icmp slt i32 %.04298, %i.w
  br i1 %.not.not, label %bb.j, label %.loopexit, !llvm.loop !189

.lr.ph:                                           ; preds = %bb.n, %bb.q
  %.sroa.055.096 = phi ptr [ %i.bg, %bb.q ], [ %i.ax, %bb.n ] ; 4 uses
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 2 uses
  %.not93 = icmp eq ptr %i.ba, null
  br i1 %.not93, label %.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.055.096, i64 32
  %i.bc = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull %i.bb) ; 2 uses
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.be = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bd)
  %.not94 = icmp eq ptr %i.bc, %i.be
  br i1 %.not94, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.ah, align 4, !tbaa !190
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data16copyCachedBufferENS_11FrameBuffer13ConstIteratorES3_iiiii(ptr nonnull align 8 poison, ptr nonnull %.sroa.055.096, ptr %i.bc, i32 noundef %.sroa.speculated70, i32 noundef %.sroa.speculated, i32 noundef %i.bf, i32 noundef %.sroa.023.0.extract.trunc, i32 noundef %i.ak)
  br label %bb.q

.thread:                                          ; preds = %bb.o, %.lr.ph
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10fillBufferENS_11FrameBuffer13ConstIteratorEiiiii(ptr nonnull align 8 poison, ptr %.sroa.055.096, i32 noundef %.sroa.speculated70, i32 noundef %.sroa.speculated, i32 noundef %.sroa.023.4.extract.trunc, i32 noundef %.sroa.023.0.extract.trunc, i32 noundef %i.ak)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.bg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.055.096) #29 ; 2 uses
  %i.bh = call ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al)
  %.not92 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not92, label %._crit_edge, label %.lr.ph, !llvm.loop !193

.loopexit:                                        ; preds = %._crit_edge, %bb.i, %bb.h
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

declare ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile17dataWindowForTileEiii(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Box") align 4, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data16copyCachedBufferENS_11FrameBuffer13ConstIteratorES3_iiiii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.039.0.copyload = load i32, ptr %i.a, align 8, !tbaa !165
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.541.0.copyload = load ptr, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !159
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.642.0.copyload = load i64, ptr %.sroa.642.0..sroa_idx, align 8, !tbaa !194 ; 37 uses
  %.sroa.945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.945.0.copyload = load i64, ptr %.sroa.945.0..sroa_idx, align 8, !tbaa !194 ; 4 uses
  %.sroa.1147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.1147.0.copyload = load i32, ptr %.sroa.1147.0..sroa_idx, align 8, !tbaa !3
  %.sroa.1248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 324
  %.sroa.1248.0.copyload = load i32, ptr %.sroa.1248.0..sroa_idx, align 4, !tbaa !3
  %.sroa.1350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.1350.0.copyload = load i8, ptr %.sroa.1350.0..sroa_idx, align 8, !tbaa !195
  %.sroa.1451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 337
  %.sroa.1451.0.copyload = load i8, ptr %.sroa.1451.0..sroa_idx, align 1, !tbaa !195
  %i.b = icmp ne i32 %.sroa.1147.0.copyload, 1
  %i.c = icmp ne i32 %.sroa.1248.0.copyload, 1
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str.15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 288
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 8, !tbaa !165
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 296
  %.sroa.533.0.copyload = load ptr, ptr %.sroa.533.0..sroa_idx, align 8, !tbaa !159 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 304
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !194 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 312
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !194 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 320
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 324
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !3
  %i.g = icmp ne i32 %.sroa.10.0.copyload, 1
  %i.h = icmp ne i32 %.sroa.11.0.copyload, 1
  %or.cond5 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull @.str.15)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.i:                                             ; preds = %bb.e
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 337
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1, !tbaa !195
  %.sroa.1236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 336
  %.sroa.1236.0.copyload = load i8, ptr %.sroa.1236.0..sroa_idx, align 8, !tbaa !195
  %i.k = trunc i8 %.sroa.1236.0.copyload to i1
  %.not = xor i1 %i.k, true
  %i.l = trunc i8 %.sroa.13.0.copyload to i1
  %or.cond8 = select i1 %.not, i1 %i.l, i1 false
  br i1 %or.cond8, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull @.str.16)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.i
  %.not70 = icmp eq i32 %.sroa.039.0.copyload, %.sroa.0.0.copyload
  br i1 %.not70, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull @.str.17)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.m
  switch i64 %.sroa.6.0.copyload, label %bb.r [
    i64 4, label %bb.u
    i64 2, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.q = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull @.str.18)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.q, %bb.q
  %.not7185 = icmp sgt i32 %3, %4
  br i1 %.not7185, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.u
  %i.s = trunc i8 %.sroa.1451.0.copyload to i1    ; 2 uses
  %i.t = sext i32 %5 to i64                       ; 4 uses
  %i.u = trunc i8 %.sroa.1350.0.copyload to i1
  %i.v = sext i32 %6 to i64                       ; 3 uses
  %i.w = mul i64 %.sroa.642.0.copyload, %i.v
  %.164.idx = select i1 %i.u, i64 0, i64 %i.w
  %invariant.gep = getelementptr i8, ptr %.sroa.541.0.copyload, i64 %.164.idx ; 4 uses
  %i.x = icmp eq i64 %.sroa.6.0.copyload, 2
  %i.y = icmp sgt i32 %7, 0                       ; 4 uses
  br i1 %i.x, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.z = shl nsw i64 %i.v, 1
  %invariant.gep104 = getelementptr i8, ptr %.sroa.533.0.copyload, i64 %i.z ; 2 uses
  br i1 %i.s, label %.lr.ph87.split.us.split.us, label %.lr.ph87.split.us.split

.lr.ph87.split.us.split.us:                       ; preds = %.lr.ph87.split.us
  br i1 %i.y, label %.lr.ph84.us.us.us.preheader, label %._crit_edge

.lr.ph84.us.us.us.preheader:                      ; preds = %.lr.ph87.split.us.split.us
  %i.aa = sext i32 %3 to i64
  %8 = add i32 %4, 1
  %xtraiter170 = and i32 %7, 7                    ; 3 uses
  %i.ab = icmp ult i32 %7, 8
  %unroll_iter174 = and i32 %7, 2147483640
  %lcmp.mod172.not = icmp eq i32 %xtraiter170, 0
  %lcmp.mod173 = icmp ne i32 %xtraiter170, 0
  br label %.lr.ph84.us.us.us

.lr.ph84.us.us.us:                                ; preds = %.lr.ph84.us.us.us.preheader, %..loopexit_crit_edge.us.us.us
  %indvars.iv138 = phi i64 [ %i.aa, %.lr.ph84.us.us.us.preheader ], [ %indvars.iv.next139, %..loopexit_crit_edge.us.us.us ] ; 2 uses
  %i.ac = sub nsw i64 %indvars.iv138, %i.t        ; 2 uses
  %i.ad = mul i64 %i.ac, %.sroa.945.0.copyload
  %gep.us.us.us = getelementptr i8, ptr %invariant.gep, i64 %i.ad ; 2 uses
  %i.ae = mul i64 %i.ac, %.sroa.9.0.copyload
  %gep.us105.us = getelementptr i8, ptr %invariant.gep104, i64 %i.ae ; 2 uses
  br i1 %i.ab, label %.epil.preheader169, label %.lr.ph84.us.us.us.new

.lr.ph84.us.us.us.new:                            ; preds = %.lr.ph84.us.us.us, %.lr.ph84.us.us.us.new
  %.06282.us.us.us = phi ptr [ %i.bc, %.lr.ph84.us.us.us.new ], [ %gep.us105.us, %.lr.ph84.us.us.us ] ; 9 uses
  %.281.us.us.us = phi ptr [ %i.bb, %.lr.ph84.us.us.us.new ], [ %gep.us.us.us, %.lr.ph84.us.us.us ] ; 2 uses
  %niter175 = phi i32 [ %niter175.next.7, %.lr.ph84.us.us.us.new ], [ 0, %.lr.ph84.us.us.us ]
  %i.af = load i16, ptr %.06282.us.us.us, align 2, !tbaa !196
  store i16 %i.af, ptr %.281.us.us.us, align 2, !tbaa !196
  %i.ag = getelementptr inbounds nuw i8, ptr %.281.us.us.us, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !196
  store i16 %i.ai, ptr %i.ag, align 2, !tbaa !196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !196
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !196
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.642.0.copyload ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !196
  store i16 %i.ao, ptr %i.am, align 2, !tbaa !196
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.642.0.copyload ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 8
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !196
  store i16 %i.ar, ptr %i.ap, align 2, !tbaa !196
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.642.0.copyload ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 10
  %i.au = load i16, ptr %i.at, align 2, !tbaa !196
  store i16 %i.au, ptr %i.as, align 2, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.642.0.copyload ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 12
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !196
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !196
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.642.0.copyload ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 14
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !196
  store i16 %i.ba, ptr %i.ay, align 2, !tbaa !196
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.642.0.copyload ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.06282.us.us.us, i64 16 ; 2 uses
  %niter175.next.7 = add i32 %niter175, 8         ; 2 uses
  %niter175.ncmp.7 = icmp eq i32 %niter175.next.7, %unroll_iter174
  br i1 %niter175.ncmp.7, label %..loopexit_crit_edge.us.us.us.unr-lcssa, label %.lr.ph84.us.us.us.new, !llvm.loop !198

..loopexit_crit_edge.us.us.us.unr-lcssa:          ; preds = %.lr.ph84.us.us.us.new
  br i1 %lcmp.mod172.not, label %..loopexit_crit_edge.us.us.us, label %.epil.preheader169

.epil.preheader169:                               ; preds = %..loopexit_crit_edge.us.us.us.unr-lcssa, %.lr.ph84.us.us.us
  %.06282.us.us.us.epil.init = phi ptr [ %gep.us105.us, %.lr.ph84.us.us.us ], [ %i.bc, %..loopexit_crit_edge.us.us.us.unr-lcssa ]
  %.281.us.us.us.epil.init = phi ptr [ %gep.us.us.us, %.lr.ph84.us.us.us ], [ %i.bb, %..loopexit_crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader169
  %.06282.us.us.us.epil = phi ptr [ %.06282.us.us.us.epil.init, %.epil.preheader169 ], [ %i.bf, %bb.v ] ; 2 uses
  %.281.us.us.us.epil = phi ptr [ %.281.us.us.us.epil.init, %.epil.preheader169 ], [ %i.be, %bb.v ] ; 2 uses
  %epil.iter171 = phi i32 [ 0, %.epil.preheader169 ], [ %epil.iter171.next, %bb.v ]
  %i.bd = load i16, ptr %.06282.us.us.us.epil, align 2, !tbaa !196
  store i16 %i.bd, ptr %.281.us.us.us.epil, align 2, !tbaa !196
  %i.be = getelementptr inbounds nuw i8, ptr %.281.us.us.us.epil, i64 %.sroa.642.0.copyload
  %i.bf = getelementptr inbounds nuw i8, ptr %.06282.us.us.us.epil, i64 2
  %epil.iter171.next = add i32 %epil.iter171, 1   ; 2 uses
  %epil.iter171.cmp.not = icmp eq i32 %epil.iter171.next, %xtraiter170
  br i1 %epil.iter171.cmp.not, label %..loopexit_crit_edge.us.us.us, label %bb.v, !llvm.loop !199

..loopexit_crit_edge.us.us.us:                    ; preds = %bb.v, %..loopexit_crit_edge.us.us.us.unr-lcssa
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %lftr.wideiv141 = trunc i64 %indvars.iv.next139 to i32
  %exitcond142.not = icmp eq i32 %8, %lftr.wideiv141
  br i1 %exitcond142.not, label %._crit_edge, label %.lr.ph84.us.us.us, !llvm.loop !201

.lr.ph87.split.us.split:                          ; preds = %.lr.ph87.split.us
  br i1 %i.y, label %.lr.ph84.us.us114.preheader, label %._crit_edge

.lr.ph84.us.us114.preheader:                      ; preds = %.lr.ph87.split.us.split
  %i.bg = sext i32 %3 to i64
  %9 = add i32 %4, 1
  %xtraiter163 = and i32 %7, 7                    ; 3 uses
  %i.bh = icmp ult i32 %7, 8
  %unroll_iter167 = and i32 %7, 2147483640
  %lcmp.mod165.not = icmp eq i32 %xtraiter163, 0
  %lcmp.mod166 = icmp ne i32 %xtraiter163, 0
  br label %.lr.ph84.us.us114

.lr.ph84.us.us114:                                ; preds = %.lr.ph84.us.us114.preheader, %..loopexit_crit_edge.us.us115
  %indvars.iv132 = phi i64 [ %i.bg, %.lr.ph84.us.us114.preheader ], [ %indvars.iv.next133, %..loopexit_crit_edge.us.us115 ] ; 3 uses
  %i.bi = mul i64 %.sroa.945.0.copyload, %indvars.iv132
  %gep.us.us107 = getelementptr i8, ptr %invariant.gep, i64 %i.bi ; 2 uses
  %i.bj = sub nsw i64 %indvars.iv132, %i.t
  %i.bk = mul i64 %i.bj, %.sroa.9.0.copyload
  %gep.us108 = getelementptr i8, ptr %invariant.gep104, i64 %i.bk ; 2 uses
  br i1 %i.bh, label %.epil.preheader162, label %.lr.ph84.us.us114.new

.lr.ph84.us.us114.new:                            ; preds = %.lr.ph84.us.us114, %.lr.ph84.us.us114.new
  %.06282.us.us110 = phi ptr [ %i.ci, %.lr.ph84.us.us114.new ], [ %gep.us108, %.lr.ph84.us.us114 ] ; 9 uses
  %.281.us.us111 = phi ptr [ %i.ch, %.lr.ph84.us.us114.new ], [ %gep.us.us107, %.lr.ph84.us.us114 ] ; 2 uses
  %niter168 = phi i32 [ %niter168.next.7, %.lr.ph84.us.us114.new ], [ 0, %.lr.ph84.us.us114 ]
  %i.bl = load i16, ptr %.06282.us.us110, align 2, !tbaa !196
  store i16 %i.bl, ptr %.281.us.us111, align 2, !tbaa !196
  %i.bm = getelementptr inbounds nuw i8, ptr %.281.us.us111, i64 %.sroa.642.0.copyload ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !196
  store i16 %i.bo, ptr %i.bm, align 2, !tbaa !196
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.642.0.copyload ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 4
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !196
  store i16 %i.br, ptr %i.bp, align 2, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.642.0.copyload ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 6
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !196
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !196
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.642.0.copyload ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 8
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !196
  store i16 %i.bx, ptr %i.bv, align 2, !tbaa !196
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.642.0.copyload ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 10
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !196
  store i16 %i.ca, ptr %i.by, align 2, !tbaa !196
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.642.0.copyload ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 12
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !196
  store i16 %i.cd, ptr %i.cb, align 2, !tbaa !196
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.642.0.copyload ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 14
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !196
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !196
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.06282.us.us110, i64 16 ; 2 uses
  %niter168.next.7 = add i32 %niter168, 8         ; 2 uses
  %niter168.ncmp.7 = icmp eq i32 %niter168.next.7, %unroll_iter167
  br i1 %niter168.ncmp.7, label %..loopexit_crit_edge.us.us115.unr-lcssa, label %.lr.ph84.us.us114.new, !llvm.loop !198

..loopexit_crit_edge.us.us115.unr-lcssa:          ; preds = %.lr.ph84.us.us114.new
  br i1 %lcmp.mod165.not, label %..loopexit_crit_edge.us.us115, label %.epil.preheader162

.epil.preheader162:                               ; preds = %..loopexit_crit_edge.us.us115.unr-lcssa, %.lr.ph84.us.us114
  %.06282.us.us110.epil.init = phi ptr [ %gep.us108, %.lr.ph84.us.us114 ], [ %i.ci, %..loopexit_crit_edge.us.us115.unr-lcssa ]
  %.281.us.us111.epil.init = phi ptr [ %gep.us.us107, %.lr.ph84.us.us114 ], [ %i.ch, %..loopexit_crit_edge.us.us115.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader162
  %.06282.us.us110.epil = phi ptr [ %.06282.us.us110.epil.init, %.epil.preheader162 ], [ %i.cl, %bb.w ] ; 2 uses
  %.281.us.us111.epil = phi ptr [ %.281.us.us111.epil.init, %.epil.preheader162 ], [ %i.ck, %bb.w ] ; 2 uses
  %epil.iter164 = phi i32 [ 0, %.epil.preheader162 ], [ %epil.iter164.next, %bb.w ]
  %i.cj = load i16, ptr %.06282.us.us110.epil, align 2, !tbaa !196
  store i16 %i.cj, ptr %.281.us.us111.epil, align 2, !tbaa !196
  %i.ck = getelementptr inbounds nuw i8, ptr %.281.us.us111.epil, i64 %.sroa.642.0.copyload
  %i.cl = getelementptr inbounds nuw i8, ptr %.06282.us.us110.epil, i64 2
  %epil.iter164.next = add i32 %epil.iter164, 1   ; 2 uses
  %epil.iter164.cmp.not = icmp eq i32 %epil.iter164.next, %xtraiter163
  br i1 %epil.iter164.cmp.not, label %..loopexit_crit_edge.us.us115, label %bb.w, !llvm.loop !202

..loopexit_crit_edge.us.us115:                    ; preds = %bb.w, %..loopexit_crit_edge.us.us115.unr-lcssa
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %lftr.wideiv135 = trunc i64 %indvars.iv.next133 to i32
  %exitcond136.not = icmp eq i32 %9, %lftr.wideiv135
  br i1 %exitcond136.not, label %._crit_edge, label %.lr.ph84.us.us114, !llvm.loop !201

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cm = shl nsw i64 %i.v, 2
  %invariant.gep88 = getelementptr i8, ptr %.sroa.533.0.copyload, i64 %i.cm ; 2 uses
  br i1 %i.s, label %.lr.ph87.split.split.us, label %.lr.ph87.split.split

.lr.ph87.split.split.us:                          ; preds = %.lr.ph87.split
  br i1 %i.y, label %.lr.ph.us.us.preheader, label %._crit_edge

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph87.split.split.us
  %i.cn = sext i32 %3 to i64
  %10 = add i32 %4, 1
  %xtraiter156 = and i32 %7, 7                    ; 3 uses
  %i.co = icmp ult i32 %7, 8
  %unroll_iter160 = and i32 %7, 2147483640
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %..loopexit77_crit_edge.us.us
  %indvars.iv126 = phi i64 [ %i.cn, %.lr.ph.us.us.preheader ], [ %indvars.iv.next127, %..loopexit77_crit_edge.us.us ] ; 2 uses
  %i.cp = sub nsw i64 %indvars.iv126, %i.t        ; 2 uses
  %i.cq = mul i64 %i.cp, %.sroa.945.0.copyload
  %gep.us92.us = getelementptr i8, ptr %invariant.gep, i64 %i.cq ; 2 uses
  %i.cr = mul i64 %i.cp, %.sroa.9.0.copyload
  %gep89.us.us = getelementptr i8, ptr %invariant.gep88, i64 %i.cr ; 2 uses
  br i1 %i.co, label %.epil.preheader155, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.179.us.us = phi ptr [ %i.dp, %.lr.ph.us.us.new ], [ %gep89.us.us, %.lr.ph.us.us ] ; 9 uses
  %.378.us.us = phi ptr [ %i.do, %.lr.ph.us.us.new ], [ %gep.us92.us, %.lr.ph.us.us ] ; 2 uses
  %niter161 = phi i32 [ %niter161.next.7, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.cs = load i32, ptr %.179.us.us, align 4, !tbaa !3
  store i32 %i.cs, ptr %.378.us.us, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.378.us.us, i64 %.sroa.642.0.copyload ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.642.0.copyload ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.642.0.copyload ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sroa.642.0.copyload ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 16
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.642.0.copyload ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sroa.642.0.copyload ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 24
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.642.0.copyload ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !3
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.642.0.copyload ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.179.us.us, i64 32 ; 2 uses
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %..loopexit77_crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !203

..loopexit77_crit_edge.us.us.unr-lcssa:           ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod158.not, label %..loopexit77_crit_edge.us.us, label %.epil.preheader155

.epil.preheader155:                               ; preds = %..loopexit77_crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %.179.us.us.epil.init = phi ptr [ %gep89.us.us, %.lr.ph.us.us ], [ %i.dp, %..loopexit77_crit_edge.us.us.unr-lcssa ]
  %.378.us.us.epil.init = phi ptr [ %gep.us92.us, %.lr.ph.us.us ], [ %i.do, %..loopexit77_crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader155
  %.179.us.us.epil = phi ptr [ %.179.us.us.epil.init, %.epil.preheader155 ], [ %i.ds, %bb.x ] ; 2 uses
  %.378.us.us.epil = phi ptr [ %.378.us.us.epil.init, %.epil.preheader155 ], [ %i.dr, %bb.x ] ; 2 uses
  %epil.iter157 = phi i32 [ 0, %.epil.preheader155 ], [ %epil.iter157.next, %bb.x ]
  %i.dq = load i32, ptr %.179.us.us.epil, align 4, !tbaa !3
  store i32 %i.dq, ptr %.378.us.us.epil, align 4, !tbaa !3
  %i.dr = getelementptr inbounds nuw i8, ptr %.378.us.us.epil, i64 %.sroa.642.0.copyload
  %i.ds = getelementptr inbounds nuw i8, ptr %.179.us.us.epil, i64 4
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %..loopexit77_crit_edge.us.us, label %bb.x, !llvm.loop !204

..loopexit77_crit_edge.us.us:                     ; preds = %bb.x, %..loopexit77_crit_edge.us.us.unr-lcssa
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 2 uses
  %lftr.wideiv129 = trunc i64 %indvars.iv.next127 to i32
  %exitcond130.not = icmp eq i32 %10, %lftr.wideiv129
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph.us.us, !llvm.loop !201

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  br i1 %i.y, label %.lr.ph.us102.preheader, label %._crit_edge

.lr.ph.us102.preheader:                           ; preds = %.lr.ph87.split.split
  %i.dt = sext i32 %3 to i64
  %11 = add i32 %4, 1
  %xtraiter = and i32 %7, 7                       ; 3 uses
  %i.du = icmp ult i32 %7, 8
  %unroll_iter = and i32 %7, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod154 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us102

.lr.ph.us102:                                     ; preds = %.lr.ph.us102.preheader, %..loopexit77_crit_edge.us103
  %indvars.iv = phi i64 [ %i.dt, %.lr.ph.us102.preheader ], [ %indvars.iv.next, %..loopexit77_crit_edge.us103 ] ; 3 uses
  %i.dv = mul i64 %.sroa.945.0.copyload, %indvars.iv
  %gep.us95 = getelementptr i8, ptr %invariant.gep, i64 %i.dv ; 2 uses
  %i.dw = sub nsw i64 %indvars.iv, %i.t
  %i.dx = mul i64 %i.dw, %.sroa.9.0.copyload
  %gep89.us96 = getelementptr i8, ptr %invariant.gep88, i64 %i.dx ; 2 uses
  br i1 %i.du, label %.epil.preheader, label %.lr.ph.us102.new

.lr.ph.us102.new:                                 ; preds = %.lr.ph.us102, %.lr.ph.us102.new
  %.179.us98 = phi ptr [ %i.ev, %.lr.ph.us102.new ], [ %gep89.us96, %.lr.ph.us102 ] ; 9 uses
  %.378.us99 = phi ptr [ %i.eu, %.lr.ph.us102.new ], [ %gep.us95, %.lr.ph.us102 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph.us102.new ], [ 0, %.lr.ph.us102 ]
  %i.dy = load i32, ptr %.179.us98, align 4, !tbaa !3
  store i32 %i.dy, ptr %.378.us99, align 4, !tbaa !3
  %i.dz = getelementptr inbounds nuw i8, ptr %.378.us99, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.179.us98, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.179.us98, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.sroa.642.0.copyload ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.179.us98, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.179.us98, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !3
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.642.0.copyload ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.179.us98, i64 20
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  store i32 %i.en, ptr %i.el, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.179.us98, i64 24
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !3
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.642.0.copyload ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.179.us98, i64 28
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  store i32 %i.et, ptr %i.er, align 4, !tbaa !3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.642.0.copyload ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.179.us98, i64 32 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..loopexit77_crit_edge.us103.unr-lcssa, label %.lr.ph.us102.new, !llvm.loop !203

..loopexit77_crit_edge.us103.unr-lcssa:           ; preds = %.lr.ph.us102.new
  br i1 %lcmp.mod.not, label %..loopexit77_crit_edge.us103, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit77_crit_edge.us103.unr-lcssa, %.lr.ph.us102
  %.179.us98.epil.init = phi ptr [ %gep89.us96, %.lr.ph.us102 ], [ %i.ev, %..loopexit77_crit_edge.us103.unr-lcssa ]
  %.378.us99.epil.init = phi ptr [ %gep.us95, %.lr.ph.us102 ], [ %i.eu, %..loopexit77_crit_edge.us103.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.179.us98.epil = phi ptr [ %.179.us98.epil.init, %.epil.preheader ], [ %i.ey, %bb.y ] ; 2 uses
  %.378.us99.epil = phi ptr [ %.378.us99.epil.init, %.epil.preheader ], [ %i.ex, %bb.y ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.ew = load i32, ptr %.179.us98.epil, align 4, !tbaa !3
  store i32 %i.ew, ptr %.378.us99.epil, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw i8, ptr %.378.us99.epil, i64 %.sroa.642.0.copyload
  %i.ey = getelementptr inbounds nuw i8, ptr %.179.us98.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit77_crit_edge.us103, label %bb.y, !llvm.loop !205

..loopexit77_crit_edge.us103:                     ; preds = %bb.y, %..loopexit77_crit_edge.us103.unr-lcssa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond124.not = icmp eq i32 %11, %lftr.wideiv
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph.us102, !llvm.loop !201

._crit_edge:                                      ; preds = %..loopexit77_crit_edge.us103, %..loopexit77_crit_edge.us.us, %..loopexit_crit_edge.us.us115, %..loopexit_crit_edge.us.us.us, %.lr.ph87.split.split, %.lr.ph87.split.split.us, %.lr.ph87.split.us.split, %.lr.ph87.split.us.split.us, %bb.u
  ret void

bb.z:                                             ; preds = %bb.h, %bb.l, %bb.p, %bb.t, %bb.d
  %.sink = phi ptr [ %i.i, %bb.h ], [ %i.m, %bb.l ], [ %i.o, %bb.p ], [ %i.q, %bb.t ], [ %i.d, %bb.d ]
  %.pn74 = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.n, %bb.l ], [ %i.p, %bb.p ], [ %i.r, %bb.t ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10fillBufferENS_11FrameBuffer13ConstIteratorEiiiii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8, !tbaa !165
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !tbaa !159
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !194 ; 28 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !194 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !3
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 324
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !3
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sroa.14.0.copyload = load double, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !166 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.17.0.copyload = load i8, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !195
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 337
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1, !tbaa !195
  %i.b = icmp ne i32 %.sroa.12.0.copyload, 1
  %i.c = icmp ne i32 %.sroa.13.0.copyload, 1
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not53 = icmp sgt i32 %2, %3
  br i1 %.not53, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader
  %i.d = trunc i8 %.sroa.18.0.copyload to i1
  %i.e = sext i32 %4 to i64
  %i.f = trunc i8 %.sroa.17.0.copyload to i1
  %i.g = sext i32 %5 to i64
  %i.h = mul i64 %.sroa.6.0.copyload, %i.g
  %.1.idx = select i1 %i.f, i64 0, i64 %i.h
  %invariant.gep = getelementptr i8, ptr %.sroa.524.0.copyload, i64 %.1.idx
  %i.i = fptrunc double %.sroa.14.0.copyload to float ; 11 uses
  %i.j = icmp sgt i32 %6, 0                       ; 3 uses
  %i.k = bitcast float %i.i to i32
  %i.l = tail call float @llvm.fabs.f32(float %i.i)
  %i.m = bitcast float %i.l to i32                ; 9 uses
  %i.n = lshr i32 %i.k, 16                        ; 2 uses
  %i.o = trunc nuw i32 %i.n to i16
  %i.p = and i16 %i.o, -32768                     ; 3 uses
  %i.q = icmp samesign ugt i32 %i.m, 947912703
  %i.r = icmp samesign ult i32 %i.m, 855638017
  %i.s = lshr i32 %i.m, 23                        ; 2 uses
  %i.t = sub nuw nsw i32 126, %i.s
  %i.u = and i32 %i.m, 8388607
  %i.v = or disjoint i32 %i.u, 8388608            ; 2 uses
  %i.w = add nsw i32 %i.s, -94
  %i.x = shl i32 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i32 %i.v, %i.t                      ; 2 uses
  %i.z = and i32 %i.n, 32768                      ; 2 uses
  %i.aa = or i32 %i.y, %i.z
  %i.ab = trunc nuw i32 %i.aa to i16
  %i.ac = icmp ugt i32 %i.x, -2147483648
  %i.ad = icmp eq i32 %i.x, -2147483648
  %.not.i.i = trunc i32 %i.y to i16
  %i.ae = icmp samesign ugt i32 %i.m, 2139095039
  %i.af = icmp samesign ugt i32 %i.m, 1199566847
  %i.ag = add nuw nsw i32 %i.m, 134221823
  %i.ah = lshr i32 %i.m, 13                       ; 2 uses
  %i.ai = and i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ag, %i.ai
  %i.ak = lshr i32 %i.aj, 13
  %i.al = or i32 %i.ak, %i.z
  %i.am = trunc i32 %i.al to i16
  %i.an = or disjoint i16 %i.p, 31744
  %i.ao = icmp eq i32 %i.m, 2139095040
  %i.ap = and i32 %i.ah, 1023                     ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i16
  %i.as = trunc nuw nsw i32 %i.ap to i16
  %i.at = or i16 %i.as, %i.ar
  %i.au = fptoui double %.sroa.14.0.copyload to i32 ; 9 uses
  %i.av = sext i32 %2 to i64
  %7 = add i32 %3, 1
  %i.aw = and i16 %.not.i.i, 1
  %i.ax = select i1 %i.ad, i16 %i.aw, i16 0
  %i.ay = select i1 %i.ac, i16 1, i16 %i.ax
  %spec.select56 = add nuw i16 %i.ay, %i.ab
  %. = select i1 %i.af, i16 %i.an, i16 %i.am, !prof !108
  %i.az = select i1 %i.ao, i16 0, i16 %i.at
  %i.ba = or disjoint i16 %i.p, %i.az
  %spec.select = or disjoint i16 %i.ba, 31744
  %xtraiter = and i32 %6, 7                       ; 3 uses
  %i.bb = icmp ult i32 %6, 8
  %unroll_iter = and i32 %6, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod74 = icmp ne i32 %xtraiter, 0
  %spec.select69 = select i1 %i.r, i16 %i.p, i16 %spec.select56
  %spec.select.. = select i1 %i.ae, i16 %spec.select, i16 %., !prof !108
  %.0.i.i = select i1 %i.q, i16 %spec.select.., i16 %spec.select69 ; 9 uses
  %xtraiter75 = and i32 %6, 7                     ; 3 uses
  %i.bc = icmp ult i32 %6, 8
  %unroll_iter79 = and i32 %6, 2147483640
  %lcmp.mod77.not = icmp eq i32 %xtraiter75, 0
  %lcmp.mod78 = icmp ne i32 %xtraiter75, 0
  %xtraiter81 = and i32 %6, 7                     ; 3 uses
  %i.bd = icmp ult i32 %6, 8
  %unroll_iter85 = and i32 %6, 2147483640
  %lcmp.mod83.not = icmp eq i32 %xtraiter81, 0
  %lcmp.mod84 = icmp ne i32 %xtraiter81, 0
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.be = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull @.str.15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.be) #25
  resume { ptr, i32 } %i.bf

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void

bb.e:                                             ; preds = %.lr.ph55, %.loopexit
  %indvars.iv = phi i64 [ %i.av, %.lr.ph55 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = sub nsw i64 %indvars.iv, %i.e
  %i.bh = mul i64 %i.bg, %.sroa.10.0.copyload
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bi = mul i64 %.sroa.10.0.copyload, %indvars.iv
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi i64 [ %i.bh, %bb.f ], [ %i.bi, %bb.g ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.pn ; 6 uses
  switch i32 %.sroa.0.0.copyload, label %.loopexit [
    i32 0, label %bb.i
    i32 1, label %_ZN9Imath_3_14halfC2Ef.exit
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %i.j, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %bb.i
  br i1 %i.bd, label %.lr.ph52.epil.preheader, label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %.250 = phi ptr [ %i.bq, %.lr.ph52 ], [ %gep, %.lr.ph52.preheader ] ; 2 uses
  %niter86 = phi i32 [ %niter86.next.7, %.lr.ph52 ], [ 0, %.lr.ph52.preheader ]
  store i32 %i.au, ptr %.250, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.250, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bj, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bk, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bl, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bm, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bn, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bo, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.6.0.copyload ; 2 uses
  store i32 %i.au, ptr %i.bp, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.6.0.copyload ; 2 uses
  %niter86.next.7 = add i32 %niter86, 8           ; 2 uses
  %niter86.ncmp.7 = icmp eq i32 %niter86.next.7, %unroll_iter85
  br i1 %niter86.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph52, !llvm.loop !206

_ZN9Imath_3_14halfC2Ef.exit:                      ; preds = %bb.h
  br i1 %i.j, label %.lr.ph49.preheader, label %.loopexit

.lr.ph49.preheader:                               ; preds = %_ZN9Imath_3_14halfC2Ef.exit
  br i1 %i.bc, label %.lr.ph49.epil.preheader, label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %.347 = phi ptr [ %i.by, %.lr.ph49 ], [ %gep, %.lr.ph49.preheader ] ; 2 uses
  %niter80 = phi i32 [ %niter80.next.7, %.lr.ph49 ], [ 0, %.lr.ph49.preheader ]
  store i16 %.0.i.i, ptr %.347, align 2, !tbaa !196
  %i.br = getelementptr inbounds nuw i8, ptr %.347, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.br, align 2, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.bs, align 2, !tbaa !196
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.bt, align 2, !tbaa !196
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.bu, align 2, !tbaa !196
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.bv, align 2, !tbaa !196
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.bw, align 2, !tbaa !196
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.6.0.copyload ; 2 uses
  store i16 %.0.i.i, ptr %i.bx, align 2, !tbaa !196
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.6.0.copyload ; 2 uses
  %niter80.next.7 = add i32 %niter80, 8           ; 2 uses
  %niter80.ncmp.7 = icmp eq i32 %niter80.next.7, %unroll_iter79
  br i1 %niter80.ncmp.7, label %.loopexit.loopexit72.unr-lcssa.a, label %.lr.ph49, !llvm.loop !207

bb.j:                                             ; preds = %bb.h
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.j
  br i1 %i.bb, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.445 = phi ptr [ %i.cg, %.lr.ph ], [ %gep, %.lr.ph.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  store float %i.i, ptr %.445, align 4, !tbaa !208
  %i.bz = getelementptr inbounds nuw i8, ptr %.445, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.bz, align 4, !tbaa !208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.ca, align 4, !tbaa !208
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.cb, align 4, !tbaa !208
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.cc, align 4, !tbaa !208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.cd, align 4, !tbaa !208
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.ce, align 4, !tbaa !208
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.6.0.copyload ; 2 uses
  store float %i.i, ptr %i.cf, align 4, !tbaa !208
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.6.0.copyload ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit73.unr-lcssa, label %.lr.ph, !llvm.loop !209

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph52
  br i1 %lcmp.mod83.not, label %.loopexit, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph52.preheader
  %.250.epil.init = phi ptr [ %gep, %.lr.ph52.preheader ], [ %i.bq, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph52.epil

.lr.ph52.epil:                                    ; preds = %.lr.ph52.epil, %.lr.ph52.epil.preheader
  %.250.epil = phi ptr [ %i.ch, %.lr.ph52.epil ], [ %.250.epil.init, %.lr.ph52.epil.preheader ] ; 2 uses
  %epil.iter82 = phi i32 [ %epil.iter82.next, %.lr.ph52.epil ], [ 0, %.lr.ph52.epil.preheader ]
  store i32 %i.au, ptr %.250.epil, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.250.epil, i64 %.sroa.6.0.copyload
  %epil.iter82.next = add i32 %epil.iter82, 1     ; 2 uses
  %epil.iter82.cmp.not = icmp eq i32 %epil.iter82.next, %xtraiter81
  br i1 %epil.iter82.cmp.not, label %.loopexit, label %.lr.ph52.epil, !llvm.loop !210

.loopexit.loopexit72.unr-lcssa.a:                 ; preds = %.lr.ph49
  br i1 %lcmp.mod77.not, label %.loopexit, label %.lr.ph49.epil.preheader

.lr.ph49.epil.preheader:                          ; preds = %.loopexit.loopexit72.unr-lcssa.a, %.lr.ph49.preheader
  %.347.epil.init = phi ptr [ %gep, %.lr.ph49.preheader ], [ %i.by, %.loopexit.loopexit72.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph49.epil

.lr.ph49.epil:                                    ; preds = %.lr.ph49.epil, %.lr.ph49.epil.preheader
  %.347.epil = phi ptr [ %i.ci, %.lr.ph49.epil ], [ %.347.epil.init, %.lr.ph49.epil.preheader ] ; 2 uses
  %epil.iter76 = phi i32 [ %epil.iter76.next, %.lr.ph49.epil ], [ 0, %.lr.ph49.epil.preheader ]
  store i16 %.0.i.i, ptr %.347.epil, align 2, !tbaa !196
  %i.ci = getelementptr inbounds nuw i8, ptr %.347.epil, i64 %.sroa.6.0.copyload
  %epil.iter76.next = add i32 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i32 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %.loopexit, label %.lr.ph49.epil, !llvm.loop !211

.loopexit.loopexit73.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit73.unr-lcssa, %.lr.ph.preheader
  %.445.epil.init = phi ptr [ %gep, %.lr.ph.preheader ], [ %i.cg, %.loopexit.loopexit73.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.445.epil = phi ptr [ %i.cj, %.lr.ph.epil ], [ %.445.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store float %i.i, ptr %.445.epil, align 4, !tbaa !208
  %i.cj = getelementptr inbounds nuw i8, ptr %.445.epil, i64 %.sroa.6.0.copyload
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !212

.loopexit:                                        ; preds = %.loopexit.loopexit73.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit72.unr-lcssa.a, %.lr.ph49.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph52.epil, %bb.j, %_ZN9Imath_3_14halfC2Ef.exit, %bb.i, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond64.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond64.not, label %._crit_edge, label %bb.e, !llvm.loop !213
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !214
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !214
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context9partCountEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context6headerEi(ptr dead_on_unwind writable sret(%"class.OpenImageIO_v3_1_Imf__3_3_5::Header") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !144    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmEET_S5_T0_(ptr noundef %i.b, i64 noundef %1)
  store ptr %i.p, ptr %i.a, align 8, !tbaa !143
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 56                 ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 4 uses
  %i.w = invoke noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmEET_S5_T0_(ptr noundef nonnull %i.v, i64 noundef %1)
          to label %_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit unwind label %.body.thread ; 0 uses

_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not14.i.i.i.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.u, %_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit ] ; 2 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 56
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i41, label %.lr.ph.i.i.i.i.i, !llvm.loop !216

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.u, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i.i.i.i.i) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !145

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body.thread:                                     ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #25 ; 0 uses
  br label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit

.body:                                            ; preds = %bb.g
  %i.aj = extractvalue { ptr, i32 } %i.ad, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #25 ; 0 uses
  %.idx = mul nuw nsw i64 %1, 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.v, %.body ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i) #25
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i, !llvm.loop !145

bb.j:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.n

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i, %.body.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.t) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.o unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.an

.lr.ph.i.i41:                                     ; preds = %_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i41
  %.05.i.i42 = phi ptr [ %i.ao, %.lr.ph.i.i41 ], [ %i.c, %_ZSt10_ConstructIN27OpenImageIO_v3_1_Imf__3_3_56HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i42) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i42, i64 56 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i43, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44, label %.lr.ph.i.i41, !llvm.loop !145

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44: ; preds = %.lr.ph.i.i41, %_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit
  %.not.i45 = icmp eq ptr %i.c, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE13_M_deallocateEPS1_m.exit46, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
end_hunk_1
