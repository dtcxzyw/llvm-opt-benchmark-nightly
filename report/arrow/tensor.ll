inline.NumInlined: 5130
inline.NumDeleted: 1400
begin_hunk_0_@_ZN5arrow8internal24ValidateTensorParametersERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE:bb.a
  br i1 %i.cv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.ag, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.cw, %bb.ag ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cx = load i64, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !14, !noalias !87
  %i.cy = icmp eq i64 %i.cx, 0
  %spec.select.i.i.i.i = select i1 %i.cy, ptr %.sroa.032.2.i.i.i.i, ptr %.val35
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit110: ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit112: ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i: ; preds = %bb.z, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit110, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit112, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.ae
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.ae ], [ %i.db, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit112 ], [ %i.cz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.da, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit110 ], [ %.sroa.032.051.i.i.i.i, %bb.z ]
  %i.dc = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val35
  br i1 %i.dc, label %.lr.ph.preheader.i, label %_ZN5arrow6StatusD2Ev.exit49.thread

.lr.ph.preheader.i:                               ; preds = %bb.x, %._crit_edge.i.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.preheader.i
  %.026.i = phi i64 [ %i.dq, %bb.al ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.01225.i = phi i64 [ %.2.i, %bb.al ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val34, i64 %.026.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !14, !noalias !87 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.026.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !14, !noalias !87 ; 2 uses
  %i.di = icmp slt i64 %i.dh, 0
  br i1 %i.di, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.23)
  br label %_ZN5arrow6StatusD2Ev.exit45

bb.aj:                                            ; preds = %bb.ah
  %i.dj = add nsw i64 %i.de, -1
  %i.dk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.dj, i64 %i.dh) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  br i1 %i.dl, label %.critedge27.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = extractvalue { i64, i1 } %i.dk, 0
  %i.dn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.01225.i, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  %i.dp = extractvalue { i64, i1 } %i.dn, 0
  br i1 %i.do, label %.critedge27.i, label %bb.al

.critedge27.i:                                    ; preds = %bb.ak, %bb.aj
  call void @_ZN5arrow6Status8FromArgsIJRA72_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(72) @.str.24)
  br label %_ZN5arrow6StatusD2Ev.exit45

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %.2.i = phi i64 [ %.01225.i, %.lr.ph.i ], [ %i.dp, %bb.ak ] ; 2 uses
  %i.dq = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dq, %umax.i
  br i1 %exitcond.not.i, label %.critedge29.i, label %.lr.ph.i, !llvm.loop !98

.critedge29.i:                                    ; preds = %bb.al
  %i.dr = load ptr, ptr %1, align 8, !tbaa !37, !noalias !87 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !7, !noalias !87
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !87
  %i.dv = call noundef i32 %i.du(ptr noundef nonnull align 8 dereferenceable(72) %i.dr), !noalias !87, !inline_history !99
  %i.dw = load ptr, ptr %2, align 8, !tbaa !84, !noalias !87
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !90, !noalias !87
  %i.dz = sext i32 %i.dv to i64
  %i.ea = sub nsw i64 %i.dy, %i.dz
  %i.eb = icmp sgt i64 %.2.i, %i.ea
  br i1 %i.eb, label %bb.am, label %_ZN5arrow6StatusD2Ev.exit49.thread

bb.am:                                            ; preds = %.critedge29.i
  call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.25)
  br label %_ZN5arrow6StatusD2Ev.exit45

_ZN5arrow6StatusD2Ev.exit49.thread:               ; preds = %.critedge29.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEEiET_S8_S8_RKT0_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ar

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %bb.w, %bb.ai, %.critedge27.i, %bb.am
  %.pr59 = load ptr, ptr %9, align 8, !tbaa !18   ; 2 uses
  store ptr %.pr59, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ec = icmp eq ptr %.pr59, null
  br i1 %i.ec, label %bb.ar, label %bb.au

bb.an:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ed = load ptr, ptr %1, align 8, !tbaa !37
  invoke void @_ZN5arrow8internal22ComputeRowMajorStridesERKNS_14FixedWidthTypeERKSt6vectorIlSaIlEEPS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %10)
          to label %_ZN5arrow6StatusD2Ev.exit51 unwind label %bb.ao

_ZN5arrow6StatusD2Ev.exit51:                      ; preds = %bb.an
  %i.ee = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ef = icmp eq ptr %i.ee, null
  %i.eg = load ptr, ptr %10, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIlSaIlEED2Ev.exit57, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ei = load ptr, ptr %10, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume

bb.aq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit51
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !24
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eg to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.es) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit57

_ZNSt6vectorIlSaIlEED2Ev.exit57:                  ; preds = %_ZN5arrow6StatusD2Ev.exit51, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %i.ef, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit49.thread, %_ZNSt6vectorIlSaIlEED2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit45
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !100
  %i.ev = load ptr, ptr %5, align 8, !tbaa !102
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 5
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.fb = load ptr, ptr %3, align 8, !tbaa !13
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3
  %i.fg = icmp ugt i64 %i.ez, %i.ff
  br i1 %i.fg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.2)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !103
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit45, %_ZN5arrow6StatusD2Ev.exit, %bb.at, %bb.as
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19RecordBatchToTensorERKNS_11RecordBatchEbbPNS_10MemoryPoolEPSt10shared_ptrINS_6TensorEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.18", align 8 ; 11 uses
  %10 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.18", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.27", align 16 ; 15 uses
  %15 = alloca %"class.std::shared_ptr", align 16 ; 14 uses
  %16 = alloca %"class.std::shared_ptr.18", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %20 = alloca %"class.std::shared_ptr.18", align 8 ; 6 uses
  %21 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %22 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %23 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 7 uses
  %24 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %25 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %28 = alloca %"class.std::shared_ptr.38", align 8 ; 4 uses
  %29 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 7 uses
  %30 = alloca %"class.arrow::Result.45", align 8 ; 12 uses
  %31 = alloca %"class.std::shared_ptr.7", align 8 ; 18 uses
  %32 = alloca %"class.std::unique_ptr.49", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::vector.2", align 8    ; 12 uses
  %35 = alloca %"class.std::vector.2", align 8    ; 12 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %38 = alloca %"class.arrow::Result.60", align 8 ; 15 uses
  %39 = alloca %"class.std::vector.10", align 8   ; 11 uses
  %i.a = tail call noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.i, label %.preheader397

.preheader397:                                    ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader397
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us
  %.0408.us = phi i32 [ %i.aa, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.0408.us)
  %i.i = load ptr, ptr %9, align 8, !tbaa !106
  %i.j = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.b unwind label %.split.us  ; 0 uses

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !109  ; 8 uses
  %.not.i.i.us = icmp eq ptr %i.k, null
  br i1 %.not.i.i.us, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.us = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.us

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.us: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.us = phi i32 [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.us, 1
  br i1 %i.s, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us, !prof !110

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.us
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us

bb.h:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !113
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !114
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #22, !inline_history !114
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us: ; preds = %bb.h, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.aa = add nuw nsw i32 %.0408.us, 1            ; 2 uses
  %i.ab = call noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !115

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA80_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(80) @.str.3)
  br label %bb.ka

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ae = add nuw nsw i32 %.0408, 1               ; 2 uses
  %i.af = call noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.split, label %._crit_edge, !llvm.loop !115

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.0408 = phi i32 [ %i.ae, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ah = load ptr, ptr %1, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.0408)
  %i.ak = load ptr, ptr %9, align 8, !tbaa !106
  %i.al = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %bb.k unwind label %.split

bb.k:                                             ; preds = %.lr.ph.split
  %i.am = icmp slt i64 %i.al, 1
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !109 ; 8 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ao, align 8, !tbaa !111
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !113
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22, !inline_history !114
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22, !inline_history !114
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.o ], [ %i.bb, %bb.p ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.q, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.am, label %bb.j, label %bb.s

.split:                                           ; preds = %.lr.ph.split
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.bd, %.split ], [ %i.ad, %.split.us ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.kb

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6Status8FromArgsIJRA94_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(94) @.str.4)
  br label %bb.ka

._crit_edge:                                      ; preds = %bb.j, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.us, %.preheader397
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal19RecordBatchToTensorERKNS_11RecordBatchEbbPNS_10MemoryPoolEPSt10shared_ptrINS_6TensorEE:bb.a
.noexc:                                           ; preds = %bb.ai
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc
  %i.dq = load ptr, ptr %8, align 8, !tbaa !80, !noalias !119 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aj
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !81, !noalias !119
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ak:                                            ; preds = %.noexc
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %8, align 8, !tbaa !80, !noalias !119 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.ak
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !81, !noalias !119
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !119
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !119
  %i.eb = load ptr, ptr %12, align 8, !tbaa !80   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !81
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !109 ; 8 uses
  %.not.i.i191 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i191, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit195, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ei, align 8, !tbaa !111
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !113
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #22, !inline_history !114
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #22, !inline_history !114
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit195

bb.an:                                            ; preds = %bb.al
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i192 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i192, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i193

bb.ap:                                            ; preds = %bb.an
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i193: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i194 = phi i32 [ %i.el, %bb.ao ], [ %i.ev, %bb.ap ]
  %i.ew = icmp eq i32 %.0.i.i.i.i194, 1
  br i1 %i.ew, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit195, !prof !110

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit195

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i193, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ka

bb.ar:                                            ; preds = %bb.t
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.kb

bb.as:                                            ; preds = %bb.ah
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.at:                                            ; preds = %bb.ai
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.at
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.at ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ] ; 2 uses
  %i.fa = load ptr, ptr %12, align 8, !tbaa !80   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %.body
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !81
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.as
  %.pn168 = phi { ptr, i32 } [ %i.ey, %bb.as ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %eh.lpad-body, %.body ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.kb

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit190
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !124
  %i.fh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i32 noundef 0) ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !127 ; 3 uses
  store ptr %i.fi, ptr %14, align 16, !tbaa !127
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !109 ; 3 uses
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !109
  %.not.i.i.i199 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i199, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fm, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.ax:                                            ; preds = %bb.av
  %i.fq = atomicrmw volatile add ptr %i.fm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %14, align 16, !tbaa !127
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.au, %bb.aw, %bb.ax
  %i.fr = phi ptr [ %i.fi, %bb.au ], [ %i.fi, %bb.aw ], [ %.pre, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 2 uses
  %i.fw = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !130
  store <2 x ptr> %i.fw, ptr %15, align 16, !tbaa !130
  %.not.i.i.i200 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i200, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i201 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i201, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.gb = atomicrmw volatile add ptr %i.fx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, %bb.az, %bb.ba
  %i.gc = invoke noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %.preheader, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

.preheader:                                       ; preds = %bb.bb
  %i.ge = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.6381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 5
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 6
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 7
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader, %bb.dv
  %.0126 = phi i32 [ %i.nk, %bb.dv ], [ 1, %.preheader ] ; 7 uses
  %i.gk = invoke noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bd unwind label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %.not = icmp slt i32 %.0126, %i.gk
  br i1 %.not, label %bb.bf, label %.critedge174

bb.be:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

.loopexit:                                        ; preds = %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

.loopexit.split-lp:                               ; preds = %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.gm = load ptr, ptr %1, align 8, !tbaa !7
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.0126)
          to label %bb.bg unwind label %bb.br

bb.bg:                                            ; preds = %bb.bf
  %i.gp = load ptr, ptr %16, align 8, !tbaa !106
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !116
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !55
  %.off.i202 = add i32 %i.gu, -2
  %switch.i203 = icmp ult i32 %.off.i202, 11
  %i.gv = load ptr, ptr %i.ge, align 8, !tbaa !109 ; 8 uses
  %.not.i.i204 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i204, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.gw, align 8, !tbaa !111
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !113
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !7
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22, !inline_history !114
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !7
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22, !inline_history !114
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208

bb.bj:                                            ; preds = %bb.bh
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i205 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i205, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206

bb.bl:                                            ; preds = %bb.bj
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i207 = phi i32 [ %i.gz, %bb.bk ], [ %i.hj, %bb.bl ]
  %i.hk = icmp eq i32 %.0.i.i.i.i207, 1
  br i1 %i.hk, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208, !prof !110

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208: ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br i1 %switch.i203, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.hl = load ptr, ptr %1, align 8, !tbaa !7
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.0126)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.ho = load ptr, ptr %18, align 8, !tbaa !106
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !116
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !37 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.hr, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5arrow6Status9TypeErrorIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(28) @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.hv = load ptr, ptr %17, align 8, !tbaa !80   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.bq
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !81
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZN5arrow6Status14NotImplementedIJRA47_KcEEES0_DpOT_.exit

bb.br:                                            ; preds = %bb.bf
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.jz

bb.bs:                                            ; preds = %bb.bn
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bo
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.bu:                                            ; preds = %bb.bp
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %17, align 8, !tbaa !80   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.bu
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !81
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.bt
  %.pn136 = phi { ptr, i32 } [ %i.ic, %bb.bt ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %i.id, %bb.bu ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #22
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %bb.bs
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ %i.ib, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.jz

bb.bw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ij = load ptr, ptr %1, align 8, !tbaa !7
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.0126)
          to label %bb.bx unwind label %bb.co

bb.bx:                                            ; preds = %bb.bw
  %i.im = load ptr, ptr %19, align 8, !tbaa !106
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !116
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !55
  %i.is = icmp eq i32 %i.ir, 10
  br i1 %i.is, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.it = load ptr, ptr %14, align 16, !tbaa !127
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !37
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !55
  %i.iy = icmp eq i32 %i.ix, 10
  br i1 %i.iy, label %bb.bz, label %.critedge172

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.iz = load ptr, ptr %1, align 8, !tbaa !7
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.0126)
          to label %bb.ca unwind label %bb.cp

bb.ca:                                            ; preds = %bb.bz
  %i.jc = load ptr, ptr %20, align 8, !tbaa !106
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !116
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !55
  %i.ji = load ptr, ptr %14, align 16, !tbaa !127
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !37
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !55
  %i.jn = icmp ne i32 %i.jh, %i.jm
  %i.jo = load ptr, ptr %i.gf, align 8, !tbaa !109 ; 8 uses
  %.not.i.i215 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i215, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.jp, align 8, !tbaa !111
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !113
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !7
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22, !inline_history !114
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !7
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22, !inline_history !114
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

bb.cd:                                            ; preds = %bb.cb
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i216 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i216, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

bb.cf:                                            ; preds = %bb.cd
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i218 = phi i32 [ %i.js, %bb.ce ], [ %i.kc, %bb.cf ]
  %i.kd = icmp eq i32 %.0.i.i.i.i218, 1
  br i1 %i.kd, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, !prof !110

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.critedge172

.critedge172:                                     ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219
  %i.ke = phi i1 [ %i.jn, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219 ], [ false, %bb.by ]
  %i.kf = load ptr, ptr %i.gg, align 8, !tbaa !109 ; 8 uses
  %.not.i.i220 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i220, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224, label %bb.ch

bb.ch:                                            ; preds = %.critedge172
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.kg, align 8, !tbaa !111
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !113
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !7
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #22, !inline_history !114
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #22, !inline_history !114
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224

bb.cj:                                            ; preds = %bb.ch
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i221 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i221, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ks = add nsw i32 %i.kj, -1
  store i32 %i.ks, ptr %i.kg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222

bb.cl:                                            ; preds = %bb.cj
  %i.kt = atomicrmw volatile add ptr %i.kg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i223 = phi i32 [ %i.kj, %bb.ck ], [ %i.kt, %bb.cl ]
  %i.ku = icmp eq i32 %.0.i.i.i.i223, 1
  br i1 %i.ku, label %bb.cm, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224, !prof !110

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #22
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224: ; preds = %.critedge172, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br i1 %i.ke, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224
  invoke void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(47) @.str.6)
          to label %_ZN5arrow6Status14NotImplementedIJRA47_KcEEES0_DpOT_.exit unwind label %.loopexit.split-lp

bb.co:                                            ; preds = %bb.bw
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.bz
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #22
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn = phi { ptr, i32 } [ %i.kw, %bb.cp ], [ %i.kv, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.jz

bb.cr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit224
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.kx = load ptr, ptr %14, align 16, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.ky = load ptr, ptr %i.ff, align 8, !tbaa !124
  %i.kz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ky, i32 noundef %.0126)
          to label %bb.cs unwind label %bb.dc

bb.cs:                                            ; preds = %bb.cr
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !127
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  invoke void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %22, ptr noundef nonnull align 8 dereferenceable(96) %i.la, ptr noundef nonnull align 8 dereferenceable(32) %i.lb)
          to label %bb.ct unwind label %bb.dc

bb.ct:                                            ; preds = %bb.cs
  store i8 1, ptr %23, align 1
  store <3 x i8> zeroinitializer, ptr %.sroa.6381.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 1
  store <5 x i8> zeroinitializer, ptr %.sroa.10.0..sroa_idx, align 1
  invoke void @_ZNK5arrow5Field9MergeWithERKSt10shared_ptrIS0_ENS0_12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %21, ptr noundef nonnull align 8 dereferenceable(96) %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %23)
          to label %bb.cu unwind label %bb.dd

bb.cu:                                            ; preds = %bb.ct
  %i.lc = load ptr, ptr %i.gh, align 8, !tbaa !109 ; 8 uses
  %.not.i.i226 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i226, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 4 uses
  %i.le = load atomic i64, ptr %i.ld acquire, align 8 ; 2 uses
  %i.lf = icmp eq i64 %i.le, 4294967297
  %i.lg = trunc i64 %i.le to i32                  ; 2 uses
  br i1 %i.lf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.ld, align 8, !tbaa !111
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  store i32 0, ptr %i.lh, align 4, !tbaa !113
  %i.li = load ptr, ptr %i.lc, align 8, !tbaa !7
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.lc) #22, !inline_history !131
  %i.ll = load ptr, ptr %i.lc, align 8, !tbaa !7
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %i.lc) #22, !inline_history !131
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cx:                                            ; preds = %bb.cv
  %i.lo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i227 = icmp eq i8 %i.lo, 0
  br i1 %.not.i.i.i227, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lp = add nsw i32 %i.lg, -1
  store i32 %i.lp, ptr %i.ld, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i228

bb.cz:                                            ; preds = %bb.cx
  %i.lq = atomicrmw volatile add ptr %i.ld, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i228

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i228: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i229 = phi i32 [ %i.lg, %bb.cy ], [ %i.lq, %bb.cz ]
  %i.lr = icmp eq i32 %.0.i.i.i.i229, 1
  br i1 %i.lr, label %bb.da, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i228
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lc) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cu, %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i228, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ls = load ptr, ptr %21, align 8, !tbaa !18
  %i.lt = icmp eq ptr %i.ls, null                 ; 2 uses
  br i1 %i.lt, label %bb.dg, label %bb.db, !prof !42

bb.db:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !18
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.df

bb.dc:                                            ; preds = %bb.cs, %bb.cr
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.ct
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #22
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn131 = phi { ptr, i32 } [ %i.lv, %bb.dd ], [ %i.lu, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.jz

bb.df:                                            ; preds = %bb.db
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.jz

bb.dg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.lx = load <2 x ptr>, ptr %i.gi, align 8, !tbaa !130, !noalias !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false)
  %i.ly = load ptr, ptr %i.fj, align 8, !tbaa !109 ; 8 uses
  store <2 x ptr> %i.lx, ptr %14, align 16, !tbaa !130
  %.not.i.i.i.i231 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i231, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load atomic i64, ptr %i.lz acquire, align 8 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 4294967297
  %i.mc = trunc i64 %i.ma to i32                  ; 2 uses
  br i1 %i.mb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.lz, align 8, !tbaa !111
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 0, ptr %i.md, align 4, !tbaa !113
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !7
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #22, !inline_history !137
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !7
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #22, !inline_history !137
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i = phi i32 [ %i.mc, %bb.dk ], [ %i.mm, %bb.dl ]
  %i.mn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.mn, label %bb.dm, label %_ZN5arrow6StatusC2ERKS0_.exit, !prof !110

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #22
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.dg, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dm, %bb.db
  %i.mo = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.dn, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i, !prof !42

bb.dn:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.mq = load ptr, ptr %i.gj, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i.i.i237 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i237, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 4 uses
  %i.ms = load atomic i64, ptr %i.mr acquire, align 8 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 4294967297
  %i.mu = trunc i64 %i.ms to i32                  ; 2 uses
  br i1 %i.mt, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 0, ptr %i.mr, align 8, !tbaa !111
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  store i32 0, ptr %i.mv, align 4, !tbaa !113
  %i.mw = load ptr, ptr %i.mq, align 8, !tbaa !7
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mq) #22, !inline_history !138
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !7
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(16) %i.mq) #22, !inline_history !138
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i

bb.dq:                                            ; preds = %bb.do
  %i.nc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq i8 %i.nc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nd = add nsw i32 %i.mu, -1
  store i32 %i.nd, ptr %i.mr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.ne = atomicrmw volatile add ptr %i.mr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ds, %bb.dr
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.mu, %bb.dr ], [ %i.ne, %bb.ds ]
  %i.nf = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.nf, label %bb.dt, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i, !prof !110

bb.dt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mq) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i: ; preds = %bb.dt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dp
  %.pr.i.pr = load ptr, ptr %21, align 8, !tbaa !18 ; 2 uses
  %.not.i.i238 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i238, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i, !prof !139

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ng = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i ], [ %i.mo, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal19RecordBatchToTensorERKNS_11RecordBatchEbbPNS_10MemoryPoolEPSt10shared_ptrINS_6TensorEE:bb.a
bb.dv:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit
  %i.nk = add nuw nsw i32 %.0126, 1
  br label %bb.bc, !llvm.loop !140

.critedge174:                                     ; preds = %bb.bd
  %i.nl = load ptr, ptr %14, align 16, !tbaa !127 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 56
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !37
  store ptr %i.nn, ptr %15, align 16, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 64
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !109 ; 4 uses
  %i.nq = load ptr, ptr %i.ft, align 8, !tbaa !109 ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.np, %i.nq
  br i1 %.not.i.i.i239, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.dw

bb.dw:                                            ; preds = %.critedge174
  %.not7.i.i.i = icmp eq ptr %i.np, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 3 uses
  %i.ns = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i240 = icmp eq i8 %i.ns, 0
  br i1 %.not.i.i.i.i240, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nt = load i32, ptr %i.nr, align 4, !tbaa !3
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.nv = atomicrmw volatile add ptr %i.nr, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ft, align 8, !tbaa !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.dz, %bb.dy, %bb.dw
  %i.nw = phi ptr [ %i.nq, %bb.dw ], [ %i.nq, %bb.dy ], [ %.pr.pre.i.i.i, %bb.dz ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 4 uses
  %i.ny = load atomic i64, ptr %i.nx acquire, align 8 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 4294967297
  %i.oa = trunc i64 %i.ny to i32                  ; 2 uses
  br i1 %i.nz, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.nx, align 8, !tbaa !111
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  store i32 0, ptr %i.ob, align 4, !tbaa !113
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !7
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #22, !inline_history !141
  %i.of = load ptr, ptr %i.nw, align 8, !tbaa !7
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #22, !inline_history !141
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ec:                                            ; preds = %bb.ea
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i9.i.i.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i9.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.oj = add nsw i32 %i.oa, -1
  store i32 %i.oj, ptr %i.nx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.ok = atomicrmw volatile add ptr %i.nx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i = phi i32 [ %i.oa, %bb.ed ], [ %i.ok, %bb.ee ]
  %i.ol = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ol, label %bb.ef, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !110

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.eb, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.np, ptr %i.ft, align 8, !tbaa !109
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %.critedge174, %bb.bb
  %i.om = load ptr, ptr %15, align 16, !tbaa !37  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !55
  %.off.i241 = add i32 %i.oo, -2
  %switch.i242 = icmp ult i32 %.off.i241, 8
  %or.cond = and i1 %2, %switch.i242
  br i1 %or.cond, label %bb.eg, label %bb.gr

bb.eg:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.op = load ptr, ptr %14, align 16, !tbaa !127 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  store ptr %i.or, ptr %26, align 8, !tbaa !142
  %i.os = load ptr, ptr %i.oq, align 8, !tbaa !80 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !143 ; 8 uses
  %i.ov = icmp ugt i64 %i.ou, 15
  br i1 %i.ov, label %bb.eh, label %._crit_edge.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.ow = icmp slt i64 %i.ou, 0
  br i1 %i.ow, label %.noexc.i, label %bb.ei

.noexc.i:                                         ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
          to label %.noexc243 unwind label %bb.fl

.noexc243:                                        ; preds = %.noexc.i
  unreachable

bb.ei:                                            ; preds = %bb.eh
  %i.ox = add nuw i64 %i.ou, 1                    ; 2 uses
  %i.oy = icmp slt i64 %i.ox, 0
  br i1 %i.oy, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !110

.noexc6.i:                                        ; preds = %bb.ei
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc244 unwind label %bb.fl

.noexc244:                                        ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ei
  %i.oz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #24
          to label %.noexc245 unwind label %bb.fl ; 2 uses

.noexc245:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.oz, ptr %26, align 8, !tbaa !80
  store i64 %i.ou, ptr %i.or, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc245, %bb.eg
  %i.pa = phi ptr [ %i.oz, %.noexc245 ], [ %i.or, %bb.eg ] ; 3 uses
  switch i64 %i.ou, label %bb.ek [
    i64 1, label %bb.ej
    i64 0, label %bb.el
  ]

bb.ej:                                            ; preds = %._crit_edge.i.i
  %i.pb = load i8, ptr %i.os, align 1, !tbaa !81
  store i8 %i.pb, ptr %i.pa, align 1, !tbaa !81
  br label %bb.el

bb.ek:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pa, ptr align 1 %i.os, i64 %i.ou, i1 false)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %._crit_edge.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.ou, ptr %i.pc, align 8, !tbaa !143
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ou
  store i8 0, ptr %i.pd, align 1, !tbaa !81
  %i.pe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float32Ev()
          to label %bb.em unwind label %bb.fm     ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.pf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !109 ; 2 uses
  %i.pi = load <2 x ptr>, ptr %i.pe, align 8, !tbaa !130
  store <2 x ptr> %i.pi, ptr %27, align 16, !tbaa !130
  %.not.i.i.i246 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i246, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit248, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 3 uses
  %i.pk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i247 = icmp eq i8 %i.pk, 0
  br i1 %.not.i.i.i.i247, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.pl = load i32, ptr %i.pj, align 4, !tbaa !3
  %i.pm = add nsw i32 %i.pl, 1
  store i32 %i.pm, ptr %i.pj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit248

bb.ep:                                            ; preds = %bb.en
  %i.pn = atomicrmw volatile add ptr %i.pj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit248

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit248: ; preds = %bb.em, %bb.eo, %bb.ep
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %25, ptr noundef nonnull %26, ptr noundef nonnull %27, i1 noundef zeroext true, ptr noundef nonnull %28)
          to label %bb.eq unwind label %bb.fn

bb.eq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit248
  store i8 1, ptr %29, align 1
  %.sroa.6381.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %29, i64 1
  store <3 x i8> zeroinitializer, ptr %.sroa.6381.0..sroa_idx382, align 1
  %.sroa.7.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i8 1, ptr %.sroa.7.0..sroa_idx383, align 1
  %.sroa.8.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %29, i64 5
  store i8 1, ptr %.sroa.8.0..sroa_idx385, align 1
  %.sroa.9.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %29, i64 6
  store i8 1, ptr %.sroa.9.0..sroa_idx387, align 1
  %.sroa.10.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %29, i64 7
  store <5 x i8> zeroinitializer, ptr %.sroa.10.0..sroa_idx389, align 1
  invoke void @_ZNK5arrow5Field9MergeWithERKSt10shared_ptrIS0_ENS0_12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %24, ptr noundef nonnull align 8 dereferenceable(96) %i.op, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %29)
          to label %bb.er unwind label %bb.fo

bb.er:                                            ; preds = %bb.eq
  %i.po = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !109 ; 8 uses
  %.not.i.i249 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i249, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 4 uses
  %i.pr = load atomic i64, ptr %i.pq acquire, align 8 ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 4294967297
  %i.pt = trunc i64 %i.pr to i32                  ; 2 uses
  br i1 %i.ps, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.pq, align 8, !tbaa !111
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  store i32 0, ptr %i.pu, align 4, !tbaa !113
  %i.pv = load ptr, ptr %i.pp, align 8, !tbaa !7
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #22, !inline_history !131
  %i.py = load ptr, ptr %i.pp, align 8, !tbaa !7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #22, !inline_history !131
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253

bb.eu:                                            ; preds = %bb.es
  %i.qb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i250 = icmp eq i8 %i.qb, 0
  br i1 %.not.i.i.i250, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qc = add nsw i32 %i.pt, -1
  store i32 %i.qc, ptr %i.pq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

bb.ew:                                            ; preds = %bb.eu
  %i.qd = atomicrmw volatile add ptr %i.pq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i252 = phi i32 [ %i.pt, %bb.ev ], [ %i.qd, %bb.ew ]
  %i.qe = icmp eq i32 %.0.i.i.i.i252, 1
  br i1 %i.qe, label %bb.ex, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, !prof !110

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253: ; preds = %bb.er, %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251, %bb.ex
  %i.qf = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !109 ; 8 uses
  %.not.i.i254 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i254, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 4 uses
  %i.qi = load atomic i64, ptr %i.qh acquire, align 8 ; 2 uses
  %i.qj = icmp eq i64 %i.qi, 4294967297
  %i.qk = trunc i64 %i.qi to i32                  ; 2 uses
  br i1 %i.qj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.qh, align 8, !tbaa !111
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 12
  store i32 0, ptr %i.ql, align 4, !tbaa !113
  %i.qm = load ptr, ptr %i.qg, align 8, !tbaa !7
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #22, !inline_history !144
  %i.qp = load ptr, ptr %i.qg, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #22, !inline_history !144
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fa:                                            ; preds = %bb.ey
  %i.qs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i255 = icmp eq i8 %i.qs, 0
  br i1 %.not.i.i.i255, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.qt = add nsw i32 %i.qk, -1
  store i32 %i.qt, ptr %i.qh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256

bb.fc:                                            ; preds = %bb.fa
  %i.qu = atomicrmw volatile add ptr %i.qh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i257 = phi i32 [ %i.qk, %bb.fb ], [ %i.qu, %bb.fc ]
  %i.qv = icmp eq i32 %.0.i.i.i.i257, 1
  br i1 %i.qv, label %bb.fd, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qg) #22
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i256, %bb.fd
  %i.qw = load ptr, ptr %i.pf, align 8, !tbaa !109 ; 8 uses
  %.not.i.i258 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i258, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8 ; 4 uses
  %i.qy = load atomic i64, ptr %i.qx acquire, align 8 ; 2 uses
  %i.qz = icmp eq i64 %i.qy, 4294967297
  %i.ra = trunc i64 %i.qy to i32                  ; 2 uses
  br i1 %i.qz, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.qx, align 8, !tbaa !111
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  store i32 0, ptr %i.rb, align 4, !tbaa !113
  %i.rc = load ptr, ptr %i.qw, align 8, !tbaa !7
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #22, !inline_history !145
  %i.rf = load ptr, ptr %i.qw, align 8, !tbaa !7
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fg:                                            ; preds = %bb.fe
  %i.ri = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i259 = icmp eq i8 %i.ri, 0
  br i1 %.not.i.i.i259, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.rj = add nsw i32 %i.ra, -1
  store i32 %i.rj, ptr %i.qx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260

bb.fi:                                            ; preds = %bb.fg
  %i.rk = atomicrmw volatile add ptr %i.qx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260: ; preds = %bb.fi, %bb.fh
  %.0.i.i.i.i261 = phi i32 [ %i.ra, %bb.fh ], [ %i.rk, %bb.fi ]
  %i.rl = icmp eq i32 %.0.i.i.i.i261, 1
  br i1 %i.rl, label %bb.fj, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.fj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ff, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260, %bb.fj
  %i.rm = load ptr, ptr %26, align 8, !tbaa !80   ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.or
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ro = load i64, ptr %i.or, align 8, !tbaa !81
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.rq = load ptr, ptr %24, align 8, !tbaa !18
  %i.rr = icmp eq ptr %i.rq, null                 ; 2 uses
  br i1 %i.rr, label %bb.fs, label %bb.fk, !prof !42

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  store ptr null, ptr %0, align 8, !tbaa !18
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %_ZN5arrow6StatusC2ERKS0_.exit266 unwind label %bb.fr

bb.fl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

bb.fm:                                            ; preds = %bb.el
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fn:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit248
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fo:                                            ; preds = %bb.eq
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #22
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.pn140 = phi { ptr, i32 } [ %i.rv, %bb.fo ], [ %i.ru, %bb.fn ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #22
  br label %bb.fq
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal19RecordBatchToTensorERKNS_11RecordBatchEbbPNS_10MemoryPoolEPSt10shared_ptrINS_6TensorEE:bb.a
  %.0.i.i.i.i.i.i.i344 = phi i32 [ %i.adl, %bb.is ], [ %i.adv, %bb.it ]
  %i.adw = icmp eq i32 %.0.i.i.i.i.i.i.i344, 1
  br i1 %i.adw, label %bb.iu, label %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.i, !prof !110

bb.iu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i343
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adh) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.i: ; preds = %bb.iu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i343, %bb.iq, %bb.io
  %.pr.i345 = load ptr, ptr %38, align 8, !tbaa !18 ; 2 uses
  %.not.i.i346 = icmp eq ptr %.pr.i345, null
  br i1 %.not.i.i346, label %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.thread.i, !prof !139

_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit332
  %i.adx = phi ptr [ %.pr.i345, %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.i ], [ %i.ade, %_ZN5arrow6StatusC2ERKS0_.exit332 ]
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 1
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !43, !range !53, !noundef !54
  %i.aea = trunc nuw i8 %i.adz to i1
  br i1 %i.aea, label %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEED2Ev.exit, label %bb.iv

bb.iv:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %38) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEE7DestroyEv.exit.thread.i, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.critedge176

.critedge176:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit319, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEED2Ev.exit
  %i.aeb = load ptr, ptr %35, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i347 = icmp eq ptr %i.aeb, null
  br i1 %.not.i.i.i347, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %.critedge176
  %i.aec = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !24
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = ptrtoint ptr %i.aeb to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %i.aeb, i64 noundef %i.aeg) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.critedge176, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.aeh = load ptr, ptr %34, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i348 = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i.i348, label %_ZNSt6vectorIlSaIlEED2Ev.exit349, label %bb.ix

bb.ix:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.aei = load ptr, ptr %i.aaw, align 8, !tbaa !24
  %i.aej = ptrtoint ptr %i.aei to i64
  %i.aek = ptrtoint ptr %i.aeh to i64
  %i.ael = sub i64 %i.aej, %i.aek
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef %i.ael) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit349

_ZNSt6vectorIlSaIlEED2Ev.exit349:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.jb

bb.iy:                                            ; preds = %.body327, %bb.ig, %bb.hy, %bb.hw
  %.pn155.pn.pn = phi { ptr, i32 } [ %i.abf, %bb.hy ], [ %i.abc, %bb.hw ], [ %i.ack, %bb.ig ], [ %eh.lpad-body328, %.body327 ] ; 2 uses
  %i.aem = load ptr, ptr %35, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i350 = icmp eq ptr %i.aem, null
  br i1 %.not.i.i.i350, label %_ZNSt6vectorIlSaIlEED2Ev.exit351, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aen = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !24
  %i.aep = ptrtoint ptr %i.aeo to i64
  %i.aeq = ptrtoint ptr %i.aem to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  call void @_ZdlPvm(ptr noundef nonnull %i.aem, i64 noundef %i.aer) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit351

_ZNSt6vectorIlSaIlEED2Ev.exit351:                 ; preds = %bb.iy, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.aes = load ptr, ptr %34, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i352 = icmp eq ptr %i.aes, null
  br i1 %.not.i.i.i352, label %_ZNSt6vectorIlSaIlEED2Ev.exit353, label %bb.ja

bb.ja:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit351
  %i.aet = load ptr, ptr %i.aaw, align 8, !tbaa !24
  %i.aeu = ptrtoint ptr %i.aet to i64
  %i.aev = ptrtoint ptr %i.aes to i64
  %i.aew = sub i64 %i.aeu, %i.aev
  call void @_ZdlPvm(ptr noundef nonnull %i.aes, i64 noundef %i.aew) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit353

_ZNSt6vectorIlSaIlEED2Ev.exit353:                 ; preds = %bb.ja, %_ZNSt6vectorIlSaIlEED2Ev.exit351, %bb.hu, %bb.hv
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %i.aba, %bb.hu ], [ %i.abb, %bb.hv ], [ %.pn155.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit351 ], [ %.pn155.pn.pn, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %bb.ji

bb.jb:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.aex = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !109 ; 8 uses
  %.not.i.i354 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i354, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8 ; 4 uses
  %i.afa = load atomic i64, ptr %i.aez acquire, align 8 ; 2 uses
  %i.afb = icmp eq i64 %i.afa, 4294967297
  %i.afc = trunc i64 %i.afa to i32                ; 2 uses
  br i1 %i.afb, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  store i32 0, ptr %i.aez, align 8, !tbaa !111
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aey, i64 12
  store i32 0, ptr %i.afd, align 4, !tbaa !113
  %i.afe = load ptr, ptr %i.aey, align 8, !tbaa !7
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load ptr, ptr %i.aff, align 8
  call void %i.afg(ptr noundef nonnull align 8 dereferenceable(16) %i.aey) #22, !inline_history !186
  %i.afh = load ptr, ptr %i.aey, align 8, !tbaa !7
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8
  call void %i.afj(ptr noundef nonnull align 8 dereferenceable(16) %i.aey) #22, !inline_history !186
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.je:                                            ; preds = %bb.jc
  %i.afk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i355 = icmp eq i8 %i.afk, 0
  br i1 %.not.i.i.i355, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.afl = add nsw i32 %i.afc, -1
  store i32 %i.afl, ptr %i.aez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i356

bb.jg:                                            ; preds = %bb.je
  %i.afm = atomicrmw volatile add ptr %i.aez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i356

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i356: ; preds = %bb.jg, %bb.jf
  %.0.i.i.i.i357 = phi i32 [ %i.afc, %bb.jf ], [ %i.afm, %bb.jg ]
  %i.afn = icmp eq i32 %.0.i.i.i.i357, 1
  br i1 %i.afn, label %bb.jh, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.jh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i356
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aey) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.jb, %bb.jd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i356, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %_ZN5arrow6StatusC2ERKS0_.exit301

bb.ji:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %bb.ha
  %.pn160.pn = phi { ptr, i32 } [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %.pn155.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit353 ], [ %i.vu, %bb.ha ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #22
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit305
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %bb.ji ], [ %i.vp, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.jm

_ZN5arrow6StatusC2ERKS0_.exit301:                 ; preds = %bb.gv, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.afo = load ptr, ptr %30, align 8, !tbaa !18  ; 2 uses
  %i.afp = icmp eq ptr %i.afo, null
  br i1 %i.afp, label %bb.jk, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !42

bb.jk:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit301
  %i.afq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i358 = icmp eq ptr %i.afr, null
  br i1 %.not.i.i.i.i358, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.jk
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !7
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  %i.afu = load ptr, ptr %i.aft, align 8
  call void %i.afu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.afr) #22, !inline_history !187
  %.pr.pre.i = load ptr, ptr %30, align 8, !tbaa !18 ; 2 uses
  %.not.i.i359 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i359, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !139

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit301
  %i.afv = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.afo, %_ZN5arrow6StatusC2ERKS0_.exit301 ]
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 1
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !43, !range !53, !noundef !54
  %i.afy = trunc nuw i8 %i.afx to i1
  br i1 %i.afy, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.jl

bb.jl:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %30) #22
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.jk, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %_ZN5arrow6Status14NotImplementedIJRA47_KcEEES0_DpOT_.exit

bb.jm:                                            ; preds = %bb.jj, %bb.gx
  %.pn164 = phi { ptr, i32 } [ %i.vf, %bb.gx ], [ %.pn160.pn.pn, %bb.jj ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.jz

_ZN5arrow6Status14NotImplementedIJRA47_KcEEES0_DpOT_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %bb.cn, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev.exit299, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  %i.afz = load ptr, ptr %i.ft, align 8, !tbaa !109 ; 8 uses
  %.not.i.i360 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i360, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364, label %bb.jn

bb.jn:                                            ; preds = %_ZN5arrow6Status14NotImplementedIJRA47_KcEEES0_DpOT_.exit
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8 ; 4 uses
  %i.agb = load atomic i64, ptr %i.aga acquire, align 8 ; 2 uses
  %i.agc = icmp eq i64 %i.agb, 4294967297
  %i.agd = trunc i64 %i.agb to i32                ; 2 uses
  br i1 %i.agc, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store i32 0, ptr %i.aga, align 8, !tbaa !111
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 12
  store i32 0, ptr %i.age, align 4, !tbaa !113
  %i.agf = load ptr, ptr %i.afz, align 8, !tbaa !7
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.agh = load ptr, ptr %i.agg, align 8
  call void %i.agh(ptr noundef nonnull align 8 dereferenceable(16) %i.afz) #22, !inline_history !145
  %i.agi = load ptr, ptr %i.afz, align 8, !tbaa !7
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 24
  %i.agk = load ptr, ptr %i.agj, align 8
  call void %i.agk(ptr noundef nonnull align 8 dereferenceable(16) %i.afz) #22, !inline_history !145
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364

bb.jp:                                            ; preds = %bb.jn
  %i.agl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i361 = icmp eq i8 %i.agl, 0
  br i1 %.not.i.i.i361, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.agm = add nsw i32 %i.agd, -1
  store i32 %i.agm, ptr %i.aga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362

bb.jr:                                            ; preds = %bb.jp
  %i.agn = atomicrmw volatile add ptr %i.aga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362: ; preds = %bb.jr, %bb.jq
  %.0.i.i.i.i363 = phi i32 [ %i.agd, %bb.jq ], [ %i.agn, %bb.jr ]
  %i.ago = icmp eq i32 %.0.i.i.i.i363, 1
  br i1 %i.ago, label %bb.js, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364, !prof !110

bb.js:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afz) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364: ; preds = %_ZN5arrow6Status14NotImplementedIJRA47_KcEEES0_DpOT_.exit, %bb.jo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.agp = load ptr, ptr %i.fj, align 8, !tbaa !109 ; 8 uses
  %.not.i.i365 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i365, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369, label %bb.jt

bb.jt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 8 ; 4 uses
  %i.agr = load atomic i64, ptr %i.agq acquire, align 8 ; 2 uses
  %i.ags = icmp eq i64 %i.agr, 4294967297
  %i.agt = trunc i64 %i.agr to i32                ; 2 uses
  br i1 %i.ags, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  store i32 0, ptr %i.agq, align 8, !tbaa !111
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agp, i64 12
  store i32 0, ptr %i.agu, align 4, !tbaa !113
  %i.agv = load ptr, ptr %i.agp, align 8, !tbaa !7
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.agx = load ptr, ptr %i.agw, align 8
  call void %i.agx(ptr noundef nonnull align 8 dereferenceable(16) %i.agp) #22, !inline_history !131
  %i.agy = load ptr, ptr %i.agp, align 8, !tbaa !7
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 24
  %i.aha = load ptr, ptr %i.agz, align 8
  call void %i.aha(ptr noundef nonnull align 8 dereferenceable(16) %i.agp) #22, !inline_history !131
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369

bb.jv:                                            ; preds = %bb.jt
  %i.ahb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i366 = icmp eq i8 %i.ahb, 0
  br i1 %.not.i.i.i366, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.ahc = add nsw i32 %i.agt, -1
  store i32 %i.ahc, ptr %i.agq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367

bb.jx:                                            ; preds = %bb.jv
  %i.ahd = atomicrmw volatile add ptr %i.agq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367: ; preds = %bb.jx, %bb.jw
  %.0.i.i.i.i368 = phi i32 [ %i.agt, %bb.jw ], [ %i.ahd, %bb.jx ]
  %i.ahe = icmp eq i32 %.0.i.i.i.i368, 1
  br i1 %i.ahe, label %bb.jy, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369, !prof !110

bb.jy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agp) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit364, %bb.ju, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i367, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ka

bb.jz:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.gw, %bb.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %bb.fr, %bb.br, %bb.bv, %bb.cq, %bb.df, %bb.de, %bb.be
  %.pn164.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %.pn131, %bb.de ], [ %i.gl, %bb.be ], [ %.pn136.pn, %bb.bv ], [ %i.ve, %bb.gw ], [ %i.ia, %bb.br ], [ %.pn, %bb.cq ], [ %i.lw, %bb.df ], [ %i.sa, %bb.fr ], [ %.pn164, %bb.jm ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.kb

bb.ka:                                            ; preds = %bb.s, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit369, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit195, %bb.i
  ret void

bb.kb:                                            ; preds = %bb.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %bb.ar, %bb.r
  %.pn168.pn = phi { ptr, i32 } [ %.pn168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn164.pn.pn, %bb.jz ], [ %i.ex, %bb.ar ], [ %.us-phi, %bb.r ]
  resume { ptr, i32 } %.pn168.pn
}

declare noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !113
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !188
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !188
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status9TypeErrorIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !189
  call void @_ZN5arrow8internal12JoinToStringIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2), !noalias !189
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !80, !noalias !189 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !189
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN5arrow6Status8FromArgsIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !80, !noalias !189 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !81, !noalias !189
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !189
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !189
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZNK5arrow5Field9MergeWithERKSt10shared_ptrIS0_ENS0_12MergeOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.27") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !113
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !192
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !192
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
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
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit, !prof !110

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread, !prof !139

_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43, !range !53, !noundef !54
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  br label %_ZN5arrow6StatusD2Ev.exit

end_hunk_3
