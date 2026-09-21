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
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !4674

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br i1 %.not28, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNK8rawspeed9TiffEntry9getStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.d = load ptr, ptr %5, align 8, !tbaa !4606   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !4607 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.c, %bb.d
  %.0710.i.i.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0710.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !4608, !noalias !4681
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
  %i.k = load i8, ptr %i.j, align 1, !tbaa !4608, !noalias !4681
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
  store ptr %i.m, ptr %4, align 8, !tbaa !4609, !alias.scope !4681
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !4607, !alias.scope !4681
  store i8 0, ptr %i.m, align 8, !tbaa !4608, !alias.scope !4681
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
  store ptr %i.s, ptr %4, align 8, !tbaa !4609, !alias.scope !4681
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !4607, !alias.scope !4681
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
  store ptr %i.y, ptr %4, align 8, !tbaa !4606, !alias.scope !4681
  store i64 %.sroa.speculated.i.i, ptr %i.s, align 8, !tbaa !4608, !alias.scope !4681
  br label %._crit_edge.i.i15.i

._crit_edge.i.i15.i:                              ; preds = %.noexc54, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.z = phi ptr [ %i.y, %.noexc54 ], [ %i.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  switch i64 %.sroa.speculated.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i15.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !4608, !noalias !4681
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !4608
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i15.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %.sroa.speculated.i.i, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i15.i
  store i64 %.sroa.speculated.i.i, ptr %i.t, align 8, !tbaa !4607, !alias.scope !4681
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
  br i1 %.not.i.i5.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i:   ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bb = add i32 %.sroa.45.0.copyload, 6         ; 2 uses
  %i.bc = icmp samesign ule i32 %i.bb, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.az ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !4608
  switch i8 %i.be, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i
  ]

.lr.ph.i.i.i.i.i.1.i.i:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i
  %.0810.i.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i, align 1, !tbaa !4608
  %i.bg = icmp eq i8 %i.bf, 73
  br i1 %i.bg, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

.lr.ph.i.i.i.i.i6.1.i.i:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i
  %.0810.i.i.i.i.i8.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i, align 1, !tbaa !4608
  %i.bi = icmp eq i8 %i.bh, 77
  br i1 %i.bi, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

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

bb.n:                                             ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke, %.invoke392
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit261:                                     ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.3, %.critedge38
  %i.bq = add nuw nsw i64 %i.ak, 6
  %.not.i.i64 = icmp samesign ugt i64 %i.bq, %i.am
  br i1 %.not.i.i64, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65:   ; preds = %.loopexit261
  %i.br = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i32 %.sroa.45.0.copyload, 6
  %i.bt = icmp samesign ule i32 %i.bs, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 11 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !4608
  %i.bw = icmp eq i8 %i.bv, 80
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i66.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.1:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65
  %.0810.i.i.i.i.i.i68.ptr.1 = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bx = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.1, align 1, !tbaa !4608
  %i.by = icmp eq i8 %i.bx, 69
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i66.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.2:                           ; preds = %.lr.ph.i.i.i.i.i.i66.1
  %.0810.i.i.i.i.i.i68.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bz = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.2, align 1, !tbaa !4608
  %i.ca = icmp eq i8 %i.bz, 78
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i66.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.3:                           ; preds = %.lr.ph.i.i.i.i.i.i66.2
  %.0810.i.i.i.i.i.i68.ptr.3 = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.cb = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.3, align 1, !tbaa !4608
  %i.cc = icmp eq i8 %i.cb, 84
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i66.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.4:                           ; preds = %.lr.ph.i.i.i.i.i.i66.3
  %.0810.i.i.i.i.i.i68.ptr.4 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cd = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.4, align 1, !tbaa !4608
  %i.ce = icmp eq i8 %i.cd, 65
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i66.5, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

.lr.ph.i.i.i.i.i.i66.5:                           ; preds = %.lr.ph.i.i.i.i.i.i66.4
  %.0810.i.i.i.i.i.i68.ptr.5 = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  %i.cf = load i8, ptr %.0810.i.i.i.i.i.i68.ptr.5, align 1, !tbaa !4608
  %i.cg = icmp eq i8 %i.cf, 88
  br i1 %i.cg, label %bb.o, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i66.5
  %i.ch = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload ; 3 uses
  %.not.i.i5.i77 = icmp samesign ult i32 %i.ch, 10
  br i1 %.not.i.i5.i77, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78: ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !4608
  switch i8 %i.cj, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i86
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i80
  ]

.lr.ph.i.i.i.i.i.1.i.i86:                         ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78
  %.0810.i.i.i.i.i.ptr.1.i.i87 = getelementptr inbounds nuw i8, ptr %i.bu, i64 9
  %i.ck = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i87, align 1, !tbaa !4608
  %i.cl = icmp eq i8 %i.ck, 73
  br i1 %i.cl, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

.lr.ph.i.i.i.i.i6.1.i.i80:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78
  %.0810.i.i.i.i.i8.ptr.1.i.i81 = getelementptr inbounds nuw i8, ptr %i.bu, i64 9
  %i.cm = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i81, align 1, !tbaa !4608
  %i.cn = icmp eq i8 %i.cm, 77
  br i1 %i.cn, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i65, %.lr.ph.i.i.i.i.i.i66.1, %.lr.ph.i.i.i.i.i.i66.2, %.lr.ph.i.i.i.i.i.i66.3, %.lr.ph.i.i.i.i.i.i66.4, %.lr.ph.i.i.i.i.i.i66.5, %.loopexit261
  %i.co = add nuw nsw i64 %i.ak, 12
  %.not.i.i91 = icmp samesign ugt i64 %i.co, %i.am
  br i1 %.not.i.i91, label %.loopexit260, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92:   ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71
  %i.cp = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i32 %.sroa.45.0.copyload, 12
  %i.cr = icmp samesign ule i32 %i.cq, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 13 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !4608
  %i.cu = icmp eq i8 %i.ct, 70
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i93.1, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.1:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92
  %.0810.i.i.i.i.i.i95.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cv = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.1, align 1, !tbaa !4608
  %i.cw = icmp eq i8 %i.cv, 85
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i93.2, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.2:                           ; preds = %.lr.ph.i.i.i.i.i.i93.1
  %.0810.i.i.i.i.i.i95.ptr.2 = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cx = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.2, align 1, !tbaa !4608
  %i.cy = icmp eq i8 %i.cx, 74
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i93.3, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.3:                           ; preds = %.lr.ph.i.i.i.i.i.i93.2
  %.0810.i.i.i.i.i.i95.ptr.3 = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.cz = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.3, align 1, !tbaa !4608
  %i.da = icmp eq i8 %i.cz, 73
  br i1 %i.da, label %.lr.ph.i.i.i.i.i.i93.4, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.4:                           ; preds = %.lr.ph.i.i.i.i.i.i93.3
  %.0810.i.i.i.i.i.i95.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.db = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.4, align 1, !tbaa !4608
  %i.dc = icmp eq i8 %i.db, 70
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i93.5, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.5:                           ; preds = %.lr.ph.i.i.i.i.i.i93.4
  %.0810.i.i.i.i.i.i95.ptr.5 = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  %i.dd = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.5, align 1, !tbaa !4608
  %i.de = icmp eq i8 %i.dd, 73
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i93.6, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.6:                           ; preds = %.lr.ph.i.i.i.i.i.i93.5
  %.0810.i.i.i.i.i.i95.ptr.6 = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  %i.df = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.6, align 1, !tbaa !4608
  %i.dg = icmp eq i8 %i.df, 76
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i93.7, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.7:                           ; preds = %.lr.ph.i.i.i.i.i.i93.6
  %.0810.i.i.i.i.i.i95.ptr.7 = getelementptr inbounds nuw i8, ptr %i.cs, i64 7
  %i.dh = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.7, align 1, !tbaa !4608
  %i.di = icmp eq i8 %i.dh, 77
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i93.8, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.8:                           ; preds = %.lr.ph.i.i.i.i.i.i93.7
  %.0810.i.i.i.i.i.i95.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dj = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.8, align 1, !tbaa !4608
  %i.dk = icmp eq i8 %i.dj, 12
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i93.9, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.9:                           ; preds = %.lr.ph.i.i.i.i.i.i93.8
  %.0810.i.i.i.i.i.i95.ptr.9 = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  %i.dl = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.9, align 1, !tbaa !4608
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i93.10, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.10:                          ; preds = %.lr.ph.i.i.i.i.i.i93.9
  %.0810.i.i.i.i.i.i95.ptr.10 = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.dn = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.10, align 1, !tbaa !4608
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i93.11, label %.loopexit260

.lr.ph.i.i.i.i.i.i93.11:                          ; preds = %.lr.ph.i.i.i.i.i.i93.10
  %.0810.i.i.i.i.i.i95.ptr.11 = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  %i.dp = load i8, ptr %.0810.i.i.i.i.i.i95.ptr.11, align 1, !tbaa !4608
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98, label %.loopexit260

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98: ; preds = %.lr.ph.i.i.i.i.i.i93.11
  %i.dr = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

.loopexit260:                                     ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i92, %.lr.ph.i.i.i.i.i.i93.1, %.lr.ph.i.i.i.i.i.i93.2, %.lr.ph.i.i.i.i.i.i93.3, %.lr.ph.i.i.i.i.i.i93.4, %.lr.ph.i.i.i.i.i.i93.5, %.lr.ph.i.i.i.i.i.i93.6, %.lr.ph.i.i.i.i.i.i93.7, %.lr.ph.i.i.i.i.i.i93.8, %.lr.ph.i.i.i.i.i.i93.9, %.lr.ph.i.i.i.i.i.i93.10, %.lr.ph.i.i.i.i.i.i93.11, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit71
  %i.ds = add nuw nsw i64 %i.ak, 7
  %.not.i.i105 = icmp samesign ugt i64 %i.ds, %i.am
  br i1 %.not.i.i105, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106:  ; preds = %.loopexit260
  %i.dt = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i32 %.sroa.45.0.copyload, 7
  %i.dv = icmp samesign ule i32 %i.du, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 14 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !4608
  switch i8 %i.dx, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145 [
    i8 78, label %.lr.ph.i.i.i.i.i.i107.1
    i8 79, label %.lr.ph.i.i.i.i.i.i140.1
  ]

.lr.ph.i.i.i.i.i.i107.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106
end_hunk_0
begin_hunk_1_@_ZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryE:bb.a
  %.0810.i.i.i.i.i.i109.ptr.6 = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  %i.ei = load i8, ptr %.0810.i.i.i.i.i.i109.ptr.6, align 1, !tbaa !4608
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit112, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit112: ; preds = %.lr.ph.i.i.i.i.i.i107.6
  %i.ek = add nuw nsw i64 %i.ak, 10
  %.not.i.i113 = icmp samesign ugt i64 %i.ek, %i.am
  br i1 %.not.i.i113, label %.invoke392, label %bb.p

bb.p:                                             ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit112
  %i.el = add nuw nsw i32 %.sroa.45.0.copyload, 10 ; 3 uses
  %i.em = icmp samesign ule i32 %i.el, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.em)
  %i.en = zext nneg i32 %i.el to i64
  %i.eo = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %i.el ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.en ; 4 uses
  %.not.i.i5.i123 = icmp samesign ult i32 %i.eo, 2
  br i1 %.not.i.i5.i123, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124: ; preds = %bb.p
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !4608
  switch i8 %i.eq, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i132
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i126
  ]

.lr.ph.i.i.i.i.i.1.i.i132:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124
  %.0810.i.i.i.i.i.ptr.1.i.i133 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i133, align 1, !tbaa !4608
  %i.es = icmp eq i8 %i.er, 73
  br i1 %i.es, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

.lr.ph.i.i.i.i.i6.1.i.i126:                       ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124
  %.0810.i.i.i.i.i8.ptr.1.i.i127 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.et = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i127, align 1, !tbaa !4608
  %i.eu = icmp eq i8 %i.et, 77
  br i1 %i.eu, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129: ; preds = %.lr.ph.i.i.i.i.i6.1.i.i126, %.lr.ph.i.i.i.i.i.1.i.i132
  %.0.i.i130 = phi i64 [ 57005, %.lr.ph.i.i.i.i.i.1.i.i132 ], [ 48879, %.lr.ph.i.i.i.i.i6.1.i.i126 ]
  %.not.i.i6.i131 = icmp samesign ult i32 %i.eo, 8
  br i1 %.not.i.i6.i131, label %.invoke392, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

.lr.ph.i.i.i.i.i.i140.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106
  %.0810.i.i.i.i.i.i142.ptr.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.ev = load i8, ptr %.0810.i.i.i.i.i.i142.ptr.1, align 1, !tbaa !4608
  %i.ew = icmp eq i8 %i.ev, 76
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.i140.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

.lr.ph.i.i.i.i.i.i140.2:                          ; preds = %.lr.ph.i.i.i.i.i.i140.1
  %.0810.i.i.i.i.i.i142.ptr.2 = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ex = load i8, ptr %.0810.i.i.i.i.i.i142.ptr.2, align 1, !tbaa !4608
  %i.ey = icmp eq i8 %i.ex, 89
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i.i140.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

.lr.ph.i.i.i.i.i.i140.3:                          ; preds = %.lr.ph.i.i.i.i.i.i140.2
  %.0810.i.i.i.i.i.i142.ptr.3 = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.ez = load i8, ptr %.0810.i.i.i.i.i.i142.ptr.3, align 1, !tbaa !4608
  %i.fa = icmp eq i8 %i.ez, 77
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i140.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

.lr.ph.i.i.i.i.i.i140.4:                          ; preds = %.lr.ph.i.i.i.i.i.i140.3
  %.0810.i.i.i.i.i.i142.ptr.4 = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.fb = load i8, ptr %.0810.i.i.i.i.i.i142.ptr.4, align 1, !tbaa !4608
  %i.fc = icmp eq i8 %i.fb, 80
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i140.5, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

.lr.ph.i.i.i.i.i.i140.5:                          ; preds = %.lr.ph.i.i.i.i.i.i140.4
  %.0810.i.i.i.i.i.i142.ptr.5 = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  %i.fd = load i8, ptr %.0810.i.i.i.i.i.i142.ptr.5, align 1, !tbaa !4608
  %i.fe = icmp eq i8 %i.fd, 85
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i140.6, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

.lr.ph.i.i.i.i.i.i140.6:                          ; preds = %.lr.ph.i.i.i.i.i.i140.5
  %.0810.i.i.i.i.i.i142.ptr.6 = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  %i.ff = load i8, ptr %.0810.i.i.i.i.i.i142.ptr.6, align 1, !tbaa !4608
  %i.fg = icmp eq i8 %i.ff, 83
  br i1 %i.fg, label %bb.q, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i140.6
  %i.fh = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload ; 2 uses
  %.not.i.i6.i154 = icmp samesign ult i32 %i.fh, 12
  br i1 %.not.i.i6.i154, label %.invoke392, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i106, %.lr.ph.i.i.i.i.i.i107.6, %.lr.ph.i.i.i.i.i.i107.5, %.lr.ph.i.i.i.i.i.i107.4, %.lr.ph.i.i.i.i.i.i107.3, %.lr.ph.i.i.i.i.i.i107.2, %.lr.ph.i.i.i.i.i.i107.1, %.lr.ph.i.i.i.i.i.i140.1, %.lr.ph.i.i.i.i.i.i140.2, %.lr.ph.i.i.i.i.i.i140.3, %.lr.ph.i.i.i.i.i.i140.4, %.lr.ph.i.i.i.i.i.i140.5, %.lr.ph.i.i.i.i.i.i140.6, %.loopexit260
  %i.fi = add nuw nsw i64 %i.ak, 5
  %.not.i.i157 = icmp samesign ugt i64 %i.fi, %i.am ; 2 uses
  br i1 %.not.i.i157, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i158

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i158:  ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145
  %i.fj = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nuw nsw i32 %.sroa.45.0.copyload, 5
  %i.fl = icmp samesign ule i32 %i.fk, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 5 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !4608
  %i.fo = icmp eq i8 %i.fn, 79
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.i160.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165

.lr.ph.i.i.i.i.i.i160.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i158
  %.0810.i.i.i.i.i.i162.ptr.1 = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fp = load i8, ptr %.0810.i.i.i.i.i.i162.ptr.1, align 1, !tbaa !4608
  %i.fq = icmp eq i8 %i.fp, 76
  br i1 %i.fq, label %.lr.ph.i.i.i.i.i.i160.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165

.lr.ph.i.i.i.i.i.i160.2:                          ; preds = %.lr.ph.i.i.i.i.i.i160.1
  %.0810.i.i.i.i.i.i162.ptr.2 = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fr = load i8, ptr %.0810.i.i.i.i.i.i162.ptr.2, align 1, !tbaa !4608
  %i.fs = icmp eq i8 %i.fr, 89
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.i160.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165

.lr.ph.i.i.i.i.i.i160.3:                          ; preds = %.lr.ph.i.i.i.i.i.i160.2
  %.0810.i.i.i.i.i.i162.ptr.3 = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.ft = load i8, ptr %.0810.i.i.i.i.i.i162.ptr.3, align 1, !tbaa !4608
  %i.fu = icmp eq i8 %i.ft, 77
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i160.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165

.lr.ph.i.i.i.i.i.i160.4:                          ; preds = %.lr.ph.i.i.i.i.i.i160.3
  %.0810.i.i.i.i.i.i162.ptr.4 = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fv = load i8, ptr %.0810.i.i.i.i.i.i162.ptr.4, align 1, !tbaa !4608
  %i.fw = icmp eq i8 %i.fv, 80
  br i1 %i.fw, label %._crit_edge.i, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165

.invoke279:                                       ; preds = %.lr.ph.i.i.i.i.i.i195.8
  %i.fx = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  br label %.invoke279.thread350

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.lr.ph.i.i.i.i.i.i169.8, %.lr.ph.i.i.i.i.i.i160.4
  %.ph.ph = phi i32 [ 8, %.lr.ph.i.i.i.i.i.i160.4 ], [ 16, %.lr.ph.i.i.i.i.i.i169.8 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.fz = icmp ule i32 %.sroa.45.0.copyload, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.fz)
  %i.ga = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.ga)
  %i.gb = sub nuw nsw i32 %.sroa.24.sroa.0.0.extract.trunc, %.sroa.45.0.copyload ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak
  %.pre11.i = zext nneg i32 %i.gb to i64
  br label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286

.invoke279.thread350:                             ; preds = %.invoke279, %.lr.ph.i.i.i.i.i.3
  %.sroa.0.1362 = phi ptr [ %i.fy, %.invoke279 ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %.sroa.45.1360 = phi i32 [ 0, %.invoke279 ], [ %.sroa.45.0.copyload, %.lr.ph.i.i.i.i.i.3 ] ; 4 uses
  %.sroa.24.sroa.0.1358 = phi i32 [ %i.fx, %.invoke279 ], [ %.sroa.24.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.i.i.3 ] ; 4 uses
  %.sroa.24.sroa.25.1357 = phi i16 [ 0, %.invoke279 ], [ %.sroa.24.sroa.25.0.extract.trunc, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %i.gd = phi i32 [ 14, %.invoke279 ], [ 20, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %i.ge = phi ptr [ @.str.13, %.invoke279 ], [ @.str.15, %.lr.ph.i.i.i.i.i.3 ] ; 4 uses
  %i.gf = add i32 %.sroa.45.1360, 12
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = add nuw nsw i64 %i.gg, 2
  %i.gi = zext nneg i32 %.sroa.24.sroa.0.1358 to i64 ; 3 uses
  %.not.i.i5.i282 = icmp samesign ugt i64 %i.gh, %i.gi
  br i1 %.not.i.i5.i282, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283: ; preds = %.invoke279.thread350
  %i.gj = add i32 %.sroa.45.1360, 14
  %i.gk = icmp samesign ule i32 %i.gj, %.sroa.24.sroa.0.1358
  call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1362, i64 %i.gg ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !4608
  switch i8 %i.gm, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke [
    i8 73, label %.lr.ph.i.i.i.i.i.1.i.i288
    i8 77, label %.lr.ph.i.i.i.i.i6.1.i.i284
  ]

.lr.ph.i.i.i.i.i.1.i.i288:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283
  %.0810.i.i.i.i.i.ptr.1.i.i289 = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %.0810.i.i.i.i.i.ptr.1.i.i289, align 1, !tbaa !4608
  %i.go = icmp eq i8 %i.gn, 73
  br i1 %i.go, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

.lr.ph.i.i.i.i.i6.1.i.i284:                       ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283
  %.0810.i.i.i.i.i8.ptr.1.i.i285 = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gp = load i8, ptr %.0810.i.i.i.i.i8.ptr.1.i.i285, align 1, !tbaa !4608
  %i.gq = icmp eq i8 %i.gp, 77
  br i1 %i.gq, label %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke: ; preds = %.invoke279.thread350, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283, %.lr.ph.i.i.i.i.i.1.i.i288, %.lr.ph.i.i.i.i.i6.1.i.i284, %.lr.ph.i.i.i.i.i6.1.i.i80, %.lr.ph.i.i.i.i.i.1.i.i86, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78, %bb.o, %.lr.ph.i.i.i.i.i6.1.i.i126, %.lr.ph.i.i.i.i.i.1.i.i132, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124, %bb.p, %.lr.ph.i.i.i.i.i6.1.i.i, %.lr.ph.i.i.i.i.i.1.i.i, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.gr = phi ptr [ @.str.3, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ @.str.3, %bb.o ], [ @.str.7, %bb.p ], [ @.str.3, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ @.str.3, %.lr.ph.i.i.i.i.i.1.i.i86 ], [ @.str.3, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i78 ], [ @.str.7, %.lr.ph.i.i.i.i.i6.1.i.i126 ], [ @.str.7, %.lr.ph.i.i.i.i.i.1.i.i132 ], [ @.str.7, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i124 ], [ @.str.3, %.lr.ph.i.i.i.i.i6.1.i.i ], [ @.str.3, %.lr.ph.i.i.i.i.i.1.i.i ], [ @.str.3, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i ], [ %i.ge, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %i.ge, %.lr.ph.i.i.i.i.i.1.i.i288 ], [ %i.ge, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i283 ], [ %i.ge, %.invoke279.thread350 ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19TiffParserExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc, ptr noundef nonnull %i.gr) #18
          to label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.cont unwind label %bb.n

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.cont: ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit11.i.i.invoke
  unreachable

_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286: ; preds = %.lr.ph.i.i.i.i.i.1.i.i288, %.lr.ph.i.i.i.i.i6.1.i.i284, %._crit_edge.i
  %.sroa.0.1363 = phi ptr [ %i.gc, %._crit_edge.i ], [ %.sroa.0.1362, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.0.1362, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %.sroa.45.1361 = phi i32 [ 0, %._crit_edge.i ], [ %.sroa.45.1360, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.45.1360, %.lr.ph.i.i.i.i.i.1.i.i288 ] ; 2 uses
  %.sroa.24.sroa.0.1359 = phi i32 [ %i.gb, %._crit_edge.i ], [ %.sroa.24.sroa.0.1358, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.24.sroa.0.1358, %.lr.ph.i.i.i.i.i.1.i.i288 ] ; 2 uses
  %.sroa.24.sroa.25.1356 = phi i16 [ 0, %._crit_edge.i ], [ %.sroa.24.sroa.25.1357, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %.sroa.24.sroa.25.1357, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %i.gs = phi i32 [ %.ph.ph, %._crit_edge.i ], [ %i.gd, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %i.gd, %.lr.ph.i.i.i.i.i.1.i.i288 ] ; 2 uses
  %.sroa.24.sroa.15.2 = phi i64 [ %.sroa.24.sroa.15.0.extract.shift, %._crit_edge.i ], [ 48879, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ 57005, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %.pre-phi.i = phi i64 [ %.pre11.i, %._crit_edge.i ], [ %i.gi, %.lr.ph.i.i.i.i.i6.1.i.i284 ], [ %i.gi, %.lr.ph.i.i.i.i.i.1.i.i288 ]
  %i.gt = zext i32 %.sroa.45.1361 to i64
  %i.gu = zext nneg i32 %i.gs to i64
  %i.gv = add nuw nsw i64 %i.gu, %i.gt
  %.not.i.i6.i287 = icmp samesign ugt i64 %i.gv, %.pre-phi.i
  br i1 %.not.i.i6.i287, label %.invoke392, label %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295"

.invoke392:                                       ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit112, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129, %bb.q, %bb.r, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
          to label %.cont393 unwind label %bb.n

.cont393:                                         ; preds = %.invoke392
  unreachable

"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295": ; preds = %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i286
  %i.gw = add nuw nsw i32 %i.gs, %.sroa.45.1361   ; 2 uses
  %i.gx = icmp samesign ule i32 %i.gw, %.sroa.24.sroa.0.1359
  call void @llvm.assume(i1 %i.gx)
  %i.gy = zext i16 %.sroa.24.sroa.25.1356 to i64
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i158, %.lr.ph.i.i.i.i.i.i160.1, %.lr.ph.i.i.i.i.i.i160.2, %.lr.ph.i.i.i.i.i.i160.3, %.lr.ph.i.i.i.i.i.i160.4, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit145
  %i.gz = add nuw nsw i64 %i.ak, 9
  %.not.i.i166 = icmp samesign ugt i64 %i.gz, %i.am ; 2 uses
  br i1 %.not.i.i166, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i167

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i167:  ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165
  %i.ha = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.ha)
  %i.hb = add nuw nsw i32 %.sroa.45.0.copyload, 9
  %i.hc = icmp samesign ule i32 %i.hb, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 9 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !4608
  %i.hf = icmp eq i8 %i.he, 79
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i.i169.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i167
  %.0810.i.i.i.i.i.i171.ptr.1 = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hg = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.1, align 1, !tbaa !4608
  %i.hh = icmp eq i8 %i.hg, 77
  br i1 %i.hh, label %.lr.ph.i.i.i.i.i.i169.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.2:                          ; preds = %.lr.ph.i.i.i.i.i.i169.1
  %.0810.i.i.i.i.i.i171.ptr.2 = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hi = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.2, align 1, !tbaa !4608
  %i.hj = icmp eq i8 %i.hi, 32
  br i1 %i.hj, label %.lr.ph.i.i.i.i.i.i169.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.3:                          ; preds = %.lr.ph.i.i.i.i.i.i169.2
  %.0810.i.i.i.i.i.i171.ptr.3 = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %i.hk = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.3, align 1, !tbaa !4608
  %i.hl = icmp eq i8 %i.hk, 83
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i.i169.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.4:                          ; preds = %.lr.ph.i.i.i.i.i.i169.3
  %.0810.i.i.i.i.i.i171.ptr.4 = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hm = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.4, align 1, !tbaa !4608
  %i.hn = icmp eq i8 %i.hm, 89
  br i1 %i.hn, label %.lr.ph.i.i.i.i.i.i169.5, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.5:                          ; preds = %.lr.ph.i.i.i.i.i.i169.4
  %.0810.i.i.i.i.i.i171.ptr.5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 5
  %i.ho = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.5, align 1, !tbaa !4608
  %i.hp = icmp eq i8 %i.ho, 83
  br i1 %i.hp, label %.lr.ph.i.i.i.i.i.i169.6, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.6:                          ; preds = %.lr.ph.i.i.i.i.i.i169.5
  %.0810.i.i.i.i.i.i171.ptr.6 = getelementptr inbounds nuw i8, ptr %i.hd, i64 6
  %i.hq = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.6, align 1, !tbaa !4608
  %i.hr = icmp eq i8 %i.hq, 84
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i.i169.7, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.7:                          ; preds = %.lr.ph.i.i.i.i.i.i169.6
  %.0810.i.i.i.i.i.i171.ptr.7 = getelementptr inbounds nuw i8, ptr %i.hd, i64 7
  %i.hs = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.7, align 1, !tbaa !4608
  %i.ht = icmp eq i8 %i.hs, 69
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i.i169.8, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

.lr.ph.i.i.i.i.i.i169.8:                          ; preds = %.lr.ph.i.i.i.i.i.i169.7
  %.0810.i.i.i.i.i.i171.ptr.8 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hu = load i8, ptr %.0810.i.i.i.i.i.i171.ptr.8, align 1, !tbaa !4608
  %i.hv = icmp eq i8 %i.hu, 77
  br i1 %i.hv, label %._crit_edge.i, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i167, %.lr.ph.i.i.i.i.i.i169.1, %.lr.ph.i.i.i.i.i.i169.2, %.lr.ph.i.i.i.i.i.i169.3, %.lr.ph.i.i.i.i.i.i169.4, %.lr.ph.i.i.i.i.i.i169.5, %.lr.ph.i.i.i.i.i.i169.6, %.lr.ph.i.i.i.i.i.i169.7, %.lr.ph.i.i.i.i.i.i169.8, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit165
  br i1 %.not.i.i157, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i176

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i176:  ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174
  %i.hw = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.hw)
  %i.hx = add nuw nsw i32 %.sroa.45.0.copyload, 5
  %i.hy = icmp samesign ule i32 %i.hx, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 5 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !4608
  %i.ib = icmp eq i8 %i.ia, 69
  br i1 %i.ib, label %.lr.ph.i.i.i.i.i.i178.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183

.lr.ph.i.i.i.i.i.i178.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i176
  %.0810.i.i.i.i.i.i180.ptr.1 = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.ic = load i8, ptr %.0810.i.i.i.i.i.i180.ptr.1, align 1, !tbaa !4608
  %i.id = icmp eq i8 %i.ic, 80
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i178.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183

.lr.ph.i.i.i.i.i.i178.2:                          ; preds = %.lr.ph.i.i.i.i.i.i178.1
  %.0810.i.i.i.i.i.i180.ptr.2 = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.ie = load i8, ptr %.0810.i.i.i.i.i.i180.ptr.2, align 1, !tbaa !4608
  %i.if = icmp eq i8 %i.ie, 83
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i178.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183

.lr.ph.i.i.i.i.i.i178.3:                          ; preds = %.lr.ph.i.i.i.i.i.i178.2
  %.0810.i.i.i.i.i.i180.ptr.3 = getelementptr inbounds nuw i8, ptr %i.hz, i64 3
  %i.ig = load i8, ptr %.0810.i.i.i.i.i.i180.ptr.3, align 1, !tbaa !4608
  %i.ih = icmp eq i8 %i.ig, 79
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i.i178.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183

.lr.ph.i.i.i.i.i.i178.4:                          ; preds = %.lr.ph.i.i.i.i.i.i178.3
  %.0810.i.i.i.i.i.i180.ptr.4 = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ii = load i8, ptr %.0810.i.i.i.i.i.i180.ptr.4, align 1, !tbaa !4608
  %i.ij = icmp eq i8 %i.ii, 78
  br i1 %i.ij, label %bb.r, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i178.4
  %i.ik = add nuw nsw i64 %i.ak, 8
  %.not.i.i6.i189 = icmp samesign ugt i64 %i.ik, %i.am
  br i1 %.not.i.i6.i189, label %.invoke392, label %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191"

"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191": ; preds = %bb.r
  %i.il = add nuw nsw i32 %.sroa.45.0.copyload, 8 ; 2 uses
  %i.im = icmp samesign ule i32 %i.il, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.im)
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i176, %.lr.ph.i.i.i.i.i.i178.1, %.lr.ph.i.i.i.i.i.i178.2, %.lr.ph.i.i.i.i.i.i178.3, %.lr.ph.i.i.i.i.i.i178.4, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit174
  br i1 %.not.i.i166, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193:  ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183
  %i.in = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.in)
  %i.io = add nuw nsw i32 %.sroa.45.0.copyload, 9
  %i.ip = icmp samesign ule i32 %i.io, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 9 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !4608
  %i.is = icmp eq i8 %i.ir, 65
  br i1 %i.is, label %.lr.ph.i.i.i.i.i.i195.1, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.1:                          ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193
  %.0810.i.i.i.i.i.i197.ptr.1 = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.it = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.1, align 1, !tbaa !4608
  %i.iu = icmp eq i8 %i.it, 112
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i.i195.2, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.2:                          ; preds = %.lr.ph.i.i.i.i.i.i195.1
  %.0810.i.i.i.i.i.i197.ptr.2 = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.iv = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.2, align 1, !tbaa !4608
  %i.iw = icmp eq i8 %i.iv, 112
  br i1 %i.iw, label %.lr.ph.i.i.i.i.i.i195.3, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.3:                          ; preds = %.lr.ph.i.i.i.i.i.i195.2
  %.0810.i.i.i.i.i.i197.ptr.3 = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.ix = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.3, align 1, !tbaa !4608
  %i.iy = icmp eq i8 %i.ix, 108
  br i1 %i.iy, label %.lr.ph.i.i.i.i.i.i195.4, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.4:                          ; preds = %.lr.ph.i.i.i.i.i.i195.3
  %.0810.i.i.i.i.i.i197.ptr.4 = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iz = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.4, align 1, !tbaa !4608
  %i.ja = icmp eq i8 %i.iz, 101
  br i1 %i.ja, label %.lr.ph.i.i.i.i.i.i195.5, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.5:                          ; preds = %.lr.ph.i.i.i.i.i.i195.4
  %.0810.i.i.i.i.i.i197.ptr.5 = getelementptr inbounds nuw i8, ptr %i.iq, i64 5
  %i.jb = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.5, align 1, !tbaa !4608
  %i.jc = icmp eq i8 %i.jb, 32
  br i1 %i.jc, label %.lr.ph.i.i.i.i.i.i195.6, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.6:                          ; preds = %.lr.ph.i.i.i.i.i.i195.5
  %.0810.i.i.i.i.i.i197.ptr.6 = getelementptr inbounds nuw i8, ptr %i.iq, i64 6
  %i.jd = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.6, align 1, !tbaa !4608
  %i.je = icmp eq i8 %i.jd, 105
  br i1 %i.je, label %.lr.ph.i.i.i.i.i.i195.7, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.7:                          ; preds = %.lr.ph.i.i.i.i.i.i195.6
  %.0810.i.i.i.i.i.i197.ptr.7 = getelementptr inbounds nuw i8, ptr %i.iq, i64 7
  %i.jf = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.7, align 1, !tbaa !4608
  %i.jg = icmp eq i8 %i.jf, 79
  br i1 %i.jg, label %.lr.ph.i.i.i.i.i.i195.8, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

.lr.ph.i.i.i.i.i.i195.8:                          ; preds = %.lr.ph.i.i.i.i.i.i195.7
  %.0810.i.i.i.i.i.i197.ptr.8 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jh = load i8, ptr %.0810.i.i.i.i.i.i197.ptr.8, align 1, !tbaa !4608
  %i.ji = icmp eq i8 %i.jh, 83
  br i1 %i.ji, label %.invoke279, label %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200

_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i193, %.lr.ph.i.i.i.i.i.i195.1, %.lr.ph.i.i.i.i.i.i195.2, %.lr.ph.i.i.i.i.i.i195.3, %.lr.ph.i.i.i.i.i.i195.4, %.lr.ph.i.i.i.i.i.i195.5, %.lr.ph.i.i.i.i.i.i195.6, %.lr.ph.i.i.i.i.i.i195.7, %.lr.ph.i.i.i.i.i.i195.8, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit183
  %i.jj = add i32 %.sroa.45.0.copyload, 6
  %i.jk = zext i32 %i.jj to i64                   ; 2 uses
  %i.jl = add nuw nsw i64 %i.jk, 4
  %.not.i201 = icmp samesign ugt i64 %i.jl, %i.am
  br i1 %.not.i201, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i:       ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200
  %i.jm = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.jm)
  %i.jn = add i32 %.sroa.45.0.copyload, 10
  %i.jo = icmp samesign ule i32 %i.jn, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.jk ; 4 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !4608
  %i.jr = icmp eq i8 %i.jq, 69
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.1, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i
  %.0810.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  %i.js = load i8, ptr %.0810.i.i.i.i.i.ptr.1, align 1, !tbaa !4608
  %i.jt = icmp eq i8 %i.js, 120
  br i1 %i.jt, label %.lr.ph.i.i.i.i.i.2, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %.0810.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.ju = load i8, ptr %.0810.i.i.i.i.i.ptr.2, align 1, !tbaa !4608
  %i.jv = icmp eq i8 %i.ju, 105
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i.3, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %.0810.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.jp, i64 3
  %i.jw = load i8, ptr %.0810.i.i.i.i.i.ptr.3, align 1, !tbaa !4608
  %i.jx = icmp eq i8 %i.jw, 102
  br i1 %i.jx, label %.invoke279.thread350, label %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit

_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit: ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit200
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !4607
  %i.ka = icmp eq i64 %i.jz, 7
  br i1 %i.ka, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.kb = load ptr, ptr %4, align 8, !tbaa !4606  ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 1
  %i.kd = xor i32 %i.kc, 1397571923
  %i.ke = getelementptr i8, ptr %i.kb, i64 3
  %i.kf = load i32, ptr %i.ke, align 1
  %i.kg = xor i32 %i.kf, 1196315987
  %i.kh = or i32 %i.kd, %i.kg
  %i.ki = icmp ne i32 %i.kh, 0
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %._crit_edge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364: ; preds = %_ZNK8rawspeed10ByteStream12hasPatternAtESt17basic_string_viewIcSt11char_traitsIcEEj.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kl = add nuw nsw i64 %i.ak, 2
  %.not.i.i.i = icmp samesign ugt i64 %i.kl, %i.am
  br i1 %.not.i.i.i, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread, label %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202

_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364
  %i.km = icmp sgt i32 %.sroa.24.sroa.0.0.extract.trunc, -1
  call void @llvm.assume(i1 %i.km)
  %i.kn = add i32 %.sroa.45.0.copyload, 2         ; 3 uses
  %i.ko = icmp samesign ule i32 %i.kn, %.sroa.24.sroa.0.0.extract.trunc
  call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ak ; 3 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !4608
  switch i8 %i.kq, label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread [
    i8 73, label %.lr.ph.i.i.i.i.i.i.i.1
    i8 77, label %.lr.ph.i.i.i.i.i.i.i206.1
  ]

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202
  %.0810.i.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.kr = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.1, align 1, !tbaa !4608
  %i.ks = icmp eq i8 %i.kr, 73                    ; 2 uses
  %spec.select = select i1 %i.ks, i64 57005, i64 %.sroa.24.sroa.15.0.extract.shift
  %spec.select365.a = select i1 %i.ks, i32 %i.kn, i32 %.sroa.45.0.copyload
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

.lr.ph.i.i.i.i.i.i.i206.1:                        ; preds = %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202
  %.0810.i.i.i.i.i.i.i208.ptr.1 = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.kt = load i8, ptr %.0810.i.i.i.i.i.i.i208.ptr.1, align 1, !tbaa !4608
  %i.ku = icmp eq i8 %i.kt, 77                    ; 2 uses
  %spec.select366 = select i1 %i.ku, i64 48879, i64 %.sroa.24.sroa.15.0.extract.shift
  %spec.select367 = select i1 %i.ku, i32 %i.kn, i32 %.sroa.45.0.copyload
  br label %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread

_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread: ; preds = %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98, %.lr.ph.i.i.i.i.i.i.i206.1, %.lr.ph.i.i.i.i.i.i.i.1, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202, %bb.q, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129, %.lr.ph.i.i.i.i.i6.1.i.i80, %.lr.ph.i.i.i.i.i.1.i.i86, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191"
  %.sroa.24.sroa.25.0 = phi i64 [ %i.gy, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.24.sroa.25.0.extract.shift, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364 ], [ 0, %bb.q ], [ %.sroa.24.sroa.25.0.extract.shift, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.sroa.24.sroa.25.0.extract.shift, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.24.sroa.25.0.extract.shift, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.24.sroa.25.0.extract.shift, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ 0, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ 0, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ 0, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.sroa.24.sroa.25.0.extract.shift, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ 0, %.lr.ph.i.i.i.i.i.1.i.i86 ]
  %.sroa.24.sroa.15.0 = phi i64 [ %.sroa.24.sroa.15.2, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.24.sroa.15.0.extract.shift, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364 ], [ %.sroa.24.sroa.15.0.extract.shift, %bb.q ], [ %spec.select, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %spec.select366, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.24.sroa.15.0.extract.shift, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.24.sroa.15.0.extract.shift, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ 57005, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ %.0.i.i130, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ 48879, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.0.i.i58, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ 57005, %.lr.ph.i.i.i.i.i.1.i.i86 ]
  %.sroa.24.sroa.0.0 = phi i32 [ %.sroa.24.sroa.0.1359, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.24.sroa.0.0.extract.trunc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364 ], [ %i.fh, %bb.q ], [ %.sroa.24.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.sroa.24.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.24.sroa.0.0.extract.trunc, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.24.sroa.0.0.extract.trunc, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ %i.dr, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ %i.eo, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ %i.ch, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.sroa.24.sroa.0.0.extract.trunc, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.1.i.i86 ] ; 3 uses
  %.sroa.45.0 = phi i32 [ %i.gw, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.45.0.copyload, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364 ], [ 12, %bb.q ], [ %spec.select365.a, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %spec.select367, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.45.0.copyload, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %i.il, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ 12, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ 8, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ 10, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %i.bb, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ 10, %.lr.ph.i.i.i.i.i.1.i.i86 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1363, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit295" ], [ %.sroa.0.0.copyload, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread364 ], [ %i.dw, %bb.q ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i206.1 ], [ %.sroa.0.0.copyload, %_ZNK8rawspeed6Buffer10getSubViewEjj.exit.i.i.i202 ], [ %.sroa.0.0.copyload, %"_ZZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryEENK3$_0clEbjjPKc.exit191" ], [ %i.cs, %_ZNK8rawspeed10ByteStream9hasPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit98 ], [ %i.ep, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i129 ], [ %i.bu, %.lr.ph.i.i.i.i.i6.1.i.i80 ], [ %.sroa.0.0.copyload, %_ZN8rawspeed16getTiffByteOrderENS_10ByteStreamEjPKc.exit.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.1.i.i86 ] ; 2 uses
  %i.kv = icmp uge i32 %.sroa.24.sroa.0.0, %.sroa.45.0
  call void @llvm.assume(i1 %i.kv)
  %i.kw = icmp sgt i32 %.sroa.24.sroa.0.0, -1
  call void @llvm.assume(i1 %i.kw)
  %i.kx = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27
          to label %.noexc214 unwind label %bb.u, !inline_history !4677 ; 6 uses

.noexc214:                                        ; preds = %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread
  %.sroa.24.sroa.25.0.insert.shift = shl nuw i64 %.sroa.24.sroa.25.0, 48
  %.sroa.24.sroa.15.0.insert.ext = shl nuw i64 %.sroa.24.sroa.15.0, 32
  %.sroa.24.sroa.15.0.insert.shift = and i64 %.sroa.24.sroa.15.0.insert.ext, 281470681743360
  %.sroa.24.sroa.15.0.insert.insert = or disjoint i64 %.sroa.24.sroa.15.0.insert.shift, %.sroa.24.sroa.25.0.insert.shift
  %.sroa.24.sroa.0.0.insert.ext = zext nneg i32 %.sroa.24.sroa.0.0 to i64
  %.sroa.24.sroa.0.0.insert.insert = or disjoint i64 %.sroa.24.sroa.15.0.insert.insert, %.sroa.24.sroa.0.0.insert.ext ; 2 uses
  invoke void @_ZN8rawspeed7TiffIFDC2EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(120) %i.kx, ptr noundef nonnull %1, ptr noundef %2, ptr %.sroa.0.0, i64 %.sroa.24.sroa.0.0.insert.insert, i32 noundef %.sroa.45.0)
          to label %bb.t unwind label %bb.s, !inline_history !4678

bb.s:                                             ; preds = %.noexc214
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef 120) #28, !noalias !4682, !inline_history !4677
  br label %.body

bb.t:                                             ; preds = %.noexc214
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed11TiffRootIFDE, i64 16), ptr %i.kx, align 8, !tbaa !188, !noalias !4682
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 104
  store ptr %.sroa.0.0, ptr %i.kz, align 8, !noalias !4682
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 112
  store i64 %.sroa.24.sroa.0.0.insert.insert, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !4682
  store ptr %i.kx, ptr %0, align 8, !tbaa !196
  %i.la = load ptr, ptr %4, align 8, !tbaa !4606  ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.t
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !4608
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.u:                                             ; preds = %_ZN8rawspeed10ByteStream10skipPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit212.thread
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.s, %bb.n
  %.pn31 = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.lf, %bb.u ], [ %i.ky, %bb.s ] ; 2 uses
  %i.lg = load ptr, ptr %4, align 8, !tbaa !4606  ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %.critedge40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %.body
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !4608
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #28
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
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(104) %i.k) #29, !call_target !210, !inline_history !4683
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
