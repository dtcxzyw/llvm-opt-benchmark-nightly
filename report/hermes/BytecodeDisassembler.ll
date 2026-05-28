inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc15BytecodeVisitorD2Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc25ObjdumpDisassembleVisitor11listOpCodesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.hermes::inst::InstMetaData", align 8 ; 5 uses
  %2 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !420, !nonnull !250, !align !251 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.2, i64 noundef 1) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.f, align 1
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 4294967295, ptr %2, align 8, !tbaa !47, !alias.scope !421
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !53, !alias.scope !421
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 16, ptr %i.l, align 8, !tbaa !54, !alias.scope !421
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 1, ptr %i.m, align 4, !tbaa !55, !alias.scope !421
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.n, align 1, !tbaa !56, !alias.scope !421
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.o, align 2, !tbaa !57, !alias.scope !421
  %i.p = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(23) %2) #18 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 3
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull @.str.138, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit4

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.138, i64 3, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit4

_ZN4llvh11raw_ostreamlsEPKc.exit4:                ; preds = %bb.d, %bb.e
  %.0.i.i3 = phi ptr [ %i.y, %bb.d ], [ %i.p, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i3, i64 noundef 4294967295) #18 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 3
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit4
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, ptr noundef nonnull @.str.139, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.af, ptr noundef nonnull align 1 dereferenceable(3) @.str.139, i64 3, i1 false)
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

_ZN4llvh11raw_ostreamlsEPKc.exit7:                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.2, ptr %i.an, align 8, !tbaa !399
  %i.ao = ptrtoint ptr %.sroa.0.2 to i64
  %i.ap = icmp ult ptr %.sroa.0.2, %.sroa.13.2
  br i1 %i.ap, label %.lr.ph33.i, label %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit

.lr.ph33.i:                                       ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i"

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i": ; preds = %._crit_edge.us.i, %.lr.ph33.i
  %.031.us.i = phi ptr [ %i.bh, %._crit_edge.us.i ], [ %.sroa.0.2, %.lr.ph33.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.ar = load i8, ptr %.031.us.i, align 1, !tbaa !7
  %i.as = call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %i.ar) #18 ; 2 uses
  %.fca.0.extract.us.i = extractvalue { i64, i8 } %i.as, 0 ; 5 uses
  %.fca.1.extract.us.i = extractvalue { i64, i8 } %i.as, 1
  store i64 %.fca.0.extract.us.i, ptr %1, align 8
  store i8 %.fca.1.extract.us.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.at = trunc i64 %.fca.0.extract.us.i to i8    ; 2 uses
  %i.au = lshr i64 %.fca.0.extract.us.i, 8        ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.at, ptr noundef nonnull %.031.us.i, i32 noundef %i.aw) #18, !inline_history !424
  %i.ba = and i64 %.fca.0.extract.us.i, 16711680
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %._crit_edge.us.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i"
  %i.bb = lshr i64 %.fca.0.extract.us.i, 16
  %wide.trip.count.i = and i64 %i.bb, 255
  %i.bc = getelementptr inbounds nuw i8, ptr %.031.us.i, i64 1
  br label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i"
  %i.bd = load ptr, ptr %0, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.at, ptr noundef nonnull %.031.us.i, i32 noundef %i.aw) #18, !inline_history !424
  %i.bg = and i64 %i.au, 255
  %i.bh = getelementptr inbounds nuw i8, ptr %.031.us.i, i64 %i.bg ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.bi = icmp ult ptr %i.bh, %.sroa.13.2
  br i1 %i.bi, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i", label %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit, !llvm.loop !202

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %.lr.ph.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.us.i ] ; 3 uses
  %.02829.us.i = phi ptr [ %i.bc, %.lr.ph.us.preheader.i ], [ %i.br, %.lr.ph.us.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !203 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %.031.us.i, i8 noundef zeroext %i.bk, ptr noundef %.02829.us.i, i32 noundef %i.bo) #18, !inline_history !424
  %i.bp = call noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext %i.bk) #18
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.02829.us.i, i64 %i.bq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !205

_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit: ; preds = %._crit_edge.us.i, %bb.h
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit
  %i.bs = ptrtoint ptr %.sroa.23.2 to i64
  %i.bt = sub i64 %i.bs, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bt) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit, %bb.i
  ret void

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit7, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %storemerge37 = phi i8 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %i.di, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 4 uses
  %.sroa.0.036 = phi ptr [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %.sroa.0.2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 5 uses
  %.sroa.23.035 = phi ptr [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %.sroa.23.2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 3 uses
  %.sroa.13.034 = phi ptr [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %.sroa.13.2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %.sroa.13.034, %.sroa.23.035
  br i1 %.not.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %storemerge37, ptr %.sroa.13.034, align 1, !tbaa !7
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.l:                                             ; preds = %bb.j
  %i.bu = ptrtoint ptr %.sroa.23.035 to i64
  %i.bv = ptrtoint ptr %.sroa.0.036 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.m, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i, %i.bw  ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i9 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i9)
  %3 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #22 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %i.bw ; 2 uses
  store i8 %storemerge37, ptr %4, align 1, !tbaa !7
  %5 = icmp sgt i64 %i.bw, 0
  br i1 %5, label %bb.n, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %.sroa.0.036, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0.036, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.036, i64 noundef %i.bw) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %i.cb
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %.pn = phi ptr [ %4, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.13.034, %bb.k ] ; 2 uses
  %.sroa.23.1 = phi ptr [ %i.cc, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.23.035, %bb.k ] ; 5 uses
  %.sroa.0.1 = phi ptr [ %3, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.0.036, %bb.k ] ; 10 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 7 uses
  %i.cd = call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %storemerge37) #18
  %.fca.0.extract = extractvalue { i64, i8 } %i.cd, 0
  %.sroa.01.1.extract.shift = lshr i64 %.fca.0.extract, 8
  %i.ce = ptrtoint ptr %.sroa.13.1 to i64         ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 10 uses
  %i.ch = and i64 %.sroa.01.1.extract.shift, 255
  %i.ci = add i64 %i.cg, -1
  %i.cj = add i64 %i.ci, %i.ch                    ; 5 uses
  %i.ck = icmp ugt i64 %i.cj, %i.cg
  br i1 %i.ck, label %bb.p, label %bb.x

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.cl = sub nuw i64 %i.cj, %i.cg                ; 6 uses
  %i.cm = ptrtoint ptr %.sroa.23.1 to i64         ; 2 uses
  %i.cn = sub i64 %i.cm, %i.ce                    ; 2 uses
  %i.co = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = xor i64 %i.cg, 9223372036854775807      ; 2 uses
  %i.cq = icmp ule i64 %i.cn, %i.cp
  call void @llvm.assume(i1 %i.cq)
  %.not23.i.i = icmp ult i64 %i.cn, %i.cl
  br i1 %.not23.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %.sroa.13.1, align 1, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.cs = add nsw i64 %i.cl, -1                   ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr i8, ptr %.sroa.13.1, i64 %i.cl
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cr, i8 0, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.s:                                             ; preds = %bb.p
  %i.cv = icmp ult i64 %i.cp, %i.cl
  br i1 %i.cv, label %bb.t, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.s
  %.sroa.speculated.i.i.i11 = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.cl)
  %i.cw = add nuw i64 %.sroa.speculated.i.i.i11, %i.cg
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cw, i64 9223372036854775807) ; 2 uses
  %i.cy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #22 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cg ; 2 uses
  store i8 0, ptr %i.cz, align 1, !tbaa !7
  %i.da = add nsw i64 %i.cl, -1                   ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dc, i8 0, i64 %i.da, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i: ; preds = %bb.u, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  %.not28.i.i = icmp eq ptr %.sroa.13.1, %.sroa.0.1
  br i1 %.not28.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %.sroa.0.1, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.v, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  %.not.i27.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i27.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.dd = sub i64 %i.cm, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.dd) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cj
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.dg = icmp ult i64 %i.cj, %i.cg
  br i1 %i.dg, label %bb.y, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %i.cj ; 2 uses
  %.not.i4.i = icmp eq ptr %.sroa.13.1, %i.dh
  %spec.select = select i1 %.not.i4.i, ptr %.sroa.13.1, ptr %i.dh
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.y, %bb.q, %bb.r, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %bb.x
  %.sroa.13.2 = phi ptr [ %i.de, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.13.1, %bb.x ], [ %spec.select, %bb.y ], [ %i.cr, %bb.q ], [ %i.cu, %bb.r ] ; 3 uses
  %.sroa.23.2 = phi ptr [ %i.df, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.23.1, %bb.x ], [ %.sroa.23.1, %bb.y ], [ %.sroa.23.1, %bb.q ], [ %.sroa.23.1, %bb.r ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.cy, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.0.1, %bb.x ], [ %.sroa.0.1, %bb.y ], [ %.sroa.0.1, %bb.q ], [ %.sroa.0.1, %bb.r ] ; 7 uses
  %i.di = add nuw i8 %storemerge37, 1             ; 2 uses
  %exitcond.not = icmp eq i8 %i.di, -64
  br i1 %exitcond.not, label %bb.h, label %bb.j, !llvm.loop !425
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc18JumpTargetsVisitor11beforeStartEjPKh(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.a, align 4, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor20postVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc18JumpTargetsVisitor21visitSwitchImmTargetsEjiPKh(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8, !tbaa !190
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.d = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.e = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.e, label %bb.b, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !231
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i32 %i.h, ptr %i.i, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc18JumpTargetsVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes3hbc18JumpTargetsVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor10afterStartEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc24PrettyDisassembleVisitor20postVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(68) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249, !nonnull !250, !align !251 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.f, align 1
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor21visitSwitchImmTargetsEjiPKh(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc24PrettyDisassembleVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
end_hunk_0
