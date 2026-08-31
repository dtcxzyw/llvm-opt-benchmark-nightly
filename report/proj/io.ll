Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pj_ctx:bb.a
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.p ], [ %i.al, %bb.q ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.r, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !71

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.u

bb.s:                                             ; preds = %bb.e, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.ar = extractvalue { ptr, i32 } %i.an, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #41 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t, %bb.a, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, %bb.c
  invoke fastcc void @_ZN5osgeo4proj2ioL19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEbP6pj_ctxb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false, ptr noundef %2, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 8 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !68
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #41, !inline_history !73
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #41, !inline_history !73
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i14 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i14, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bj, label %bb.ab, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.ac:                                            ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.s
  %.merged = phi { ptr, i32 } [ %i.bl, %bb.ad ], [ %i.bk, %bb.ac ], [ %i.an, %bb.s ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.merged
}

declare noundef ptr @_ZN6pj_ctx15get_cpp_contextEv(ptr noundef nonnull align 8 dereferenceable(572)) local_unnamed_addr #10

declare void @_ZN14projCppContext18getDatabaseContextEv(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.125") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io9WKTParser13createFromWKTERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %3 = alloca %"class.dropbox::oxygen::nn.29", align 8 ; 10 uses
  %4 = alloca %"class.dropbox::oxygen::nn.190", align 16 ; 8 uses
  %5 = alloca %"class.dropbox::oxygen::nn.190", align 16 ; 7 uses
  %6 = alloca %"class.dropbox::oxygen::nn.29", align 8 ; 7 uses
  %7 = alloca %"class.dropbox::oxygen::nn.195", align 8 ; 6 uses
  %8 = alloca %"class.std::shared_ptr.406", align 16 ; 12 uses
  %9 = alloca %"class.dropbox::oxygen::nn.405", align 16 ; 9 uses
  %10 = alloca %"class.dropbox::oxygen::nn.29", align 8 ; 7 uses
  %11 = alloca %"class.dropbox::oxygen::nn.405", align 16 ; 7 uses
  %12 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::vector.638", align 8  ; 7 uses
  %16 = alloca [2 x %"class.dropbox::oxygen::nn.405"], align 16 ; 9 uses
  %17 = alloca %"class.std::allocator.640", align 1 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = tail call noundef i32 @_ZN5osgeo4proj2io9WKTParser12guessDialectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2) #41 ; 3 uses
  %i.e = icmp eq i32 %i.d, 3                      ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  %i.h = zext i1 %i.e to i8
  store i8 %i.h, ptr %i.g, align 1, !tbaa !203
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.411, i64 noundef 0, i64 noundef 20) #41
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !204    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i8 1, ptr %i.k, align 8, !tbaa !272
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 113
  store i8 0, ptr %i.l, align 1, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !1723
  call void @_ZN5osgeo4proj2io7WKTNode10createFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmiRm(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.29") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1723, !inline_history !1726
  %i.m = load ptr, ptr %3, align 8, !tbaa !128, !noalias !1723
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130, !noalias !1723 ; 5 uses
  %i.o = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants5DATUMB5cxx11E) #41, !noalias !1723, !inline_history !1726
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants13GEODETICDATUMB5cxx11E) #41, !noalias !1723, !inline_history !1726
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3TRFB5cxx11E) #41, !noalias !1723, !inline_history !1726
  br i1 %i.q, label %bb.g, label %bb.ay

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !1723
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj5datum13PrimeMeridian9GREENWICHE, i64 8), align 8, !tbaa !65, !noalias !1723 ; 2 uses
  %i.t = load <2 x ptr>, ptr @_ZN5osgeo4proj5datum13PrimeMeridian9GREENWICHE, align 8, !tbaa !64, !noalias !1723
  store <2 x ptr> %i.t, ptr %4, align 16, !tbaa !64, !noalias !1723
  %.not.i.i.i.i109 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i109, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1723
  %.not.i.i.i.i.i110 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i110, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.u, align 4, !tbaa !70, !noalias !1723
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !70, !noalias !1723
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !1723 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.z = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !1723 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17, !noalias !1723 ; 8 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.ah

bb.k:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit
  %.val39.i = load ptr, ptr %2, align 8, !noalias !1723 ; 3 uses
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.k, %bb.l
  %.01.i105 = phi i64 [ %i.ah, %bb.l ], [ %i.z, %bb.k ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val39.i, i64 %.01.i105
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19, !noalias !1723 ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = tail call i32 @isspace(i32 noundef %i.af) #45, !noalias !1723
  %.not.i106 = icmp eq i32 %i.ag, 0
  br i1 %.not.i106, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i104
  %i.ah = add i64 %.01.i105, 1                    ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond.not.i107, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108.thread, label %.lr.ph.i104, !llvm.loop !148

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108.thread: ; preds = %bb.l
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !18, !noalias !1723
  br label %bb.ah

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108: ; preds = %.lr.ph.i104
  %20 = icmp ult i64 %.01.i105, %i.ab
  %i.ai = icmp eq i8 %i.ae, 44
  %or.cond211 = and i1 %20, %i.ai
  br i1 %or.cond211, label %bb.m, label %bb.ah

bb.m:                                             ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108
  %i.aj = add nuw i64 %.01.i105, 1                ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %i.ab
  br i1 %i.ak, label %.lr.ph.i97, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101

.lr.ph.i97:                                       ; preds = %bb.m, %bb.n
  %.01.i98 = phi i64 [ %i.ap, %bb.n ], [ %i.aj, %bb.m ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val39.i, i64 %.01.i98
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19, !noalias !1723
  %i.an = zext i8 %i.am to i32
  %i.ao = tail call i32 @isspace(i32 noundef %i.an) #45, !noalias !1723
  %.not.i99 = icmp eq i32 %i.ao, 0
  br i1 %.not.i99, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i97
  %i.ap = add i64 %.01.i98, 1                     ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.ap, %i.ab
  br i1 %exitcond.not.i100, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101.thread, label %.lr.ph.i97, !llvm.loop !148

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101.thread: ; preds = %bb.n
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !18, !noalias !1723
  br label %bb.ah

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101: ; preds = %.lr.ph.i97, %bb.m
  %.0.lcssa.i96 = phi i64 [ %i.aj, %bb.m ], [ %.01.i98, %.lr.ph.i97 ] ; 4 uses
  store i64 %.0.lcssa.i96, ptr %i.c, align 8, !tbaa !18, !noalias !1723
  %i.aq = icmp ult i64 %.0.lcssa.i96, %i.ab
  br i1 %i.aq, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101
  %i.ar = getelementptr inbounds nuw i8, ptr %.val39.i, i64 %.0.lcssa.i96
  %i.as = load ptr, ptr @_ZN5osgeo4proj2io12WKTConstants6PRIMEMB5cxx11E, align 8, !tbaa !14, !noalias !1723
  %i.at = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withEPKcS3_(ptr noundef %i.ar, ptr noundef %i.as) #41, !noalias !1723, !inline_history !1726
  br i1 %i.at, label %bb.p, label %bb.ah

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !1723
  %i.au = load ptr, ptr %1, align 8, !tbaa !204, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !1723
  invoke void @_ZN5osgeo4proj2io7WKTNode10createFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmiRm(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.29") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.0.lcssa.i96, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.q unwind label %bb.af, !noalias !1723, !inline_history !1726

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private18buildPrimeMeridianERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.190") align 8 %5, ptr noundef nonnull align 8 dereferenceable(176) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.r unwind label %bb.ag, !noalias !1723, !inline_history !1726

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load <2 x ptr>, ptr %5, align 16, !tbaa !64, !noalias !1723
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !noalias !1723
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !65, !noalias !1723 ; 8 uses
  store <2 x ptr> %i.aw, ptr %4, align 16, !tbaa !64, !noalias !1723
  %.not.i.i.i.i.i93 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i93, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !noalias !1723 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ay, align 8, !tbaa !66, !noalias !1723
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !68, !noalias !1723
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !8, !noalias !1723
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1723
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #41, !noalias !1723, !inline_history !1727
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !8, !noalias !1723
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1723
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #41, !noalias !1723, !inline_history !1727
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEaSEOS8_.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1723
  %.not.i.i.i.i.i.i94 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i94, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !70, !noalias !1723
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4, !noalias !1723
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.v ], [ %i.bl, %bb.w ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.x, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEaSEOS8_.exit, !prof !71

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #41, !noalias !1723
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEaSEOS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEaSEOS8_.exit: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x
  %.pr = load ptr, ptr %i.av, align 8, !tbaa !65, !noalias !1723 ; 8 uses
  %.not.i.i.i88 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i88, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92, label %bb.y

bb.y:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEaSEOS8_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8, !noalias !1723 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !66, !noalias !1723
  %i.br = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !68, !noalias !1723
  %i.bs = load ptr, ptr %.pr, align 8, !tbaa !8, !noalias !1723
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1723
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #41, !noalias !1723, !inline_history !1728
  %i.bv = load ptr, ptr %.pr, align 8, !tbaa !8, !noalias !1723
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !1723
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #41, !noalias !1723, !inline_history !1728
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1723
  %.not.i.i.i.i89 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i89, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !70, !noalias !1723
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90

bb.ac:                                            ; preds = %bb.aa
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4, !noalias !1723
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i91 = phi i32 [ %i.bq, %bb.ab ], [ %i.ca, %bb.ac ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i91, 1
  br i1 %i.cb, label %bb.ad, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92, !prof !71

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #41, !noalias !1723
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92: ; preds = %bb.r, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEaSEOS8_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90, %bb.ad
  %i.cc = load ptr, ptr %6, align 8, !tbaa !128, !noalias !1723 ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i85, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit87, label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i86

_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i86: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92
  call void @_ZN5osgeo4proj2io7WKTNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cc) #41, !noalias !1723, !inline_history !1729
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 8) #44, !noalias !1723, !inline_history !1729
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit87

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit87: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit92, %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !1723
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.af:                                            ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit84

bb.ag:                                            ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !128, !noalias !1723 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i82, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit84, label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i83

_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i83: ; preds = %bb.ag
  call void @_ZN5osgeo4proj2io7WKTNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #41, !noalias !1723, !inline_history !1729
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 8) #44, !noalias !1723, !inline_history !1729
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit84

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit84: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i83, %bb.ag, %bb.af
  %.pn29.i = phi { ptr, i32 } [ %i.ce, %bb.af ], [ %i.cf, %bb.ag ], [ %i.cf, %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !1723
  br label %bb.ax

bb.ah:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101.thread, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108.thread, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit87, %bb.o, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit101, %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit108, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41, !noalias !1723
  %i.ch = load ptr, ptr %1, align 8, !tbaa !204, !noalias !1723
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private27buildGeodeticReferenceFrameERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKNS6_ISt10shared_ptrINS0_5datum13PrimeMeridianEEEESE_(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.195") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5osgeo4proj2ioL9null_nodeE)
          to label %bb.ai unwind label %bb.aw, !noalias !1723, !inline_history !1726

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load ptr, ptr %7, align 8, !tbaa !414   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65 ; 5 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i80, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread, label %bb.aj

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread: ; preds = %bb.ai
  store ptr %i.ci, ptr %0, align 8, !tbaa !259
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !65
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i81 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i81, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread200

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread200: ; preds = %bb.aj
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !70
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !70
  store ptr %i.ci, ptr %0, align 8, !tbaa !259
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cq, align 8, !tbaa !65
  br label %bb.ak

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.aj
  %i.cr = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr143.pre = load ptr, ptr %i.cj, align 8, !tbaa !65 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !259
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cs, align 8, !tbaa !65
  %.not.i.i.i76 = icmp eq ptr %.pr143.pre, null
  br i1 %.not.i.i.i76, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread200, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %.pr143203 = phi ptr [ %i.ck, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread200 ], [ %.pr143.pre, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit ] ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pr143203, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.ct, align 8, !tbaa !66
  %i.cx = getelementptr inbounds nuw i8, ptr %.pr143203, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !68
  %i.cy = load ptr, ptr %.pr143203, align 8, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %.pr143203) #41, !inline_history !1730
  %i.db = load ptr, ptr %.pr143203, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %.pr143203) #41, !inline_history !1730
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i77 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i77, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.ao:                                            ; preds = %bb.am
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i79 = phi i32 [ %i.cw, %bb.an ], [ %i.dg, %bb.ao ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.dh, label %bb.ap, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit, !prof !71

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr143203) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit: ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_5datum22GeodeticReferenceFrameEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !1723
  %i.di = load ptr, ptr %i.r, align 8, !tbaa !65  ; 8 uses
  %.not.i.i.i72 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i72, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dj, align 8, !tbaa !66
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !68
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #41, !inline_history !1728
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #41, !inline_history !1728
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i73 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i73, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74

bb.au:                                            ; preds = %bb.as
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i75 = phi i32 [ %i.dm, %bb.at ], [ %i.dw, %bb.au ]
  %i.dx = icmp eq i32 %.0.i.i.i.i.i75, 1
  br i1 %i.dx, label %bb.av, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit, !prof !71

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !1723
  br label %"_ZZN5osgeo4proj2io9WKTParser13createFromWKTERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEv.exit"

bb.aw:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !1723
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit84
  %.pn31.i = phi { ptr, i32 } [ %i.dy, %bb.aw ], [ %.pn29.i, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit84 ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41, !noalias !1723, !inline_history !1726
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !1723
  br label %bb.da

bb.ay:                                            ; preds = %bb.f
  %i.dz = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOGCSB5cxx11E) #41, !noalias !1723, !inline_history !1726
  br i1 %i.dz, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ea = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6PROJCSB5cxx11E) #41, !noalias !1723, !inline_history !1726
  br i1 %i.ea, label %bb.ba, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.eb = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !1723 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !17, !noalias !1723 ; 6 uses
  %i.ee = icmp ult i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.bb, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread

bb.bb:                                            ; preds = %bb.ba
  %.val35.i = load ptr, ptr %2, align 8, !noalias !1723 ; 3 uses
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.bb, %bb.bc
  %.01.i68 = phi i64 [ %i.ej, %bb.bc ], [ %i.eb, %bb.bb ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %.01.i68
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !19, !noalias !1723 ; 2 uses
  %i.eh = zext i8 %i.eg to i32
  %i.ei = tail call i32 @isspace(i32 noundef %i.eh) #45, !noalias !1723
  %.not.i69 = icmp eq i32 %i.ei, 0
  br i1 %.not.i69, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i67
  %i.ej = add i64 %.01.i68, 1                     ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ej, %i.ed
  br i1 %exitcond.not.i70, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread, label %.lr.ph.i67, !llvm.loop !148

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71: ; preds = %.lr.ph.i67
  %21 = icmp ult i64 %.01.i68, %i.ed
  %i.ek = icmp eq i8 %i.eg, 44
  %or.cond212 = and i1 %21, %i.ek
  br i1 %or.cond212, label %bb.bd, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread

bb.bd:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71
  %i.el = add nuw i64 %.01.i68, 1                 ; 3 uses
  %i.em = icmp ult i64 %i.el, %i.ed
  br i1 %i.em, label %.lr.ph.i, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

.lr.ph.i:                                         ; preds = %bb.bd, %bb.be
  %.01.i = phi i64 [ %i.er, %bb.be ], [ %i.el, %bb.bd ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %.01.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !19, !noalias !1723
  %i.ep = zext i8 %i.eo to i32
  %i.eq = tail call i32 @isspace(i32 noundef %i.ep) #45, !noalias !1723
  %.not.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i
  %i.er = add i64 %.01.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.er, %i.ed
  br i1 %exitcond.not.i, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread, label %.lr.ph.i, !llvm.loop !148

_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit: ; preds = %.lr.ph.i, %bb.bd
  %.0.lcssa.i = phi i64 [ %i.el, %bb.bd ], [ %.01.i, %.lr.ph.i ] ; 4 uses
  store i64 %.0.lcssa.i, ptr %i.c, align 8, !tbaa !18, !noalias !1723
  %i.es = icmp ult i64 %.0.lcssa.i, %i.ed
  br i1 %i.es, label %bb.bf, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread

bb.bf:                                            ; preds = %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  %i.et = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %.0.lcssa.i
  %i.eu = load ptr, ptr @_ZN5osgeo4proj2io12WKTConstants6VERTCSB5cxx11E, align 8, !tbaa !14, !noalias !1723
  %i.ev = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal14ci_starts_withEPKcS3_(ptr noundef %i.et, ptr noundef %i.eu) #41, !noalias !1723, !inline_history !1726
  br i1 %i.ev, label %bb.bg, label %_ZN5osgeo4proj2ioL9skipSpaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit71.thread

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41, !noalias !1723
  %i.ew = load ptr, ptr %1, align 8, !tbaa !204, !noalias !1723
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private8buildCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.406") align 8 %8, ptr noundef nonnull align 8 dereferenceable(176) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bh unwind label %bb.cm, !noalias !1723, !inline_history !1726

bb.bh:                                            ; preds = %bb.bg
  %i.ex = load ptr, ptr %8, align 16, !tbaa !651, !noalias !1723
  %.not147 = icmp eq ptr %i.ex, null
  br i1 %.not147, label %.critedge.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !1723
  %i.ey = load ptr, ptr %1, align 8, !tbaa !204, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41, !noalias !1723
  invoke void @_ZN5osgeo4proj2io7WKTNode10createFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmiRm(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.29") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.0.lcssa.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bj unwind label %bb.cn, !noalias !1723, !inline_history !1726

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private16buildVerticalCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.405") align 8 %9, ptr noundef nonnull align 8 dereferenceable(176) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.bk unwind label %bb.co, !noalias !1723, !inline_history !1726

bb.bk:                                            ; preds = %bb.bj
  %i.ez = load ptr, ptr %10, align 8, !tbaa !128, !noalias !1723 ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i61, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit63, label %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i62

_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i62: ; preds = %bb.bk
  tail call void @_ZN5osgeo4proj2io7WKTNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ez) #41, !noalias !1723, !inline_history !1729
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef 8) #44, !noalias !1723, !inline_history !1729
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit63

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit63: ; preds = %bb.bk, %_ZNKSt14default_deleteIN5osgeo4proj2io7WKTNodeEEclEPS3_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41, !noalias !1723
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bl unwind label %bb.cp, !noalias !1723, !inline_history !1726

bb.bl:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS6_EEED2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41, !noalias !1723
  %i.fa = load ptr, ptr %8, align 16, !tbaa !651, !noalias !1723
  %i.fb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.fa) #45, !noalias !1723, !inline_history !1726
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull @.str.658)
          to label %bb.bm unwind label %bb.cq, !noalias !1723, !inline_history !1726

bb.bm:                                            ; preds = %bb.bl
  %i.fc = load ptr, ptr %9, align 16, !tbaa !651, !noalias !1723
  %i.fd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.fc) #45, !noalias !1723, !inline_history !1726
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.fd)
          to label %bb.bn unwind label %bb.cr, !noalias !1723, !inline_history !1726

bb.bn:                                            ; preds = %bb.bm
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bo unwind label %bb.cs, !noalias !1723, !inline_history !1726

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41, !noalias !1723
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41, !noalias !1723
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !65, !noalias !1723 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %8, align 16, !tbaa !64, !noalias !1723
  store <2 x ptr> %i.fi, ptr %16, align 16, !tbaa !64, !noalias !1723
  %.not.i.i.i.i59 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i59, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1723
  %.not.i.i.i.i.i60 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i60, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !70, !noalias !1723
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !70, !noalias !1723
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.br:                                            ; preds = %bb.bp
  %i.fn = atomicrmw volatile add ptr %i.fj, i32 1 acq_rel, align 4, !noalias !1723 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.bo, %bb.bq, %bb.br
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !65, !noalias !1723 ; 2 uses
  %i.fs = load <2 x ptr>, ptr %9, align 16, !tbaa !64, !noalias !1723
  store <2 x ptr> %i.fs, ptr %i.fo, align 16, !tbaa !64, !noalias !1723
  %.not.i.i.i.i57 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i57, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1723
  %.not.i.i.i.i.i58 = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i.i58, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !70, !noalias !1723
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !70, !noalias !1723
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.fx = atomicrmw volatile add ptr %i.ft, i32 1 acq_rel, align 4, !noalias !1723 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, %bb.bt, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41, !noalias !1723
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EEC2ESt16initializer_listIS9_ERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr nonnull %16, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bv unwind label %bb.ct, !noalias !1723, !inline_history !1726

bb.bv:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ERKS8_.exit
  %i.fy = load ptr, ptr %1, align 8, !tbaa !204, !noalias !1723
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120
  invoke void @_ZN5osgeo4proj3crs11CompoundCRS9createLaxERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEESaISE_EERKSB_INS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.405") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %bb.bw unwind label %bb.cu, !noalias !1723, !inline_history !1726

bb.bw:                                            ; preds = %bb.bv
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !65 ; 2 uses
  %i.gc = load <2 x ptr>, ptr %11, align 16, !tbaa !64
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 3 uses
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !70
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !70
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.bz:                                            ; preds = %bb.bx
  %i.gh = atomicrmw volatile add ptr %i.gd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.bw, %bb.by, %bb.bz
  store <2 x ptr> %i.gc, ptr %0, align 8, !tbaa !64
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #41, !inline_history !1726
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #41, !inline_history !1726
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41, !noalias !1723
  %i.gi = load ptr, ptr %i.fp, align 8, !tbaa !65 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.gj, align 8, !tbaa !66
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !68
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #41, !inline_history !1731
end_hunk_0
