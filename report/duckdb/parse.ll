Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parse?download=true
inline.NumInlined: 971
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re26Regexp19RemoveLeadingRegexpEPS0_:bb.a
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  store ptr null, ptr %i.l, align 8, !tbaa !62
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = add i16 %i.j, -1                         ; 2 uses
  store i16 %i.n, ptr %i.b, align 2, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = zext i16 %i.n to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.o, i64 %i.q, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !49
  %i.t = zext i16 %i.s to i32
  tail call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.u = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 3 uses
  invoke void @_ZN10duckdb_re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i32 noundef 2, i32 noundef %i.t)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #28
  resume { ptr, i32 } %i.v

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.f, %bb.c
  %.1 = phi ptr [ %0, %bb.c ], [ %0, %bb.a ], [ %0, %bb.f ], [ %i.m, %bb.e ], [ %i.u, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10duckdb_re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !26      ; 2 uses
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01417 = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01417, i64 6
  %i.d = load i16, ptr %i.c, align 2, !tbaa !61   ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01417, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !49
  %i.g = and i16 %i.f, 1
  %i.h = zext nneg i16 %i.g to i32
  store i32 %i.h, ptr %2, align 4, !tbaa !104
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp eq i16 %i.d, 1
  %i.j = getelementptr inbounds nuw i8, ptr %.01417, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i = select i1 %i.i, ptr %i.j, ptr %i.k
  %i.l = load ptr, ptr %.0.i, align 8, !tbaa !62  ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !26    ; 2 uses
  %i.n = icmp eq i8 %i.m, 5
  br i1 %i.n, label %.lr.ph, label %.critedge, !llvm.loop !105

.critedge:                                        ; preds = %bb.b, %bb.a
  %.014.lcssa = phi ptr [ %0, %bb.a ], [ %i.l, %bb.b ] ; 4 uses
  %.lcssa = phi i8 [ %i.a, %bb.a ], [ %i.m, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !49
  %i.q = and i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i32
  store i32 %i.r, ptr %2, align 4, !tbaa !104
  switch i8 %.lcssa, label %bb.e [
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %.critedge
  store i32 1, ptr %1, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 24
  br label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27
  store i32 %i.u, ptr %1, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %.critedge, %.thread
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.s, %bb.c ], [ %i.w, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re26Regexp19RemoveLeadingStringEPS0_i(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 5 uses
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.051 = phi i64 [ 0, %bb.a ], [ %.1, %bb.e ]    ; 6 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.k, %bb.e ]    ; 12 uses
  %i.b = load i8, ptr %.0, align 8, !tbaa !26
  switch i8 %i.b, label %.loopexit [
    i8 5, label %bb.c
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %.051, 4
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = add nuw nsw i64 %.051, 1
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.051
  store ptr %.0, ptr %i.e, align 8, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.d, %bb.d ], [ %.051, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.g = load i16, ptr %i.f, align 2, !tbaa !61
  %i.h = icmp ult i16 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i = select i1 %i.h, ptr %i.i, ptr %i.j
  %i.k = load ptr, ptr %.0.i, align 8, !tbaa !62
  br label %bb.b, !llvm.loop !106

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !27
  store i8 2, ptr %.0, align 8, !tbaa !26
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %.not = icmp slt i32 %1, %i.n
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.o, align 8, !tbaa !27
  store i32 0, ptr %i.m, align 8, !tbaa !27
  store i8 2, ptr %.0, align 8, !tbaa !26
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.n, -1
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  tail call void @_ZdaPv(ptr noundef %i.u) #28
  store ptr null, ptr %i.t, align 8, !tbaa !27
  store i32 %i.x, ptr %i.m, align 8, !tbaa !27
  store i8 3, ptr %.0, align 8, !tbaa !26
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.y = sub nsw i32 %i.n, %1                     ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = sext i32 %1 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = sext i32 %i.y to i64
  %i.ae = shl nsw i64 %i.ad, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.ac, i64 %i.ae, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.l, %bb.m, %bb.j, %bb.f
  %.not5764 = icmp eq i64 %.051, 0
  br i1 %.not5764, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.u
  %.265 = phi i64 [ %.051, %.lr.ph ], [ %i.ao, %bb.u ]
  %i.ao = add i64 %.265, -1                       ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6 ; 4 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !61
  %i.at = icmp ult i16 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8
  %.0.i58 = select i1 %i.at, ptr %i.au, ptr %i.av ; 5 uses
  %i.aw = load ptr, ptr %.0.i58, align 8, !tbaa !62 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !26
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aw)
  store ptr null, ptr %.0.i58, align 8, !tbaa !62
  %i.az = load i16, ptr %i.ar, align 2, !tbaa !61 ; 2 uses
  switch i16 %i.az, label %bb.t [
    i16 0, label %bb.p
    i16 1, label %bb.p
    i16 2, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i8 0, ptr %2, align 8, !tbaa !67
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.af)
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.bb = load i16, ptr %i.ar, align 2, !tbaa !61
  %i.bc = zext i16 %i.bb to i32
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %i.bc)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !77
  %i.be = load i64, ptr %i.ai, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.af, i64 %i.be
  store ptr %i.ah, ptr %i.bf, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !77
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bg) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #30
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr null, ptr %i.au, align 8, !tbaa !27
  store i8 2, ptr %i.aq, align 8, !tbaa !26
  br label %bb.u

bb.r:                                             ; preds = %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %i.bi

bb.s:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !62
  call void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef %i.bk)
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bk)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bl = add i16 %i.az, -1                       ; 2 uses
  store i16 %i.bl, ptr %i.ar, align 2, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8
  %i.bn = zext i16 %i.bl to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i58, ptr nonnull align 8 %i.bm, i64 %i.bo, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %bb.s, %bb.t, %bb.n
  %.not57 = icmp eq i64 %i.ao, 0
  br i1 %.not57, label %._crit_edge, label %bb.n, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.u, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

declare void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN10duckdb_re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %4 = alloca %class.LogMessage, align 8          ; 18 uses
  %5 = alloca %class.LogMessage, align 8          ; 11 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !108
  store i32 %1, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader unwind label %bb.b

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 345
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -24      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 120
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge, %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !110 ; 12 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -40 ; 8 uses
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -36 ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -32 ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !112 ; 5 uses
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -24 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.u, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.c:                                             ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !3  ; 2 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp slt i32 %i.aq, %i.av
  br i1 %i.aw, label %bb.d, label %.preheader113

.preheader113:                                    ; preds = %bb.c
  %i.ax = load i32, ptr %i.ah, align 8, !tbaa !3
  %i.ay = icmp sgt i32 %i.ax, 0
end_hunk_0
