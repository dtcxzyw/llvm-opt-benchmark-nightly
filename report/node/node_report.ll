inline.NumInlined: 2885
inline.NumDeleted: 980
begin_hunk_0_@_ZN4node10JSONWriter13json_keyvalueIA7_cA8_cEEvRKT_RKT0_:bb.a
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4node10JSONWriter7advanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.d, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4node10JSONWriter14write_new_lineEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZN4node10JSONWriter14write_new_lineEv.exit

_ZN4node10JSONWriter14write_new_lineEv.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i8, ptr %i.r, align 8, !range !26
  %i.ad = trunc nuw i8 %.pre to i1
  br i1 %i.ad, label %_ZN4node10JSONWriter7advanceEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4node10JSONWriter14write_new_lineEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN4node10JSONWriter7advanceEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4
  %.02.i = phi i32 [ %i.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4 ], [ 0, %.preheader.i ]
  %i.ah = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %.not.i.i3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.c, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext 32) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ar = load i32, ptr %i.ae, align 4
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZN4node10JSONWriter7advanceEv.exit, !llvm.loop !237

_ZN4node10JSONWriter7advanceEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4, %bb.e, %_ZN4node10JSONWriter14write_new_lineEv.exit, %.preheader.i
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.at, ptr nonnull %1)
  %i.au = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %.not.i5 = icmp eq i64 %i.ba, 0
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.b, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.l:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext 58) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4node10JSONWriter15write_one_spaceEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7
  %i.bf = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %.not.i.i8 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

bb.o:                                             ; preds = %bb.m
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i8 noundef signext 32) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4node10JSONWriter15write_one_spaceEv.exit

_ZN4node10JSONWriter15write_one_spaceEv.exit:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.bo, ptr nonnull %2)
  store i32 1, ptr %i.f, align 8
  ret void
}

declare void @uv_free_interface_addresses(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #5

declare ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #13

declare ptr @_ZN4node20GetCurrentStackTraceEPN2v87IsolateEi(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK2v810StackTrace13GetFrameCountEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN2v813RegisterStateC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare void @_ZN2v87Isolate14GetStackSampleERKNS_13RegisterStateEPPvmPNS_10SampleInfoE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_ZNK2v810StackTrace8GetFrameEPNS_7IsolateEj(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @_ZNK2v810StackFrame15GetFunctionNameEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef, ptr) unnamed_addr #5

declare ptr @_ZNK2v810StackFrame13GetScriptNameEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNS_9Utf8ValueES2_RKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #17 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJS2_RKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #34
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v813RegisterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #13

declare i64 @_ZNK2v810StackFrame11GetLocationEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJS2_RKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNS_9Utf8ValueEJS2_RKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %22 = ptrtoint ptr %i.c to i64
  %23 = ptrtoint ptr %2 to i64
  %24 = sub i64 %22, %23                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %24)
  store i64 %.sroa.speculated.i, ptr %10, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.e = add i64 %24, 1                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.082 = phi i64 [ %i.g, %.critedge2 ], [ %24, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !247

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %24, %bb.b ], [ %.082, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !248
  %i.n = load ptr, ptr %9, align 8, !noalias !248
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !248
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.q, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJS2_RKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.u = load ptr, ptr %13, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.z = load ptr, ptr %12, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa113 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !251
  %i.ae = load ptr, ptr %9, align 8, !noalias !251
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !251
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ah = icmp ugt i64 %.lcssa113, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %.lcssa113, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa113
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa113
  call void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJS2_RKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(1048) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %i.ak = load ptr, ptr %15, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ap = load ptr, ptr %14, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i64, ptr %3, align 8
  store i64 %i.aw, ptr %16, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %3, align 8
  store i64 %i.bb, ptr %17, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i64, ptr %3, align 8
  store i64 %i.bg, ptr %18, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bf, ptr %i.bh, align 8
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %3, align 8
  store i64 %i.bl, ptr %20, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.bk, ptr %i.bm, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %20)
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %19) ; 0 uses
  %i.bo = load ptr, ptr %19, align 8              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.j
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_:bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.e, ptr %i.a, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.o, align 1
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.c, ptr %i.e, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 8
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.k = phi ptr [ %i.j, %.thread7.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.c, i1 false)
  br label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.m, align 1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %i.k, %bb.h ], [ %i.e, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.c
  store i8 0, ptr %i.o, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4node7ToUpperEc.exit
  %.013 = phi i64 [ %i.ae, %_ZN4node7ToUpperEc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01012 = phi ptr [ %i.ad, %_ZN4node7ToUpperEc.exit ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.01012, align 1
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #26
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #26, !inline_history !257
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8
  %i.n = select i1 %i.k, i64 15, i64 %i.m
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.a, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.h, ptr %i.d, align 8
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1
  ret ptr %0
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJRKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNS_9Utf8ValueEJRKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.e = add i64 %23, 1                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.079 = phi i64 [ %i.g, %.critedge2 ], [ %23, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !259

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.079, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !260
  %i.n = load ptr, ptr %8, align 8, !noalias !260
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !260
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.q, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJRKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa110 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !263
  %i.ae = load ptr, ptr %8, align 8, !noalias !263
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !263
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ah = icmp ugt i64 %.lcssa110, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %.lcssa110, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa110
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa110
  call void @_ZN4node11SPrintFImplIRNS_9Utf8ValueEJRKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i64, ptr %3, align 8
  store i64 %i.aw, ptr %15, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %3, align 8
  store i64 %i.bb, ptr %16, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i64, ptr %3, align 8
  store i64 %i.bg, ptr %17, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bf, ptr %i.bh, align 8
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %3, align 8
  store i64 %i.bl, ptr %19, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bk, ptr %i.bm, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bo = load ptr, ptr %18, align 8              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.j
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNS_9Utf8ValueEJRKiS4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args_0) #26
  call void @abort() #27
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.bt = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %1
  br i1 %i.bu, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.bt, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55: ; preds = %bb.l
  %i.bv = sub nuw i64 %1, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  call void @_ZN4node11SPrintFImplIRKiJS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 %i.bv, ptr %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !266
  %i.bz = load ptr, ptr %8, align 8, !noalias !266
  %i.ca = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.bz, i64 noundef %i.by), !noalias !266 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cb, ptr %0, align 8, !alias.scope !266
  %i.cc = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 5 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i64 %i.ci, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  store ptr %i.cc, ptr %0, align 8, !alias.scope !266
  %i.cj = load i64, ptr %i.cd, align 8
  store i64 %i.cj, ptr %i.cb, align 8, !alias.scope !266
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.ck = phi i64 [ %i.cg, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ck, ptr %i.cm, align 8, !alias.scope !266
  store ptr %i.cd, ptr %i.ca, align 8
  store i64 0, ptr %i.cl, align 8
  store i8 0, ptr %i.cd, align 8
  %i.cn = load ptr, ptr %20, align 8              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cs = load ptr, ptr %8, align 8               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.o
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKiJS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKiJS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.e = add i64 %22, 1                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !269

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !270
  %i.n = load ptr, ptr %7, align 8, !noalias !270
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !270
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.q, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKiJS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !273
  %i.ae = load ptr, ptr %7, align 8, !noalias !273
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !273
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %.lcssa123, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRKiJS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
end_hunk_1
begin_hunk_2_@_ZN4node12ToBaseStringILj4EiEEDaRKT0_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.b = load i32, ptr %1, align 4, !noalias !283
  %i.c = sext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !283
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 0, ptr %i.d, align 1, !noalias !283
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = and i64 %.0.i, 15
  %i.f = getelementptr inbounds nuw i8, ptr @.str.109, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !283
  %i.h = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !noalias !283
  %i.i = lshr i64 %.0.i, 4                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !286

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !283
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26, !noalias !283 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !283
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !283
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !283
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !283
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !283
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.c, ptr %i.e, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 8
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.k = phi ptr [ %i.j, %.thread7.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.c, i1 false)
  br label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.m, align 1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %i.k, %bb.h ], [ %i.e, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.c
  store i8 0, ptr %i.o, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4node7ToUpperEc.exit
  %.013 = phi i64 [ %i.ae, %_ZN4node7ToUpperEc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.06.012 = phi ptr [ %i.ad, %_ZN4node7ToUpperEc.exit ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.sroa.06.012, align 1
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #26
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #26, !inline_history !257
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %i.af = icmp eq ptr %i.ad, %i.d
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !287

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.e = add i64 %21, 1                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !288

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !289
  %i.n = load ptr, ptr %6, align 8, !noalias !289
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !289
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %i.q, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !292
  %i.ae = load ptr, ptr %6, align 8, !noalias !292
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !292
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i64 noundef %.lcssa120, i64 noundef %1) #27
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #34
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
end_hunk_2
begin_hunk_3_@_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_:bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !295
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %18, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cw = load ptr, ptr %6, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 false) ; 5 uses
  %i.c = icmp ult i32 %i.b, 10
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.02230.i.i = phi i32 [ %i.j, %bb.g ], [ %i.b, %bb.a ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.k, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.d = icmp ult i32 %.02230.i.i, 100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i32 %.02230.i.i, 10000
  %i.k = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.l = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !301

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.k, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %i.a, 31                   ; 2 uses
  %i.m = add i32 %.0.i.i, %.lobit.i               ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !298
  %i.p = icmp ugt i32 %i.m, 15
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.q = add nuw nsw i64 %i.n, 1
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !alias.scope !298
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !298
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.m, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.o, align 8, !alias.scope !298
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.r, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 45, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.s, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.u, align 8, !alias.scope !298
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.v, align 1
  %i.w = zext nneg i32 %.lobit.i to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !298
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 4 uses
  %i.z = icmp ugt i32 %i.b, 99
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.aa = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ad, %.lr.ph.i11.i ], [ %i.b, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ao, %.lr.ph.i11.i ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ab = urem i32 %.020.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !298
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.af, align 2, !noalias !298
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !302

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ad, %.lr.ph.i11.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !noalias !298
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = load i8, ptr %i.at, align 2, !noalias !298
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ay = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.az, %bb.m ], [ %i.ax, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.y, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #26 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.j

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.h = icmp ugt i64 %1, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %._crit_edge.i.i.i.i.thread42, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

._crit_edge.i.i.i.i.thread42:                     ; preds = %bb.f
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #28 ; 2 uses
  store ptr %i.l, ptr %0, align 8
  store i64 %1, ptr %i.f, align 8
  br label %bb.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %2, align 1
  store i8 %i.m, ptr %i.f, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.thread42, %._crit_edge.i.i.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i.i.i.thread42 ], [ %i.f, %._crit_edge.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %bb.h, %bb.i
  %i.o = phi ptr [ %i.a, %._crit_edge.i.i.i.i.thread ], [ %i.n, %bb.i ], [ %i.f, %bb.h ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %1
  store i8 0, ptr %i.q, align 1
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.r = add nuw i64 %i.e, 1                      ; 7 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %bb.l, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %bb.n, label %bb.m, !prof !64

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args_0) #26
  tail call void @abort() #27
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.w, ptr %3, align 8
  %i.x = icmp ugt i64 %i.e, 14
  br i1 %i.x, label %bb.o, label %._crit_edge.i.i.i.i10

bb.o:                                             ; preds = %bb.n
  %i.y = icmp slt i64 %i.r, 0
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = add nuw i64 %i.e, 2                      ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11: ; preds = %bb.q
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  store i64 %i.r, ptr %i.w, align 8
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, %bb.n
  %i.ac = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11 ], [ %i.w, %bb.n ] ; 3 uses
  %cond31 = icmp eq ptr %i.b, %2
  br i1 %cond31, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i10
  %i.ad = load i8, ptr %2, align 1
  store i8 %i.ad, ptr %i.ac, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12

bb.t:                                             ; preds = %._crit_edge.i.i.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12: ; preds = %bb.s, %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.r
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ag = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.ah = sub nuw i64 %1, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.ah, ptr nonnull %i.ai)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.aj = load ptr, ptr %4, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #19

declare noundef zeroext i1 @_ZNK2v85Value8IsSymbolEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZNK2v85Value14ToDetailStringENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value8IsObjectEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZNK2v85Value8ToStringENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #5

declare ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #5

declare ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2v812api_internal12ToLocalEmptyEv() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswspace(i32 noundef) local_unnamed_addr #13

declare noundef ptr @_ZN2v87Isolate10GetCurrentEv() local_unnamed_addr #5

declare ptr @_ZN2v86Object19GetOwnPropertyNamesENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #5

declare noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

end_hunk_3
