Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TiffIFD?download=true
inline.NumInlined: 930
inline.NumDeleted: 496
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8rawspeed7TiffIFD3addESt10unique_ptrIS0_St14default_deleteIS0_EE:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !201
  store i64 %i.e, ptr %i.b, align 8, !tbaa !201
  store ptr null, ptr %1, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !199
  br label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.13") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.026263 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.a = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %.026263, i16 noundef zeroext 271) #32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.026263, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4603 ; 2 uses
  %.not = icmp ne ptr %i.c, null
  %.not28 = icmp eq ptr %i.a, null                ; 2 uses
  %or.cond = and i1 %.not28, %.not
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !4670

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br i1 %.not28, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNK8rawspeed9TiffEntry9getStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.d = load ptr, ptr %5, align 8, !tbaa !4606   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !4607 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4677)
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.c, %bb.d
  %.0710.i.i.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0710.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !4608, !noalias !4677
  switch i8 %i.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.i = add nuw i64 %.0710.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.i, %i.f
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !144

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.0.i.i.i = phi i64 [ -1, %bb.d ], [ %.0710.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ] ; 6 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i: ; preds = %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %i.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ] ; 2 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !4608, !noalias !4677
  switch i8 %i.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i, !llvm.loop !145

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12.i
  %i.l = icmp eq i64 %.0.i.i.i, -1
  br i1 %i.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i, label %bb.f

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i: ; preds = %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !4609, !alias.scope !4677
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !4607, !alias.scope !4677
  store i8 0, ptr %i.m, align 8, !tbaa !4608, !alias.scope !4677
  br label %.critedge41

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  %i.o = icmp ugt i64 %.0.i.i.i, %i.f
  br i1 %i.o, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i64 noundef %.0.i.i.i, i64 noundef %i.f) #30
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.f
  %i.p = sub i64 %.1.i.i.in.i, %.0.i.i.i
  %i.q = sub nuw i64 %i.f, %.0.i.i.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.p) ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !4609, !alias.scope !4677
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !4607, !alias.scope !4677
  %i.u = icmp ugt i64 %.sroa.speculated.i.i, 15
  br i1 %i.u, label %bb.h, label %._crit_edge.i.i15.i

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.v = icmp slt i64 %.sroa.speculated.i.i, 0
  br i1 %i.v, label %.noexc.i17.i, label %bb.i

.noexc.i17.i:                                     ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
          to label %.noexc52 unwind label %bb.m

.noexc52:                                         ; preds = %.noexc.i17.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = add nuw i64 %.sroa.speculated.i.i, 1     ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc4.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i, !prof !4610

.noexc4.i.i:                                      ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc53 unwind label %bb.m

.noexc53:                                         ; preds = %.noexc4.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i: ; preds = %bb.i
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27
          to label %.noexc54 unwind label %bb.m   ; 2 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i
  store ptr %i.y, ptr %4, align 8, !tbaa !4606, !alias.scope !4677
  store i64 %.sroa.speculated.i.i, ptr %i.s, align 8, !tbaa !4608, !alias.scope !4677
  br label %._crit_edge.i.i15.i

._crit_edge.i.i15.i:                              ; preds = %.noexc54, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.z = phi ptr [ %i.y, %.noexc54 ], [ %i.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  switch i64 %.sroa.speculated.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i15.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !4608, !noalias !4677
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !4608
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i15.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %.sroa.speculated.i.i, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i15.i
  store i64 %.sroa.speculated.i.i, ptr %i.t, align 8, !tbaa !4607, !alias.scope !4677
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.ab, align 1, !tbaa !4608
  %.pre = load ptr, ptr %5, align 8, !tbaa !4606
  br label %.critedge41

._crit_edge.i.i:                                  ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !4609
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !4607
  store i8 0, ptr %i.ac, align 8, !tbaa !4608
  br label %.critedge38

.critedge41:                                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i, %bb.l
  %i.ae = phi ptr [ %i.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i ], [ %.pre, %bb.l ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge41
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !4608
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.critedge38

.critedge38:                                      ; preds = %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.aj, align 8 ; 21 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8 ; 4 uses
  %.sroa.24.sroa.0.0.extract.trunc = trunc i64 %.sroa.24.0.copyload to i32 ; 38 uses
  %.sroa.24.sroa.15.0.extract.shift = lshr i64 %.sroa.24.0.copyload, 32 ; 7 uses
  %.sroa.24.sroa.25.0.extract.shift = lshr i64 %.sroa.24.0.copyload, 48 ; 7 uses
  %.sroa.24.sroa.25.0.extract.trunc = trunc nuw i64 %.sroa.24.sroa.25.0.extract.shift to i16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 8 ; 26 uses
  %i.ak = zext i32 %.sroa.45.0.copyload to i64    ; 21 uses
  %i.al = add nuw nsw i64 %i.ak, 4
  %i.am = and i64 %.sroa.24.0.copyload, 4294967295 ; 12 uses
  %.not.i.i = icmp samesign ugt i64 %i.al, %i.am
  br i1 %.not.i.i, label %.loopexit261, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i:     ; preds = %.critedge38
  %i.an = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i32 %.sroa.45.0.copyload, 4         ; 2 uses
  %i.ap = icmp samesign ule i32 %i.ao, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !4608
  %i.as = icmp eq i8 %i.ar, 65
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.1, label %.loopexit261

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i
  %.0810.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %.0810.i.i.i.i.i.i.ptr.1, align 1, !tbaa !4608
  %i.au = icmp eq i8 %i.at, 79
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.2, label %.loopexit261

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %.0810.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.av = load i8, ptr %.0810.i.i.i.i.i.i.ptr.2, align 1, !tbaa !4608
  %i.aw = icmp eq i8 %i.av, 67
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.3, label %.loopexit261

.lr.ph.i.i.i.i.i.i.3:                             ; preds = %.lr.ph.i.i.i.i.i.i.2
  %.0810.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.ax = load i8, ptr %.0810.i.i.i.i.i.i.ptr.3, align 1, !tbaa !4608
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.loopexit261

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.3
  %i.az = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 2
  %.not.i.i5.i = icmp samesign ugt i64 %i.ba, %i.am
  br i1 %.not.i.i5.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i:   ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bb = add i32 %.sroa.45.0.copyload, 6         ; 2 uses
  %i.bc = icmp samesign ule i32 %i.bb, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.az ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !4608
  switch i8 %i.be, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394 [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i
  ]

.lr.ph.i.i.i.i.i.1.i.i:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i
  %.0810.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i, align 1, !tbaa !4608
  %i.bg = icmp eq i8 %i.bf, 73
  br i1 %i.bg, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394

.lr.ph.i.i.i.i.i6.1.i.i:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i
  %.0810.i.i.i.i.i8.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i, align 1, !tbaa !4608
  %i.bi = icmp eq i8 %i.bh, 77
  br i1 %i.bi, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394

_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i: ; preds = %.lr.ph.i.i.i.i.i6.1.i.i, %.lr.ph.i.i.i.i.i.1.i.i
  %.0.i.i58 = phi i64 [ 57005, %.lr.ph.i.i.i.i.i.1.i.i ], [ 48879, %.lr.ph.i.i.i.i.i6.1.i.i ]
  %6 = add nuw nsw i64 %i.ak, 6
  %.not.i.i6.i = icmp samesign ugt i64 %6, %i.am
  br i1 %.not.i.i6.i, label %.invoke392, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

bb.m:                                             ; preds = %bb.g, %.noexc.i17.i, %.noexc4.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %5, align 8, !tbaa !4606  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.m
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !4608
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.critedge40

.loopexit261:                                     ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.3, %.critedge38
  %i.bp = add nuw nsw i64 %i.ak, 6
  %.not.i.i64 = icmp samesign ugt i64 %i.bp, %i.am
  br i1 %.not.i.i64, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65:   ; preds = %.loopexit261
  %i.bq = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i32 %.sroa.45.0.copyload, 6
  %i.bs = icmp samesign ule i32 %i.br, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 11 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !4608
  %i.bv = icmp eq i8 %i.bu, 80
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i66.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.1:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65
  %.0810.i.i.i.i.i.i68.ptr.1 = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bw = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.1, align 1, !tbaa !4608
  %i.bx = icmp eq i8 %i.bw, 69
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i66.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.2:                           ; preds = %.lr.ph.i.i.i.i.i.i66.1
  %.0810.i.i.i.i.i.i68.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.by = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.2, align 1, !tbaa !4608
  %i.bz = icmp eq i8 %i.by, 78
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i66.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.3:                           ; preds = %.lr.ph.i.i.i.i.i.i66.2
  %.0810.i.i.i.i.i.i68.ptr.3 = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.ca = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.3, align 1, !tbaa !4608
  %i.cb = icmp eq i8 %i.ca, 84
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i66.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.4:                           ; preds = %.lr.ph.i.i.i.i.i.i66.3
  %.0810.i.i.i.i.i.i68.ptr.4 = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cc = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.4, align 1, !tbaa !4608
  %i.cd = icmp eq i8 %i.cc, 65
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i66.5, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.5:                           ; preds = %.lr.ph.i.i.i.i.i.i66.4
  %.0810.i.i.i.i.i.i68.ptr.5 = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  %i.ce = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.5, align 1, !tbaa !4608
  %i.cf = icmp eq i8 %i.ce, 88
  br i1 %i.cf, label %bb.n, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i66.5
  %i.cg = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload ; 3 uses
  %.not.i.i5.i77 = icmp samesign ult i32 %i.cg, 10
  br i1 %.not.i.i5.i77, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78: ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !4608
  switch i8 %i.ci, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394 [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i86
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i80
  ]

.lr.ph.i.i.i.i.i.1.i.i86:                         ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78
  %.0810.i.i.i.i.i.ptr.1.i.i87 = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %i.cj = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i87, align 1, !tbaa !4608
  %i.ck = icmp eq i8 %i.cj, 73
  br i1 %i.ck, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394

.lr.ph.i.i.i.i.i6.1.i.i80:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78
  %.0810.i.i.i.i.i8.ptr.1.i.i81 = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %i.cl = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i81, align 1, !tbaa !4608
  %i.cm = icmp eq i8 %i.cl, 77
  br i1 %i.cm, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65, %.lr.ph.i.i.i.i.i.i66.1, %.lr.ph.i.i.i.i.i.i66.2, %.lr.ph.i.i.i.i.i.i66.3, %.lr.ph.i.i.i.i.i.i66.4, %.lr.ph.i.i.i.i.i.i66.5, %.loopexit261
  %i.cn = add nuw nsw i64 %i.ak, 12
  %.not.i.i91 = icmp samesign ugt i64 %i.cn, %i.am
  br i1 %.not.i.i91, label %.loopexit260, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92:   ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71
  %i.co = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i32 %.sroa.45.0.copyload, 12
  %i.cq = icmp samesign ule i32 %i.cp, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 13 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !4608
  %i.ct = icmp eq i8 %i.cs, 70
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i93.1, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.1:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92
  %.0810.i.i.i.i.i.i95.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cu = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.1, align 1, !tbaa !4608
  %i.cv = icmp eq i8 %i.cu, 85
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i93.2, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.2:                           ; preds = %.lr.ph.i.i.i.i.i.i93.1
  %.0810.i.i.i.i.i.i95.ptr.2 = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.cw = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.2, align 1, !tbaa !4608
  %i.cx = icmp eq i8 %i.cw, 74
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i93.3, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.3:                           ; preds = %.lr.ph.i.i.i.i.i.i93.2
  %.0810.i.i.i.i.i.i95.ptr.3 = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.cy = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.3, align 1, !tbaa !4608
  %i.cz = icmp eq i8 %i.cy, 73
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i93.4, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.4:                           ; preds = %.lr.ph.i.i.i.i.i.i93.3
  %.0810.i.i.i.i.i.i95.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.da = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.4, align 1, !tbaa !4608
  %i.db = icmp eq i8 %i.da, 70
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i93.5, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.5:                           ; preds = %.lr.ph.i.i.i.i.i.i93.4
  %.0810.i.i.i.i.i.i95.ptr.5 = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  %i.dc = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.5, align 1, !tbaa !4608
  %i.dd = icmp eq i8 %i.dc, 73
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i93.6, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.6:                           ; preds = %.lr.ph.i.i.i.i.i.i93.5
  %.0810.i.i.i.i.i.i95.ptr.6 = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.de = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.6, align 1, !tbaa !4608
  %i.df = icmp eq i8 %i.de, 76
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i93.7, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.7:                           ; preds = %.lr.ph.i.i.i.i.i.i93.6
  %.0810.i.i.i.i.i.i95.ptr.7 = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  %i.dg = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.7, align 1, !tbaa !4608
  %i.dh = icmp eq i8 %i.dg, 77
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i93.8, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.8:                           ; preds = %.lr.ph.i.i.i.i.i.i93.7
  %.0810.i.i.i.i.i.i95.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.di = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.8, align 1, !tbaa !4608
  %i.dj = icmp eq i8 %i.di, 12
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i93.9, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.9:                           ; preds = %.lr.ph.i.i.i.i.i.i93.8
  %.0810.i.i.i.i.i.i95.ptr.9 = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.dk = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.9, align 1, !tbaa !4608
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i93.10, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.10:                          ; preds = %.lr.ph.i.i.i.i.i.i93.9
  %.0810.i.i.i.i.i.i95.ptr.10 = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  %i.dm = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.10, align 1, !tbaa !4608
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i93.11, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.11:                          ; preds = %.lr.ph.i.i.i.i.i.i93.10
  %.0810.i.i.i.i.i.i95.ptr.11 = getelementptr inbounds nuw i8, ptr %i.cr, i64 11
  %i.do = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.11, align 1, !tbaa !4608
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98, label %.loopexit260

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98: ; preds = %.lr.ph.i.i.i.i.i.i93.11
  %i.dq = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

.loopexit260:                                     ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92, %.lr.ph.i.i.i.i.i.i93.1, %.lr.ph.i.i.i.i.i.i93.2, %.lr.ph.i.i.i.i.i.i93.3, %.lr.ph.i.i.i.i.i.i93.4, %.lr.ph.i.i.i.i.i.i93.5, %.lr.ph.i.i.i.i.i.i93.6, %.lr.ph.i.i.i.i.i.i93.7, %.lr.ph.i.i.i.i.i.i93.8, %.lr.ph.i.i.i.i.i.i93.9, %.lr.ph.i.i.i.i.i.i93.10, %.lr.ph.i.i.i.i.i.i93.11, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71
  %i.dr = add nuw nsw i64 %i.ak, 7
  %.not.i.i105 = icmp samesign ugt i64 %i.dr, %i.am
  br i1 %.not.i.i105, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106:  ; preds = %.loopexit260
  %i.ds = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add nuw nsw i32 %.sroa.45.0.copyload, 7
  %i.du = icmp samesign ule i32 %i.dt, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 14 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !4608
  switch i8 %i.dw, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145 [
    i8 78, label %.lr.ph.i.i.i.i.i.i107.1
    i8 79, label %.lr.ph.i.i.i.i.i.i140.1
  ]

.lr.ph.i.i.i.i.i.i107.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106
  %.0810.i.i.i.i.i.i109.ptr.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %.0810.i.i.i.i.i.i109.ptr.1, align 1, !tbaa !4608
  %i.dy = icmp eq i8 %i.dx, 105
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i107.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

end_hunk_0
begin_hunk_1_@_ZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryE:bb.a
  br i1 %.not.i.i6.i189, label %.invoke392, label %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191"

"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191": ; preds = %bb.q
  %i.hi = add nuw nsw i32 %.sroa.45.0.copyload, 8 ; 2 uses
  %i.hj = icmp samesign ule i32 %i.hi, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.hj)
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i176, %.lr.ph.i.i.i.i.i.i178.1, %.lr.ph.i.i.i.i.i.i178.2, %.lr.ph.i.i.i.i.i.i178.3, %.lr.ph.i.i.i.i.i.i178.4, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174
  br i1 %.not.i.i166, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193:  ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183
  %i.hk = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.hk)
  %i.hl = add nuw nsw i32 %.sroa.45.0.copyload, 9
  %i.hm = icmp samesign ule i32 %i.hl, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 9 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !4608
  %i.hp = icmp eq i8 %i.ho, 65
  br i1 %i.hp, label %.lr.ph.i.i.i.i.i.i195.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193
  %.0810.i.i.i.i.i.i197.ptr.1 = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hq = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.1, align 1, !tbaa !4608
  %i.hr = icmp eq i8 %i.hq, 112
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i.i195.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.2:                          ; preds = %.lr.ph.i.i.i.i.i.i195.1
  %.0810.i.i.i.i.i.i197.ptr.2 = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hs = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.2, align 1, !tbaa !4608
  %i.ht = icmp eq i8 %i.hs, 112
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i.i195.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.3:                          ; preds = %.lr.ph.i.i.i.i.i.i195.2
  %.0810.i.i.i.i.i.i197.ptr.3 = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  %i.hu = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.3, align 1, !tbaa !4608
  %i.hv = icmp eq i8 %i.hu, 108
  br i1 %i.hv, label %.lr.ph.i.i.i.i.i.i195.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.4:                          ; preds = %.lr.ph.i.i.i.i.i.i195.3
  %.0810.i.i.i.i.i.i197.ptr.4 = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hw = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.4, align 1, !tbaa !4608
  %i.hx = icmp eq i8 %i.hw, 101
  br i1 %i.hx, label %.lr.ph.i.i.i.i.i.i195.5, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.5:                          ; preds = %.lr.ph.i.i.i.i.i.i195.4
  %.0810.i.i.i.i.i.i197.ptr.5 = getelementptr inbounds nuw i8, ptr %i.hn, i64 5
  %i.hy = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.5, align 1, !tbaa !4608
  %i.hz = icmp eq i8 %i.hy, 32
  br i1 %i.hz, label %.lr.ph.i.i.i.i.i.i195.6, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.6:                          ; preds = %.lr.ph.i.i.i.i.i.i195.5
  %.0810.i.i.i.i.i.i197.ptr.6 = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  %i.ia = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.6, align 1, !tbaa !4608
  %i.ib = icmp eq i8 %i.ia, 105
  br i1 %i.ib, label %.lr.ph.i.i.i.i.i.i195.7, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.7:                          ; preds = %.lr.ph.i.i.i.i.i.i195.6
  %.0810.i.i.i.i.i.i197.ptr.7 = getelementptr inbounds nuw i8, ptr %i.hn, i64 7
  %i.ic = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.7, align 1, !tbaa !4608
  %i.id = icmp eq i8 %i.ic, 79
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i195.8, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.8:                          ; preds = %.lr.ph.i.i.i.i.i.i195.7
  %.0810.i.i.i.i.i.i197.ptr.8 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ie = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.8, align 1, !tbaa !4608
  %i.if = icmp eq i8 %i.ie, 83
  br i1 %i.if, label %.invoke, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193, %.lr.ph.i.i.i.i.i.i195.1, %.lr.ph.i.i.i.i.i.i195.2, %.lr.ph.i.i.i.i.i.i195.3, %.lr.ph.i.i.i.i.i.i195.4, %.lr.ph.i.i.i.i.i.i195.5, %.lr.ph.i.i.i.i.i.i195.6, %.lr.ph.i.i.i.i.i.i195.7, %.lr.ph.i.i.i.i.i.i195.8, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183
  %i.ig = add i32 %.sroa.45.0.copyload, 6
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = add nuw nsw i64 %i.ih, 4
  %.not.i201 = icmp samesign ugt i64 %i.ii, %i.am
  br i1 %.not.i201, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i:       ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200
  %i.ij = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.ij)
  %i.ik = add i32 %.sroa.45.0.copyload, 10
  %i.il = icmp samesign ule i32 %i.ik, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.il)
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ih ; 4 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !4608
  %i.io = icmp eq i8 %i.in, 69
  br i1 %i.io, label %.lr.ph.i.i.i.i.i.1, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i
  %.0810.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.ip = load i8, ptr %.0810.i.i.i.i.i.ptr.1, align 1, !tbaa !4608
  %i.iq = icmp eq i8 %i.ip, 120
  br i1 %i.iq, label %.lr.ph.i.i.i.i.i.2, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %.0810.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.ir = load i8, ptr %.0810.i.i.i.i.i.ptr.2, align 1, !tbaa !4608
  %i.is = icmp eq i8 %i.ir, 105
  br i1 %i.is, label %.lr.ph.i.i.i.i.i.3, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %.0810.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %i.it = load i8, ptr %.0810.i.i.i.i.i.ptr.3, align 1, !tbaa !4608
  %i.iu = icmp eq i8 %i.it, 102
  br i1 %i.iu, label %.invoke.thread351, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !4607
  %i.ix = icmp eq i64 %i.iw, 7
  br i1 %i.ix, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.iy = load ptr, ptr %4, align 8, !tbaa !4606  ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 1
  %i.ja = xor i32 %i.iz, 1397571923
  %i.jb = getelementptr i8, ptr %i.iy, i64 3
  %i.jc = load i32, ptr %i.jb, align 1
  %i.jd = xor i32 %i.jc, 1196315987
  %i.je = or i32 %i.ja, %i.jd
  %i.jf = icmp ne i32 %i.je, 0
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %._crit_edge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348

.invoke:                                          ; preds = %.lr.ph.i.i.i.i.i.i195.8
  %i.ji = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  br label %.invoke.thread351

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.lr.ph.i.i.i.i.i.i160.4, %.lr.ph.i.i.i.i.i.i169.8
  %.ph.ph = phi i32 [ 16, %.lr.ph.i.i.i.i.i.i169.8 ], [ 8, %.lr.ph.i.i.i.i.i.i160.4 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.jk = icmp ule i32 %.sroa.45.0.copyload, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.jk)
  %i.jl = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %.pre11.i = zext nneg i32 %i.jm to i64
  br label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286

.invoke.thread351:                                ; preds = %.invoke, %.lr.ph.i.i.i.i.i.3
  %.sroa.0.1363 = phi ptr [ %i.jj, %.invoke ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %.sroa.45.1361 = phi i32 [ 0, %.invoke ], [ %.sroa.45.0.copyload, %.lr.ph.i.i.i.i.i.3 ] ; 4 uses
  %.sroa.24.sroa.0.1359 = phi i32 [ %i.ji, %.invoke ], [ %.sroa.24.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.i.i.3 ] ; 4 uses
  %.sroa.24.sroa.25.1358 = phi i16 [ 0, %.invoke ], [ %.sroa.24.sroa.25.0.extract.trunc, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %i.jo = phi i32 [ 14, %.invoke ], [ 20, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %i.jp = phi ptr [ @.str.13, %.invoke ], [ @.str.15, %.lr.ph.i.i.i.i.i.3 ] ; 4 uses
  %i.jq = add i32 %.sroa.45.1361, 12
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  %i.js = add nuw nsw i64 %i.jr, 2
  %i.jt = zext nneg i32 %.sroa.24.sroa.0.1359 to i64 ; 3 uses
  %.not.i.i5.i282 = icmp samesign ugt i64 %i.js, %i.jt
  br i1 %.not.i.i5.i282, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283: ; preds = %.invoke.thread351
  %i.ju = add i32 %.sroa.45.1361, 14
  %i.jv = icmp samesign ule i32 %i.ju, %.sroa.24.sroa.0.1359
  call void @llvm.assume(i1 %i.jv)
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.1363, i64 %i.jr ; 3 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !4608
  switch i8 %i.jx, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394 [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i288
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i284
  ]

.lr.ph.i.i.i.i.i.1.i.i288:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283
  %.0810.i.i.i.i.i.ptr.1.i.i289 = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.jy = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i289, align 1, !tbaa !4608
  %i.jz = icmp eq i8 %i.jy, 73
  br i1 %i.jz, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394

.lr.ph.i.i.i.i.i6.1.i.i284:                       ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283
  %.0810.i.i.i.i.i8.ptr.1.i.i285 = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.ka = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i285, align 1, !tbaa !4608
  %i.kb = icmp eq i8 %i.ka, 77
  br i1 %i.kb, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394: ; preds = %.invoke.thread351, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283, %.lr.ph.i.i.i.i.i.1.i.i288, %.lr.ph.i.i.i.i.i6.1.i.i284, %.lr.ph.i.i.i.i.i6.1.i.i, %.lr.ph.i.i.i.i.i.1.i.i, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.lr.ph.i.i.i.i.i6.1.i.i80, %.lr.ph.i.i.i.i.i.1.i.i86, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78, %bb.n, %.lr.ph.i.i.i.i.i6.1.i.i126, %.lr.ph.i.i.i.i.i.1.i.i132, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124, %bb.o
  %i.kc = phi ptr [ @.str.7, %bb.o ], [ @.str.3, %bb.n ], [ @.str.3, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ @.str.3, %.lr.ph.i.i.i.i.i6.1.i.i ], [ @.str.3, %.lr.ph.i.i.i.i.i.1.i.i ], [ @.str.3, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i ], [ @.str.3, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ @.str.3, %.lr.ph.i.i.i.i.i.1.i.i86 ], [ @.str.3, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78 ], [ @.str.7, %.lr.ph.i.i.i.i.i6.1.i.i126 ], [ @.str.7, %.lr.ph.i.i.i.i.i.1.i.i132 ], [ @.str.7, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124 ], [ %i.jp, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %i.jp, %.lr.ph.i.i.i.i.i.1.i.i288 ], [ %i.jp, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283 ], [ %i.jp, %.invoke.thread351 ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc, ptr noundef nonnull %i.kc) #18
          to label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.cont395 unwind label %bb.t

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.cont395: ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394
  unreachable

_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286: ; preds = %.lr.ph.i.i.i.i.i.1.i.i288, %.lr.ph.i.i.i.i.i6.1.i.i284, %._crit_edge.i
  %.sroa.0.1364 = phi ptr [ %i.jn, %._crit_edge.i ], [ %.sroa.0.1363, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.0.1363, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %.sroa.45.1362 = phi i32 [ 0, %._crit_edge.i ], [ %.sroa.45.1361, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.45.1361, %.lr.ph.i.i.i.i.i.1.i.i288 ] ; 2 uses
  %.sroa.24.sroa.0.1360 = phi i32 [ %i.jm, %._crit_edge.i ], [ %.sroa.24.sroa.0.1359, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.24.sroa.0.1359, %.lr.ph.i.i.i.i.i.1.i.i288 ] ; 2 uses
  %.sroa.24.sroa.25.1357 = phi i16 [ 0, %._crit_edge.i ], [ %.sroa.24.sroa.25.1358, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.24.sroa.25.1358, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %i.kd = phi i32 [ %.ph.ph, %._crit_edge.i ], [ %i.jo, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %i.jo, %.lr.ph.i.i.i.i.i.1.i.i288 ] ; 2 uses
  %.sroa.24.sroa.15.2 = phi i64 [ %.sroa.24.sroa.15.0.extract.shift, %._crit_edge.i ], [ 48879, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ 57005, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %.pre-phi.i = phi i64 [ %.pre11.i, %._crit_edge.i ], [ %i.jt, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %i.jt, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %i.ke = zext i32 %.sroa.45.1362 to i64
  %i.kf = zext nneg i32 %i.kd to i64
  %i.kg = add nuw nsw i64 %i.kf, %i.ke
  %.not.i.i6.i287 = icmp samesign ugt i64 %i.kg, %.pre-phi.i
  br i1 %.not.i.i6.i287, label %.invoke392, label %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295"

.invoke392:                                       ; preds = %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit112, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129, %bb.p, %bb.q
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
          to label %.cont393 unwind label %bb.t

.cont393:                                         ; preds = %.invoke392
  unreachable

"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295": ; preds = %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286
  %i.kh = add nuw nsw i32 %i.kd, %.sroa.45.1362   ; 2 uses
  %i.ki = icmp samesign ule i32 %i.kh, %.sroa.24.sroa.0.1360
  call void @llvm.assume(i1 %i.ki)
  %i.kj = zext i16 %.sroa.24.sroa.25.1357 to i64
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348: ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kk = add nuw nsw i64 %i.ak, 2
  %.not.i.i.i = icmp samesign ugt i64 %i.kk, %i.am
  br i1 %.not.i.i.i, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348
  %i.kl = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.kl)
  %i.km = add i32 %.sroa.45.0.copyload, 2         ; 3 uses
  %i.kn = icmp samesign ule i32 %i.km, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 3 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !4608
  switch i8 %i.kp, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread [
    i8 73, label %.lr.ph.i.i.i.i.i.i.i.1
    i8 77, label %.lr.ph.i.i.i.i.i.i.i206.1
  ]

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202
  %.0810.i.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.kq = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.1, align 1, !tbaa !4608
  %i.kr = icmp eq i8 %i.kq, 73                    ; 2 uses
  %spec.select = select i1 %i.kr, i64 57005, i64 %.sroa.24.sroa.15.0.extract.shift
  %spec.select365.a = select i1 %i.kr, i32 %i.km, i32 %.sroa.45.0.copyload
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

.lr.ph.i.i.i.i.i.i.i206.1:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202
  %.0810.i.i.i.i.i.i.i208.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.ks = load i8, ptr %.0810.i.i.i.i.i.i.i208.ptr.1, align 1, !tbaa !4608
  %i.kt = icmp eq i8 %i.ks, 77                    ; 2 uses
  %spec.select366 = select i1 %i.kt, i64 48879, i64 %.sroa.24.sroa.15.0.extract.shift
  %spec.select367 = select i1 %i.kt, i32 %i.km, i32 %.sroa.45.0.copyload
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread: ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98, %.lr.ph.i.i.i.i.i.i.i206.1, %.lr.ph.i.i.i.i.i.i.i.1, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202, %bb.p, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129, %.lr.ph.i.i.i.i.i6.1.i.i80, %.lr.ph.i.i.i.i.i.1.i.i86, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191"
  %.sroa.24.sroa.25.0 = phi i64 [ %i.kj, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.24.sroa.25.0.extract.shift, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348 ], [ 0, %bb.p ], [ %.sroa.24.sroa.25.0.extract.shift, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.sroa.24.sroa.25.0.extract.shift, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.24.sroa.25.0.extract.shift, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.24.sroa.25.0.extract.shift, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ 0, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ 0, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ 0, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.sroa.24.sroa.25.0.extract.shift, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ 0, %.lr.ph.i.i.i.i.i.1.i.i86 ]
  %.sroa.24.sroa.15.0 = phi i64 [ %.sroa.24.sroa.15.2, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.24.sroa.15.0.extract.shift, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348 ], [ %.sroa.24.sroa.15.0.extract.shift, %bb.p ], [ %spec.select, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %spec.select366, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.24.sroa.15.0.extract.shift, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.24.sroa.15.0.extract.shift, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ 57005, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ %.0.i.i130, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ 48879, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.0.i.i58, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ 57005, %.lr.ph.i.i.i.i.i.1.i.i86 ]
  %.sroa.24.sroa.0.0 = phi i32 [ %.sroa.24.sroa.0.1360, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.24.sroa.0.0.extract.trunc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348 ], [ %i.fg, %bb.p ], [ %.sroa.24.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.sroa.24.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.24.sroa.0.0.extract.trunc, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.24.sroa.0.0.extract.trunc, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ %i.dq, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ %i.en, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ %i.cg, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.sroa.24.sroa.0.0.extract.trunc, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.1.i.i86 ] ; 3 uses
  %.sroa.45.0 = phi i32 [ %i.kh, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.45.0.copyload, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348 ], [ 12, %bb.p ], [ %spec.select365.a, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %spec.select367, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.45.0.copyload, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %i.hi, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ 12, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ 8, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ 10, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %i.bb, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ 10, %.lr.ph.i.i.i.i.i.1.i.i86 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1364, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.0.0.copyload, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread348 ], [ %i.dv, %bb.p ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.0.0.copyload, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.0.0.copyload, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ %i.cr, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ %i.eo, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ %i.bt, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.sroa.0.0.copyload, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.1.i.i86 ] ; 2 uses
  %i.ku = icmp uge i32 %.sroa.24.sroa.0.0, %.sroa.45.0
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp sgt i32 %.sroa.24.sroa.0.0, -1
  call void @llvm.assume(i1 %i.kv)
  %i.kw = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27
          to label %.noexc214 unwind label %bb.t, !inline_history !4673 ; 6 uses

.noexc214:                                        ; preds = %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread
  %.sroa.24.sroa.25.0.insert.shift = shl nuw i64 %.sroa.24.sroa.25.0, 48
  %.sroa.24.sroa.15.0.insert.ext = shl nuw i64 %.sroa.24.sroa.15.0, 32
  %.sroa.24.sroa.15.0.insert.shift = and i64 %.sroa.24.sroa.15.0.insert.ext, 281470681743360
  %.sroa.24.sroa.15.0.insert.insert = or disjoint i64 %.sroa.24.sroa.15.0.insert.shift, %.sroa.24.sroa.25.0.insert.shift
  %.sroa.24.sroa.0.0.insert.ext = zext nneg i32 %.sroa.24.sroa.0.0 to i64
  %.sroa.24.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24.sroa.15.0.insert.insert, %.sroa.24.sroa.0.0.insert.ext ; 2 uses
  invoke void @_ZN8rawspeed7TiffIFDC2EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(120) %i.kw, ptr noundef nonnull %1, ptr noundef %2, ptr %.sroa.0.0, i64 %.sroa.24.sroa.0.0.insert.insert, i32 noundef %.sroa.45.0)
          to label %bb.s unwind label %bb.r, !inline_history !4674

bb.r:                                             ; preds = %.noexc214
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef 120) #28, !noalias !4678, !inline_history !4673
  br label %.body

bb.s:                                             ; preds = %.noexc214
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed11TiffRootIFDE, i64 16), ptr %i.kw, align 8, !tbaa !188, !noalias !4678
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 104
  store ptr %.sroa.0.0, ptr %i.ky, align 8, !noalias !4678
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kw, i64 112
  store i64 %.sroa.24.sroa.0.0.insert.insert, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !4678
  store ptr %i.kw, ptr %0, align 8, !tbaa !196
  %i.kz = load ptr, ptr %4, align 8, !tbaa !4606  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.s
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !4608
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.t:                                             ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke394, %.invoke392, %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.r
  %.pn31 = phi { ptr, i32 } [ %i.kx, %bb.r ], [ %i.le, %bb.t ] ; 2 uses
  %i.lf = load ptr, ptr %4, align 8, !tbaa !4606  ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %.critedge40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %.body
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !4608
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #28
  br label %.critedge40

.critedge40:                                      ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn31, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn31.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.a, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i unwind label %bb.c, !inline_history !4611

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31, !inline_history !4611
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !202  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !199  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !188
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(104) %i.k) #29, !call_target !210, !inline_history !4679
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.h, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !200
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28, !inline_history !4611
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #28
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit, %bb.a
  ret void
}

declare noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed7TiffIFDC2EPS0_(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 12), (16, 56), (64, 68), (72, 80)) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %0, align 8, !tbaa !188
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !4612
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !4603
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !4613
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.e, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !4614
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.g, align 8, !tbaa !4615
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.h, align 8, !tbaa !4616
  invoke void @_ZNK8rawspeed7TiffIFD23recursivelyCheckSubIFDsEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !4603 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN8rawspeed7TiffIFD31recursivelyIncrementSubIFDCountEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4617
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !4617
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.08.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4618
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !4618
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4603 ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %_ZN8rawspeed7TiffIFD31recursivelyIncrementSubIFDCountEv.exit, label %bb.d, !llvm.loop !147

_ZN8rawspeed7TiffIFD31recursivelyIncrementSubIFDCountEv.exit: ; preds = %bb.d, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.s) #29
  tail call void @_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #29
end_hunk_1
