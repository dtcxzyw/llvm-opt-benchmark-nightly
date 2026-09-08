Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXParser?download=true
inline.NumInlined: 1816
inline.NumDeleted: 629
begin_hunk_0_@_ZN6Assimp3FBX18ParseTokenAsStringB5cxx11ERKNS0_5TokenERPKc:bb.a
  store i8 0, ptr %i.ah, align 8
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.ac, align 1
  %.not25 = icmp eq i8 %i.aj, 34
  br i1 %.not25, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.al = load i8, ptr %i.ak, align 1
  %.not26 = icmp eq i8 %i.al, 34
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr @.str.21, ptr %2, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8
  store i8 0, ptr %i.am, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ap = add i64 %i.af, -2                       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aq, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.ap, ptr %i.a, align 8
  %i.ar = icmp ugt i64 %i.ap, 15
  br i1 %i.ar, label %.noexc.i30, label %._crit_edge.i.i29

.noexc.i30:                                       ; preds = %bb.o
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %0, align 8
  %i.at = load i64, ptr %i.a, align 8
  store i64 %i.at, ptr %i.aq, align 8
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc.i30, %bb.o
  %i.au = phi ptr [ %i.as, %.noexc.i30 ], [ %i.aq, %bb.o ] ; 2 uses
  switch i64 %i.ap, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i29
  %i.av = load i8, ptr %i.ao, align 1
  store i8 %i.av, ptr %i.au, align 1
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i29
  %i.aw = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r, %bb.n, %bb.e, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector3tIfESaIS3_EERKNS0_7ElementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address_is_null) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::vector.17", align 8   ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %1) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %6, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn85 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.q = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %bb.av

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.u = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 5
  br i1 %i.aa, label %bb.i, label %_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #26
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn82.pn, %bb.au ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit: ; preds = %bb.h
  %i.ah = load i8, ptr %i.u, align 1              ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.val.i = load i32, ptr %i.ai, align 1          ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = urem i32 %.val.i, 3
  %i.al = udiv exact i32 %.val.i, 3               ; 3 uses
  %.not71 = icmp eq i32 %i.ak, 0
  br i1 %.not71, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %1) #26
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.p:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %8, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.p
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.o
  %.pn82 = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.an, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.au

bb.q:                                             ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_123ReadBinaryDataArrayHeadERPKcS3_RcRjRKNS0_7ElementE.exit
  %.not72 = icmp eq i32 %.val.i, 0
  br i1 %.not72, label %bb.at, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = and i8 %i.ah, -3
  %or.cond.not = icmp eq i8 %i.at, 100
  br i1 %or.cond.not, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %1) #26
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.w:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %10, align 8              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.w
  %i.az = load i64, ptr %i.ax, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.v
  %.pn80 = phi { ptr, i32 } [ %i.au, %bb.v ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.av, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.au

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_119ReadBinaryDataArrayEcjRPKcS3_RSt6vectorIcSaIcEERKNS0_7ElementE(i8 noundef signext %i.ah, i32 noundef %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bb = zext i32 %.val.i to i64
  %i.bc = icmp eq i8 %i.ah, 100
  %i.bd = select i1 %i.bc, i64 3, i64 2
  %i.be = shl nuw nsw i64 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %12, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.not73 = icmp eq i64 %i.be, %i.bk
  br i1 %.not73, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %1) #26
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ad:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.ae:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %13, align 8              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ae
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.ad
  %.pn76 = phi { ptr, i32 } [ %i.bm, %bb.ad ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.bn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ar

bb.af:                                            ; preds = %bb.y
  %i.bt = zext nneg i32 %i.al to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 12
  %i.cb = icmp ult i64 %i.ca, %i.bt
  br i1 %i.cb, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.af
  %i.cc = load ptr, ptr %i.b, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.by
  %i.cf = mul nuw nsw i64 %i.bt, 12
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc unwind label %bb.ah    ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.ch = load ptr, ptr %0, align 8               ; 5 uses
  %i.ci = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.cg, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.ch, %.noexc ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !35
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.ch, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cl = load ptr, ptr %i.bu, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.co) #27
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.cg, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store ptr %i.cp, ptr %i.b, align 8
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.bt
  store ptr %i.cq, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.af
  switch i8 %i.ah, label %.loopexit [
    i8 100, label %.lr.ph200.preheader
    i8 102, label %.lr.ph197.preheader
  ]

.lr.ph200.preheader:                              ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.cr = load ptr, ptr %12, align 8
  %.pre207 = load ptr, ptr %i.b, align 8
  br label %.lr.ph200

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit
  %i.ct = phi ptr [ %.pre207, %.lr.ph200.preheader ], [ %i.dy, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit ] ; 6 uses
  %.051199 = phi i32 [ 0, %.lr.ph200.preheader ], [ %i.dz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit ]
  %.052198 = phi ptr [ %i.cr, %.lr.ph200.preheader ], [ %i.ea, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit ] ; 3 uses
  %i.cu = load <2 x double>, ptr %.052198, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.052198, i64 16
  %i.cw = load double, ptr %i.cv, align 8
  %i.cx = fptrunc <2 x double> %i.cu to <2 x float> ; 2 uses
  %i.cy = fptrunc double %i.cw to float           ; 2 uses
  %i.cz = load ptr, ptr %i.bu, align 8
  %.not.i = icmp eq ptr %i.ct, %i.cz
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph200
  store <2 x float> %i.cx, ptr %i.ct, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cy, ptr %i.da, align 4
  %i.db = load ptr, ptr %i.b, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 12 ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit

bb.aj:                                            ; preds = %.lr.ph200
  %i.dd = load ptr, ptr %0, align 8               ; 5 uses
  %i.de = ptrtoint ptr %i.ct to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.ak, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.di = sdiv exact i64 %i.dg, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 768614336404564650)
  %i.dm = select i1 %i.dk, i64 768614336404564650, i64 %i.dl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dn = mul nuw nsw i64 %i.dm, 12
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #28
          to label %.noexc98 unwind label %.loopexit183 ; 5 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg ; 2 uses
  store <2 x float> %i.cx, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store float %i.cy, ptr %i.dq, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.dd, %i.ct
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc98, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i ], [ %i.do, %.noexc98 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.dd, %.noexc98 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !36
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, %i.ct
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc98
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.do, %.noexc98 ], [ %i.ds, %.lr.ph.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  %i.du = load ptr, ptr %i.bu, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dw) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.do, ptr %0, align 8
  store ptr %i.dt, ptr %i.b, align 8
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dx, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ai
  %i.dy = phi ptr [ %i.dt, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dc, %bb.ai ]
  %i.dz = add nuw nsw i32 %.051199, 1             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.052198, i64 24
  %exitcond206.not = icmp eq i32 %i.dz, %i.al
  br i1 %exitcond206.not, label %.loopexit, label %.lr.ph200, !llvm.loop !23

.loopexit183:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph197.preheader:                              ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.eb = load ptr, ptr %12, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit
  %i.ec = phi ptr [ %.pre, %.lr.ph197.preheader ], [ %i.ff, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit ] ; 6 uses
  %.0196 = phi i32 [ 0, %.lr.ph197.preheader ], [ %i.fg, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit ]
  %.050195 = phi ptr [ %i.eb, %.lr.ph197.preheader ], [ %i.fh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit ] ; 3 uses
  %i.ed = load <2 x float>, ptr %.050195, align 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.050195, i64 8
  %i.ef = load float, ptr %i.ee, align 4          ; 2 uses
  %i.eg = load ptr, ptr %i.bu, align 8
  %.not.i99 = icmp eq ptr %i.ec, %i.eg
  br i1 %.not.i99, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph197
  store <2 x float> %i.ed, ptr %i.ec, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store float %i.ef, ptr %i.eh, align 4
  %i.ei = load ptr, ptr %i.b, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12 ; 2 uses
  store ptr %i.ej, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit

bb.an:                                            ; preds = %.lr.ph197
  %i.ek = load ptr, ptr %0, align 8               ; 5 uses
  %i.el = ptrtoint ptr %i.ec to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.ao, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i100

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #26
          to label %.noexc111 unwind label %.loopexit.split-lp186

.noexc111:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i100: ; preds = %bb.an
  %i.ep = sdiv exact i64 %i.en, 12                ; 3 uses
  %.sroa.speculated.i.i.i101 = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i101, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 768614336404564650)
  %i.et = select i1 %i.er, i64 768614336404564650, i64 %i.es ; 3 uses
  %.not.i.i.i102 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i102)
  %i.eu = mul nuw nsw i64 %i.et, 12
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #28
          to label %.noexc112 unwind label %.loopexit185 ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i100
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en ; 2 uses
  store <2 x float> %i.ed, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store float %i.ef, ptr %i.ex, align 4
  %.not10.i.i.i.i.i103 = icmp eq ptr %i.ek, %i.ec
  br i1 %.not10.i.i.i.i.i103, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i108, label %.lr.ph.i.i.i.i.i104

.lr.ph.i.i.i.i.i104:                              ; preds = %.noexc112, %.lr.ph.i.i.i.i.i104
  %.012.i.i.i.i.i105 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i104 ], [ %i.ev, %.noexc112 ] ; 2 uses
  %.0911.i.i.i.i.i106 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i104 ], [ %i.ek, %.noexc112 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i105, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i106, i64 12, i1 false), !alias.scope !37
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i106, i64 12 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i105, i64 12 ; 2 uses
  %.not.i.i.i.i.i107 = icmp eq ptr %i.ey, %i.ec
  br i1 %.not.i.i.i.i.i107, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i108, label %.lr.ph.i.i.i.i.i104, !llvm.loop !19

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i108: ; preds = %.lr.ph.i.i.i.i.i104, %.noexc112
  %.0.lcssa.i.i.i.i.i109 = phi ptr [ %i.ev, %.noexc112 ], [ %i.ez, %.lr.ph.i.i.i.i.i104 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i109, i64 12 ; 2 uses
  %.not.i35.i.i110 = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i.i110, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i108
  %i.fb = load ptr, ptr %i.bu, align 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.fd) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i108
  store ptr %i.ev, ptr %0, align 8
  store ptr %i.fa, ptr %i.b, align 8
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fe, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.am
  %i.ff = phi ptr [ %i.fa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ej, %bb.am ]
  %i.fg = add nuw nsw i32 %.0196, 1               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.050195, i64 12
  %exitcond.not = icmp eq i32 %i.fg, %i.al
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph197, !llvm.loop !27

.loopexit185:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i100
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp186:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_S6_EEERS1_DpOT_.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.fi = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.loopexit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.at

bb.ar:                                            ; preds = %.loopexit185, %.loopexit.split-lp186, %.loopexit183, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.ah, %bb.ac
  %.pn76.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.ac ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.cs, %bb.ah ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit183 ], [ %lpad.loopexit187, %.loopexit185 ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp186 ]
  %i.fo = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIcSaIcEED2Ev.exit115, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.ft) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit115

_ZNSt6vectorIcSaIcEED2Ev.exit115:                 ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.au

bb.at:                                            ; preds = %bb.q, %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit190

bb.au:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn76.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %common.resume

bb.av:                                            ; preds = %bb.g
  %i.fu = tail call noundef i64 @_ZN6Assimp3FBX15ParseTokenAsDimERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.q) ; 4 uses
  %i.fv = icmp ugt i64 %i.fu, 768614336404564650
  br i1 %i.fv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load ptr, ptr %0, align 8
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 12
  %i.gd = icmp ult i64 %i.gc, %i.fu
  br i1 %i.gd, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i116, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit125

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i116: ; preds = %bb.ax
  %i.ge = load ptr, ptr %i.b, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.ga
  %i.gh = mul nuw nsw i64 %i.fu, 12
  %i.gi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #28 ; 4 uses
  %i.gj = load ptr, ptr %0, align 8               ; 5 uses
  %i.gk = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not10.i.i.i.i117 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not10.i.i.i.i117, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i122, label %.lr.ph.i.i.i.i118

.lr.ph.i.i.i.i118:                                ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i116, %.lr.ph.i.i.i.i118
  %.012.i.i.i.i119 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i118 ], [ %i.gi, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i116 ] ; 2 uses
  %.0911.i.i.i.i120 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i118 ], [ %i.gj, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i116 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i119, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i120, i64 12, i1 false), !alias.scope !38
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i120, i64 12 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i119, i64 12
  %.not.i.i.i.i121 = icmp eq ptr %i.gl, %i.gk
  br i1 %.not.i.i.i.i121, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i122, label %.lr.ph.i.i.i.i118, !llvm.loop !19

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i122: ; preds = %.lr.ph.i.i.i.i118, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i116
  %.not.i8.i123 = icmp eq ptr %i.gj, null
  br i1 %.not.i8.i123, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i124, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i122
  %i.gn = load ptr, ptr %i.fw, align 8
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gj to i64
  %i.gq = sub i64 %i.go, %i.gp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gq) #27
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i124

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i124: ; preds = %bb.ay, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i122
  store ptr %i.gi, ptr %0, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store ptr %i.gr, ptr %i.b, align 8
  %i.gs = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.fu
  store ptr %i.gs, ptr %i.fw, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit125

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit125: ; preds = %bb.ax, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i124
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not.i126 = icmp eq ptr %i.gu, null
  br i1 %.not.i126, label %bb.az, label %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit

bb.az:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #26
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = load ptr, ptr %2, align 8               ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.bb
  %i.gz = load i64, ptr %i.gx, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.hb, ptr %15, align 8
  store i8 97, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.hd, align 1
  %i.he = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %1)
          to label %bb.bc unwind label %bb.bg     ; 2 uses

bb.bc:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.hf = load ptr, ptr %15, align 8              ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.hb
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bc
  %i.hh = load i64, ptr %i.hb, align 8
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8            ; 3 uses
  %i.hm = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = ashr exact i64 %i.hp, 3
  %i.hr = urem i64 %i.hq, 3
  %.not = icmp eq i64 %i.hr, 0
  br i1 %.not, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.not182193 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not182193, label %.loopexit190, label %.lr.ph

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_ZN12_GLOBAL__N_110ParseErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %1) #26
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %_ZN6Assimp3FBX16GetRequiredScopeERKNS0_7ElementE.exit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  %i.ht = load ptr, ptr %15, align 8              ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.hb
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
end_hunk_0
