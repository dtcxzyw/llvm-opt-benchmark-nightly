inline.NumInlined: 11292
inline.NumDeleted: 4278
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK5arrow5Field4CopyEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !48, !noalias !680
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !43, !noalias !680
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !43, !noalias !680
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 %i.au, ptr %i.bf, align 8, !tbaa !41, !noalias !680
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store <2 x ptr> %i.av, ptr %i.bg, align 8, !tbaa !580, !noalias !680
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i8 %i.y, ptr %i.bh, align 8, !tbaa !651, !noalias !680
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store <2 x ptr> %i.aw, ptr %i.bi, align 8, !tbaa !580, !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !680
  store ptr %i.ai, ptr %i.be, align 8, !tbaa !355, !alias.scope !680
  store ptr %i.al, ptr %0, align 8, !tbaa !579, !alias.scope !680
  ret void

bb.n:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  %i.bk = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.b
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.n
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  resume { ptr, i32 } %i.bj
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_110MergeTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(12) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.594", align 1 ; 3 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::shared_ptr.55", align 16 ; 4 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 10 uses
  %7 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %8 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %13 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %14 = alloca %"class.arrow::Result", align 8    ; 10 uses
  %15 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %16 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 4 uses
  %17 = alloca %"class.std::shared_ptr.27", align 8 ; 9 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %19 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %20 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %21 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %22 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %23 = alloca %"class.arrow::Result", align 8    ; 10 uses
  %24 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %25 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %26 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %27 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %28 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 4 uses
  %29 = alloca %"class.std::shared_ptr.27", align 16 ; 7 uses
  %30 = alloca %"class.arrow::Result", align 8    ; 10 uses
  %31 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %32 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %33 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %34 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %35 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 4 uses
  %36 = alloca %"class.std::shared_ptr.27", align 16 ; 9 uses
  %37 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %38 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %39 = alloca %"class.std::shared_ptr.27", align 16 ; 6 uses
  %40 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %41 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %42 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %43 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %44 = alloca %"class.std::allocator.594", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %45 = alloca %"class.std::shared_ptr.446", align 8 ; 7 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %47 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %48 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %49 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 7 uses
  %50 = alloca %"class.arrow::Result.37", align 8 ; 13 uses
  %51 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %52 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %53 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %54 = alloca %"class.arrow::Result.37", align 8 ; 13 uses
  %55 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %56 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %57 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %58 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %61 = alloca %"class.arrow::Result.37", align 8 ; 27 uses
  %62 = alloca %"class.std::shared_ptr", align 8  ; 21 uses
  %63 = alloca %"class.arrow::Result.37", align 8 ; 13 uses
  %64 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %65 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %66 = alloca %"class.arrow::Result.37", align 8 ; 28 uses
  %67 = alloca %"class.arrow::Result.37", align 8 ; 27 uses
  %68 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !336
  %i.d = load ptr, ptr %2, align 8, !tbaa !336
  %i.e = tail call noundef zeroext i1 @_ZN5arrow10TypeEqualsERKNS_8DataTypeES2_b(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !580
  store ptr null, ptr %i.g, align 8, !tbaa !355
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !580
  store ptr null, ptr %1, align 8, !tbaa !336
  br label %bb.nm

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %3, align 1, !tbaa !614, !range !59, !noundef !60
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %1, align 8, !tbaa !336    ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !339  ; 5 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !580
  store ptr null, ptr %i.p, align 8, !tbaa !355
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !580
  store ptr null, ptr %2, align 8, !tbaa !336
  br label %bb.nm

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %2, align 8, !tbaa !336    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !339  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.v, align 8, !tbaa !336
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !355
  store ptr null, ptr %i.x, align 8, !tbaa !355
  store ptr %i.y, ptr %i.w, align 8, !tbaa !355
  store ptr null, ptr %1, align 8, !tbaa !336
  br label %bb.nm

bb.h:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %2, align 8, !tbaa !336    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !339 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #37
  call void @_ZN5arrow6Status8FromArgsIJRA60_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %60, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(60) @.str.201)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %60) #37
  %i.ad = load ptr, ptr %60, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !47

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !50, !range !59, !noundef !60
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %60) #37
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #37
  br label %bb.nm

bb.m:                                             ; preds = %bb.i, %bb.f
  %i.ah = phi i32 [ %i.ab, %bb.i ], [ %i.t, %bb.f ] ; 6 uses
  %.val33 = phi ptr [ %i.z, %bb.i ], [ %i.r, %bb.f ] ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !624, !range !59, !noundef !60
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i32 %i.m, 29
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  %i.am = icmp eq i32 %i.ah, 29
  %or.cond286 = and i1 %i.am, %or.cond
  br i1 %or.cond286, label %bb.n, label %bb.dn

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !612, !range !59, !noalias !681, !noundef !60
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !684, !range !59, !noalias !681, !noundef !60
  %i.as = getelementptr inbounds nuw i8, ptr %.val33, i64 104
  %i.at = load i8, ptr %i.as, align 8, !tbaa !684, !range !59, !noalias !681, !noundef !60
  %.not195 = icmp eq i8 %i.ar, %i.at
  br i1 %.not195, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #37, !noalias !681
  call void @_ZN5arrow6Status8FromArgsIJRA85_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %48, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(85) @.str.202), !noalias !681
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %48) #37, !inline_history !687
  %i.au = load ptr, ptr %48, align 8, !tbaa !44   ; 2 uses
  %.not.i147 = icmp eq ptr %i.au, null
  br i1 %.not.i147, label %_ZN5arrow6StatusD2Ev.exit148, label %bb.q, !prof !47

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !50, !range !59, !noundef !60
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit148, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %48) #37
  br label %_ZN5arrow6StatusD2Ev.exit148

_ZN5arrow6StatusD2Ev.exit148:                     ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #37, !noalias !681
  br label %_ZN5arrow12_GLOBAL__N_120MergeDictionaryTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit

bb.s:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #37, !noalias !681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %49, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false), !noalias !681
  %i.ay = getelementptr inbounds nuw i8, ptr %49, i64 5
  store i8 1, ptr %i.ay, align 1, !tbaa !619, !noalias !681
  %i.az = getelementptr inbounds nuw i8, ptr %49, i64 6
  store i8 1, ptr %i.az, align 1, !tbaa !620, !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #37, !noalias !681
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !355, !noalias !681 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !580, !noalias !681
  store <2 x ptr> %i.be, ptr %51, align 16, !tbaa !580, !noalias !681
  %.not.i.i.i144 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i144, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit146, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !681
  %.not.i.i.i.i145 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i145, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3, !noalias !681
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3, !noalias !681
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit146

bb.v:                                             ; preds = %bb.t
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4, !noalias !681 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit146

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit146: ; preds = %bb.s, %bb.u, %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %.val33, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val33, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !355, !noalias !681 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !580, !noalias !681
  store <2 x ptr> %i.bo, ptr %52, align 16, !tbaa !580, !noalias !681
  %.not.i.i.i141 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i141, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit143, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit146
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !681
  %.not.i.i.i.i142 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i142, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !3, !noalias !681
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !3, !noalias !681
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit143

bb.y:                                             ; preds = %bb.w
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4, !noalias !681 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit143

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit143: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit146, %bb.x, %bb.y
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_122MaybeMergeNumericTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE(ptr dead_on_unwind noalias writable align 8 %50, ptr noundef %51, ptr noundef %52, ptr noundef nonnull align 1 dereferenceable(12) %49)
          to label %bb.z unwind label %bb.an, !noalias !681, !inline_history !687

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit143
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !355, !noalias !681 ; 8 uses
  %.not.i.i288 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i288, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit292, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !681 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bv, align 8, !tbaa !484, !noalias !681
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !495, !noalias !681
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !331, !noalias !681
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !681
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #37, !noalias !681, !inline_history !688
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !331, !noalias !681
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !681
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #37, !noalias !681, !inline_history !688
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit292

bb.ac:                                            ; preds = %bb.aa
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !681
  %.not.i.i.i289 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i289, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3, !noalias !681
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i290

bb.ae:                                            ; preds = %bb.ac
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4, !noalias !681
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i290

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i290: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i291 = phi i32 [ %i.by, %bb.ad ], [ %i.ci, %bb.ae ]
  %i.cj = icmp eq i32 %.0.i.i.i.i291, 1
  br i1 %i.cj, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit292, !prof !335

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i290
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #37, !noalias !681
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit292

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit292: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i290, %bb.af
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !355, !noalias !681 ; 8 uses
  %.not.i.i293 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i293, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit297, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit292
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8, !noalias !681 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cl, align 8, !tbaa !484, !noalias !681
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !495, !noalias !681
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !331, !noalias !681
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !681
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #37, !noalias !681, !inline_history !688
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !331, !noalias !681
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !681
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #37, !noalias !681, !inline_history !688
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit297

bb.ai:                                            ; preds = %bb.ag
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !681
  %.not.i.i.i294 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i294, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3, !noalias !681
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i295

bb.ak:                                            ; preds = %bb.ai
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4, !noalias !681
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i295
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_110MergeTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE:bb.a

bb.cr:                                            ; preds = %bb.cp
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i324 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i.i.i324, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i325

bb.ct:                                            ; preds = %bb.cr
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i325

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i325: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i.i.i.i326 = phi i32 [ %i.ig, %bb.cs ], [ %i.iq, %bb.ct ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i.i.i326, 1
  br i1 %i.ir, label %bb.cu, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i327, !prof !335

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i325
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #37
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i327

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i327: ; preds = %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i325, %bb.cq, %bb.co
  %.pr.i328 = load ptr, ptr %54, align 8, !tbaa !44 ; 2 uses
  %.not.i.i329 = icmp eq ptr %.pr.i328, null
  br i1 %.not.i.i329, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit330, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i321, !prof !563

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i321: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i327, %bb.cn
  %i.is = phi ptr [ %.pr.i328, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i327 ], [ %i.hz, %bb.cn ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !50, !range !59, !noundef !60
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit330, label %bb.cv

bb.cv:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i321
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %54) #37
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit330

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit330: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i327, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i321, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37, !noalias !681
  %i.iw = load ptr, ptr %i.de, align 8, !tbaa !355 ; 8 uses
  %.not.i.i331 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i331, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit335, label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit330
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.ix, align 8, !tbaa !484
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !495
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !331
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #37, !inline_history !688
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !331
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #37, !inline_history !688
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit335

bb.cy:                                            ; preds = %bb.cw
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i332 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i332, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i333

bb.da:                                            ; preds = %bb.cy
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i333

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i333: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i334 = phi i32 [ %i.ja, %bb.cz ], [ %i.jk, %bb.da ]
  %i.jl = icmp eq i32 %.0.i.i.i.i334, 1
  br i1 %i.jl, label %bb.db, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit335, !prof !335

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i333
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #37
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit335

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit335: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit330, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i333, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37, !noalias !681
  br label %bb.dd

bb.dc:                                            ; preds = %.body310, %bb.bj
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body310 ], [ %i.fj, %bb.bj ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %53) #37, !noalias !681, !inline_history !687
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37, !noalias !681
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #37, !noalias !681, !inline_history !687
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37, !noalias !681
  br label %bb.dm

bb.dd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit335, %bb.am
  %i.jm = load ptr, ptr %50, align 8, !tbaa !44   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.de, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i336, !prof !47

bb.de:                                            ; preds = %bb.dd
  %i.jo = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !355 ; 8 uses
  %.not.i.i.i.i.i338 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i338, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.jq, align 8, !tbaa !484
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !495
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !331
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #37, !inline_history !711
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !331
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #37, !inline_history !711
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342

bb.dh:                                            ; preds = %bb.df
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i339 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i339, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i340

bb.dj:                                            ; preds = %bb.dh
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i340

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i340: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i.i.i.i341 = phi i32 [ %i.jt, %bb.di ], [ %i.kd, %bb.dj ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i.i.i341, 1
  br i1 %i.ke, label %bb.dk, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342, !prof !335

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i340
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #37
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342: ; preds = %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i340, %bb.dg, %bb.de
  %.pr.i343 = load ptr, ptr %50, align 8, !tbaa !44 ; 2 uses
  %.not.i.i344 = icmp eq ptr %.pr.i343, null
  br i1 %.not.i.i344, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit345, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i336, !prof !563

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i336: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342, %bb.dd
  %i.kf = phi ptr [ %.pr.i343, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342 ], [ %i.jm, %bb.dd ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !50, !range !59, !noundef !60
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit345, label %bb.dl

bb.dl:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i336
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %50) #37
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit345

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit345: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i342, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i336, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #37, !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37, !noalias !681
  br label %_ZN5arrow12_GLOBAL__N_120MergeDictionaryTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit

common.resume:                                    ; preds = %bb.mv, %common.resume.i, %bb.dm
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.dm ], [ %common.resume.op.i, %common.resume.i ], [ %.pn.pn.pn.pn.pn, %bb.mv ]
  resume { ptr, i32 } %common.resume.op

bb.dm:                                            ; preds = %bb.dc, %bb.an
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.dc ], [ %i.dc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #37, !noalias !681
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120MergeDictionaryTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit148, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit345
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  br label %bb.nm

bb.dn:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #37
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val34 = load i8, ptr %i.kj, align 1, !tbaa !622, !range !59, !noundef !60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.kk = trunc nuw i8 %.val34 to i1              ; 2 uses
  br i1 %i.kk, label %bb.do, label %.thread28.i.a

bb.do:                                            ; preds = %bb.dn
  switch i32 %i.m, label %bb.ef [
    i32 16, label %bb.dp
    i32 17, label %bb.du
    i32 33, label %bb.dz
  ]

bb.dp:                                            ; preds = %bb.do
  %i.kl = icmp eq i32 %i.ah, 17
  br i1 %i.kl, label %bb.dq, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284

bb.dq:                                            ; preds = %bb.dp
  %i.km = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date64Ev(), !noalias !712 ; 0 uses
  store ptr null, ptr %61, align 8, !tbaa !44, !alias.scope !712
  %i.kn = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow6date64EvE6result, i64 8), align 8, !tbaa !355, !noalias !712 ; 2 uses
  %i.kp = load <2 x ptr>, ptr @_ZZN5arrow6date64EvE6result, align 16, !tbaa !580, !noalias !712
  store <2 x ptr> %i.kp, ptr %i.kn, align 8, !tbaa !580, !alias.scope !712
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 3 uses
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !712
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ks = load i32, ptr %i.kq, align 4, !tbaa !3, !noalias !712
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kq, align 4, !tbaa !3, !noalias !712
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.dt:                                            ; preds = %bb.dr
  %i.ku = atomicrmw volatile add ptr %i.kq, i32 1 acq_rel, align 4, !noalias !712 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.du:                                            ; preds = %bb.do
  %i.kv = icmp eq i32 %i.ah, 16
  br i1 %i.kv, label %bb.dv, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284

bb.dv:                                            ; preds = %bb.du
  %i.kw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date64Ev(), !noalias !712 ; 0 uses
  store ptr null, ptr %61, align 8, !tbaa !44, !alias.scope !712
  %i.kx = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ky = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow6date64EvE6result, i64 8), align 8, !tbaa !355, !noalias !712 ; 2 uses
  %i.kz = load <2 x ptr>, ptr @_ZZN5arrow6date64EvE6result, align 16, !tbaa !580, !noalias !712
  store <2 x ptr> %i.kz, ptr %i.kx, align 8, !tbaa !580, !alias.scope !712
  %.not.i.i.i.i.i.i35.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i.i35.i, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 3 uses
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !712
  %.not.i.i.i.i.i.i.i36.i = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i.i.i.i.i36.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.lc = load i32, ptr %i.la, align 4, !tbaa !3, !noalias !712
  %i.ld = add nsw i32 %i.lc, 1
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !3, !noalias !712
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.dy:                                            ; preds = %bb.dw
  %i.le = atomicrmw volatile add ptr %i.la, i32 1 acq_rel, align 4, !noalias !712 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.dz:                                            ; preds = %bb.do
  %i.lf = icmp eq i32 %i.ah, 33
  br i1 %i.lf, label %bb.ea, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284

bb.ea:                                            ; preds = %bb.dz
  %i.lg = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !715, !noalias !712
  %i.li = getelementptr inbounds nuw i8, ptr %.val33, i64 72
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !715, !noalias !712
  %.sroa.speculated18.i = tail call i32 @llvm.smax.i32(i32 %i.lh, i32 %i.lj)
  %i.lk = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36, !noalias !719 ; 12 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 1, ptr %i.ll, align 8, !tbaa !484, !noalias !726
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 12 ; 3 uses
  store i32 1, ptr %i.lm, align 4, !tbaa !495, !noalias !726
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12DurationTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lk, align 8, !tbaa !331, !noalias !726
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lo, i8 0, i64 32, i1 false), !noalias !726
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 56
  store i32 33, ptr %i.lp, align 8, !tbaa !339, !noalias !726
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, i8 0, i64 24, i1 false), !noalias !726
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow12DurationTypeE, i64 16), ptr %i.ln, align 8, !tbaa !331, !noalias !726
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 88
  store i32 %.sroa.speculated18.i, ptr %i.lr, align 8, !tbaa !715, !noalias !726
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 48 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  store ptr %i.ln, ptr %i.lt, align 8, !tbaa !496, !noalias !726
  %i.lu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !726
  %.not.i.i3.i.i.i.i.i.i.i.i = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i: ; preds = %bb.ea
  store i32 2, ptr %i.lm, align 4, !tbaa !3, !noalias !726
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ea
  %i.lv = atomicrmw volatile add ptr %i.lm, i32 1 acq_rel, align 4, !noalias !726 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ls, align 8, !tbaa !497, !noalias !726 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.lx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !726
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lx, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ly = load i32, ptr %i.lw, align 4, !tbaa !3, !noalias !726 ; 2 uses
  %i.lz = add nsw i32 %i.ly, -1
  store i32 %i.lz, ptr %i.lw, align 4, !tbaa !3, !noalias !726
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.ma = atomicrmw volatile add ptr %i.lw, i32 -1 acq_rel, align 4, !noalias !726
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ly, %bb.ec ], [ %i.ma, %bb.ed ]
  %i.mb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.mb, label %bb.ee, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  %i.mc = load ptr, ptr %.pre.i.i.i.i.i.i.i.i, align 8, !tbaa !331, !noalias !726
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !noalias !726
  tail call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i.i) #37, !noalias !726, !inline_history !727
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i
  store ptr %i.lk, ptr %i.ls, align 8, !tbaa !497, !noalias !726
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread

bb.ef:                                            ; preds = %bb.do
  %.off.i.i = add i32 %i.m, -19
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.eg, label %.thread28.i.a

bb.eg:                                            ; preds = %bb.ef
  %.off.i38.i = add i32 %i.ah, -19
  %switch.i39.i = icmp ult i32 %.off.i38.i, 2
  br i1 %switch.i39.i, label %bb.eh, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284

bb.eh:                                            ; preds = %bb.eg
  %i.mf = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !728, !noalias !712
  %i.mh = getelementptr inbounds nuw i8, ptr %.val33, i64 72
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !728, !noalias !712
  %.sroa.speculated13.i = tail call i32 @llvm.smax.i32(i32 %i.mg, i32 %i.mi) ; 3 uses
  %i.mj = and i32 %.sroa.speculated13.i, -2
  %or.cond.i = icmp eq i32 %i.mj, 2
  %i.mk = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36, !noalias !712 ; 16 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i32 1, ptr %i.ml, align 8, !tbaa !484, !noalias !712
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 12 ; 7 uses
  store i32 1, ptr %i.mm, align 4, !tbaa !495, !noalias !712
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 8 uses
  br i1 %or.cond.i, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %bb.eh
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10Time64TypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.mk, align 8, !tbaa !331, !noalias !730
  invoke void @_ZN5arrow10Time64TypeC1ENS_8TimeUnit4typeE(ptr noundef nonnull align 8 dereferenceable(76) %i.mn, i32 noundef %.sroa.speculated13.i)
          to label %bb.ej unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time64TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, !noalias !730

common.resume.i:                                  ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time32TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time64TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.mo, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time64TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i ], [ %i.nj, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time32TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef 96) #38, !noalias !712
  br label %common.resume

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time64TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i: ; preds = %bb.ei
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.ej:                                            ; preds = %bb.ei
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 48 ; 3 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !497, !noalias !730 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ek, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ej
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load atomic i32, ptr %i.ms monotonic, align 8, !noalias !730
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %bb.ek, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread

bb.ek:                                            ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i, %bb.ej
  store ptr %i.mn, ptr %i.mp, align 8, !tbaa !496, !noalias !730
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !730
  %.not.i.i3.i.i.i.i.i.i.i41.i = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i41.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.mw = load i32, ptr %i.mm, align 4, !tbaa !3, !noalias !730
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mm, align 4, !tbaa !3, !noalias !730
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i42.i

bb.em:                                            ; preds = %bb.ek
  %i.my = atomicrmw volatile add ptr %i.mm, i32 1 acq_rel, align 4, !noalias !730 ; 0 uses
  %.pre.i.i.i.i.i.i.i47.i = load ptr, ptr %i.mq, align 8, !tbaa !497, !noalias !730
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i42.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i42.i: ; preds = %bb.em, %bb.el
  %i.mz = phi ptr [ %.pre.i.i.i.i.i.i.i47.i, %bb.em ], [ %i.mr, %bb.el ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i43.i = icmp eq ptr %i.mz, null
  br i1 %.not6.i.i.i.i.i.i.i.i43.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i42.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 12 ; 3 uses
  %i.nb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !730
  %.not.i7.i.i.i.i.i.i.i.i44.i = icmp eq i8 %i.nb, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i44.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nc = load i32, ptr %i.na, align 4, !tbaa !3, !noalias !730 ; 2 uses
  %i.nd = add nsw i32 %i.nc, -1
  store i32 %i.nd, ptr %i.na, align 4, !tbaa !3, !noalias !730
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45.i

bb.ep:                                            ; preds = %bb.en
  %i.ne = atomicrmw volatile add ptr %i.na, i32 -1 acq_rel, align 4, !noalias !730
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45.i: ; preds = %bb.ep, %bb.eo
  %.0.i.i.i.i.i.i.i.i.i.i46.i = phi i32 [ %i.nc, %bb.eo ], [ %i.ne, %bb.ep ]
  %i.nf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i46.i, 1
  br i1 %i.nf, label %bb.eq, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i

bb.eq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45.i
  %i.ng = load ptr, ptr %i.mz, align 8, !tbaa !331, !noalias !730
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !730
  tail call void %i.ni(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #37, !noalias !730, !inline_history !735
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.eq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i45.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i42.i
  store ptr %i.mk, ptr %i.mq, align 8, !tbaa !497, !noalias !730
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread

bb.er:                                            ; preds = %bb.eh
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10Time32TypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.mk, align 8, !tbaa !331, !noalias !736
  invoke void @_ZN5arrow10Time32TypeC1ENS_8TimeUnit4typeE(ptr noundef nonnull align 8 dereferenceable(76) %i.mn, i32 noundef %.sroa.speculated13.i)
          to label %bb.es unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time32TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, !noalias !736

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10Time32TypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i: ; preds = %bb.er
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.es:                                            ; preds = %bb.er
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mk, i64 48 ; 3 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !497, !noalias !736 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i53.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i53.i, label %bb.et, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i54.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i54.i: ; preds = %bb.es
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load atomic i32, ptr %i.nn monotonic, align 8, !noalias !736
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.et, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread

bb.et:                                            ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i54.i, %bb.es
  store ptr %i.mn, ptr %i.nk, align 8, !tbaa !496, !noalias !736
  %i.nq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !736
  %.not.i.i3.i.i.i.i.i.i.i55.i = icmp eq i8 %i.nq, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i55.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.nr = load i32, ptr %i.mm, align 4, !tbaa !3, !noalias !736
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.mm, align 4, !tbaa !3, !noalias !736
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i56.i

bb.ev:                                            ; preds = %bb.et
  %i.nt = atomicrmw volatile add ptr %i.mm, i32 1 acq_rel, align 4, !noalias !736 ; 0 uses
  %.pre.i.i.i.i.i.i.i62.i = load ptr, ptr %i.nl, align 8, !tbaa !497, !noalias !736
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i56.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i56.i: ; preds = %bb.ev, %bb.eu
  %i.nu = phi ptr [ %.pre.i.i.i.i.i.i.i62.i, %bb.ev ], [ %i.nm, %bb.eu ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i57.i = icmp eq ptr %i.nu, null
  br i1 %.not6.i.i.i.i.i.i.i.i57.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i56.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 12 ; 3 uses
  %i.nw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !736
  %.not.i7.i.i.i.i.i.i.i.i58.i = icmp eq i8 %i.nw, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i58.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.nx = load i32, ptr %i.nv, align 4, !tbaa !3, !noalias !736 ; 2 uses
  %i.ny = add nsw i32 %i.nx, -1
  store i32 %i.ny, ptr %i.nv, align 4, !tbaa !3, !noalias !736
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i59.i

bb.ey:                                            ; preds = %bb.ew
  %i.nz = atomicrmw volatile add ptr %i.nv, i32 -1 acq_rel, align 4, !noalias !736
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i59.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i59.i: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i.i.i.i.i.i.i60.i = phi i32 [ %i.nx, %bb.ex ], [ %i.nz, %bb.ey ]
  %i.oa = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i60.i, 1
  br i1 %i.oa, label %bb.ez, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i59.i
  %i.ob = load ptr, ptr %i.nu, align 8, !tbaa !331, !noalias !736
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !noalias !736
  tail call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #37, !noalias !736, !inline_history !741
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i: ; preds = %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i59.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i56.i
  store ptr %i.mk, ptr %i.nl, align 8, !tbaa !497, !noalias !736
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread

.thread28.i.a:                                    ; preds = %bb.ef, %bb.dn
  %69 = icmp eq i32 %i.m, 18
  %70 = icmp eq i32 %i.ah, 18
  %or.cond287 = and i1 %69, %70
  br i1 %or.cond287, label %bb.fa, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284

bb.fa:                                            ; preds = %.thread28.i.a
  %i.oe = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.og = load i64, ptr %i.of, align 8, !tbaa !41, !noalias !712 ; 3 uses
  %i.oh = icmp eq i64 %i.og, 0                    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.val33, i64 80
  %i.oj = getelementptr inbounds nuw i8, ptr %.val33, i64 88
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !41, !noalias !712 ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 0
  %i.om = xor i1 %i.oh, %i.ol
  br i1 %i.om, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #37, !noalias !712
  call void @_ZN5arrow6Status8FromArgsIJRA68_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %46, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(68) @.str.205), !noalias !712
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(8) %46) #37
  %i.on = load ptr, ptr %46, align 8, !tbaa !44, !noalias !712 ; 2 uses
  %.not.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.fc, !prof !47

bb.fc:                                            ; preds = %bb.fb
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !50, !range !59, !noundef !60
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #37
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.fd, %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #37, !noalias !712
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.fe:                                            ; preds = %bb.fa
  %i.or = icmp eq i64 %i.og, %i.ok
  br i1 %i.or, label %bb.ff, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31.i

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.oh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ff
  %i.os = load ptr, ptr %i.oi, align 8, !tbaa !48, !noalias !712
  %i.ot = load ptr, ptr %i.oe, align 8, !tbaa !48, !noalias !712
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ot, ptr %i.os, i64 %i.og), !noalias !712
  %i.ou = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ou, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #37, !noalias !712
  call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %47, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(49) @.str.206), !noalias !712
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(8) %47) #37
  %i.ov = load ptr, ptr %47, align 8, !tbaa !44, !noalias !712 ; 2 uses
  %.not.i68.i = icmp eq ptr %i.ov, null
  br i1 %.not.i68.i, label %_ZN5arrow6StatusD2Ev.exit69.i, label %bb.fg, !prof !47

bb.fg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !50, !range !59, !noundef !60
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %_ZN5arrow6StatusD2Ev.exit69.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %47) #37
  br label %_ZN5arrow6StatusD2Ev.exit69.i

_ZN5arrow6StatusD2Ev.exit69.i:                    ; preds = %bb.fh, %bb.fg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #37, !noalias !712
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ff
  br i1 %i.kk, label %bb.fi, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284

bb.fi:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !742, !noalias !712
  %i.pb = getelementptr inbounds nuw i8, ptr %.val33, i64 72
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !742, !noalias !712
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.pa, i32 %i.pc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !712
  store i32 %.sroa.speculated.i, ptr %i.b, align 4, !tbaa !744, !noalias !745
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #37, !noalias !745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #37, !noalias !751
  store ptr null, ptr %45, align 8, !tbaa !752, !alias.scope !748, !noalias !745
  %i.pd = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow13TimestampTypeESaIvEJRNS4_8TimeUnit4typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull align 8 dereferenceable(16) %45, ptr nonnull %44, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.oe), !noalias !745
  %i.pe = load ptr, ptr %45, align 8, !tbaa !752, !alias.scope !748, !noalias !745 ; 5 uses
  %i.pf = icmp eq ptr %i.pe, null
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  br i1 %i.pf, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 32 ; 3 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !497, !noalias !745 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i71.i = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i71.i, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i72.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i72.i: ; preds = %bb.fj
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load atomic i32, ptr %i.pj monotonic, align 8, !noalias !745
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i72.i, %bb.fj
  store ptr %i.pe, ptr %i.pg, align 8, !tbaa !496, !noalias !745
  %i.pm = load ptr, ptr %i.pd, align 8, !tbaa !355, !alias.scope !748, !noalias !745 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i74.i, label %bb.fk

bb.fk:                                            ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 12 ; 3 uses
  %i.po = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !751
  %.not.i.i3.i.i.i.i.i.i.i73.i = icmp eq i8 %i.po, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i73.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.pp = load i32, ptr %i.pn, align 4, !tbaa !3, !noalias !745
  %i.pq = add nsw i32 %i.pp, 1
  store i32 %i.pq, ptr %i.pn, align 4, !tbaa !3, !noalias !745
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i74.i

bb.fm:                                            ; preds = %bb.fk
  %i.pr = atomicrmw volatile add ptr %i.pn, i32 1 acq_rel, align 4, !noalias !745 ; 0 uses
  %.pre.i.i.i.i.i.i.i80.i = load ptr, ptr %i.ph, align 8, !tbaa !497, !noalias !745
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i74.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i74.i: ; preds = %bb.fm, %bb.fl, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ps = phi ptr [ %.pre.i.i.i.i.i.i.i80.i, %bb.fm ], [ %i.pi, %bb.fl ], [ %i.pi, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i.i.i.i.i.i ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i75.i = icmp eq ptr %i.ps, null
  br i1 %.not6.i.i.i.i.i.i.i.i75.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i79.i, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i74.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 12 ; 3 uses
  %i.pu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !751
  %.not.i7.i.i.i.i.i.i.i.i76.i = icmp eq i8 %i.pu, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i76.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.pv = load i32, ptr %i.pt, align 4, !tbaa !3, !noalias !745 ; 2 uses
  %i.pw = add nsw i32 %i.pv, -1
  store i32 %i.pw, ptr %i.pt, align 4, !tbaa !3, !noalias !745
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i77.i

bb.fp:                                            ; preds = %bb.fn
  %i.px = atomicrmw volatile add ptr %i.pt, i32 -1 acq_rel, align 4, !noalias !745
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i77.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i77.i: ; preds = %bb.fp, %bb.fo
  %.0.i.i.i.i.i.i.i.i.i.i78.i = phi i32 [ %i.pv, %bb.fo ], [ %i.px, %bb.fp ]
  %i.py = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i78.i, 1
  br i1 %i.py, label %bb.fq, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i79.i

bb.fq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i77.i
  %i.pz = load ptr, ptr %i.ps, align 8, !tbaa !331, !noalias !745
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !noalias !745
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #37, !noalias !745, !inline_history !755
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i79.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i79.i: ; preds = %bb.fq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i77.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i74.i
  store ptr %i.pm, ptr %i.ph, align 8, !tbaa !497, !noalias !745
  %.pre.i.i = load ptr, ptr %45, align 8, !tbaa !752, !noalias !745
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i: ; preds = %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i79.i, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i72.i, %bb.fi
  %i.qc = phi ptr [ %.pre.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i79.i ], [ %i.pe, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i72.i ], [ null, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #37, !noalias !751
  %i.qd = load ptr, ptr %i.pd, align 8, !tbaa !355, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #37, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !712
  store ptr null, ptr %61, align 8, !tbaa !44, !alias.scope !712
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread

_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284: ; preds = %bb.dp, %bb.du, %bb.dz, %bb.eg, %.thread28.i.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  store i64 0, ptr %61, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.qe = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr null, ptr %62, align 8, !tbaa !336, !alias.scope !762
  %i.qf = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr null, ptr %i.qg, align 8, !tbaa !355, !noalias !762
  store ptr null, ptr %i.qf, align 8, !tbaa !355, !alias.scope !762
  store ptr null, ptr %i.qe, align 8, !tbaa !336, !noalias !762
  br label %bb.fs

_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split: ; preds = %_ZN5arrow6StatusD2Ev.exit69.i, %_ZN5arrow6StatusD2Ev.exit.i, %bb.dy, %bb.dx, %bb.dv, %bb.dt, %bb.ds, %bb.dq
  %.pr = load ptr, ptr %61, align 8, !tbaa !44
  %i.qh = icmp eq ptr %.pr, null
  br i1 %i.qh, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split._ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread_crit_edge, label %bb.fr, !prof !763

_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split._ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread_crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %61, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !336, !noalias !764
  %.phi.trans.insert199 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %.pre200 = load ptr, ptr %.phi.trans.insert199, align 8, !tbaa !355, !noalias !764
  br label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread

bb.fr:                                            ; preds = %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #37
  br label %bb.nd

_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i54.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.ph = phi ptr [ %i.lk, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %i.mk, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i ], [ %i.mk, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i ], [ %i.mk, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i ], [ %i.mk, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i54.i ]
  %.ph282 = phi ptr [ %i.ln, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %i.mn, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i.i ], [ %i.mn, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i.i ], [ %i.mn, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i.i.i.i61.i ], [ %i.mn, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i.i.i.i54.i ] ; 2 uses
  store ptr null, ptr %61, align 8, !tbaa !44, !alias.scope !712
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.qi = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %.ph282, ptr %62, align 8, !tbaa !336, !alias.scope !771
  %i.qj = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr null, ptr %i.qk, align 8, !tbaa !355, !noalias !771
  store ptr null, ptr %i.qi, align 8, !tbaa !336, !noalias !771
  br label %.thread190

_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread: ; preds = %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split._ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread_crit_edge, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i
  %i.ql = phi ptr [ %.pre200, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split._ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread_crit_edge ], [ %i.qd, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i ] ; 2 uses
  %i.qm = phi ptr [ %.pre, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exitthread-pre-split._ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread_crit_edge ], [ %i.qc, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit85.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.qn = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %i.qm, ptr %62, align 8, !tbaa !336, !alias.scope !764
  %i.qo = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr null, ptr %i.qp, align 8, !tbaa !355, !noalias !764
  store ptr %i.ql, ptr %i.qo, align 8, !tbaa !355, !alias.scope !764
  store ptr null, ptr %i.qn, align 8, !tbaa !336, !noalias !764
  %.not = icmp eq ptr %i.qm, null
  br i1 %.not, label %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread._crit_edge, label %.thread190

_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread
  %.pre347 = load ptr, ptr %1, align 8, !tbaa !336
  br label %bb.fs

.thread190:                                       ; preds = %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread
  %i.qq = phi ptr [ %i.qj, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread ], [ %i.qo, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread ]
  %i.qr = phi ptr [ %.ph282, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread ], [ %i.qm, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread ]
  %i.qs = phi ptr [ %.ph, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread ], [ %i.ql, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread ]
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qr, ptr %i.qt, align 8, !tbaa !336
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.qq, align 8, !tbaa !355
  store ptr %i.qs, ptr %i.qu, align 8, !tbaa !355
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117

bb.fs:                                            ; preds = %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread._crit_edge, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284
  %i.qv = phi ptr [ %i.k, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284 ], [ %.pre347, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread._crit_edge ]
  %i.qw = phi ptr [ %i.qf, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread.thread284 ], [ %i.qo, %_ZN5arrow12_GLOBAL__N_123MaybeMergeTemporalTypesERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE.exit.thread._crit_edge ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #37
  store ptr %i.qv, ptr %64, align 8, !tbaa !336
  %i.qx = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !355 ; 3 uses
  store ptr %i.qz, ptr %i.qx, align 8, !tbaa !355
  %.not.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 3 uses
  %i.rb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.rb, 0
  br i1 %.not.i.i.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rc = load i32, ptr %i.ra, align 4, !tbaa !3
  %i.rd = add nsw i32 %i.rc, 1
  store i32 %i.rd, ptr %i.ra, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.fv:                                            ; preds = %bb.ft
  %i.re = atomicrmw volatile add ptr %i.ra, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.fs, %bb.fu, %bb.fv
  %i.rf = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !355 ; 2 uses
  %i.ri = load <2 x ptr>, ptr %2, align 8, !tbaa !580
  store <2 x ptr> %i.ri, ptr %65, align 16, !tbaa !580
  %.not.i.i.i36 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i36, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit38, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 3 uses
  %i.rk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i37 = icmp eq i8 %i.rk, 0
  br i1 %.not.i.i.i.i37, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.rl = load i32, ptr %i.rj, align 4, !tbaa !3
  %i.rm = add nsw i32 %i.rl, 1
  store i32 %i.rm, ptr %i.rj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit38

bb.fy:                                            ; preds = %bb.fw
  %i.rn = atomicrmw volatile add ptr %i.rj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit38

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit38: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.fx, %bb.fy
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_122MaybeMergeNumericTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE(ptr dead_on_unwind noalias writable align 8 %63, ptr noundef %64, ptr noundef %65, ptr noundef nonnull align 1 dereferenceable(12) %3)
          to label %bb.fz unwind label %bb.gn

bb.fz:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit38
  %i.ro = load ptr, ptr %i.rf, align 8, !tbaa !355 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 4 uses
  %i.rq = load atomic i64, ptr %i.rp acquire, align 8 ; 2 uses
  %i.rr = icmp eq i64 %i.rq, 4294967297
  %i.rs = trunc i64 %i.rq to i32                  ; 2 uses
  br i1 %i.rr, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.rp, align 8, !tbaa !484
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  store i32 0, ptr %i.rt, align 4, !tbaa !495
  %i.ru = load ptr, ptr %i.ro, align 8, !tbaa !331
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(16) %i.ro) #37, !inline_history !564
  %i.rx = load ptr, ptr %i.ro, align 8, !tbaa !331
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8
  call void %i.rz(ptr noundef nonnull align 8 dereferenceable(16) %i.ro) #37, !inline_history !564
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gc:                                            ; preds = %bb.ga
  %i.sa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i40 = icmp eq i8 %i.sa, 0
  br i1 %.not.i.i.i40, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.sb = add nsw i32 %i.rs, -1
  store i32 %i.sb, ptr %i.rp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ge:                                            ; preds = %bb.gc
  %i.sc = atomicrmw volatile add ptr %i.rp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i = phi i32 [ %i.rs, %bb.gd ], [ %i.sc, %bb.ge ]
  %i.sd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.sd, label %bb.gf, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ro) #37
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.fz, %bb.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.gf
  %i.se = load ptr, ptr %i.qx, align 8, !tbaa !355 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.se, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, label %bb.gg

bb.gg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 4 uses
  %i.sg = load atomic i64, ptr %i.sf acquire, align 8 ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 4294967297
  %i.si = trunc i64 %i.sg to i32                  ; 2 uses
  br i1 %i.sh, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.sf, align 8, !tbaa !484
  %i.sj = getelementptr inbounds nuw i8, ptr %i.se, i64 12
  store i32 0, ptr %i.sj, align 4, !tbaa !495
  %i.sk = load ptr, ptr %i.se, align 8, !tbaa !331
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_110MergeTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE:bb.a
  br i1 %.not.i.i.i.i.i.i58.i, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.hk

bb.hk:                                            ; preds = %.noexc60
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 8 ; 3 uses
  %i.vm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !781
  %.not.i.i.i.i.i.i.i59.i = icmp eq i8 %i.vm, 0
  br i1 %.not.i.i.i.i.i.i.i59.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.vn = load i32, ptr %i.vl, align 4, !tbaa !3, !noalias !781
  %i.vo = add nsw i32 %i.vn, 1
  store i32 %i.vo, ptr %i.vl, align 4, !tbaa !3, !noalias !781
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hm:                                            ; preds = %bb.hk
  %i.vp = atomicrmw volatile add ptr %i.vl, i32 1 acq_rel, align 4, !noalias !781 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hn:                                            ; preds = %.thread7.i
  %i.vq = icmp eq i32 %i.vc, 35
  br i1 %i.vq, label %bb.hp, label %.thread11.i

bb.ho:                                            ; preds = %.thread7.i
  %i.vr = icmp eq i32 %i.vc, 14
  br i1 %i.vr, label %bb.hp, label %.thread11.i

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.vs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
          to label %.noexc61 unwind label %bb.hu  ; 0 uses

.noexc61:                                         ; preds = %bb.hp
  store ptr null, ptr %66, align 8, !tbaa !44, !alias.scope !781
  %i.vt = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12large_binaryEvE6result, i64 8), align 8, !tbaa !355, !noalias !781 ; 2 uses
  %i.vv = load <2 x ptr>, ptr @_ZZN5arrow12large_binaryEvE6result, align 16, !tbaa !580, !noalias !781
  store <2 x ptr> %i.vv, ptr %i.vt, align 8, !tbaa !580, !alias.scope !781
  %.not.i.i.i.i.i.i61.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i.i.i.i61.i, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.hq

bb.hq:                                            ; preds = %.noexc61
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 8 ; 3 uses
  %i.vx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !781
  %.not.i.i.i.i.i.i.i62.i = icmp eq i8 %i.vx, 0
  br i1 %.not.i.i.i.i.i.i.i62.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.vy = load i32, ptr %i.vw, align 4, !tbaa !3, !noalias !781
  %i.vz = add nsw i32 %i.vy, 1
  store i32 %i.vz, ptr %i.vw, align 4, !tbaa !3, !noalias !781
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hs:                                            ; preds = %bb.hq
  %i.wa = atomicrmw volatile add ptr %i.vw, i32 1 acq_rel, align 4, !noalias !781 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

.thread11.i:                                      ; preds = %bb.gz, %bb.ho, %bb.hn, %bb.hi, %.thread7.i, %bb.hh, %bb.hf, %.thread.i, %bb.gw
  store i64 0, ptr %66, align 8
  br label %bb.hv

_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split: ; preds = %.noexc, %.noexc56, %.noexc57, %bb.hb, %bb.hc, %.noexc58, %.noexc59, %.noexc60, %bb.hl, %bb.hm, %.noexc61, %bb.hr, %bb.hs
  %.pr182 = load ptr, ptr %66, align 8, !tbaa !44
  %i.wb = icmp eq ptr %.pr182, null
  br i1 %i.wb, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge, label %bb.ht, !prof !47

_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  %.phi.trans.insert201 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %.pre202 = load ptr, ptr %.phi.trans.insert201, align 8, !tbaa !336, !noalias !784
  %.phi.trans.insert203 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %.pre204 = load ptr, ptr %.phi.trans.insert203, align 8, !tbaa !355, !noalias !784
  br label %bb.hv

bb.ht:                                            ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %66) #37
  br label %bb.mc

bb.hu:                                            ; preds = %bb.hp, %bb.hj, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i, %.thread13.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mu

bb.hv:                                            ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge, %.thread11.i
  %i.wd = phi ptr [ %.pre204, %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge ], [ null, %.thread11.i ]
  %i.we = phi ptr [ %.pre202, %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge ], [ null, %.thread11.i ] ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %66, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wf, i8 0, i64 16, i1 false)
  store ptr %i.we, ptr %62, align 8, !tbaa !779
  %i.wg = load ptr, ptr %i.qw, align 8, !tbaa !355 ; 8 uses
  store ptr %i.wd, ptr %i.qw, align 8, !tbaa !355
  %.not.i.i.i.i62 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i.i62, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8 ; 4 uses
  %i.wi = load atomic i64, ptr %i.wh acquire, align 8 ; 2 uses
  %i.wj = icmp eq i64 %i.wi, 4294967297
  %i.wk = trunc i64 %i.wi to i32                  ; 2 uses
  br i1 %i.wj, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 0, ptr %i.wh, align 8, !tbaa !484
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wg, i64 12
  store i32 0, ptr %i.wl, align 4, !tbaa !495
  %i.wm = load ptr, ptr %i.wg, align 8, !tbaa !331
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8
  call void %i.wo(ptr noundef nonnull align 8 dereferenceable(16) %i.wg) #37, !inline_history !780
  %i.wp = load ptr, ptr %i.wg, align 8, !tbaa !331
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(16) %i.wg) #37, !inline_history !780
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split

bb.hy:                                            ; preds = %bb.hw
  %i.ws = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i63 = icmp eq i8 %i.ws, 0
  br i1 %.not.i.i.i.i.i63, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.wt = add nsw i32 %i.wk, -1
  store i32 %i.wt, ptr %i.wh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64

bb.ia:                                            ; preds = %bb.hy
  %i.wu = atomicrmw volatile add ptr %i.wh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64: ; preds = %bb.ia, %bb.hz
  %.0.i.i.i.i.i.i65 = phi i32 [ %i.wk, %bb.hz ], [ %i.wu, %bb.ia ]
  %i.wv = icmp eq i32 %.0.i.i.i.i.i.i65, 1
  br i1 %i.wv, label %bb.ib, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split, !prof !335

bb.ib:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wg) #37
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split: ; preds = %bb.hx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64, %bb.ib
  %.pr183 = load ptr, ptr %62, align 8, !tbaa !336
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split, %bb.hv
  %i.ww = phi ptr [ %.pr183, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split ], [ %i.we, %bb.hv ] ; 2 uses
  %.not193 = icmp eq ptr %i.ww, null
  br i1 %.not193, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ww, ptr %i.wx, align 8, !tbaa !336
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wz = load ptr, ptr %i.qw, align 8, !tbaa !355
  store ptr null, ptr %i.qw, align 8, !tbaa !355
  store ptr %i.wz, ptr %i.wy, align 8, !tbaa !355
  store ptr null, ptr %62, align 8, !tbaa !336
  br label %bb.mc

bb.id:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  %i.xa = load ptr, ptr %1, align 8, !tbaa !336, !noalias !789 ; 6 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !339, !noalias !789 ; 2 uses
  switch i32 %i.xc, label %.thread187 [
    i32 32, label %bb.ie
    i32 25, label %.thread184
    i32 36, label %.thread184
    i32 30, label %._crit_edge212
    i32 26, label %._crit_edge208
  ]

._crit_edge212:                                   ; preds = %bb.id
  %.pre213 = load ptr, ptr %2, align 8, !tbaa !336, !noalias !789 ; 2 uses
  %.phi.trans.insert214 = getelementptr inbounds nuw i8, ptr %.pre213, i64 40
  %.pre215 = load i32, ptr %.phi.trans.insert214, align 8, !tbaa !339, !noalias !789
  br label %bb.jn

._crit_edge208:                                   ; preds = %bb.id
  %.pre209 = load ptr, ptr %2, align 8, !tbaa !336, !noalias !789
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %.pre209, i64 40
  %.pre211 = load i32, ptr %.phi.trans.insert210, align 8, !tbaa !339, !noalias !789
  br label %bb.lf

bb.ie:                                            ; preds = %bb.id
  %i.xd = load ptr, ptr %2, align 8, !tbaa !336, !noalias !789 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 40
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !339, !noalias !789
  %i.xg = icmp eq i32 %i.xf, 32
  br i1 %i.xg, label %bb.if, label %.thread184

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37, !noalias !789
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !792, !noalias !789
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !573, !noalias !789 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !789
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xd, i64 48
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !792, !noalias !789
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !573, !noalias !789
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  invoke void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.xm, ptr noundef nonnull align 8 dereferenceable(32) %i.xn)
          to label %.noexc76 unwind label %bb.lj, !inline_history !793

.noexc76:                                         ; preds = %bb.if
  %i.xo = load ptr, ptr %7, align 8, !tbaa !573, !noalias !789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false), !noalias !789
  invoke void @_ZNK5arrow5Field9MergeWithERKS0_NS0_12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %i.xj, ptr noundef nonnull align 8 dereferenceable(96) %i.xo, ptr noundef nonnull %8)
          to label %bb.ig unwind label %bb.ii, !noalias !789, !inline_history !793

bb.ig:                                            ; preds = %.noexc76
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !789
  %i.xp = load ptr, ptr %6, align 8, !tbaa !44, !noalias !789
  %i.xq = icmp eq ptr %i.xp, null
  br i1 %i.xq, label %bb.ij, label %bb.ih, !prof !47

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(8) %6) #37, !inline_history !793
  br label %bb.is

bb.ii:                                            ; preds = %.noexc76
  %i.xr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !789
  br label %.body

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37, !noalias !789
  %i.xs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !573, !noalias !794 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !355, !noalias !794 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xa, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, i8 0, i64 16, i1 false)
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !799, !noalias !789 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xd, i64 72
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !799, !noalias !789
  %i.yb = icmp eq i32 %i.xy, %i.ya
  br i1 %i.yb, label %bb.ik, label %bb.in

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !789
  store ptr %i.xt, ptr %11, align 8, !tbaa !573, !noalias !789
  %i.yc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.xu, align 8, !tbaa !355, !noalias !789
  store ptr %i.xw, ptr %i.yc, align 8, !tbaa !355, !noalias !789
  store ptr null, ptr %9, align 8, !tbaa !573, !noalias !789
  invoke void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_5FieldEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %10, ptr noundef nonnull %11, i32 noundef %i.xy)
          to label %bb.il unwind label %bb.im, !noalias !789, !inline_history !793

bb.il:                                            ; preds = %bb.ik
  store ptr null, ptr %67, align 8, !tbaa !44
  %i.yd = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.yf = load <2 x ptr>, ptr %10, align 16, !tbaa !580
  store ptr null, ptr %i.ye, align 8, !tbaa !355
  store <2 x ptr> %i.yf, ptr %i.yd, align 8, !tbaa !580
  store ptr null, ptr %10, align 16, !tbaa !336
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #37, !inline_history !793
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !789
  br label %bb.iq

bb.im:                                            ; preds = %bb.ik
  %i.yg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !789
  br label %bb.ir

bb.in:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37, !noalias !789
  store ptr %i.xt, ptr %13, align 8, !tbaa !573, !noalias !789
  %i.yh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.xu, align 8, !tbaa !355, !noalias !789
  store ptr %i.xw, ptr %i.yh, align 8, !tbaa !355, !noalias !789
  store ptr null, ptr %9, align 8, !tbaa !573, !noalias !789
  invoke void @_ZN5arrow4listESt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %12, ptr noundef nonnull %13)
          to label %bb.io unwind label %bb.ip, !noalias !789, !inline_history !793

bb.io:                                            ; preds = %bb.in
  store ptr null, ptr %67, align 8, !tbaa !44
  %i.yi = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.yk = load <2 x ptr>, ptr %12, align 16, !tbaa !580
  store ptr null, ptr %i.yj, align 8, !tbaa !355
  store <2 x ptr> %i.yk, ptr %i.yi, align 8, !tbaa !580
  store ptr null, ptr %12, align 16, !tbaa !336
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #37, !inline_history !793
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37, !noalias !789
  br label %bb.iq

bb.ip:                                            ; preds = %bb.in
  %i.yl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37, !noalias !789
  br label %bb.ir

bb.iq:                                            ; preds = %bb.io, %bb.il
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !789
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip, %bb.im
  %.pn84.i = phi { ptr, i32 } [ %i.yg, %bb.im ], [ %i.yl, %bb.ip ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !789
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !789
  br label %.body

bb.is:                                            ; preds = %bb.iq, %bb.ih
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !789
  br label %bb.lh

.thread184:                                       ; preds = %bb.id, %bb.id, %bb.ie
  %i.ym = load ptr, ptr %2, align 8, !tbaa !336, !noalias !789 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 40
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !339, !noalias !789 ; 3 uses
  switch i32 %i.yo, label %_ZN5arrow7is_listENS_4Type4typeE.exit173 [
    i32 25, label %bb.it
    i32 36, label %bb.it
    i32 32, label %bb.it
  ]

bb.it:                                            ; preds = %.thread184, %.thread184, %.thread184
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37, !noalias !789
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !792, !noalias !789
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !573, !noalias !789 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37, !noalias !789
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ym, i64 48
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !792, !noalias !789
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !573, !noalias !789
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  invoke void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %i.yu, ptr noundef nonnull align 8 dereferenceable(32) %i.yv)
          to label %.noexc77 unwind label %bb.lj, !inline_history !793

.noexc77:                                         ; preds = %bb.it
  %i.yw = load ptr, ptr %15, align 8, !tbaa !573, !noalias !789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %16, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false), !noalias !789
  invoke void @_ZNK5arrow5Field9MergeWithERKS0_NS0_12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %14, ptr noundef nonnull align 8 dereferenceable(96) %i.yr, ptr noundef nonnull align 8 dereferenceable(96) %i.yw, ptr noundef nonnull %16)
          to label %bb.iu unwind label %bb.iw, !noalias !789, !inline_history !793

bb.iu:                                            ; preds = %.noexc77
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !789
  %i.yx = load ptr, ptr %14, align 8, !tbaa !44, !noalias !789
  %i.yy = icmp eq ptr %i.yx, null
  br i1 %i.yy, label %bb.ix, label %bb.iv, !prof !47

bb.iv:                                            ; preds = %bb.iu
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(8) %14) #37, !inline_history !793
  br label %bb.jm

bb.iw:                                            ; preds = %.noexc77
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !789
  br label %.body

bb.ix:                                            ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37, !noalias !789
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !806), !noalias !789
  %i.za = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !573, !noalias !809 ; 3 uses
  store ptr %i.zb, ptr %17, align 8, !tbaa !573, !alias.scope !810, !noalias !789
  %i.zc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !355, !noalias !809 ; 3 uses
  store ptr null, ptr %i.zd, align 8, !tbaa !355, !noalias !809
  store ptr %i.ze, ptr %i.zc, align 8, !tbaa !355, !alias.scope !810, !noalias !789
  store ptr null, ptr %i.za, align 8, !tbaa !573, !noalias !809
  %i.zf = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !623, !range !59, !noalias !789, !noundef !60
  %i.zh = trunc nuw i8 %i.zg to i1
  %.pre205 = load ptr, ptr %1, align 8, !tbaa !336, !noalias !789
  %.phi.trans.insert206 = getelementptr inbounds nuw i8, ptr %.pre205, i64 40
  %.pre207 = load i32, ptr %.phi.trans.insert206, align 8, !tbaa !339, !noalias !789 ; 2 uses
  br i1 %i.zh, label %._crit_edge, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.zi = load ptr, ptr %2, align 8, !tbaa !336, !noalias !789
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 40
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !339, !noalias !789
  %.not.i75 = icmp eq i32 %.pre207, %i.zk
  br i1 %.not.i75, label %._crit_edge, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37, !noalias !789
  invoke void @_ZN5arrow6Status8FromArgsIJRA44_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(44) @.str.214)
          to label %_ZN5arrow6Status9TypeErrorIJRA44_KcEEES0_DpOT_.exit unwind label %bb.jc

_ZN5arrow6Status9TypeErrorIJRA44_KcEEES0_DpOT_.exit: ; preds = %bb.iz
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(8) %18) #37, !inline_history !793
  %i.zl = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %.not.i169 = icmp eq ptr %i.zl, null
  br i1 %.not.i169, label %_ZN5arrow6StatusD2Ev.exit170, label %bb.ja, !prof !47

bb.ja:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA44_KcEEES0_DpOT_.exit
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !50, !range !59, !noundef !60
  %i.zo = trunc nuw i8 %i.zn to i1
  br i1 %i.zo, label %_ZN5arrow6StatusD2Ev.exit170, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #37
  br label %_ZN5arrow6StatusD2Ev.exit170

_ZN5arrow6StatusD2Ev.exit170:                     ; preds = %_ZN5arrow6Status9TypeErrorIJRA44_KcEEES0_DpOT_.exit, %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37, !noalias !789
  br label %bb.jk

bb.jc:                                            ; preds = %bb.iz
  %i.zp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37, !noalias !789
  br label %bb.jl

._crit_edge:                                      ; preds = %bb.ix, %bb.iy
  %i.zq = icmp eq i32 %.pre207, 36
  br i1 %i.zq, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge
  %i.zr = load ptr, ptr %2, align 8, !tbaa !336, !noalias !789
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 40
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !339, !noalias !789
  %i.zu = icmp eq i32 %i.zt, 36
  br i1 %i.zu, label %bb.je, label %bb.jh

bb.je:                                            ; preds = %bb.jd, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37, !noalias !789
  store ptr %i.zb, ptr %20, align 8, !tbaa !573, !noalias !789
  %i.zv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.zc, align 8, !tbaa !355, !noalias !789
  store ptr %i.ze, ptr %i.zv, align 8, !tbaa !355, !noalias !789
  store ptr null, ptr %17, align 8, !tbaa !573, !noalias !789
  invoke void @_ZN5arrow10large_listESt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %19, ptr noundef nonnull %20)
          to label %bb.jf unwind label %bb.jg, !noalias !789, !inline_history !793

bb.jf:                                            ; preds = %bb.je
  store ptr null, ptr %67, align 8, !tbaa !44
  %i.zw = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.zy = load <2 x ptr>, ptr %19, align 16, !tbaa !580
  store ptr null, ptr %i.zx, align 8, !tbaa !355
  store <2 x ptr> %i.zy, ptr %i.zw, align 8, !tbaa !580
  store ptr null, ptr %19, align 16, !tbaa !336
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #37, !inline_history !793
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37, !noalias !789
  br label %bb.jk

bb.jg:                                            ; preds = %bb.je
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37, !noalias !789
  br label %bb.jl

bb.jh:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37, !noalias !789
  store ptr %i.zb, ptr %22, align 8, !tbaa !573, !noalias !789
  %i.aaa = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.zc, align 8, !tbaa !355, !noalias !789
  store ptr %i.ze, ptr %i.aaa, align 8, !tbaa !355, !noalias !789
  store ptr null, ptr %17, align 8, !tbaa !573, !noalias !789
  invoke void @_ZN5arrow4listESt10shared_ptrINS_5FieldEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %21, ptr noundef nonnull %22)
          to label %bb.ji unwind label %bb.jj, !noalias !789, !inline_history !793

bb.ji:                                            ; preds = %bb.jh
  store ptr null, ptr %67, align 8, !tbaa !44
  %i.aab = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.aac = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aad = load <2 x ptr>, ptr %21, align 16, !tbaa !580
  store ptr null, ptr %i.aac, align 8, !tbaa !355
  store <2 x ptr> %i.aad, ptr %i.aab, align 8, !tbaa !580
  store ptr null, ptr %21, align 16, !tbaa !336
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #37, !inline_history !793
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37, !noalias !789
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jh
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37, !noalias !789
  br label %bb.jl

bb.jk:                                            ; preds = %bb.ji, %bb.jf, %_ZN5arrow6StatusD2Ev.exit170
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37, !noalias !789
  br label %bb.jm

bb.jl:                                            ; preds = %bb.jj, %bb.jg, %bb.jc
  %.pn81.i = phi { ptr, i32 } [ %i.zz, %bb.jg ], [ %i.aae, %bb.jj ], [ %i.zp, %bb.jc ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37, !noalias !789
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #37, !noalias !789, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !789
  br label %.body

bb.jm:                                            ; preds = %bb.jk, %bb.iv
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #37, !inline_history !793
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !789
  br label %bb.lh

_ZN5arrow7is_listENS_4Type4typeE.exit173:         ; preds = %.thread184
  switch i32 %i.xc, label %.thread187 [
    i32 30, label %bb.jn
    i32 26, label %bb.lf
  ]

bb.jn:                                            ; preds = %._crit_edge212, %_ZN5arrow7is_listENS_4Type4typeE.exit173
  %i.aaf = phi i32 [ %.pre215, %._crit_edge212 ], [ %i.yo, %_ZN5arrow7is_listENS_4Type4typeE.exit173 ]
  %i.aag = phi ptr [ %.pre213, %._crit_edge212 ], [ %i.ym, %_ZN5arrow7is_listENS_4Type4typeE.exit173 ] ; 2 uses
  %i.aah = icmp eq i32 %i.aaf, 30
  br i1 %i.aah, label %bb.jo, label %.thread187

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37, !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37, !noalias !789
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.aai = getelementptr inbounds nuw i8, ptr %i.xa, i64 48 ; 4 uses
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !792, !noalias !811
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !573, !noalias !811
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 56
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !336, !noalias !811
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 48
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !792, !noalias !811 ; 2 uses
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !573, !noalias !811 ; 3 uses
  store ptr %i.aap, ptr %24, align 8, !tbaa !573, !alias.scope !811
  %i.aaq = getelementptr inbounds nuw i8, ptr %24, i64 8
end_hunk_2
begin_hunk_3_@_ZN5arrow8DataTypeD0Ev:bb.a
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

declare noundef zeroext i1 @_ZN5arrow10TypeEqualsERKNS_8DataTypeES2_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5arrow10TypeEqualsERKNS_8DataTypeES2_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i1 noundef zeroext %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow8DataType4HashEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit, !prof !335

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6detail15Fingerprintable19LoadFingerprintSlowB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit

_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.0.i, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.d, i64 noundef %i.f, i64 noundef 3339675911)
          to label %_ZN5arrow8internal12hash_combineINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRmRKT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #40
  unreachable

_ZN5arrow8internal12hash_combineINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRmRKT_.exit: ; preds = %_ZNK5arrow6detail15Fingerprintable11fingerprintB5cxx11Ev.exit
  %i.j = add i64 %i.g, 2654435769
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = load ptr, ptr %1, align 8, !tbaa !331
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext false)
  %i.d = load ptr, ptr %2, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !43
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_10TypeHolderE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.a = load ptr, ptr %1, align 8, !tbaa !904, !noalias !901 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !38, !alias.scope !901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.219, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 9, ptr %i.c, align 8, !tbaa !41, !alias.scope !901
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !43, !alias.scope !901
  br label %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !331, !noalias !901
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !901
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i1 noundef zeroext false), !inline_history !906
  %.pre = load ptr, ptr %2, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre7 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit

_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit:    ; preds = %._crit_edge.i.i.i, %bb.b
  %i.h = phi i64 [ 9, %._crit_edge.i.i.i ], [ %.pre7, %bb.b ]
  %i.i = phi ptr [ %i.b, %._crit_edge.i.i.i ], [ %.pre, %bb.b ]
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.i, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !43
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret ptr %0

bb.c:                                             ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !43
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10TypeHolder8ToStringB5cxx11ERKSt6vectorIS0_SaIS0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.82, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !907
  %i.e = load ptr, ptr %1, align 8, !tbaa !910    ; 2 uses
  %.not21 = icmp eq ptr %i.d, %i.e
  br i1 %.not21, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.pre.a = load ptr, ptr %i.e, align 8, !tbaa !904 ; 2 uses
  %.pre33 = load ptr, ptr %.pre.a, align 8, !tbaa !331
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre33, i64 32
  %.pre34 = load ptr, ptr %.phi.trans.insert, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void %.pre34(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %.pre.a, i1 noundef zeroext %2)
          to label %bb.b unwind label %.loopexit.split-lp24

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel
  %i.h = load ptr, ptr %4, align 8, !tbaa !48
  %i.i = load i64, ptr %i.f, align 8, !tbaa !41
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.h, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp29 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.m = load i64, ptr %i.g, align 8, !tbaa !43
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !907
  %i.p = load ptr, ptr %1, align 8, !tbaa !910
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = icmp ugt i64 %i.t, 1
  br i1 %i.u, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.84, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.020 = phi i64 [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.83, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %.peel.next
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !910
  %.phi.trans.insert37 = getelementptr inbounds nuw [24 x i8], ptr %.pre36, i64 %.020
  %.pre38 = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !904 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.y = load ptr, ptr %.pre38, align 8, !tbaa !331
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %.pre38, i1 noundef zeroext %2)
          to label %bb.e unwind label %.loopexit23

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.ab = load ptr, ptr %4, align 8, !tbaa !48
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !41
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit28 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.g
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !43
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ai = add nuw i64 %.020, 1                    ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !907
  %i.ak = load ptr, ptr %1, align 8, !tbaa !910
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 24
  %i.ap = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ap, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, !llvm.loop !911

.loopexit23:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit.split-lp24:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16.peel
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit28:                                      ; preds = %bb.e
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp29:                             ; preds = %bb.b
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp29, %.loopexit28
  %lpad.phi32 = phi { ptr, i32 } [ %lpad.loopexit30, %.loopexit28 ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp29 ] ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.f
  %i.as = load i64, ptr %i.g, align 8, !tbaa !43
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.f, %.loopexit23, %.loopexit.split-lp24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %.pn = phi { ptr, i32 } [ %lpad.phi32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp24 ], [ %lpad.loopexit25, %.loopexit23 ], [ %lpad.phi32, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !38, !alias.scope !919
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !41, !alias.scope !919
  store i8 0, ptr %i.au, align 8, !tbaa !43, !alias.scope !919
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !641, !noalias !919 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !919 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  %.08.i.i.i = select i1 %i.ba, ptr %i.ax, ptr %i.az ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !643, !noalias !919 ; 2 uses
  %i.bd = ptrtoint ptr %.08.i.i.i to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bc, i64 noundef %i.bf)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !919 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.au
  br i1 %i.bj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.bk = load i64, ptr %i.au, align 8, !tbaa !43, !alias.scope !919
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #38
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.bn = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !331
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %3, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !331
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !331
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bt, align 8, !tbaa !331
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bt, align 8, !tbaa !331
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ca) #37
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !331
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %3, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !331
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cg, align 8, !tbaa !644
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ch) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.w, %bb.c ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bh, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10TypeHolder9FromTypesERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.41") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !920  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !923    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #39
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorIN5arrow10TypeHolderESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = mul nuw nsw i64 %i.g, 24
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36
          to label %_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5arrow10TypeHolderESaIS1_EE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !910
  store ptr %i.k, ptr %i.l, align 8, !tbaa !907
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.g
  store ptr %i.m, ptr %i.i, align 8, !tbaa !924
end_hunk_3
begin_hunk_4_@_ZN5arrow10StructTypeD2Ev:bb.a
  %i.e = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !1174 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 40) #38
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1175

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1160
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt14default_deleteIN5arrow10StructType4ImplEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !1160
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38
  br label %_ZNKSt14default_deleteIN5arrow10StructType4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow10StructType4ImplEEclEPS2_.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #38
  br label %_ZNSt10unique_ptrIN5arrow10StructType4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow10StructType4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow10StructType4ImplEEclEPS2_.exit.i
  tail call void @_ZN5arrow10NestedTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow10StructTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow10StructTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow10StructType8ToStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::shared_ptr.27", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.131, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !874
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !792  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !573 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre34 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !355 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %.pre, ptr %4, align 8, !tbaa !573
  store ptr %.pre34, ptr %i.m, align 8, !tbaa !355
  %.not.i.i.i.peel = icmp eq ptr %.pre34, null
  br i1 %.not.i.i.i.peel, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.peel, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel
  %i.p = getelementptr inbounds nuw i8, ptr %.pre34, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.peel = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.peel

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pre35 = load ptr, ptr %4, align 8, !tbaa !573
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.peel

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.peel: ; preds = %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel
  %i.u = phi ptr [ %.pre35, %bb.d ], [ %.pre, %bb.c ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK5arrow5Field8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %i.u, i1 noundef zeroext %2)
          to label %bb.e unwind label %.loopexit.split-lp25

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.peel
  %i.v = load ptr, ptr %5, align 8, !tbaa !48
  %i.w = load i64, ptr %i.n, align 8, !tbaa !41
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.v, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp30 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.e
  %i.y = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.o
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !43
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !355 ; 8 uses
  %.not.i.i.peel = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.peel, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i16.peel = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i16.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.peel = phi i32 [ %i.ag, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.peel, 1
  br i1 %i.ak, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, !prof !335

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #37
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

bb.k:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !484
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !495
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !331
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #37, !inline_history !879
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !331
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #37, !inline_history !879
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %bb.k, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !874
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !792
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %sext = shl i64 %i.aw, 28
  %i.ax = icmp sgt i64 %sext, 8589934591
  br i1 %i.ax, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.88, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 2 uses
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.83, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %.peel.next
  %.pre37 = load ptr, ptr %i.c, align 8, !tbaa !792
  %.phi.trans.insert38 = getelementptr inbounds nuw [16 x i8], ptr %.pre37, i64 %indvars.iv ; 2 uses
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !573 ; 3 uses
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert38, i64 8
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !355 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %.pre39, ptr %4, align 8, !tbaa !573
  store ptr %.pre41, ptr %i.m, align 8, !tbaa !355
  %.not.i.i.i = icmp eq ptr %.pre41, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre41, i64 8 ; 3 uses
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.bf = atomicrmw volatile add ptr %i.bb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre42 = load ptr, ptr %4, align 8, !tbaa !573
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.o, %bb.p
  %i.bg = phi ptr [ %.pre39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 ], [ %.pre39, %bb.o ], [ %.pre42, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK5arrow5Field8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %i.bg, i1 noundef zeroext %2)
          to label %bb.q unwind label %.loopexit24

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.bh = load ptr, ptr %5, align 8, !tbaa !48
  %i.bi = load i64, ptr %i.n, align 8, !tbaa !41
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.bh, i64 noundef %i.bi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit29 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.bk = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.o
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !355 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bp, align 8, !tbaa !484
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !495
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !331
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #37, !inline_history !879
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !331
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #37, !inline_history !879
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i16 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i16, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bs, %bb.u ], [ %i.cc, %bb.v ]
  %i.cd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cd, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #37
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !874
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !792
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %sext54 = shl i64 %i.ci, 28
  %i.cj = ashr i64 %sext54, 32
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %.peel.next, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, !llvm.loop !1176

.loopexit24:                                      ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit.split-lp25:                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.peel
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit29:                                      ; preds = %bb.q
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp30:                             ; preds = %bb.e
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp30, %.loopexit29
  %lpad.phi33 = phi { ptr, i32 } [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ] ; 2 uses
  %i.cl = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.o
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.x
  %i.cn = load i64, ptr %i.o, align 8, !tbaa !43
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.x, %.loopexit24, %.loopexit.split-lp25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %.pn = phi { ptr, i32 } [ %lpad.phi33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp25 ], [ %lpad.loopexit26, %.loopexit24 ], [ %lpad.phi33, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !38, !alias.scope !1183
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !41, !alias.scope !1183
  store i8 0, ptr %i.cp, align 8, !tbaa !43, !alias.scope !1183
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !641, !noalias !1183 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cs, null
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1183 ; 2 uses
  %i.cv = icmp ugt ptr %i.cs, %i.cu
  %.08.i.i.i = select i1 %i.cv, ptr %i.cs, ptr %i.cu ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i20 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i20, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !643, !noalias !1183 ; 2 uses
  %i.cy = ptrtoint ptr %.08.i.i.i to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cx, i64 noundef %i.da)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !1183 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cp
  br i1 %i.de, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.df = load i64, ptr %i.cp, align 8, !tbaa !43, !alias.scope !1183
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #38
  br label %.body

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aa, %bb.y
  %i.di = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.di, ptr %3, align 8, !tbaa !331
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dk = getelementptr i8, ptr %i.di, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %3, i64 %i.dl
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !331
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !331
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.do, align 8, !tbaa !331
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !43
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.do, align 8, !tbaa !331
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dv) #37
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dw, ptr %3, align 8, !tbaa !331
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
end_hunk_4
begin_hunk_5_@_ZN5arrow12_GLOBAL__N_122MaybeMergeNumericTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE:bb.a
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !336    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !339
  %.off.i = add i32 %i.i, -10
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.d, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %1, align 8, !tbaa !336
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !355  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !355
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.s = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.g ], [ %.pr.pre.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !484
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !495
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !331
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #37, !inline_history !2713
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !331
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #37, !inline_history !2713
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !335

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #37
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !355
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZN5arrow10is_decimalENS_4Type4typeE.exit:        ; preds = %bb.b
  %.off.i68 = add i32 %i.f, -10
  %switch.i69 = icmp ult i32 %.off.i68, 3
  br i1 %switch.i69, label %bb.o, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.o:                                             ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !336
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !339
  switch i32 %i.ak, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit [
    i32 43, label %bb.p
    i32 44, label %bb.p
    i32 23, label %bb.p
    i32 24, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  store ptr %i.d, ptr %2, align 8, !tbaa !336
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !355 ; 4 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !355 ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i72, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not7.i.i.i73 = icmp eq ptr %i.an, null
  br i1 %.not7.i.i.i73, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i75, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i74 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i74, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i75

bb.t:                                             ; preds = %bb.r
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i81 = load ptr, ptr %i.al, align 8, !tbaa !355
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i75

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i75: ; preds = %bb.t, %bb.s, %bb.q
  %i.au = phi ptr [ %i.ao, %bb.q ], [ %i.ao, %bb.s ], [ %.pr.pre.i.i.i81, %bb.t ] ; 8 uses
  %.not8.i.i.i76 = icmp eq ptr %i.au, null
  br i1 %.not8.i.i.i76, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.av, align 8, !tbaa !484
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !495
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !331
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37, !inline_history !2713
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !331
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37, !inline_history !2713
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80

bb.w:                                             ; preds = %bb.u
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i9.i.i.i77 = icmp eq i8 %i.bg, 0
  br i1 %.not.i9.i.i.i77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.y:                                             ; preds = %bb.w
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i79 = phi i32 [ %i.ay, %bb.x ], [ %i.bi, %bb.y ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.bj, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80, !prof !335

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i75
  store ptr %i.an, ptr %i.al, align 8, !tbaa !355
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80, %bb.p, %bb.o, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.d, %_ZN5arrow10is_decimalENS_4Type4typeE.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.o ], [ true, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i80 ], [ false, %_ZN5arrow10is_decimalENS_4Type4typeE.exit ], [ true, %bb.d ], [ true, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ true, %bb.p ], [ false, %bb.c ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !617, !range !59, !noundef !60
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.aa, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit88

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !336   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !339 ; 3 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !336   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre317 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !339 ; 5 uses
  switch i32 %i.bp, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit84 [
    i32 43, label %bb.ab
    i32 44, label %bb.ab
    i32 23, label %bb.ab
    i32 24, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %.off.i85 = add i32 %.pre317, -2
  %switch.i86 = icmp ult i32 %.off.i85, 8
  br i1 %switch.i86, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit94, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit84

_ZN5arrow10is_decimalENS_4Type4typeE.exit84:      ; preds = %bb.aa, %bb.ab
  switch i32 %.pre317, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit88 [
    i32 43, label %bb.ac
    i32 44, label %bb.ac
    i32 23, label %bb.ac
    i32 24, label %bb.ac
  ]

bb.ac:                                            ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit84, %_ZN5arrow10is_decimalENS_4Type4typeE.exit84, %_ZN5arrow10is_decimalENS_4Type4typeE.exit84, %_ZN5arrow10is_decimalENS_4Type4typeE.exit84
  %.off.i89 = add i32 %i.bp, -2
  %switch.i90 = icmp ult i32 %.off.i89, 8
  br i1 %switch.i90, label %bb.ad, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit88

bb.ad:                                            ; preds = %bb.ac
  switch i32 %.pre317, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit94 [
    i32 43, label %bb.ae
    i32 44, label %bb.ae
    i32 23, label %bb.ae
    i32 24, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  store ptr %.pre, ptr %1, align 8, !tbaa !779
  store ptr %i.bn, ptr %2, align 8, !tbaa !779
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !355
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !355
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !355
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !355
  br label %_ZN5arrow10is_decimalENS_4Type4typeE.exit94

_ZN5arrow10is_decimalENS_4Type4typeE.exit94:      ; preds = %bb.ab, %bb.ad, %bb.ae
  %11 = phi i32 [ %.pre317, %bb.ab ], [ %.pre317, %bb.ad ], [ %i.bp, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.496") align 8 %4, i32 noundef %11)
  %i.bu = load ptr, ptr %4, align 8, !tbaa !44
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ag, label %bb.af, !prof !47

bb.af:                                            ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit94
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #37
  br label %bb.bw

bb.ag:                                            ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit94
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.by = load ptr, ptr %1, align 8, !tbaa !336
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !339
  %i.cb = add nsw i32 %i.bx, -1
  invoke void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.37") align 8 %5, i32 noundef %i.ca, i32 noundef %i.cb, i32 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr %5, align 8, !tbaa !44
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ak, label %bb.ai, !prof !47

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #37
  br label %bb.bk

bb.aj:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ci = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !580, !noalias !2720
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !336, !noalias !2720
  store ptr null, ptr %i.ch, align 8, !tbaa !355, !noalias !2720
  store <2 x ptr> %i.ci, ptr %6, align 16, !tbaa !580, !alias.scope !2720
  store ptr null, ptr %i.cf, align 8, !tbaa !336, !noalias !2720
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %.val65 = load ptr, ptr %1, align 8, !tbaa !336
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.val67 = load i8, ptr %i.ck, align 1, !tbaa !620, !range !59, !noundef !60
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113WidenDecimalsERKSt10shared_ptrINS_8DataTypeEES5_RKNS_5Field12MergeOptionsE(ptr dead_on_unwind noalias writable align 8 %7, ptr %.val65, ptr %i.cj, i8 %.val67)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cl = load ptr, ptr %7, align 8, !tbaa !44
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ao, label %bb.am, !prof !47

bb.am:                                            ; preds = %bb.al
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  br label %bb.av

bb.an:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bt

bb.ao:                                            ; preds = %bb.al
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.co, align 8, !tbaa !580, !noalias !2721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !355 ; 8 uses
  store <2 x ptr> %i.cq, ptr %1, align 8, !tbaa !580
  %.not.i.i.i.i95 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i95, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.cs, align 8, !tbaa !484
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !495
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !331
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #37, !inline_history !780
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !331
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #37, !inline_history !780
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.as ], [ %i.df, %bb.at ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.au, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !335

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #37
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aq, %bb.ao
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load <2 x ptr>, ptr %1, align 8, !tbaa !580
  store ptr null, ptr %i.cp, align 8, !tbaa !355
  store <2 x ptr> %i.di, ptr %i.dh, align 8, !tbaa !580
  store ptr null, ptr %1, align 8, !tbaa !336
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.am
  %i.dj = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.aw, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i, !prof !47

bb.aw:                                            ; preds = %bb.av
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !355 ; 8 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i97, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dn, align 8, !tbaa !484
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !495
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !331
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #37, !inline_history !673
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !331
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #37, !inline_history !673
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dq, %bb.ba ], [ %i.ea, %bb.bb ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eb, label %bb.bc, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, !prof !335

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #37
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ay, %bb.aw
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !44   ; 2 uses
  %.not.i.i98 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i98, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i, !prof !563

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, %bb.av
  %i.ec = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i ], [ %i.dj, %bb.av ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !50, !range !59, !noundef !60
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit, label %bb.bd

end_hunk_5
