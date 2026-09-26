Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edgeaware_filters_common?download=true
inline.NumInlined: 120
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv8ximgproc24getTotalNumberOfChannelsERKNS_11_InputArrayE:bb.a

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !48
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.g = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = icmp eq i32 %i.c, 655360
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.f = icmp eq i32 %i.e, 327680
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = icmp eq i32 %i.g, 720896
  br i1 %i.h, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 105) #12
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %11, align 8, !tbaa !13    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !14
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %common.resume

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.s = icmp eq i32 %i.r, 655360
  br i1 %i.s, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.t = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.t, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 109) #12
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.q:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %13, align 8, !tbaa !13    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.q
  %i.z = load i64, ptr %i.x, align 8, !tbaa !14
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.p
  %.pn81 = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.v, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %common.resume

bb.r:                                             ; preds = %bb.l
  %i.ab = tail call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  store i64 %i.ab, ptr %1, align 4, !tbaa !52
  %i.ac = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %.sink.split

bb.s:                                             ; preds = %bb.k
  %i.ad = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ae = icmp eq i32 %i.ad, 327680
  br i1 %i.ae, label %bb.t, label %bb.bd

bb.t:                                             ; preds = %bb.s
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 8 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 208
  %.not72 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not72, label %bb.u, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.t
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 84 ; 2 uses
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 116) #12
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.y:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %15, align 8, !tbaa !13   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.y
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !14
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.x
  %.pn73 = phi { ptr, i32 } [ %i.ar, %bb.x ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.as, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %common.resume

bb.z:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit119
  %i.ay = add i32 %.060170, 1                     ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ugt i64 %i.an, %i.az
  br i1 %i.ba, label %bb.ad, label %._crit_edge172, !llvm.loop !50

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101
  %common.resume.op = phi { ptr, i32 } [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140 ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150 ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ]
  resume { ptr, i32 } %common.resume.op

._crit_edge172:                                   ; preds = %bb.z
  %i.bb = icmp sgt i32 %i.db, 0
  br i1 %i.bb, label %bb.aa, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge172
  %i.bc = icmp eq i32 %i.db, 0
  %i.bd = zext i1 %i.bc to i32
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge172
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 84 ; 2 uses
  %i.bf = icmp eq i32 %i.db, 2
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !52 ; 2 uses
  %.not.i = icmp eq i32 %i.db, 1
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !52
  br label %_ZNK2cv8MatShapeclEv.exit

bb.ac:                                            ; preds = %bb.aa, %.thread.i
  %i.bk = phi i32 [ %i.bd, %.thread.i ], [ %i.bi, %bb.aa ]
  %i.bl = icmp sgt i32 %i.db, -1
  %i.bm = zext i1 %i.bl to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.ab, %bb.ac
  %i.bn = phi i32 [ %i.bi, %bb.ab ], [ %i.bk, %bb.ac ]
  %i.bo = phi i32 [ %i.bj, %bb.ab ], [ %i.bm, %bb.ac ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.bo to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bn to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 4, !tbaa !52
  %i.bp = load i32, ptr %i.aj, align 8, !tbaa !28
  %i.bq = and i32 %i.bp, 31
  br label %.sink.split

bb.ad:                                            ; preds = %.lr.ph171, %bb.z
  %i.br = phi i64 [ 0, %.lr.ph171 ], [ %i.az, %bb.z ]
  %.060170 = phi i32 [ 0, %.lr.ph171 ], [ %i.ay, %bb.z ]
  %i.bs = getelementptr inbounds nuw [208 x i8], ptr %i.aj, i64 %i.br ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !28
  %i.bu = xor i32 %i.ao, %i.bt
  %i.bv = and i32 %i.bu, 31
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 119) #12
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.ai:                                            ; preds = %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ai
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !14
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ah
  %.pn75 = phi { ptr, i32 } [ %i.bx, %bb.ah ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.by, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %common.resume

bb.aj:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !53 ; 6 uses
  %i.cg = icmp slt i32 %i.cf, 3
  br i1 %i.cg, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #12
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %9, align 8, !tbaa !13    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.am
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !14
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %common.resume

bb.an:                                            ; preds = %bb.aj
  %i.cn = icmp sgt i32 %i.cf, 0
  br i1 %i.cn, label %bb.ao, label %.thread.i103

.thread.i103:                                     ; preds = %bb.an
  %i.co = icmp eq i32 %i.cf, 0
  %i.cp = zext i1 %i.co to i32
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 84 ; 2 uses
  %i.cr = icmp eq i32 %i.cf, 2
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !52 ; 2 uses
  %.not.i108 = icmp eq i32 %i.cf, 1
  br i1 %.not.i108, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cv = load i32, ptr %i.cq, align 4, !tbaa !52
  br label %_ZNK2cv8MatShapeclEv.exit109

bb.aq:                                            ; preds = %bb.ao, %.thread.i103
  %i.cw = phi i32 [ %i.cp, %.thread.i103 ], [ %i.cu, %bb.ao ]
  %i.cx = icmp sgt i32 %i.cf, -1
  %i.cy = zext i1 %i.cx to i32
  br label %_ZNK2cv8MatShapeclEv.exit109

_ZNK2cv8MatShapeclEv.exit109:                     ; preds = %bb.ap, %bb.aq
  %i.cz = phi i32 [ %i.cu, %bb.ap ], [ %i.cw, %bb.aq ]
  %i.da = phi i32 [ %i.cv, %bb.ap ], [ %i.cy, %bb.aq ]
  %i.db = load i32, ptr %i.ap, align 8, !tbaa !53 ; 11 uses
  %i.dc = icmp slt i32 %i.db, 3
  br i1 %i.dc, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #12
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110: ; preds = %bb.at
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !14
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i111: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %common.resume

bb.au:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit109
  %i.dj = icmp sgt i32 %i.db, 0
  br i1 %i.dj, label %bb.av, label %.thread.i113

.thread.i113:                                     ; preds = %bb.au
  %i.dk = icmp eq i32 %i.db, 0
  %i.dl = zext i1 %i.dk to i32
  br label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dm = icmp eq i32 %i.db, 2
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !52 ; 2 uses
  %.not.i118 = icmp eq i32 %i.db, 1
  br i1 %.not.i118, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dq = load i32, ptr %i.aq, align 4, !tbaa !52
  br label %_ZNK2cv8MatShapeclEv.exit119

bb.ax:                                            ; preds = %bb.av, %.thread.i113
  %i.dr = phi i32 [ %i.dl, %.thread.i113 ], [ %i.dp, %bb.av ]
  %i.ds = icmp sgt i32 %i.db, -1
  %i.dt = zext i1 %i.ds to i32
  br label %_ZNK2cv8MatShapeclEv.exit119

_ZNK2cv8MatShapeclEv.exit119:                     ; preds = %bb.aw, %bb.ax
  %i.du = phi i32 [ %i.dp, %bb.aw ], [ %i.dr, %bb.ax ]
  %i.dv = phi i32 [ %i.dq, %bb.aw ], [ %i.dt, %bb.ax ]
  %i.dw = icmp eq i32 %i.cz, %i.du
  %i.dx = icmp eq i32 %i.da, %i.dv
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %bb.z, label %bb.ay

bb.ay:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 120) #12
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.bc:                                            ; preds = %bb.az
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %19, align 8, !tbaa !13   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.bc
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !14
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.bb
  %.pn77 = phi { ptr, i32 } [ %i.dz, %bb.bb ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.ea, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %common.resume

bb.bd:                                            ; preds = %bb.s
  %i.eg = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.eh = icmp eq i32 %i.eg, 720896
  br i1 %i.eh, label %bb.be, label %bb.co

bb.be:                                            ; preds = %bb.bd
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !17 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !34 ; 2 uses
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !35 ; 8 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 184
  %.not = icmp eq ptr %i.el, %i.em
  br i1 %.not, label %bb.bf, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %i.er = load i32, ptr %i.em, align 8, !tbaa !38
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 60 ; 2 uses
  br label %bb.bo

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 128) #12
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.bj:                                            ; preds = %bb.bg
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %21, align 8, !tbaa !13   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.bj
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !14
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.bi
  %.pn64 = phi { ptr, i32 } [ %i.eu, %bb.bi ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %i.ev, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %common.resume

bb.bk:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit158
  %i.fb = add i32 %.046169, 1                     ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp ugt i64 %i.eq, %i.fc
  br i1 %i.fd, label %bb.bo, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.bk
  %i.fe = icmp sgt i32 %i.he, 0
  br i1 %i.fe, label %bb.bl, label %.thread.i129

.thread.i129:                                     ; preds = %._crit_edge
  %i.ff = icmp eq i32 %i.he, 0
  %i.fg = zext i1 %i.ff to i32
  br label %bb.bn

bb.bl:                                            ; preds = %._crit_edge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 60 ; 2 uses
  %i.fi = icmp eq i32 %i.he, 2
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !52 ; 2 uses
  %.not.i134 = icmp eq i32 %i.he, 1
  br i1 %.not.i134, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fm = load i32, ptr %i.fh, align 4, !tbaa !52
  br label %_ZNK2cv8MatShapeclEv.exit135

bb.bn:                                            ; preds = %bb.bl, %.thread.i129
  %i.fn = phi i32 [ %i.fg, %.thread.i129 ], [ %i.fl, %bb.bl ]
  %i.fo = icmp sgt i32 %i.he, -1
  %i.fp = zext i1 %i.fo to i32
  br label %_ZNK2cv8MatShapeclEv.exit135

_ZNK2cv8MatShapeclEv.exit135:                     ; preds = %bb.bm, %bb.bn
  %i.fq = phi i32 [ %i.fl, %bb.bm ], [ %i.fn, %bb.bn ]
  %i.fr = phi i32 [ %i.fm, %bb.bm ], [ %i.fp, %bb.bn ]
  %.sroa.2.0.insert.ext.i130 = zext i32 %i.fr to i64
  %.sroa.2.0.insert.shift.i131 = shl nuw i64 %.sroa.2.0.insert.ext.i130, 32
  %.sroa.0.0.insert.ext.i132 = zext i32 %i.fq to i64
  %.sroa.0.0.insert.insert.i133 = or disjoint i64 %.sroa.2.0.insert.shift.i131, %.sroa.0.0.insert.ext.i132
  store i64 %.sroa.0.0.insert.insert.i133, ptr %1, align 4, !tbaa !52
  %i.fs = load i32, ptr %i.em, align 8, !tbaa !38
  %i.ft = and i32 %i.fs, 31
  br label %.sink.split

bb.bo:                                            ; preds = %.lr.ph, %bb.bk
  %i.fu = phi i64 [ 0, %.lr.ph ], [ %i.fc, %bb.bk ]
  %.046169 = phi i32 [ 0, %.lr.ph ], [ %i.fb, %bb.bk ]
  %i.fv = getelementptr inbounds nuw [184 x i8], ptr %i.em, i64 %i.fu ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !38
  %i.fx = xor i32 %i.er, %i.fw
  %i.fy = and i32 %i.fx, 31
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 131) #12
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bp
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.bt:                                            ; preds = %bb.bq
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = load ptr, ptr %23, align 8, !tbaa !13   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.bt
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !14
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.bs
  %.pn66 = phi { ptr, i32 } [ %i.ga, %bb.bs ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.gb, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %common.resume

bb.bu:                                            ; preds = %bb.bo
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !53 ; 6 uses
  %i.gj = icmp slt i32 %i.gi, 3
  br i1 %i.gj, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #12
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.bx
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !14
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %common.resume

bb.by:                                            ; preds = %bb.bu
  %i.gq = icmp sgt i32 %i.gi, 0
  br i1 %i.gq, label %bb.bz, label %.thread.i142

.thread.i142:                                     ; preds = %bb.by
  %i.gr = icmp eq i32 %i.gi, 0
  %i.gs = zext i1 %i.gr to i32
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fv, i64 60 ; 2 uses
  %i.gu = icmp eq i32 %i.gi, 2
  %i.gv = zext i1 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !52 ; 2 uses
  %.not.i147 = icmp eq i32 %i.gi, 1
  br i1 %.not.i147, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gy = load i32, ptr %i.gt, align 4, !tbaa !52
  br label %_ZNK2cv8MatShapeclEv.exit148

bb.cb:                                            ; preds = %bb.bz, %.thread.i142
  %i.gz = phi i32 [ %i.gs, %.thread.i142 ], [ %i.gx, %bb.bz ]
  %i.ha = icmp sgt i32 %i.gi, -1
  %i.hb = zext i1 %i.ha to i32
  br label %_ZNK2cv8MatShapeclEv.exit148

_ZNK2cv8MatShapeclEv.exit148:                     ; preds = %bb.ca, %bb.cb
  %i.hc = phi i32 [ %i.gx, %bb.ca ], [ %i.gz, %bb.cb ]
  %i.hd = phi i32 [ %i.gy, %bb.ca ], [ %i.hb, %bb.cb ]
  %i.he = load i32, ptr %i.es, align 8, !tbaa !53 ; 11 uses
  %i.hf = icmp slt i32 %i.he, 3
  br i1 %i.hf, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #12
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149: ; preds = %bb.ce
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !14
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i150: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %common.resume

bb.cf:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit148
  %i.hm = icmp sgt i32 %i.he, 0
  br i1 %i.hm, label %bb.cg, label %.thread.i152

.thread.i152:                                     ; preds = %bb.cf
  %i.hn = icmp eq i32 %i.he, 0
  %i.ho = zext i1 %i.hn to i32
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.hp = icmp eq i32 %i.he, 2
  %i.hq = zext i1 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !52 ; 2 uses
  %.not.i157 = icmp eq i32 %i.he, 1
  br i1 %.not.i157, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ht = load i32, ptr %i.et, align 4, !tbaa !52
  br label %_ZNK2cv8MatShapeclEv.exit158

bb.ci:                                            ; preds = %bb.cg, %.thread.i152
  %i.hu = phi i32 [ %i.ho, %.thread.i152 ], [ %i.hs, %bb.cg ]
  %i.hv = icmp sgt i32 %i.he, -1
  %i.hw = zext i1 %i.hv to i32
  br label %_ZNK2cv8MatShapeclEv.exit158

_ZNK2cv8MatShapeclEv.exit158:                     ; preds = %bb.ch, %bb.ci
  %i.hx = phi i32 [ %i.hs, %bb.ch ], [ %i.hu, %bb.ci ]
  %i.hy = phi i32 [ %i.ht, %bb.ch ], [ %i.hw, %bb.ci ]
  %i.hz = icmp eq i32 %i.hc, %i.hx
  %i.ia = icmp eq i32 %i.hd, %i.hy
  %i.ib = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %i.ib, label %bb.bk, label %bb.cj

bb.cj:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv8ximgproc21checkSameSizeAndDepthERKNS_11_InputArrayERNS_5Size_IiEERi, ptr noundef nonnull @.str.1, i32 noundef 132) #12
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  unreachable

bb.cm:                                            ; preds = %bb.cj
  %i.ic = landingpad { ptr, i32 }
end_hunk_0
