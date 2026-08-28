Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts?download=true
inline.NumInlined: 1065
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6cvtest2TS14update_contextEPNS_8BaseTestEib:bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %2, ptr %i.am, align 8, !tbaa !136
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.an, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6cvtest2TS20set_failed_test_infoEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, i32 noundef %1) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest2TS7vprintfEiPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16384 x i8], align 16            ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 16383, ptr noundef %2, ptr noundef %3) #38 ; 0 uses
  %i.d = and i32 %1, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.a
  %.01018.lcssa = phi i64 [ 0, %bb.a ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !10
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.f, ptr %i.a, align 8, !tbaa !19
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !18
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.e, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 16, !tbaa !17
  store i8 %i.k, ptr %i.j, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 16 %i.b, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !14
  %i.n = load ptr, ptr %4, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.01018.lcssa ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.r
  br i1 %i.v, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #40
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.w = load ptr, ptr %4, align 8, !tbaa !18
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef %i.w, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.loopexit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.g
  %i.af = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.a
  %i.ah = and i32 %1, 2
  %.not.1 = icmp eq i32 %i.ah, 0
  br i1 %.not.1, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.ai = and i32 %1, 4
  %.not.2 = icmp eq i32 %i.ai, 0
  br i1 %.not.2, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.aj = and i32 %1, 8
  %.not.3 = icmp eq i32 %i.aj, 0
  br i1 %.not.3, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest2TS6printfEiPKcz(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ...) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #26

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest12fillGradientIhEEvRN2cv3MatEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.sroa.0 = alloca i32, align 4                  ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !137    ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !137
  %i.e = and i32 %i.d, 31
  %i.f = and i32 %i.a, 3968
  %i.g = or disjoint i32 %i.f, %i.e
  %or.cond = icmp eq i32 %i.g, 0
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN6cvtest12fillGradientIhEEvRN2cv3MatEi, ptr noundef nonnull @.str.21, i32 noundef 689) #40
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !17
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.b
  %i.n = sdiv i32 255, %1                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !144  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.f
  %i.r = shl nsw i32 %i.n, 1                      ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.s, align 4, !tbaa !145  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph61.split.preheader, label %._crit_edge62

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %i.z = and i32 %i.b, 127
  %narrow = add nuw nsw i32 %i.z, 1
  %i.aa = zext nneg i32 %narrow to i64
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  br label %.lr.ph61.split

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader, %._crit_edge
  %i.ab = phi i32 [ %i.p, %.lr.ph61.split.preheader ], [ %i.bf, %._crit_edge ]
  %i.ac = phi i32 [ %i.x, %.lr.ph61.split.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %indvars.iv66 = phi i64 [ 0, %.lr.ph61.split.preheader ], [ %indvars.iv.next67, %._crit_edge ] ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph61.split
  %i.ae = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.af = srem i32 %i.ae, %i.r                    ; 3 uses
  %.not = icmp sgt i32 %i.af, %i.n
  %i.ag = sub nsw i32 %i.r, %i.af
  %.pn = select i1 %.not, i32 %i.ag, i32 %i.af
  %i.ah = mul nsw i32 %.pn, %1
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = trunc i64 %indvars.iv66 to i32
  %i.ak = mul i32 %i.aj, 200
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN2cv3Mat3ptrEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3Mat3ptrEii.exit ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = srem i32 %i.al, %i.r                    ; 3 uses
  %.not52 = icmp sgt i32 %i.am, %i.n
  %i.an = sub nsw i32 %i.r, %i.am
  %.pn53 = select i1 %.not52, i32 %i.an, i32 %i.am
  %i.ao = mul nsw i32 %.pn53, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i8 %i.ai, ptr %.sroa.0, align 4, !tbaa !17
  %i.ap = trunc i32 %i.ao to i8
  store i8 %i.ap, ptr %.sroa.0.1..sroa_idx, align 1, !tbaa !17
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !144
  %i.ar = sdiv i32 %i.ak, %i.aq
  %i.as = trunc i32 %i.ar to i8
  store i8 %i.as, ptr %.sroa.0.2..sroa_idx, align 2, !tbaa !17
  store i8 -1, ptr %.sroa.0.3..sroa_idx, align 1, !tbaa !17
  %i.at = load i32, ptr %i.t, align 4, !tbaa !146
  %i.au = icmp slt i32 %i.at, 2
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !147 ; 2 uses
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  br i1 %i.au, label %_ZN2cv3Mat3ptrEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = mul i64 %i.aw, %indvars.iv66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  %i.az = load i64, ptr %i.w, align 8, !tbaa !19
  br label %_ZN2cv3Mat3ptrEii.exit

_ZN2cv3Mat3ptrEii.exit:                           ; preds = %bb.g, %bb.h
  %.sink77 = phi i64 [ %i.az, %bb.h ], [ %i.aw, %bb.g ]
  %.sink = phi ptr [ %i.ay, %bb.h ], [ %i.av, %bb.g ]
  %i.ba = mul i64 %.sink77, %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0, i64 %i.aa, i1 false), !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.s, align 4, !tbaa !145 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !148

._crit_edge.loopexit:                             ; preds = %_ZN2cv3Mat3ptrEii.exit
  %.pre = load i32, ptr %i.o, align 8, !tbaa !144
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph61.split
  %i.bf = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.lr.ph61.split ] ; 2 uses
  %i.bg = phi i32 [ %i.bc, %._crit_edge.loopexit ], [ %i.ac, %.lr.ph61.split ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.bh = sext i32 %i.bf to i64
  %i.bi = icmp slt i64 %indvars.iv.next67, %i.bh
  br i1 %i.bi, label %.lr.ph61.split, label %._crit_edge62, !llvm.loop !149

._crit_edge62:                                    ; preds = %._crit_edge, %.lr.ph61, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest14checkIppStatusEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %0 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.testing::Message", align 8  ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = load i8, ptr @_ZN6cvtest14test_ipp_checkE, align 1, !tbaa !28, !range !30, !noundef !31
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.e = tail call noundef i32 @_ZN2cv3ipp12getIppStatusEv() ; 2 uses
  store i32 %i.e, ptr %i.a, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i32 0, ptr %i.b, align 4, !tbaa !132
  %.not.i = icmp slt i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.64, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.146)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.f = load i8, ptr %0, align 8, !tbaa !151, !range !30, !noundef !31
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  invoke void @_ZN2cv3ipp19getIppErrorLocationB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %2, align 8, !tbaa !18     ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = load ptr, ptr %1, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br i1 %i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.g
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #38
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.m = phi ptr [ %i.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.143, %bb.g ]
  %i.n = phi i64 [ %i.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %bb.g ]
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.m, i64 noundef %i.n)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.s = phi ptr [ %i.r, %bb.h ], [ @.str.24, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 716, ptr noundef %i.s)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.t = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.y = load ptr, ptr %1, align 8, !tbaa !109
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.n

.noexc.i.i:                                       ; preds = %bb.k
  br i1 %i.z, label %bb.l, label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !109   ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing7MessageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #38, !inline_history !112
  br label %_ZN7testing7MessageD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #42
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.w

bb.o:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #38
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.ak, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.aj, %bb.q ] ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.u
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #39
end_hunk_0
