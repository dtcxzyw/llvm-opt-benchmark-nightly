Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/reader?download=true
inline.NumInlined: 72
inline.NumDeleted: 42
begin_hunk_0_@_ZN6marisa8grimoire2io6Reader4openEi:bb.a
  store i8 %i.n, ptr %i.m, align 8, !tbaa !22
  call void @_ZN6marisa8grimoire2io6ReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6marisa8grimoire2io6Reader5open_Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Reader4openERSi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.marisa::grimoire::io::Reader", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN6marisa8grimoire2io6ReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = load ptr, ptr %2, align 8, !tbaa !19
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  store ptr %i.b, ptr %2, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !20
  %i.g = load i32, ptr %i.e, align 8, !tbaa !20
  store i32 %i.g, ptr %i.d, align 8, !tbaa !20
  store i32 %i.f, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  store ptr %1, ptr %i.h, align 8, !tbaa !21
  store ptr %i.i, ptr %i.a, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.j, align 8, !tbaa !22, !range !17, !noundef !18
  %i.m = load i8, ptr %i.k, align 8, !tbaa !22, !range !17, !noundef !18
  store i8 %i.m, ptr %i.j, align 8, !tbaa !22
  store i8 %i.l, ptr %i.k, align 8, !tbaa !22
  call void @_ZN6marisa8grimoire2io6ReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6marisa8grimoire2io6Reader5open_ERSi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6marisa8grimoire2io6Reader5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.marisa::grimoire::io::Reader", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  invoke void @_ZN6marisa8grimoire2io6ReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !20
  %i.f = load i32, ptr %i.d, align 8, !tbaa !20
  store i32 %i.f, ptr %i.c, align 8, !tbaa !20
  store i32 %i.e, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !21
  store ptr %i.j, ptr %i.g, align 8, !tbaa !21
  store ptr %i.i, ptr %i.h, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i8, ptr %i.k, align 8, !tbaa !22, !range !17, !noundef !18
  %i.n = load i8, ptr %i.l, align 8, !tbaa !22, !range !17, !noundef !18
  store i8 %i.n, ptr %i.k, align 8, !tbaa !22
  store i8 %i.m, ptr %i.l, align 8, !tbaa !22
  call void @_ZN6marisa8grimoire2io6ReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %.not.i = icmp ne ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not1.i = icmp ne i32 %i.e, -1
  %or.cond.i.not16 = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, null
  %or.cond = select i1 %or.cond.i.not16, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #22
  unreachable

_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread: ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #20
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread
  %i.l = icmp ult i64 %1, 17
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.a, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.017 = phi i64 [ %1, %bb.g ], [ %i.n, %bb.h ]  ; 2 uses
  %i.m = call i64 @llvm.umin.i64(i64 %.017, i64 1024) ; 2 uses
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.b, i64 noundef %i.m)
  %i.n = sub nuw i64 %.017, %i.m                  ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !27

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread, %bb.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6marisa8grimoire2io6Reader7is_openEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %.not1 = icmp eq i32 %i.c, -1
  %or.cond = select i1 %.not, i1 %.not1, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp ne ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ]
  ret i1 %i.g
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not.i = icmp ne ptr %i.a, null                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not1.i = icmp ne i32 %i.c, -1                 ; 2 uses
  %or.cond.i.not42 = select i1 %.not.i, i1 true, i1 %.not1.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8                  ; 2 uses
  %5 = icmp ne ptr %4, null                       ; 2 uses
  %or.cond = select i1 %or.cond.i.not42, i1 true, i1 %5
  br i1 %or.cond, label %_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #22
  unreachable

_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread.a: ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread.a
  br i1 %.not1.i, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.e, %bb.h
  %.044 = phi ptr [ %i.o, %bb.h ], [ %1, %bb.e ]  ; 2 uses
  %.02643 = phi i64 [ %i.p, %bb.h ], [ %2, %bb.e ] ; 2 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %.02643, i64 9223372036854775807)
  %i.h = load i32, ptr %i.b, align 8, !tbaa !14
  %i.i = tail call i64 @read(i32 noundef %i.h, ptr noundef %.044, i64 noundef %i.g) ; 3 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  %i.k = tail call ptr @__cxa_allocate_exception(i64 32) #20 ; 3 uses
  %i.l = tail call ptr @__errno_location() #23
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #23
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 %i.m, ptr nonnull %i.n, ptr noundef nonnull @.str.7)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #22
  unreachable

bb.h:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.044, i64 %i.i
  %i.p = sub i64 %.02643, %i.i                    ; 2 uses
  %.not36 = icmp eq i64 %i.p, 0
  br i1 %.not36, label %.loopexit, label %.preheader, !llvm.loop !28

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.e
  br i1 %.not.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.r = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef nonnull %i.a)
  %.not35 = icmp eq i64 %i.r, %2
  br i1 %.not35, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @__cxa_allocate_exception(i64 32) #20 ; 3 uses
  %i.t = tail call ptr @__errno_location() #23
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #23
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 %i.u, ptr nonnull %i.v, ptr noundef nonnull @.str.8)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #22
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.j
  br i1 %5, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !37
  %i.ae = and i32 %i.ad, 5
  %.not.a = icmp eq i32 %i.ae, 0
  br i1 %.not.a, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.9)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #22
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit:                                        ; preds = %bb.h, %bb.k, %bb.p, %bb.o, %_ZNK6marisa8grimoire2io6Reader7is_openEv.exit.thread.a
  ret void

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.d, %bb.i
  %.sink = phi ptr [ %i.af, %bb.s ], [ %i.s, %bb.n ], [ %i.d, %bb.d ], [ %i.k, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.w, %bb.n ], [ %i.f, %bb.d ], [ %i.q, %bb.i ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = load ptr, ptr %2, align 8, !tbaa !25, !noalias !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !45
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !40
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !48, !alias.scope !49
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !51, !alias.scope !49
  %i.m = load i64, ptr %i.g, align 8, !tbaa !53
  store i64 %i.m, ptr %i.e, align 8, !tbaa !53, !alias.scope !49
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !52, !alias.scope !49
  store ptr %i.g, ptr %i.d, align 8, !tbaa !51
  store i64 0, ptr %i.o, align 8, !tbaa !52
  store i8 0, ptr %i.g, align 8, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #20, !noalias !54
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, i64 noundef %i.q)
          to label %.noexc10 unwind label %bb.h   ; 6 uses

.noexc10:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !48, !alias.scope !54
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.d:                                             ; preds = %.noexc10
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.noexc10
  store ptr %i.t, ptr %4, align 8, !tbaa !51, !alias.scope !54
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !53
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !53, !alias.scope !54
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !52, !alias.scope !54
  store ptr %i.u, ptr %i.r, align 8, !tbaa !51
  store i64 0, ptr %i.ac, align 8, !tbaa !52
  store i8 0, ptr %i.u, align 8, !tbaa !53
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !53
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ai = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.e
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !53
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.am = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !53
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %0, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ar, align 8, !tbaa !20
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.328.0..sroa_idx, align 8, !tbaa !56
  ret void

bb.g:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.i:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.s
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.i
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !53
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.au, %bb.i ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !53
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !53
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
end_hunk_0
