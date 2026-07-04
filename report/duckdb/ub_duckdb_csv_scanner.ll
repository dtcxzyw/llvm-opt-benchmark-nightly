inline.NumInlined: 6115
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNK6duckdb16FullLinePosition22ReconstructCurrentLineISt13unordered_mapImNS_10shared_ptrINS_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbRT_b:bb.a
  %i.ht = icmp eq ptr %i.hs, %i.hq
  br i1 %i.ht, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.hu = load i64, ptr %i.hp, align 8, !tbaa !83 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nuw nsw i64 %i.hu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hr, ptr noundef nonnull align 8 dereferenceable(1) %i.hq, i64 %i.hw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bi
  store ptr %i.hs, ptr %0, align 8, !tbaa !74
  %i.hx = load i64, ptr %i.hq, align 8, !tbaa !62
  store i64 %i.hx, ptr %i.hr, align 8, !tbaa !62
  %.pre174 = load i64, ptr %i.hp, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hy = phi i64 [ %i.hu, %bb.bj ], [ %.pre174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !83
  store i64 0, ptr %i.hp, align 8, !tbaa !83
  store i8 0, ptr %i.hq, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.bk:                                            ; preds = %.loopexit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bl

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w, %bb.q, %bb.t, %bb.az, %bb.bb, %bb.be, %bb.bh, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ap, %bb.bk
  %i.ib = phi ptr [ %i.hq, %bb.bk ], [ %i.u, %bb.bb ], [ %i.u, %bb.ap ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %bb.q ], [ %i.u, %bb.az ], [ %i.u, %bb.ba ], [ %i.u, %bb.be ], [ %i.u, %bb.bh ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ad, %bb.w ], [ %i.ad, %bb.t ]
  %.pn66 = phi { ptr, i32 } [ %i.ia, %bb.bk ], [ %i.gf, %bb.bb ], [ %.pn61138, %bb.ap ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ca, %bb.q ], [ %i.gd, %bb.az ], [ %i.ge, %bb.ba ], [ %i.gw, %bb.be ], [ %i.ho, %bb.bh ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dh, %bb.w ], [ %i.cp, %bb.t ]
  %i.ic = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ib
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ic) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %.pn66

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.d
  ret void

bb.bm:                                            ; preds = %bb.an
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb17StringValueResult14PrintErrorLineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(930) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i64 %i.b, 1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214, !nonnull !146, !align !215
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216, !nonnull !146, !align !215 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 147
  %i.h = load i8, ptr %i.g, align 1, !tbaa !56, !range !145, !noundef !146
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 145
  %i.k = load i8, ptr %i.j, align 1, !tbaa !56, !range !145, !noundef !146
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = xor i1 %i.l, true
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %bb.c ]
  ret i1 %i.n
}

declare void @_ZN6duckdb16LinesPerBoundaryC1Emm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #4

declare void @_ZN6duckdb8CSVError11InvalidUTF8ERKNS_16CSVReaderOptionsEmNS_16LinesPerBoundaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_12optional_idxERKNS_6StringE(ptr dead_on_unwind writable sret(%"class.duckdb::CSVError") align 8, ptr noundef nonnull align 8 dereferenceable(1033), i64 noundef, i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !692
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb9LineError12HandleErrorsERNS_17StringValueResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(930) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 16 uses
  %i.a = alloca i8, align 1                       ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %5 = alloca %"class.duckdb::CSVError", align 8  ; 32 uses
  %6 = alloca %"class.duckdb::CSVError", align 8  ; 11 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %8 = alloca %"class.duckdb::CSVError", align 8  ; 11 uses
  %9 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %10 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %11 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %12 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %13 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %14 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %15 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %16 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %17 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %20 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 2 uses
  %21 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %22 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %23 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 2 uses
  %24 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %25 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %26 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %27 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %28 = alloca %"class.duckdb::CSVError", align 8 ; 11 uses
  %29 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !694    ; 48 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694  ; 5 uses
  %.not312439 = icmp eq ptr %i.c, %i.e            ; 3 uses
  br i1 %.not312439, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %32 = ptrtoaddr ptr %i.e to i64
  %33 = ptrtoaddr ptr %i.c to i64
  %i.f = add i64 %32, -88
  %i.g = sub i64 %i.f, %33                        ; 3 uses
  %i.h = udiv i64 %i.g, 88
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 616
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check542 = icmp ult i64 %i.g, 2728
  br i1 %min.iters.check542, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 576460752303423456       ; 4 uses
  %i.j = mul i64 %n.vec, 88
  %i.k = getelementptr i8, ptr %i.c, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi543 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.l = mul i64 %index, 88                       ; 32 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.l
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep544 = getelementptr i8, ptr %i.m, i64 88
  %i.n = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep545 = getelementptr i8, ptr %i.n, i64 176
  %i.o = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep546 = getelementptr i8, ptr %i.o, i64 264
  %i.p = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep547 = getelementptr i8, ptr %i.p, i64 352
  %i.q = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep548 = getelementptr i8, ptr %i.q, i64 440
  %i.r = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep549 = getelementptr i8, ptr %i.r, i64 528
  %i.s = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep550 = getelementptr i8, ptr %i.s, i64 616
  %i.t = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep551 = getelementptr i8, ptr %i.t, i64 704
  %i.u = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep552 = getelementptr i8, ptr %i.u, i64 792
  %i.v = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep553 = getelementptr i8, ptr %i.v, i64 880
  %i.w = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep554 = getelementptr i8, ptr %i.w, i64 968
  %i.x = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep555 = getelementptr i8, ptr %i.x, i64 1056
  %i.y = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep556 = getelementptr i8, ptr %i.y, i64 1144
  %i.z = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep557 = getelementptr i8, ptr %i.z, i64 1232
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep558 = getelementptr i8, ptr %i.aa, i64 1320
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep559 = getelementptr i8, ptr %i.ab, i64 1408
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep560 = getelementptr i8, ptr %i.ac, i64 1496
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep561 = getelementptr i8, ptr %i.ad, i64 1584
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep562 = getelementptr i8, ptr %i.ae, i64 1672
  %i.af = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep563 = getelementptr i8, ptr %i.af, i64 1760
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep564 = getelementptr i8, ptr %i.ag, i64 1848
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep565 = getelementptr i8, ptr %i.ah, i64 1936
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep566 = getelementptr i8, ptr %i.ai, i64 2024
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep567 = getelementptr i8, ptr %i.aj, i64 2112
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep568 = getelementptr i8, ptr %i.ak, i64 2200
  %i.al = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep569 = getelementptr i8, ptr %i.al, i64 2288
  %i.am = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep570 = getelementptr i8, ptr %i.am, i64 2376
  %i.an = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep571 = getelementptr i8, ptr %i.an, i64 2464
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep572 = getelementptr i8, ptr %i.ao, i64 2552
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep573 = getelementptr i8, ptr %i.ap, i64 2640
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep574 = getelementptr i8, ptr %i.aq, i64 2728
  %i.ar = load i8, ptr %next.gep, align 8, !tbaa !665
  %i.as = load i8, ptr %next.gep544, align 8, !tbaa !665
  %i.at = load i8, ptr %next.gep545, align 8, !tbaa !665
  %i.au = load i8, ptr %next.gep546, align 8, !tbaa !665
  %i.av = load i8, ptr %next.gep547, align 8, !tbaa !665
  %i.aw = load i8, ptr %next.gep548, align 8, !tbaa !665
  %i.ax = load i8, ptr %next.gep549, align 8, !tbaa !665
  %i.ay = load i8, ptr %next.gep550, align 8, !tbaa !665
  %i.az = load i8, ptr %next.gep551, align 8, !tbaa !665
  %i.ba = load i8, ptr %next.gep552, align 8, !tbaa !665
  %i.bb = load i8, ptr %next.gep553, align 8, !tbaa !665
  %i.bc = load i8, ptr %next.gep554, align 8, !tbaa !665
  %i.bd = load i8, ptr %next.gep555, align 8, !tbaa !665
  %i.be = load i8, ptr %next.gep556, align 8, !tbaa !665
  %i.bf = load i8, ptr %next.gep557, align 8, !tbaa !665
  %i.bg = load i8, ptr %next.gep558, align 8, !tbaa !665
  %i.bh = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 1
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 2
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 3
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 4
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 5
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 6
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 7
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 8
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 9
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 10
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 11
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 12
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 13
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 14
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 15
  %i.bx = load i8, ptr %next.gep559, align 8, !tbaa !665
  %i.by = load i8, ptr %next.gep560, align 8, !tbaa !665
  %i.bz = load i8, ptr %next.gep561, align 8, !tbaa !665
  %i.ca = load i8, ptr %next.gep562, align 8, !tbaa !665
  %i.cb = load i8, ptr %next.gep563, align 8, !tbaa !665
  %i.cc = load i8, ptr %next.gep564, align 8, !tbaa !665
  %i.cd = load i8, ptr %next.gep565, align 8, !tbaa !665
  %i.ce = load i8, ptr %next.gep566, align 8, !tbaa !665
  %i.cf = load i8, ptr %next.gep567, align 8, !tbaa !665
  %i.cg = load i8, ptr %next.gep568, align 8, !tbaa !665
  %i.ch = load i8, ptr %next.gep569, align 8, !tbaa !665
  %i.ci = load i8, ptr %next.gep570, align 8, !tbaa !665
  %i.cj = load i8, ptr %next.gep571, align 8, !tbaa !665
  %i.ck = load i8, ptr %next.gep572, align 8, !tbaa !665
  %i.cl = load i8, ptr %next.gep573, align 8, !tbaa !665
  %i.cm = load i8, ptr %next.gep574, align 8, !tbaa !665
  %i.cn = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 1
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 2
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 3
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 4
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 5
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 6
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 7
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 8
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 9
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 10
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 11
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 12
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 13
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 14
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 15
  %i.dd = icmp eq <16 x i8> %i.bw, splat (i8 8)
  %i.de = icmp eq <16 x i8> %i.dc, splat (i8 8)
  %i.df = or <16 x i1> %vec.phi, %i.dd            ; 2 uses
  %i.dg = or <16 x i1> %vec.phi543, %i.de         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !695

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dg, %i.df
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.di = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.dj = icmp ne i16 %i.di, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !696

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.dj, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec576 = and i64 %i.i, 576460752303423480    ; 3 uses
  %i.dk = mul i64 %n.vec576, 88
  %i.dl = getelementptr i8, ptr %i.c, i64 %i.dk
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index577 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next587, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi578 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.el, %vec.epilog.vector.body ]
  %i.dm = mul i64 %index577, 88                   ; 8 uses
  %next.gep579 = getelementptr i8, ptr %i.c, i64 %i.dm
  %i.dn = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep580 = getelementptr i8, ptr %i.dn, i64 88
  %i.do = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep581 = getelementptr i8, ptr %i.do, i64 176
  %i.dp = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep582 = getelementptr i8, ptr %i.dp, i64 264
  %i.dq = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep583 = getelementptr i8, ptr %i.dq, i64 352
  %i.dr = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep584 = getelementptr i8, ptr %i.dr, i64 440
  %i.ds = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep585 = getelementptr i8, ptr %i.ds, i64 528
  %i.dt = getelementptr i8, ptr %i.c, i64 %i.dm
  %next.gep586 = getelementptr i8, ptr %i.dt, i64 616
  %i.du = load i8, ptr %next.gep579, align 8, !tbaa !665
end_hunk_0
begin_hunk_1_@_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataImEELb0EEEbRT_s:bb.a
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ag = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationImmEEbT_RT0_b(i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.ag, label %.preheader.i49, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit58

.preheader.i49:                                   ; preds = %bb.g
  %.promoted.i50 = load i64, ptr %i.ad, align 8, !tbaa !1261 ; 3 uses
  %i.ah = icmp ugt i64 %.promoted.i50, 10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted11.i51 = load i16, ptr %i.ai, align 8, !tbaa !1263 ; 2 uses
  br i1 %i.ah, label %.lr.ph.i56, label %.preheader._crit_edge.i52

.lr.ph.i56:                                       ; preds = %.preheader.i49, %.lr.ph.i56
  %i.aj = phi i16 [ %i.am, %.lr.ph.i56 ], [ %.promoted11.i51, %.preheader.i49 ]
  %i.ak = phi i64 [ %i.al, %.lr.ph.i56 ], [ %.promoted.i50, %.preheader.i49 ] ; 2 uses
  %i.al = udiv i64 %i.ak, 10                      ; 3 uses
  %i.am = add i16 %i.aj, -1                       ; 3 uses
  %i.an = icmp ugt i64 %i.ak, 109
  br i1 %i.an, label %.lr.ph.i56, label %._crit_edge.i57, !llvm.loop !1266

._crit_edge.i57:                                  ; preds = %.lr.ph.i56
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !1261
  store i16 %i.am, ptr %i.ai, align 8, !tbaa !1263
  br label %.preheader._crit_edge.i52

.preheader._crit_edge.i52:                        ; preds = %._crit_edge.i57, %.preheader.i49
  %i.ao = phi i16 [ %i.am, %._crit_edge.i57 ], [ %.promoted11.i51, %.preheader.i49 ]
  %.lcssa.i53 = phi i64 [ %i.al, %._crit_edge.i57 ], [ %.promoted.i50, %.preheader.i49 ]
  %i.ap = icmp eq i16 %i.ao, 1
  %i.aq = icmp samesign ugt i64 %.lcssa.i53, 4
  %or.cond.i54 = and i1 %i.ap, %i.aq
  br i1 %or.cond.i54, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader._crit_edge.i52
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !55
  %i.as = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %i.ar, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader._crit_edge.i52
  %.0.i55 = phi i1 [ %i.as, %bb.h ], [ true, %.preheader._crit_edge.i52 ]
  %i.at = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.at, ptr %0, align 8, !tbaa !1265
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit58

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit58: ; preds = %bb.g, %bb.i
  %.08.i48 = phi i1 [ %.0.i55, %bb.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.loopexit73

bb.j:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load i16, ptr %i.au, align 8, !tbaa !1263 ; 5 uses
  %i.aw = sub i16 %1, %i.av                       ; 4 uses
  %i.ax = icmp slt i16 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %.preheader72.preheader

.preheader72.preheader:                           ; preds = %bb.j
  %.not121 = icmp eq i16 %i.aw, 0
  br i1 %.not121, label %.loopexit.loopexit, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %.not47 = icmp samesign ult i16 %i.aw, -20
  br i1 %.not47, label %bb.l, label %.preheader71.preheader

.preheader71.preheader:                           ; preds = %bb.k
  %i.ay = sub i16 %i.av, %1                       ; 2 uses
  %xtraiter = and i16 %i.ay, 7                    ; 3 uses
  %i.az = sub i16 %1, %i.av
  %i.ba = icmp ugt i16 %i.az, -8
  br i1 %i.ba, label %.preheader71.epil.preheader, label %.preheader71.preheader.new

.preheader71.preheader.new:                       ; preds = %.preheader71.preheader
  %unroll_iter = and i16 %i.ay, -8
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71, %.preheader71.preheader.new
  %.084 = phi i64 [ 1, %.preheader71.preheader.new ], [ %i.bb, %.preheader71 ]
  %niter = phi i16 [ 0, %.preheader71.preheader.new ], [ %niter.next.7, %.preheader71 ]
  %i.bb = mul i64 %.084, 100000000                ; 3 uses
  %niter.next.7 = add i16 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i16 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader71, !llvm.loop !1477

.unr-lcssa:                                       ; preds = %.preheader71
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader71.epil.preheader

.preheader71.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader71.preheader
  %.084.epil.init = phi i64 [ 1, %.preheader71.preheader ], [ %i.bb, %.unr-lcssa ]
  %lcmp.mod134 = icmp ne i16 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %.preheader71.epil

.preheader71.epil:                                ; preds = %.preheader71.epil, %.preheader71.epil.preheader
  %.084.epil = phi i64 [ %i.bc, %.preheader71.epil ], [ %.084.epil.init, %.preheader71.epil.preheader ]
  %epil.iter = phi i16 [ %epil.iter.next, %.preheader71.epil ], [ 0, %.preheader71.epil.preheader ]
  %i.bc = mul i64 %.084.epil, 10                  ; 2 uses
  %epil.iter.next = add i16 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i16 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader71.epil, !llvm.loop !1478

.epilog-lcssa:                                    ; preds = %.preheader71.epil, %.unr-lcssa
  %.lcssa129 = phi i64 [ %i.bb, %.unr-lcssa ], [ %i.bc, %.preheader71.epil ] ; 2 uses
  %i.bd = urem i64 %i.ae, %.lcssa129
  %i.be = udiv i64 %i.ae, %.lcssa129              ; 2 uses
  store i64 %i.be, ptr %i.ad, align 8, !tbaa !1261
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.ad, align 8, !tbaa !1261
  br label %.loopexit

.preheader72:                                     ; preds = %.lr.ph
  %i.bf = add nsw i16 %.3119, -1
  %i.bg = icmp sgt i16 %.3119, 1
  br i1 %i.bg, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !1479

.lr.ph:                                           ; preds = %.preheader72.preheader, %.preheader72
  %.3119 = phi i16 [ %i.bf, %.preheader72 ], [ %i.aw, %.preheader72.preheader ] ; 2 uses
  %i.bh = load i64, ptr %i.ad, align 8, !tbaa !1261
  %i.bi = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %i.bh, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  br i1 %i.bi, label %.preheader72, label %.loopexit73, !llvm.loop !1479

.loopexit.loopexit:                               ; preds = %.preheader72, %.preheader72.preheader
  %.pre = load i16, ptr %i.au, align 8, !tbaa !1263
  %.pre95 = load i64, ptr %0, align 8, !tbaa !1265
  %.pre96 = load i64, ptr %i.ad, align 8, !tbaa !1261
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.epilog-lcssa, %bb.l
  %i.bj = phi i64 [ %i.be, %.epilog-lcssa ], [ 0, %bb.l ], [ %.pre96, %.loopexit.loopexit ]
  %i.bk = phi i64 [ %i.z, %.epilog-lcssa ], [ %i.z, %bb.l ], [ %.pre95, %.loopexit.loopexit ]
  %i.bl = phi i16 [ %i.av, %.epilog-lcssa ], [ %i.av, %bb.l ], [ %.pre, %.loopexit.loopexit ]
  %.041 = phi i64 [ %i.bd, %.epilog-lcssa ], [ 0, %bb.l ], [ 0, %.loopexit.loopexit ]
  %i.bm = sub i16 %i.bl, %1
  store i16 %i.bm, ptr %i.au, align 8, !tbaa !1263
  %i.bn = tail call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %i.bk, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.bn, label %bb.m, label %.loopexit73

bb.m:                                             ; preds = %.loopexit
  store i64 %.041, ptr %i.ad, align 8, !tbaa !1261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.bo = load i64, ptr %0, align 8, !tbaa !1265
  %i.bp = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationImmEEbT_RT0_b(i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.bp, label %.preheader.i60, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit69

.preheader.i60:                                   ; preds = %bb.m
  %.promoted.i61 = load i64, ptr %i.ad, align 8, !tbaa !1261 ; 3 uses
  %i.bq = icmp ugt i64 %.promoted.i61, 10
  %.promoted11.i62 = load i16, ptr %i.au, align 8, !tbaa !1263 ; 2 uses
  br i1 %i.bq, label %.lr.ph.i67, label %.preheader._crit_edge.i63

.lr.ph.i67:                                       ; preds = %.preheader.i60, %.lr.ph.i67
  %i.br = phi i16 [ %i.bu, %.lr.ph.i67 ], [ %.promoted11.i62, %.preheader.i60 ]
  %i.bs = phi i64 [ %i.bt, %.lr.ph.i67 ], [ %.promoted.i61, %.preheader.i60 ] ; 2 uses
  %i.bt = udiv i64 %i.bs, 10                      ; 3 uses
  %i.bu = add i16 %i.br, -1                       ; 3 uses
  %i.bv = icmp ugt i64 %i.bs, 109
  br i1 %i.bv, label %.lr.ph.i67, label %._crit_edge.i68, !llvm.loop !1266

._crit_edge.i68:                                  ; preds = %.lr.ph.i67
  store i64 %i.bt, ptr %i.ad, align 8, !tbaa !1261
  store i16 %i.bu, ptr %i.au, align 8, !tbaa !1263
  br label %.preheader._crit_edge.i63

.preheader._crit_edge.i63:                        ; preds = %._crit_edge.i68, %.preheader.i60
  %i.bw = phi i16 [ %i.bu, %._crit_edge.i68 ], [ %.promoted11.i62, %.preheader.i60 ]
  %.lcssa.i64 = phi i64 [ %i.bt, %._crit_edge.i68 ], [ %.promoted.i61, %.preheader.i60 ]
  %i.bx = icmp eq i16 %i.bw, 1
  %i.by = icmp samesign ugt i64 %.lcssa.i64, 4
  %or.cond.i65 = and i1 %i.bx, %i.by
  br i1 %or.cond.i65, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader._crit_edge.i63
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !55
  %i.ca = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %i.bz, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader._crit_edge.i63
  %.0.i66 = phi i1 [ %i.ca, %bb.n ], [ true, %.preheader._crit_edge.i63 ]
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.cb, ptr %0, align 8, !tbaa !1265
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit69

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit69: ; preds = %bb.m, %bb.o
  %.08.i59 = phi i1 [ %.0.i66, %bb.o ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.loopexit73

.loopexit73:                                      ; preds = %bb.f, %.lr.ph, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit69, %.loopexit, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit58, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit
  %.144 = phi i1 [ %.08.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit ], [ false, %.lr.ph ], [ %.08.i48, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit58 ], [ %.08.i59, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit69 ], [ false, %.loopexit ], [ false, %bb.f ]
  ret i1 %.144
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !62, !noalias !1480
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !62, !noalias !1480 ; 2 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %.not.i = icmp eq i8 %i.f, %4
  %or.cond249 = or i1 %.not.i, %i.h
  br i1 %or.cond249, label %bb.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0176.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.b ] ; 8 uses
  br i1 %3, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  %.0176.i403 = ptrtoaddr ptr %.0176.i to i64
  %i.i = sub i64 %6, %.0176.i403
  %scevgep = getelementptr i8, ptr %.0176.i, i64 %i.i
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.split.us.preheader
  %.1177.i311.us = phi ptr [ %.0176.i, %.split.us.preheader ], [ %i.q, %bb.g ] ; 3 uses
  %.0178.i310.us = phi i64 [ 0, %.split.us.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.j = load i8, ptr %.1177.i311.us, align 1, !tbaa !62, !noalias !1480 ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %.split313.us

bb.f:                                             ; preds = %.split.us
  %i.m = mul i64 %.0178.i310.us, 10
  %i.n = zext nneg i8 %i.j to i64
  %i.o = add i64 %i.m, -48
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1177.i311.us, i64 1 ; 3 uses
  %.not267.i.us = icmp eq ptr %i.q, %1
  br i1 %.not267.i.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !62, !noalias !1480
  %i.s = icmp eq i8 %i.r, 95
  br i1 %i.s, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.split.us

.thread:                                          ; preds = %bb.l, %bb.f
  %.us-phi315 = phi i64 [ %i.p, %bb.f ], [ %i.ab, %bb.l ]
  %.us-phi316 = phi ptr [ %scevgep, %bb.f ], [ %.2.i, %bb.l ] ; 2 uses
  %7 = ptrtoint ptr %.us-phi316 to i64            ; 2 uses
  %i.t = ptrtoint ptr %.0176.i to i64
  %i.u = sub i64 %7, %i.t
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i311 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i310 = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.1177.i311, align 1, !tbaa !62, !noalias !1480 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.h, label %.split313.us

bb.h:                                             ; preds = %.split
  %i.y = mul i64 %.0178.i310, 10
  %i.z = zext nneg i8 %i.v to i64
  %i.aa = add i64 %i.y, -48
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ac, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62, !noalias !1480
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 2 ; 3 uses
  %i.ag = icmp eq ptr %i.af, %1
  br i1 %i.ag, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !62, !noalias !1480
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !1483

.split313.us:                                     ; preds = %.split, %.split.us
  %i.ak = phi i8 [ %i.j, %.split.us ], [ %i.v, %.split ]
  %.us-phi = phi i64 [ %.0178.i310.us, %.split.us ], [ %.0178.i310, %.split ] ; 4 uses
  %.us-phi314 = phi ptr [ %.1177.i311.us, %.split.us ], [ %.1177.i311, %.split ] ; 5 uses
  %8 = ptrtoint ptr %.us-phi314 to i64            ; 3 uses
  %i.al = ptrtoint ptr %.0176.i to i64
  %i.am = sub i64 %8, %i.al                       ; 2 uses
  %i.an = icmp eq i8 %i.ak, %4
  br i1 %i.an, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split313.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.ap, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i70 = load i64, ptr %i.ao, align 1, !noalias !1480 ; 2 uses
  %i.aq = add i64 %.0.copyload.i70, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i70, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i67 = icmp eq i64 %i.at, 0
  br i1 %.not.i67, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = mul i64 %.us-phi, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bg, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i71 = load i64, ptr %i.ap, align 1, !noalias !1480 ; 2 uses
  %i.bh = add i64 %.0.copyload.i71, 5063812098665367110
  %i.bi = add i64 %.0.copyload.i71, -3472328296227680304 ; 3 uses
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -9187201950435737472
  %.not.i68 = icmp eq i64 %i.bk, 0
  br i1 %.not.i68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = mul i64 %i.bf, 100000000
  %i.bm = mul i64 %i.bi, 10
  %i.bn = lshr i64 %i.bi, 8
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = and i64 %i.bo, 1095216660735
  %i.bq = mul i64 %i.bp, 4294967296000100
  %i.br = lshr i64 %i.bo, 16
  %i.bs = and i64 %i.br, 1095216660735
  %i.bt = mul i64 %i.bs, 42949672960001
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add i64 %i.bv, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bw, %bb.q ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bg, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 6 uses
  %.3.i407 = ptrtoaddr ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i317.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i317.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.bx = sub i64 %6, %.3.i407
  %scevgep408 = getelementptr i8, ptr %.3.i, i64 %i.bx
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i319.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cb, %bb.t ] ; 3 uses
  %.2180.i318.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.ce, %bb.t ] ; 2 uses
  %i.by = load i8, ptr %.4.i319.us, align 1, !tbaa !62, !noalias !1480
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.i319.us, i64 1 ; 3 uses
  %i.cc = mul i64 %.2180.i318.us, 10
  %i.cd = zext nneg i8 %i.bz to i64
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cb, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !62, !noalias !1480
  %i.cg = icmp eq i8 %i.cf, 95
  br i1 %i.cg, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.cs, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.cn, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cq, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i317 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i317, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i319 = phi ptr [ %i.ck, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i318 = phi i64 [ %i.cn, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ch = load i8, ptr %.4.i319, align 1, !tbaa !62, !noalias !1480
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i319, i64 1 ; 3 uses
  %i.cl = mul i64 %.2180.i318, 10
  %i.cm = zext nneg i8 %i.ci to i64
  %i.cn = add i64 %i.cl, %i.cm                    ; 3 uses
  %.not256.i = icmp eq ptr %i.ck, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit487.split.loop.exit527, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !62, !noalias !1480
  %i.cp = icmp eq i8 %i.co, 95
  br i1 %i.cp, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i319, i64 2 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i64 %.0221.i.ph, 1
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !62, !noalias !1480
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  br i1 %i.cv, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !1484

.outer._crit_edge.loopexit487.split.loop.exit527: ; preds = %bb.u
  %.4.i.ph405.le = ptrtoaddr ptr %.4.i.ph to i64
  %scevgep404.le = getelementptr i8, ptr %.4.i.ph, i64 %6
  %i.cw = sub i64 0, %.4.i.ph405.le
  %scevgep406.le = getelementptr i8, ptr %scevgep404.le, i64 %i.cw
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit487.split.loop.exit527, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.cn, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.2180.i318, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.ce, %bb.s ], [ %.2180.i318.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep406.le, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.4.i319, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep408, %bb.s ], [ %.4.i319.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = ptrtoint ptr %.4.i.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add nsw i64 %i.cz, %.0221.i.ph.lcssa    ; 2 uses
  %i.db = sub nsw i64 %i.am, %i.da
  br label %bb.y

bb.y:                                             ; preds = %.thread, %.outer._crit_edge, %.split313.us
  %i.dc = phi i64 [ %8, %.outer._crit_edge ], [ %8, %.split313.us ], [ %7, %.thread ]
  %.1211.i = phi i64 [ %i.da, %.outer._crit_edge ], [ 0, %.split313.us ], [ 0, %.thread ] ; 3 uses
  %.1201.i = phi i64 [ %i.db, %.outer._crit_edge ], [ %i.am, %.split313.us ], [ %i.u, %.thread ] ; 3 uses
  %.4182.i = phi i64 [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split313.us ], [ %.us-phi315, %.thread ] ; 3 uses
  %.8.i = phi ptr [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi314, %.split313.us ], [ %.us-phi316, %.thread ] ; 7 uses
  %i.dd = icmp eq i64 %.1201.i, 0
  br i1 %i.dd, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.de, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %.8.i, align 1, !tbaa !62, !noalias !1480
  switch i8 %i.df, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dg, %1
  br i1 %.not260.i, label %.critedge271.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62, !noalias !1480 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 45
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge271.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp eq i8 %i.dh, 43
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  br label %.critedge271.i

.critedge271.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dj, %bb.ad ], [ %i.dg, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dm = icmp eq ptr %.9.i, %1
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge271.i
  %i.dn = load i8, ptr %.9.i, align 1, !tbaa !62, !noalias !1480
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph342, label %bb.al

.lr.ph342:                                        ; preds = %bb.af, %.backedge
  %.10.i341 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i340 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dq = load i8, ptr %.10.i341, align 1, !tbaa !62, !noalias !1480
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread140

bb.ag:                                            ; preds = %.lr.ph342
  %i.dt = icmp slt i64 %.0204.i340, 65536
  %i.du = mul nsw i64 %.0204.i340, 10
  %i.dv = zext nneg i8 %i.dr to i64
  %i.dw = add nsw i64 %i.du, %i.dv
  %.1205.i = select i1 %i.dt, i64 %i.dw, i64 %.0204.i340 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.10.i341, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dx, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62, !noalias !1480
  %i.dz = icmp eq i8 %i.dy, 95
  br i1 %i.dz, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.10.i341, i64 2 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !62, !noalias !1480
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.ea, %bb.ak ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread140, label %.lr.ph342, !llvm.loop !1485

.thread140:                                       ; preds = %.lr.ph342, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i340, %.lr.ph342 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i341, %.lr.ph342 ], [ %.10.i.be, %.backedge ]
  %i.ef = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select272.i = select i1 %.0199.i, i64 %i.ef, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eg = add nsw i64 %spec.select272.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge271.i, %bb.af
  %i.eh = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ei = and i32 %5, 5
  %or.cond273.i.not.not = icmp eq i32 %i.ei, 1
  br i1 %or.cond273.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread140, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eg, %.thread140 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select272.i, %.thread140 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread140 ] ; 3 uses
  %i.ej = icmp sgt i64 %.1201.i, 19
  br i1 %i.ej, label %.preheader287, label %bb.ba

.preheader287:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i349 = phi ptr [ %i.eo, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i348 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.ek = load i8, ptr %.0191.i349, align 1, !tbaa !62, !noalias !1480 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 48                    ; 2 uses
  %i.em = icmp eq i8 %i.ek, %4
  %or.cond274.i = or i1 %i.el, %i.em
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader287
  %i.en = sext i1 %i.el to i64
  %spec.select275.i = add nsw i64 %.2202.i348, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0191.i349, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.eo, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader287, !llvm.loop !1486

.critedge.i:                                      ; preds = %.preheader287, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i348, %.preheader287 ], [ %spec.select275.i, %.critedge8.i ]
  %i.ep = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.ep, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i351 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i350 = phi i64 [ %i.ew, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.eq = load i8, ptr %.16.i351, align 1, !tbaa !62, !noalias !1480 ; 2 uses
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.ao, label %.thread146

bb.ao:                                            ; preds = %.preheader
  %i.et = mul nuw i64 %.5183.i350, 10
  %i.eu = zext nneg i8 %i.eq to i64
  %i.ev = add i64 %i.et, -48
  %i.ew = add i64 %i.ev, %i.eu                    ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16.i351, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ex, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !62, !noalias !1480
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i351, i64 2 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %1
  br i1 %i.fb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !62, !noalias !1480
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fa, %bb.as ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ff = icmp ult i64 %i.ew, 1000000000000000000
  %i.fg = icmp ne ptr %.17.i, %1
  %i.fh = and i1 %i.ff, %i.fg
  br i1 %i.fh, label %.preheader, label %bb.au, !llvm.loop !1487

bb.au:                                            ; preds = %bb.at
  %i.fi = icmp ugt i64 %i.ew, 999999999999999999
  br i1 %i.fi, label %.thread453.thread, label %.thread146

.thread453.thread:                                ; preds = %bb.au
  %i.fj = ptrtoint ptr %.17.i to i64
  %i.fk = add i64 %.5209.i, %i.dc
  %i.fl = sub i64 %i.fk, %i.fj
  br label %bb.bg

.thread146:                                       ; preds = %.preheader, %bb.au
  %.5183.i300 = phi i64 [ %i.ew, %bb.au ], [ %.5183.i350, %.preheader ] ; 2 uses
  %.16.i297 = phi ptr [ %.17.i, %bb.au ], [ %.16.i351, %.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.16.i297, i64 1 ; 4 uses
  %.not534 = icmp eq ptr %i.fm, %1
  br i1 %.not534, label %._crit_edge356, label %.lr.ph355
end_hunk_1
begin_hunk_2_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.ln = icmp ult i64 %.pn276, 2
  %i.lo = add nsw i64 %.sroa.093.0.ph462479, 4
  %i.lp = icmp ult i64 %i.lo, 28
  %or.cond261.not279 = and i1 %i.lp, %i.ln
  %i.lq = and i64 %i.kx, 3
  %i.lr = icmp eq i64 %i.lq, 1
  %or.cond263 = select i1 %or.cond261.not279, i1 %i.lr, i1 false
  %i.ls = shl i64 %i.kx, %i.kw
  %i.lt = icmp eq i64 %i.ls, %spec.select.i75.pn
  %or.cond265 = select i1 %or.cond263, i1 %i.lt, i1 false
  %i.lu = and i64 %i.kx, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond265, i64 %i.lu, i64 %i.kx ; 2 uses
  %i.lv = and i64 %.sroa.0103.0, 1
  %i.lw = add nuw nsw i64 %i.lv, %.sroa.0103.0    ; 2 uses
  %i.lx = lshr i64 %i.lw, 1
  %.not27.i = icmp samesign ugt i64 %i.lw, 18014398509481983 ; 2 uses
  %i.ly = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lc, %i.ly      ; 2 uses
  %i.lz = and i64 %i.lx, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not280 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select269 = select i1 %.not280, i64 0, i64 %i.lz
  %spec.select270 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bm, %bb.bl, %bb.bo
  %.sroa.0103.2 = phi i64 [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lk, %bb.bo ], [ %spec.select269, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bm ], [ 0, %bb.bl ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lm, %bb.bo ], [ %spec.select270, %bb.bp ], [ 0, %bb.bn ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2467, %.sroa.0103.2
  %i.ma = icmp ne i32 %.sroa.19117.1469, %.sroa.19.1
  %i.mb = icmp slt i32 %.sroa.19117.1469, 0
  %i.mc = or i1 %i.mb, %i.ma
  %or.cond266 = select i1 %.not.i87, i1 true, i1 %i.mc
  br i1 %or.cond266, label %.thread245, label %bb.br

.thread245:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.md = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.thread245
  %.fca.0.extract = extractvalue { i64, i32 } %i.md, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.md, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, %bb.bj, %bb.bk, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bq
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bq ], [ %.sroa.19117.1469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iz, %bb.bj ], [ %spec.select268, %bb.bk ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bq ], [ %.sroa.0111.2467, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ix, %bb.bj ], [ %spec.select267, %bb.bk ]
  %i.me = zext i32 %.sroa.690.1 to i64
  %i.mf = shl i64 %i.me, 52
  %i.mg = or i64 %i.mf, %.sroa.088.0              ; 2 uses
  %i.mh = or i64 %i.mg, -9223372036854775808
  %spec.select = select i1 %i.c, i64 %i.mh, i64 %i.mg
  store i64 %spec.select, ptr %2, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.br, %bb.bf, %bb.be, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.br ], [ %i.gm, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bf ], [ %.15.i, %bb.be ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.br ], [ %i.gn, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bt:                                            ; preds = %.thread245
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  tail call void @__clang_call_terminate(ptr %i.mj) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !62
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !62 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62    ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62    ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !1489
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !62
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !62 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !1491

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !62
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, double -inf, double +inf
  store double %i.ba, ptr %2, align 8, !tbaa !1489
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %3 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %i.c = load i8, ptr %0, align 1, !tbaa !62, !noalias !1492
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 4, !tbaa !1495, !alias.scope !1492
  %spec.select.i.idx = zext i1 %i.d to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %2, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.1.i10 = phi ptr [ %i.j, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.1.i10, align 1, !tbaa !62, !noalias !1492
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !1497

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.1.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.1.i.lcssa60 = ptrtoaddr ptr %.1.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.1.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.1.i.lcssa, %.lr.ph17 ], [ %i.s, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.r, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.2.i16, align 1, !tbaa !62, !noalias !1492 ; 2 uses
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.promoted26, 768
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.promoted26 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  store i8 %i.m, ptr %i.q, align 1, !tbaa !62, !alias.scope !1492
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %.promoted26, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.s, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !1498

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %3, align 4
  %i.t = icmp eq i8 %i.l, 46
  br i1 %i.t, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.v = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.u, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.w = sub i64 %2, %.1.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.1.i.lcssa, i64 %i.w
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.z, %bb.h ], [ %i.u, %.lr.ph22.preheader ] ; 3 uses
  %i.x = load i8, ptr %.3.i21, align 1, !tbaa !62, !noalias !1492
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.z, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !1499

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.u, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ab = icmp ule ptr %i.aa, %1
  %i.ac = add i32 %.promoted26, 8                 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 768
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv = phi i64 [ %i.af, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ag = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.ao, %bb.j ] ; 3 uses
  %.5.i28 = phi ptr [ %.4.i, %.lr.ph29 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = phi i32 [ %.promoted26, %.lr.ph29 ], [ %i.as, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28, align 1, !noalias !1492 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i64 %i.aj, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ap = icmp ule ptr %i.ao, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = icmp samesign ult i64 %indvars.iv, 760
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ar, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %3, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bb, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.at = phi i32 [ %i.ba, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.au = load i8, ptr %.8.i38, align 1, !tbaa !62, !noalias !1492
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.ax = icmp ult i32 %i.at, 768
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !62, !alias.scope !1492
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = add i32 %i.at, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bb, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !1500

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.at, %.lr.ph39 ], [ %i.ba, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bb, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %3, align 4
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %.8.i.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !1501, !alias.scope !1492
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.r, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.s, %bb.f ]
  store i32 %.lcssa13, ptr %3, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bg = phi i32 [ %i.bf, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bh, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bi = load i8, ptr %.087.i, align 1, !tbaa !62, !noalias !1492 ; 2 uses
  switch i8 %i.bi, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bj = icmp eq i8 %i.bi, 48
  %i.bk = zext i1 %i.bj to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bk
  br label %.preheader, !llvm.loop !1502

bb.n:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %i.bg, %i.bh                ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !1501, !alias.scope !1492
  %i.bm = sub i32 %i.bh, %.085.i                  ; 3 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !1503, !alias.scope !1492
  %i.bn = icmp ugt i32 %i.bm, 768
  br i1 %i.bn, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.b, align 1, !tbaa !1504, !alias.scope !1492
  store i32 768, ptr %3, align 4, !tbaa !1503, !alias.scope !1492
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bo = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bm, %bb.n ] ; 3 uses
  %i.bp = phi i32 [ %i.bg, %.critedge106.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bq = load i8, ptr %.9.i, align 1, !tbaa !62, !noalias !1492
  switch i8 %i.bq, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.br, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZN17duckdb_fast_float6detail18decimal_left_shiftERNS_7decimalEj:bb.a
  %i.ax = icmp ult i32 %.159, 768
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = trunc i64 %i.aw to i8
  %i.az = zext nneg i32 %.159 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !62
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp eq i64 %i.aw, 0
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ag, align 1, !tbaa !1504
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = add i32 %.159, -1
  %.not = icmp samesign ult i64 %.14358, 10
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !1515

._crit_edge:                                      ; preds = %bb.q, %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit, %.preheader
  %i.bc = add i32 %.0.i, %i.a                     ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 768) ; 2 uses
  store i32 %spec.select, ptr %0, align 4, !tbaa !1503
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1501
  %i.bf = add nsw i32 %i.be, %.0.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !1501
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.not4.i = icmp eq i32 %i.bc, 0
  br i1 %.not4.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bh = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i48 = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i49, %bb.r ]
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 3 uses
  %i.bi = and i64 %indvars.iv.next.i49, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !62
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit

bb.r:                                             ; preds = %.lr.ph.i47
  %indvars.i = trunc i64 %indvars.iv.next.i49 to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !1503
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.i47, !llvm.loop !1506

_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit: ; preds = %bb.r, %.lr.ph.i47, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN17duckdb_fast_float6detail5roundERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !1503   ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1501 ; 9 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %i.d, 18
  br i1 %i.f, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not42 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02840.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.j = mul i64 %.02840.epil.init, 10
  %i.k = icmp samesign ult i64 %indvars.iv.epil.init, %i.h
  br i1 %i.k, label %bb.d, label %._crit_edge.loopexit.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil.init
  %i.m = load i8, ptr %i.l, align 1, !tbaa !62
  %i.n = zext i8 %i.m to i64
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.d, %.epil.preheader
  %i.o = phi i64 [ %i.n, %bb.d ], [ 0, %.epil.preheader ]
  %i.p = add i64 %i.o, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %._crit_edge.loopexit.epilog-lcssa ] ; 5 uses
  %i.q = icmp ult i32 %i.d, %i.a
  br i1 %i.q, label %bb.j, label %.thread

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.02840 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.r = mul i64 %.02840, 10
  %i.s = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 2, !tbaa !62
  %i.v = zext i8 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  %i.x = add i64 %i.w, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul i64 %i.x, 10
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ac = zext i8 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ae = add i64 %i.ad, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1512

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = zext nneg i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %.fr = freeze i8 %i.ai                          ; 2 uses
  %i.aj = icmp eq i8 %.fr, 5
  %i.ak = add nuw nsw i32 %i.d, 1
  %i.al = icmp eq i32 %i.ak, %i.a
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1504, !range !145, !noundef !146
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread35, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not42, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ah, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !62
  %.fr39 = freeze i8 %i.aq
  %i.ar = trunc i8 %.fr39 to i1
  br i1 %i.ar, label %.thread35, label %.thread

bb.n:                                             ; preds = %bb.j
  %i.as = icmp ugt i8 %.fr, 4
  br i1 %i.as, label %.thread35, label %.thread

.thread35:                                        ; preds = %bb.k, %bb.m, %bb.n
  %i.at = add i64 %.028.lcssa, 1
  br label %.thread

.thread:                                          ; preds = %bb.l, %._crit_edge, %.thread35, %bb.n, %bb.m, %bb.c, %bb.a, %bb.b
  %.029 = phi i64 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.at, %.thread35 ], [ %.028.lcssa, %bb.n ], [ %.028.lcssa, %bb.m ], [ %.028.lcssa, %._crit_edge ], [ %.028.lcssa, %bb.l ]
  ret i64 %.029
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.bw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !62, !noalias !1516
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !62, !noalias !1516 ; 2 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %.not.i = icmp eq i8 %i.f, %4
  %or.cond242 = or i1 %.not.i, %i.h
  br i1 %or.cond242, label %bb.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0176.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.b ] ; 8 uses
  br i1 %3, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  %.0176.i396 = ptrtoaddr ptr %.0176.i to i64
  %i.i = sub i64 %6, %.0176.i396
  %scevgep = getelementptr i8, ptr %.0176.i, i64 %i.i
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.split.us.preheader
  %.1177.i304.us = phi ptr [ %.0176.i, %.split.us.preheader ], [ %i.q, %bb.g ] ; 3 uses
  %.0178.i303.us = phi i64 [ 0, %.split.us.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.j = load i8, ptr %.1177.i304.us, align 1, !tbaa !62, !noalias !1516 ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %.split306.us

bb.f:                                             ; preds = %.split.us
  %i.m = mul i64 %.0178.i303.us, 10
  %i.n = zext nneg i8 %i.j to i64
  %i.o = add i64 %i.m, -48
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1177.i304.us, i64 1 ; 3 uses
  %.not267.i.us = icmp eq ptr %i.q, %1
  br i1 %.not267.i.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !62, !noalias !1516
  %i.s = icmp eq i8 %i.r, 95
  br i1 %i.s, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.split.us

.thread:                                          ; preds = %bb.l, %bb.f
  %.us-phi308 = phi i64 [ %i.p, %bb.f ], [ %i.ab, %bb.l ]
  %.us-phi309 = phi ptr [ %scevgep, %bb.f ], [ %.2.i, %bb.l ] ; 2 uses
  %7 = ptrtoint ptr %.us-phi309 to i64            ; 2 uses
  %i.t = ptrtoint ptr %.0176.i to i64
  %i.u = sub i64 %7, %i.t
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i304 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i303 = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.1177.i304, align 1, !tbaa !62, !noalias !1516 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.h, label %.split306.us

bb.h:                                             ; preds = %.split
  %i.y = mul i64 %.0178.i303, 10
  %i.z = zext nneg i8 %i.v to i64
  %i.aa = add i64 %i.y, -48
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1177.i304, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ac, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62, !noalias !1516
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1177.i304, i64 2 ; 3 uses
  %i.ag = icmp eq ptr %i.af, %1
  br i1 %i.ag, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !62, !noalias !1516
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !1483

.split306.us:                                     ; preds = %.split, %.split.us
  %i.ak = phi i8 [ %i.j, %.split.us ], [ %i.v, %.split ]
  %.us-phi = phi i64 [ %.0178.i303.us, %.split.us ], [ %.0178.i303, %.split ] ; 4 uses
  %.us-phi307 = phi ptr [ %.1177.i304.us, %.split.us ], [ %.1177.i304, %.split ] ; 5 uses
  %8 = ptrtoint ptr %.us-phi307 to i64            ; 3 uses
  %i.al = ptrtoint ptr %.0176.i to i64
  %i.am = sub i64 %8, %i.al                       ; 2 uses
  %i.an = icmp eq i8 %i.ak, %4
  br i1 %i.an, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split306.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi307, i64 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi307, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.ap, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i54 = load i64, ptr %i.ao, align 1, !noalias !1516 ; 2 uses
  %i.aq = add i64 %.0.copyload.i54, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i54, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i51 = icmp eq i64 %i.at, 0
  br i1 %.not.i51, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = mul i64 %.us-phi, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi307, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bg, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i55 = load i64, ptr %i.ap, align 1, !noalias !1516 ; 2 uses
  %i.bh = add i64 %.0.copyload.i55, 5063812098665367110
  %i.bi = add i64 %.0.copyload.i55, -3472328296227680304 ; 3 uses
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -9187201950435737472
  %.not.i52 = icmp eq i64 %i.bk, 0
  br i1 %.not.i52, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = mul i64 %i.bf, 100000000
  %i.bm = mul i64 %i.bi, 10
  %i.bn = lshr i64 %i.bi, 8
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = and i64 %i.bo, 1095216660735
  %i.bq = mul i64 %i.bp, 4294967296000100
  %i.br = lshr i64 %i.bo, 16
  %i.bs = and i64 %i.br, 1095216660735
  %i.bt = mul i64 %i.bs, 42949672960001
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add i64 %i.bv, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bw, %bb.q ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bg, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 6 uses
  %.3.i400 = ptrtoaddr ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i310.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i310.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.bx = sub i64 %6, %.3.i400
  %scevgep401 = getelementptr i8, ptr %.3.i, i64 %i.bx
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i312.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cb, %bb.t ] ; 3 uses
  %.2180.i311.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.ce, %bb.t ] ; 2 uses
  %i.by = load i8, ptr %.4.i312.us, align 1, !tbaa !62, !noalias !1516
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.i312.us, i64 1 ; 3 uses
  %i.cc = mul i64 %.2180.i311.us, 10
  %i.cd = zext nneg i8 %i.bz to i64
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cb, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !62, !noalias !1516
  %i.cg = icmp eq i8 %i.cf, 95
  br i1 %i.cg, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.cs, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.cn, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cq, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i310 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i310, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i312 = phi ptr [ %i.ck, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i311 = phi i64 [ %i.cn, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ch = load i8, ptr %.4.i312, align 1, !tbaa !62, !noalias !1516
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i312, i64 1 ; 3 uses
  %i.cl = mul i64 %.2180.i311, 10
  %i.cm = zext nneg i8 %i.ci to i64
  %i.cn = add i64 %i.cl, %i.cm                    ; 3 uses
  %.not256.i = icmp eq ptr %i.ck, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit480.split.loop.exit520, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !62, !noalias !1516
  %i.cp = icmp eq i8 %i.co, 95
  br i1 %i.cp, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i312, i64 2 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i64 %.0221.i.ph, 1
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !62, !noalias !1516
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  br i1 %i.cv, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !1484

.outer._crit_edge.loopexit480.split.loop.exit520: ; preds = %bb.u
  %.4.i.ph398.le = ptrtoaddr ptr %.4.i.ph to i64
  %scevgep397.le = getelementptr i8, ptr %.4.i.ph, i64 %6
  %i.cw = sub i64 0, %.4.i.ph398.le
  %scevgep399.le = getelementptr i8, ptr %scevgep397.le, i64 %i.cw
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit480.split.loop.exit520, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit480.split.loop.exit520 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.cn, %.outer._crit_edge.loopexit480.split.loop.exit520 ], [ %.2180.i311, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.ce, %bb.s ], [ %.2180.i311.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep399.le, %.outer._crit_edge.loopexit480.split.loop.exit520 ], [ %.4.i312, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep401, %bb.s ], [ %.4.i312.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = ptrtoint ptr %.4.i.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add nsw i64 %i.cz, %.0221.i.ph.lcssa    ; 2 uses
  %i.db = sub nsw i64 %i.am, %i.da
  br label %bb.y

bb.y:                                             ; preds = %.thread, %.outer._crit_edge, %.split306.us
  %i.dc = phi i64 [ %8, %.outer._crit_edge ], [ %8, %.split306.us ], [ %7, %.thread ]
  %.1211.i = phi i64 [ %i.da, %.outer._crit_edge ], [ 0, %.split306.us ], [ 0, %.thread ] ; 3 uses
  %.1201.i = phi i64 [ %i.db, %.outer._crit_edge ], [ %i.am, %.split306.us ], [ %i.u, %.thread ] ; 3 uses
  %.4182.i = phi i64 [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split306.us ], [ %.us-phi308, %.thread ] ; 3 uses
  %.8.i = phi ptr [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi307, %.split306.us ], [ %.us-phi309, %.thread ] ; 7 uses
  %i.dd = icmp eq i64 %.1201.i, 0
  br i1 %i.dd, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.de, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %.8.i, align 1, !tbaa !62, !noalias !1516
  switch i8 %i.df, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dg, %1
  br i1 %.not260.i, label %.critedge271.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62, !noalias !1516 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 45
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge271.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp eq i8 %i.dh, 43
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  br label %.critedge271.i

.critedge271.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dj, %bb.ad ], [ %i.dg, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dm = icmp eq ptr %.9.i, %1
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge271.i
  %i.dn = load i8, ptr %.9.i, align 1, !tbaa !62, !noalias !1516
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph335, label %bb.al

.lr.ph335:                                        ; preds = %bb.af, %.backedge
  %.10.i334 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i333 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dq = load i8, ptr %.10.i334, align 1, !tbaa !62, !noalias !1516
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread133

bb.ag:                                            ; preds = %.lr.ph335
  %i.dt = icmp slt i64 %.0204.i333, 65536
  %i.du = mul nsw i64 %.0204.i333, 10
  %i.dv = zext nneg i8 %i.dr to i64
  %i.dw = add nsw i64 %i.du, %i.dv
  %.1205.i = select i1 %i.dt, i64 %i.dw, i64 %.0204.i333 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.10.i334, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dx, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62, !noalias !1516
  %i.dz = icmp eq i8 %i.dy, 95
  br i1 %i.dz, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.10.i334, i64 2 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !62, !noalias !1516
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.ea, %bb.ak ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread133, label %.lr.ph335, !llvm.loop !1485

.thread133:                                       ; preds = %.lr.ph335, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i333, %.lr.ph335 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i334, %.lr.ph335 ], [ %.10.i.be, %.backedge ]
  %i.ef = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select272.i = select i1 %.0199.i, i64 %i.ef, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eg = add nsw i64 %spec.select272.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge271.i, %bb.af
  %i.eh = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ei = and i32 %5, 5
  %or.cond273.i.not.not = icmp eq i32 %i.ei, 1
  br i1 %or.cond273.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread133, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eg, %.thread133 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select272.i, %.thread133 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread133 ] ; 3 uses
  %i.ej = icmp sgt i64 %.1201.i, 19
  br i1 %i.ej, label %.preheader280, label %bb.ba

.preheader280:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i342 = phi ptr [ %i.eo, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i341 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.ek = load i8, ptr %.0191.i342, align 1, !tbaa !62, !noalias !1516 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 48                    ; 2 uses
  %i.em = icmp eq i8 %i.ek, %4
  %or.cond274.i = or i1 %i.el, %i.em
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader280
  %i.en = sext i1 %i.el to i64
  %spec.select275.i = add nsw i64 %.2202.i341, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0191.i342, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.eo, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader280, !llvm.loop !1486

.critedge.i:                                      ; preds = %.preheader280, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i341, %.preheader280 ], [ %spec.select275.i, %.critedge8.i ]
  %i.ep = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.ep, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i344 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i343 = phi i64 [ %i.ew, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.eq = load i8, ptr %.16.i344, align 1, !tbaa !62, !noalias !1516 ; 2 uses
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.ao, label %.thread139

bb.ao:                                            ; preds = %.preheader
  %i.et = mul nuw i64 %.5183.i343, 10
  %i.eu = zext nneg i8 %i.eq to i64
  %i.ev = add i64 %i.et, -48
  %i.ew = add i64 %i.ev, %i.eu                    ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16.i344, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ex, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !62, !noalias !1516
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i344, i64 2 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %1
  br i1 %i.fb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !62, !noalias !1516
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fa, %bb.as ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ff = icmp ult i64 %i.ew, 1000000000000000000
  %i.fg = icmp ne ptr %.17.i, %1
  %i.fh = and i1 %i.ff, %i.fg
  br i1 %i.fh, label %.preheader, label %bb.au, !llvm.loop !1487

bb.au:                                            ; preds = %bb.at
  %i.fi = icmp ugt i64 %i.ew, 999999999999999999
  br i1 %i.fi, label %.thread446.thread, label %.thread139

.thread446.thread:                                ; preds = %bb.au
  %i.fj = ptrtoint ptr %.17.i to i64
  %i.fk = add i64 %.5209.i, %i.dc
  %i.fl = sub i64 %i.fk, %i.fj
  br label %bb.bg

.thread139:                                       ; preds = %.preheader, %bb.au
  %.5183.i293 = phi i64 [ %i.ew, %bb.au ], [ %.5183.i343, %.preheader ] ; 2 uses
  %.16.i290 = phi ptr [ %.17.i, %bb.au ], [ %.16.i344, %.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.16.i290, i64 1 ; 4 uses
  %.not527 = icmp eq ptr %i.fm, %1
  br i1 %.not527, label %._crit_edge349, label %.lr.ph348
end_hunk_3
begin_hunk_4_@_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.lo = add nsw i64 %.sroa.086.0.ph455472, 17
  %i.lp = icmp ult i64 %i.lo, 28
  %or.cond254.not272 = and i1 %i.lp, %i.ln
  %i.lq = and i64 %i.kx, 3
  %i.lr = icmp eq i64 %i.lq, 1
  %or.cond256 = select i1 %or.cond254.not272, i1 %i.lr, i1 false
  %i.ls = shl i64 %i.kx, %i.kw
  %i.lt = icmp eq i64 %i.ls, %spec.select.i78.pn
  %or.cond258 = select i1 %or.cond256, i1 %i.lt, i1 false
  %i.lu = and i64 %i.kx, 67108862
  %.sroa.096.0 = select i1 %or.cond258, i64 %i.lu, i64 %i.kx ; 2 uses
  %i.lv = and i64 %.sroa.096.0, 1
  %i.lw = add nuw nsw i64 %i.lv, %.sroa.096.0     ; 2 uses
  %i.lx = lshr i64 %i.lw, 1
  %.not27.i = icmp samesign ugt i64 %i.lw, 33554431 ; 2 uses
  %i.ly = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lc, %i.ly      ; 2 uses
  %i.lz = and i64 %i.lx, 58720255
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not273 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select262 = select i1 %.not273, i64 0, i64 %i.lz
  %spec.select263 = select i1 %.not28.i, i32 255, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bt, %bb.br, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79, %bb.bo, %bb.bn, %bb.bs
  %.sroa.096.2 = phi i64 [ 0, %bb.bo ], [ 0, %bb.bn ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.lk, %bb.bs ], [ %spec.select262, %bb.bt ], [ 0, %bb.br ]
  %.sroa.19.1 = phi i32 [ 255, %bb.bo ], [ 0, %bb.bn ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.lm, %bb.bs ], [ %spec.select263, %bb.bt ], [ 0, %bb.br ]
  %.not.i80 = icmp ne i64 %.sroa.0104.2460, %.sroa.096.2
  %i.ma = icmp ne i32 %.sroa.19110.1462, %.sroa.19.1
  %i.mb = icmp slt i32 %.sroa.19110.1462, 0
  %i.mc = or i1 %i.mb, %i.ma
  %or.cond259 = select i1 %.not.i80, i1 true, i1 %i.mc
  br i1 %or.cond259, label %.thread238, label %bb.bv

.thread238:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit
  %i.md = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIfEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bu unwind label %bb.bx     ; 2 uses

bb.bu:                                            ; preds = %.thread238
  %.fca.0.extract = extractvalue { i64, i32 } %i.md, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.md, 1
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, %bb.bl, %bb.bm, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, %bb.bu
  %.sroa.683.1 = phi i32 [ %.fca.1.extract, %bb.bu ], [ %.sroa.19110.1462, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iz, %bb.bl ], [ %spec.select261, %bb.bm ]
  %.sroa.081.0 = phi i64 [ %.fca.0.extract, %bb.bu ], [ %.sroa.0104.2460, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.ix, %bb.bl ], [ %spec.select260, %bb.bm ]
  %i.me = sext i32 %.sroa.683.1 to i64
  %i.mf = shl nsw i64 %i.me, 23
  %i.mg = or i64 %i.mf, %.sroa.081.0              ; 2 uses
  %i.mh = or i64 %i.mg, 2147483648
  %spec.select = select i1 %i.c, i64 %i.mh, i64 %i.mg
  %.0.extract.trunc.i = trunc i64 %spec.select to i32
  store i32 %.0.extract.trunc.i, ptr %2, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.bv, %bb.bf, %bb.be, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.bv ], [ %i.gm, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bf ], [ %.15.i, %bb.be ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.bv ], [ %i.gn, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bx:                                            ; preds = %.thread238
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  tail call void @__clang_call_terminate(ptr %i.mj) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !62
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !62 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62    ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62    ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, float -qnan, float +qnan
  store float %i.aa, ptr %2, align 4, !tbaa !1519
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !62
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !62 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !1520

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !62
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, float -inf, float +inf
  store float %i.ba, ptr %2, align 4, !tbaa !1519
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIfEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %3 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %i.c = load i8, ptr %0, align 1, !tbaa !62, !noalias !1521
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 4, !tbaa !1495, !alias.scope !1521
  %spec.select.i.idx = zext i1 %i.d to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %2, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.1.i10 = phi ptr [ %i.j, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.1.i10, align 1, !tbaa !62, !noalias !1521
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !1497

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.1.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.1.i.lcssa60 = ptrtoaddr ptr %.1.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.1.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.1.i.lcssa, %.lr.ph17 ], [ %i.s, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.r, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.2.i16, align 1, !tbaa !62, !noalias !1521 ; 2 uses
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.promoted26, 768
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.promoted26 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  store i8 %i.m, ptr %i.q, align 1, !tbaa !62, !alias.scope !1521
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %.promoted26, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.s, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !1498

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %3, align 4
  %i.t = icmp eq i8 %i.l, 46
  br i1 %i.t, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.v = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.u, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.w = sub i64 %2, %.1.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.1.i.lcssa, i64 %i.w
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.z, %bb.h ], [ %i.u, %.lr.ph22.preheader ] ; 3 uses
  %i.x = load i8, ptr %.3.i21, align 1, !tbaa !62, !noalias !1521
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.z, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !1499

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.u, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ab = icmp ule ptr %i.aa, %1
  %i.ac = add i32 %.promoted26, 8                 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 768
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv = phi i64 [ %i.af, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ag = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.ao, %bb.j ] ; 3 uses
  %.5.i28 = phi ptr [ %.4.i, %.lr.ph29 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = phi i32 [ %.promoted26, %.lr.ph29 ], [ %i.as, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28, align 1, !noalias !1521 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i64 %i.aj, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ap = icmp ule ptr %i.ao, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = icmp samesign ult i64 %indvars.iv, 760
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ar, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %3, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bb, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.at = phi i32 [ %i.ba, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.au = load i8, ptr %.8.i38, align 1, !tbaa !62, !noalias !1521
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.ax = icmp ult i32 %i.at, 768
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !62, !alias.scope !1521
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = add i32 %i.at, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bb, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !1500

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.at, %.lr.ph39 ], [ %i.ba, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bb, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %3, align 4
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %.8.i.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !1501, !alias.scope !1521
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.r, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.s, %bb.f ]
  store i32 %.lcssa13, ptr %3, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bg = phi i32 [ %i.bf, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bh, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bi = load i8, ptr %.087.i, align 1, !tbaa !62, !noalias !1521 ; 2 uses
  switch i8 %i.bi, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bj = icmp eq i8 %i.bi, 48
  %i.bk = zext i1 %i.bj to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bk
  br label %.preheader, !llvm.loop !1502

bb.n:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %i.bg, %i.bh                ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !1501, !alias.scope !1521
  %i.bm = sub i32 %i.bh, %.085.i                  ; 3 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !1503, !alias.scope !1521
  %i.bn = icmp ugt i32 %i.bm, 768
  br i1 %i.bn, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.b, align 1, !tbaa !1504, !alias.scope !1521
  store i32 768, ptr %3, align 4, !tbaa !1503, !alias.scope !1521
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bo = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bm, %bb.n ] ; 3 uses
  %i.bp = phi i32 [ %i.bg, %.critedge106.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bq = load i8, ptr %.9.i, align 1, !tbaa !62, !noalias !1521
  switch i8 %i.bq, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.br, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_4
