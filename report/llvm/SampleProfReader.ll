Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfReader?download=true
inline.NumInlined: 6348
inline.NumDeleted: 2998
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm10sampleprof25SampleProfileReaderBinary19readStringFromTableEPm:bb.a
  %3 = alloca %"class.llvm::ErrorOr.89", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !331
  call void @_ZN4llvm10sampleprof25SampleProfileReaderBinary10readNumberImEENS_7ErrorOrIT_EEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.89") align 8 %3, ptr noundef nonnull align 8 dereferenceable(304) %1), !noalias !331
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !noalias !331
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i, label %.critedge.i

_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i:           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %3, align 8, !tbaa !215, !noalias !331 ; 2 uses
  %.not9.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not9.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.31.0.copyload.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !tbaa !329, !noalias !331
  br label %bb.f

.critedge.i:                                      ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i, %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !39, !noalias !331 ; 4 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !334, !noalias !331 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !335, !noalias !331
  br label %_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i

bb.d:                                             ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !336, !noalias !331
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !337, !noalias !331
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 4
  br label %_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i

_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %i.h, %bb.c ], [ %i.p, %bb.d ]
  %.not.i = icmp ult i64 %i.e, %i.q
  br i1 %.not.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24, !noalias !331
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.8.0.ph = phi ptr [ %i.r, %bb.e ], [ %.sroa.31.0.copyload.i.i, %bb.b ]
  %.sroa.011.0.ph = phi i32 [ 8, %bb.e ], [ %.sroa.0.0.copyload.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !331
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  store i32 %.sroa.011.0.ph, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !329
  br label %bb.k

.critedge:                                        ; preds = %_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !331
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  store i64 %i.e, ptr %2, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = shl i64 %i.e, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  br label %_ZNK4llvm10sampleprof22SampleProfileNameTableixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !337
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i6 = load ptr, ptr %i.z, align 8, !tbaa !125
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %_ZNK4llvm10sampleprof22SampleProfileNameTableixEm.exit

_ZNK4llvm10sampleprof22SampleProfileNameTableixEm.exit: ; preds = %bb.i, %bb.j
  %.pn.i = phi ptr [ null, %bb.i ], [ %.sroa.0.0.copyload.i6, %bb.j ]
  %.0.copyload.i.i.pn.in.i = phi ptr [ %i.w, %bb.i ], [ %.sroa.3.0..sroa_idx.i, %bb.j ]
  %.0.copyload.i.i.pn.i = load i64, ptr %.0.copyload.i.i.pn.in.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, -2
  store i8 %i.ac, ptr %i.aa, align 8
  store ptr %.pn.i, ptr %0, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0.copyload.i.i.pn.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZNK4llvm10sampleprof22SampleProfileNameTableixEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof25SampleProfileReaderBinary20readContextFromTableEPm(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::ErrorOr.92") align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ErrorOr.89", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4llvm10sampleprof25SampleProfileReaderBinary10readNumberImEENS_7ErrorOrIT_EEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.89") align 8 %3, ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZNK4llvm7ErrorOrImE8getErrorEv.exit, label %.critedge

_ZNK4llvm7ErrorOrImE8getErrorEv.exit:             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8, !tbaa !215 ; 2 uses
  %.not12 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not12, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !329
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.31.0.copyload.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !329
  br label %bb.g

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit
  %i.g = load i64, ptr %3, align 8, !tbaa !39     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 40
  %.not = icmp ult i64 %i.g, %i.o
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24
  store i32 8, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.g

bb.d:                                             ; preds = %.critedge
  %.not5 = icmp eq ptr %2, null
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr %2, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 8
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !21
  store ptr %i.y, ptr %0, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !66
  %i.ac = zext i32 %i.ab to i64
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !341
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10sampleprof25SampleProfileReaderBinary10readNumberImEENS_7ErrorOrIT_EEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.89") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 10 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 6 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = sub i64 0, %i.c
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.d
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %._crit_edge29, label %.lr.ph, !prof !342

bb.b:                                             ; preds = %bb.d
  %5 = add i32 %.028.i24, 7
  br label %.lr.ph, !llvm.loop !343

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i24 = phi i32 [ %5, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i23 = phi i64 [ %.130.i, %bb.b ], [ 0, %bb.a ]
  %.031.i22 = phi ptr [ %i.n, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.031.i22, align 1, !tbaa !44 ; 2 uses
  %i.g = and i8 %i.f, 127                         ; 3 uses
  %i.h = zext nneg i8 %i.g to i64
  %i.i = icmp ugt i32 %.028.i24, 62
  br i1 %i.i, label %bb.c, label %bb.d, !prof !160

bb.c:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i24, 63
  %.not.i = icmp samesign ugt i8 %i.g, 1
  %i.j = icmp ne i8 %i.g, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.j
  br i1 %or.cond43.i, label %._crit_edge29, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.k = icmp ult i32 %.028.i24, 64
  %6 = zext nneg i32 %.028.i24 to i64
  %i.l = shl i64 %i.h, %6
  %i.m = select i1 %i.k, i64 %i.l, i64 0, !prof !205
  %.130.i = add i64 %i.m, %.029.i23               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.031.i22, i64 1 ; 2 uses
  %i.o = icmp slt i8 %i.f, 0
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !343

._crit_edge:                                      ; preds = %bb.d
  br label %._crit_edge29, !llvm.loop !343

._crit_edge29:                                    ; preds = %bb.c, %._crit_edge, %bb.a
  %.132.i = phi ptr [ %i.n, %._crit_edge ], [ %scevgep.i, %bb.a ], [ %.031.i22, %bb.c ]
  %.3.i = phi i64 [ %.130.i, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.p = ptrtoint ptr %.132.i to i64
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !324
  %i.w = icmp ugt ptr %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge29
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8, !noalias !344
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !344
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 4) #24, !inline_history !328
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 4, ptr %i.ab, align 8, !tbaa !166
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !172
  store ptr %4, ptr %3, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !173, !nonnull !19, !align !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call { ptr, i64 } %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #24, !inline_history !175 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 13, ptr %i.an, align 8, !tbaa !176
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.ao, align 4, !tbaa !179
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm27DiagnosticInfoSampleProfileE, i64 16), ptr %2, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.am, ptr %.sroa.2.0..sroa_idx.i.i8, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.aq, align 8, !tbaa !180
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %3, ptr %i.ar, align 8, !tbaa !183
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(13) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.as = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  %i.av = load i64, ptr %i.at, align 8, !tbaa !44
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = or i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 8
  store i32 4, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.21.0..sroa_idx.i12, align 8, !tbaa !329
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge29
  store ptr %i.t, ptr %i.a, align 8, !tbaa !307
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = and i8 %i.bb, -2
  store i8 %i.bc, ptr %i.ba, align 8
  store i64 %.3.i, ptr %0, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof25SampleProfileReaderBinary26readSampleContextFromTableEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::ErrorOr.100") align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %4 = alloca %"class.llvm::ErrorOr.89", align 8  ; 9 uses
  %5 = alloca %"class.llvm::ErrorOr.89", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.b = load i8, ptr %i.a, align 2, !tbaa !235, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !347
  call void @_ZN4llvm10sampleprof25SampleProfileReaderBinary10readNumberImEENS_7ErrorOrIT_EEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.89") align 8 %5, ptr noundef nonnull align 8 dereferenceable(304) %1), !noalias !347
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = load i8, ptr %i.d, align 8, !noalias !347
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i, label %.critedge.i

_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i:           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i32, ptr %5, align 8, !tbaa !215, !noalias !347 ; 2 uses
  %.not12.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not12.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.31.0.copyload.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !tbaa !329, !noalias !347
  %.sroa.053.0.insert.ext = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.g = inttoptr i64 %.sroa.053.0.insert.ext to ptr
  br label %_ZNK4llvm7ErrorOrINS_8ArrayRefINS_10sampleprof18SampleContextFrameEEEE8getErrorEv.exit

.critedge.i:                                      ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i, %bb.b
  %i.h = load i64, ptr %5, align 8, !tbaa !39, !noalias !347 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !338, !noalias !347
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !339, !noalias !347 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 40
  %.not.i = icmp ult i64 %i.h, %i.p
  br i1 %.not.i, label %_ZNK4llvm7ErrorOrINS_8ArrayRefINS_10sampleprof18SampleContextFrameEEEE8getErrorEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24, !noalias !347
  br label %_ZNK4llvm7ErrorOrINS_8ArrayRefINS_10sampleprof18SampleContextFrameEEEE8getErrorEv.exit

_ZNK4llvm7ErrorOrINS_8ArrayRefINS_10sampleprof18SampleContextFrameEEEE8getErrorEv.exit.thread: ; preds = %.critedge.i
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21, !noalias !347
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !347
  %i.v = zext i32 %i.u to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !347
  br label %.critedge18.thread

_ZNK4llvm7ErrorOrINS_8ArrayRefINS_10sampleprof18SampleContextFrameEEEE8getErrorEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.053.0.ph = phi ptr [ %i.g, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.d ] ; 2 uses
  %.sroa.857.0.ph.in = phi ptr [ %.sroa.31.0.copyload.i.i, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.sroa.857.0.ph = ptrtoint ptr %.sroa.857.0.ph.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !347
  %i.w = ptrtoint ptr %.sroa.053.0.ph to i64
  %.sroa.053.0.extract.trunc = trunc i64 %i.w to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.053.0.extract.trunc, 0
  br i1 %.not, label %.critedge18.thread, label %.critedge16

.critedge16:                                      ; preds = %_ZNK4llvm7ErrorOrINS_8ArrayRefINS_10sampleprof18SampleContextFrameEEEE8getErrorEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 8
  store i32 %.sroa.053.0.extract.trunc, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.857.0.ph.in, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !329
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !350
  call void @_ZN4llvm10sampleprof25SampleProfileReaderBinary10readNumberImEENS_7ErrorOrIT_EEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.89") align 8 %4, ptr noundef nonnull align 8 dereferenceable(304) %1), !noalias !350
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !noalias !350
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i.i, label %.critedge.i.i

_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i.i:         ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %4, align 8, !tbaa !215, !noalias !350 ; 2 uses
  %.not9.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not9.i.i, label %.critedge.i.i, label %_ZNK4llvm7ErrorOrINS_10sampleprof10FunctionIdEE8getErrorEv.exit

.critedge.i.i:                                    ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.i.i, %bb.e
  %i.ae = load i64, ptr %4, align 8, !tbaa !39, !noalias !350 ; 9 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !334, !noalias !350 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i.i, label %_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i.i.thread

_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i.i: ; preds = %.critedge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !336, !noalias !350
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !337, !noalias !350 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 4
  %.not.i.i = icmp ult i64 %i.ae, %i.an
  br i1 %.not.i.i, label %_ZNK4llvm7ErrorOrINS_10sampleprof10FunctionIdEE8getErrorEv.exit.thread, label %_ZNK4llvm7ErrorOrINS_10sampleprof10FunctionIdEE8getErrorEv.exit.thread113

_ZNK4llvm10sampleprof22SampleProfileNameTable4sizeEv.exit.i.i.thread: ; preds = %.critedge.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !335, !noalias !350
  %.not.i.i92 = icmp ult i64 %i.ae, %i.ap
end_hunk_0
begin_hunk_1_@_ZN4llvm10sampleprof25SampleProfileReaderBinary22readVTableTypeCountMapERSt3mapINS0_10FunctionIdEmSt4lessIS3_ESaISt4pairIKS3_mEEE:bb.a
  %.sroa.0.0.copyload.i20 = load i32, ptr %5, align 8 ; 2 uses
  %.not60 = icmp ne i32 %.sroa.0.0.copyload.i20, 0
  %or.cond65.not = select i1 %i.ay, i1 %.not60, i1 false
  br i1 %or.cond65.not, label %bb.l, label %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.thread

_ZNK4llvm7ErrorOrImE8getErrorEv.exit.thread:      ; preds = %_ZNK4llvm7ErrorOrINS_10sampleprof10FunctionIdEE8getErrorEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !138
  %i.az = load i64, ptr %5, align 8, !tbaa !39, !noalias !364
  store i64 %i.az, ptr %i.k, align 8, !tbaa !367, !alias.scope !364
  %i.ba = call { ptr, i8 } @_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE6insertIS5_IS2_mEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ba, 1
  %i.bb = trunc i8 %.fca.1.extract to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.bb, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.thread
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !173, !nonnull !19, !align !174
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !76  ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call { ptr, i64 } %i.bg(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #24 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZNK4llvm10sampleprof10FunctionId3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 22) #24, !noalias !369 ; 6 uses
  store ptr %i.n, ptr %10, align 8, !tbaa !372, !alias.scope !369
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !43 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  store ptr %i.bl, ptr %10, align 8, !tbaa !40, !alias.scope !369
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !44
  store i64 %i.bs, ptr %i.n, align 8, !tbaa !44, !alias.scope !369
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bt = phi i64 [ %i.bp, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bt, ptr %i.o, align 8, !tbaa !43, !alias.scope !369
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !40
  store i64 0, ptr %i.bu, align 8, !tbaa !43
  store i8 0, ptr %i.bm, align 8, !tbaa !44
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.bv = load i64, ptr %i.o, align 8, !tbaa !43, !noalias !373
  %i.bw = add i64 %i.bv, -4611686018427387845
  %i.bx = icmp ult i64 %i.bw, 59
  br i1 %i.bx, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #27, !noalias !373
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.15, i64 noundef 59) #24, !noalias !373 ; 6 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !372, !alias.scope !373
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 5 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !43 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.cf, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bz, ptr %9, align 8, !tbaa !40, !alias.scope !373
  %i.cg = load i64, ptr %i.ca, align 8, !tbaa !44
  store i64 %i.cg, ptr %i.p, align 8, !tbaa !44, !alias.scope !373
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i24, align 8, !tbaa !43
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ch = phi i64 [ %i.cd, %bb.k ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.ch, ptr %i.q, align 8, !tbaa !43, !alias.scope !373
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !40
  store i64 0, ptr %i.ci, align 8, !tbaa !43
  store i8 0, ptr %i.ca, align 8, !tbaa !44
  store i8 4, ptr %i.r, align 8, !tbaa !166
  store i8 1, ptr %i.s, align 1, !tbaa !172
  store ptr %9, ptr %8, align 8, !tbaa !44
  store i32 13, ptr %i.t, align 8, !tbaa !176
  store i8 1, ptr %i.u, align 4, !tbaa !179
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm27DiagnosticInfoSampleProfileE, i64 16), ptr %7, align 8, !tbaa !8
  store ptr %i.bi, ptr %i.v, align 8, !tbaa !125
  store i64 %i.bj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !39
  store i32 0, ptr %i.w, align 8, !tbaa !180
  store ptr %8, ptr %i.x, align 8, !tbaa !183
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(13) %7) #24
  %i.cj = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.p
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cl = load i64, ptr %i.p, align 8, !tbaa !44
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.cn = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.n
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !44
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cr = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.y
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.ct = load i64, ptr %i.y, align 8, !tbaa !44
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm7ErrorOrINS_10sampleprof10FunctionIdEE8getErrorEv.exit.thread
  %.sroa.31.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.31.0.copyload.i22 = load ptr, ptr %.sroa.31.0..sroa_idx.i21, align 8, !tbaa !329
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cv = add nuw i32 %.0862, 1                   ; 2 uses
  %i.cw = load i32, ptr %3, align 8, !tbaa !215
  %.not = icmp ult i32 %i.cv, %i.cw
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !376

.critedge:                                        ; preds = %bb.m, %_ZNK4llvm7ErrorOrIjE8getErrorEv.exit, %.preheader
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.l, %_ZNK4llvm7ErrorOrIjE8getErrorEv.exit, %.critedge
  %.sroa.8.1 = phi ptr [ %.sroa.31.0.copyload.i, %_ZNK4llvm7ErrorOrIjE8getErrorEv.exit ], [ %i.cx, %.critedge ], [ %.sroa.31.0.copyload.i15, %.thread ], [ %.sroa.31.0.copyload.i22, %bb.l ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload.i, %_ZNK4llvm7ErrorOrIjE8getErrorEv.exit ], [ 0, %.critedge ], [ %.sroa.0.0.copyload.i13, %.thread ], [ %.sroa.0.0.copyload.i20, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.8.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10sampleprof25SampleProfileReaderBinary10readNumberIjEENS_7ErrorOrIT_EEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 10 uses
  %3 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 10 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, label %.lr.ph, !prof !342

bb.b:                                             ; preds = %bb.d
  %8 = add i32 %.028.i29, 7
  br label %.lr.ph, !llvm.loop !343

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i29 = phi i32 [ %8, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i28 = phi i64 [ %.130.i, %bb.b ], [ 0, %bb.a ]
  %.031.i27 = phi ptr [ %i.l, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = load i8, ptr %.031.i27, align 1, !tbaa !44 ; 2 uses
  %i.e = and i8 %i.d, 127                         ; 3 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = icmp ugt i32 %.028.i29, 62
  br i1 %i.g, label %bb.c, label %bb.d, !prof !160

bb.c:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i29, 63
  %.not.i = icmp samesign ugt i8 %i.e, 1
  %i.h = icmp ne i8 %i.e, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.h
  br i1 %or.cond43.i, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge30, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.i = icmp ult i32 %.028.i29, 64
  %9 = zext nneg i32 %.028.i29 to i64
  %i.j = shl i64 %i.f, %9
  %i.k = select i1 %i.i, i64 %i.j, i64 0, !prof !205
  %.130.i = add i64 %i.k, %.029.i28               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.031.i27, i64 1 ; 2 uses
  %i.m = icmp slt i8 %i.d, 0
  br i1 %i.m, label %bb.b, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !343

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge30: ; preds = %bb.c
  %i.n = ptrtoint ptr %.031.i27 to i64
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread: ; preds = %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge30, %bb.a
  %.132.i.ph = phi i64 [ %i.n, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge30 ], [ 0, %bb.a ]
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %.132.i.ph, %i.o
  br label %bb.f

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.d
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.b to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ugt i64 %.130.i, 4294967295
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8, !noalias !377
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !377
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef 5) #24, !inline_history !328
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 4, ptr %i.y, align 8, !tbaa !166
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !172
  store ptr %5, ptr %4, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !173, !nonnull !19, !align !174
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { ptr, i64 } %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #24, !inline_history !175 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 13, ptr %i.ak, align 8, !tbaa !176
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.al, align 4, !tbaa !179
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm27DiagnosticInfoSampleProfileE, i64 16), ptr %3, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aj, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.an, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %4, ptr %i.ao, align 8, !tbaa !183
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(13) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ap = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !44
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = or i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 8
  store i32 5, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !329
  br label %bb.i

bb.f:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %.in = phi i64 [ %i.p, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %i.s, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.3.i22 = phi i64 [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %.130.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %i.ax = and i64 %.in, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !324
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8, !noalias !380
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !380
  call void %i.bf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i32 noundef 4) #24, !inline_history !328
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 4, ptr %i.bg, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !172
  store ptr %7, ptr %6, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !173, !nonnull !19, !align !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call { ptr, i64 } %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #24, !inline_history !175 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 13, ptr %i.bs, align 8, !tbaa !176
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.bt, align 4, !tbaa !179
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm27DiagnosticInfoSampleProfileE, i64 16), ptr %2, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bq, ptr %i.bu, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.br, ptr %.sroa.2.0..sroa_idx.i.i8, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.bv, align 8, !tbaa !180
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %6, ptr %i.bw, align 8, !tbaa !183
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(13) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bx = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.g
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !44
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = or i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cc, align 8
  store i32 4, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.21.0..sroa_idx.i12, align 8, !tbaa !329
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !307
  %i.cf = trunc nuw i64 %.3.i22 to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = and i8 %i.ch, -2
  store i8 %i.ci, ptr %i.cg, align 8
  store i32 %i.cf, ptr %0, align 8, !tbaa !215
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIN4llvm10sampleprof10FunctionIdEmSt4lessIS2_ESaISt4pairIKS2_mEEE6insertIS5_IS2_mEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not14.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !203
  %.fr.i.i.i = freeze ptr %i.d                    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 5 uses
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i, null
  br i1 %.not9.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i
  %.016.us.i.i.i = phi ptr [ %.1.us.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i ], [ %i.b, %.lr.ph.i.i.i ] ; 5 uses
  %.0815.us.i.i.i = phi ptr [ %.19.us.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i ], [ %i.c, %.lr.ph.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = icmp ult i64 %i.k, %i.f                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.l, i64 24, i64 16
  %spec.select22.i.i.i = select i1 %i.l, ptr %.0815.us.i.i.i, ptr %.016.us.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %.sink.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i ], [ 16, %.lr.ph.split.us.i.i.i ]
  %.19.us.i.i.i = phi ptr [ %spec.select22.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i ], [ %.016.us.i.i.i, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i, i64 %.sink.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4llvm10sampleprof25SampleProfileReaderBinary16readSummaryEntryERSt6vectorINS_19ProfileSummaryEntryESaIS3_EE:bb.a
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.af, %_ZNKSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i25.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i.i
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !306
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.as) #25
  br label %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i.i
  store ptr %i.af, ptr %1, align 8, !tbaa !303
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !717
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.at, ptr %i.l, align 8, !tbaa !306
  br label %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE12emplace_backIJRmS5_S5_EEERS1_DpOT_.exit

_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE12emplace_backIJRmS5_S5_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit17, %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE12emplace_backIJRmS5_S5_EEERS1_DpOT_.exit
  %.sroa.8.0 = phi ptr [ %.sroa.31.0.copyload.i16, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit17 ], [ %i.au, %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE12emplace_backIJRmS5_S5_EEERS1_DpOT_.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload.i14, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit17 ], [ 0, %_ZNSt6vectorIN4llvm19ProfileSummaryEntryESaIS1_EE12emplace_backIJRmS5_S5_EEERS1_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit9, %bb.f
  %.sroa.8.1 = phi ptr [ %.sroa.31.0.copyload.i8, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit9 ], [ %.sroa.8.0, %bb.f ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload.i6, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit9 ], [ %.sroa.0.0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm7ErrorOrImE8getErrorEv.exit, %bb.g
  %.sroa.8.2 = phi ptr [ %.sroa.31.0.copyload.i, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit ], [ %.sroa.8.1, %bb.g ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.0.copyload.i, %_ZNK4llvm7ErrorOrImE8getErrorEv.exit ], [ %.sroa.0.1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.8.2, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11make_uniqueIN4llvm14ProfileSummaryEJNS1_4KindERSt6vectorINS0_19ProfileSummaryEntryESaIS4_EERmS8_iS8_S8_S8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.23") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 13 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !438
  %i.c = load i64, ptr %3, align 8, !tbaa !39
  %i.d = load i64, ptr %4, align 8, !tbaa !39
  %i.e = load i32, ptr %5, align 4, !tbaa !215
  %i.f = load i64, ptr %6, align 8, !tbaa !39
  %i.g = load i64, ptr %7, align 8, !tbaa !39
  %i.h = load i64, ptr %8, align 8, !tbaa !39
  store i32 %i.b, ptr %i.a, align 8, !tbaa !728
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !717  ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !303    ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = icmp ugt i64 %i.p, 384307168202282325
  br i1 %i.q, label %bb.c, label %_ZNSt15__new_allocatorIN4llvm19ProfileSummaryEntryEE8allocateEmPKv.exit.i.i.i.i.i, !prof !160

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4llvm19ProfileSummaryEntryEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26
  %.pre = load ptr, ptr %2, align 8, !tbaa !729
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !729
  br label %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i

_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm19ProfileSummaryEntryEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.s = phi ptr [ %.pre8, %_ZNSt15__new_allocatorIN4llvm19ProfileSummaryEntryEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.t = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN4llvm19ProfileSummaryEntryEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %i.r, %_ZNSt15__new_allocatorIN4llvm19ProfileSummaryEntryEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.u, ptr %i.i, align 8, !tbaa !303
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !306
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm14ProfileSummaryC2ENS0_4KindERKSt6vectorINS_19ProfileSummaryEntryESaIS3_EEmmmmjjbd.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !722
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm14ProfileSummaryC2ENS0_4KindERKSt6vectorINS_19ProfileSummaryEntryESaIS3_EEmmmmjjbd.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !730

_ZN4llvm14ProfileSummaryC2ENS0_4KindERKSt6vectorINS_19ProfileSummaryEntryESaIS3_EEmmmmjjbd.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt12_Vector_baseIN4llvm19ProfileSummaryEntryESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = trunc i64 %i.h to i32
  %i.ab = trunc i64 %i.g to i32
  %i.ac = sext i32 %i.e to i64
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !717
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !731
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %i.ae, align 8, !tbaa !732
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !733
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.f, ptr %i.ag, align 8, !tbaa !734
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %i.ab, ptr %i.ah, align 8, !tbaa !735
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !736
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.aj, align 8, !tbaa !423
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !737
  store ptr %i.a, ptr %0, align 8, !tbaa !302
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN4llvm14ProfileSummaryESt14default_deleteIS1_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !302
  store ptr null, ptr %1, align 8, !tbaa !302
  %i.b = load ptr, ptr %0, align 8, !tbaa !302    ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !302
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt15__uniq_ptr_dataIN4llvm14ProfileSummaryESt14default_deleteIS1_ELb1ELb1EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !306
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #25
  br label %_ZNSt15__uniq_ptr_dataIN4llvm14ProfileSummaryESt14default_deleteIS1_ELb1ELb1EEaSEOS4_.exit

_ZNSt15__uniq_ptr_dataIN4llvm14ProfileSummaryESt14default_deleteIS1_ELb1ELb1EEaSEOS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4llvm14ProfileSummaryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !303  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit

_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4llvm14ProfileSummaryEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm10sampleprof28SampleProfileReaderRawBinary9hasFormatERKNS_12MemoryBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !677  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !342

bb.b:                                             ; preds = %bb.d
  %1 = add i32 %.028.i4, 7
  %2 = getelementptr inbounds nuw i8, ptr %.031.i2, i64 1
  br label %.lr.ph, !llvm.loop !343

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i4 = phi i32 [ %1, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %.029.i3 = phi i64 [ %.130.i, %bb.b ], [ 0, %bb.a ]
  %.031.i2 = phi ptr [ %2, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.031.i2, align 1, !tbaa !44 ; 2 uses
  %i.e = and i8 %i.d, 127                         ; 3 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = icmp ugt i32 %.028.i4, 62
  br i1 %i.g, label %bb.c, label %bb.d, !prof !160

bb.c:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i4, 63
  %.not.i = icmp samesign ugt i8 %i.e, 1
  %i.h = icmp ne i8 %i.e, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.h
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.i = icmp ult i32 %.028.i4, 64
  %3 = zext nneg i32 %.028.i4 to i64
  %i.j = shl i64 %i.f, %3
  %i.k = select i1 %i.i, i64 %i.j, i64 0, !prof !205
  %.130.i = add i64 %i.k, %.029.i3                ; 2 uses
  %i.l = icmp slt i8 %i.d, 0
  br i1 %i.l, label %bb.b, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7, !llvm.loop !343

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7: ; preds = %bb.d
  %i.m = icmp eq i64 %.130.i, 6003388803718591231
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !343

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.c, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7, %bb.a
  %.3.i = phi i1 [ %i.m, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7 ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm10sampleprof28SampleProfileReaderExtBinary9hasFormatERKNS_12MemoryBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !677  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !342

bb.b:                                             ; preds = %bb.d
  %1 = add i32 %.028.i4, 7
  %2 = getelementptr inbounds nuw i8, ptr %.031.i2, i64 1
  br label %.lr.ph, !llvm.loop !343

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i4 = phi i32 [ %1, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %.029.i3 = phi i64 [ %.130.i, %bb.b ], [ 0, %bb.a ]
  %.031.i2 = phi ptr [ %2, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.031.i2, align 1, !tbaa !44 ; 2 uses
  %i.e = and i8 %i.d, 127                         ; 3 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = icmp ugt i32 %.028.i4, 62
  br i1 %i.g, label %bb.c, label %bb.d, !prof !160

bb.c:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i4, 63
  %.not.i = icmp samesign ugt i8 %i.e, 1
  %i.h = icmp ne i8 %i.e, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.h
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.i = icmp ult i32 %.028.i4, 64
  %3 = zext nneg i32 %.028.i4 to i64
  %i.j = shl i64 %i.f, %3
  %i.k = select i1 %i.i, i64 %i.j, i64 0, !prof !205
  %.130.i = add i64 %i.k, %.029.i3                ; 2 uses
  %i.l = icmp slt i8 %i.d, 0
  br i1 %i.l, label %bb.b, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7, !llvm.loop !343

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7: ; preds = %bb.d
  %i.m = icmp eq i64 %.130.i, 6003388803718590980
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !343

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.c, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7, %bb.a
  %.3.i = phi i1 [ %i.m, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge7 ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof22SampleProfileReaderGCC12skipNextWordEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = call noundef zeroext i1 @_ZN4llvm10GCOVBuffer7readIntERj(ptr noundef nonnull align 8 dereferenceable(52) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24
  %. = select i1 %i.c, i32 0, i32 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %., 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %i.d, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10GCOVBuffer7readIntERj(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !738
  %i.c = add i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !185
  %i.f = icmp ule i64 %i.c, %i.e                  ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !215
  %i.g = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 33
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @.str.81, i64 noundef 33) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.k, ptr noundef nonnull align 1 dereferenceable(33) @.str.81, i64 33, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.p, %bb.c ], [ %i.g, %bb.d ]
  %i.s = load i64, ptr %i.a, align 8, !tbaa !738
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.s) #24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull @.str.7, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = tail call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.ac) #24
  store i32 %i.ad, ptr %1, align 4, !tbaa !215
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.f, %bb.e, %bb.g
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof22SampleProfileReaderGCC10readStringEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::ErrorOr") align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = call noundef zeroext i1 @_ZN4llvm10GCOVBuffer10readStringERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(52) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i8 %i.d, 1
  store i8 %i.e, ptr %i.c, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24
  store i32 4, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = and i8 %i.d, -2
  store i8 %i.h, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !138
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10GCOVBuffer10readStringERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = call noundef zeroext i1 @_ZN4llvm10GCOVBuffer7readIntERj(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.d = load i32, ptr %i.b, align 4              ; 3 uses
  %i.e = icmp ne i32 %i.d, 0
  %or.cond.not = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !740
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %_ZNK4llvm9StringRef5splitEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = zext i32 %i.d to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = call { ptr, i64 } @_ZNK4llvm13DataExtractor8getBytesEPmmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j, ptr noundef nonnull %i.k) #24 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %i.n = add i64 %i.m, -1
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n)
  %i.o = extractvalue { ptr, i64 } %i.l, 0
  store ptr %i.o, ptr %1, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.speculated.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  br label %bb.d

_ZNK4llvm9StringRef5splitEc.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = shl i32 %i.d, 2
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = call { ptr, i64 } @_ZNK4llvm13DataExtractor8getBytesEPmmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef %i.r, ptr noundef nonnull %i.s) #24 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  store ptr %i.u, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.t, 1
  store i64 %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !44, !noalias !744
  %i.x = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.a, i64 1, i64 noundef 0) #24, !noalias !747
  %.sroa.5.0.copyload8 = load i64, ptr %i.v, align 8, !tbaa !39
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %.sroa.5.0.copyload8)
  %.sroa.0.0 = load ptr, ptr %2, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %1, align 8, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.speculated.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !673
  %.not.i = icmp eq ptr %i.z, null
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %.not.i, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof22SampleProfileReaderGCC10readHeaderEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm10sampleprof34SampleProfileReaderItaniumRemapper19lookUpNameInProfileENS_9StringRefE:bb.a
  %i.ac = and i32 %i.ab, %i.k                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !215
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit.thread, !prof !261

_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit: ; preds = %.lr.ph.i.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !39 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.ak, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit.thread, label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.al, align 8, !tbaa !125
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !39
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit.thread: ; preds = %bb.d, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit, %bb.a, %bb.b, %bb.c, %.critedge
  %.sink = phi i8 [ 1, %.critedge ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E6lookupERKm.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.am, align 8, !tbaa !815
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof19SampleProfileReader6createENS_9StringRefERNS_11LLVMContextERNS_3vfs10FileSystemENS0_19FSDiscriminatorPassES2_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::ErrorOr.353") align 8 captures(none) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %5, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::ErrorOr.364", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.a, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !172
  store ptr %1, ptr %8, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !44
  call fastcc void @_ZL17setupMemoryBufferRKN4llvm5TwineERNS_3vfs10FileSystemE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit, label %.critedge

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %7, align 8, !tbaa !215 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !329
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 1
  store i8 %i.i, ptr %i.g, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.31.0.copyload.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !329
  br label %bb.c

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  call void @_ZN4llvm10sampleprof19SampleProfileReader6createERSt10unique_ptrINS_12MemoryBufferESt14default_deleteIS3_EERNS_11LLVMContextERNS_3vfs10FileSystemENS0_19FSDiscriminatorPassENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::ErrorOr.353") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %5, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6)
  %.pre = load i8, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.j = phi i8 [ %i.e, %bb.b ], [ %.pre, %.critedge ]
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %7, align 8, !tbaa !76     ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #24, !inline_history !817
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17setupMemoryBufferRKN4llvm5TwineERNS_3vfs10FileSystemE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::ErrorOr.364", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !40
  %lhsc = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %lhsc, 45
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @_ZN4llvm12MemoryBuffer8getSTDINEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.364") align 8 %3) #24
  br label %bb.b

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @_ZN4llvm3vfs10FileSystem16getBufferForFileERKNS_5TwineElbbb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.364") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(34) %1, i64 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #24
  br label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.f = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !44
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit, label %bb.c

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8, !tbaa !215 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.thread14, label %.thread

.thread14:                                        ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %i.n = load i64, ptr %3, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, -2
  store i8 %i.q, ptr %i.o, align 8
  store i64 %i.n, ptr %0, align 8, !tbaa !76
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

.thread:                                          ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !329
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !215
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.31.0.copyload.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !329
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %3, align 8, !tbaa !76
  store ptr null, ptr %3, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 8
  store i64 %i.u, ptr %0, align 8, !tbaa !76
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.c, %.thread14, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof19SampleProfileReader6createERSt10unique_ptrINS_12MemoryBufferESt14default_deleteIS3_EERNS_11LLVMContextERNS_3vfs10FileSystemENS0_19FSDiscriminatorPassENS_9StringRefE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::ErrorOr.353") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::ErrorOr.364", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::ErrorOr.367", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 10 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !677  ; 5 uses
  %cond = icmp eq ptr %i.c, null
  br i1 %cond, label %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit.thread, label %.lr.ph, !prof !342

bb.b:                                             ; preds = %bb.d
  %13 = add i32 %.028.i.i122, 7
  %14 = getelementptr inbounds nuw i8, ptr %.031.i.i120, i64 1
  br label %.lr.ph, !llvm.loop !343

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i.i122 = phi i32 [ %13, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i.i121 = phi i64 [ %.130.i.i, %bb.b ], [ 0, %bb.a ]
  %.031.i.i120 = phi ptr [ %14, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.031.i.i120, align 1, !tbaa !44 ; 2 uses
  %i.e = and i8 %i.d, 127                         ; 3 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = icmp ugt i32 %.028.i.i122, 62
  br i1 %i.g, label %bb.c, label %bb.d, !prof !160

bb.c:                                             ; preds = %.lr.ph
  %.not44.i.i = icmp eq i32 %.028.i.i122, 63
  %.not.i.i = icmp samesign ugt i8 %i.e, 1
  %i.h = icmp ne i8 %i.e, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i.i, i1 %i.h
  br i1 %or.cond43.i.i, label %.lr.ph127.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.i = icmp ult i32 %.028.i.i122, 64
  %15 = zext nneg i32 %.028.i.i122 to i64
  %i.j = shl i64 %i.f, %15
  %i.k = select i1 %i.i, i64 %i.j, i64 0, !prof !205
  %.130.i.i = add i64 %i.k, %.029.i.i121          ; 2 uses
  %i.l = icmp slt i8 %i.d, 0
  br i1 %i.l, label %bb.b, label %_ZN4llvm10sampleprof28SampleProfileReaderRawBinary9hasFormatERKNS_12MemoryBufferE.exit, !llvm.loop !343

_ZN4llvm10sampleprof28SampleProfileReaderRawBinary9hasFormatERKNS_12MemoryBufferE.exit: ; preds = %bb.d
  %i.m = icmp eq i64 %.130.i.i, 6003388803718591231
  br i1 %i.m, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph127.preheader

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm10sampleprof28SampleProfileReaderRawBinary9hasFormatERKNS_12MemoryBufferE.exit
  %i.n = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #26 ; 19 uses
  %i.o = load i64, ptr %1, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.r, ptr %i.p, align 8, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %i.s, align 8, !tbaa !228
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !818
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %2, ptr %i.v, align 8, !tbaa !819
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %i.o, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  store i64 0, ptr %i.y, align 8, !tbaa !710
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i8 0, ptr %i.z, align 8, !tbaa !416
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.x, i8 0, i64 73, i1 false)
  store i32 255, ptr %i.aa, align 4, !tbaa !820
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store ptr null, ptr %i.ab, align 8, !tbaa !435
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  store i32 31, ptr %i.ac, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i8 0, ptr %i.ad, align 4, !tbaa !430
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 189
  store i8 0, ptr %i.ae, align 1, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.af, i8 0, i64 112, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvm10sampleprof28SampleProfileReaderRawBinaryE, i64 16), ptr %i.n, align 8, !tbaa !8
  br label %bb.i

.lr.ph127.preheader:                              ; preds = %_ZN4llvm10sampleprof28SampleProfileReaderRawBinary9hasFormatERKNS_12MemoryBufferE.exit, %bb.c
  br label %.lr.ph127

bb.e:                                             ; preds = %bb.g
  %16 = add i32 %.028.i.i35126, 7
  %17 = getelementptr inbounds nuw i8, ptr %.031.i.i33124, i64 1
  br label %.lr.ph127, !llvm.loop !343

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.e
  %.028.i.i35126 = phi i32 [ %16, %bb.e ], [ 0, %.lr.ph127.preheader ] ; 5 uses
  %.029.i.i34125 = phi i64 [ %.130.i.i36, %bb.e ], [ 0, %.lr.ph127.preheader ]
  %.031.i.i33124 = phi ptr [ %17, %bb.e ], [ %i.c, %.lr.ph127.preheader ] ; 2 uses
  %i.ag = load i8, ptr %.031.i.i33124, align 1, !tbaa !44 ; 2 uses
  %i.ah = and i8 %i.ag, 127                       ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i32 %.028.i.i35126, 62
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !160

bb.f:                                             ; preds = %.lr.ph127
  %.not44.i.i38 = icmp eq i32 %.028.i.i35126, 63
  %.not.i.i39 = icmp samesign ugt i8 %i.ah, 1
  %i.ak = icmp ne i8 %i.ah, 0
  %or.cond43.i.i40 = select i1 %.not44.i.i38, i1 %.not.i.i39, i1 %i.ak
  br i1 %or.cond43.i.i40, label %_ZN4llvm9StringRefC2EPKc.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph127
  %i.al = icmp ult i32 %.028.i.i35126, 64
  %18 = zext nneg i32 %.028.i.i35126 to i64
  %i.am = shl i64 %i.ai, %18
  %i.an = select i1 %i.al, i64 %i.am, i64 0, !prof !205
  %.130.i.i36 = add i64 %i.an, %.029.i.i34125     ; 2 uses
  %i.ao = icmp slt i8 %i.ag, 0
  br i1 %i.ao, label %bb.e, label %_ZN4llvm10sampleprof28SampleProfileReaderExtBinary9hasFormatERKNS_12MemoryBufferE.exit, !llvm.loop !343

_ZN4llvm10sampleprof28SampleProfileReaderExtBinary9hasFormatERKNS_12MemoryBufferE.exit: ; preds = %bb.g
  %i.ap = icmp eq i64 %.130.i.i36, 6003388803718590980
  br i1 %i.ap, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit46, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit46: ; preds = %_ZN4llvm10sampleprof28SampleProfileReaderExtBinary9hasFormatERKNS_12MemoryBufferE.exit
  %i.aq = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #26 ; 28 uses
  %i.ar = load i64, ptr %1, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store ptr %i.au, ptr %i.as, align 8, !tbaa !231
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 1, ptr %i.av, align 8, !tbaa !228
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.at, align 8, !tbaa !818
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr %2, ptr %i.ay, align 8, !tbaa !819
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store i64 %i.ar, ptr %i.az, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  store i64 0, ptr %i.bb, align 8, !tbaa !710
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  store i8 0, ptr %i.bc, align 8, !tbaa !416
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ba, i8 0, i64 73, i1 false)
  store i32 4, ptr %i.bd, align 4, !tbaa !820
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  store ptr null, ptr %i.be, align 8, !tbaa !435
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 31, ptr %i.bf, align 8, !tbaa !199
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 188
  store i8 0, ptr %i.bg, align 4, !tbaa !430
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 189
  store i8 0, ptr %i.bh, align 1, !tbaa !227
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bi, i8 0, i64 128, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 328
  store i32 0, ptr %i.bl, align 8, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 332
  store i32 4, ptr %i.bm, align 4, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 368
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 384
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 376
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 448
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.bq, align 8, !tbaa !471
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm10sampleprof28SampleProfileReaderExtBinaryE, i64 16), ptr %i.aq, align 8, !tbaa !8
  br label %bb.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvm10sampleprof28SampleProfileReaderExtBinary9hasFormatERKNS_12MemoryBufferE.exit, %bb.f
  %i.bs = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24
  %.not.i2.i = icmp eq i64 %i.bs, 8
  br i1 %.not.i2.i, label %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit, label %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit.thread

_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.bt = load i64, ptr %i.c, align 1
  %i.bu = icmp ne i64 %i.bt, 3760566344117085281
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit53, label %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit.thread

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit53: ; preds = %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit
  %i.bx = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 23 uses
  %i.by = load i64, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr null, ptr %1, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  store i64 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !231
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 1, ptr %i.cd, align 8, !tbaa !228
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cb, align 8, !tbaa !818
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %2, ptr %i.cg, align 8, !tbaa !819
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i64 %i.by, ptr %i.ch, align 8, !tbaa !76
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 160
  store i64 0, ptr %i.cj, align 8, !tbaa !710
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 168
  store i8 0, ptr %i.ck, align 8, !tbaa !416
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ci, i8 0, i64 73, i1 false)
  store i32 3, ptr %i.cl, align 4, !tbaa !820
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  store ptr null, ptr %i.cm, align 8, !tbaa !435
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 184
  store i32 31, ptr %i.cn, align 8, !tbaa !199
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 188
  store i8 0, ptr %i.co, align 4, !tbaa !430
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 189
  store i8 0, ptr %i.cp, align 1, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm10sampleprof22SampleProfileReaderGCCE, i64 16), ptr %i.bx, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 216
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.cq, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store ptr %i.bz, ptr %i.cs, align 8, !tbaa !750
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 240
  store i32 0, ptr %i.ct, align 8, !tbaa !740
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bx, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  br label %bb.i

_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit.thread: ; preds = %bb.a, %_ZN4llvm9StringRefC2EPKc.exit.i, %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit
  %i.cv = tail call noundef zeroext i1 @_ZN4llvm10sampleprof23SampleProfileReaderText9hasFormatERKNS_12MemoryBufferE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.cv, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit59, label %bb.h

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit59: ; preds = %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit.thread
  %i.cw = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #26 ; 21 uses
  %i.cx = load i64, ptr %1, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  store i64 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !231
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 1, ptr %i.db, align 8, !tbaa !228
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !818
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store ptr %2, ptr %i.de, align 8, !tbaa !819
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  store i64 %i.cx, ptr %i.df, align 8, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  store i64 0, ptr %i.dh, align 8, !tbaa !710
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 168
  store i8 0, ptr %i.di, align 8, !tbaa !416
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.dg, i8 0, i64 73, i1 false)
  store i32 1, ptr %i.dj, align 4, !tbaa !820
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 176
  store ptr null, ptr %i.dk, align 8, !tbaa !435
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 184
  store i32 31, ptr %i.dl, align 8, !tbaa !199
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 188
  store i8 0, ptr %i.dm, align 4, !tbaa !430
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 189
  store i8 0, ptr %i.dn, align 1, !tbaa !227
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm10sampleprof23SampleProfileReaderTextE, i64 16), ptr %i.cw, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 192 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 200
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !137
  store ptr %i.do, ptr %i.do, align 8, !tbaa !821
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  store i64 0, ptr %i.dq, align 8, !tbaa !822
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm10sampleprof22SampleProfileReaderGCC9hasFormatERKNS_12MemoryBufferE.exit.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8
  %i.dt = or i8 %i.ds, 1
  store i8 %i.dt, ptr %i.dr, align 8
  %i.du = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #24
  store i32 6, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.du, ptr %i.dv, align 8
  br label %_ZNSt10unique_ptrIN4llvm10sampleprof19SampleProfileReaderESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit46, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit59, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit53, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.dw = phi ptr [ getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvm10sampleprof28SampleProfileReaderRawBinaryE, i64 16), %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ], [ getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm10sampleprof28SampleProfileReaderExtBinaryE, i64 16), %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit46 ], [ getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm10sampleprof22SampleProfileReaderGCCE, i64 16), %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit53 ], [ getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm10sampleprof23SampleProfileReaderTextE, i64 16), %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit59 ]
  %.sroa.088.0 = phi ptr [ %i.n, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ], [ %i.aq, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit46 ], [ %i.bx, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit53 ], [ %i.cw, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit59 ] ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !185 ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.09.0.copyload = load ptr, ptr %5, align 8, !tbaa !125 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !823
end_hunk_3
